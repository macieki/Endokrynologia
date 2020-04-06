<?php

if (!defined('ABSPATH'))
    exit;

class MVVWB_Booking_Order_Manager
{
    public function __construct()
    {
        add_action('woocommerce_order_status_processing', array($this, 'publish_bookings'), 10, 1);
        add_action('woocommerce_order_status_completed', array($this, 'publish_bookings'), 10, 1);

        add_action('before_delete_post', array($this, 'delete_post'));
        add_action('wp_trash_post', array($this, 'trash_post'));
        add_action('untrash_post', array($this, 'untrash_post'));

        // When an order is cancelled/fully refunded, cancel the bookings
        add_action('woocommerce_order_status_cancelled', array($this, 'cancel_bookings'), 10, 1);
        add_action('woocommerce_order_status_refunded', array($this, 'cancel_bookings'), 10, 1);
        add_action('woocommerce_order_partially_refunded', array($this, 'cancel_bookings_for_partial_refunds'), 10, 1);
        add_filter('woocommerce_cancel_unpaid_order', array($this, 'prevent_cancel'), 10, 2);
        add_filter('woocommerce_my_account_my_orders_actions', array($this, 'my_orders_actions'), 10, 2);

    }
    public function prevent_cancel($return, $order)
    {
        $created_via = is_callable(array($order, 'get_created_via')) ? $order->get_created_via() : $order->created_via;
        $payment_method = is_callable(array($order, 'get_payment_method')) ? $order->get_payment_method() : $order->payment_method;

        if ('bookings' === $created_via || 'mvvwb-payment-gateway' === $payment_method) {
            return false;
        }
        return $return;
    }

    public function my_orders_actions($actions, $order)
    {
        if (!is_a($order, 'WC_Order')) {
            return $actions;
        }
        $payment_method = is_callable(array($order, 'get_payment_method')) ? $order->get_payment_method() : $order->payment_method;

        if ($order->has_status('pending') && 'mvvwb-payment-gateway' === $payment_method) {
            $status = array();

            foreach ($order->get_items() as $order_item_id => $item) {
                $booking_ids = MVVWB_Booking::get_booking_ids_from_order_item_id($order_item_id);

                if ($booking_ids) {
                    foreach ($booking_ids as $booking_id) {
                        $booking = new MVVWB_Booking($booking_id);
                        $status[] = $booking->get_status();
                    }
                }
            }

            if (in_array('pending-confirmation', $status) && isset($actions['pay'])) {
                unset($actions['pay']);
            }
        }

        return $actions;
    }

    public function publish_bookings($order_id)
    {
        global $wpdb;

        $order = wc_get_order($order_id);
        $payment_method = is_callable(array($order, 'get_payment_method')) ? $order->get_payment_method() : $order->payment_method;


        $bookings = MVVWB_Booking::get_booking_ids_from_order_id($order_id);

        // Don't publish bookings for COD orders, but still schedule their events
        $no_publish = $order->has_status('processing') && 'cod' === $payment_method;

        foreach ($bookings as $booking_id) {

            $booking = new MVVWB_Booking($booking_id);
            if ($no_publish) {
                // $booking->maybe_schedule_event('reminder');
                //  $booking->maybe_schedule_event('complete');
            } else {
                $booking->paid();
            }
        }
    }


    public function cancel_bookings($order_id)
    {
        $order = wc_get_order($order_id);
        $bookings = MVVWB_Booking::get_booking_ids_from_order_id($order_id);

        foreach ($bookings as $booking_id) {
            $booking = new MVVWB_Booking($booking_id);
            $booking->update_status('cancelled');
        }


    }

    public function cancel_bookings_for_partial_refunds($order_id)
    {
        global $wpdb;

        $order = wc_get_order($order_id);
        $cancelled_bookings = array();


        // Collect booking IDs where refunded qty matches with its order item
        // being refunded.
        foreach ($order->get_items() as $order_item_id => $item) {
            $refunded_qty = $order->get_qty_refunded_for_item($order_item_id);
            if ('line_item' === $item['type'] && 0 !== $refunded_qty) {

                $booking_id = $wpdb->get_col($wpdb->prepare("SELECT post_id FROM {$wpdb->postmeta} WHERE meta_key = '_booking_order_item_id' AND meta_value = %d", $order_item_id));

                if ($booking_id) {
                    $cancelled_bookings = array_merge(
                        $cancelled_bookings,
                        $booking_id
                    );
                }
            }
        }

        // Update all cancelled bookings.
        foreach ($cancelled_bookings as $booking_id) {

            $booking = new MVVWB_Booking($booking_id);
            $booking->update_status('cancelled');
        }

    }
    /**
     * Removes bookings related to the order being deleted.
     *
     * @param mixed $post_id ID of post being deleted
     */
    public function delete_post($post_id)
    {
        if (!current_user_can('delete_posts') || !$post_id) {
            return;
        }


        if ('shop_order' === get_post_type($post_id)) {

            $ids = MVVWB_Booking::get_booking_ids_by(['object_id' => $post_id, 'object_type' => 'order']);
            if ($ids) {
                foreach ($ids as $id) {
                    wp_delete_post($id, true);
                    $this->clear_cron_hooks((int)$id);
                }
            }
        }
    }

    function clear_cron_hooks($post_id)
    {
        wp_clear_scheduled_hook('mvvwb_booking_reminder', array($post_id));
        wp_clear_scheduled_hook('mvvwb_check_booking_completed', array($post_id));
    }

    /**
     * Trash bookings with orders
     *
     * @param mixed $post_id
     */
    public function trash_post($post_id)
    {
        if (!$post_id) {
            return;
        }


        if ('shop_order' === get_post_type($post_id)) {

            $bookings = MVVWB_Booking::get_booking_ids_by(['object_id' => $post_id, 'object_type' => 'order']);

            foreach ($bookings as $booking_id) {

                wp_trash_post($booking_id);
            }


        }
    }

    /**
     * Untrash bookings with orders
     *
     * @param mixed $post_id
     */
    public function untrash_post($post_id)
    {
        if (!$post_id) {
            return;
        }


        if ('shop_order' === get_post_type($post_id)) {


            $bookings = MVVWB_Booking::get_booking_ids_by(['object_id' => $post_id, 'object_type' => 'order']);

            foreach ($bookings as $booking_id) {

                wp_untrash_post($booking_id);
            }


        }
    }
}
