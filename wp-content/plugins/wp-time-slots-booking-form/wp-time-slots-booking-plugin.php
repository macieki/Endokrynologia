<?php
/*
Plugin Name: WP Time Slots Booking Form
Plugin URI: https://wptimeslot.dwbooster.com/
Description: Time Slots / Appointment Booking Plugin for WordPress
Version: 1.0.73
Author: CodePeople
Author URI: https://wptimeslot.dwbooster.com/
License: GPL
Text Domain: wp-time-slots-booking-form
*/

define('CP_TSLOTSBOOK_DEFER_SCRIPTS_LOADING', (get_option('cp_tslotsb_LOAD_SCRIPTS',"1") == "1"?true:false));

define('CP_TSLOTSBOOK_DEFAULT_form_structure', '[[{"form_identifier":"","name":"fieldname1","shortlabel":"","index":0,"ftype":"fslots","userhelp":"","userhelpTooltip":false,"csslayout":"","title":"Select Date and Time","slotsavail":{"d1":[{"h1":8,"m1":0,"c":1,"p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}],"d2":[{"h1":8,"m1":0,"c":1,"p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}],"d3":[{"h1":8,"m1":0,"c":1,"p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}],"d4":[{"h1":8,"m1":0,"c":1,"p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}],"d5":[{"h1":8,"m1":0,"c":1,"p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}],"d0":[{"h1":8,"m1":0,"c":"1","p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":"16","m1":"0","c":"1","p":"0","min":960},{"h1":"17","m1":"0","c":"1","p":"0","min":1020}],"d6":[{"h1":8,"m1":0,"c":"1","p":0,"min":480},{"h1":9,"m1":0,"c":"1","p":0,"min":540},{"h1":10,"m1":0,"c":"1","p":0,"min":600},{"h1":11,"m1":0,"c":"1","p":0,"min":660},{"h1":12,"m1":0,"c":"1","p":0,"min":720},{"h1":13,"m1":0,"c":"1","p":0,"min":780},{"h1":14,"m1":0,"c":"1","p":0,"min":840},{"h1":15,"m1":0,"c":"1","p":0,"min":900},{"h1":16,"m1":0,"c":"1","p":0,"min":960},{"h1":17,"m1":0,"c":"1","p":0,"min":1020}]},"slots_special":[],"min_quantity":1,"max_quantity":"1","quantity1":1,"label1":"","quantity2":1,"label2":"","prices":[{"name":"default","price1":["25",0,0,0,0],"price2":[0,0,0,0,0]}],"dateFormat":"mm/dd/yy","showDropdown":false,"showTotalCost":true,"showTotalCostFormat":"$ {0}","dropdownRange":"-10:+10","working_dates":[false,true,true,true,true,true,false],"numberOfMonths":1,"maxNumberOfApp":0,"firstDay":0,"minDate":"0","maxDate":"","defaultDate":"","invalidDates":"","tmpinvalidDates":"","required":true,"fBuild":{},"tmpinvalidDatestime":[],"getD":{}},{"form_identifier":"","name":"email","shortlabel":"","index":1,"ftype":"femail","userhelp":"","userhelpTooltip":false,"csslayout":"","title":"Email","predefined":"","predefinedClick":false,"required":true,"size":"medium","equalTo":"","fBuild":{}}],[{"title":"","description":"","formlayout":"top_aligned","formtemplate":"","evalequations":1,"autocomplete":1}]]');


define('CP_TSLOTSBOOK_DEFAULT_track_IP', true);

define('CP_TSLOTSBOOK_DEFAULT_fp_subject', 'Notification to administrator: Booking request received...');
define('CP_TSLOTSBOOK_DEFAULT_fp_inc_additional_info', 'true');
define('CP_TSLOTSBOOK_DEFAULT_fp_return_page', get_site_url());
define('CP_TSLOTSBOOK_DEFAULT_fp_message', "The following contact message has been sent:\n\n<%INFO%>\n\n");

define('CP_TSLOTSBOOK_DEFAULT_cu_enable_copy_to_user', 'true');
define('CP_TSLOTSBOOK_DEFAULT_cu_user_email_field', 'email');
define('CP_TSLOTSBOOK_DEFAULT_cu_subject', 'Confirmation: Your booking has been received...');
define('CP_TSLOTSBOOK_DEFAULT_cu_message', "Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.");
define('CP_TSLOTSBOOK_DEFAULT_email_format','text');

define('CP_TSLOTSBOOK_DEFAULT_vs_use_validation', 'true');

define('CP_TSLOTSBOOK_DEFAULT_vs_text_is_required', 'This field is required.');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_is_email', 'Please enter a valid email address.');

define('CP_TSLOTSBOOK_DEFAULT_vs_text_datemmddyyyy', 'Please enter a valid date with this format(mm/dd/yyyy)');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_dateddmmyyyy', 'Please enter a valid date with this format(dd/mm/yyyy)');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_number', 'Please enter a valid number.');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_digits', 'Please enter only digits.');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_max', 'Please enter a value less than or equal to {0}.');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_min', 'Please enter a value greater than or equal to {0}.');
define('CP_TSLOTSBOOK_DEFAULT_vs_text_maxapp', 'Please select a max of  {0} appointments per customer.');

define('CP_TSLOTSBOOK_DEFAULT_cv_enable_captcha', 'true');
define('CP_TSLOTSBOOK_DEFAULT_cv_width', '180');
define('CP_TSLOTSBOOK_DEFAULT_cv_height', '60');
define('CP_TSLOTSBOOK_DEFAULT_cv_chars', '5');
define('CP_TSLOTSBOOK_DEFAULT_cv_font', 'font-1.ttf');
define('CP_TSLOTSBOOK_DEFAULT_cv_min_font_size', '25');
define('CP_TSLOTSBOOK_DEFAULT_cv_max_font_size', '35');
define('CP_TSLOTSBOOK_DEFAULT_cv_noise', '200');
define('CP_TSLOTSBOOK_DEFAULT_cv_noise_length', '4');
define('CP_TSLOTSBOOK_DEFAULT_cv_background', 'ffffff');
define('CP_TSLOTSBOOK_DEFAULT_cv_border', '000000');
define('CP_TSLOTSBOOK_DEFAULT_cv_text_enter_valid_captcha', 'Please enter a valid captcha code.');

define('CP_TSLOTSBOOK_REP_ARR', '[+arr1237]');


// loading add-ons
// -----------------------------------------
global $cptslotsb_addons_active_list, // List of addon IDs
	   $cptslotsb_addons_objs_list; // List of addon objects
	   
$cptslotsb_addons_active_list = array();
$cptslotsb_addons_objs_list	 = array();
	
function cptslotsb_loading_add_ons()
{
	global $cptslotsb_addons_active_list, // List of addon IDs
		   $cptslotsb_addons_objs_list; // List of addon objects
	
    // Get the list of active addons
	$cptslotsb_addons_active_list = get_option( 'cptslotsb_addons_active_list', array() );
    if( !empty( $cptslotsb_addons_active_list ) 
        || ( isset( $_GET["page"] ) && $_GET["page"] == "cp_timeslotsbooking" )  
        || ( isset( $_GET["page"] ) && $_GET["page"] == "cp_timeslotsbooking_addons" )
      )
	{	
		$path = dirname( __FILE__ ).'/addons';
		if( file_exists( $path ) )
		{
			$addons = dir( $path );
			while( false !== ( $entry = $addons->read() ) ) 
			{    
				if( strlen( $entry ) > 3 && strtolower( pathinfo( $entry, PATHINFO_EXTENSION) ) == 'php' )
				{
					require_once $addons->path.'/'.$entry;
				}			
			}
		} 
	}	
}
cptslotsb_loading_add_ons();



/* initialization / install */

include_once dirname( __FILE__ ) . '/classes/cp-base-class.inc.php';
include_once dirname( __FILE__ ) . '/cp-main-class.inc.php';
include_once dirname( __FILE__ ) . '/cp-data-source.inc.php';

$cp_tslotsb_plugin = new CP_TimeSlotsBookingPlugin;

register_activation_hook(__FILE__, array($cp_tslotsb_plugin,'install') ); 
add_action( 'media_buttons', array($cp_tslotsb_plugin, 'insert_button'), 11);
add_action( 'init', array($cp_tslotsb_plugin, 'data_management'));
add_action( 'wp_loaded', array($cp_tslotsb_plugin, 'data_management_loaded'));

if( class_exists( 'CP_TimeSlotsBookingPlugin_Widget' ) )
    add_action( 'widgets_init', function () { return register_widget("CP_TimeSlotsBookingPlugin_Widget"); } );


//START: activation redirection 
function cptslotsb_activation_redirect( $plugin ) {
    if(
        $plugin == plugin_basename( __FILE__ ) &&
        (!isset($_POST["action"]) || $_POST["action"] != 'activate-selected') &&
        (!isset($_POST["action2"]) || $_POST["action2"] != 'activate-selected') 
      )
    {
        exit( wp_redirect( admin_url( 'admin.php?page=cp_timeslotsbooking' ) ) );
    }
}
add_action( 'activated_plugin', 'cptslotsb_activation_redirect' );
//END: activation redirection 


if ( is_admin() ) {    
    add_action('admin_enqueue_scripts', array($cp_tslotsb_plugin,'insert_adminScripts'), 1);    
    add_filter("plugin_action_links_".plugin_basename(__FILE__), array($cp_tslotsb_plugin,'plugin_page_links'));   
    add_action('admin_menu', array($cp_tslotsb_plugin,'admin_menu') );
    add_action('enqueue_block_editor_assets', array($cp_tslotsb_plugin,'gutenberg_block') );
} else {    
    add_shortcode( $cp_tslotsb_plugin->shorttag, array($cp_tslotsb_plugin, 'filter_content') );   
    add_shortcode( 'CP_TIME_SLOTS_BOOKING_LIST', array($cp_tslotsb_plugin, 'filter_list') );    
}  

// register gutemberg block
if (function_exists('register_block_type'))
{
    register_block_type('cptimeslots/form-rendering', array(
                        'attributes'      => array(
                                'formId'    => array(
                                    'type'      => 'string'
                                ),
                                'instanceId'    => array(
                                    'type'      => 'string'
                                ),
                            ),
                        'render_callback' => array($cp_tslotsb_plugin, 'render_form_admin')
                    )); 
}

// banner
$codepeople_promote_banner_plugins[ 'wp-time-slots-booking-form' ] = array( 
                      'plugin_name' => 'WP Time Slots Booking Form', 
                      'plugin_url'  => 'https://wordpress.org/support/plugin/wp-time-slots-booking-form/reviews/?filter=5#new-post'
);
require_once 'banner.php';

// optional opt-in deactivation feedback
require_once 'cp-feedback.php';


add_filter('autoptimize_filter_js_exclude', 'cptimeslotsbk_autoptimize_filter_js_exclude' );
function cptimeslotsbk_autoptimize_filter_js_exclude($excluded)
{
    return $excluded.",jquery.ui.datepicker-fr-CA.js,".
                     "jquery.ui.datepicker-es_ES.js,".
                     "jquery.ui.datepicker-no.js,".
                     "jquery.ui.datepicker-he_IL.js,".
                     "jquery.ui.datepicker-pt_BR.js,".
                     "jquery.ui.datepicker-ro_RO.js,".
                     "jquery.ui.datepicker-ru_RU.js,".
                     "jquery.ui.datepicker-sk_SK.js,".
                     "jquery.ui.datepicker-sl_SI.js,".
                     "jquery.ui.datepicker-sr_SR.js,".
                     "jquery.ui.datepicker-sv_SE.js,".
                     "jquery.ui.datepicker-tr_TR.js,".
                     "jquery.ui.datepicker-zh_CN.js,".
                     "jquery.ui.datepicker-zh_TW.js,".
                     "jquery.ui.datepicker-nl_NL.js,".
                     "jquery.ui.datepicker-pl_PL.js,".
                     "jquery.ui.datepicker-pt_PT.js,".
                     "jquery.ui.datepicker-bg_BG.js,".
                     "jquery.ui.datepicker-bs_BA.js,".
                     "jquery.ui.datepicker-cs_CZ.js,".
                     "jquery.ui.datepicker-da_DK.js,".
                     "jquery.ui.datepicker-de_DE.js,".
                     "jquery.ui.datepicker-eo_EO.js,".
                     "jquery.ui.datepicker-fa_IR.js,".
                     "jquery.ui.datepicker-fr_FR.js,".
                     "jquery.ui.datepicker-gl_ES.js,".
                     "jquery.ui.datepicker-hi_IN.js,".
                     "jquery.ui.datepicker-hu_HU.js,".
                     "jquery.ui.datepicker-hy_AM.js,".
                     "jquery.ui.datepicker-id_ID.js,".
                     "jquery.ui.datepicker-it_IT.js,".
                     "jquery.ui.datepicker-ka_GE.js,".
                     "jquery.ui.datepicker-ko_KR.js,".
                     "jquery.ui.datepicker-lt_LT.js,".
                     "jquery.ui.datepicker-ms_MY.js,".
                     "jquery.ui.datepicker-nb_NO.js,".
                     "jquery.ui.datepicker-be_BY.js,".
                     "jquery.ui.datepicker-mk_MK.js,".
                     "jquery.ui.datepicker-ml_IN.js,".
                     "jquery.ui.datepicker-az.js,".
                     "jquery.ui.datepicker-af.js,".
                     "jquery.ui.datepicker-ar.js,".
                     "jquery.ui.datepicker-ca.js,".
                     "jquery.ui.datepicker-el.js,".
                     "jquery.ui.datepicker-et.js,".
                     "jquery.ui.datepicker-eu.js,".
                     "jquery.ui.datepicker-fi.js,".
                     "jquery.ui.datepicker-hr.js,".
                     "jquery.ui.datepicker-ja.js,".
                     "jquery.ui.datepicker-lv.js,".
                     "jquery.ui.datepicker-sq.js,".
                     "jquery.ui.datepicker-ta.js,".
                     "jquery.ui.datepicker-th.js,".
                     "jquery.ui.datepicker-uk.js,".
                     "jquery.ui.datepicker-vi.js,".
                     "jquery.validate.min.js,jQuery.stringify.js,jquery.validate.js";
}


// code for compatibility with third party scripts
add_filter('option_sbp_settings', 'cptimeslotsbk_sbp_fix_conflict' );
function cptimeslotsbk_sbp_fix_conflict($option)
{
    if(!is_admin())
    {
       if(is_array($option) && isset($option['jquery_to_footer'])) 
           unset($option['jquery_to_footer']);
    }
    return $option;
}

// elementor integration
include_once dirname( __FILE__ ) . '/controllers/elementor/cp-elementor-widget.inc.php';

?>