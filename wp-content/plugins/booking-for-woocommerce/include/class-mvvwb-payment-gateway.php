<?php

/**
 * WC_Bookings_Gateway class.
 */
class MVVWB_Payment_Gateway extends WC_Payment_Gateway
{

    /**
     * Constructor for the gateway.
     */
    public function __construct()
    {
        $this->id = 'mvvwb-payment-gateway';
        $this->icon = '';
        $this->has_fields = false;
        $this->method_title = __('Check booking availability', 'booking-for-woocommerce');
        $this->title = $this->method_title;
        $this->order_button_text = __('Request Confirmation', 'booking-for-woocommerce');

        add_action('woocommerce_thankyou_' . $this->id, array($this, 'thankyou_page'));
    }

    /**
     * Admin page.
     */
    public function admin_options()
    {
        $title = (!empty($this->method_title)) ? $this->method_title : __('Settings', 'booking-for-woocommerce');

        echo '<h3>' . esc_html($title) . '</h3>';

        echo '<p>' . esc_html__('This is fictitious payment method used for bookings that requires confirmation.', 'booking-for-woocommerce') . '</p>';
        echo '<p>' . esc_html__('This gateway requires no configuration.', 'booking-for-woocommerce') . '</p>';

        // Hides the save button
        echo '<style>p.submit input[type="submit"] { display: none }</style>';
    }

    /**
     * Check if this gateway is enabled.
     *
     * @return bool
     */
    public function is_available()
    {
        if ('yes' !== $this->enabled) {
            return false;
        }

        if (mvvwb_cart_requires_confirmation()) {
            return true;
        }

        return false;
    }

    /**
     * Process the payment and return the result
     *
     * @param  int $order_id
     *
     * @return array
     */
    public function process_payment($order_id)
    {
        $order = new WC_Order($order_id);

        // Add custom order note.
        $order->add_order_note(__('This order is awaiting confirmation from the shop manager', 'booking-for-woocommerce'));

        // Remove cart
        WC()->cart->empty_cart();
        $bookingIds = MVVWB_Booking::get_booking_ids_from_order_id($order_id);
        foreach ($bookingIds as $id) {
            do_action('mvv_booking_status_changed_to_pending-confirmation', $id);
        }
        // Return thankyou redirect.
        return array(
            'result' => 'success',
            'redirect' => $this->get_return_url($order),
        );
    }

    /**
     * Output for the order received page.
     */
    public function thankyou_page($order_id)
    {
        $order = new WC_Order($order_id);

        if ('completed' == $order->get_status()) {
            echo '<p>' . esc_html__('Your booking has been confirmed. Thank you.', 'booking-for-woocommerce') . '</p>';
        } else {
            echo '<p>' . esc_html__('Your booking is awaiting confirmation. You will be notified by email as soon as we\'ve confirmed availability.', 'booking-for-woocommerce') . '</p>';
        }
    }
}
