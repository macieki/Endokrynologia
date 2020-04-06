-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1:3306
-- Vytvořeno: Pon 06. dub 2020, 15:01
-- Verze serveru: 5.7.19
-- Verze PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `wp_endokrynologia`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(10, 'action_scheduler/migration_hook', 'complete', '2020-03-18 15:37:50', '2020-03-18 15:37:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584545870;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584545870;}', 1, 1, '2020-03-18 15:37:52', '2020-03-18 15:37:52', 0, NULL),
(11, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-03-18 15:54:58', '2020-03-18 15:54:58', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584546898;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584546898;}', 0, 1, '2020-03-18 15:54:59', '2020-03-18 15:54:59', 0, NULL),
(12, 'action_scheduler/migration_hook', 'complete', '2020-03-18 19:02:06', '2020-03-18 19:02:06', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584558126;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584558126;}', 1, 1, '2020-03-18 19:02:48', '2020-03-18 19:02:48', 0, NULL),
(13, 'action_scheduler/migration_hook', 'complete', '2020-03-18 19:02:50', '2020-03-18 19:02:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584558170;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584558170;}', 1, 1, '2020-03-18 19:02:55', '2020-03-18 19:02:55', 0, NULL),
(14, 'action_scheduler/migration_hook', 'complete', '2020-03-18 19:02:59', '2020-03-18 19:02:59', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584558179;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584558179;}', 1, 1, '2020-03-18 19:03:01', '2020-03-18 19:03:01', 0, NULL),
(15, 'action_scheduler/migration_hook', 'complete', '2020-03-18 19:26:33', '2020-03-18 19:26:33', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584559593;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584559593;}', 1, 1, '2020-03-18 19:26:50', '2020-03-18 19:26:50', 0, NULL),
(16, 'action_scheduler/migration_hook', 'complete', '2020-03-18 19:33:33', '2020-03-18 19:33:33', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584560013;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584560013;}', 1, 1, '2020-03-18 19:33:52', '2020-03-18 19:33:52', 0, NULL),
(17, 'action_scheduler/migration_hook', 'complete', '2020-04-03 13:01:09', '2020-04-03 15:01:09', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1585918869;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1585918869;}', 1, 1, '2020-04-03 13:02:27', '2020-04-03 15:02:27', 0, NULL),
(18, 'action_scheduler/migration_hook', 'complete', '2020-04-03 13:02:27', '2020-04-03 15:02:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1585918947;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1585918947;}', 1, 1, '2020-04-03 13:02:27', '2020-04-03 15:02:27', 0, NULL),
(19, 'action_scheduler/migration_hook', 'complete', '2020-04-04 19:40:21', '2020-04-04 21:40:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1586029221;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1586029221;}', 1, 1, '2020-04-04 19:40:49', '2020-04-04 21:40:49', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=1145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 10, 'action created', '2020-03-18 15:37:50', '2020-03-18 15:37:50'),
(2, 10, 'action started via WP Cron', '2020-03-18 15:37:52', '2020-03-18 15:37:52'),
(3, 10, 'action complete via WP Cron', '2020-03-18 15:37:52', '2020-03-18 15:37:52'),
(4, 11, 'action created', '2020-03-18 15:54:58', '2020-03-18 15:54:58'),
(5, 11, 'action started via WP Cron', '2020-03-18 15:54:59', '2020-03-18 15:54:59'),
(6, 11, 'action complete via WP Cron', '2020-03-18 15:54:59', '2020-03-18 15:54:59'),
(7, 12, 'action created', '2020-03-18 19:02:07', '2020-03-18 19:02:07'),
(8, 12, 'action started via Async Request', '2020-03-18 19:02:48', '2020-03-18 19:02:48'),
(9, 12, 'action complete via Async Request', '2020-03-18 19:02:48', '2020-03-18 19:02:48'),
(10, 13, 'action created', '2020-03-18 19:02:50', '2020-03-18 19:02:50'),
(11, 13, 'action started via Async Request', '2020-03-18 19:02:55', '2020-03-18 19:02:55'),
(12, 13, 'action complete via Async Request', '2020-03-18 19:02:55', '2020-03-18 19:02:55'),
(13, 14, 'action created', '2020-03-18 19:02:59', '2020-03-18 19:02:59'),
(14, 14, 'action started via Async Request', '2020-03-18 19:03:01', '2020-03-18 19:03:01'),
(15, 14, 'action complete via Async Request', '2020-03-18 19:03:01', '2020-03-18 19:03:01'),
(16, 15, 'action created', '2020-03-18 19:26:33', '2020-03-18 19:26:33'),
(17, 15, 'action started via Async Request', '2020-03-18 19:26:50', '2020-03-18 19:26:50'),
(18, 15, 'action complete via Async Request', '2020-03-18 19:26:50', '2020-03-18 19:26:50'),
(19, 16, 'action created', '2020-03-18 19:33:33', '2020-03-18 19:33:33'),
(20, 16, 'action started via Async Request', '2020-03-18 19:33:52', '2020-03-18 19:33:52'),
(21, 16, 'action complete via Async Request', '2020-03-18 19:33:52', '2020-03-18 19:33:52'),
(22, 17, 'action created', '2020-04-03 13:01:09', '2020-04-03 15:01:09'),
(23, 17, 'action started via WP Cron', '2020-04-03 13:02:27', '2020-04-03 15:02:27'),
(24, 17, 'action complete via WP Cron', '2020-04-03 13:02:27', '2020-04-03 15:02:27'),
(25, 18, 'action created', '2020-04-03 13:02:27', '2020-04-03 15:02:27'),
(26, 18, 'action started via Async Request', '2020-04-03 13:02:27', '2020-04-03 15:02:27'),
(27, 18, 'action complete via Async Request', '2020-04-03 13:02:27', '2020-04-03 15:02:27'),
(28, 19, 'akcja utworzona', '2020-04-04 19:40:21', '2020-04-04 21:40:21'),
(29, 19, 'action started via Async Request', '2020-04-04 19:40:49', '2020-04-04 21:40:49'),
(30, 19, 'action complete via Async Request', '2020-04-04 19:40:49', '2020-04-04 21:40:49');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-31 09:38:48', '2019-10-31 09:38:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 37, 'WooCommerce', '', '', '', '2020-04-06 11:17:48', '2020-04-06 09:17:48', 'Anulowane nieopłacone zamówienie - osiągnięto limit czasu. Status zamówienia zmieniony z Oczekujące na płatność na Anulowane.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cpabc_appointments`
--

DROP TABLE IF EXISTS `wp_cpabc_appointments`;
CREATE TABLE IF NOT EXISTS `wp_cpabc_appointments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `calendar` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `booked_time` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `booked_time_unformatted` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `question` mediumtext CHARACTER SET utf8,
  `quantity` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `buffered_date` text CHARACTER SET utf8,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cpabc_appointments_discount_codes`
--

DROP TABLE IF EXISTS `wp_cpabc_appointments_discount_codes`;
CREATE TABLE IF NOT EXISTS `wp_cpabc_appointments_discount_codes` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `cal_id` mediumint(9) NOT NULL DEFAULT '1',
  `code` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `availability` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cpabc_appointment_calendars`
--

DROP TABLE IF EXISTS `wp_cpabc_appointment_calendars`;
CREATE TABLE IF NOT EXISTS `wp_cpabc_appointment_calendars` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `uname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lang` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `cpages` tinyint(3) UNSIGNED DEFAULT NULL,
  `ctype` tinyint(3) UNSIGNED DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `workingDates` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `restrictedDates` text CHARACTER SET utf8,
  `timeWorkingDates0` text CHARACTER SET utf8,
  `timeWorkingDates1` text CHARACTER SET utf8,
  `timeWorkingDates2` text CHARACTER SET utf8,
  `timeWorkingDates3` text CHARACTER SET utf8,
  `timeWorkingDates4` text CHARACTER SET utf8,
  `timeWorkingDates5` text CHARACTER SET utf8,
  `timeWorkingDates6` text CHARACTER SET utf8,
  `caldeleted` tinyint(3) UNSIGNED DEFAULT NULL,
  `conwer` int(11) NOT NULL,
  `form_structure` mediumtext CHARACTER SET utf8,
  `specialDates` mediumtext CHARACTER SET utf8,
  `vs_use_validation` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_is_required` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_is_email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_datemmddyyyy` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_dateddmmyyyy` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_number` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_digits` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_max` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_min` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `vs_text_submitbtn` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `calendar_language` text CHARACTER SET utf8,
  `calendar_dateformat` text CHARACTER SET utf8,
  `calendar_pages` text CHARACTER SET utf8,
  `calendar_militarytime` text CHARACTER SET utf8,
  `calendar_weekday` text CHARACTER SET utf8,
  `calendar_mindate` text CHARACTER SET utf8,
  `calendar_maxdate` text CHARACTER SET utf8,
  `calendar_startmonth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `calendar_startyear` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `calendar_theme` text CHARACTER SET utf8,
  `min_slots` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `max_slots` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `close_fpanel` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `quantity_field` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `paypal_mode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `enable_paypal` text CHARACTER SET utf8,
  `paypal_email` text CHARACTER SET utf8,
  `request_cost` text CHARACTER SET utf8,
  `paypal_product_name` text CHARACTER SET utf8,
  `currency` text CHARACTER SET utf8,
  `url_ok` text CHARACTER SET utf8,
  `url_cancel` text CHARACTER SET utf8,
  `paypal_language` text CHARACTER SET utf8,
  `cu_user_email_field` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `notification_from_email` text CHARACTER SET utf8,
  `notification_destination_email` text CHARACTER SET utf8,
  `email_subject_confirmation_to_user` text CHARACTER SET utf8,
  `email_confirmation_to_user` text CHARACTER SET utf8,
  `email_subject_notification_to_admin` text CHARACTER SET utf8,
  `email_notification_to_admin` text CHARACTER SET utf8,
  `enable_reminder` text CHARACTER SET utf8,
  `reminder_hours` text CHARACTER SET utf8,
  `reminder_subject` text CHARACTER SET utf8,
  `reminder_content` text CHARACTER SET utf8,
  `dexcv_enable_captcha` text CHARACTER SET utf8,
  `dexcv_width` text CHARACTER SET utf8,
  `dexcv_height` text CHARACTER SET utf8,
  `dexcv_chars` text CHARACTER SET utf8,
  `dexcv_min_font_size` text CHARACTER SET utf8,
  `dexcv_max_font_size` text CHARACTER SET utf8,
  `dexcv_noise` text CHARACTER SET utf8,
  `dexcv_noise_length` text CHARACTER SET utf8,
  `dexcv_background` text CHARACTER SET utf8,
  `dexcv_border` text CHARACTER SET utf8,
  `dexcv_font` text CHARACTER SET utf8,
  `cv_text_enter_valid_captcha` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `cp_cal_checkboxes` text CHARACTER SET utf8,
  `nuser_emailformat` text CHARACTER SET utf8,
  `nadmin_emailformat` text CHARACTER SET utf8,
  `nremind_emailformat` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_cpabc_appointment_calendars`
--

INSERT INTO `wp_cpabc_appointment_calendars` (`id`, `title`, `uname`, `passwd`, `lang`, `cpages`, `ctype`, `msg`, `workingDates`, `restrictedDates`, `timeWorkingDates0`, `timeWorkingDates1`, `timeWorkingDates2`, `timeWorkingDates3`, `timeWorkingDates4`, `timeWorkingDates5`, `timeWorkingDates6`, `caldeleted`, `conwer`, `form_structure`, `specialDates`, `vs_use_validation`, `vs_text_is_required`, `vs_text_is_email`, `vs_text_datemmddyyyy`, `vs_text_dateddmmyyyy`, `vs_text_number`, `vs_text_digits`, `vs_text_max`, `vs_text_min`, `vs_text_submitbtn`, `calendar_language`, `calendar_dateformat`, `calendar_pages`, `calendar_militarytime`, `calendar_weekday`, `calendar_mindate`, `calendar_maxdate`, `calendar_startmonth`, `calendar_startyear`, `calendar_theme`, `min_slots`, `max_slots`, `close_fpanel`, `quantity_field`, `paypal_mode`, `enable_paypal`, `paypal_email`, `request_cost`, `paypal_product_name`, `currency`, `url_ok`, `url_cancel`, `paypal_language`, `cu_user_email_field`, `notification_from_email`, `notification_destination_email`, `email_subject_confirmation_to_user`, `email_confirmation_to_user`, `email_subject_notification_to_admin`, `email_notification_to_admin`, `enable_reminder`, `reminder_hours`, `reminder_subject`, `reminder_content`, `dexcv_enable_captcha`, `dexcv_width`, `dexcv_height`, `dexcv_chars`, `dexcv_min_font_size`, `dexcv_max_font_size`, `dexcv_noise`, `dexcv_noise_length`, `dexcv_background`, `dexcv_border`, `dexcv_font`, `cv_text_enter_valid_captcha`, `cp_cal_checkboxes`, `nuser_emailformat`, `nadmin_emailformat`, `nremind_emailformat`) VALUES
(1, 'cal1', 'Calendar Item 1', '', '-', 1, 3, 'Please, select your appointment.', '1,2,3,4,5', '', '', '9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0', '9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0', '9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0', '9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0', '9:0,10:0,11:0,12:0,13:0,14:0,15:0,16:0', '', 0, 0, '[[{\"name\":\"email\",\"index\":0,\"title\":\"Email\",\"ftype\":\"femail\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":true,\"predefined\":\"\",\"size\":\"medium\"},{\"name\":\"subject\",\"index\":1,\"title\":\"Subject\",\"required\":true,\"ftype\":\"ftext\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"size\":\"medium\"},{\"name\":\"message\",\"index\":2,\"size\":\"large\",\"required\":true,\"title\":\"Message\",\"ftype\":\"ftextarea\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\"}]]', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'modern/', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cpabc_appointment_calendars_data`
--

DROP TABLE IF EXISTS `wp_cpabc_appointment_calendars_data`;
CREATE TABLE IF NOT EXISTS `wp_cpabc_appointment_calendars_data` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `appointment_calendar_id` int(10) UNSIGNED DEFAULT NULL,
  `datatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8,
  `description_customer` text CHARACTER SET utf8,
  `reminder` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `reference` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cptslotsbk_forms`
--

DROP TABLE IF EXISTS `wp_cptslotsbk_forms`;
CREATE TABLE IF NOT EXISTS `wp_cptslotsbk_forms` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(250) NOT NULL DEFAULT '',
  `form_structure` mediumtext,
  `calendar_language` varchar(250) NOT NULL DEFAULT '',
  `date_format` varchar(250) NOT NULL DEFAULT '',
  `product_name` varchar(250) NOT NULL DEFAULT '',
  `pay_later_label` varchar(250) NOT NULL DEFAULT '',
  `defaultstatus` varchar(250) NOT NULL DEFAULT '',
  `defaultpaidstatus` varchar(250) NOT NULL DEFAULT '',
  `fp_from_email` varchar(250) NOT NULL DEFAULT '',
  `fp_destination_emails` text,
  `fp_subject` varchar(250) NOT NULL DEFAULT '',
  `fp_inc_additional_info` varchar(10) NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) NOT NULL DEFAULT '',
  `fp_message` text,
  `fp_emailformat` varchar(10) NOT NULL DEFAULT '',
  `fp_emailtomethod` varchar(10) NOT NULL DEFAULT '',
  `fp_destination_emails_field` varchar(200) NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) NOT NULL DEFAULT '',
  `cu_user_email_field` varchar(250) NOT NULL DEFAULT '',
  `cu_subject` varchar(250) NOT NULL DEFAULT '',
  `cu_message` text,
  `cu_emailformat` varchar(10) NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) NOT NULL DEFAULT '',
  `vs_text_maxapp` varchar(250) NOT NULL DEFAULT '',
  `vs_text_is_required` varchar(250) NOT NULL DEFAULT '',
  `vs_text_is_email` varchar(250) NOT NULL DEFAULT '',
  `vs_text_datemmddyyyy` varchar(250) NOT NULL DEFAULT '',
  `vs_text_dateddmmyyyy` varchar(250) NOT NULL DEFAULT '',
  `vs_text_number` varchar(250) NOT NULL DEFAULT '',
  `vs_text_digits` varchar(250) NOT NULL DEFAULT '',
  `vs_text_max` varchar(250) NOT NULL DEFAULT '',
  `vs_text_min` varchar(250) NOT NULL DEFAULT '',
  `vs_text_pageof` varchar(250) NOT NULL DEFAULT '',
  `vs_text_submitbtn` varchar(250) NOT NULL DEFAULT '',
  `vs_text_previousbtn` varchar(250) NOT NULL DEFAULT '',
  `vs_text_nextbtn` varchar(250) NOT NULL DEFAULT '',
  `cp_user_access` text,
  `cp_user_access_settings` text,
  `rep_enable` varchar(10) NOT NULL DEFAULT '',
  `rep_days` varchar(10) NOT NULL DEFAULT '',
  `rep_hour` varchar(10) NOT NULL DEFAULT '',
  `rep_emails` text,
  `rep_subject` text,
  `rep_emailformat` varchar(10) NOT NULL DEFAULT '',
  `rep_message` text,
  `cv_enable_captcha` varchar(20) NOT NULL DEFAULT '',
  `cv_width` varchar(20) NOT NULL DEFAULT '',
  `cv_height` varchar(20) NOT NULL DEFAULT '',
  `cv_chars` varchar(20) NOT NULL DEFAULT '',
  `cv_font` varchar(20) NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) NOT NULL DEFAULT '',
  `cv_noise` varchar(20) NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) NOT NULL DEFAULT '',
  `cv_background` varchar(20) NOT NULL DEFAULT '',
  `cv_border` varchar(20) NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `wp_cptslotsbk_forms`
--

INSERT INTO `wp_cptslotsbk_forms` (`id`, `form_name`, `form_structure`, `calendar_language`, `date_format`, `product_name`, `pay_later_label`, `defaultstatus`, `defaultpaidstatus`, `fp_from_email`, `fp_destination_emails`, `fp_subject`, `fp_inc_additional_info`, `fp_return_page`, `fp_message`, `fp_emailformat`, `fp_emailtomethod`, `fp_destination_emails_field`, `cu_enable_copy_to_user`, `cu_user_email_field`, `cu_subject`, `cu_message`, `cu_emailformat`, `fp_emailfrommethod`, `vs_text_maxapp`, `vs_text_is_required`, `vs_text_is_email`, `vs_text_datemmddyyyy`, `vs_text_dateddmmyyyy`, `vs_text_number`, `vs_text_digits`, `vs_text_max`, `vs_text_min`, `vs_text_pageof`, `vs_text_submitbtn`, `vs_text_previousbtn`, `vs_text_nextbtn`, `cp_user_access`, `cp_user_access_settings`, `rep_enable`, `rep_days`, `rep_hour`, `rep_emails`, `rep_subject`, `rep_emailformat`, `rep_message`, `cv_enable_captcha`, `cv_width`, `cv_height`, `cv_chars`, `cv_font`, `cv_min_font_size`, `cv_max_font_size`, `cv_noise`, `cv_noise_length`, `cv_background`, `cv_border`, `cv_text_enter_valid_captcha`) VALUES
(1, 'Form 1', '[[{\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fslots\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Select Date and Time\",\"slotsavailInit\":{\"d1\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480}],\"d2\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480}],\"d3\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480}],\"d4\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480}],\"d5\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480}]},\"slots_special\":[],\"min_quantity\":1,\"max_quantity\":\"1\",\"quantity1\":1,\"label1\":\"\",\"quantity2\":1,\"label2\":\"\",\"prices\":[{\"name\":\"default\",\"price1\":[\"25\",0,0,0,0],\"price2\":[0,0,0,0,0]}],\"dateFormat\":\"mm/dd/yy\",\"showDropdown\":false,\"showTotalCost\":true,\"flatPrice\":false,\"showTotalCostFormat\":\"$ {0}\",\"dropdownRange\":\"-10:+10\",\"working_dates\":[false,true,true,true,true,true,false],\"numberOfMonths\":1,\"firstDay\":0,\"minDate\":\"0\",\"maxDate\":\"\",\"defaultDate\":\"\",\"invalidDates\":\"\",\"tmpinvalidDates\":\"\",\"required\":true,\"militaryTime\":1,\"slotsavail\":{\"d1\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}],\"d2\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}],\"d3\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}],\"d4\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}],\"d5\":[{\"h1\":8,\"m1\":0,\"c\":1,\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}],\"d0\":[{\"h1\":8,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":\"16\",\"m1\":\"0\",\"c\":\"1\",\"p\":\"0\",\"min\":960},{\"h1\":\"17\",\"m1\":\"0\",\"c\":\"1\",\"p\":\"0\",\"min\":1020}],\"d6\":[{\"h1\":8,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":480},{\"h1\":9,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":540},{\"h1\":10,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":600},{\"h1\":11,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":660},{\"h1\":12,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":720},{\"h1\":13,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":780},{\"h1\":14,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":840},{\"h1\":15,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":900},{\"h1\":16,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":960},{\"h1\":17,\"m1\":0,\"c\":\"1\",\"p\":0,\"min\":1020}]},\"maxNumberOfApp\":0,\"fBuild\":{},\"tmpinvalidDatestime\":[],\"getD\":{},\"minDateTmp\":{},\"special_days\":[]},{\"form_identifier\":\"\",\"name\":\"email\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"femail\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Email\",\"predefined\":\"\",\"predefinedClick\":false,\"required\":true,\"size\":\"medium\",\"equalTo\":\"\",\"fBuild\":{}}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"autocomplete\":1}]]', '', 'mm/dd/yy', 'Booking', 'Pay later', 'Pending', '', 'maciekiwaniszewski.ux@gmail.com', 'maciekiwaniszewski.ux@gmail.com', 'Notification to administrator: Booking request received...', 'true', 'http://localhost/Endokrynologia', 'The following contact message has been sent:\r\n\r\n<%INFO%>\r\n\r\n', 'text', 'fixed', 'fieldname1', 'true', 'email', 'Confirmation: Your booking has been received...', 'Thank you for your message. We will reply you as soon as possible.\r\n\r\nThis is a copy of the data sent:\r\n\r\n<%INFO%>\r\n\r\nBest Regards.', 'text', 'fixed', 'Please select a max of  {0} appointments per customer.', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Page {0} of {0}', 'Submit', 'Previous', 'Next', 'N;', '', 'no', '1', '0', '', 'Submissions report...', 'text', 'Attached you will find the data from the form submissions.', 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_cptslotsbk_messages`
--

DROP TABLE IF EXISTS `wp_cptslotsbk_messages`;
CREATE TABLE IF NOT EXISTS `wp_cptslotsbk_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddr` varchar(250) NOT NULL DEFAULT '',
  `notifyto` varchar(250) NOT NULL DEFAULT '',
  `data` mediumtext,
  `posted_data` mediumtext,
  `whoadded` varchar(250) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_appointments`
--

DROP TABLE IF EXISTS `wp_ea_appointments`;
CREATE TABLE IF NOT EXISTS `wp_ea_appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `worker` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `session` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointments_location` (`location`),
  KEY `appointments_service` (`service`),
  KEY `appointments_worker` (`worker`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_connections`
--

DROP TABLE IF EXISTS `wp_ea_connections`;
CREATE TABLE IF NOT EXISTS `wp_ea_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `worker` int(11) DEFAULT NULL,
  `slot_count` int(11) DEFAULT '1',
  `day_of_week` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `day_from` date DEFAULT NULL,
  `day_to` date DEFAULT NULL,
  `is_working` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_to_connection` (`location`),
  KEY `service_to_location` (`service`),
  KEY `worker_to_connection` (`worker`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_connections`
--

INSERT INTO `wp_ea_connections` (`id`, `group_id`, `location`, `service`, `worker`, `slot_count`, `day_of_week`, `time_from`, `time_to`, `day_from`, `day_to`, `is_working`) VALUES
(1, NULL, 1, 1, 1, 1, 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', '16:00:00', '20:00:00', '2020-01-01', '2021-12-31', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_error_logs`
--

DROP TABLE IF EXISTS `wp_ea_error_logs`;
CREATE TABLE IF NOT EXISTS `wp_ea_error_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `errors` text COLLATE utf8mb4_unicode_520_ci,
  `errors_data` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_fields`
--

DROP TABLE IF EXISTS `wp_ea_fields`;
CREATE TABLE IF NOT EXISTS `wp_ea_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_locations`
--

DROP TABLE IF EXISTS `wp_ea_locations`;
CREATE TABLE IF NOT EXISTS `wp_ea_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cord` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_locations`
--

INSERT INTO `wp_ea_locations` (`id`, `name`, `address`, `location`, `cord`) VALUES
(1, 'Gabinet', '', '', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_meta_fields`
--

DROP TABLE IF EXISTS `wp_ea_meta_fields`;
CREATE TABLE IF NOT EXISTS `wp_ea_meta_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mixed` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `default_value` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `validation` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_meta_fields`
--

INSERT INTO `wp_ea_meta_fields` (`id`, `type`, `slug`, `label`, `mixed`, `default_value`, `visible`, `required`, `validation`, `position`) VALUES
(1, 'EMAIL', 'email', 'EMail', '', '', 1, 1, 'email', 1),
(2, 'INPUT', 'name', 'Name', '', '', 1, 1, 'minlength-3', 2),
(3, 'INPUT', 'phone', 'Phone', '', '', 1, 1, 'minlength-3', 3),
(4, 'TEXTAREA', 'description', 'Description', '', '', 1, 0, NULL, 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_options`
--

DROP TABLE IF EXISTS `wp_ea_options`;
CREATE TABLE IF NOT EXISTS `wp_ea_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ea_key` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ea_value` text COLLATE utf8mb4_unicode_520_ci,
  `type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_options`
--

INSERT INTO `wp_ea_options` (`id`, `ea_key`, `ea_value`, `type`) VALUES
(1, 'mail.pending', 'pending', 'default'),
(2, 'mail.reservation', 'reservation', 'default'),
(3, 'mail.canceled', 'canceled', 'default'),
(4, 'mail.confirmed', 'confirmed', 'default'),
(5, 'mail.admin', '', 'default'),
(6, 'trans.service', 'Service', 'default'),
(7, 'trans.location', 'Location', 'default'),
(8, 'trans.worker', 'Worker', 'default'),
(9, 'trans.done_message', 'Done', 'default'),
(10, 'time_format', '00-24', 'default'),
(11, 'trans.currency', '$', 'default'),
(12, 'pending.email', '', 'default'),
(13, 'price.hide', '0', 'default'),
(14, 'datepicker', 'en-US', 'default'),
(15, 'send.user.email', '0', 'default'),
(16, 'custom.css', '', 'default'),
(17, 'show.iagree', '0', 'default'),
(18, 'cancel.scroll', 'calendar', 'default'),
(19, 'multiple.work', '1', 'default'),
(20, 'compatibility.mode', '0', 'default'),
(21, 'pending.subject.email', 'New Reservation #id#', 'default'),
(22, 'send.from.email', '', 'default'),
(23, 'css.off', '0', 'default'),
(24, 'submit.redirect', '', 'default'),
(25, 'advance.redirect', '[]', 'default'),
(26, 'pending.subject.visitor.email', 'Reservation #id#', 'default'),
(27, 'block.time', '0', 'default'),
(28, 'max.appointments', '5', 'default'),
(29, 'pre.reservation', '0', 'default'),
(30, 'default.status', 'pending', 'default'),
(31, 'send.worker.email', '0', 'default'),
(32, 'currency.before', '0', 'default'),
(33, 'nonce.off', '0', 'default'),
(34, 'gdpr.on', '0', 'default'),
(35, 'gdpr.label', 'By using this form you agree with the storage and handling of your data by this website.', 'default'),
(36, 'gdpr.link', '', 'default'),
(37, 'gdpr.message', 'You need to accept the privacy checkbox', 'default'),
(38, 'sort.workers-by', 'id', 'default'),
(39, 'sort.services-by', 'id', 'default'),
(40, 'sort.locations-by', 'id', 'default'),
(41, 'order.workers-by', 'DESC', 'default'),
(42, 'order.services-by', 'DESC', 'default'),
(43, 'order.locations-by', 'DESC', 'default'),
(44, 'captcha.site-key', '', 'default'),
(45, 'captcha.secret-key', '', 'default'),
(46, 'fullcalendar.public', '0', 'default'),
(47, 'shortcode.compress', '1', 'default');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_services`
--

DROP TABLE IF EXISTS `wp_ea_services`;
CREATE TABLE IF NOT EXISTS `wp_ea_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `slot_step` int(11) DEFAULT NULL,
  `block_before` int(11) DEFAULT '0',
  `block_after` int(11) DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_services`
--

INSERT INTO `wp_ea_services` (`id`, `name`, `duration`, `slot_step`, `block_before`, `block_after`, `price`) VALUES
(1, 'Wizyta', 20, 20, 0, 0, '150.00');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_ea_staff`
--

DROP TABLE IF EXISTS `wp_ea_staff`;
CREATE TABLE IF NOT EXISTS `wp_ea_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_ea_staff`
--

INSERT INTO `wp_ea_staff` (`id`, `name`, `description`, `email`, `phone`) VALUES
(1, 'BI', 'aa', 'maciekiwaniszewski.ux@gmail.com', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2070 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Endokrynologia', 'yes'),
(2, 'home', 'http://localhost/Endokrynologia', 'yes'),
(3, 'blogname', 'Wirtualne konsultacje medyczne - endokrynologia | dr Barbara Iwaniszewska', 'yes'),
(4, 'blogdescription', 'Umów się na konsultacje online', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'maciekiwaniszewski.ux@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:227:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"zoom-meetings/?$\";s:33:\"index.php?post_type=zoom-meetings\";s:46:\"zoom-meetings/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=zoom-meetings&feed=$matches[1]\";s:41:\"zoom-meetings/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=zoom-meetings&feed=$matches[1]\";s:33:\"zoom-meetings/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=zoom-meetings&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"booked_appointments/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"booked_appointments/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"booked_appointments/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"booked_appointments/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"booked_appointments/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"booked_appointments/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"booked_appointments/([^/]+)/embed/?$\";s:52:\"index.php?booked_appointments=$matches[1]&embed=true\";s:40:\"booked_appointments/([^/]+)/trackback/?$\";s:46:\"index.php?booked_appointments=$matches[1]&tb=1\";s:48:\"booked_appointments/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?booked_appointments=$matches[1]&paged=$matches[2]\";s:55:\"booked_appointments/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?booked_appointments=$matches[1]&cpage=$matches[2]\";s:45:\"booked_appointments/([^/]+)/wc-api(/(.*))?/?$\";s:60:\"index.php?booked_appointments=$matches[1]&wc-api=$matches[3]\";s:51:\"booked_appointments/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"booked_appointments/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:44:\"booked_appointments/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?booked_appointments=$matches[1]&page=$matches[2]\";s:36:\"booked_appointments/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"booked_appointments/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"booked_appointments/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"booked_appointments/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"booked_appointments/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"booked_appointments/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"custom-calendar/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?booked_custom_calendars=$matches[1]&feed=$matches[2]\";s:51:\"custom-calendar/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?booked_custom_calendars=$matches[1]&feed=$matches[2]\";s:32:\"custom-calendar/([^/]+)/embed/?$\";s:56:\"index.php?booked_custom_calendars=$matches[1]&embed=true\";s:44:\"custom-calendar/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?booked_custom_calendars=$matches[1]&paged=$matches[2]\";s:26:\"custom-calendar/([^/]+)/?$\";s:45:\"index.php?booked_custom_calendars=$matches[1]\";s:33:\"varia/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"varia/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"varia/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"varia/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"varia/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"varia/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"varia/([^/]+)/embed/?$\";s:38:\"index.php?varia=$matches[1]&embed=true\";s:26:\"varia/([^/]+)/trackback/?$\";s:32:\"index.php?varia=$matches[1]&tb=1\";s:34:\"varia/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?varia=$matches[1]&paged=$matches[2]\";s:41:\"varia/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?varia=$matches[1]&cpage=$matches[2]\";s:31:\"varia/([^/]+)/wc-api(/(.*))?/?$\";s:46:\"index.php?varia=$matches[1]&wc-api=$matches[3]\";s:37:\"varia/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"varia/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"varia/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?varia=$matches[1]&page=$matches[2]\";s:22:\"varia/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"varia/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"varia/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"varia/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"varia/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"varia/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"zoom-meetings/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"zoom-meetings/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"zoom-meetings/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"zoom-meetings/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"zoom-meetings/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"zoom-meetings/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"zoom-meetings/([^/]+)/embed/?$\";s:46:\"index.php?zoom-meetings=$matches[1]&embed=true\";s:34:\"zoom-meetings/([^/]+)/trackback/?$\";s:40:\"index.php?zoom-meetings=$matches[1]&tb=1\";s:54:\"zoom-meetings/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?zoom-meetings=$matches[1]&feed=$matches[2]\";s:49:\"zoom-meetings/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?zoom-meetings=$matches[1]&feed=$matches[2]\";s:42:\"zoom-meetings/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?zoom-meetings=$matches[1]&paged=$matches[2]\";s:49:\"zoom-meetings/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?zoom-meetings=$matches[1]&cpage=$matches[2]\";s:39:\"zoom-meetings/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?zoom-meetings=$matches[1]&wc-api=$matches[3]\";s:45:\"zoom-meetings/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"zoom-meetings/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"zoom-meetings/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?zoom-meetings=$matches[1]&page=$matches[2]\";s:30:\"zoom-meetings/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"zoom-meetings/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"zoom-meetings/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"zoom-meetings/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"zoom-meetings/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"zoom-meetings/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"zoom-meeting/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?zoom-meeting=$matches[1]&feed=$matches[2]\";s:48:\"zoom-meeting/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?zoom-meeting=$matches[1]&feed=$matches[2]\";s:29:\"zoom-meeting/([^/]+)/embed/?$\";s:45:\"index.php?zoom-meeting=$matches[1]&embed=true\";s:41:\"zoom-meeting/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?zoom-meeting=$matches[1]&paged=$matches[2]\";s:23:\"zoom-meeting/([^/]+)/?$\";s:34:\"index.php?zoom-meeting=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:59:\"booked-woocommerce-payments/booked-woocommerce-payments.php\";i:2;s:17:\"booked/booked.php\";i:3;s:31:\"cookie-notice/cookie-notice.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:33:\"duplicate-post/duplicate-post.php\";i:6;s:19:\"jetpack/jetpack.php\";i:7;s:23:\"loco-translate/loco.php\";i:8;s:45:\"przelewy24/woocommerce-gateway-przelewy24.php\";i:9;s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";i:10;s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";i:11;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Karton', 'yes'),
(41, 'stylesheet', 'Karton', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:35:\"booking-for-woocommerce/booking.php\";a:2:{i:0;s:8:\"Freemius\";i:1;s:22:\"_uninstall_plugin_hook\";}s:26:\"easy-appointments/main.php\";a:2:{i:0;s:15:\"EasyAppointment\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:24:\"edit_booked_appointments\";b:1;s:21:\"manage_booked_options\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:20:\"booked_booking_agent\";a:2:{s:4:\"name\";s:13:\"Booking Agent\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:24:\"edit_booked_appointments\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pl_PL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:17:{i:1586183570;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1586183929;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1586184151;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1586186372;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1586187481;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586192296;a:1:{s:23:\"mvvwb_cron_action_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586198271;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586201992;a:1:{s:27:\"check_plugin_updates-booked\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586203366;a:1:{s:48:\"check_plugin_updates-booked-woocommerce-payments\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586209071;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586209129;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586217600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586252328;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586252345;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586263696;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587137931;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', '$9/~Km# 2>ffD<sZ:3cmU7Dcw9gK$2-~THDu#.nsuYul}-C91A~HNO0+_*Qrq)L>', 'no'),
(111, 'nonce_salt', 'GD@~#3c@(&sSm&6=!c6xS1{C1)l.ptqx|D;bzKFHH%!#pf774%~ZC0efgEN:8@`~', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572525665;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(158, 'duplicate_post_copytitle', '1', 'yes'),
(159, 'duplicate_post_copydate', '0', 'yes'),
(160, 'duplicate_post_copystatus', '0', 'yes'),
(161, 'duplicate_post_copyslug', '0', 'yes'),
(162, 'duplicate_post_copyexcerpt', '1', 'yes'),
(163, 'duplicate_post_copycontent', '1', 'yes'),
(164, 'duplicate_post_copythumbnail', '1', 'yes'),
(165, 'duplicate_post_copytemplate', '1', 'yes'),
(166, 'duplicate_post_copyformat', '1', 'yes'),
(167, 'duplicate_post_copyauthor', '0', 'yes'),
(168, 'duplicate_post_copypassword', '0', 'yes'),
(169, 'duplicate_post_copyattachments', '0', 'yes'),
(170, 'duplicate_post_copychildren', '0', 'yes'),
(171, 'duplicate_post_copycomments', '0', 'yes'),
(172, 'duplicate_post_copymenuorder', '1', 'yes'),
(173, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(174, 'duplicate_post_blacklist', '', 'yes'),
(137, 'can_compress_scripts', '0', 'no'),
(1925, '_site_transient_timeout_theme_roots', '1586170268', 'no'),
(1926, '_site_transient_theme_roots', 'a:4:{s:6:\"Karton\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1647, 'wc_fields_additional', 'a:1:{s:14:\"order_comments\";a:9:{s:4:\"type\";s:8:\"textarea\";s:5:\"class\";a:1:{i:0;s:5:\"notes\";}s:5:\"label\";s:11:\"Order Notes\";s:11:\"placeholder\";s:56:\"Notes about your order, e.g. special notes for delivery.\";s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;s:8:\"priority\";i:10;}}', 'yes'),
(1902, '_transient_timeout_wc_term_counts', '1588756668', 'no'),
(1903, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"1\";}', 'no'),
(1337, 'external_updates-booked-woocommerce-payments', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1586168636;s:14:\"checkedVersion\";s:5:\"1.5.3\";s:6:\"update\";O:8:\"stdClass\":7:{s:2:\"id\";i:0;s:4:\"slug\";s:27:\"booked-woocommerce-payments\";s:7:\"version\";s:5:\"1.5.3\";s:8:\"homepage\";s:40:\"https://getbooked.io/booked-woocommerce/\";s:12:\"download_url\";s:76:\"http://boxyupdates.com/get/?action=download&slug=booked-woocommerce-payments\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:59:\"booked-woocommerce-payments/booked-woocommerce-payments.php\";}}', 'no'),
(1338, 'booked_wc_payment_options', 'a:4:{s:19:\"email_confirmations\";s:14:\"after_complete\";s:17:\"enable_thumbnails\";s:6:\"enable\";s:19:\"enable_auto_cleanup\";s:7:\"disable\";s:12:\"cleanup_mode\";s:10:\"twicedaily\";}', 'yes'),
(1933, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1904, '_transient_timeout_wc_order_37_needs_processing', '1586251068', 'no'),
(1905, '_transient_wc_order_37_needs_processing', '1', 'no'),
(1820, '_transient_timeout_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', '1586987224', 'no'),
(1846, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:10:\"przelewy24\";i:3;s:6:\"paypal\";i:4;}', 'yes'),
(1822, '_transient_timeout_loco_po_6bad282f35bf98d439f3f1bda37d66cb', '1586987225', 'no'),
(1823, '_transient_loco_po_6bad282f35bf98d439f3f1bda37d66cb', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:78:\"plugins/woocommerce/packages/woocommerce-admin/languages/woocommerce-admin.pot\";s:5:\"bytes\";i:168745;s:5:\"mtime\";i:1584545784;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1268;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586123225;}', 'no'),
(1824, '_transient_timeout_loco_po_32d7ed6c08d2e76c37f05a934443fd2d', '1586987225', 'no'),
(1825, '_transient_loco_po_32d7ed6c08d2e76c37f05a934443fd2d', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/plugins/woocommerce-pl_PL.po\";s:5:\"bytes\";i:1268234;s:5:\"mtime\";i:1585950012;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:6302;s:1:\"p\";i:6302;s:1:\"f\";i:0;}}s:1:\"t\";i:1586123225;}', 'no'),
(1826, '_transient_timeout_loco_po_967567334a423059eb4d3bb515c7685a', '1586987225', 'no'),
(1827, '_transient_loco_po_967567334a423059eb4d3bb515c7685a', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/plugins/woocommerce-en_GB.po\";s:5:\"bytes\";i:1083929;s:5:\"mtime\";i:1584545831;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:6008;s:1:\"p\";i:6008;s:1:\"f\";i:0;}}s:1:\"t\";i:1586123225;}', 'no'),
(1829, '_transient_timeout_loco_po_ac33b102c36994f00506cb401865551f', '1586987273', 'no'),
(1830, '_transient_loco_po_ac33b102c36994f00506cb401865551f', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:77:\"plugins/booked-woocommerce-payments/languages/booked-woocommerce-payments.pot\";s:5:\"bytes\";i:9559;s:5:\"mtime\";i:1586073763;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:77;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586123273;}', 'no'),
(1849, '_transient_timeout_loco_po_ef6ce338ba0169925dad777aaf35fc45', '1586988231', 'no'),
(1850, '_transient_loco_po_ef6ce338ba0169925dad777aaf35fc45', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:81:\"plugins/woo-checkout-field-editor-pro/languages/woo-checkout-field-editor-pro.pot\";s:5:\"bytes\";i:3706;s:5:\"mtime\";i:1586102352;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:37;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586124231;}', 'no'),
(1853, '_transient_timeout_loco_po_1b38097197aa619bdc2de3ad1f450bde', '1586988373', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1854, '_transient_loco_po_1b38097197aa619bdc2de3ad1f450bde', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:59:\"languages/loco/plugins/booked-woocommerce-payments-pl_PL.po\";s:5:\"bytes\";i:9736;s:5:\"mtime\";i:1586123989;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:77;s:1:\"p\";i:1;s:1:\"f\";i:0;}}s:1:\"t\";i:1586124373;}', 'no'),
(1860, '_transient_timeout_loco_po_5ab2ac3aca6c6e7d547cb0877cc62258', '1586988594', 'no'),
(1861, '_transient_loco_po_5ab2ac3aca6c6e7d547cb0877cc62258', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:61:\"languages/loco/plugins/woo-checkout-field-editor-pro-pl_PL.po\";s:5:\"bytes\";i:3878;s:5:\"mtime\";i:1586124239;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:37;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586124594;}', 'no'),
(786, 'zoom_api_key', 'U73MZuG_RHmzTY3tz21N9A', 'yes'),
(787, 'zoom_api_secret', 'AgEDxP2RqftTSVym5VoBIZeCLxeh1g8LXkRo', 'yes'),
(905, '_site_transient_browser_1a705d28c8225e8b9d2792698d51710e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"74.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(906, '_site_transient_timeout_php_check_5976404d53a099f8315503d0bc675882', '1586523300', 'no'),
(907, '_site_transient_php_check_5976404d53a099f8315503d0bc675882', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(729, 'wp3cxc2c', 'a:2:{s:7:\"version\";s:5:\"1.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1585063625;s:7:\"version\";s:5:\"1.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1873, '_transient_orders-transient-version', '1586164668', 'yes'),
(1648, 'wc_fields_shipping', 'a:9:{s:19:\"shipping_first_name\";a:9:{s:5:\"label\";s:5:\"Imię\";s:8:\"required\";b:1;s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:12:\"autocomplete\";s:10:\"given-name\";s:8:\"priority\";i:10;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:18:\"shipping_last_name\";a:9:{s:5:\"label\";s:8:\"Nazwisko\";s:8:\"required\";b:1;s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:12:\"autocomplete\";s:11:\"family-name\";s:8:\"priority\";i:20;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:16:\"shipping_company\";a:9:{s:5:\"label\";s:11:\"Nazwa firmy\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:12:\"autocomplete\";s:12:\"organization\";s:8:\"priority\";i:30;s:8:\"required\";b:0;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:16:\"shipping_country\";a:10:{s:4:\"type\";s:7:\"country\";s:5:\"label\";s:16:\"Country / Region\";s:8:\"required\";b:1;s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:12:\"autocomplete\";s:7:\"country\";s:8:\"priority\";i:40;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:18:\"shipping_address_1\";a:10:{s:5:\"label\";s:5:\"Ulica\";s:11:\"placeholder\";s:41:\"Nazwa ulicy, numer budynku / numer lokalu\";s:8:\"required\";b:1;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:12:\"autocomplete\";s:13:\"address-line1\";s:8:\"priority\";i:50;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:18:\"shipping_address_2\";a:9:{s:11:\"placeholder\";s:33:\"Ciąg dalszy adresu (opcjonalnie)\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:12:\"autocomplete\";s:13:\"address-line2\";s:8:\"priority\";i:60;s:8:\"required\";b:0;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:13:\"shipping_city\";a:9:{s:5:\"label\";s:6:\"Miasto\";s:8:\"required\";b:1;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:12:\"autocomplete\";s:14:\"address-level2\";s:8:\"priority\";i:70;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:14:\"shipping_state\";a:13:{s:4:\"type\";s:5:\"state\";s:5:\"label\";s:21:\"Województwo / Region\";s:8:\"required\";b:0;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"validate\";a:1:{i:0;s:5:\"state\";}s:12:\"autocomplete\";s:14:\"address-level1\";s:8:\"priority\";i:80;s:13:\"country_field\";s:16:\"shipping_country\";s:7:\"country\";s:2:\"PL\";s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:17:\"shipping_postcode\";a:10:{s:5:\"label\";s:12:\"Kod pocztowy\";s:8:\"required\";b:1;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"validate\";a:1:{i:0;s:8:\"postcode\";}s:12:\"autocomplete\";s:11:\"postal-code\";s:8:\"priority\";i:90;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"0\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}}', 'yes'),
(1750, '_transient_timeout_jetpack_a8c_data', '1586205020', 'no'),
(1751, '_transient_jetpack_a8c_data', 'a:4:{s:4:\"a12s\";i:1172;s:9:\"countries\";i:75;s:9:\"languages\";i:93;s:16:\"featured_plugins\";a:4:{i:0;s:11:\"woocommerce\";i:1;s:14:\"wp-super-cache\";i:2;s:14:\"wp-job-manager\";i:3;s:15:\"co-authors-plus\";}}', 'no'),
(1125, '_site_transient_timeout_browser_2397a7ecb9ce737f692b6cba71051dc3', '1586632516', 'no'),
(1126, '_site_transient_browser_2397a7ecb9ce737f692b6cba71051dc3', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"75.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'auth_key', 'z>`.G8(+2.73icArQrK~kqX~*UespMV9mLH^jE09ZR|;U(eMi-;$NqCLNEJJm9]q', 'no'),
(125, 'auth_salt', 'y}N)Qv)FY=)?NK=qoOpL8LKWgqIz/:#P]WL%GMgyk@GQw3yT*_IIX9xE[(oLY 5V', 'no'),
(126, 'logged_in_key', 'T6]Hl}S:w@.FDED]$=+4uJXx)RcWNFY.<jS>4|W<Pt4#hEZA&O z4$$8A*mZH^U7', 'no'),
(127, 'logged_in_salt', 'g766^9k%& q)EWOvlX$**5I-|M/o@V)Fz|f#F1oj#Db9`4KWI1]b.#%)4[Sv mg+', 'no'),
(140, 'recently_activated', 'a:3:{s:26:\"easy-appointments/main.php\";i:1586029220;s:39:\"consolto-videochat/ConsoltoInserter.php\";i:1585918884;s:40:\"3cx-live-chat-talk/wp-3cxclicktotalk.php\";i:1585918868;}', 'yes'),
(522, '_site_transient_locked_1', '1', 'no'),
(261, 'action_scheduler_hybrid_store_demarkation', '9', 'yes'),
(262, 'schema-ActionScheduler_StoreSchema', '3.0.1584545869', 'yes'),
(263, 'schema-ActionScheduler_LoggerSchema', '2.0.1584545870', 'yes'),
(266, 'action_scheduler_lock_async-request-runner', '1586183579', 'yes'),
(267, 'woocommerce_store_address', 'ul. Moniuszki 5/6', 'yes'),
(268, 'woocommerce_store_address_2', '', 'yes'),
(269, 'woocommerce_store_city', 'Toruń', 'yes'),
(270, 'woocommerce_default_country', 'PL:*', 'yes'),
(271, 'woocommerce_store_postcode', '87-100', 'yes'),
(272, 'woocommerce_allowed_countries', 'all', 'yes'),
(273, 'woocommerce_all_except_countries', '', 'yes'),
(274, 'woocommerce_specific_allowed_countries', '', 'yes'),
(275, 'woocommerce_ship_to_countries', '', 'yes'),
(276, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(277, 'woocommerce_default_customer_address', 'base', 'yes'),
(278, 'woocommerce_calc_taxes', 'no', 'yes'),
(279, 'woocommerce_enable_coupons', 'yes', 'yes'),
(280, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(281, 'woocommerce_currency', 'PLN', 'yes'),
(282, 'woocommerce_currency_pos', 'right_space', 'yes'),
(283, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(284, 'woocommerce_price_decimal_sep', ',', 'yes'),
(285, 'woocommerce_price_num_decimals', '2', 'yes'),
(286, 'woocommerce_shop_page_id', '10', 'yes'),
(287, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(288, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(289, 'woocommerce_placeholder_image', '9', 'yes'),
(290, 'woocommerce_weight_unit', 'kg', 'yes'),
(291, 'woocommerce_dimension_unit', 'cm', 'yes'),
(292, 'woocommerce_enable_reviews', 'yes', 'yes'),
(293, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(294, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(295, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(296, 'woocommerce_review_rating_required', 'yes', 'no'),
(297, 'woocommerce_manage_stock', 'yes', 'yes'),
(298, 'woocommerce_hold_stock_minutes', '60', 'no'),
(299, 'woocommerce_notify_low_stock', 'yes', 'no'),
(300, 'woocommerce_notify_no_stock', 'yes', 'no'),
(301, 'woocommerce_stock_email_recipient', 'maciekiwaniszewski.ux@gmail.com', 'no'),
(302, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(303, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(304, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(305, 'woocommerce_stock_format', '', 'yes'),
(306, 'woocommerce_file_download_method', 'force', 'no'),
(307, 'woocommerce_downloads_require_login', 'no', 'no'),
(308, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(309, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(310, 'woocommerce_prices_include_tax', 'no', 'yes'),
(311, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(312, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(313, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(314, 'woocommerce_tax_classes', '', 'yes'),
(315, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(316, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(317, 'woocommerce_price_display_suffix', '', 'yes'),
(318, 'woocommerce_tax_total_display', 'itemized', 'no'),
(319, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(320, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(321, 'woocommerce_ship_to_destination', 'billing', 'no'),
(322, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(323, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(324, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(325, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(326, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(327, 'woocommerce_registration_generate_username', 'yes', 'no'),
(328, 'woocommerce_registration_generate_password', 'yes', 'no'),
(329, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(330, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(331, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(332, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(333, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(334, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(335, 'woocommerce_trash_pending_orders', '', 'no'),
(336, 'woocommerce_trash_failed_orders', '', 'no'),
(337, 'woocommerce_trash_cancelled_orders', '', 'no'),
(338, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(339, 'woocommerce_email_from_name', 'Wordpress', 'no'),
(340, 'woocommerce_email_from_address', 'maciekiwaniszewski.ux@gmail.com', 'no'),
(341, 'woocommerce_email_header_image', '', 'no'),
(342, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(343, 'woocommerce_email_base_color', '#96588a', 'no'),
(344, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(345, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(346, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(347, 'woocommerce_cart_page_id', '11', 'no'),
(348, 'woocommerce_checkout_page_id', '12', 'no'),
(349, 'woocommerce_myaccount_page_id', '13', 'no'),
(350, 'woocommerce_terms_page_id', '', 'no'),
(351, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(352, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(353, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(354, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(355, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(356, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(357, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(358, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(359, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(360, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(361, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(362, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(363, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(364, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(365, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(366, 'woocommerce_api_enabled', 'no', 'yes'),
(367, 'woocommerce_allow_tracking', 'no', 'no'),
(368, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(369, 'woocommerce_single_image_width', '600', 'yes'),
(370, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(371, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(372, 'woocommerce_demo_store', 'no', 'no'),
(373, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(374, 'current_theme_supports_woocommerce', 'no', 'yes'),
(375, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(376, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(377, 'product_cat_children', 'a:0:{}', 'yes'),
(378, 'default_product_cat', '15', 'yes'),
(379, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"1VUrqZbFTQHrANll1pGGfjsiRUBlONXk\";}', 'yes'),
(380, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(381, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(382, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(383, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(384, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(385, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(386, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(387, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(388, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(389, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(390, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(391, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(392, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(394, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(403, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(397, 'woocommerce_version', '4.0.0', 'yes'),
(398, 'woocommerce_db_version', '4.0.0', 'yes'),
(1217, '_transient_timeout_loco_po_30cdd0c5efc56b078bd52b01bffc8cab', '1586895122', 'no'),
(1218, '_transient_loco_po_30cdd0c5efc56b078bd52b01bffc8cab', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:40:\"plugins/booked/languages/booked-pl_PL.po\";s:5:\"bytes\";i:66744;s:5:\"mtime\";i:1586030586;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:606;s:1:\"p\";i:1;s:1:\"f\";i:0;}}s:1:\"t\";i:1586031122;}', 'no'),
(2061, '_transient_timeout__zvc_user_lists', '1586183694', 'no'),
(2062, '_transient__zvc_user_lists', 'O:8:\"stdClass\":5:{s:10:\"page_count\";i:1;s:11:\"page_number\";i:1;s:9:\"page_size\";i:300;s:13:\"total_records\";i:1;s:5:\"users\";a:1:{i:0;O:8:\"stdClass\":14:{s:2:\"id\";s:22:\"QO0lByLFTO--BAnI1TBHjA\";s:10:\"first_name\";s:4:\"Adam\";s:9:\"last_name\";s:11:\"Lewandowski\";s:5:\"email\";s:30:\"adam.lewandowski.dev@gmail.com\";s:4:\"type\";i:1;s:3:\"pmi\";i:7629624502;s:8:\"timezone\";s:13:\"Europe/Warsaw\";s:8:\"verified\";i:0;s:10:\"created_at\";s:20:\"2020-03-24T15:28:20Z\";s:15:\"last_login_time\";s:20:\"2020-04-06T14:18:36Z\";s:7:\"pic_url\";s:115:\"https://lh5.googleusercontent.com/-oJ_NO5aKAsM/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPf5MjQfbN4hjULT9LsHb0ZW65QFg/photo.jpg\";s:8:\"language\";s:5:\"en-US\";s:12:\"phone_number\";s:0:\"\";s:6:\"status\";s:6:\"active\";}}}', 'no'),
(1197, '_transient_timeout_loco_po_3cb76040d0a085c78a90ecba58a86120', '1586894540', 'no'),
(1198, '_transient_loco_po_3cb76040d0a085c78a90ecba58a86120', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:35:\"plugins/booked/languages/booked.pot\";s:5:\"bytes\";i:66198;s:5:\"mtime\";i:1586030429;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:606;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586030540;}', 'no'),
(1205, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:4:{s:24:\"plugin.booked/booked.php\";i:1586122772;s:66:\"plugin.booked-woocommerce-payments/booked-woocommerce-payments.php\";i:1586123989;s:63:\"plugin.woo-checkout-field-editor-pro/checkout-form-designer.php\";i:1586124239;s:34:\"plugin.woocommerce/woocommerce.php\";i:1586125382;}}s:1:\"t\";i:1586125382;}', 'no'),
(1219, '_transient_timeout_loco_po_f6ded1429f1649ef81165043bba6d84f', '1586988423', 'no'),
(1220, '_transient_loco_po_f6ded1429f1649ef81165043bba6d84f', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/loco/plugins/booked-pl_PL.po\";s:5:\"bytes\";i:68399;s:5:\"mtime\";i:1586122772;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:605;s:1:\"p\";i:69;s:1:\"f\";i:0;}}s:1:\"t\";i:1586124423;}', 'no'),
(1223, 'booked_defaults_16', 'a:2:{s:3:\"Tue\";a:8:{s:9:\"0755-0855\";i:1;s:9:\"0855-0955\";i:1;s:9:\"0955-1055\";i:1;s:9:\"1055-1155\";i:1;s:9:\"1155-1255\";i:1;s:9:\"1255-1355\";i:1;s:9:\"1355-1455\";i:1;s:9:\"1455-1555\";i:1;}s:11:\"Tue-details\";a:8:{s:9:\"0755-0855\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"0855-0955\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"0955-1055\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"1055-1155\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"1155-1255\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"1255-1355\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"1355-1455\";a:1:{s:5:\"title\";s:0:\"\";}s:9:\"1455-1555\";a:1:{s:5:\"title\";s:0:\"\";}}}', 'yes'),
(1366, '_transient_timeout_wc_shipping_method_count', '1588667216', 'no'),
(1367, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1584559392\";s:5:\"value\";i:0;}', 'no'),
(1372, 'przelewy24_common_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(1373, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:83:\"Płać z PayPal; możesz zapłacić kartą kredytową jeśli nie masz konta PayPal.\";s:5:\"email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(219, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1584545407;}', 'no'),
(175, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(176, 'duplicate_post_show_row', '1', 'yes'),
(177, 'duplicate_post_show_adminbar', '1', 'yes'),
(178, 'duplicate_post_show_submitbox', '1', 'yes'),
(179, 'duplicate_post_show_bulkactions', '1', 'yes'),
(243, 'duplicate_post_version', '3.2.4', 'yes'),
(244, 'duplicate_post_show_notice', '0', 'no'),
(192, 'cptui_new_install', 'false', 'yes'),
(193, 'acf_version', '5.8.8', 'yes'),
(249, 'cookie_notice_activation_date', '1584545572', 'yes'),
(198, 'cookie_notice_options', 'a:31:{s:8:\"position\";s:6:\"bottom\";s:12:\"message_text\";s:153:\"We use cookies to ensure that we give you the best experience on our website. If you continue to use this site we will assume that you are happy with it.\";s:9:\"css_style\";s:9:\"bootstrap\";s:9:\"css_class\";s:6:\"button\";s:11:\"accept_text\";s:2:\"Ok\";s:11:\"refuse_text\";s:2:\"No\";s:10:\"refuse_opt\";s:2:\"no\";s:11:\"refuse_code\";s:0:\"\";s:16:\"refuse_code_head\";s:0:\"\";s:14:\"revoke_cookies\";b:0;s:18:\"revoke_cookies_opt\";s:9:\"automatic\";s:19:\"revoke_message_text\";s:0:\"\";s:11:\"revoke_text\";s:14:\"Revoke cookies\";s:11:\"redirection\";b:0;s:8:\"see_more\";s:2:\"no\";s:11:\"link_target\";s:6:\"_blank\";s:13:\"link_position\";s:6:\"banner\";s:4:\"time\";s:5:\"month\";s:13:\"time_rejected\";s:5:\"month\";s:11:\"hide_effect\";s:4:\"fade\";s:9:\"on_scroll\";b:0;s:16:\"on_scroll_offset\";i:100;s:8:\"on_click\";b:0;s:6:\"colors\";a:2:{s:4:\"text\";s:4:\"#fff\";s:3:\"bar\";s:4:\"#000\";}s:12:\"see_more_opt\";a:5:{s:4:\"text\";s:14:\"Privacy policy\";s:9:\"link_type\";s:4:\"page\";s:2:\"id\";s:5:\"empty\";s:4:\"link\";s:0:\"\";s:4:\"sync\";b:0;}s:16:\"script_placement\";s:6:\"header\";s:9:\"translate\";b:0;s:19:\"deactivation_delete\";s:2:\"no\";s:14:\"update_version\";i:2;s:13:\"update_notice\";b:0;s:17:\"update_delay_date\";i:0;}', 'no'),
(199, 'cookie_notice_version', '1.2.51', 'no'),
(206, 'current_theme', 'Karton', 'yes'),
(207, 'theme_mods_Karton', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(208, 'theme_switched', '', 'yes'),
(240, 'duplicate_post_show_original_column', '0', 'yes'),
(241, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(242, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(419, 'jetpack_activated', '1', 'yes'),
(422, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(423, 'jetpack_sync_settings_disable', '0', 'yes'),
(424, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"8.3:1584546150\";s:11:\"old_version\";s:14:\"8.3:1584546150\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(425, 'jetpack_tos_agreed', '1', 'yes'),
(426, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"WSMKVy7tD2ZT3ty8WURIH6I2E0bkeC7N\";s:8:\"secret_2\";s:32:\"5EIr9zvLFv58mA2Xkhr5C69DlQ2khtvO\";s:3:\"exp\";i:1584546750;}}', 'no'),
(427, '_transient_jetpack_assumed_site_creation_date', '2019-10-31 09:38:48', 'yes'),
(2057, '_transient_timeout_jetpack_idc_allowed', '1586186370', 'no'),
(2058, '_transient_jetpack_idc_allowed', '1', 'no'),
(431, 'jetpack_testimonial', '0', 'yes'),
(1927, '_transient_timeout__woocommerce_helper_updates', '1586211668', 'no'),
(1928, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1586168468;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(512, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(513, 'fs_debug_mode', '', 'yes'),
(514, 'fs_accounts', 'a:15:{s:21:\"id_slug_type_path_map\";a:1:{i:4871;a:2:{s:4:\"slug\";s:23:\"booking-for-woocommerce\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:1:{s:23:\"booking-for-woocommerce\";a:23:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:35:\"booking-for-woocommerce/booking.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1584550695;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.0.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1584550695;s:7:\"version\";s:5:\"3.0.1\";}s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1584558123;s:19:\"keepalive_timestamp\";i:1584558123;s:20:\"activation_timestamp\";i:1584550709;s:14:\"sync_timestamp\";i:1584557944;s:15:\"is_whitelabeled\";b:0;s:9:\"beta_data\";a:2:{s:7:\"is_beta\";b:0;s:7:\"version\";s:5:\"3.0.1\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"14\";s:4:\"info\";s:25:\"minutes slots are missing\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:35:\"booking-for-woocommerce/booking.php\";s:23:\"booking-for-woocommerce\";}s:7:\"plugins\";a:1:{s:23:\"booking-for-woocommerce\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:29:\"MVV WooCommerce Booking Addon\";s:4:\"slug\";s:23:\"booking-for-woocommerce\";s:12:\"premium_slug\";s:31:\"booking-for-woocommerce-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:35:\"booking-for-woocommerce/booking.php\";s:7:\"version\";s:5:\"3.0.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_75a0160a689a4f6c76f519b6cdced\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4871\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"8dbd8cc0a31f7f76fdb95914612faa48\";s:5:\"plans\";a:1:{s:23:\"booking-for-woocommerce\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"NDg3MQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NzgzNg==\";s:7:\"updated\";s:28:\"MjAxOS0xMi0xNCAxNDo1MTowOA==\";s:7:\"created\";s:28:\"MjAxOS0xMC0yMyAxNjoyMDoyNA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"NDg3MQ==\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:4:\"UHJv\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:0:\"\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:20:\"bXZ2QG12dmFwcHMuY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"ODM1Mw==\";s:7:\"updated\";s:28:\"MjAxOS0xMi0xMiAxNjo1MjoxNw==\";s:7:\"created\";s:28:\"MjAxOS0xMi0xMiAxNjo1MTozNw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1584557945;s:3:\"md5\";s:32:\"9e02a18372816a651013558a75f32e58\";s:7:\"plugins\";a:7:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.8\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:31:\"cookie-notice/cookie-notice.php\";a:5:{s:4:\"slug\";s:13:\"cookie-notice\";s:7:\"version\";s:6:\"1.2.51\";s:5:\"title\";s:13:\"Cookie Notice\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";a:5:{s:4:\"slug\";s:19:\"custom-post-type-ui\";s:7:\"version\";s:5:\"1.7.4\";s:5:\"title\";s:19:\"Custom Post Type UI\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"duplicate-post/duplicate-post.php\";a:5:{s:4:\"slug\";s:14:\"duplicate-post\";s:7:\"version\";s:5:\"3.2.4\";s:5:\"title\";s:14:\"Duplicate Post\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:19:\"jetpack/jetpack.php\";a:5:{s:4:\"slug\";s:7:\"jetpack\";s:7:\"version\";s:3:\"8.3\";s:5:\"title\";s:24:\"Jetpack by WordPress.com\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:35:\"booking-for-woocommerce/booking.php\";a:5:{s:4:\"slug\";s:23:\"booking-for-woocommerce\";s:7:\"version\";s:5:\"3.0.1\";s:5:\"title\";s:29:\"MVV WooCommerce Booking Addon\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:5:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"4.0.0\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1584557945;s:3:\"md5\";s:32:\"e8345baf3fab0a5ce8b37f0c080bd9bb\";s:7:\"plugins\";a:9:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"5.8.8\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.4\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:31:\"cookie-notice/cookie-notice.php\";a:5:{s:4:\"slug\";s:13:\"cookie-notice\";s:7:\"version\";s:6:\"1.2.51\";s:5:\"title\";s:13:\"Cookie Notice\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";a:5:{s:4:\"slug\";s:19:\"custom-post-type-ui\";s:7:\"version\";s:5:\"1.7.4\";s:5:\"title\";s:19:\"Custom Post Type UI\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"duplicate-post/duplicate-post.php\";a:5:{s:4:\"slug\";s:14:\"duplicate-post\";s:7:\"version\";s:5:\"3.2.4\";s:5:\"title\";s:14:\"Duplicate Post\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"jetpack/jetpack.php\";a:5:{s:4:\"slug\";s:7:\"jetpack\";s:7:\"version\";s:3:\"8.3\";s:5:\"title\";s:24:\"Jetpack by WordPress.com\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:35:\"booking-for-woocommerce/booking.php\";a:5:{s:4:\"slug\";s:23:\"booking-for-woocommerce\";s:7:\"version\";s:5:\"3.0.1\";s:5:\"title\";s:29:\"MVV WooCommerce Booking Addon\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:5:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"4.0.0\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:53:\"woo-payu-payment-gateway/woocommerce-gateway-payu.php\";a:5:{s:4:\"slug\";s:24:\"woo-payu-payment-gateway\";s:7:\"version\";s:5:\"1.2.9\";s:5:\"title\";s:20:\"PayU Payment Gateway\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1584557945;s:3:\"md5\";s:32:\"5b484f846b90a0412fef67f7d5822aab\";s:6:\"themes\";a:4:{s:6:\"Karton\";a:5:{s:4:\"slug\";s:6:\"Karton\";s:7:\"version\";s:1:\"1\";s:5:\"title\";s:6:\"Karton\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.2\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:23:\"booking-for-woocommerce\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"18270072\";s:9:\"plugin_id\";s:4:\"4871\";s:7:\"user_id\";s:7:\"2798894\";s:5:\"title\";s:9:\"Wordpress\";s:3:\"url\";s:31:\"http://localhost/Endokrynologia\";s:7:\"version\";s:5:\"3.0.1\";s:8:\"language\";s:5:\"en-GB\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.2.5\";s:11:\"sdk_version\";s:5:\"2.3.1\";s:28:\"programming_language_version\";s:5:\"7.1.9\";s:7:\"plan_id\";s:4:\"7836\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_61e474acb59ac4fb8d7c5c97294fd\";s:10:\"secret_key\";s:32:\"sk_2(4#}Pz:e1RZ%tferjUP7J@2Nk_a-\";s:2:\"id\";s:7:\"4151597\";s:7:\"updated\";s:19:\"2020-03-18 19:02:07\";s:7:\"created\";s:19:\"2020-03-18 16:58:29\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2798894;O:7:\"FS_User\":13:{s:5:\"email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:5:\"first\";s:5:\"admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_dc24d956b782e655c9485701c978d\";s:10:\"secret_key\";s:32:\"sk_G1$WamyXXI@H<Kq$:E9@fP!v)Pen_\";s:2:\"id\";s:7:\"2798894\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-18 16:58:28\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:23:\"user_id_license_ids_map\";a:1:{i:4871;a:1:{i:2798894;a:0:{}}}s:12:\"all_licenses\";a:1:{i:4871;a:0:{}}s:7:\"updates\";a:1:{i:4871;N;}s:13:\"admin_notices\";a:1:{s:23:\"booking-for-woocommerce\";a:0:{}}}', 'yes'),
(515, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(516, 'fs_api_cache', 'a:0:{}', 'no'),
(519, 'mvvwb_version', '3.0.1', 'yes'),
(1876, '_transient_timeout_wc_upgrade_notice_4.0.1', '1586211917', 'no'),
(1877, '_transient_wc_upgrade_notice_4.0.1', '', 'no'),
(521, '_site_transient_timeout_locked_1', '1899910711', 'no'),
(413, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(414, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:12:\"Za pobraniem\";s:11:\"description\";s:25:\"Płatność za pobraniem.\";s:12:\"instructions\";s:25:\"Płatność za pobraniem.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(1375, 'woocommerce_przelewy24_pln_settings', 'a:18:{s:11:\"sub_enabled\";s:3:\"yes\";s:5:\"title\";s:10:\"Przelewy24\";s:11:\"merchant_id\";s:0:\"\";s:7:\"shop_id\";s:0:\"\";s:7:\"CRC_key\";s:0:\"\";s:11:\"p24_testmod\";s:7:\"sandbox\";s:11:\"description\";s:19:\"Płać z Przelewy24\";s:7:\"p24_api\";s:0:\"\";s:12:\"p24_oneclick\";s:2:\"no\";s:13:\"p24_payinshop\";s:2:\"no\";s:16:\"p24_acceptinshop\";s:2:\"no\";s:14:\"p24_paymethods\";s:2:\"no\";s:12:\"p24_graphics\";s:3:\"yes\";s:20:\"p24_paymethods_first\";s:15:\"25,31,112,20,65\";s:21:\"p24_paymethods_second\";s:0:\"\";s:18:\"p24_paymethods_all\";s:1:\"0\";s:19:\"p24_wait_for_result\";s:2:\"no\";s:9:\"alt_nonce\";s:10:\"ac74becb01\";}', 'yes'),
(902, '_transient_timeout_jetpack_https_test_message', '1586200797', 'no'),
(903, '_transient_jetpack_https_test_message', '', 'no'),
(904, '_site_transient_timeout_browser_1a705d28c8225e8b9d2792698d51710e', '1586523300', 'no'),
(930, 'new_admin_email', 'maciekiwaniszewski.ux@gmail.com', 'yes'),
(1079, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1586168465;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(1404, 'booked_custom_fields', '[{\\\"name\\\":\\\"paid-service-label---1235898\\\",\\\"value\\\":\\\"Gabinet\\\"},{\\\"name\\\":\\\"single-paid-service---10931467\\\",\\\"value\\\":\\\"22\\\"},{\\\"name\\\":\\\"required---1235898\\\",\\\"value\\\":false}]', 'yes'),
(1929, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1586168471;s:7:\"checked\";a:4:{s:6:\"Karton\";s:1:\"1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1930, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1586168472;s:7:\"checked\";a:19:{s:40:\"3cx-live-chat-talk/wp-3cxclicktotalk.php\";s:5:\"1.6.0\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.8\";s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:51:\"appointment-booking-calendar/cpabc_appointments.php\";s:6:\"1.3.36\";s:17:\"booked/booked.php\";s:5:\"2.2.6\";s:59:\"booked-woocommerce-payments/booked-woocommerce-payments.php\";s:5:\"1.5.3\";s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";s:5:\"1.4.2\";s:39:\"consolto-videochat/ConsoltoInserter.php\";s:5:\"2.0.2\";s:31:\"cookie-notice/cookie-notice.php\";s:6:\"1.2.51\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.4\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:26:\"easy-appointments/main.php\";s:6:\"2.12.1\";s:19:\"jetpack/jetpack.php\";s:3:\"8.3\";s:23:\"loco-translate/loco.php\";s:5:\"2.3.2\";s:35:\"booking-for-woocommerce/booking.php\";s:5:\"3.0.1\";s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";s:6:\"3.2.31\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.0.0\";s:45:\"przelewy24/woocommerce-gateway-przelewy24.php\";s:5:\"1.0.1\";s:59:\"wp-time-slots-booking-form/wp-time-slots-booking-plugin.php\";s:6:\"1.0.73\";}s:8:\"response\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"appointment-booking-calendar/cpabc_appointments.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:42:\"w.org/plugins/appointment-booking-calendar\";s:4:\"slug\";s:28:\"appointment-booking-calendar\";s:6:\"plugin\";s:51:\"appointment-booking-calendar/cpabc_appointments.php\";s:11:\"new_version\";s:6:\"1.3.38\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/appointment-booking-calendar/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/appointment-booking-calendar.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/appointment-booking-calendar/assets/icon-256x256.png?rev=978691\";s:2:\"1x\";s:80:\"https://ps.w.org/appointment-booking-calendar/assets/icon-128x128.png?rev=978691\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/appointment-booking-calendar/assets/banner-772x250.png?rev=978691\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:48:\"<ul>\n<li>Gutenberg integration update</li>\n</ul>\";s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:26:\"easy-appointments/main.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/easy-appointments\";s:4:\"slug\";s:17:\"easy-appointments\";s:6:\"plugin\";s:26:\"easy-appointments/main.php\";s:11:\"new_version\";s:6:\"2.12.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/easy-appointments/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/easy-appointments.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/easy-appointments/assets/icon-256x256.png?rev=1472759\";s:2:\"1x\";s:70:\"https://ps.w.org/easy-appointments/assets/icon-128x128.png?rev=1472759\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/easy-appointments/assets/banner-1544x500.png?rev=2169533\";s:2:\"1x\";s:72:\"https://ps.w.org/easy-appointments/assets/banner-772x250.png?rev=2169533\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"booking-for-woocommerce/booking.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/booking-for-woocommerce\";s:4:\"slug\";s:23:\"booking-for-woocommerce\";s:6:\"plugin\";s:35:\"booking-for-woocommerce/booking.php\";s:11:\"new_version\";s:5:\"3.0.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/booking-for-woocommerce/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/booking-for-woocommerce.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/booking-for-woocommerce/assets/icon-256x256.png?rev=2178754\";s:2:\"1x\";s:76:\"https://ps.w.org/booking-for-woocommerce/assets/icon-128x128.png?rev=2178754\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/booking-for-woocommerce/assets/banner-1544x500.jpg?rev=2179517\";s:2:\"1x\";s:78:\"https://ps.w.org/booking-for-woocommerce/assets/banner-772x250.jpg?rev=2179517\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:46:\"w.org/plugins/video-conferencing-with-zoom-api\";s:4:\"slug\";s:32:\"video-conferencing-with-zoom-api\";s:6:\"plugin\";s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";s:11:\"new_version\";s:5:\"3.3.0\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/video-conferencing-with-zoom-api/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/video-conferencing-with-zoom-api.3.3.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/video-conferencing-with-zoom-api/assets/icon-128x128.png?rev=1508657\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/video-conferencing-with-zoom-api/assets/banner-772x250.png?rev=2198028\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"wp-time-slots-booking-form/wp-time-slots-booking-plugin.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:40:\"w.org/plugins/wp-time-slots-booking-form\";s:4:\"slug\";s:26:\"wp-time-slots-booking-form\";s:6:\"plugin\";s:59:\"wp-time-slots-booking-form/wp-time-slots-booking-plugin.php\";s:11:\"new_version\";s:6:\"1.0.76\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/wp-time-slots-booking-form/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/wp-time-slots-booking-form.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/wp-time-slots-booking-form/assets/icon-256x256.png?rev=1983355\";s:2:\"1x\";s:79:\"https://ps.w.org/wp-time-slots-booking-form/assets/icon-128x128.png?rev=1983355\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/wp-time-slots-booking-form/assets/banner-1544x500.png?rev=1983370\";s:2:\"1x\";s:81:\"https://ps.w.org/wp-time-slots-booking-form/assets/banner-772x250.png?rev=1983370\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:52:\"<ul>\n<li>Update for Gutemberg integration</li>\n</ul>\";s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:40:\"3cx-live-chat-talk/wp-3cxclicktotalk.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/3cx-live-chat-talk\";s:4:\"slug\";s:18:\"3cx-live-chat-talk\";s:6:\"plugin\";s:40:\"3cx-live-chat-talk/wp-3cxclicktotalk.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/3cx-live-chat-talk/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/3cx-live-chat-talk.1.6.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/3cx-live-chat-talk/assets/icon-256x256.jpg?rev=2046297\";s:2:\"1x\";s:63:\"https://ps.w.org/3cx-live-chat-talk/assets/icon.svg?rev=2046297\";s:3:\"svg\";s:63:\"https://ps.w.org/3cx-live-chat-talk/assets/icon.svg?rev=2046297\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/3cx-live-chat-talk/assets/banner-1544x500.jpg?rev=2191380\";s:2:\"1x\";s:73:\"https://ps.w.org/3cx-live-chat-talk/assets/banner-772x250.jpg?rev=2191380\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/woo-checkout-field-editor-pro\";s:4:\"slug\";s:29:\"woo-checkout-field-editor-pro\";s:6:\"plugin\";s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/woo-checkout-field-editor-pro/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/woo-checkout-field-editor-pro.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-256x256.png?rev=1821155\";s:2:\"1x\";s:82:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-128x128.png?rev=1821155\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-1544x500.png?rev=1975484\";s:2:\"1x\";s:84:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-772x250.png?rev=1975484\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"consolto-videochat/ConsoltoInserter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/consolto-videochat\";s:4:\"slug\";s:18:\"consolto-videochat\";s:6:\"plugin\";s:39:\"consolto-videochat/ConsoltoInserter.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/consolto-videochat/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/consolto-videochat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/consolto-videochat/assets/icon-256x256.png?rev=2181762\";s:2:\"1x\";s:71:\"https://ps.w.org/consolto-videochat/assets/icon-256x256.png?rev=2181762\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/consolto-videochat/assets/banner-1544x500.png?rev=2181762\";s:2:\"1x\";s:73:\"https://ps.w.org/consolto-videochat/assets/banner-772x250.png?rev=2181762\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"cookie-notice/cookie-notice.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/cookie-notice\";s:4:\"slug\";s:13:\"cookie-notice\";s:6:\"plugin\";s:31:\"cookie-notice/cookie-notice.php\";s:11:\"new_version\";s:6:\"1.2.51\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/cookie-notice/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/cookie-notice.1.2.51.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-256x256.png?rev=1805756\";s:2:\"1x\";s:66:\"https://ps.w.org/cookie-notice/assets/icon-128x128.png?rev=1805756\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/cookie-notice/assets/banner-772x250.png?rev=1805749\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"8.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.8.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(411, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(412, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(407, 'woocommerce_product_type', 'virtual', 'yes'),
(418, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(439, 'do_activate', '0', 'yes'),
(1343, '_transient_product-transient-version', '1586075032', 'yes'),
(460, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1584546899;}', 'no'),
(1821, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:50:\"plugins/woocommerce/i18n/languages/woocommerce.pot\";s:5:\"bytes\";i:1132013;s:5:\"mtime\";i:1584545741;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:6767;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1586123224;}', 'no'),
(523, '_transient_timeout_jetpack_file_data_8.3', '1587056319', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(524, '_transient_jetpack_file_data_8.3', 'a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(525, 'jetpack_available_modules', 'a:1:{s:3:\"8.3\";a:41:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(775, 'etwp_my_option_key', 'a:8:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:12:\"profile_name\";s:0:\"\";s:9:\"widget_id\";s:24:\"5e7a3557c0265925a4cfbb47\";s:20:\"consolto_widget_link\";s:159:\"<script id=\\\"et-iframe\\\" data-version=\\\"0.5\\\" data-widgetId=\\\"5e7a3557c0265925a4cfbb47\\\" src=\\\"https://client.consolto.com/iframeApp/iframeApp.js\\\"  ></script>\";s:4:\"link\";s:0:\"\";s:8:\"headline\";s:0:\"\";s:4:\"text\";s:0:\"\";}', 'yes'),
(788, 'zoom_vanity_url', '', 'yes'),
(789, 'zoom_past_join_links', 'on', 'yes'),
(801, '_transient_product_query-transient-version', '1586164668', 'yes'),
(604, 'easy_app_db_version', '2.12.1', 'yes'),
(576, 'installed_appointment-booking-calendar', '1584558839', 'yes'),
(577, 'CP_ABC_JS', '', 'yes'),
(578, 'ABC_RCODE', 'b96a16b4-eefb-417c-ad91-5e0a0d9f77b8', 'yes'),
(579, '_transient_codepeople_promote_banner_appointment-booking-calendar', '1584558840', 'yes'),
(581, 'CPABC_CAL_TIME_ZONE_MODIFY_SET', '+1 hours', 'yes'),
(582, 'CPABC_CAL_TIME_SLOT_SIZE_SET', '20', 'yes'),
(583, 'CPABC_EXCLUDED_COLUMNS', '', 'yes'),
(584, 'CPABC_APPOINTMENTS_LOAD_SCRIPTS', '1', 'yes'),
(585, 'CPABC_APPOINTMENTS_DEFAULT_USE_EDITOR', '1', 'yes'),
(594, '_transient_shipping-transient-version', '1584559392', 'yes'),
(595, '_transient_timeout_wc_shipping_method_count_legacy', '1587151392', 'no'),
(596, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1584559392\";s:5:\"value\";i:0;}', 'no'),
(561, 'installed_wp-time-slots-booking-form', '1584558217', 'yes'),
(562, 'widget_cp_timeslotsbookingplugin_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(563, 'cp_cptslotsb_last_verified', '2020-03-18 19:25:46', 'yes'),
(564, '_transient_codepeople_promote_banner_wp-time-slots-booking-form', '1584558219', 'yes'),
(924, '_transient_timeout_plugin_slugs', '1586255037', 'no'),
(925, '_transient_plugin_slugs', 'a:19:{i:0;s:40:\"3cx-live-chat-talk/wp-3cxclicktotalk.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:51:\"appointment-booking-calendar/cpabc_appointments.php\";i:4;s:17:\"booked/booked.php\";i:5;s:59:\"booked-woocommerce-payments/booked-woocommerce-payments.php\";i:6;s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";i:7;s:39:\"consolto-videochat/ConsoltoInserter.php\";i:8;s:31:\"cookie-notice/cookie-notice.php\";i:9;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:10;s:33:\"duplicate-post/duplicate-post.php\";i:11;s:26:\"easy-appointments/main.php\";i:12;s:19:\"jetpack/jetpack.php\";i:13;s:23:\"loco-translate/loco.php\";i:14;s:35:\"booking-for-woocommerce/booking.php\";i:15;s:69:\"video-conferencing-with-zoom-api/video-conferencing-with-zoom-api.php\";i:16;s:27:\"woocommerce/woocommerce.php\";i:17;s:45:\"przelewy24/woocommerce-gateway-przelewy24.php\";i:18;s:59:\"wp-time-slots-booking-form/wp-time-slots-booking-plugin.php\";}', 'no'),
(1590, '_transient_timeout_wc_addons_sections', '1586707212', 'no'),
(1591, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:15:\"free-extensions\";s:5:\"label\";s:4:\"Free\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(1592, '_transient_timeout_wc_addons_featured', '1586707212', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1593, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-bundles/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/composite-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-vendors/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:125:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/chained-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:124:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-notices/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:104:\"https://woocommerce.com/storefront/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"WooCommerce + Zapier\";s:11:\"description\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:121:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:6:\"button\";s:9:\"From: $59\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/kiss-metrics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/mixpanel/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:116:\"https://woocommerce.com/products/smart-coupons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/follow-up-emails/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/google-product-feed/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/store-credit/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/facebook/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(1598, 'wc_fields_billing', 'a:5:{s:18:\"billing_first_name\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:18:\"billing_first_name\";s:5:\"label\";s:5:\"Imię\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:0:\"\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:10:\"given-name\";s:8:\"priority\";i:10;s:6:\"custom\";i:0;}s:17:\"billing_last_name\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:17:\"billing_last_name\";s:5:\"label\";s:8:\"Nazwisko\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:0:\"\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:11:\"family-name\";s:8:\"priority\";i:20;s:6:\"custom\";i:0;}s:13:\"billing_phone\";a:11:{s:5:\"label\";s:7:\"Telefon\";s:8:\"required\";b:1;s:4:\"type\";s:3:\"tel\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:8:\"validate\";a:1:{i:0;s:5:\"phone\";}s:12:\"autocomplete\";s:3:\"tel\";s:8:\"priority\";i:40;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:13:\"billing_email\";a:11:{s:5:\"label\";s:11:\"Adres email\";s:8:\"required\";b:1;s:4:\"type\";s:5:\"email\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:8:\"validate\";a:1:{i:0;s:5:\"email\";}s:12:\"autocomplete\";s:14:\"email username\";s:8:\"priority\";i:50;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:5:\"pesel\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:5:\"pesel\";s:5:\"label\";s:5:\"Pesel\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:8:\"validate\";a:1:{i:0;s:6:\"number\";}s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";i:1;s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:0:\"\";s:8:\"priority\";s:2:\"30\";s:6:\"custom\";i:1;}}', 'yes'),
(1708, '_transient_timeout_jetpack_https_test', '1586200796', 'no'),
(1709, '_transient_jetpack_https_test', '1', 'no'),
(1171, 'widget_booked_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1173, 'booked_version_check', '2.2.6', 'yes'),
(1174, '_transient_timeout_booked_show_new_tags', '1587325193', 'no'),
(1175, '_transient_booked_show_new_tags', '1', 'no'),
(1176, 'external_updates-booked', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1586168637;s:14:\"checkedVersion\";s:5:\"2.2.6\";s:6:\"update\";O:8:\"stdClass\":7:{s:2:\"id\";i:0;s:4:\"slug\";s:6:\"booked\";s:7:\"version\";s:5:\"2.2.6\";s:8:\"homepage\";s:20:\"https://getbooked.io\";s:12:\"download_url\";s:55:\"http://boxyupdates.com/get/?action=download&slug=booked\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:17:\"booked/booked.php\";}}', 'no'),
(1179, 'action_scheduler_migration_status', 'complete', 'yes'),
(1181, 'taxonomy_16', 'a:1:{s:21:\"notifications_user_id\";s:0:\"\";}', 'yes');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(9, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 9, '_wp_attached_file', 'woocommerce-placeholder.png'),
(13, 16, '_form', ''),
(14, 16, '_config', 'a:17:{s:6:\"active\";b:1;s:6:\"aspect\";s:4:\"both\";s:6:\"pbxurl\";s:0:\"\";s:12:\"chatboxtitle\";s:10:\"Let\'s chat\";s:13:\"phoneboxtitle\";s:7:\"Call Us\";s:14:\"welcomemessage\";s:23:\"Hello, how can we help?\";s:20:\"welcomemessagesender\";s:7:\"Support\";s:11:\"enablevideo\";b:1;s:6:\"popout\";b:1;s:23:\"allowsoundnotifications\";b:0;s:15:\"requireidentity\";s:4:\"none\";s:17:\"chatboxwindowicon\";s:0:\"\";s:12:\"operatoricon\";s:0:\"\";s:14:\"enableonmobile\";b:1;s:22:\"showoperatoractualname\";b:0;s:19:\"showtypingindicator\";b:1;s:9:\"autofocus\";b:1;}'),
(12, 2, '_edit_lock', '1584559250:1'),
(15, 16, '_style', 'a:12:{s:14:\"windowposition\";s:5:\"right\";s:11:\"windowwidth\";s:3:\"250\";s:12:\"windowheight\";s:3:\"470\";s:12:\"primarycolor\";s:7:\"#007bc7\";s:14:\"secondarycolor\";s:7:\"#ffffff\";s:9:\"minimized\";b:0;s:15:\"enablepoweredby\";b:0;s:14:\"minimizedstyle\";s:6:\"bubble\";s:14:\"animationstyle\";s:4:\"none\";s:19:\"emailintegrationurl\";s:0:\"\";s:22:\"facebookintegrationurl\";s:0:\"\";s:21:\"twitterintegrationurl\";s:0:\"\";}'),
(16, 16, '_locale', 'en_GB'),
(17, 16, '_config_errors', 'a:1:{s:15:\"config.apitoken\";a:1:{i:0;a:2:{s:4:\"code\";i:111;s:4:\"args\";a:2:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}}}}}'),
(18, 19, '_edit_last', '1'),
(19, 19, '_meeting_fields', 'a:12:{s:6:\"userId\";s:22:\"QO0lByLFTO--BAnI1TBHjA\";s:10:\"start_date\";s:16:\"2020-03-24 18:15\";s:8:\"timezone\";s:13:\"Europe/Warsaw\";s:8:\"duration\";s:2:\"30\";s:16:\"join_before_host\";s:1:\"1\";s:17:\"option_host_video\";N;s:25:\"option_participants_video\";s:1:\"1\";s:24:\"option_mute_participants\";N;s:21:\"option_auto_recording\";s:4:\"none\";s:20:\"alternative_host_ids\";N;s:21:\"site_option_logged_in\";N;s:24:\"site_option_browser_join\";N;}'),
(20, 19, '_meeting_zoom_details', 'O:8:\"stdClass\":13:{s:4:\"uuid\";s:24:\"zZ38UqNoRJ2aj2om0hSM6w==\";s:2:\"id\";i:311697994;s:7:\"host_id\";s:22:\"QO0lByLFTO--BAnI1TBHjA\";s:5:\"topic\";s:2:\"a1\";s:4:\"type\";i:2;s:6:\"status\";s:7:\"started\";s:10:\"start_time\";s:20:\"2020-03-24T17:15:00Z\";s:8:\"duration\";i:30;s:8:\"timezone\";s:13:\"Europe/Warsaw\";s:10:\"created_at\";s:20:\"2020-03-24T16:50:14Z\";s:9:\"start_url\";s:549:\"https://us04web.zoom.us/s/311697994?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJRTzBsQnlMRlRPLS1CQW5JMVRCSGpBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJ0cG0wY2VNQVZDeDdOdlhUUjlIUDl4NWt5THhhLU9zdzFWb2ZNUTVkSGdjLkVnSUFBQUZ4RFhpNVd3QUFIQ0FnWlhGbVFVOVdWazlNUkZkbFlYVTJka1ZrZFZoUE0xUmtlbVoyUTJGb09HOEFERE5EUWtGMWIybFpVek56UFFSMWN6QTAiLCJleHAiOjE1ODUwNzYxNDcsImlhdCI6MTU4NTA2ODk0NywiYWlkIjoiakUyR29XOWxRci0yYmhZVDZpZERtdyIsImNpZCI6IiJ9.3NU3Gbi44RAiHrRDlDWTCsj9vqQbOaap0dzwBE68kfE\";s:8:\"join_url\";s:35:\"https://us04web.zoom.us/j/311697994\";s:8:\"settings\";O:8:\"stdClass\":19:{s:10:\"host_video\";b:0;s:17:\"participant_video\";b:1;s:10:\"cn_meeting\";b:0;s:10:\"in_meeting\";b:0;s:16:\"join_before_host\";b:1;s:15:\"mute_upon_entry\";b:0;s:9:\"watermark\";b:0;s:7:\"use_pmi\";b:0;s:13:\"approval_type\";i:2;s:5:\"audio\";s:4:\"both\";s:14:\"auto_recording\";s:4:\"none\";s:13:\"enforce_login\";b:0;s:21:\"enforce_login_domains\";s:0:\"\";s:17:\"alternative_hosts\";s:0:\"\";s:18:\"close_registration\";b:0;s:30:\"registrants_confirmation_email\";b:1;s:12:\"waiting_room\";b:0;s:30:\"registrants_email_notification\";b:1;s:22:\"meeting_authentication\";b:0;}}'),
(21, 19, '_meeting_zoom_join_url', 'https://us04web.zoom.us/j/311697994'),
(22, 19, '_meeting_zoom_start_url', 'https://us04web.zoom.us/s/311697994?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJRTzBsQnlMRlRPLS1CQW5JMVRCSGpBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJ0cG0wY2VNQVZDeDdOdlhUUjlIUDl4NWt5THhhLU9zdzFWb2ZNUTVkSGdjLkVnSUFBQUZ4RFhpNVd3QUFIQ0FnWlhGbVFVOVdWazlNUkZkbFlYVTJka1ZrZFZoUE0xUmtlbVoyUTJGb09HOEFERE5EUWtGMWIybFpVek56UFFSMWN6QTAiLCJleHAiOjE1ODUwNzYxNDcsImlhdCI6MTU4NTA2ODk0NywiYWlkIjoiakUyR29XOWxRci0yYmhZVDZpZERtdyIsImNpZCI6IiJ9.3NU3Gbi44RAiHrRDlDWTCsj9vqQbOaap0dzwBE68kfE'),
(23, 19, '_meeting_zoom_meeting_id', '311697994'),
(24, 19, '_edit_lock', '1586178402:1'),
(25, 21, '_appointment_title', ''),
(26, 21, '_appointment_timestamp', '1586858100'),
(27, 21, '_appointment_timeslot', '0955-1055'),
(28, 21, '_appointment_user', '1'),
(29, 21, '_cf_meta_value', ''),
(30, 22, '_edit_last', '1'),
(31, 22, '_edit_lock', '1586093811:1'),
(32, 22, '_regular_price', '150'),
(33, 22, 'total_sales', '0'),
(34, 22, '_tax_status', 'taxable'),
(35, 22, '_tax_class', ''),
(36, 22, '_manage_stock', 'no'),
(37, 22, '_backorders', 'no'),
(38, 22, '_sold_individually', 'no'),
(39, 22, '_virtual', 'no'),
(40, 22, '_downloadable', 'no'),
(41, 22, '_download_limit', '-1'),
(42, 22, '_download_expiry', '-1'),
(43, 22, '_stock', NULL),
(44, 22, '_stock_status', 'instock'),
(45, 22, '_wc_average_rating', '0'),
(46, 22, '_wc_review_count', '0'),
(47, 22, '_product_version', '4.0.0'),
(48, 22, '_price', '150'),
(49, 22, '_booked_appointment', 'yes'),
(50, 23, '_appointment_title', ''),
(51, 23, '_appointment_timestamp', '1586850900'),
(52, 23, '_appointment_timeslot', '0755-0855'),
(53, 23, '_appointment_user', '1'),
(54, 23, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(55, 23, '_booked_wc_time_created', '1586100441'),
(56, 23, '_booked_wc_date_created', '2020-04-05 15:27:21'),
(57, 23, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(58, 24, '_appointment_title', ''),
(59, 24, '_appointment_timestamp', '1587455700'),
(60, 24, '_appointment_timeslot', '0755-0855'),
(61, 24, '_appointment_user', '1'),
(62, 24, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(63, 24, '_booked_wc_time_created', '1586100485'),
(64, 24, '_booked_wc_date_created', '2020-04-05 15:28:05'),
(65, 24, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(66, 25, '_appointment_title', ''),
(67, 25, '_appointment_timestamp', '1587466500'),
(68, 25, '_appointment_timeslot', '1055-1155'),
(69, 25, '_appointment_user', '1'),
(70, 25, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(71, 25, '_booked_wc_time_created', '1586100817'),
(72, 25, '_booked_wc_date_created', '2020-04-05 15:33:37'),
(73, 25, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(74, 26, '_appointment_title', ''),
(75, 26, '_appointment_timestamp', '1589270100'),
(76, 26, '_appointment_timeslot', '0755-0855'),
(77, 26, '_appointment_user', '1'),
(78, 26, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(79, 26, '_booked_wc_time_created', '1586100847'),
(80, 26, '_booked_wc_date_created', '2020-04-05 15:34:07'),
(81, 26, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(82, 27, '_appointment_title', ''),
(83, 27, '_appointment_timestamp', '1588085700'),
(84, 27, '_appointment_timeslot', '1455-1555'),
(85, 27, '_appointment_user', '1'),
(86, 27, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(87, 27, '_booked_wc_time_created', '1586100998'),
(88, 27, '_booked_wc_date_created', '2020-04-05 15:36:38'),
(89, 27, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(90, 12, '_edit_lock', '1586101712:1'),
(91, 28, '_appointment_title', ''),
(92, 28, '_appointment_timestamp', '1586246100'),
(93, 28, '_appointment_timeslot', '0755-0855'),
(94, 28, '_appointment_user', '1'),
(95, 28, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(96, 28, '_booked_wc_time_created', '1586108886'),
(97, 28, '_booked_wc_date_created', '2020-04-05 17:48:06'),
(98, 28, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(99, 29, '_appointment_title', ''),
(100, 29, '_appointment_timestamp', '1586854500'),
(101, 29, '_appointment_timeslot', '0855-0955'),
(102, 29, '_appointment_user', '1'),
(103, 29, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(104, 29, '_booked_wc_time_created', '1586108906'),
(105, 29, '_booked_wc_date_created', '2020-04-05 17:48:26'),
(106, 29, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(107, 12, '_wp_page_template', 'koszyk.php'),
(108, 31, '_appointment_title', ''),
(109, 31, '_appointment_timestamp', '1587459300'),
(110, 31, '_appointment_timeslot', '0855-0955'),
(111, 31, '_appointment_user', '1'),
(112, 31, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(113, 31, '_booked_wc_time_created', '1586108926'),
(114, 31, '_booked_wc_date_created', '2020-04-05 17:48:46'),
(115, 31, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(116, 32, '_appointment_title', ''),
(117, 32, '_appointment_timestamp', '1588078500'),
(118, 32, '_appointment_timeslot', '1255-1355'),
(119, 32, '_appointment_user', '1'),
(120, 32, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(121, 32, '_booked_wc_time_created', '1586115313'),
(122, 32, '_booked_wc_date_created', '2020-04-05 19:35:13'),
(123, 32, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(124, 33, '_appointment_title', ''),
(125, 33, '_appointment_timestamp', '1586249700'),
(126, 33, '_appointment_timeslot', '0855-0955'),
(127, 33, '_appointment_user', '1'),
(128, 33, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(129, 33, '_booked_wc_time_created', '1586115494'),
(130, 33, '_booked_wc_date_created', '2020-04-05 19:38:14'),
(131, 33, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(132, 34, '_appointment_title', ''),
(133, 34, '_appointment_timestamp', '1587462900'),
(134, 34, '_appointment_timeslot', '0955-1055'),
(135, 34, '_appointment_user', '1'),
(136, 34, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(137, 34, '_booked_wc_time_created', '1586115656'),
(138, 34, '_booked_wc_date_created', '2020-04-05 19:40:56'),
(139, 34, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(140, 35, '_appointment_title', ''),
(141, 35, '_appointment_timestamp', '1586861700'),
(142, 35, '_appointment_timeslot', '1055-1155'),
(143, 35, '_appointment_user', '1'),
(144, 35, '_cf_meta_value', '<p class=\"cf-meta-value\"><strong>Gabinet</strong><br>150 &#122;&#322; - Gabinet<!-- product_id::22 --></p>'),
(145, 35, '_booked_wc_time_created', '1586115820'),
(146, 35, '_booked_wc_date_created', '2020-04-05 19:43:40'),
(147, 35, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet'),
(156, 37, '_order_key', 'wc_order_dRwjYT05u7FIG'),
(157, 37, '_customer_user', '1'),
(158, 37, '_payment_method', 'przelewy24'),
(159, 37, '_payment_method_title', 'Przelewy24'),
(160, 37, '_customer_ip_address', '::1'),
(161, 37, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0'),
(162, 37, '_created_via', 'checkout'),
(163, 37, '_cart_hash', 'f63750bb68c825a4a85aa789bd8339e2'),
(164, 37, '_billing_first_name', 'SFVasf'),
(165, 37, '_billing_last_name', 'asxadfvdsfv'),
(166, 37, '_billing_email', 'maciekiwaniszewski.ux@gmail.com'),
(167, 37, '_billing_phone', '64634634'),
(168, 37, '_order_currency', 'PLN'),
(169, 37, '_cart_discount', '0'),
(170, 37, '_cart_discount_tax', '0'),
(171, 37, '_order_shipping', '0.00'),
(172, 37, '_order_shipping_tax', '0'),
(173, 37, '_order_tax', '0'),
(174, 37, '_order_total', '150.00'),
(175, 37, '_order_version', '4.0.0'),
(176, 37, '_prices_include_tax', 'no'),
(177, 37, '_billing_address_index', 'SFVasf asxadfvdsfv        maciekiwaniszewski.ux@gmail.com 64634634'),
(178, 37, '_shipping_address_index', '        '),
(179, 37, 'is_vat_exempt', 'no'),
(181, 37, '_booked_wc_order_appointments', 'a:1:{i:0;i:36;}'),
(182, 37, 'pesel', '563463');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-31 09:38:48', '2019-10-31 09:38:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-10-31 09:38:48', '2019-10-31 09:38:48', '', 0, 'http://localhost/Endokrynologia/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-31 09:38:48', '2019-10-31 09:38:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Endokrynologia/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-31 09:38:48', '2019-10-31 09:38:48', '', 0, 'http://localhost/Endokrynologia/?page_id=2', 0, 'page', '', 0),
(9, 1, '2020-03-18 15:37:51', '2020-03-18 15:37:51', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-03-18 15:37:51', '2020-03-18 15:37:51', '', 0, 'http://localhost/Endokrynologia/wp-content/uploads/2020/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-03-18 15:38:45', '2020-03-18 15:38:45', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-03-18 15:38:45', '2020-03-18 15:38:45', '', 0, 'http://localhost/Endokrynologia/shop/', 0, 'page', '', 0),
(11, 1, '2020-03-18 15:38:45', '2020-03-18 15:38:45', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Basket', '', 'publish', 'closed', 'closed', '', 'basket', '', '', '2020-03-18 15:38:45', '2020-03-18 15:38:45', '', 0, 'http://localhost/Endokrynologia/basket/', 0, 'page', '', 0),
(12, 1, '2020-03-18 15:38:45', '2020-03-18 15:38:45', '<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-04-05 17:48:39', '2020-04-05 15:48:39', '', 0, 'http://localhost/Endokrynologia/checkout/', 0, 'page', '', 0),
(13, 1, '2020-03-18 15:38:45', '2020-03-18 15:38:45', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-03-18 15:38:45', '2020-03-18 15:38:45', '', 0, 'http://localhost/Endokrynologia/my-account/', 0, 'page', '', 0),
(22, 1, '2020-04-05 10:06:07', '2020-04-05 08:06:07', '', 'Gabinet', '', 'publish', 'open', 'closed', '', 'gabinet', '', '', '2020-04-05 10:23:52', '2020-04-05 08:23:52', '', 0, 'http://localhost/Endokrynologia/?post_type=product&#038;p=22', 0, 'product', '', 0),
(15, 1, '2020-03-18 19:20:16', '0000-00-00 00:00:00', 'This is a <b>preview</b> page, remember to publish it if needed. You can edit the full calendar and form settings into the admin settings page.<br /><br /> [CP_TIME_SLOTS_BOOKING  id=\"1\"]', 'Booking Form', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-18 19:20:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/Endokrynologia/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-03-24 15:27:05', '2020-03-24 15:27:05', '1\nboth\n\nLet\'s chat\nCall Us\nHello, how can we help?\nSupport\n1\n1\n\nnone\n\n\n1\n\n1\n1\nright\n250\n470\n#007bc7\n#ffffff\n\n\nbubble\nnone', 'Live Chat & Talk item 1', '', 'publish', 'closed', 'closed', '', 'live-chat-talk-item-1', '', '', '2020-03-24 16:14:53', '2020-03-24 16:14:53', '', 0, 'http://localhost/Endokrynologia/?post_type=wp3cxc2c_c2c_form&#038;p=16', 0, 'wp3cxc2c_c2c_form', '', 0),
(21, 1, '2020-04-01 00:00:00', '0000-00-00 00:00:00', '', '14th Kwiecień 2020 @ 09:55 (User: 1)', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-01 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Endokrynologia/?post_type=booked_appointments&p=21', 0, 'booked_appointments', '', 0),
(20, 1, '2020-04-03 13:55:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-03 13:55:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Endokrynologia/?p=20', 0, 'post', '', 0),
(19, 1, '2020-03-24 16:49:47', '2020-03-24 16:49:47', '', 'a1', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-03-24 16:55:46', '2020-03-24 16:55:46', '', 0, 'http://localhost/Endokrynologia/?post_type=zoom-meetings&#038;p=19', 0, 'zoom-meetings', '', 0),
(23, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '14th Kwiecień 2020 @ 07:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '14th-kwiecien-2020-0755-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/14th-kwiecien-2020-0755-user-1/', 0, 'booked_appointments', '', 0),
(24, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '21st Kwiecień 2020 @ 07:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '21st-kwiecien-2020-0755-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/21st-kwiecien-2020-0755-user-1/', 0, 'booked_appointments', '', 0),
(25, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '21st Kwiecień 2020 @ 10:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '21st-kwiecien-2020-1055-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/21st-kwiecien-2020-1055-user-1/', 0, 'booked_appointments', '', 0),
(26, 1, '2020-05-01 00:00:00', '2020-04-30 22:00:00', '', '12th Maj 2020 @ 07:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '12th-maj-2020-0755-user-1', '', '', '2020-05-01 00:00:00', '2020-04-30 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/12th-maj-2020-0755-user-1/', 0, 'booked_appointments', '', 0),
(27, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '28th Kwiecień 2020 @ 14:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '28th-kwiecien-2020-1455-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/28th-kwiecien-2020-1455-user-1/', 0, 'booked_appointments', '', 0),
(28, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '7th Kwiecień 2020 @ 07:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '7th-kwiecien-2020-0755-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/7th-kwiecien-2020-0755-user-1/', 0, 'booked_appointments', '', 0),
(29, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '14th Kwiecień 2020 @ 08:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '14th-kwiecien-2020-0855-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/14th-kwiecien-2020-0855-user-1/', 0, 'booked_appointments', '', 0),
(30, 1, '2020-04-05 17:48:39', '2020-04-05 15:48:39', '<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->', 'Checkout', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-04-05 17:48:39', '2020-04-05 15:48:39', '', 12, 'http://localhost/Endokrynologia/2020/04/05/12-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '21st Kwiecień 2020 @ 08:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '21st-kwiecien-2020-0855-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/21st-kwiecien-2020-0855-user-1/', 0, 'booked_appointments', '', 0),
(32, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '28th Kwiecień 2020 @ 12:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '28th-kwiecien-2020-1255-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/28th-kwiecien-2020-1255-user-1/', 0, 'booked_appointments', '', 0),
(33, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '7th Kwiecień 2020 @ 08:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '7th-kwiecien-2020-0855-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/7th-kwiecien-2020-0855-user-1/', 0, 'booked_appointments', '', 0),
(34, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '21st Kwiecień 2020 @ 09:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '21st-kwiecien-2020-0955-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/21st-kwiecien-2020-0955-user-1/', 0, 'booked_appointments', '', 0),
(35, 1, '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', '14th Kwiecień 2020 @ 10:55 (User: 1)', '', 'booked_wc_awaiting', 'closed', 'closed', '', '14th-kwiecien-2020-1055-user-1', '', '', '2020-04-01 00:00:00', '2020-03-31 22:00:00', '', 0, 'http://localhost/Endokrynologia/booked_appointments/14th-kwiecien-2020-1055-user-1/', 0, 'booked_appointments', '', 0),
(38, 1, '2020-04-06 12:24:06', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-06 12:24:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/Endokrynologia/?post_type=zoom-meetings&p=38', 0, 'zoom-meetings', '', 0),
(39, 1, '2020-04-06 15:09:11', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-06 15:09:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/Endokrynologia/?post_type=zoom-meetings&p=39', 0, 'zoom-meetings', '', 0),
(37, 1, '2020-04-06 00:23:20', '2020-04-05 22:23:20', '', 'Order &ndash; Kwiecień 6, 2020 @ 12:23 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_OM0OISWoFoxaQ', 'zamowienie-apr-05-2020-o-1023-pm', '', '', '2020-04-06 11:17:48', '2020-04-06 09:17:48', '', 0, 'http://localhost/Endokrynologia/?post_type=shop_order&#038;p=37', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorised', 'uncategorised', 0),
(16, 'Gabinet', 'gabinet', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 16, 0),
(22, 15, 0),
(22, 2, 0),
(23, 16, 0),
(24, 16, 0),
(25, 16, 0),
(26, 16, 0),
(27, 16, 0),
(28, 16, 0),
(29, 16, 0),
(31, 16, 0),
(32, 16, 0),
(33, 16, 0),
(34, 16, 0),
(35, 16, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 1),
(16, 16, 'booked_custom_calendars', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'SFVasf'),
(3, 1, 'last_name', 'asxadfvdsfv'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"8888872e7400a09566c4d8865285b488e142e911a7709899495ce3f91c84d7f3\";a:4:{s:10:\"expiration\";i:1587128097;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0\";s:5:\"login\";i:1585918497;}s:64:\"3f9a4638e68edcda3f30c095c5d639183f720e0425cdcfeecf0fe0ccca894215\";a:5:{s:10:\"expiration\";i:1586200509;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1586027709;s:4:\"loco\";a:4:{s:1:\"c\";s:17:\"Loco_data_Session\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:7:\"success\";a:0:{}}s:1:\"t\";i:1586031133;}}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '20'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:H/320cGv/1C1IqiJly8hmtWt'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:4Ig/6Ude+7bpF/wUULfVCLqR'),
(20, 1, 'wc_last_active', '1586131200'),
(24, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(26, 1, 'dismissed_no_secure_connection_notice', '1'),
(28, 1, 'enable_custom_fields', '1'),
(29, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(30, 1, 'booked_phone', ''),
(31, 1, 'last_update', '1586125400'),
(32, 1, 'billing_first_name', 'SFVasf'),
(33, 1, 'billing_last_name', 'asxadfvdsfv'),
(34, 1, 'billing_email', 'maciekiwaniszewski.ux@gmail.com'),
(35, 1, 'billing_phone', '64634634'),
(36, 1, 'shipping_method', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BixnJ//zo7K3OfZCFV4r5LPbNFYXMn.', 'admin', 'maciekiwaniszewski.ux@gmail.com', '', '2019-10-31 09:38:48', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
CREATE TABLE IF NOT EXISTS `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(22, '', 0, 0, '150.0000', '150.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
CREATE TABLE IF NOT EXISTS `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '22'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '150'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '150'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'booked_wc_appointment_id', '36'),
(11, 1, 'booked_wc_appointment_cal_name', 'Gabinet'),
(12, 1, '_booked_wc_cfield_0', 'Gabinet--SEP--150 &#122;&#322; - Gabinet');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Gabinet', 'line_item', 37);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_p24_data`
--

DROP TABLE IF EXISTS `wp_woocommerce_p24_data`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_p24_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_type` varchar(32) NOT NULL,
  `data_id` int(11) NOT NULL,
  `custom_key` varchar(32) NOT NULL,
  `custom_value` text,
  PRIMARY KEY (`id`),
  KEY `search_key` (`data_type`,`data_id`,`custom_key`),
  KEY `get_key` (`data_type`,`data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Vypisuji data pro tabulku `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(4, '1', 'a:13:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:589:\"a:1:{s:32:\"3494eb544c8b73557641a3ae37de934c\";a:14:{s:24:\"booked_wc_appointment_id\";i:36;s:30:\"booked_wc_appointment_cal_name\";s:7:\"Gabinet\";s:31:\"booked_wc_appointment_timerange\";s:41:\"from 09:55 to 10:55 on 7th Kwiecień 2020\";s:3:\"key\";s:32:\"3494eb544c8b73557641a3ae37de934c\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:150;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:150;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:773:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-04-06T00:23:20+02:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"PL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"PL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:6:\"SFVasf\";s:9:\"last_name\";s:11:\"asxadfvdsfv\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:8:\"64634634\";s:5:\"email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:17:\"booked_first_name\";s:0:\"\";s:16:\"booked_last_name\";s:0:\"\";s:12:\"booked_email\";s:31:\"maciekiwaniszewski.ux@gmail.com\";s:21:\"chosen_payment_method\";s:10:\"przelewy24\";s:10:\"wc_notices\";N;s:22:\"order_awaiting_payment\";i:37;}', 1586266041);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
