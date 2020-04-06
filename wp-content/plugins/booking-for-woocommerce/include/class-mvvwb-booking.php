<?php

if (!defined('ABSPATH'))
    exit;

class MVVWB_Booking
{

    public $bookingId = false;
    public $timeZoneName = 'UTC';
    public $timeZone = false;
    private $orderId;

    function __construct($bookingId)
    {
        $this->bookingId = $bookingId;
        $timeZoneOffset = get_option('gmt_offset');
        $this->timeZone = mvvwb_getTimeZone();
        $this->timeZoneName = $this->timeZone->getName();

    }

    public static function get_bookings_for_user($user_id, $query_args)
    {
        $booking_ids = self::get_booking_ids_by(array_merge($query_args, array(
            'status' => get_mvvwb_booking_statuses('user'),
            'object_id' => $user_id,
            'object_type' => 'customer',
        )));
        return array_map(function ($id) {
            return new MVVWB_Booking($id);
        }, $booking_ids);
    }

    public static function get_booking_ids_by($filters = array())
    {
        global $wpdb;

        $filters = wp_parse_args(
            $filters,
            array(
                'object_id' => 0,
                'object_type' => 'product',
                'status' => false,
                'limit' => -1,
                'offset' => 0,
                'order_by' => 'date_created',
                'order' => 'DESC',
                'date_before' => false,
                'date_after' => false,
                'google_calendar_event_id' => false,
                'date_between' => array(
                    'start' => false,
                    'end' => false,
                ),
            )
        );

        $saveAsGmt = mvvwb_getConfig('settings.save_as_gmt', true);


        $meta_keys = array();
        $query_where = array('WHERE 1=1', "p.post_type = '" . MVVWB_BOOKING_PT . "'");
        $filters['object_id'] = array_filter(wp_parse_id_list(is_array($filters['object_id']) ? $filters['object_id'] : array($filters['object_id'])));

        if (!empty($filters['object_id'])) {
            switch ($filters['object_type']) {
                case 'product':
                    $meta_keys[] = '_mvvwb_product_id';
                    $query_where[] = "_mvvwb_product_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "')";
                    break;
                case 'order':
                    $meta_keys[] = '_mvvwb_order_id';
                    $query_where[] = "_mvvwb_order_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "')";
                    break;
                case 'resource':
                    $meta_keys[] = '_mvvwb_resource_id';
                    $query_where[] = "_mvvwb_resource_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "')";
                    break;
//                case 'product_or_resource':
//                    $meta_keys[] = '_mvvwb_product_id';
//                    $meta_keys[] = '_booking_resource_id';
//                    $query_where[] = "(
//						_booking_product_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "') OR _booking_resource_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "')
//					)";
//                    break;
//                case 'product_and_resource':
//                    $meta_keys[] = '_mvvwb_product_id';
//                    $meta_keys[] = '_booking_resource_id';
//                    if ($filters['product_id']) {
//                        $query_where[] = "_booking_product_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['product_id'])) . "')";
//                    }
//                    if ($filters['resource_id']) {
//                        $query_where[] = "_booking_resource_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['resource_id'])) . "')";
//                    }
//                    break;
                case 'customer':
                    $meta_keys[] = '_mvvwb_booking_customer_id';
                    $query_where[] = "_mvvwb_booking_customer_id.meta_value IN ('" . implode("','", array_map('esc_sql', $filters['object_id'])) . "')";
                    break;
            }
        }

        if (!empty($filters['status'])) {
            $query_where[] = "p.post_status IN ('" . implode("','", $filters['status']) . "')";
        }


        if (!empty($filters['date_between']['start']) && !empty($filters['date_between']['end'])) {
            $start = clone $filters['date_between']['start'];
            $end = clone $filters['date_between']['end'];
            if ($saveAsGmt) {
                $start->setTimezone(new DateTimeZone('GMT'));
                $end->setTimezone(new DateTimeZone('GMT'));
            }

            $meta_keys[] = '_mvvwb_booking_start';
            $meta_keys[] = '_mvvwb_booking_end';
            $meta_keys[] = '_mvvwb_all_day';
            $query_where[] = "( (
				_mvvwb_booking_start.meta_value <= '" . esc_sql($end->format('YmdHis')) . "' AND
				_mvvwb_booking_end.meta_value >= '" . esc_sql($start->format('YmdHis')) . "' AND
				_mvvwb_all_day.meta_value = '0'
			) OR (
				_mvvwb_booking_start.meta_value <= '" . esc_sql($end->format('Ymd000000')) . "' AND
				_mvvwb_booking_end.meta_value >= '" . esc_sql($start->format('Ymd000000')) . "' AND
				_mvvwb_all_day.meta_value = '1'
			) )";
        }

        if (!empty($filters['date_after'])) {
            $date_after = clone $filters['date_after'];
            if ($saveAsGmt) {
                $date_after->setTimezone(new DateTimeZone('GMT'));

            }
            $meta_keys[] = '_mvvwb_booking_start';
            $query_where[] = "_mvvwb_booking_start.meta_value >= '" . esc_sql($date_after->format('YmdHis')) . "'";
        }

        if (!empty($filters['date_before'])) {
            $date_before = clone $filters['date_before'];
            if ($saveAsGmt) {
                $date_before->setTimezone(new DateTimeZone('GMT'));
            }
            $meta_keys[] = '_mvvwb_booking_end';
            $query_where[] = "_mvvwb_booking_end.meta_value <= '" . esc_sql($date_before->format('YmdHis')) . "'";
        }

        if (!empty($filters['order_by'])) {
            switch ($filters['order_by']) {
                case 'date_created':
                    $filters['order_by'] = 'p.post_date';
                    break;
                case 'start_date':
                    $meta_keys[] = '_mvvwb_booking_start';
                    $filters['order_by'] = '_mvvwb_booking_start.meta_value';
                    break;
            }
            $query_order = ' ORDER BY ' . esc_sql($filters['order_by']) . ' ' . esc_sql($filters['order']);
        } else {
            $query_order = '';
        }

        if ($filters['limit'] > 0) {
            $query_limit = ' LIMIT ' . absint($filters['offset']) . ',' . absint($filters['limit']);
        } else {
            $query_limit = '';
        }

        $query_select = "SELECT p.ID FROM {$wpdb->posts} p";
        $meta_keys = array_unique($meta_keys);
        $query_where = implode(' AND ', $query_where);

        foreach ($meta_keys as $index => $meta_key) {
            $key = esc_sql($meta_key);
            $query_select .= " LEFT JOIN {$wpdb->postmeta} {$key} ON p.ID = {$key}.post_id AND {$key}.meta_key = '{$key}'";
        }

        return array_filter(wp_parse_id_list($wpdb->get_col("{$query_select} {$query_where} {$query_order} {$query_limit};")));
    }

    public static function get_booking_ids_from_order_item_id($order_item_id)
    {
        global $wpdb;
        return wp_parse_id_list(
            $wpdb->get_col(
                $wpdb->prepare(
                    "SELECT post_id FROM {$wpdb->postmeta} WHERE meta_key = '_mvvwb_order_item_id' AND meta_value = %d;",
                    $order_item_id
                )
            )
        );
    }

    public static function get_booking_ids_from_order_id($order_id)
    {
        global $wpdb;

        $order_ids = wp_parse_id_list(is_array($order_id) ? $order_id : array($order_id));

        return wp_parse_id_list($wpdb->get_col("SELECT ID FROM {$wpdb->posts} WHERE post_type = '" . MVVWB_BOOKING_PT . "' AND post_parent IN (" . implode(',', array_map('esc_sql', $order_ids)) . ');'));

    }

    public function getProduct()
    {
        $order_id = get_post_meta($this->bookingId, '_mvvwb_product_id', true);
        return wc_get_product($order_id);
    }

    public function get_end_date($date_format = null, $time_format = null)
    {

        $data = $this->getBookingData();

        return $data['end'];
    }

    public function getBookingData($formatted = true, $dateFormat = false)
    {
        $start = get_post_meta($this->bookingId, '_mvvwb_booking_start', true);
        $end = get_post_meta($this->bookingId, '_mvvwb_booking_end', true);
        if ($dateFormat === false) {
            $dateFormat = get_option('date_format');
            if ($formatted === false) {
                $dateFormat = 'YmdHis';
            }
        }

        $saveAsGmt = mvvwb_getConfig('settings.save_as_gmt', true);
        try {
            $zoneOffSet = get_post_meta($this->bookingId, '_mvvwb_time_zone', true);
            if ($zoneOffSet == null || $zoneOffSet == '') {
                if ($saveAsGmt) {
                    $timeZoneName = 'GMT';
                } else {
                    $timeZoneName = $this->timeZoneName;
                }
            } else {
                $timeZoneName = mvvwb_timezone_string($zoneOffSet);
            }
            $startDate = new DateTime($start, new DateTimeZone($timeZoneName));
            $endDate = new DateTime($end, new DateTimeZone($timeZoneName));
            $startDate->setTimezone(new DateTimeZone($this->timeZoneName));
            $endDate->setTimezone(new DateTimeZone($this->timeZoneName));
            $timeStart = $timeStartFormated = get_post_meta($this->bookingId, '_mvvwb_booking_timeStart', true);
            if ($timeStart != '' && $timeStart !== false) {
                $dt = new DateTime();
                $dt->setTimeZone(mvvwb_getTimeZone());
                $dt->setTime(0, $timeStart, 0);
                $timeStartFormated = mvvwb_date(get_option('time_format'), $dt->getTimeStamp());
            }

            return [
                'start' => mvvwb_date($dateFormat, $startDate->getTimeStamp()),
                'end' => mvvwb_date($dateFormat, $endDate->getTimeStamp()),
                'duration' => get_post_meta($this->bookingId, '_mvvwb_booking_duration', true),
                'timeStart' => $formatted ? $timeStartFormated : $timeStart,
                'persons' => get_post_meta($this->bookingId, '_mvvwb_booking_persons', true),
                'children' => get_post_meta($this->bookingId, '_mvvwb_booking_children', true),
                'adult' => get_post_meta($this->bookingId, '_mvvwb_booking_adult', true),
                'item_data' => get_post_meta($this->bookingId, '_mvvwb_booking_item_data', true),
                'quantity' => get_post_meta($this->bookingId, '_mvvwb_quantity', true),
                'product_id' => get_post_meta($this->bookingId, '_mvvwb_product_id', true),
                'count' => get_post_meta($this->bookingId, '_mvvwb_booking_count', true),
            ];

        } catch (Exception $e) {
            return [
                'start' => $start,
                'end' => $end,
                'duration' => get_post_meta($this->bookingId, '_mvvwb_booking_duration', true),
                'timeStart' => get_post_meta($this->bookingId, '_mvvwb_booking_timeStart', true),
                'persons' => get_post_meta($this->bookingId, '_mvvwb_booking_persons', true),
                'children' => get_post_meta($this->bookingId, '_mvvwb_booking_children', true),
                'adult' => get_post_meta($this->bookingId, '_mvvwb_booking_adult', true),
                'item_data' => get_post_meta($this->bookingId, '_mvvwb_booking_item_data', true),
                'count' => get_post_meta($this->bookingId, '_mvvwb_booking_count', true),
                'quantity' => get_post_meta($this->bookingId, '_mvvwb_quantity', true),
                'product_id' => get_post_meta($this->bookingId, '_mvvwb_product_id', true),


            ];

        }


    }

    public function getDetails($isAdmin = false, $formatted = true, $dateFormat = false)
    {
        $post = get_post($this->bookingId);
        if (!$post) {
            return false;
        }
        $postData['title'] = $post->post_title;
        $postData['id'] = $post->ID;
        $product_id = get_post_meta($post->ID, '_mvvwb_product_id', true);
        $product = get_post($product_id);
        $postData['status'] = get_post_status($post);
        $postData['createdOn'] = get_the_date('Y-m-d H:m', $post);

        $customer_id = get_post_meta($post->ID, '_mvvwb_booking_customer_id', true);
        $customer = get_userdata($customer_id);
        if ($customer) {
            $postData['customer'] = [
                'name' => $customer->first_name,
                'link' => $isAdmin ? get_edit_user_link($customer_id) : ''
            ];
        } else {
            $postData['customer'] = [
                'name' => 'Guest',
                'link' => ''
            ];
        }


        if ($product) {
            $postData['product'] = [
                'title' => $product->post_title,
                'link' => $isAdmin ? get_edit_post_link($product, 'edit') : get_permalink($product)
            ];
        } else {
            $postData['product'] = [
                'title' => '',
                'link' => ''
            ];
        }
        $order_id = get_post_meta($post->ID, '_mvvwb_order_id', true);
        $order = wc_get_order($order_id);

        if ($order) {
            $postData['order'] = [
                'title' => sprintf(__('Order #%d', 'booking-for-woocommerce'), $order_id),
                'id' => $order_id,
                'link' => $isAdmin ? get_edit_post_link($order_id, 'edit') : $order->get_view_order_url()
            ];
        } else {
            $postData['order'] = [
                'title' => '',
                'link' => ''
            ];
        }

        $postData['booking'] = $this->getBookingData($formatted, $dateFormat);
        $postData['resources'] = $this->getResources();

        return $postData;
    }

    public function getResources()
    {

        $resources = get_post_meta($this->bookingId, '_mvvwb_resources', true);
        return $resources;

    }

    public function getBookingCount()
    {

        $q = get_post_meta($this->bookingId, '_mvvwb_booking_count', true);
        if ($q) {
            return $q;
        } else {
            return 1;
        }
    }

    public function getResourcesCount($res_id)
    {
        $q = get_post_meta($this->bookingId, '_mvvwb_booking_count', true);
        if (!$q) {
            $q = 1;
        }
        $resources = get_post_meta($this->bookingId, '_mvvwb_resources', true);
        if ($resources && is_array($resources)) {
            foreach ($resources as $res) {
                if ($res['term_id'] == $res_id) {
                    return $q * $res['quantity'];
                }
            }
        }

        return $q;
    }

    public function paid()
    {
        $this->update_status('paid');
    }

    public function update_status($status,$disableActions=false)
    {
        $currentStatus = $this->get_status();
        $newStatus = $status;
        wp_update_post(array(
            'ID' => $this->bookingId,
            'post_status' => $status
        ));
        $this->status_transition($currentStatus, $newStatus,$disableActions);

        $this->clearTrans();
        $this->schedule_events();

    }

    public function get_status()
    {
        return get_post_status($this->bookingId);
    }

    public function status_transition($from, $to,$disableActions=false)
    {

        if ($from === $to) {
            return;
        }
        $allowed_statuses = array_unique(array_merge(
            get_mvvwb_booking_statuses(null, true),
            get_mvvwb_booking_statuses('user', true),
            get_mvvwb_booking_statuses('cancel', true)
        ));

        $from = !empty($allowed_statuses[$from])
            ? $from
            : false;

        $to = !empty($allowed_statuses[$to])
            ? $to
            : false;

        if ($from && $to) {
            $order = $this->getOrder();

            if ($order) {
                /* translators: 1: booking id 2: old status 3: new status */
                $order->add_order_note(sprintf(__('Booking #%1$d status changed from "%2$s" to "%3$s"', 'booking-for-woocommerce'), $this->getId(), $allowed_statuses[$from], $allowed_statuses[$to]));
            }
            // Fire the events of valid status has been transitioned.
            if(!$disableActions){
                do_action('mvv_booking_status_changed_to_' . $to, $this->getId(), $this);
                do_action('mvv_booking_status_changed_' . $from . '_to_' . $to, $this->getId(), $this);

            }


        }
    }

    public function getOrder()
    {
        $order_id = get_post_meta($this->bookingId, '_mvvwb_order_id', true);
        return wc_get_order($order_id);
    }

    public function getId()
    {
        return $this->bookingId;
    }

    public function clearTrans()
    {
        $product_id = get_post_meta($this->bookingId, '_mvvwb_product_id', true);
        MVVWB_Transient::clearTransByProduct($product_id);
    }

    public function schedule_events()
    {

        $order = $this->getOrder();

        if (in_array($this->get_status(), get_mvvwb_booking_statuses('scheduled'))) {
            $bookingData = $this->getBookingData(false);
            $end = new DateTime($bookingData['end'], new DateTimeZone($this->timeZoneName));

            $order_status = $order ? $order->get_status() : null;
            // If there is no order, or the order is not in one of the statuses then schedule events.
            if (!in_array($order_status, array('cancelled', 'refunded', 'pending', 'on-hold'))) {
                $start = new DateTime($bookingData['start'], new DateTimeZone($this->timeZoneName));
                $start->modify('-1 day');
                wp_clear_scheduled_hook('mvvwb_booking_reminder', [$this->getId()]);
                wp_schedule_single_event($start->getTimestamp(), 'mvvwb_booking_reminder', [$this->getId()]);

            }
            wp_clear_scheduled_hook('mvvwb_check_booking_completed', [$this->getId()]);
            wp_schedule_single_event($end->getTimestamp() + 600, 'mvvwb_check_booking_completed', [$this->getId()]);

        } else {
            wp_clear_scheduled_hook('mvvwb_booking_reminder', array($this->getId()));
            wp_clear_scheduled_hook('mvvwb_check_booking_completed', array($this->getId()));
        }
    }



    public function passed_cancel_day()
    {
        $item = $this->getBookingItem();
        if (!$item || !$item->can_be_cancelled()) {
            return true;
        }

        if (false !== $item) {
            $cancel_limit = $item->get_cancel_limit('YmdHis');
            if ($cancel_limit === false) {
                return true;
            }
            if ($cancel_limit >= $this->get_start_date('YmdHis')) {
                return true;
            }
        }
        return false;
    }

    public function getBookingItem()
    {
        $product_id = get_post_meta($this->bookingId, '_mvvwb_product_id', true);
        $product = new MVVWB_Booking_Item($product_id);
        if ($product->isValid === false) {
            return false;
        }
        return $product;
    }

    public function getProductId()
    {
        $product_id = get_post_meta($this->bookingId, '_mvvwb_product_id', true);
        return $product_id;
    }

    /**
     * Returns booking start date.
     *
     */
    public function get_start_date($date_format = false, $time_format = null)
    {

        $data = $this->getBookingData(($date_format !== false), $date_format);

        return $data['start'];
    }

    public function get_cancel_url($redirect = '')
    {
        $cancel_page = get_permalink(wc_get_page_id('myaccount'));

        if (!$cancel_page) {
            $cancel_page = home_url();
        }

        return wp_nonce_url(add_query_arg(
            array(
                'cancel_booking' => 'true',
                'booking_id' => $this->getId(),
                'redirect' => $redirect,
            ),
            $cancel_page), 'mvvwb-cancel_booking');
    }
// End enqueue_scripts ()
// End instance()
}
