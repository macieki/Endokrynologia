<?php


if ( ! function_exists( 'karton_setup' ) ) :

function karton_setup() {
	function karton_scripts() {
		wp_enqueue_style( 'style', get_template_directory_uri() . '/css/style.css' );
        wp_enqueue_script( 'jquery1', get_template_directory_uri() . '/js/jquery-3.2.1.min.js'      );
		wp_enqueue_script( 'fatnav', get_template_directory_uri() . '/js/jquery.fatNav.js'		);
	}
	add_action( 'wp_enqueue_scripts', 'karton_scripts' );
}
endif;
add_action( 'after_setup_theme', 'karton_setup' );

add_filter('show_admin_bar', '__return_false');
show_admin_bar(false);
add_theme_support( 'post-thumbnails' );


function varia_init() {
    $args = array(
      'label' => 'Varia',
        'public' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'varia'),
        'query_var' => true,
        'menu_icon' => 'dashicons-format-chat',
        'supports' => array(
            'title')
        );
    register_post_type( 'varia', $args );
}
add_action( 'init', 'varia_init' );


function calendar_day($date,$calendar_id = false){

    $hide_unavailable_timeslots = get_option('booked_hide_unavailable_timeslots',false);
    $hide_available_count = get_option('booked_hide_available_timeslots',false);
    $public_appointments = get_option('booked_public_appointments',false);
    $total_available = 0;


        /*
        Set some variables
        */

        $local_time = current_time('timestamp');

        $year = date_i18n('Y',strtotime($date));
        $month = date_i18n('m',strtotime($date));
        $day = date_i18n('d',strtotime($date));

        $start_timestamp = strtotime($year.'-'.$month.'-'.$day.' 00:00:00');
        $end_timestamp = strtotime($year.'-'.$month.'-'.$day.' 23:59:59');

        $date_format = get_option('date_format');
        $time_format = get_option('time_format');
        $date_display = date_i18n($date_format,strtotime($date));
        $day_name = date('D',strtotime($date));
        /*
        Grab all of the appointments for this day
        */

        $args = array(
            'post_type' => 'booked_appointments',
            'posts_per_page' => 500,
            'post_status' => 'any',
            'meta_query' => array(
                array(
                    'key'     => '_appointment_timestamp',
                    'value'   => array( $start_timestamp, $end_timestamp ),
                    'compare' => 'BETWEEN'
                )
            )
        );

        if ($calendar_id):
            $args['tax_query'] = array(
                array(
                    'taxonomy' => 'booked_custom_calendars',
                    'field'    => 'term_id',
                    'terms'    => $calendar_id,
                )
            );
        endif;

        $appointments_array = array();

        $bookedAppointments = new WP_Query( apply_filters('booked_fe_date_content_query',$args) );
        if($bookedAppointments->have_posts()):
            while ($bookedAppointments->have_posts()):
                $bookedAppointments->the_post();
                global $post;
                $timestamp = get_post_meta($post->ID, '_appointment_timestamp',true);
                $timeslot = get_post_meta($post->ID, '_appointment_timeslot',true);
                $user_id = get_post_meta($post->ID, '_appointment_user',true);
                $day = date_i18n('d',$timestamp);
                $appointments_array[$post->ID]['post_id'] = $post->ID;
                $appointments_array[$post->ID]['timestamp'] = $timestamp;
                $appointments_array[$post->ID]['timeslot'] = $timeslot;
                $appointments_array[$post->ID]['status'] = $post->post_status;
                $appointments_array[$post->ID]['user'] = $user_id;
            endwhile;
        endif;

        $appointments_array = apply_filters('booked_appointments_array', $appointments_array);

        ob_start();

        if ($calendar_id):
            $booked_defaults = get_option('booked_defaults_'.$calendar_id);
            if (!$booked_defaults):
                $booked_defaults = get_option('booked_defaults');
            endif;
        else :
            $booked_defaults = get_option('booked_defaults');
        endif;

        $formatted_date = date_i18n('Ymd',strtotime($date));
        $disabled_formatted_date = date( 'Y-m-d', strtotime( $date ) );
        $booked_defaults = booked_apply_custom_timeslots_details_filter($booked_defaults,$calendar_id);

        if (isset($booked_defaults[$formatted_date]) && !empty($booked_defaults[$formatted_date])):
            $todays_defaults = (is_array($booked_defaults[$formatted_date]) ? $booked_defaults[$formatted_date] : json_decode($booked_defaults[$formatted_date],true));
            $todays_defaults_details = (is_array($booked_defaults[$formatted_date.'-details']) ? $booked_defaults[$formatted_date.'-details'] : json_decode($booked_defaults[$formatted_date.'-details'],true));
        elseif (isset($booked_defaults[$formatted_date]) && empty($booked_defaults[$formatted_date])):
            $todays_defaults = false;
            $todays_defaults_details = false;
        elseif (isset($booked_defaults[$day_name]) && !empty($booked_defaults[$day_name])):
            $todays_defaults = $booked_defaults[$day_name];
            $todays_defaults_details = ( isset($booked_defaults[$day_name]) ? $booked_defaults[$day_name.'-details'] : false );
        else :
            $todays_defaults = false;
            $todays_defaults_details = false;
        endif;
        $slots_total = 0;
        if ($todays_defaults){

            ksort($todays_defaults);

            $temp_count = 0;
            //echo ;
            $dateq = strtotime($date);

            $dzien = array('Niedziela', 'Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', ' Piątek', 'Sobota'); 
            $htmltext = "<p>". $dzien[date('w', $dateq)].', '.date('d', $dateq).'.'.date('m', $dateq).'.'.date('Y', $dateq) . "</p>";
            //echo ;
            foreach($todays_defaults as $timeslot => $count):

                $appts_in_this_timeslot = array();

                /*
                Are there any appointments in this particular timeslot?
                If so, let's create an array of them.
                */

                foreach($appointments_array as $post_id => $appointment):
                    if ($appointment['timeslot'] == $timeslot):
                        $appts_in_this_timeslot[] = $post_id;
                    endif;
                endforeach;

                /*
                Calculate the number of spots available based on total minus the appointments booked
                */
                //echo $timeslot;
                
                $spots_available = $count - count($appts_in_this_timeslot);
                $timeslot_parts = explode('-',$timeslot);
                $timeslotText = date_i18n($time_format,strtotime($timeslot_parts[0]));


                    if(date('Y-m-d') == date('Y-m-d', strtotime($date)) )
                    {   
                        $f = intval(date("Hi"));
                        $d = intval($timeslot_parts[0]);
                        if ($f<$d){
                            $spots_available = ($spots_available < 0 ? 0 : $spots_available);
                            $slots_total = $slots_total + $spots_available;
                            if ($spots_available > 0){
                            $htmltext = $htmltext."<span>".$timeslotText."</span>";
                            }
                        }
                    }
                    else{
                        $spots_available = ($spots_available < 0 ? 0 : $spots_available);
                        $slots_total = $slots_total + $spots_available;
                        if ($spots_available > 0){
                        $htmltext = $htmltext."<span>".$timeslotText."</span>";
                        }
                    }



            endforeach;
            if ($slots_total > 0){
                return $htmltext;
            }
            else{
                return;
            }
        }

};

add_filter( 'woocommerce_add_cart_item_data', 'woo_custom_add_to_cart' );

function woo_custom_add_to_cart( $cart_item_data ) {

    global $woocommerce;
    $woocommerce->cart->empty_cart();

    // Do nothing with the data and return
    return $cart_item_data;
}