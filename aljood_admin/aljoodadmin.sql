-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2024 at 06:24 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aylaxjlf_aljoodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `url`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'url', 'about_item_1.png', 1, '2022-03-31 22:36:55', '2022-03-31 22:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `about_translations`
--

CREATE TABLE `about_translations` (
  `id` bigint(20) NOT NULL,
  `about_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT ' ',
  `description` text DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `about_translations`
--

INSERT INTO `about_translations` (`id`, `about_id`, `title`, `description`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Title', 'FlyWeb is a universal convertor Web to App inspired by the Flutter framework, made by Google. It is the best solutions to convert your website to Android and iOS with just your URL.', 'en', 1, '2022-07-24 17:29:40', '2022-05-09 22:09:12'),
(2, 1, 'Title', 'تطبيق الجود للمحاماه يسهل عملية ادارة وخدمة الموكلين عن بعد', 'ar', 1, '2024-03-21 02:08:28', '2024-03-21 02:08:28'),
(4, 1, 'Title', 'FlyWeb es un conversor universal de Web a App inspirado en el framework Flutter, hecho por Google. Es la mejor solución para convertir su sitio web a Android e iOS con solo su URL.', 'es', 1, '2022-07-24 16:13:51', '2022-07-24 16:13:51'),
(5, 1, 'Title', 'FlyWeb est un convertisseur universel Web vers App inspiré du framework Flutter, réalisé par Google. Ce sont les meilleures solutions pour convertir votre site Web vers Android et iOS avec juste votre URL.', 'fr', 1, '2022-07-24 16:14:04', '2022-07-24 16:14:04'),
(6, 1, 'Title', 'FlyWeb is a universal convertor Web to App inspired by the Flutter framework, made by Google. It is the best solutions to convert your website to Android and iOS with just your URL.', 'pt', 1, '2022-07-25 10:28:36', '2022-07-25 10:28:36'),
(7, 1, 'Title', 'FlyWeb ist ein universeller Konverter von Web zu App, inspiriert vom Flutter-Framework von Google. Es ist die beste Lösung, um Ihre Website nur mit Ihrer URL in Android und iOS zu konvertieren.', 'de', 1, '2022-07-24 16:14:33', '2022-07-24 16:14:33'),
(8, 1, 'Title', 'FlyWeb è un convertitore universale Web to App ispirato al framework Flutter, realizzato da Google. Sono le migliori soluzioni per convertire il tuo sito Web in Android e iOS solo con il tuo URL.', 'it', 1, '2022-07-24 16:14:47', '2022-07-24 16:14:47'),
(9, 1, 'Title', 'FlyWeb is a universal convertor Web to App inspired by the Flutter framework, made by Google. It is the best solutions to convert your website to Android and iOS with just your URL.', 'tr', 1, '2022-07-24 14:21:33', '2022-07-24 14:13:22'),
(10, 1, 'Title', 'FlyWeb — это универсальный конвертер веб-приложений, вдохновленный фреймворком Flutter, созданным Google. Это лучшее решение для преобразования вашего веб-сайта в Android и iOS только с вашим URL-адресом.', 'ru', 1, '2022-07-24 16:15:12', '2022-07-24 16:15:12'),
(11, 1, 'Title', 'फ्लाईवेब एक सार्वभौमिक कनवर्टर वेब टू ऐप है जो Google द्वारा बनाए गए फ़्लटर फ्रेमवर्क से प्रेरित है। अपनी वेबसाइट को केवल अपने URL के साथ Android और iOS में बदलने के लिए यह सबसे अच्छा उपाय है।', 'hi', 1, '2022-07-24 16:15:23', '2022-07-24 16:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'FlyWeb', '2021-11-15 17:50:15', '2021-11-15 17:50:15'),
(2, 'url', 'http://positifmobile.com/flyweb/demo', '2021-11-15 17:50:15', '2021-11-15 17:50:15'),
(3, 'admob_id', 'ca-app-pub-7313157698919973~4532937840', '2021-11-15 17:50:36', '2021-11-15 17:50:36'),
(4, 'admob_id_ios', '', '2021-11-15 17:50:36', '2021-11-15 17:50:36'),
(5, 'admob_key_ad_banner', 'ca-app-pub-7313157698919973/4865350657', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(6, 'admob_key_ad_interstitial', 'ca-app-pub-3940256099942544/1033173712', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(7, 'admob_key_ad_banner_ios', 'ca-app-pub-3940256099942544/2934735716', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(8, 'admob_key_ad_interstitial_ios', 'ca-app-pub-3940256099942544/4411468910', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(9, 'admob_dealy', '100', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(10, 'navigatin_bar_style', 'empty', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(11, 'left_button', '', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(12, 'right_button', '', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(13, 'loader', 'FadingCircle', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(14, 'loaderColor', '#597ae2', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(15, 'firstColor', '#597ae2', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(16, 'secondColor', '#597ae2', '2021-11-15 17:53:30', '2021-11-15 17:53:30'),
(17, 'backgroundColor', '#ffffff', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(18, 'logo', 'settings_1.png', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(19, 'javascript', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(20, 'download_webview', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(21, 'permission_dialog', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(22, 'splach_screen', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(23, 'swipe_refresh', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(24, 'website_zoom', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(25, 'desktop_mode', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(26, 'full_screen', '0', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(27, 'sub_title', '', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(28, 'logo_header', 'logo_header_1.png', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(29, 'type_header', 'empty', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(30, 'about_us', '', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(31, 'android_id', 'com.aljoodlaw', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(32, 'ios_id', 'com.aljoodlaw', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(33, 'onesignal_id', '14da0181-e8b2-47ae-b286-512f065e4ee5', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(34, 'onesignal_api_key', 'YjA1ZjIyOTMtNjMzYS00MzExLThlZGMtNjJhZmY0OTAzZTIx', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(35, 'share', '\r\n', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(36, 'list', NULL, '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(37, 'ad_banner', 'false', '2021-11-15 17:57:54', '2021-11-15 17:57:54'),
(38, 'ad_interstitial', 'false', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(39, 'pull_refresh', 'false', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(40, 'boarding', 'false', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(41, 'deeplink', 'app.flyweb.scheme', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(42, 'tab_navigation_enable', 'true', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(43, 'colorTab', '#0b0a0a', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(44, 'version_android', '1.0.0', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(45, 'version_ios', '1.0.0', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(46, 'version_app', 'version_app', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(47, 'purchase_code', 'nullcave-club', '2021-11-15 18:00:42', '2021-11-15 18:00:42'),
(48, 'customCss', '\nh1   {color: blue;}\np    {color: red;}', '2021-11-21 10:46:41', '2021-11-21 10:46:41'),
(49, 'customJavascript', '', '2021-11-21 10:46:41', '2021-11-21 10:46:41'),
(50, 'floating_margin_bottom', '1', '2021-11-26 09:08:04', '2021-11-26 09:08:04'),
(51, 'floating_background_color', '#5140ff', '2021-11-26 09:08:04', '2021-11-26 09:08:04'),
(52, 'floating_icon_color', '#ffffff', '2021-11-26 09:08:04', '2021-11-26 09:08:04'),
(53, 'floating_enable', '0', '2021-11-26 09:08:04', '2021-11-26 09:08:04'),
(54, 'floating_icon', 'floating_icon.png', '2021-11-26 09:08:04', '2021-11-26 09:08:04'),
(55, 'google_font', 'Cairo', '2021-11-28 19:31:42', '2021-11-28 19:31:42'),
(56, 'tab_color_icon_active', '#597ae2', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(57, 'tab_color_icon_active_dark', '#000000', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(58, 'tab_color_icon_inactive', '#bdbdbd', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(59, 'tab_color_icon_inactive_dark', '#bdbdbd', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(60, 'tab_color_background', '#ffffff', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(61, 'tab_color_background_dark', '#ffffff', '2022-03-02 20:38:42', '2022-03-02 20:38:42'),
(62, 'default_language', '2', '2022-03-08 17:28:29', '2022-03-08 17:28:29'),
(63, 'floating_background_color_dark', '#000000', '2022-03-21 21:34:26', '2022-03-21 21:34:26'),
(64, 'floating_icon_color_dark', '#ffffff', '2022-03-21 21:34:26', '2022-03-21 21:34:26'),
(65, 'tab_position', 'bottom', '2022-04-08 16:38:41', '2022-04-08 16:38:41'),
(66, 'default_language_code', 'ar', '2022-04-08 17:19:10', '2022-04-08 17:19:10'),
(67, 'splash_logo_width', '150', '2022-04-10 13:49:23', '2022-04-10 13:49:23'),
(68, 'splash_logo_height', '150', '2022-04-10 13:49:23', '2022-04-10 13:49:23'),
(69, 'tab_refresh', 'true', '2024-03-23 23:05:37', '2024-03-23 23:05:37'),
(70, 'tab_type', 'regular', '2024-03-23 23:08:27', '2024-03-23 23:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `app_translations`
--

CREATE TABLE `app_translations` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `app_translations`
--

INSERT INTO `app_translations` (`id`, `title`, `sub_title`, `url`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FlyWeb', 'Convert your website into an application', 'http://positifmobile.com/flyweb/demo', 'en', 1, '2022-07-25 06:09:42', '2022-07-25 06:09:42'),
(10, 'الجود للمحاماه', '', 'https://aljood-law.net/system', 'ar', 1, '2024-03-21 01:49:55', '2024-03-21 01:49:55'),
(11, 'FlyWeb', 'Convierta su sitio web en una aplicación', 'http://positifmobile.com/flyweb/demo', 'es', 1, '2022-05-22 12:40:45', '2022-05-22 12:40:45'),
(12, 'FlyWeb', 'Convertissez votre site Web en application', 'http://positifmobile.com/flyweb/demo', 'fr', 1, '2022-05-22 12:41:42', '2022-05-22 12:41:42'),
(13, 'FlyWeb', 'Convert your website into an application', 'http://positifmobile.com/flyweb/demo', 'pt', 1, '2022-07-25 10:28:03', '2022-07-25 10:28:03'),
(14, 'FlyWeb', 'अपनी वेबसाइट को ऐप में बदलें', 'http://positifmobile.com/flyweb/demo', 'in', 1, '2022-05-22 12:44:37', '2022-05-22 12:44:37'),
(15, 'FlyWeb', 'Wandeln Sie Ihre Website in eine App um', 'http://positifmobile.com/flyweb/demo', 'de', 1, '2022-05-22 12:43:09', '2022-05-22 12:43:09'),
(16, 'FlyWeb', 'Convert your Website to an App', 'http://positifmobile.com/flyweb/demo', 'it', 1, '2022-07-25 11:19:24', '2022-05-22 12:43:09'),
(17, 'FlyWeb', 'Web Sitenizi Bir Uygulamaya Dönüştürün', 'http://positifmobile.com/flyweb/demo', 'tr', 1, '2022-05-22 12:43:53', '2022-05-22 12:43:53'),
(18, 'FlyWeb', 'Превратите свой сайт в приложение', 'http://positifmobile.com/flyweb/demo', 'ru', 1, '2022-05-22 12:44:30', '2022-05-22 12:44:30'),
(19, 'FlyWeb', 'अपनी वेबसाइट को ऐप में बदलें', 'http://positifmobile.com/flyweb/demo', 'hi', 1, '2022-07-24 16:00:07', '2022-07-24 16:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `boarding`
--

CREATE TABLE `boarding` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `boarding`
--

INSERT INTO `boarding` (`id`, `image`, `title`, `description`, `status`, `date`) VALUES
(1, 'boarding_item_1.png', 'FlyWeb Convertor', 'A FlyWeb is used to convert your Website to Application Mobile.  ', 1, '2021-05-27 10:18:16'),
(2, 'boarding_item_2.png', 'Theme Support', 'To change the theme you can select from our existing theme with gradient style color or single style color.', 1, '2021-05-27 10:18:16'),
(3, 'boarding_item_3.png', 'Media Support', 'FlyWeb supports video (Youtube, Vimeo, HTML5 videos etc), audio(.mp3, .wav etc), all image format and animated image (.gif).', 1, '2021-05-27 10:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', 0, '2021-04-06 00:06:30', '2021-10-10 23:34:13', NULL),
(2, 'AL', 'Albania', 0, '2021-04-06 00:06:30', NULL, NULL),
(3, 'DZ', 'Algeria', 0, '2021-04-06 00:06:30', NULL, NULL),
(4, 'AS', 'American Samoa', 0, '2021-04-06 00:06:30', NULL, NULL),
(5, 'AD', 'Andorra', 0, '2021-04-06 00:06:30', NULL, NULL),
(6, 'AO', 'Angola', 0, '2021-04-06 00:06:30', NULL, NULL),
(7, 'AI', 'Anguilla', 0, '2021-04-06 00:06:30', NULL, NULL),
(8, 'AQ', 'Antarctica', 0, '2021-04-06 00:06:30', NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', 0, '2021-04-06 00:06:30', NULL, NULL),
(10, 'AR', 'Argentina', 0, '2021-04-06 00:06:30', NULL, NULL),
(11, 'AM', 'Armenia', 0, '2021-04-06 00:06:30', NULL, NULL),
(12, 'AW', 'Aruba', 0, '2021-04-06 00:06:30', NULL, NULL),
(13, 'AU', 'Australia', 0, '2021-04-06 00:06:30', NULL, NULL),
(14, 'AT', 'Austria', 0, '2021-04-06 00:06:30', NULL, NULL),
(15, 'AZ', 'Azerbaijan', 0, '2021-04-06 00:06:30', NULL, NULL),
(16, 'BS', 'Bahamas The', 0, '2021-04-06 00:06:30', NULL, NULL),
(17, 'BH', 'Bahrain', 0, '2021-04-06 00:06:30', NULL, NULL),
(18, 'BD', 'Bangladesh', 0, '2021-04-06 00:06:30', NULL, NULL),
(19, 'BB', 'Barbados', 0, '2021-04-06 00:06:30', NULL, NULL),
(20, 'BY', 'Belarus', 0, '2021-04-06 00:06:30', NULL, NULL),
(21, 'BE', 'Belgium', 0, '2021-04-06 00:06:30', NULL, NULL),
(22, 'BZ', 'Belize', 0, '2021-04-06 00:06:30', NULL, NULL),
(23, 'BJ', 'Benin', 0, '2021-04-06 00:06:30', NULL, NULL),
(24, 'BM', 'Bermuda', 0, '2021-04-06 00:06:30', NULL, NULL),
(25, 'BT', 'Bhutan', 0, '2021-04-06 00:06:30', NULL, NULL),
(26, 'BO', 'Bolivia', 0, '2021-04-06 00:06:30', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 0, '2021-04-06 00:06:30', NULL, NULL),
(28, 'BW', 'Botswana', 0, '2021-04-06 00:06:30', NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, '2021-04-06 00:06:30', NULL, NULL),
(30, 'BR', 'Brazil', 0, '2021-04-06 00:06:30', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 0, '2021-04-06 00:06:30', NULL, NULL),
(32, 'BN', 'Brunei', 0, '2021-04-06 00:06:30', NULL, NULL),
(33, 'BG', 'Bulgaria', 0, '2021-04-06 00:06:30', NULL, NULL),
(34, 'BF', 'Burkina Faso', 0, '2021-04-06 00:06:30', NULL, NULL),
(35, 'BI', 'Burundi', 0, '2021-04-06 00:06:30', NULL, NULL),
(36, 'KH', 'Cambodia', 0, '2021-04-06 00:06:30', NULL, NULL),
(37, 'CM', 'Cameroon', 0, '2021-04-06 00:06:30', NULL, NULL),
(38, 'CA', 'Canada', 0, '2021-04-06 00:06:30', NULL, NULL),
(39, 'CV', 'Cape Verde', 0, '2021-04-06 00:06:30', NULL, NULL),
(40, 'KY', 'Cayman Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(41, 'CF', 'Central African Republic', 0, '2021-04-06 00:06:30', NULL, NULL),
(42, 'TD', 'Chad', 0, '2021-04-06 00:06:30', NULL, NULL),
(43, 'CL', 'Chile', 0, '2021-04-06 00:06:30', NULL, NULL),
(44, 'CN', 'China', 0, '2021-04-06 00:06:30', NULL, NULL),
(45, 'CX', 'Christmas Island', 0, '2021-04-06 00:06:30', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(47, 'CO', 'Colombia', 0, '2021-04-06 00:06:30', NULL, NULL),
(48, 'KM', 'Comoros', 0, '2021-04-06 00:06:30', NULL, NULL),
(49, 'CG', 'Republic Of The Congo', 0, '2021-04-06 00:06:30', NULL, NULL),
(50, 'CD', 'Democratic Republic Of The Congo', 0, '2021-04-06 00:06:30', NULL, NULL),
(51, 'CK', 'Cook Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(52, 'CR', 'Costa Rica', 0, '2021-04-06 00:06:30', NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 0, '2021-04-06 00:06:30', NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', 0, '2021-04-06 00:06:30', NULL, NULL),
(55, 'CU', 'Cuba', 0, '2021-04-06 00:06:30', NULL, NULL),
(56, 'CY', 'Cyprus', 0, '2021-04-06 00:06:30', NULL, NULL),
(57, 'CZ', 'Czech Republic', 0, '2021-04-06 00:06:30', NULL, NULL),
(58, 'DK', 'Denmark', 0, '2021-04-06 00:06:30', NULL, NULL),
(59, 'DJ', 'Djibouti', 0, '2021-04-06 00:06:30', NULL, NULL),
(60, 'DM', 'Dominica', 0, '2021-04-06 00:06:30', NULL, NULL),
(61, 'DO', 'Dominican Republic', 0, '2021-04-06 00:06:30', NULL, NULL),
(62, 'TP', 'East Timor', 0, '2021-04-06 00:06:30', NULL, NULL),
(63, 'EC', 'Ecuador', 0, '2021-04-06 00:06:30', NULL, NULL),
(64, 'EG', 'Egypt', 0, '2021-04-06 00:06:30', NULL, NULL),
(65, 'SV', 'El Salvador', 0, '2021-04-06 00:06:30', NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', 0, '2021-04-06 00:06:30', NULL, NULL),
(67, 'ER', 'Eritrea', 0, '2021-04-06 00:06:30', NULL, NULL),
(68, 'EE', 'Estonia', 0, '2021-04-06 00:06:30', NULL, NULL),
(69, 'ET', 'Ethiopia', 0, '2021-04-06 00:06:30', NULL, NULL),
(70, 'XA', 'External Territories of Australia', 0, '2021-04-06 00:06:30', NULL, NULL),
(71, 'FK', 'Falkland Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(72, 'FO', 'Faroe Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(73, 'FJ', 'Fiji Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(74, 'FI', 'Finland', 0, '2021-04-06 00:06:30', NULL, NULL),
(75, 'FR', 'France', 0, '2021-04-06 00:06:30', NULL, NULL),
(76, 'GF', 'French Guiana', 0, '2021-04-06 00:06:30', NULL, NULL),
(77, 'PF', 'French Polynesia', 0, '2021-04-06 00:06:30', NULL, NULL),
(78, 'TF', 'French Southern Territories', 0, '2021-04-06 00:06:30', NULL, NULL),
(79, 'GA', 'Gabon', 0, '2021-04-06 00:06:30', NULL, NULL),
(80, 'GM', 'Gambia The', 0, '2021-04-06 00:06:30', NULL, NULL),
(81, 'GE', 'Georgia', 0, '2021-04-06 00:06:30', NULL, NULL),
(82, 'DE', 'Germany', 0, '2021-04-06 00:06:30', NULL, NULL),
(83, 'GH', 'Ghana', 0, '2021-04-06 00:06:30', NULL, NULL),
(84, 'GI', 'Gibraltar', 0, '2021-04-06 00:06:30', NULL, NULL),
(85, 'GR', 'Greece', 0, '2021-04-06 00:06:30', NULL, NULL),
(86, 'GL', 'Greenland', 0, '2021-04-06 00:06:30', NULL, NULL),
(87, 'GD', 'Grenada', 0, '2021-04-06 00:06:30', NULL, NULL),
(88, 'GP', 'Guadeloupe', 0, '2021-04-06 00:06:30', NULL, NULL),
(89, 'GU', 'Guam', 0, '2021-04-06 00:06:30', NULL, NULL),
(90, 'GT', 'Guatemala', 0, '2021-04-06 00:06:30', NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', 0, '2021-04-06 00:06:30', NULL, NULL),
(92, 'GN', 'Guinea', 0, '2021-04-06 00:06:30', NULL, NULL),
(93, 'GW', 'Guinea-Bissau', 0, '2021-04-06 00:06:30', NULL, NULL),
(94, 'GY', 'Guyana', 0, '2021-04-06 00:06:30', NULL, NULL),
(95, 'HT', 'Haiti', 0, '2021-04-06 00:06:30', NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(97, 'HN', 'Honduras', 0, '2021-04-06 00:06:30', NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', 0, '2021-04-06 00:06:30', NULL, NULL),
(99, 'HU', 'Hungary', 0, '2021-04-06 00:06:30', NULL, NULL),
(100, 'IS', 'Iceland', 0, '2021-04-06 00:06:30', NULL, NULL),
(101, 'IN', 'India', 0, '2021-04-06 00:06:30', NULL, NULL),
(102, 'ID', 'Indonesia', 0, '2021-04-06 00:06:30', NULL, NULL),
(103, 'IR', 'Iran', 0, '2021-04-06 00:06:30', NULL, NULL),
(104, 'IQ', 'Iraq', 0, '2021-04-06 00:06:30', NULL, NULL),
(105, 'IE', 'Ireland', 0, '2021-04-06 00:06:30', NULL, NULL),
(106, 'IL', 'Israel', 0, '2021-04-06 00:06:30', NULL, NULL),
(107, 'IT', 'Italy', 0, '2021-04-06 00:06:30', NULL, NULL),
(108, 'JM', 'Jamaica', 0, '2021-04-06 00:06:30', NULL, NULL),
(109, 'JP', 'Japan', 0, '2021-04-06 00:06:30', NULL, NULL),
(110, 'XJ', 'Jersey', 0, '2021-04-06 00:06:30', NULL, NULL),
(111, 'JO', 'Jordan', 0, '2021-04-06 00:06:30', NULL, NULL),
(112, 'KZ', 'Kazakhstan', 0, '2021-04-06 00:06:30', NULL, NULL),
(113, 'KE', 'Kenya', 0, '2021-04-06 00:06:30', NULL, NULL),
(114, 'KI', 'Kiribati', 0, '2021-04-06 00:06:30', NULL, NULL),
(115, 'KP', 'Korea North', 0, '2021-04-06 00:06:30', NULL, NULL),
(116, 'KR', 'Korea South', 0, '2021-04-06 00:06:30', NULL, NULL),
(117, 'KW', 'Kuwait', 0, '2021-04-06 00:06:30', NULL, NULL),
(118, 'KG', 'Kyrgyzstan', 0, '2021-04-06 00:06:30', NULL, NULL),
(119, 'LA', 'Laos', 0, '2021-04-06 00:06:30', NULL, NULL),
(120, 'LV', 'Latvia', 0, '2021-04-06 00:06:30', NULL, NULL),
(121, 'LB', 'Lebanon', 0, '2021-04-06 00:06:30', NULL, NULL),
(122, 'LS', 'Lesotho', 0, '2021-04-06 00:06:30', NULL, NULL),
(123, 'LR', 'Liberia', 0, '2021-04-06 00:06:30', NULL, NULL),
(124, 'LY', 'Libya', 0, '2021-04-06 00:06:30', NULL, NULL),
(125, 'LI', 'Liechtenstein', 0, '2021-04-06 00:06:30', NULL, NULL),
(126, 'LT', 'Lithuania', 0, '2021-04-06 00:06:30', NULL, NULL),
(127, 'LU', 'Luxembourg', 0, '2021-04-06 00:06:30', NULL, NULL),
(128, 'MO', 'Macau S.A.R.', 0, '2021-04-06 00:06:30', NULL, NULL),
(129, 'MK', 'Macedonia', 0, '2021-04-06 00:06:30', NULL, NULL),
(130, 'MG', 'Madagascar', 0, '2021-04-06 00:06:30', NULL, NULL),
(131, 'MW', 'Malawi', 0, '2021-04-06 00:06:30', NULL, NULL),
(132, 'MY', 'Malaysia', 0, '2021-04-06 00:06:30', NULL, NULL),
(133, 'MV', 'Maldives', 0, '2021-04-06 00:06:30', NULL, NULL),
(134, 'ML', 'Mali', 0, '2021-04-06 00:06:30', NULL, NULL),
(135, 'MT', 'Malta', 0, '2021-04-06 00:06:30', NULL, NULL),
(136, 'XM', 'Man (Isle of)', 0, '2021-04-06 00:06:30', NULL, NULL),
(137, 'MH', 'Marshall Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(138, 'MQ', 'Martinique', 0, '2021-04-06 00:06:30', NULL, NULL),
(139, 'MR', 'Mauritania', 0, '2021-04-06 00:06:30', NULL, NULL),
(140, 'MU', 'Mauritius', 0, '2021-04-06 00:06:30', NULL, NULL),
(141, 'YT', 'Mayotte', 0, '2021-04-06 00:06:30', NULL, NULL),
(142, 'MX', 'Mexico', 0, '2021-04-06 00:06:30', NULL, NULL),
(143, 'FM', 'Micronesia', 0, '2021-04-06 00:06:30', NULL, NULL),
(144, 'MD', 'Moldova', 0, '2021-04-06 00:06:30', NULL, NULL),
(145, 'MC', 'Monaco', 0, '2021-04-06 00:06:30', NULL, NULL),
(146, 'MN', 'Mongolia', 0, '2021-04-06 00:06:30', NULL, NULL),
(147, 'MS', 'Montserrat', 0, '2021-04-06 00:06:30', NULL, NULL),
(148, 'MA', 'Morocco', 0, '2021-04-06 00:06:30', NULL, NULL),
(149, 'MZ', 'Mozambique', 0, '2021-04-06 00:06:30', NULL, NULL),
(150, 'MM', 'Myanmar', 0, '2021-04-06 00:06:30', NULL, NULL),
(151, 'NA', 'Namibia', 0, '2021-04-06 00:06:30', NULL, NULL),
(152, 'NR', 'Nauru', 0, '2021-04-06 00:06:30', NULL, NULL),
(153, 'NP', 'Nepal', 0, '2021-04-06 00:06:30', NULL, NULL),
(154, 'AN', 'Netherlands Antilles', 0, '2021-04-06 00:06:30', NULL, NULL),
(155, 'NL', 'Netherlands The', 0, '2021-04-06 00:06:30', NULL, NULL),
(156, 'NC', 'New Caledonia', 0, '2021-04-06 00:06:30', NULL, NULL),
(157, 'NZ', 'New Zealand', 0, '2021-04-06 00:06:30', NULL, NULL),
(158, 'NI', 'Nicaragua', 0, '2021-04-06 00:06:30', NULL, NULL),
(159, 'NE', 'Niger', 0, '2021-04-06 00:06:30', NULL, NULL),
(160, 'NG', 'Nigeria', 0, '2021-04-06 00:06:30', NULL, NULL),
(161, 'NU', 'Niue', 0, '2021-04-06 00:06:30', NULL, NULL),
(162, 'NF', 'Norfolk Island', 0, '2021-04-06 00:06:30', NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(164, 'NO', 'Norway', 0, '2021-04-06 00:06:30', NULL, NULL),
(165, 'OM', 'Oman', 0, '2021-04-06 00:06:30', NULL, NULL),
(166, 'PK', 'Pakistan', 0, '2021-04-06 00:06:30', NULL, NULL),
(167, 'PW', 'Palau', 0, '2021-04-06 00:06:30', NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', 0, '2021-04-06 00:06:30', NULL, NULL),
(169, 'PA', 'Panama', 0, '2021-04-06 00:06:30', NULL, NULL),
(170, 'PG', 'Papua new Guinea', 0, '2021-04-06 00:06:30', NULL, NULL),
(171, 'PY', 'Paraguay', 0, '2021-04-06 00:06:30', NULL, NULL),
(172, 'PE', 'Peru', 0, '2021-04-06 00:06:30', NULL, NULL),
(173, 'PH', 'Philippines', 0, '2021-04-06 00:06:30', NULL, NULL),
(174, 'PN', 'Pitcairn Island', 0, '2021-04-06 00:06:30', NULL, NULL),
(175, 'PL', 'Poland', 0, '2021-04-06 00:06:30', NULL, NULL),
(176, 'PT', 'Portugal', 0, '2021-04-06 00:06:30', NULL, NULL),
(177, 'PR', 'Puerto Rico', 0, '2021-04-06 00:06:30', NULL, NULL),
(178, 'QA', 'Qatar', 0, '2021-04-06 00:06:30', NULL, NULL),
(179, 'RE', 'Reunion', 0, '2021-04-06 00:06:30', NULL, NULL),
(180, 'RO', 'Romania', 0, '2021-04-06 00:06:30', NULL, NULL),
(181, 'RU', 'Russia', 0, '2021-04-06 00:06:30', NULL, NULL),
(182, 'RW', 'Rwanda', 0, '2021-04-06 00:06:30', NULL, NULL),
(183, 'SH', 'Saint Helena', 0, '2021-04-06 00:06:30', NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', 0, '2021-04-06 00:06:30', NULL, NULL),
(185, 'LC', 'Saint Lucia', 0, '2021-04-06 00:06:30', NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', 0, '2021-04-06 00:06:30', NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', 0, '2021-04-06 00:06:30', NULL, NULL),
(188, 'WS', 'Samoa', 0, '2021-04-06 00:06:30', NULL, NULL),
(189, 'SM', 'San Marino', 0, '2021-04-06 00:06:30', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', 0, '2021-04-06 00:06:30', NULL, NULL),
(191, 'SA', 'Saudi Arabia', 0, '2021-04-06 00:06:30', NULL, NULL),
(192, 'SN', 'Senegal', 0, '2021-04-06 00:06:30', NULL, NULL),
(193, 'RS', 'Serbia', 0, '2021-04-06 00:06:30', NULL, NULL),
(194, 'SC', 'Seychelles', 0, '2021-04-06 00:06:30', NULL, NULL),
(195, 'SL', 'Sierra Leone', 0, '2021-04-06 00:06:30', NULL, NULL),
(196, 'SG', 'Singapore', 0, '2021-04-06 00:06:30', NULL, NULL),
(197, 'SK', 'Slovakia', 0, '2021-04-06 00:06:30', NULL, NULL),
(198, 'SI', 'Slovenia', 0, '2021-04-06 00:06:30', NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', 0, '2021-04-06 00:06:30', NULL, NULL),
(200, 'SB', 'Solomon Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(201, 'SO', 'Somalia', 0, '2021-04-06 00:06:30', NULL, NULL),
(202, 'ZA', 'South Africa', 0, '2021-04-06 00:06:30', NULL, NULL),
(203, 'GS', 'South Georgia', 0, '2021-04-06 00:06:30', NULL, NULL),
(204, 'SS', 'South Sudan', 0, '2021-04-06 00:06:30', NULL, NULL),
(205, 'ES', 'Spain', 0, '2021-04-06 00:06:30', NULL, NULL),
(206, 'LK', 'Sri Lanka', 0, '2021-04-06 00:06:30', NULL, NULL),
(207, 'SD', 'Sudan', 0, '2021-04-06 00:06:30', NULL, NULL),
(208, 'SR', 'Suriname', 0, '2021-04-06 00:06:30', NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(210, 'SZ', 'Swaziland', 0, '2021-04-06 00:06:30', NULL, NULL),
(211, 'SE', 'Sweden', 0, '2021-04-06 00:06:30', NULL, NULL),
(212, 'CH', 'Switzerland', 0, '2021-04-06 00:06:30', NULL, NULL),
(213, 'SY', 'Syria', 0, '2021-04-06 00:06:30', NULL, NULL),
(214, 'TW', 'Taiwan', 0, '2021-04-06 00:06:30', NULL, NULL),
(215, 'TJ', 'Tajikistan', 0, '2021-04-06 00:06:30', NULL, NULL),
(216, 'TZ', 'Tanzania', 0, '2021-04-06 00:06:30', NULL, NULL),
(217, 'TH', 'Thailand', 0, '2021-04-06 00:06:30', NULL, NULL),
(218, 'TG', 'Togo', 0, '2021-04-06 00:06:30', NULL, NULL),
(219, 'TK', 'Tokelau', 0, '2021-04-06 00:06:30', NULL, NULL),
(220, 'TO', 'Tonga', 0, '2021-04-06 00:06:30', NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', 0, '2021-04-06 00:06:30', NULL, NULL),
(222, 'TN', 'Tunisia', 0, '2021-04-06 00:06:30', NULL, NULL),
(223, 'TR', 'Turkey', 0, '2021-04-06 00:06:30', NULL, NULL),
(224, 'TM', 'Turkmenistan', 0, '2021-04-06 00:06:30', NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(226, 'TV', 'Tuvalu', 0, '2021-04-06 00:06:30', NULL, NULL),
(227, 'UG', 'Uganda', 0, '2021-04-06 00:06:30', NULL, NULL),
(228, 'UA', 'Ukraine', 0, '2021-04-06 00:06:30', NULL, NULL),
(229, 'AE', 'United Arab Emirates', 0, '2021-04-06 00:06:30', NULL, NULL),
(230, 'GB', 'United Kingdom', 0, '2021-04-06 00:06:30', NULL, NULL),
(231, 'US', 'United States', 0, '2021-04-06 00:06:30', NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(233, 'UY', 'Uruguay', 0, '2021-04-06 00:06:30', NULL, NULL),
(234, 'UZ', 'Uzbekistan', 0, '2021-04-06 00:06:30', NULL, NULL),
(235, 'VU', 'Vanuatu', 0, '2021-04-06 00:06:30', NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', 0, '2021-04-06 00:06:30', NULL, NULL),
(237, 'VE', 'Venezuela', 0, '2021-04-06 00:06:30', NULL, NULL),
(238, 'VN', 'Vietnam', 0, '2021-04-06 00:06:30', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 0, '2021-04-06 00:06:30', NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', 0, '2021-04-06 00:06:30', NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', 0, '2021-04-06 00:06:30', NULL, NULL),
(242, 'EH', 'Western Sahara', 0, '2021-04-06 00:06:30', NULL, NULL),
(243, 'YE', 'Yemen', 0, '2021-04-06 00:06:30', NULL, NULL),
(244, 'YU', 'Yugoslavia', 0, '2021-04-06 00:06:30', NULL, NULL),
(245, 'ZM', 'Zambia', 0, '2021-04-06 00:06:30', NULL, NULL),
(246, 'ZW', 'Zimbabwe', 0, '2021-04-06 00:06:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `floating`
--

CREATE TABLE `floating` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `background_color_dark` varchar(200) NOT NULL,
  `icon_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `icon_color_dark` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `floating`
--

INSERT INTO `floating` (`id`, `title`, `type`, `icon`, `url`, `background_color`, `background_color_dark`, `icon_color`, `icon_color_dark`, `status`, `date`) VALUES
(1, 'Sale', 'url', 'floating_item_1.png', 'http://positifmobile.com/positifMobile/flyweb/demo/deals.html', '#7b50dc', '#ffffff', '#ffffff', '#000000', 1, '2021-06-11 18:22:30'),
(2, 'Notification', 'url', 'floating_item_2.png', 'http://positifmobile.com/positifMobile/flyweb/demo/cart.html', '#7b50dc', '#ffffff', '#ffffff', '#000000', 1, '2021-06-11 18:37:08'),
(3, 'Settings', 'url', 'floating_item_3.png', 'http://positifmobile.com/positifMobile/flyweb/demo/settings.html', '#7b50dc', '#ffffff', '#ffffff', '#000000', 1, '2021-06-11 19:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `floating_translations`
--

CREATE TABLE `floating_translations` (
  `id` bigint(20) NOT NULL,
  `floating_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `floating_translations`
--

INSERT INTO `floating_translations` (`id`, `floating_id`, `title`, `url`, `lang`, `created_at`, `updated_at`) VALUES
(12, 1, 'Sale', 'http://positifmobile.com/flyweb/demo/deals.html', 'en', '2022-05-09 21:00:06', '2022-05-09 21:00:06'),
(13, 1, 'تخفيض', 'http://positifmobile.com/flyweb/demo/deals.html', 'ar', '2022-07-25 11:33:26', '2022-07-25 11:33:26'),
(14, 1, 'Sale Tn', 'http://positifmobile.com/positifMobile/flyweb/demo/deals.html', '639-1', '2022-03-21 21:50:41', '2022-06-22 16:09:12'),
(15, 1, 'Test', 'http://positifmobile.com/flyweb/demo', '', '2022-04-03 13:21:18', '2022-06-22 16:09:12'),
(16, 2, 'إشعارات', 'http://positifmobile.com/flyweb/demo', 'ar', '2022-07-25 11:34:34', '2022-07-25 11:34:34'),
(17, 2, 'Notifications', 'http://positifmobile.com/flyweb/demo', 'en', '2022-05-09 21:07:47', '2022-06-22 16:09:12'),
(18, 3, 'Settings', 'http://positifmobile.com/flyweb/demo/settings.html', 'en', '2022-06-22 16:11:59', '2022-06-22 16:11:59'),
(19, 3, 'إعدادات', 'http://positifmobile.com/flyweb/demo/settings.html', 'ar', '2022-07-25 11:34:45', '2022-07-25 11:34:45'),
(20, 1, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in', '2022-06-21 19:21:17', '2022-06-22 16:09:12'),
(21, 2, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in', '2022-06-21 19:21:24', '2022-06-22 16:09:12'),
(22, 3, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in', '2022-06-21 19:21:30', '2022-06-22 16:09:12'),
(23, 1, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in language', '2022-06-21 19:23:14', '2022-06-22 16:09:12'),
(24, 2, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in language', '2022-06-21 19:23:23', '2022-06-22 16:09:12'),
(25, 3, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in language', '2022-06-21 19:23:32', '2022-06-22 16:09:12'),
(26, 1, 'बिक्री', 'http://positifmobile.com/flyweb/demo/deals.html', 'hi', '2022-07-25 11:34:15', '2022-07-25 11:34:15'),
(27, 1, 'Распродажа', 'http://positifmobile.com/flyweb/demo/deals.html', 'ru', '2022-07-25 11:34:03', '2022-07-25 11:34:03'),
(28, 1, 'Satış', 'http://positifmobile.com/flyweb/demo/deals.html', 'tr', '2022-06-22 16:08:59', '2022-06-22 16:08:59'),
(29, 1, 'Vendita', 'http://positifmobile.com/flyweb/demo/deals.html', 'it', '2022-06-22 16:08:44', '2022-06-22 16:08:44'),
(30, 1, 'Verkauf', 'http://positifmobile.com/flyweb/demo/deals.html', 'de', '2022-06-22 16:08:28', '2022-06-22 16:08:28'),
(31, 1, 'Sale', 'http://positifmobile.com/flyweb/demo/deals.html', 'pt', '2022-07-25 10:32:36', '2022-07-25 10:32:36'),
(32, 1, 'Vente', 'http://positifmobile.com/flyweb/demo/deals.html', 'fr', '2022-06-22 16:07:57', '2022-06-22 16:07:57'),
(33, 1, 'Rebaja', 'http://positifmobile.com/flyweb/demo/deals.html', 'es', '2022-06-22 16:07:42', '2022-06-22 16:07:42'),
(34, 2, 'Notificaciones', 'http://positifmobile.com/flyweb/demo', 'es', '2022-06-22 16:10:15', '2022-06-22 16:10:15'),
(35, 2, 'Notifications', 'http://positifmobile.com/flyweb/demo', 'fr', '2022-06-22 16:09:57', '2022-06-22 16:09:57'),
(36, 2, 'Notifications', 'http://positifmobile.com/flyweb/demo', 'pt', '2022-07-25 10:29:39', '2022-07-25 10:29:39'),
(37, 2, 'Benachrichtigungen', 'http://positifmobile.com/flyweb/demo', 'de', '2022-06-22 16:09:06', '2022-06-22 16:09:06'),
(38, 2, 'Notifiche', 'http://positifmobile.com/flyweb/demo', 'it', '2022-06-22 16:08:51', '2022-06-22 16:08:51'),
(39, 2, 'Bildirimler', 'http://positifmobile.com/flyweb/demo', 'tr', '2022-06-22 16:08:36', '2022-06-22 16:08:36'),
(40, 2, 'Уведомления', 'http://positifmobile.com/flyweb/demo', 'ru', '2022-07-25 11:34:13', '2022-07-25 11:34:13'),
(41, 2, 'सूचनाएं', 'http://positifmobile.com/flyweb/demo', 'hi', '2022-07-25 11:33:56', '2022-07-25 11:33:56'),
(42, 3, 'Ajustes', 'http://positifmobile.com/flyweb/demo/settings.html', 'es', '2022-06-22 16:14:58', '2022-06-22 16:14:58'),
(43, 3, 'Réglages', 'http://positifmobile.com/flyweb/demo/settings.html', 'fr', '2022-07-25 11:35:01', '2022-07-25 11:35:01'),
(44, 3, 'Settings', 'http://positifmobile.com/flyweb/demo/settings.html', 'pt', '2022-07-25 10:29:47', '2022-07-25 10:29:47'),
(45, 3, 'Einstellungen', 'http://positifmobile.com/flyweb/demo/settings.html', 'de', '2022-06-22 16:14:11', '2022-06-22 16:14:11'),
(46, 3, 'Impostazioni', 'http://positifmobile.com/flyweb/demo/settings.html', 'it', '2022-06-22 16:13:57', '2022-06-22 16:13:57'),
(47, 3, 'Ayarlar', 'http://positifmobile.com/flyweb/demo/settings.html', 'tr', '2022-06-22 16:13:42', '2022-06-22 16:13:42'),
(48, 3, 'Настройки', 'http://positifmobile.com/flyweb/demo/settings.html', 'ru', '2022-07-25 11:35:34', '2022-07-25 11:35:34'),
(49, 3, 'समायोजन', 'http://positifmobile.com/flyweb/demo/settings.html', 'hi', '2022-07-25 11:35:50', '2022-07-25 11:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `google_font`
--

CREATE TABLE `google_font` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `google_font`
--

INSERT INTO `google_font` (`id`, `title`) VALUES
(1, 'ABeeZee'),
(2, 'Abel'),
(3, 'Abhaya Libre'),
(4, 'Abril Fatface'),
(5, 'Aclonica'),
(6, 'Acme'),
(7, 'Actor'),
(8, 'Adamina'),
(9, 'Advent Pro'),
(10, 'Aguafina Script'),
(11, 'Akronim'),
(12, 'Aladin'),
(13, 'Alata'),
(14, 'Alatsi'),
(15, 'Aldrich'),
(16, 'Alef'),
(17, 'Alegreya'),
(18, 'Alegreya SC'),
(19, 'Alegreya Sans'),
(20, 'Alegreya Sans SC'),
(21, 'Aleo'),
(22, 'Alex Brush'),
(23, 'Alfa Slab One'),
(24, 'Alice'),
(25, 'Alike'),
(26, 'Alike Angular'),
(27, 'Allan'),
(28, 'Allerta'),
(29, 'Allerta Stencil'),
(30, 'Allura'),
(31, 'Almarai'),
(32, 'Almendra'),
(33, 'Almendra Display'),
(34, 'Almendra SC'),
(35, 'Amarante'),
(36, 'Amaranth'),
(37, 'Amatic SC'),
(38, 'Amatica SC'),
(39, 'Amethysta'),
(40, 'Amiko'),
(41, 'Amiri'),
(42, 'Amita'),
(43, 'Anaheim'),
(44, 'Andada'),
(45, 'Andika'),
(46, 'Andika New Basic'),
(47, 'Annie Use Your Telescope'),
(48, 'Anonymous Pro'),
(49, 'Antic'),
(50, 'Antic Didone'),
(51, 'Antic Slab'),
(52, 'Anton'),
(53, 'Arapey'),
(54, 'Arbutus'),
(55, 'Arbutus Slab'),
(56, 'Architects Daughter'),
(57, 'Archivo'),
(58, 'Archivo Black'),
(59, 'Archivo Narrow'),
(60, 'Aref Ruqaa'),
(61, 'Arima Madurai'),
(62, 'Arimo'),
(63, 'Arizonia'),
(64, 'Armata'),
(65, 'Arsenal'),
(66, 'Artifika'),
(67, 'Arvo'),
(68, 'Arya'),
(69, 'Asap'),
(70, 'Asar'),
(71, 'Asset'),
(72, 'Assistant'),
(73, 'Astloch'),
(74, 'Asul'),
(75, 'Athiti'),
(76, 'Atma'),
(77, 'Atomic Age'),
(78, 'Aubrey'),
(79, 'Audiowide'),
(80, 'Autour One'),
(81, 'Average'),
(82, 'Average Sans'),
(83, 'Averia Gruesa Libre'),
(84, 'Averia Libre'),
(85, 'Averia Sans Libre'),
(86, 'Averia Serif Libre'),
(87, 'B612'),
(88, 'B612 Mono'),
(89, 'Bad Script'),
(90, 'Bahiana'),
(91, 'Bahianita'),
(92, 'Bai Jamjuree'),
(93, 'Baloo'),
(94, 'Baloo Bhai'),
(95, 'Baloo Bhaijaan'),
(96, 'Baloo Bhaina'),
(97, 'Baloo Chettan'),
(98, 'Baloo Da'),
(99, 'Baloo Paaji'),
(100, 'Baloo Tamma'),
(101, 'Baloo Tammudu'),
(102, 'Baloo Thambi'),
(103, 'Balsamiq Sans'),
(104, 'Balthazar'),
(105, 'Bangers'),
(106, 'Barlow'),
(107, 'Barlow Condensed'),
(108, 'Barlow Semi Condensed'),
(109, 'Barriecito'),
(110, 'Barrio'),
(111, 'Basic'),
(112, 'Baskervville'),
(113, 'Baumans'),
(114, 'Be Vietnam'),
(115, 'Bebas Neue'),
(116, 'Belgrano'),
(117, 'Bellefair'),
(118, 'Belleza'),
(119, 'Bellota'),
(120, 'Bellota Text'),
(121, 'BenchNine'),
(122, 'Bentham'),
(123, 'Berkshire Swash'),
(124, 'Beth Ellen'),
(125, 'Bevan'),
(126, 'Big Shoulders Display'),
(127, 'Big Shoulders Inline Display'),
(128, 'Big Shoulders Inline Text'),
(129, 'Big Shoulders Stencil Display'),
(130, 'Big Shoulders Stencil Text'),
(131, 'Big Shoulders Text'),
(132, 'Bigelow Rules'),
(133, 'Bigshot One'),
(134, 'Bilbo'),
(135, 'Bilbo Swash Caps'),
(136, 'BioRhyme'),
(137, 'BioRhyme Expanded'),
(138, 'Biryani'),
(139, 'Bitter'),
(140, 'Black And White Picture'),
(141, 'Black Han Sans'),
(142, 'Black Ops One'),
(143, 'Blinker'),
(144, 'Bonbon'),
(145, 'Boogaloo'),
(146, 'Bowlby One'),
(147, 'Bowlby One SC'),
(148, 'Brawler'),
(149, 'Bree Serif'),
(150, 'Bubblegum Sans'),
(151, 'Bubbler One'),
(152, 'Buda'),
(153, 'Buenard'),
(154, 'Bungee'),
(155, 'Bungee Hairline'),
(156, 'Bungee Inline'),
(157, 'Bungee Outline'),
(158, 'Bungee Shade'),
(159, 'Butcherman'),
(160, 'Butterfly Kids'),
(161, 'Cabin'),
(162, 'Cabin Condensed'),
(163, 'Cabin Sketch'),
(164, 'Caesar Dressing'),
(165, 'Cagliostro'),
(166, 'Cairo'),
(167, 'Caladea'),
(168, 'Calistoga'),
(169, 'Calligraffitti'),
(170, 'Cambay'),
(171, 'Cambo'),
(172, 'Candal'),
(173, 'Cantarell'),
(174, 'Cantata One'),
(175, 'Cantora One'),
(176, 'Capriola'),
(177, 'Cardo'),
(178, 'Carme'),
(179, 'Carrois Gothic'),
(180, 'Carrois Gothic SC'),
(181, 'Carter One'),
(182, 'Castoro'),
(183, 'Catamaran'),
(184, 'Caudex'),
(185, 'Caveat'),
(186, 'Caveat Brush'),
(187, 'Cedarville Cursive'),
(188, 'Ceviche One'),
(189, 'Chakra Petch'),
(190, 'Changa'),
(191, 'Changa One'),
(192, 'Chango'),
(193, 'Charm'),
(194, 'Charmonman'),
(195, 'Chathura'),
(196, 'Chau Philomene One'),
(197, 'Chela One'),
(198, 'Chelsea Market'),
(199, 'Cherry Cream Soda'),
(200, 'Cherry Swash'),
(201, 'Chewy'),
(202, 'Chicle'),
(203, 'Chilanka'),
(204, 'Chivo'),
(205, 'Chonburi'),
(206, 'Cinzel'),
(207, 'Cinzel Decorative'),
(208, 'Clicker Script'),
(209, 'Coda'),
(210, 'Coda Caption'),
(211, 'Codystar'),
(212, 'Coiny'),
(213, 'Combo'),
(214, 'Comfortaa'),
(215, 'Comic Neue'),
(216, 'Coming Soon'),
(217, 'Commissioner'),
(218, 'Concert One'),
(219, 'Condiment'),
(220, 'Contrail One'),
(221, 'Convergence'),
(222, 'Cookie'),
(223, 'Copse'),
(224, 'Corben'),
(225, 'Cormorant'),
(226, 'Cormorant Garamond'),
(227, 'Cormorant Infant'),
(228, 'Cormorant SC'),
(229, 'Cormorant Unicase'),
(230, 'Cormorant Upright'),
(231, 'Courgette'),
(232, 'Courier Prime'),
(233, 'Cousine'),
(234, 'Coustard'),
(235, 'Covered By Your Grace'),
(236, 'Crafty Girls'),
(237, 'Creepster'),
(238, 'Crete Round'),
(239, 'Crimson Pro'),
(240, 'Crimson Text'),
(241, 'Croissant One'),
(242, 'Crushed'),
(243, 'Cuprum'),
(244, 'Cute Font'),
(245, 'Cutive'),
(246, 'Cutive Mono'),
(247, 'DM Mono'),
(248, 'DM Sans'),
(249, 'DM Serif Display'),
(250, 'DM Serif Text'),
(251, 'Damion'),
(252, 'Dancing Script'),
(253, 'Darker Grotesque'),
(254, 'David Libre'),
(255, 'Dawning of a New Day'),
(256, 'Days One'),
(257, 'Dekko'),
(258, 'Delius'),
(259, 'Delius Swash Caps'),
(260, 'Delius Unicase'),
(261, 'Della Respira'),
(262, 'Denk One'),
(263, 'Devonshire'),
(264, 'Dhurjati'),
(265, 'Didact Gothic'),
(266, 'Diplomata'),
(267, 'Diplomata SC'),
(268, 'Do Hyeon'),
(269, 'Dokdo'),
(270, 'Domine'),
(271, 'Donegal One'),
(272, 'Doppio One'),
(273, 'Dorsa'),
(274, 'Dosis'),
(275, 'Dr Sugiyama'),
(276, 'Droid Sans'),
(277, 'Droid Sans Mono'),
(278, 'Droid Serif'),
(279, 'Duru Sans'),
(280, 'Dynalight'),
(281, 'EB Garamond'),
(282, 'Eagle Lake'),
(283, 'East Sea Dokdo'),
(284, 'Eater'),
(285, 'Economica'),
(286, 'Eczar'),
(287, 'El Messiri'),
(288, 'Electrolize'),
(289, 'Elsie'),
(290, 'Elsie Swash Caps'),
(291, 'Emblema One'),
(292, 'Emilys Candy'),
(293, 'Encode Sans'),
(294, 'Encode Sans Condensed'),
(295, 'Encode Sans Expanded'),
(296, 'Encode Sans Semi Condensed'),
(297, 'Encode Sans Semi Expanded'),
(298, 'Engagement'),
(299, 'Englebert'),
(300, 'Enriqueta'),
(301, 'Epilogue'),
(302, 'Erica One'),
(303, 'Esteban'),
(304, 'Euphoria Script'),
(305, 'Ewert'),
(306, 'Exo'),
(307, 'Exo 2'),
(308, 'Expletus Sans'),
(309, 'Fahkwang'),
(310, 'Fanwood Text'),
(311, 'Farro'),
(312, 'Farsan'),
(313, 'Fascinate'),
(314, 'Fascinate Inline'),
(315, 'Faster One'),
(316, 'Fauna One'),
(317, 'Faustina'),
(318, 'Federant'),
(319, 'Federo'),
(320, 'Felipa'),
(321, 'Fenix'),
(322, 'Finger Paint'),
(323, 'Fira Code'),
(324, 'Fira Mono'),
(325, 'Fira Sans'),
(326, 'Fira Sans Condensed'),
(327, 'Fira Sans Extra Condensed'),
(328, 'Fjalla One'),
(329, 'Fjord One'),
(330, 'Flamenco'),
(331, 'Flavors'),
(332, 'Fondamento'),
(333, 'Fontdiner Swanky'),
(334, 'Forum'),
(335, 'Francois One'),
(336, 'Frank Ruhl Libre'),
(337, 'Fraunces'),
(338, 'Freckle Face'),
(339, 'Fredericka the Great'),
(340, 'Fredoka One'),
(341, 'Fresca'),
(342, 'Frijole'),
(343, 'Fruktur'),
(344, 'Fugaz One'),
(345, 'GFS Didot'),
(346, 'GFS Neohellenic'),
(347, 'Gabriela'),
(348, 'Gaegu'),
(349, 'Gafata'),
(350, 'Galada'),
(351, 'Galdeano'),
(352, 'Galindo'),
(353, 'Gamja Flower'),
(354, 'Gayathri'),
(355, 'Gelasio'),
(356, 'Gentium Basic'),
(357, 'Gentium Book Basic'),
(358, 'Geo'),
(359, 'Geostar'),
(360, 'Geostar Fill'),
(361, 'Germania One'),
(362, 'Gidugu'),
(363, 'Gilda Display'),
(364, 'Girassol'),
(365, 'Give You Glory'),
(366, 'Glass Antiqua'),
(367, 'Glegoo'),
(368, 'Gloria Hallelujah'),
(369, 'Goblin One'),
(370, 'Gochi Hand'),
(371, 'Goldman'),
(372, 'Gorditas'),
(373, 'Gothic A1'),
(374, 'Gotu'),
(375, 'Goudy Bookletter 1911'),
(376, 'Graduate'),
(377, 'Grand Hotel'),
(378, 'Grandstander'),
(379, 'Gravitas One'),
(380, 'Great Vibes'),
(381, 'Grenze'),
(382, 'Grenze Gotisch'),
(383, 'Griffy'),
(384, 'Gruppo'),
(385, 'Gudea'),
(386, 'Gugi'),
(387, 'Gupter'),
(388, 'Gurajada'),
(389, 'Habibi'),
(390, 'Hachi Maru Pop'),
(391, 'Halant'),
(392, 'Hammersmith One'),
(393, 'Hanalei'),
(394, 'Hanalei Fill'),
(395, 'Handlee'),
(396, 'Happy Monkey'),
(397, 'Harmattan'),
(398, 'Headland One'),
(399, 'Heebo'),
(400, 'Henny Penny'),
(401, 'Hepta Slab'),
(402, 'Herr Von Muellerhoff'),
(403, 'Hi Melody'),
(404, 'Hind'),
(405, 'Hind Guntur'),
(406, 'Hind Madurai'),
(407, 'Hind Siliguri'),
(408, 'Hind Vadodara'),
(409, 'Holtwood One SC'),
(410, 'Homemade Apple'),
(411, 'Homenaje'),
(412, 'IBM Plex Mono'),
(413, 'IBM Plex Sans'),
(414, 'IBM Plex Sans Condensed'),
(415, 'IBM Plex Serif'),
(416, 'IM Fell DW Pica'),
(417, 'IM Fell DW Pica SC'),
(418, 'IM Fell Double Pica'),
(419, 'IM Fell Double Pica SC'),
(420, 'IM Fell English'),
(421, 'IM Fell English SC'),
(422, 'IM Fell French Canon'),
(423, 'IM Fell French Canon SC'),
(424, 'IM Fell Great Primer'),
(425, 'IM Fell Great Primer SC'),
(426, 'Ibarra Real Nova'),
(427, 'Iceberg'),
(428, 'Iceland'),
(429, 'Imprima'),
(430, 'Inconsolata'),
(431, 'Inder'),
(432, 'Indie Flower'),
(433, 'Inika'),
(434, 'Inknut Antiqua'),
(435, 'Inria Sans'),
(436, 'Inria Serif'),
(437, 'Inter'),
(438, 'Irish Grover'),
(439, 'Istok Web'),
(440, 'Italiana'),
(441, 'Italianno'),
(442, 'Itim'),
(443, 'Jacques Francois'),
(444, 'Jacques Francois Shadow'),
(445, 'Jaldi'),
(446, 'JetBrains Mono'),
(447, 'Jim Nightshade'),
(448, 'Jockey One'),
(449, 'Jolly Lodger'),
(450, 'Jomhuria'),
(451, 'Jomolhari'),
(452, 'Josefin Sans'),
(453, 'Josefin Slab'),
(454, 'Jost'),
(455, 'Joti One'),
(456, 'Jua'),
(457, 'Judson'),
(458, 'Julee'),
(459, 'Julius Sans One'),
(460, 'Junge'),
(461, 'Jura'),
(462, 'Just Another Hand'),
(463, 'Just Me Again Down Here'),
(464, 'K2D'),
(465, 'Kadwa'),
(466, 'Kalam'),
(467, 'Kameron'),
(468, 'Kanit'),
(469, 'Kantumruy'),
(470, 'Karla'),
(471, 'Karma'),
(472, 'Katibeh'),
(473, 'Kaushan Script'),
(474, 'Kavivanar'),
(475, 'Kavoon'),
(476, 'Kdam Thmor'),
(477, 'Keania One'),
(478, 'Kelly Slab'),
(479, 'Kenia'),
(480, 'Khand'),
(481, 'Khula'),
(482, 'Kirang Haerang'),
(483, 'Kite One'),
(484, 'Knewave'),
(485, 'KoHo'),
(486, 'Kodchasan'),
(487, 'Kosugi'),
(488, 'Kosugi Maru'),
(489, 'Kotta One'),
(490, 'Kranky'),
(491, 'Kreon'),
(492, 'Kristi'),
(493, 'Krona One'),
(494, 'Krub'),
(495, 'Kufam'),
(496, 'Kulim Park'),
(497, 'Kumar One'),
(498, 'Kumar One Outline'),
(499, 'Kumbh Sans'),
(500, 'Kurale'),
(501, 'La Belle Aurore'),
(502, 'Lacquer'),
(503, 'Laila'),
(504, 'Lakki Reddy'),
(505, 'Lalezar'),
(506, 'Lancelot'),
(507, 'Langar'),
(508, 'Lateef'),
(509, 'Lato'),
(510, 'League Script'),
(511, 'Leckerli One'),
(512, 'Ledger'),
(513, 'Lekton'),
(514, 'Lemon'),
(515, 'Lemonada'),
(516, 'Lexend Deca'),
(517, 'Lexend Exa'),
(518, 'Lexend Giga'),
(519, 'Lexend Mega'),
(520, 'Lexend Peta'),
(521, 'Lexend Tera'),
(522, 'Lexend Zetta'),
(523, 'Libre Barcode 128'),
(524, 'Libre Barcode 128 Text'),
(525, 'Libre Barcode 39'),
(526, 'Libre Barcode 39 Extended'),
(527, 'Libre Barcode 39 Extended Text'),
(528, 'Libre Barcode 39 Text'),
(529, 'Libre Baskerville'),
(530, 'Libre Caslon Display'),
(531, 'Libre Caslon Text'),
(532, 'Libre Franklin'),
(533, 'Life Savers'),
(534, 'Lilita One'),
(535, 'Lily Script One'),
(536, 'Limelight'),
(537, 'Linden Hill'),
(538, 'Literata'),
(539, 'Liu Jian Mao Cao'),
(540, 'Livvic'),
(541, 'Lobster'),
(542, 'Lobster Two'),
(543, 'Londrina Outline'),
(544, 'Londrina Shadow'),
(545, 'Londrina Sketch'),
(546, 'Londrina Solid'),
(547, 'Long Cang'),
(548, 'Lora'),
(549, 'Love Ya Like A Sister'),
(550, 'Loved by the King'),
(551, 'Lovers Quarrel'),
(552, 'Luckiest Guy'),
(553, 'Lusitana'),
(554, 'Lustria'),
(555, 'M PLUS 1p'),
(556, 'M PLUS Rounded 1c'),
(557, 'Ma Shan Zheng'),
(558, 'Macondo'),
(559, 'Macondo Swash Caps'),
(560, 'Mada'),
(561, 'Magra'),
(562, 'Maiden Orange'),
(563, 'Maitree'),
(564, 'Major Mono Display'),
(565, 'Mako'),
(566, 'Mali'),
(567, 'Mallanna'),
(568, 'Mandali'),
(569, 'Manjari'),
(570, 'Manrope'),
(571, 'Mansalva'),
(572, 'Manuale'),
(573, 'Marcellus'),
(574, 'Marcellus SC'),
(575, 'Marck Script'),
(576, 'Margarine'),
(577, 'Markazi Text'),
(578, 'Marko One'),
(579, 'Marmelad'),
(580, 'Martel'),
(581, 'Martel Sans'),
(582, 'Marvel'),
(583, 'Mate'),
(584, 'Mate SC'),
(585, 'Maven Pro'),
(586, 'McLaren'),
(587, 'Meddon'),
(588, 'MedievalSharp'),
(589, 'Medula One'),
(590, 'Meera Inimai'),
(591, 'Megrim'),
(592, 'Meie Script'),
(593, 'Merienda'),
(594, 'Merienda One'),
(595, 'Merriweather'),
(596, 'Merriweather Sans'),
(597, 'Metal Mania'),
(598, 'Metamorphous'),
(599, 'Metrophobic'),
(600, 'Michroma'),
(601, 'Milonga'),
(602, 'Miltonian'),
(603, 'Miltonian Tattoo'),
(604, 'Mina'),
(605, 'Miniver'),
(606, 'Miriam Libre'),
(607, 'Mirza'),
(608, 'Miss Fajardose'),
(609, 'Mitr'),
(610, 'Modak'),
(611, 'Modern Antiqua'),
(612, 'Mogra'),
(613, 'Molengo'),
(614, 'Molle'),
(615, 'Monda'),
(616, 'Monofett'),
(617, 'Monoton'),
(618, 'Monsieur La Doulaise'),
(619, 'Montaga'),
(620, 'Montez'),
(621, 'Montserrat'),
(622, 'Montserrat Alternates'),
(623, 'Montserrat Subrayada'),
(624, 'Mountains of Christmas'),
(625, 'Mouse Memoirs'),
(626, 'Mr Bedfort'),
(627, 'Mr Dafoe'),
(628, 'Mr De Haviland'),
(629, 'Mrs Saint Delafield'),
(630, 'Mrs Sheppards'),
(631, 'Mukta'),
(632, 'Mukta Mahee'),
(633, 'Mukta Malar'),
(634, 'Mukta Vaani'),
(635, 'Mulish'),
(636, 'MuseoModerno'),
(637, 'Mystery Quest'),
(638, 'NTR'),
(639, 'Nanum Brush Script'),
(640, 'Nanum Gothic'),
(641, 'Nanum Gothic Coding'),
(642, 'Nanum Myeongjo'),
(643, 'Nanum Pen Script'),
(644, 'Nerko One'),
(645, 'Neucha'),
(646, 'Neuton'),
(647, 'New Rocker'),
(648, 'News Cycle'),
(649, 'Niconne'),
(650, 'Niramit'),
(651, 'Nixie One'),
(652, 'Nobile'),
(653, 'Norican'),
(654, 'Nosifer'),
(655, 'Notable'),
(656, 'Nothing You Could Do'),
(657, 'Noticia Text'),
(658, 'Noto Color Emoji Compat'),
(659, 'Noto Sans'),
(660, 'Noto Serif'),
(661, 'Nova Cut'),
(662, 'Nova Flat'),
(663, 'Nova Mono'),
(664, 'Nova Oval'),
(665, 'Nova Round'),
(666, 'Nova Script'),
(667, 'Nova Slim'),
(668, 'Nova Square'),
(669, 'Numans'),
(670, 'Nunito'),
(671, 'Nunito Sans'),
(672, 'Odibee Sans'),
(673, 'Odor Mean Chey'),
(674, 'Offside'),
(675, 'Old Standard TT'),
(676, 'Oldenburg'),
(677, 'Oleo Script'),
(678, 'Oleo Script Swash Caps'),
(679, 'Open Sans'),
(680, 'Open Sans Condensed'),
(681, 'Oranienbaum'),
(682, 'Orbitron'),
(683, 'Oregano'),
(684, 'Orienta'),
(685, 'Original Surfer'),
(686, 'Oswald'),
(687, 'Over the Rainbow'),
(688, 'Overlock'),
(689, 'Overlock SC'),
(690, 'Overpass'),
(691, 'Overpass Mono'),
(692, 'Ovo'),
(693, 'Oxanium'),
(694, 'Oxygen'),
(695, 'Oxygen Mono'),
(696, 'PT Mono'),
(697, 'PT Sans'),
(698, 'PT Sans Caption'),
(699, 'PT Sans Narrow'),
(700, 'PT Serif'),
(701, 'PT Serif Caption'),
(702, 'Pacifico'),
(703, 'Padauk'),
(704, 'Palanquin'),
(705, 'Palanquin Dark'),
(706, 'Pangolin'),
(707, 'Paprika'),
(708, 'Parisienne'),
(709, 'Passero One'),
(710, 'Passion One'),
(711, 'Pathway Gothic One'),
(712, 'Patrick Hand'),
(713, 'Patrick Hand SC'),
(714, 'Pattaya'),
(715, 'Patua One'),
(716, 'Pavanam'),
(717, 'Paytone One'),
(718, 'Peddana'),
(719, 'Peralta'),
(720, 'Permanent Marker'),
(721, 'Petit Formal Script'),
(722, 'Petrona'),
(723, 'Philosopher'),
(724, 'Piazzolla'),
(725, 'Piedra'),
(726, 'Pinyon Script'),
(727, 'Pirata One'),
(728, 'Plaster'),
(729, 'Play'),
(730, 'Playball'),
(731, 'Playfair Display'),
(732, 'Playfair Display SC'),
(733, 'Podkova'),
(734, 'Poiret One'),
(735, 'Poller One'),
(736, 'Poly'),
(737, 'Pompiere'),
(738, 'Pontano Sans'),
(739, 'Poor Story'),
(740, 'Poppins'),
(741, 'Port Lligat Sans'),
(742, 'Port Lligat Slab'),
(743, 'Potta One'),
(744, 'Pragati Narrow'),
(745, 'Prata'),
(746, 'Press Start 2P'),
(747, 'Pridi'),
(748, 'Princess Sofia'),
(749, 'Prociono'),
(750, 'Prompt'),
(751, 'Prosto One'),
(752, 'Proza Libre'),
(753, 'Public Sans'),
(754, 'Puritan'),
(755, 'Purple Purse'),
(756, 'Quando'),
(757, 'Quantico'),
(758, 'Quattrocento'),
(759, 'Quattrocento Sans'),
(760, 'Questrial'),
(761, 'Quicksand'),
(762, 'Quintessential'),
(763, 'Qwigley'),
(764, 'Racing Sans One'),
(765, 'Radley'),
(766, 'Rajdhani'),
(767, 'Rakkas'),
(768, 'Raleway'),
(769, 'Raleway Dots'),
(770, 'Ramabhadra'),
(771, 'Ramaraja'),
(772, 'Rambla'),
(773, 'Rammetto One'),
(774, 'Ranchers'),
(775, 'Rancho'),
(776, 'Ranga'),
(777, 'Rasa'),
(778, 'Rationale'),
(779, 'Ravi Prakash'),
(780, 'Recursive'),
(781, 'Red Hat Display'),
(782, 'Red Hat Text'),
(783, 'Red Rose'),
(784, 'Redressed'),
(785, 'Reem Kufi'),
(786, 'Reenie Beanie'),
(787, 'Revalia'),
(788, 'Rhodium Libre'),
(789, 'Ribeye'),
(790, 'Ribeye Marrow'),
(791, 'Righteous'),
(792, 'Risque'),
(793, 'Roboto'),
(794, 'Roboto Condensed'),
(795, 'Roboto Mono'),
(796, 'Roboto Slab'),
(797, 'Rochester'),
(798, 'Rock Salt'),
(799, 'Rokkitt'),
(800, 'Romanesco'),
(801, 'Ropa Sans'),
(802, 'Rosario'),
(803, 'Rosarivo'),
(804, 'Rouge Script'),
(805, 'Rowdies'),
(806, 'Rozha One'),
(807, 'Rubik'),
(808, 'Rubik Mono One'),
(809, 'Ruda'),
(810, 'Rufina'),
(811, 'Ruge Boogie'),
(812, 'Ruluko'),
(813, 'Rum Raisin'),
(814, 'Ruslan Display'),
(815, 'Russo One'),
(816, 'Ruthie'),
(817, 'Rye'),
(818, 'Sacramento'),
(819, 'Sahitya'),
(820, 'Sail'),
(821, 'Saira'),
(822, 'Saira Condensed'),
(823, 'Saira Extra Condensed'),
(824, 'Saira Semi Condensed'),
(825, 'Saira Stencil One'),
(826, 'Salsa'),
(827, 'Sanchez'),
(828, 'Sancreek'),
(829, 'Sansita'),
(830, 'Sansita Swashed'),
(831, 'Sarabun'),
(832, 'Sarala'),
(833, 'Sarina'),
(834, 'Sarpanch'),
(835, 'Satisfy'),
(836, 'Sawarabi Gothic'),
(837, 'Sawarabi Mincho'),
(838, 'Scada'),
(839, 'Scheherazade'),
(840, 'Schoolbell'),
(841, 'Scope One'),
(842, 'Seaweed Script'),
(843, 'Secular One'),
(844, 'Sedgwick Ave'),
(845, 'Sedgwick Ave Display'),
(846, 'Sen'),
(847, 'Sevillana'),
(848, 'Seymour One'),
(849, 'Shadows Into Light'),
(850, 'Shadows Into Light Two'),
(851, 'Shanti'),
(852, 'Share'),
(853, 'Share Tech'),
(854, 'Share Tech Mono'),
(855, 'Shojumaru'),
(856, 'Short Stack'),
(857, 'Shrikhand'),
(858, 'Sigmar One'),
(859, 'Signika'),
(860, 'Signika Negative'),
(861, 'Simonetta'),
(862, 'Single Day'),
(863, 'Sintony'),
(864, 'Sirin Stencil'),
(865, 'Six Caps'),
(866, 'Skranji'),
(867, 'Slabo 13px'),
(868, 'Slabo 27px'),
(869, 'Slackey'),
(870, 'Smokum'),
(871, 'Smythe'),
(872, 'Sniglet'),
(873, 'Snippet'),
(874, 'Snowburst One'),
(875, 'Sofadi One'),
(876, 'Sofia'),
(877, 'Solway'),
(878, 'Song Myung'),
(879, 'Sonsie One'),
(880, 'Sora'),
(881, 'Sorts Mill Goudy'),
(882, 'Source Code Pro'),
(883, 'Source Sans Pro'),
(884, 'Source Serif Pro'),
(885, 'Space Grotesk'),
(886, 'Space Mono'),
(887, 'Spartan'),
(888, 'Special Elite'),
(889, 'Spectral'),
(890, 'Spectral SC'),
(891, 'Spicy Rice'),
(892, 'Spinnaker'),
(893, 'Spirax'),
(894, 'Squada One'),
(895, 'Sree Krushnadevaraya'),
(896, 'Sriracha'),
(897, 'Srisakdi'),
(898, 'Staatliches'),
(899, 'Stalemate'),
(900, 'Stalinist One'),
(901, 'Stardos Stencil'),
(902, 'Stint Ultra Condensed'),
(903, 'Stint Ultra Expanded'),
(904, 'Stoke'),
(905, 'Strait'),
(906, 'Stylish'),
(907, 'Sue Ellen Francisco'),
(908, 'Suez One'),
(909, 'Sulphur Point'),
(910, 'Sumana'),
(911, 'Sunflower'),
(912, 'Sunshiney'),
(913, 'Supermercado One'),
(914, 'Sura'),
(915, 'Suranna'),
(916, 'Suravaram'),
(917, 'Swanky and Moo Moo'),
(918, 'Syncopate'),
(919, 'Syne'),
(920, 'Syne Mono'),
(921, 'Syne Tactile'),
(922, 'Tajawal'),
(923, 'Tangerine'),
(924, 'Tauri'),
(925, 'Taviraj'),
(926, 'Teko'),
(927, 'Telex'),
(928, 'Tenali Ramakrishna'),
(929, 'Tenor Sans'),
(930, 'Text Me One'),
(931, 'Thasadith'),
(932, 'The Girl Next Door'),
(933, 'Tienne'),
(934, 'Tillana'),
(935, 'Timmana'),
(936, 'Tinos'),
(937, 'Titan One'),
(938, 'Titillium Web'),
(939, 'Tomorrow'),
(940, 'Trade Winds'),
(941, 'Trirong'),
(942, 'Trispace'),
(943, 'Trocchi'),
(944, 'Trochut'),
(945, 'Trykker'),
(946, 'Tulpen One'),
(947, 'Turret Road'),
(948, 'Ubuntu'),
(949, 'Ubuntu Condensed'),
(950, 'Ubuntu Mono'),
(951, 'Ultra'),
(952, 'Uncial Antiqua'),
(953, 'Underdog'),
(954, 'Unica One'),
(955, 'UnifrakturCook'),
(956, 'UnifrakturMaguntia'),
(957, 'Unkempt'),
(958, 'Unlock'),
(959, 'Unna'),
(960, 'VT323'),
(961, 'Vampiro One'),
(962, 'Varela'),
(963, 'Varela Round'),
(964, 'Varta'),
(965, 'Vast Shadow'),
(966, 'Vesper Libre'),
(967, 'Viaoda Libre'),
(968, 'Vibes'),
(969, 'Vibur'),
(970, 'Vidaloka'),
(971, 'Viga'),
(972, 'Voces'),
(973, 'Volkhov'),
(974, 'Vollkorn'),
(975, 'Vollkorn SC'),
(976, 'Voltaire'),
(977, 'Waiting for the Sunrise'),
(978, 'Wallpoet'),
(979, 'Walter Turncoat'),
(980, 'Warnes'),
(981, 'Wellfleet'),
(982, 'Wendy One'),
(983, 'Wire One'),
(984, 'Work Sans'),
(985, 'Xanh Mono'),
(986, 'Yanone Kaffeesatz'),
(987, 'Yantramanav'),
(988, 'Yatra One'),
(989, 'Yellowtail'),
(990, 'Yeon Sung'),
(991, 'Yeseva One'),
(992, 'Yesteryear'),
(993, 'Yrsa'),
(994, 'Yusei Magic'),
(995, 'ZCOOL KuaiLe'),
(996, 'ZCOOL QingKe HuangYou'),
(997, 'ZCOOL XiaoWei'),
(998, 'Zeyada'),
(999, 'Zhi Mang Xing'),
(1000, 'Zilla Slab'),
(1001, 'Zilla Slab Highlight');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_native` varchar(200) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL,
  `app_lang_code` varchar(255) DEFAULT 'en',
  `rtl` int(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `title_native`, `code`, `app_lang_code`, `rtl`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Arabic', 'Arabic', 'sa', 'ar', 1, 1, '2022-03-07 11:13:20', '2022-03-07 11:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `languages_code`
--

CREATE TABLE `languages_code` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages_code`
--

INSERT INTO `languages_code` (`id`, `code`, `name`) VALUES
(1, 'af', 'Afrikaans'),
(2, 'af', 'Afrikaans'),
(3, 'am', 'Amharic'),
(4, 'ar', 'Arabic'),
(5, 'as', 'Assamese'),
(6, 'az', 'Azerbaijani'),
(7, 'be', 'Belarusian'),
(8, 'bg', 'Bulgarian'),
(9, 'bn', 'Bengali Bangla'),
(10, 'bs', 'Bosnian'),
(11, 'ca', 'Catalan Valencian'),
(12, 'cs', 'Czech'),
(13, 'da', 'Danish'),
(14, 'de', 'German'),
(15, 'el', 'Modern Greek'),
(16, 'en', 'English'),
(17, 'es', 'Spanish Castilian'),
(18, 'et', 'Estonian'),
(19, 'eu', 'Basque'),
(20, 'fa', 'Persian'),
(21, 'fi', 'Finnish '),
(22, 'fil', 'Filipino Pilipino'),
(23, 'fr', 'French'),
(24, 'gl', 'Galician'),
(25, 'gsw', 'Swiss German Alemannic Alsatian'),
(26, 'gu', 'Gujarati'),
(27, 'he', 'Hebrew'),
(28, 'hi', 'Hindi'),
(29, 'hr', 'Croatian'),
(30, 'hu', 'Hungarian'),
(31, 'hy', 'Armenian'),
(32, 'id', 'Indonesian'),
(33, 'is', 'Icelandic'),
(34, 'it', 'Italian'),
(35, 'ja', 'Japanese'),
(36, 'ka', 'Georgian'),
(37, 'kk', 'Kazakh'),
(38, 'km', 'Khmer Central Khmer'),
(39, 'kn', 'Kannada'),
(40, 'ko', 'Korean'),
(41, 'ky', 'Kirghiz Kyrgyz'),
(42, 'lo', 'Lao'),
(43, 'lt', 'Lithuanian'),
(44, 'lv', 'Latvian'),
(45, 'mk', 'Macedonian'),
(46, 'ml', 'Malayalam'),
(47, 'mn', 'Mongolian'),
(48, 'mr', 'Marathi'),
(49, 'ms', 'Malay'),
(50, 'my', 'Burmese'),
(51, 'nb', 'Norwegian Bokmål'),
(52, 'ne', 'Nepali'),
(53, 'nl', 'Dutch Flemish'),
(54, 'no', 'Norwegian'),
(55, 'or', 'Oriya'),
(56, 'pa', 'Panjabi Punjabi'),
(57, 'pl', 'Polish'),
(58, 'ps', 'Pushto Pashto'),
(59, 'pt', 'Portuguese'),
(60, 'ro', 'Romanian Moldavian Moldovan'),
(61, 'ru', 'Russian'),
(62, 'si', 'Sinhala Sinhalese'),
(63, 'sk', 'Slovak'),
(64, 'sl', 'Slovenian'),
(65, 'sq', 'Albanian'),
(66, 'sr', 'Serbian'),
(67, 'sv', 'Swedish'),
(68, 'sw', 'Swahili'),
(69, 'ta', 'Tamil'),
(70, 'te', 'Telugu'),
(71, 'th', 'Thai'),
(72, 'tl', 'Tagalog'),
(73, 'tr', 'Turkish'),
(74, 'uk', 'Ukrainian'),
(75, 'ur', 'Urdu'),
(76, 'uz', 'Uzbek'),
(77, 'vi', 'Vietnamese'),
(78, 'zh', 'Chinese'),
(79, 'zu', 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `left_navigation_icon`
--

CREATE TABLE `left_navigation_icon` (
  `id` int(11) NOT NULL,
  `icon` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fixed` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `left_navigation_icon`
--

INSERT INTO `left_navigation_icon` (`id`, `icon`, `title`, `value`, `type`, `url`, `status`, `fixed`, `created_at`, `updated_at`) VALUES
(1, 'icon_item_1.png', 'Side Menu', 'icon_menu', 'action', '', 0, 1, '2024-03-21 01:54:56', '2020-06-07 10:58:42'),
(2, 'icon_item_2.png', 'Reload Button', 'icon_reload', 'action', '', 0, 1, '2022-03-07 22:28:04', '2020-06-07 10:58:42'),
(3, 'icon_item_3.png', 'Share Button', 'icon_share', 'action', '', 0, 1, '2022-01-12 19:31:13', '2020-06-07 11:16:42'),
(4, 'icon_item_4.png', 'Home Button', 'icon_home', 'action', '', 0, 1, '2022-01-12 19:31:18', '2020-06-07 11:16:42'),
(5, 'icon_item_5.png', 'Back Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-07-05 02:46:10', '2020-07-05 02:46:10'),
(6, 'icon_item_6.png', 'Back Button', 'icon_back', 'action', '', 0, 1, '2020-07-04 10:17:29', '2020-07-04 10:17:29'),
(7, 'icon_item_7.png', 'Forward Button', 'icon_forward', 'action', '', 0, 1, '2020-07-04 10:17:29', '2020-07-04 10:17:29'),
(8, 'icon_item_8.png', 'Forward-2 Button', 'icon_forward', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(9, 'icon_item_9.png', 'Back-2 Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(10, 'icon_item_10.png', 'Forward-3 Button', 'icon_forward', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(11, 'icon_item_11.png', 'Back-3 Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(12, 'icon_item_12.png', 'No Button', 'icon_empty', 'action', '', 1, 1, '2024-03-21 01:54:56', '2020-07-05 02:46:10'),
(13, 'icon_item_13.png', 'Cart Button', 'icon_cart', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(14, 'icon_item_14.png', 'Sale Button', 'icon_sale', 'url', 'http://www.facebook.com', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(15, 'icon_item_15.png', 'Search Button', 'icon_search', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(16, 'icon_item_16.png', 'Exit Button', 'icon_exit', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(17, 'icon_item_17.png', 'Close', 'icon_back', 'action', '', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(18, 'icon_item_18.png', 'Add', 'icon_add', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2020-06-07 11:18:16', '2020-06-07 11:18:16'),
(19, 'icon_item_19.png', 'QrCode-1', 'icon_qrcode', 'action', '', 0, 1, '2022-04-13 22:13:03', '2021-06-09 10:18:16'),
(20, 'icon_item_20.png', 'QrCode-2', 'icon_qrcode', 'action', '', 0, 1, '2021-06-09 10:18:16', '2021-06-09 10:18:16'),
(21, 'icon_item_21.png', 'QrCode-3', 'icon_qrcode', 'action', '', 0, 1, '2021-06-09 10:18:16', '2021-06-09 10:18:16'),
(22, 'icon_item_22.png', 'Notification', 'icon_notification', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 16:19:07', '2021-06-11 16:19:07'),
(23, 'icon_item_23.png', 'Profile', 'icon_profile', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 16:21:21', '2021-06-11 16:21:21'),
(24, 'icon_item_24.png', 'Message', 'icon_message', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 16:21:21', '2021-06-11 16:21:21'),
(25, 'icon_item_25.png', 'Messanger', 'icon_messanger', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 16:21:21', '2021-06-11 16:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` mediumtext NOT NULL,
  `url` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `type`, `icon`, `url`, `status`, `date`) VALUES
(1, 'Title', 'url', 'menu_item_1.png', 'https://google.com/', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_dynamics`
--

CREATE TABLE `menu_dynamics` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'url',
  `label` varchar(100) NOT NULL,
  `url` longtext NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'default.png',
  `base64` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `menu_dynamics`
--

INSERT INTO `menu_dynamics` (`id`, `type`, `label`, `url`, `icon`, `base64`, `status`, `parent_id`, `position`) VALUES
(1, 'home', '', '', 'default.png', NULL, 1, 0, 0),
(2, 'url', 'CodeCanyon', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 'menu_item_2.png', NULL, 1, 0, 1),
(3, 'url', 'Zara', 'https://www.zara.com', 'menu_item_3.png', NULL, 1, 0, 2),
(4, 'url', 'Food Bolt', 'http://food.bolt.eu/en-us/', 'menu_item_4.png', NULL, 1, 0, 3),
(5, 'url', 'Marmiton', 'https://marmiton.org', 'menu_item_5.png', NULL, 1, 0, 4),
(6, 'divider', '', '', 'default.png', NULL, 1, 0, 7),
(7, 'share', '', '', 'default.png', NULL, 1, 0, 9),
(8, 'about', '', '', 'default.png', NULL, 1, 0, 10),
(9, 'rate_us', '', '', 'default.png', NULL, 1, 0, 11),
(10, 'languages', '', '', 'default.png', NULL, 1, 0, 12),
(11, 'dark', '', '', 'default.png', NULL, 1, 0, 13),
(12, 'divider', '', '', 'default.png', NULL, 1, 0, 14),
(13, 'title_block', 'Settings', '', 'default.png', NULL, 1, 0, 8),
(14, 'socials', '', '', 'default.png', NULL, 1, 0, 15),
(15, 'notification', '', '', 'default.png', NULL, 1, 0, 6),
(18, 'divider', '', '', 'default.png', NULL, 1, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `title`, `url`, `lang`, `created_at`, `updated_at`) VALUES
(17, 13, 'Settings', '', 'en', '2022-06-22 15:49:02', '2022-07-24 15:07:12'),
(18, 13, 'إعدادات', '', 'ar', '2022-07-25 11:29:58', '2022-07-25 11:29:58'),
(19, 13, 'Ajustes', '', 'es', '2022-06-22 15:49:41', '2022-07-24 15:07:12'),
(20, 13, 'Réglages', '', 'fr', '2022-07-25 11:30:17', '2022-07-25 11:30:17'),
(21, 13, 'Definicoes', '', 'pt', '2022-06-22 15:50:17', '2022-07-24 15:07:12'),
(22, 13, 'Einstellungen', '', 'de', '2022-06-22 15:50:30', '2022-07-24 15:07:12'),
(23, 13, 'Impostazioni', '', 'it', '2022-06-22 15:50:46', '2022-07-24 15:07:12'),
(24, 13, 'Ayarlar', '', 'tr', '2022-06-22 15:51:09', '2022-07-24 15:07:12'),
(25, 13, 'Настройки', '', 'ru', '2022-06-22 15:51:30', '2022-07-24 15:07:12'),
(26, 13, 'समायोजन', '', 'hi', '2022-06-22 15:52:09', '2022-07-24 15:07:12'),
(27, 3, 'Zara', 'https://www.zara.com', 'en', '2022-07-24 15:07:12', '2022-07-24 15:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `native_social`
--

CREATE TABLE `native_social` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `native_social`
--

INSERT INTO `native_social` (`id`, `title`, `status`, `date`) VALUES
(2, 'facebook.com', 1, '2020-05-28 14:46:15'),
(3, 'skype.com', 1, '2020-05-28 09:18:16'),
(4, 'twitter.com', 1, '2020-05-28 09:18:16'),
(5, 'whatsapp://', 1, '2020-05-28 09:18:16'),
(6, 'snapchat.com', 1, '2020-05-28 09:18:16'),
(7, 'messenger.com', 1, '2020-05-28 09:18:16'),
(8, 'instagram.com', 1, '2020-05-28 09:18:16'),
(9, 'linkedin.com', 1, '2020-05-28 09:18:16'),
(10, 'market://', 1, '2020-05-28 09:18:16'),
(11, 'truecaller://', 1, '2020-05-28 09:18:16'),
(12, 'pinterest.com', 1, '2020-05-28 09:18:16'),
(13, 'play.google.com', 1, '2020-05-28 09:18:16'),
(14, 'mailto:', 1, '2020-05-28 09:18:16'),
(15, 'youtube.com', 1, '2020-05-28 09:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `type`, `icon`, `url`, `status`, `date`) VALUES
(1, 'About Us', 'url', 'page_item_1.png', 'http://positifmobile.com/positifMobile/flyweb/demo/aboutus.html', 1, '2021-05-20 17:10:54'),
(2, 'Privacy policy', 'url', 'page_item_2.png', 'http://positifmobile.com/positifMobile/flyweb/demo/privacypolicy.html', 1, '2021-05-19 20:09:36'),
(3, 'Terms & Conditions', 'url', 'page_item_3.png', 'http://positifmobile.com/positifMobile/flyweb/demo/termsconditions.html', 1, '2021-05-19 20:11:22'),
(4, 'Return Policy', 'url', 'page_item_4.png', 'http://positifmobile.com/positifMobile/flyweb/demo/returnpolicy.html', 1, '2021-05-19 20:13:05'),
(5, 'Faqs', 'url', 'page_item_5.png', 'http://positifmobile.com/positifMobile/flyweb/demo/faqs.html', 1, '2021-05-19 20:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `right_navigation_icon`
--

CREATE TABLE `right_navigation_icon` (
  `id` int(11) NOT NULL,
  `icon` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fixed` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `right_navigation_icon`
--

INSERT INTO `right_navigation_icon` (`id`, `icon`, `title`, `value`, `type`, `url`, `status`, `fixed`, `created_at`, `updated_at`) VALUES
(1, 'icon_item_1.png', 'Side Menu', 'icon_menu', 'action', '', 0, 1, '2021-11-17 09:52:20', '2020-06-07 09:58:42'),
(2, 'icon_item_2.png', 'Reload Button', 'icon_reload', 'action', '', 0, 1, '2021-11-23 15:16:30', '2020-06-07 09:58:42'),
(3, 'icon_item_3.png', 'Share Button', 'icon_share', 'action', '', 0, 1, '2021-11-23 14:59:52', '2020-06-07 10:16:42'),
(4, 'icon_item_4.png', 'Home Button', 'icon_home', 'action', '', 0, 1, '2024-03-21 01:55:17', '2020-06-07 10:16:42'),
(5, 'icon_item_5.png', 'Back Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-07-05 01:46:10', '2020-07-05 01:46:10'),
(6, 'icon_item_6.png', 'Back Button', 'icon_back', 'action', '', 0, 1, '2020-07-04 09:17:29', '2020-07-04 09:17:29'),
(7, 'icon_item_7.png', 'Forward Button', 'icon_forward', 'action', '', 0, 1, '2020-07-04 09:17:29', '2020-07-04 09:17:29'),
(8, 'icon_item_8.png', 'Back Button', 'icon_back', 'action', '', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(9, 'icon_item_9.png', 'Back-2 Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(10, 'icon_item_10.png', 'Forward-3 Button', 'icon_forward', 'action', '', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(11, 'icon_item_11.png', 'Back-3 Forward Button', 'icon_back_forward', 'action', '', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(12, 'icon_item_12.png', 'No Button', 'icon_empty', 'action', '', 0, 1, '2020-07-05 01:46:10', '2020-07-05 01:46:10'),
(13, 'icon_item_13.png', 'Cart Button', 'icon_cart', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(14, 'icon_item_14.png', 'Sale Button', 'icon_sale', 'url', 'http://www.facebook.com', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(15, 'icon_item_15.png', 'Search Button', 'icon_search', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2024-03-21 01:55:14', '2020-06-07 10:18:16'),
(16, 'icon_item_16.png', 'Exit Button', 'icon_exit', 'action', '', 0, 1, '2024-03-21 02:05:02', '2020-06-07 10:18:16'),
(17, 'icon_item_17.png', 'Close', 'icon_back', 'action', '', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(18, 'icon_item_18.png', 'Add', 'icon_add', 'url', 'https://demo.foodomaa.com/explore', 0, 1, '2020-06-07 10:18:16', '2020-06-07 10:18:16'),
(19, 'icon_item_19.png', 'QrCode-1', 'icon_qrcode', 'action', '', 0, 1, '2021-11-23 15:16:44', '2021-06-09 09:18:16'),
(20, 'icon_item_20.png', 'QrCode-2', 'icon_qrcode', 'action', '', 0, 1, '2021-06-09 09:18:16', '2021-06-09 09:18:16'),
(21, 'icon_item_21.png', 'QrCode-3', 'icon_qrcode', 'action', '', 0, 1, '2021-06-09 09:18:16', '2021-06-09 09:18:16'),
(22, 'icon_item_22.png', 'Notification', 'icon_notification', 'url', 'https://aljood-law.net/system/notifications.php', 1, 1, '2024-03-21 01:56:34', '2021-06-11 15:19:07'),
(23, 'icon_item_23.png', 'Profile', 'icon_profile', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2024-03-21 02:04:42', '2021-06-11 15:21:21'),
(24, 'icon_item_24.png', 'Message', 'icon_message', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 15:21:21', '2021-06-11 15:21:21'),
(25, 'icon_item_25.png', 'Messanger', 'icon_messanger', 'url', 'https://codecanyon.net/item/flyweb-for-web-to-app-convertor-flutter-admin-panel-v10/26840230', 0, 1, '2021-06-11 15:21:21', '2021-06-11 15:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `admob_id` varchar(255) NOT NULL,
  `admob_id_ios` varchar(255) NOT NULL,
  `admob_key_ad_banner` varchar(255) NOT NULL,
  `admob_key_ad_interstitial` varchar(255) NOT NULL,
  `admob_key_ad_banner_ios` varchar(255) NOT NULL,
  `admob_key_ad_interstitial_ios` varchar(255) NOT NULL,
  `admob_dealy` int(11) NOT NULL,
  `navigatin_bar_style` varchar(255) NOT NULL,
  `left_button` varchar(255) NOT NULL,
  `right_button` varchar(255) NOT NULL,
  `loader` varchar(255) NOT NULL,
  `loaderColor` varchar(255) NOT NULL,
  `firstColor` varchar(255) NOT NULL,
  `secondColor` varchar(255) NOT NULL,
  `backgroundColor` varchar(255) NOT NULL,
  `logo` mediumtext NOT NULL,
  `javascript` tinyint(4) NOT NULL DEFAULT 1,
  `download_webview` tinyint(4) NOT NULL DEFAULT 1,
  `permission_dialog` tinyint(4) NOT NULL DEFAULT 1,
  `splach_screen` tinyint(4) NOT NULL DEFAULT 1,
  `swipe_refresh` tinyint(4) NOT NULL DEFAULT 1,
  `website_zoom` tinyint(4) NOT NULL DEFAULT 0,
  `desktop_mode` tinyint(4) NOT NULL DEFAULT 0,
  `full_screen` tinyint(4) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `logo_header` mediumtext NOT NULL,
  `type_header` varchar(255) NOT NULL,
  `about_us` text NOT NULL,
  `android_id` varchar(255) NOT NULL,
  `ios_id` varchar(255) NOT NULL,
  `onesignal_id` varchar(255) NOT NULL,
  `onesignal_api_key` varchar(255) NOT NULL,
  `share` mediumtext NOT NULL,
  `list` varchar(255) NOT NULL DEFAULT 'e124275dc6d83e4e588c383075e3ef62',
  `ad_banner` tinyint(4) NOT NULL,
  `ad_interstitial` tinyint(4) NOT NULL,
  `pull_refresh` tinyint(4) NOT NULL,
  `boarding` tinyint(4) NOT NULL,
  `deeplink` varchar(255) NOT NULL DEFAULT 'app.flyweb.scheme',
  `tab_navigation_enable` tinyint(4) NOT NULL,
  `colorTab` varchar(255) NOT NULL,
  `version_android` varchar(20) DEFAULT '1.0.0',
  `version_ios` varchar(20) DEFAULT '1.0.0',
  `version_app` varchar(255) NOT NULL DEFAULT 'version_app',
  `purchase_code` varchar(255) NOT NULL DEFAULT 'nullcave-club'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `url`, `admob_id`, `admob_id_ios`, `admob_key_ad_banner`, `admob_key_ad_interstitial`, `admob_key_ad_banner_ios`, `admob_key_ad_interstitial_ios`, `admob_dealy`, `navigatin_bar_style`, `left_button`, `right_button`, `loader`, `loaderColor`, `firstColor`, `secondColor`, `backgroundColor`, `logo`, `javascript`, `download_webview`, `permission_dialog`, `splach_screen`, `swipe_refresh`, `website_zoom`, `desktop_mode`, `full_screen`, `sub_title`, `logo_header`, `type_header`, `about_us`, `android_id`, `ios_id`, `onesignal_id`, `onesignal_api_key`, `share`, `list`, `ad_banner`, `ad_interstitial`, `pull_refresh`, `boarding`, `deeplink`, `tab_navigation_enable`, `colorTab`, `version_android`, `version_ios`, `version_app`, `purchase_code`) VALUES
(1, 'FlyWeb', 'flyweb/demo', '', '', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', 'ca-app-pub-3940256099942544/2934735716', 'ca-app-pub-3940256099942544/4411468910', 100, 'left', '', '', 'Pulse', '#597ae2', '#7b50dc', '#597ae2', '', 'settings_1.png', 0, 0, 0, 0, 0, 0, 0, 0, 'Convert your Website to an App', 'logo_header_1.png', 'text', 'FlyWeb is a universal convertor Web to App inspired by the Flutter framework, made by Google. It is the best solutions to convert your website to Android and iOS with just your URL.', 'com.flyweb', '', '90b0425f-3d32-429a-a7f5-cc4e5e82fe49', 'Y2NhNTFlZjYtMDEwNC00YjU1LThhMjUtZmMyMTZkZTg4N2E2', 'Download FlyWeb Application.\r\nAndroid:\r\nhttps://play.google.com/store/apps/details?id=xxxxxxxx\r\niOS:\r\nhttps://apps.apple.com/fr/app/xxxxxxxx/idxxxxxxxx\r\n', 'be0c0055489ebea9b4c983f7509733e9', 0, 0, 1, 1, 'app.flyweb.scheme', 0, '#597ae2', '3.0.0', '3.0.0', '3.0.0', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `id_app` varchar(255) NOT NULL,
  `icon` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `title`, `link_url`, `id_app`, `icon`, `url`, `status`, `date`) VALUES
(1, 'Facebook', 'fb://page/id_app', 'facebook', 'social_item_1.png', 'https://www.facebook.com/id_app', 0, '2020-05-28 10:18:16'),
(2, 'Youtube', 'https://www.youtube.com/channel/id_app', 'UCvHPU0LieqpqD8eKj2VypPg', 'social_item_2.png', 'https://www.youtube.com/channel/id_app', 0, '2020-05-28 15:46:15'),
(3, 'Skype', 'skype:id_app?chat', 'positifmobile', 'social_item_3.png', 'skype:id_app?chat', 0, '2020-05-28 10:18:16'),
(4, 'Twitter', 'https://twitter.com/id_app', 'positifmobile', 'social_item_4.png', 'https://twitter.com/id_app', 0, '2020-05-28 10:18:16'),
(5, 'WhatsApp', 'whatsapp://send?phone=id_app', 'positifmobile', 'social_item_5.png', 'whatsapp://send?phone=id_app', 0, '2020-05-28 10:18:16'),
(6, 'Snapchat', 'snapchat://add/id_app', 'positifmobile', 'social_item_6.png', 'https://www.snapchat.com/download', 0, '2020-05-28 10:18:16'),
(7, 'Messenger', 'https://www.messenger.com/t/id_app', 'positifmobile', 'social_item_7.png', 'https://www.messenger.com/t/id_app', 0, '2020-05-28 10:18:16'),
(8, 'Instagram', 'instagram://user?username=id_app', 'envato', 'social_item_8.png', 'https://www.instagram.com/id_app', 0, '2020-05-28 10:18:16'),
(9, 'Telegram', 'https://t.me/positifmobile', 'positifmobile', 'social_item_9.png', 'tg://positifmobile', 0, '2020-05-28 10:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `splash`
--

CREATE TABLE `splash` (
  `id` int(11) NOT NULL,
  `firstColor` varchar(255) NOT NULL,
  `secondColor` varchar(255) NOT NULL,
  `logo_splash` varchar(255) NOT NULL,
  `img_splash` varchar(255) NOT NULL,
  `enable_logo` tinyint(4) NOT NULL,
  `enable_img` tinyint(4) NOT NULL,
  `splash_logo_width` varchar(70) NOT NULL,
  `splash_logo_height` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `splash`
--

INSERT INTO `splash` (`id`, `firstColor`, `secondColor`, `logo_splash`, `img_splash`, `enable_logo`, `enable_img`, `splash_logo_width`, `splash_logo_height`) VALUES
(1, '#597ae2', '#597ae2', 'logo_splash.png', 'img_splash.png', 1, 0, '100', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

CREATE TABLE `tab` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tab`
--

INSERT INTO `tab` (`id`, `title`, `url`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'http://positifmobile.com/positifMobile/flyweb/demo', 'tab_item_1.png', 1, '2022-03-19 22:18:58', '2022-03-19 22:18:58'),
(2, 'Categories', 'http://positifmobile.com/positifMobile/flyweb/demo/category.html', 'tab_item_2.png', 1, '2021-06-02 17:01:53', '2021-06-02 17:01:53'),
(3, 'Deals', 'http://positifmobile.com/positifMobile/flyweb/demo/deals.html', 'tab_item_3.png', 1, '2024-03-23 22:55:27', '2024-03-23 22:55:27'),
(4, 'Cart', 'http://positifmobile.com/positifMobile/flyweb/demo/cart.html', 'tab_item_4.png', 1, '2024-03-23 22:57:20', '2024-03-23 22:57:20'),
(5, 'Settings', 'http://positifmobile.com/positifMobile/flyweb/demo/settings.html', 'tab_item_5.png', 1, '2024-03-23 22:58:32', '2024-03-23 22:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `tab_translations`
--

CREATE TABLE `tab_translations` (
  `id` bigint(20) NOT NULL,
  `tab_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tab_translations`
--

INSERT INTO `tab_translations` (`id`, `tab_id`, `title`, `url`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', 'http://positifmobile.com/positifMobile/flyweb/demo', 'en', 1, '2022-03-20 08:58:06', '2022-03-20 08:58:06'),
(3, 1, 'الرئيسية', 'https://aljood-law.net/system/homepage.php', 'ar', 1, '2024-03-21 01:58:09', '2024-03-21 01:58:09'),
(4, 2, 'Categories', 'http://positifmobile.com/flyweb/demo/category.html', 'en', 1, '2022-05-09 20:56:48', '2022-05-09 20:56:48'),
(5, 2, 'القضايا', 'https://aljood-law.net/system/cases.php', 'ar', 1, '2024-03-21 01:58:50', '2024-03-21 01:58:50'),
(6, 3, 'Deals', 'http://positifmobile.com/flyweb/demo/deals.html', 'en', 1, '2022-05-09 20:55:59', '2022-05-09 20:55:59'),
(7, 3, 'الموكلين', 'https://aljood-law.net/system/clients.php', 'ar', 1, '2024-03-21 01:59:48', '2024-03-21 01:59:48'),
(8, 4, 'Cart', 'http://positifmobile.com/flyweb/demo/cart.html', 'en', 1, '2022-05-09 20:57:02', '2022-05-09 20:57:02'),
(9, 4, 'المواعيد', 'https://aljood-law.net/system/appointments.php', 'ar', 1, '2024-03-21 02:00:49', '2024-03-21 02:00:49'),
(10, 5, 'Settings', 'http://positifmobile.com/flyweb/demo/settings.html', 'en', 1, '2022-05-09 20:57:38', '2022-05-09 20:57:38'),
(11, 5, 'التقارير', 'https://aljood-law.net/system/reports.php', 'ar', 1, '2024-03-21 02:01:22', '2024-03-21 02:01:22'),
(12, 1, 'Hindi', 'https://google.com/', 'in', 1, '2022-06-21 19:20:15', '2022-06-21 19:20:15'),
(13, 2, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in', 1, '2022-06-21 19:20:25', '2022-05-09 20:55:59'),
(14, 3, 'Hindi', 'http://positifmobile.com/positifMobile/flyweb/demo', 'in', 1, '2022-06-21 19:20:43', '2022-05-09 20:55:59'),
(15, 4, 'Hindi', 'http://positifmobile.com/positifMobile/flyweb/demo', 'in', 1, '2022-06-21 19:20:50', '2022-05-09 20:55:59'),
(16, 5, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in', 1, '2022-06-21 19:20:57', '2022-05-09 20:55:59'),
(17, 1, 'Hindi', 'http://positifmobile.com/flyweb/demo', 'in language', 1, '2022-06-21 19:22:38', '2022-05-09 20:55:59'),
(18, 1, 'घर', 'http://positifmobile.com/flyweb/demo', 'hi', 1, '2022-07-25 11:36:17', '2022-07-25 11:36:17'),
(19, 1, 'Principal', 'http://positifmobile.com/flyweb/demo', 'es', 1, '2022-06-22 15:55:15', '2022-05-09 20:55:59'),
(20, 1, 'Principal', 'http://positifmobile.com/flyweb/demo', 'fr', 1, '2022-06-22 15:55:38', '2022-05-09 20:55:59'),
(21, 1, 'Principal', 'http://positifmobile.com/flyweb/demo', 'pt', 1, '2022-06-22 15:55:57', '2022-05-09 20:55:59'),
(22, 1, 'Hauptsachlich', 'http://positifmobile.com/flyweb/demo', 'de', 1, '2022-07-25 10:57:50', '2022-05-09 20:55:59'),
(23, 1, 'Principale', 'http://positifmobile.com/flyweb/demo', 'it', 1, '2022-06-22 15:56:29', '2022-05-09 20:55:59'),
(24, 1, 'Ana', 'http://positifmobile.com/flyweb/demo', 'tr', 1, '2022-06-22 15:56:43', '2022-05-09 20:55:59'),
(25, 1, 'Дом', 'http://positifmobile.com/flyweb/demo', 'ru', 1, '2022-07-25 11:36:26', '2022-07-25 11:36:26'),
(26, 2, 'Categorias', 'http://positifmobile.com/flyweb/demo/category.html', 'es', 1, '2022-07-25 10:57:55', '2022-06-22 15:58:23'),
(27, 2, 'Catégories', 'http://positifmobile.com/flyweb/demo/category.html', 'fr', 1, '2022-07-25 11:37:36', '2022-07-25 11:37:36'),
(28, 2, 'Categorias', 'http://positifmobile.com/flyweb/demo/category.html', 'pt', 1, '2022-06-22 15:59:02', '2022-06-22 15:59:02'),
(29, 2, 'Kategorien', 'http://positifmobile.com/flyweb/demo/category.html', 'de', 1, '2022-06-22 15:59:21', '2022-06-22 15:59:21'),
(30, 2, 'Categorie', 'http://positifmobile.com/flyweb/demo/category.html', 'it', 1, '2022-06-22 15:59:39', '2022-06-22 15:59:39'),
(31, 2, 'Kategoriler', 'http://positifmobile.com/flyweb/demo/category.html', 'tr', 1, '2022-06-22 16:00:25', '2022-06-22 16:00:25'),
(32, 2, 'Категории', 'http://positifmobile.com/flyweb/demo/category.html', 'ru', 1, '2022-07-25 11:36:52', '2022-07-25 11:36:52'),
(33, 2, 'श्रेणियाँ', 'http://positifmobile.com/flyweb/demo/category.html', 'hi', 1, '2022-07-25 11:37:03', '2022-07-25 11:37:03'),
(34, 3, 'सौदा', 'http://positifmobile.com/flyweb/demo/deals.html', 'hi', 1, '2022-07-25 11:38:32', '2022-07-25 11:38:32'),
(35, 3, 'Предложения', 'http://positifmobile.com/flyweb/demo/deals.html', 'ru', 1, '2022-07-25 11:38:21', '2022-07-25 11:38:21'),
(36, 3, 'Fırsatlar', 'http://positifmobile.com/flyweb/demo/deals.html', 'tr', 1, '2022-06-22 16:02:30', '2022-06-22 16:02:30'),
(37, 3, 'Offerte', 'http://positifmobile.com/flyweb/demo/deals.html', 'it', 1, '2022-06-22 16:02:40', '2022-06-22 16:02:40'),
(38, 3, 'Angebote', 'http://positifmobile.com/flyweb/demo/deals.html', 'de', 1, '2022-06-22 16:02:51', '2022-06-22 16:02:51'),
(39, 3, 'Ofertas', 'http://positifmobile.com/flyweb/demo/deals.html', 'pt', 1, '2022-06-22 16:03:09', '2022-06-22 16:03:09'),
(40, 3, 'Offres', 'http://positifmobile.com/flyweb/demo/deals.html', 'fr', 1, '2022-06-22 16:03:22', '2022-06-22 16:03:22'),
(41, 3, 'ofertas', 'http://positifmobile.com/flyweb/demo/deals.html', 'es', 1, '2022-06-22 16:03:37', '2022-06-22 16:03:37'),
(42, 5, 'Ajustes', 'http://positifmobile.com/flyweb/demo/settings.html', 'es', 1, '2022-06-22 16:03:16', '2022-06-22 16:03:16'),
(43, 5, 'Réglages', 'http://positifmobile.com/flyweb/demo/settings.html', 'fr', 1, '2022-07-25 11:40:33', '2022-07-25 11:40:33'),
(44, 5, 'Definicoes', 'http://positifmobile.com/flyweb/demo/settings.html', 'pt', 1, '2022-07-25 10:58:04', '2022-06-22 16:03:51'),
(45, 5, 'Einstellungen', 'http://positifmobile.com/flyweb/demo/settings.html', 'de', 1, '2022-06-22 16:04:09', '2022-06-22 16:04:09'),
(46, 5, 'Impostazioni', 'http://positifmobile.com/flyweb/demo/settings.html', 'it', 1, '2022-06-22 16:04:23', '2022-06-22 16:04:23'),
(47, 5, 'Ayarlar', 'http://positifmobile.com/flyweb/demo/settings.html', 'tr', 1, '2022-06-22 16:04:43', '2022-06-22 16:04:43'),
(48, 5, 'Настройки', 'http://positifmobile.com/flyweb/demo/settings.html', 'ru', 1, '2022-07-25 11:40:21', '2022-07-25 11:40:21'),
(49, 5, 'समायोजन', 'http://positifmobile.com/flyweb/demo/settings.html', 'hi', 1, '2022-07-25 11:40:10', '2022-07-25 11:40:10'),
(50, 4, 'Carro', 'http://positifmobile.com/flyweb/demo/cart.html', 'es', 1, '2022-06-22 16:04:54', '2022-06-22 16:04:54'),
(51, 4, 'Chariot', 'http://positifmobile.com/flyweb/demo/cart.html', 'fr', 1, '2022-06-22 16:05:04', '2022-06-22 16:05:04'),
(52, 4, 'Carrinho', 'http://positifmobile.com/flyweb/demo/cart.html', 'pt', 1, '2022-06-22 16:05:13', '2022-06-22 16:05:13'),
(53, 4, 'Wagen', 'http://positifmobile.com/flyweb/demo/cart.html', 'de', 1, '2022-06-22 16:05:26', '2022-06-22 16:05:26'),
(54, 4, 'Carrello', 'http://positifmobile.com/flyweb/demo/cart.html', 'it', 1, '2022-06-22 16:05:41', '2022-06-22 16:05:41'),
(55, 4, 'Araba', 'http://positifmobile.com/flyweb/demo/cart.html', 'tr', 1, '2022-06-22 16:06:05', '2022-06-22 16:06:05'),
(56, 4, 'Корзина', 'http://positifmobile.com/flyweb/demo/cart.html', 'ru', 1, '2022-07-25 11:39:29', '2022-07-25 11:39:29'),
(57, 4, 'कार्ट', 'http://positifmobile.com/flyweb/demo/cart.html', 'hi', 1, '2022-07-25 11:39:39', '2022-07-25 11:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id_menu` int(11) NOT NULL,
  `label_menu` varchar(100) NOT NULL,
  `url_menu` varchar(300) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `lang_key` text DEFAULT NULL,
  `lang_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'home', 'Home', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(2, 'en', 'share', 'Share', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(3, 'en', 'about', 'About', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(4, 'en', 'rate_us', 'Rate Us', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(5, 'en', 'update_application', 'Update Application', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(6, 'en', 'notification', 'Notification', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(7, 'en', 'languages', 'Languages', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(8, 'en', 'app_language', 'App Language', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(9, 'en', 'select_your_preferred_languages', 'Select your preferred languages', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(10, 'en', 'whoops', 'Whoops!', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(11, 'en', 'no_internet_connection', 'No internet connection', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(12, 'en', 'try_again', 'Try Again', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(13, 'en', 'close_app', 'Close APP', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(14, 'en', 'are_you_sure_want_to_quit_this_application', 'Are you sure want to quit this application ?', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(15, 'en', 'ok', 'OK', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(16, 'en', 'cancel', 'CANCEL', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(17, 'en', 'change_theme', 'Change Theme', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(18, 'en', 'customize_your_own_way', 'Customize your own way', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(20, 'en', 'navigation_bar_style', 'Navigation bar style', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(21, 'en', 'header_type', 'Header type', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(22, 'en', 'left_button_option', 'Left Button Option', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(23, 'en', 'right_button_option', 'Right Button Option', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(24, 'en', 'color_gradient', 'Color Gradient', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(25, 'en', 'color_solid', 'Color Solid', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(26, 'en', 'loading_animation', 'Loading Animation', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(27, 'en', 'back_to_home_page', 'Back to HomePage', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(28, 'en', 'dark_mode', 'Dark mode', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(29, 'en', 'light_mode', 'Light mode', '2022-03-09 10:23:12', '2022-03-09 10:23:12'),
(30, 'ar', 'home', 'الصفحة الرئيسية', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(31, 'ar', 'share', 'مشاركة التطبيق', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(32, 'ar', 'about', 'معلومات عنا', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(33, 'ar', 'rate_us', 'قيمنا', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(34, 'ar', 'update_application', 'تحديث التطبيق', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(35, 'ar', 'notification', 'تنبيهات', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(36, 'ar', 'languages', 'تغيير اللغة', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(37, 'ar', 'app_language', 'لغة التطبيق', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(38, 'ar', 'select_your_preferred_languages', 'اختر لغتك المفضلة', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(39, 'ar', 'whoops', 'عفوًا!', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(40, 'ar', 'no_internet_connection', 'لا يوجد اتصال بالإنترنت', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(41, 'ar', 'try_again', 'حاول مجددا', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(42, 'ar', 'close_app', 'أغلق التطبيق', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(43, 'ar', 'are_you_sure_want_to_quit_this_application', 'هل تريد بالتأكيد اغلاق هذا التطبيق؟', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(44, 'ar', 'ok', 'حسنا', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(45, 'ar', 'cancel', 'إلغاء', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(46, 'ar', 'change_theme', 'غير الخلفية', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(47, 'ar', 'customize_your_own_way', 'تخصيص طريقتك الخاصة', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(49, 'ar', 'navigation_bar_style', 'نمط شريط التنقل', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(50, 'ar', 'header_type', 'شريط الرأس', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(51, 'ar', 'left_button_option', 'خيار الزر الأيسر', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(52, 'ar', 'right_button_option', 'خيار الزر الأيمن', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(53, 'ar', 'color_gradient', 'التدرج اللون', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(54, 'ar', 'color_solid', 'لون واحد', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(55, 'ar', 'loading_animation', 'اللودر', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(56, 'ar', 'back_to_home_page', 'العودة إلى الصفحة الرئيسية', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(57, 'ar', 'dark_mode', 'الوضع الداكن', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(58, 'ar', 'light_mode', 'الوضع الفاتح', '2022-03-09 09:23:12', '2022-03-09 09:23:12'),
(59, 'en', 'follow_us', 'Follow Us', '2022-04-03 13:45:47', '2022-04-03 13:45:47'),
(60, 'ar', 'follow_us', 'تابعنا', '2022-04-03 13:45:47', '2022-04-03 13:45:47'),
(61, 'en', 'get_start', 'Get Start', '2022-04-18 15:39:55', '2022-04-18 15:39:55'),
(62, 'ar', 'get_start', 'ابدأ', '2022-04-18 15:39:55', '2022-04-18 15:39:55'),
(63, 'en', 'skip', 'Skip', '2022-04-18 15:40:30', '2022-04-18 15:40:30'),
(64, 'ar', 'skip', 'تخطى', '2022-04-18 15:40:30', '2022-04-18 15:40:30'),
(65, 'fr', 'home', 'Accueil', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(66, 'fr', 'share', 'Partager', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(67, 'fr', 'about', 'À propos de', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(68, 'fr', 'rate_us', 'Évaluez nous', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(69, 'fr', 'update_application', 'Mise à jour', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(70, 'fr', 'notification', 'Notifications', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(71, 'fr', 'languages', 'Languages', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(72, 'fr', 'app_language', 'App Language', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(73, 'fr', 'select_your_preferred_languages', 'Sélectionnez vos langues préférées', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(74, 'fr', 'whoops', 'Oups !', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(75, 'fr', 'no_internet_connection', 'Pas de connexion Internet', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(76, 'fr', 'try_again', 'Réessayer', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(77, 'fr', 'close_app', 'Close APP', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(78, 'fr', 'are_you_sure_want_to_quit_this_application', 'Voulez-vous vraiment quitter cette application ?', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(79, 'fr', 'ok', 'OK', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(80, 'fr', 'cancel', 'ANNULER', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(81, 'fr', 'change_theme', 'Change le thème', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(82, 'fr', 'customize_your_own_way', 'Personnalisez votre propre chemin', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(84, 'fr', 'navigation_bar_style', 'Style de la barre de navigation', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(85, 'fr', 'header_type', 'Header type', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(86, 'fr', 'left_button_option', 'Option bouton gauche', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(87, 'fr', 'right_button_option', 'Option bouton droit', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(88, 'fr', 'color_gradient', 'Dégradé de couleur', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(89, 'fr', 'color_solid', 'Couleur Solide', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(90, 'fr', 'loading_animation', 'Loading Animation', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(91, 'fr', 'back_to_home_page', 'Back to HomePage', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(92, 'fr', 'dark_mode', 'Mode sombre', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(93, 'fr', 'light_mode', 'Mode lumière', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(94, 'fr', 'follow_us', 'Suivez-nous', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(95, 'fr', 'get_start', 'Get Start', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(96, 'fr', 'skip', 'Commencer', '2022-05-22 13:04:34', '2022-05-22 13:04:34'),
(97, 'es', 'home', 'Home', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(98, 'es', 'share', 'Share', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(99, 'es', 'about', 'About', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(100, 'es', 'rate_us', 'Rate Us', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(101, 'es', 'update_application', 'Update Application', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(102, 'es', 'notification', 'Notification', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(103, 'es', 'languages', 'Languages', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(104, 'es', 'app_language', 'App Language', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(105, 'es', 'select_your_preferred_languages', 'Select your preferred languages', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(106, 'es', 'whoops', 'Whoops!', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(107, 'es', 'no_internet_connection', 'No internet connection', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(108, 'es', 'try_again', 'Try Again', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(109, 'es', 'close_app', 'Close APP', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(110, 'es', 'are_you_sure_want_to_quit_this_application', 'Are you sure want to quit this application ?', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(111, 'es', 'ok', 'OK', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(112, 'es', 'cancel', 'CANCEL', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(113, 'es', 'change_theme', 'Change Theme', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(114, 'es', 'customize_your_own_way', 'Customize your own way', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(115, 'es', 'navigation_bar_style', 'Navigation bar style', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(116, 'es', 'header_type', 'Header type', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(117, 'es', 'left_button_option', 'Left Button Option', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(118, 'es', 'right_button_option', 'Right Button Option', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(119, 'es', 'color_gradient', 'Color Gradient', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(120, 'es', 'color_solid', 'Color Solid', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(121, 'es', 'loading_animation', 'Loading Animation', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(122, 'es', 'back_to_home_page', 'Back to HomePage', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(123, 'es', 'dark_mode', 'Dark mode', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(124, 'es', 'light_mode', 'Light mode', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(125, 'es', 'follow_us', 'Follow Us', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(126, 'es', 'get_start', 'Get Start', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(127, 'es', 'skip', 'Skip', '2022-05-22 13:20:13', '2022-05-22 13:20:13'),
(128, 'pt', 'home', 'Home', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(129, 'pt', 'share', 'Share', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(130, 'pt', 'about', 'About', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(131, 'pt', 'rate_us', 'Rate Us', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(132, 'pt', 'update_application', 'Update Application', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(133, 'pt', 'notification', 'Notification', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(134, 'pt', 'languages', 'Languages', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(135, 'pt', 'app_language', 'App Language', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(136, 'pt', 'select_your_preferred_languages', 'Select your preferred languages', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(137, 'pt', 'whoops', 'Whoops!', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(138, 'pt', 'no_internet_connection', 'No internet connection', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(139, 'pt', 'try_again', 'Try Again', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(140, 'pt', 'close_app', 'Close APP', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(141, 'pt', 'are_you_sure_want_to_quit_this_application', 'Are you sure want to quit this application ?', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(142, 'pt', 'ok', 'OK', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(143, 'pt', 'cancel', 'CANCEL', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(144, 'pt', 'change_theme', 'Change Theme', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(145, 'pt', 'customize_your_own_way', 'Customize your own way', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(146, 'pt', 'navigation_bar_style', 'Navigation bar style', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(147, 'pt', 'header_type', 'Header type', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(148, 'pt', 'left_button_option', 'Left Button Option', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(149, 'pt', 'right_button_option', 'Right Button Option', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(150, 'pt', 'color_gradient', 'Color Gradient', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(151, 'pt', 'color_solid', 'Color Solid', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(152, 'pt', 'loading_animation', 'Loading Animation', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(153, 'pt', 'back_to_home_page', 'Back to HomePage', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(154, 'pt', 'dark_mode', 'Dark mode', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(155, 'pt', 'light_mode', 'Light mode', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(156, 'pt', 'follow_us', 'Follow Us', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(157, 'pt', 'get_start', 'Get Start', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(158, 'pt', 'skip', 'Skip', '2022-05-22 13:21:25', '2022-05-22 13:21:25'),
(159, 'in', 'home', 'Home', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(160, 'in', 'share', 'Share', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(161, 'in', 'about', 'About', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(162, 'in', 'rate_us', 'Rate Us', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(163, 'in', 'update_application', 'Update Application', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(164, 'in', 'notification', 'Notification', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(165, 'in', 'languages', 'Languages', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(166, 'in', 'app_language', 'App Language', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(167, 'in', 'select_your_preferred_languages', 'Select your preferred languages', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(168, 'in', 'whoops', 'Whoops!', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(169, 'in', 'no_internet_connection', 'No internet connection', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(170, 'in', 'try_again', 'Try Again', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(171, 'in', 'close_app', 'Close APP', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(172, 'in', 'are_you_sure_want_to_quit_this_application', 'Are you sure want to quit this application ?', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(173, 'in', 'ok', 'OK', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(174, 'in', 'cancel', 'CANCEL', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(175, 'in', 'change_theme', 'Change Theme', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(176, 'in', 'customize_your_own_way', 'Customize your own way', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(177, 'in', 'navigation_bar_style', 'Navigation bar style', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(178, 'in', 'header_type', 'Header type', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(179, 'in', 'left_button_option', 'Left Button Option', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(180, 'in', 'right_button_option', 'Right Button Option', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(181, 'in', 'color_gradient', 'Color Gradient', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(182, 'in', 'color_solid', 'Color Solid', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(183, 'in', 'loading_animation', 'Loading Animation', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(184, 'in', 'back_to_home_page', 'Back to HomePage', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(185, 'in', 'dark_mode', 'Dark mode', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(186, 'in', 'light_mode', 'Light mode', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(187, 'in', 'follow_us', 'Follow Us', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(188, 'in', 'get_start', 'Get Start', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(189, 'in', 'skip', 'Skip', '2022-05-22 13:21:29', '2022-05-22 13:21:29'),
(190, 'de', 'home', 'Heim', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(191, 'de', 'share', 'Teilen', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(192, 'de', 'about', 'Um', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(193, 'de', 'rate_us', 'Bewerten Sie uns', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(194, 'de', 'update_application', 'Anwendung aktualisieren', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(195, 'de', 'notification', 'Benachrichtigung', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(196, 'de', 'languages', 'Sprachen', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(197, 'de', 'app_language', 'App-Sprache', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(198, 'de', 'select_your_preferred_languages', 'Wählen Sie Ihre bevorzugten Sprachen aus', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(199, 'de', 'whoops', 'Hoppla!', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(200, 'de', 'no_internet_connection', 'Keine Internetverbindung', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(201, 'de', 'try_again', 'Versuch es noch einmal', '2022-05-22 13:21:31', '2022-05-22 13:21:31'),
(202, 'de', 'close_app', 'App schließen', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(203, 'de', 'are_you_sure_want_to_quit_this_application', 'Möchten Sie diese Anwendung wirklich beenden?', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(204, 'de', 'ok', 'OK', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(205, 'de', 'cancel', 'ABBRECHEN', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(206, 'de', 'change_theme', 'Thema ändern', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(207, 'de', 'customize_your_own_way', 'Passen Sie Ihren eigenen Weg an', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(208, 'de', 'navigation_bar_style', 'Stil der Navigationsleiste', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(209, 'de', 'header_type', 'Header-Typ', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(210, 'de', 'left_button_option', 'Linke Taste Option', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(211, 'de', 'right_button_option', 'Rechte Taste Option', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(212, 'de', 'color_gradient', 'Farbverlauf', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(213, 'de', 'color_solid', 'Farbe solide', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(214, 'de', 'loading_animation', 'Laden von Animationen', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(215, 'de', 'back_to_home_page', 'Zurück zur Startseite', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(216, 'de', 'dark_mode', 'Dunkler Modus', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(217, 'de', 'light_mode', 'Lichtmodus', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(218, 'de', 'follow_us', 'Folge uns', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(219, 'de', 'get_start', 'Überspringen', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(220, 'de', 'skip', 'Fangen Sie an', '2022-05-22 13:21:32', '2022-05-22 13:21:32'),
(221, 'it', 'home', 'Accoglienza', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(222, 'it', 'share', 'Suddividere', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(223, 'it', 'about', 'Di', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(224, 'it', 'rate_us', 'Valutaci', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(225, 'it', 'update_application', 'Aggiorna applicazione', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(226, 'it', 'notification', 'Notifica', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(227, 'it', 'languages', 'Le lingue', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(228, 'it', 'app_language', 'App Language', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(229, 'it', 'select_your_preferred_languages', 'Seleziona le tue lingue preferite', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(230, 'it', 'whoops', 'Spiacenti!', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(231, 'it', 'no_internet_connection', 'Nessuna connessione internet', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(232, 'it', 'try_again', 'Riprova', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(233, 'it', 'close_app', 'Close APP', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(234, 'it', 'are_you_sure_want_to_quit_this_application', 'Sei sicuro di voler uscire da questa app?', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(235, 'it', 'ok', 'Va bene', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(236, 'it', 'cancel', 'Per cancellare', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(237, 'it', 'change_theme', 'Cambia tema', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(238, 'it', 'customize_your_own_way', 'Personalizza a modo tuo', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(239, 'it', 'navigation_bar_style', 'Stile della barra di navigazione', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(240, 'it', 'header_type', 'Tipo di intestazione', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(241, 'it', 'left_button_option', 'Opzione pulsante sinistro', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(242, 'it', 'right_button_option', 'Opzione pulsante destro', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(243, 'it', 'color_gradient', 'Sfumatura di colore', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(244, 'it', 'color_solid', 'Colore solido', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(245, 'it', 'loading_animation', 'Caricamento animazione', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(246, 'it', 'back_to_home_page', 'Torna alla HomePage', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(247, 'it', 'dark_mode', 'Modalità scura', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(248, 'it', 'light_mode', 'Modalità luce', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(249, 'it', 'follow_us', 'Seguici', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(250, 'it', 'get_start', 'Inizia', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(251, 'it', 'skip', 'Saltare', '2022-05-22 13:21:34', '2022-05-22 13:21:34'),
(252, 'tr', 'home', 'Ev', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(253, 'tr', 'share', 'Paylaşmak', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(254, 'tr', 'about', 'Hakkında', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(255, 'tr', 'rate_us', 'Bizi değerlendirin', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(256, 'tr', 'update_application', 'Uygulamayı Güncelle', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(257, 'tr', 'notification', 'Bildirim', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(258, 'tr', 'languages', 'Diller', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(259, 'tr', 'app_language', 'Uygulama Dili', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(260, 'tr', 'select_your_preferred_languages', 'Tercih ettiğiniz dilleri seçin', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(261, 'tr', 'whoops', 'Eyvah!', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(262, 'tr', 'no_internet_connection', 'İnternet bağlantısı yok', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(263, 'tr', 'try_again', 'Tekrar deneyin', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(264, 'tr', 'close_app', 'Close APP', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(265, 'tr', 'are_you_sure_want_to_quit_this_application', 'Bu uygulamadan çıkmak istediğinizden emin misiniz?', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(266, 'tr', 'ok', 'TAMAM', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(267, 'tr', 'cancel', 'İPTAL ETMEK', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(268, 'tr', 'change_theme', 'Temayı değiştir', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(269, 'tr', 'customize_your_own_way', 'Kendi yolunu özelleştir', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(270, 'tr', 'navigation_bar_style', 'Gezinti çubuğu stili', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(271, 'tr', 'header_type', 'Başlık türü', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(272, 'tr', 'left_button_option', 'Sol Düğme Seçeneği', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(273, 'tr', 'right_button_option', 'Sağ Düğme Seçeneği', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(274, 'tr', 'color_gradient', 'Renk gradyanı', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(275, 'tr', 'color_solid', 'Renk Katı', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(276, 'tr', 'loading_animation', 'Animasyon Yükleniyor', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(277, 'tr', 'back_to_home_page', 'Ana sayfaya geri dön', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(278, 'tr', 'dark_mode', 'karanlık mod', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(279, 'tr', 'light_mode', 'Işık modu', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(280, 'tr', 'follow_us', 'Bizi takip et', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(281, 'tr', 'get_start', 'Atlamak', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(282, 'tr', 'skip', 'Başlayın', '2022-05-22 13:21:37', '2022-05-22 13:21:37'),
(283, 'ru', 'home', 'Главная', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(284, 'ru', 'share', 'Поделиться', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(285, 'ru', 'about', 'О приложении', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(286, 'ru', 'rate_us', 'Оцените нас', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(287, 'ru', 'update_application', 'Обновить приложение', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(288, 'ru', 'notification', 'Уведомление', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(289, 'ru', 'languages', 'Языки', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(290, 'ru', 'app_language', 'Язык приложения', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(291, 'ru', 'select_your_preferred_languages', 'Выберите предпочитаемый язык', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(292, 'ru', 'whoops', 'Упс!', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(293, 'ru', 'no_internet_connection', 'Нет соединения с интернетом', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(294, 'ru', 'try_again', 'Попробуйте снова', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(295, 'ru', 'close_app', 'Закрыть приложение', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(296, 'ru', 'are_you_sure_want_to_quit_this_application', 'Вы уверены, что хотите выйти из этого приложения?', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(297, 'ru', 'ok', 'OK', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(298, 'ru', 'cancel', 'ОТМЕНА', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(299, 'ru', 'change_theme', 'Сменить тему', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(300, 'ru', 'customize_your_own_way', 'Настроить по своему вкусу', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(301, 'ru', 'navigation_bar_style', 'Стиль панели навигации', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(302, 'ru', 'header_type', 'Тип заголовка', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(303, 'ru', 'left_button_option', 'Настройка левой кнопки', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(304, 'ru', 'right_button_option', 'Настройка правой кнопки', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(305, 'ru', 'color_gradient', 'Градиент', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(306, 'ru', 'color_solid', 'Цвет', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(307, 'ru', 'loading_animation', 'Анимация загрузки', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(308, 'ru', 'back_to_home_page', 'Вернуться на главную', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(309, 'ru', 'dark_mode', 'темный режим', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(310, 'ru', 'light_mode', 'световой режим', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(311, 'ru', 'follow_us', 'Подписывайтесь на нас', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(312, 'ru', 'get_start', 'Начать', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(313, 'ru', 'skip', 'Пропускать', '2022-05-22 13:21:39', '2022-05-22 13:21:39'),
(314, 'hi', 'home', 'घर', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(315, 'hi', 'share', 'शेयर करना', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(316, 'hi', 'about', 'के बारे में', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(317, 'hi', 'rate_us', 'हमें रेटिंग दें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(318, 'hi', 'update_application', 'अद्यतन आवेदन', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(319, 'hi', 'notification', 'अधिसूचना', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(320, 'hi', 'languages', 'बोली', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(321, 'hi', 'app_language', 'ऐप भाषा', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(322, 'hi', 'select_your_preferred_languages', 'अपनी पसंदीदा भाषाएं चुनें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(323, 'hi', 'whoops', 'ओह!', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(324, 'hi', 'no_internet_connection', 'कोई इंटरनेट कनेक्शन नहीं', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(325, 'hi', 'try_again', 'पुनः प्रयास करें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(326, 'hi', 'close_app', 'एपीपी बंद करें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(327, 'hi', 'are_you_sure_want_to_quit_this_application', 'क्या आप वाकई इस एप्लिकेशन को छोड़ना चाहते हैं?', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(328, 'hi', 'ok', 'ठीक है', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(329, 'hi', 'cancel', 'रद्द करना', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(330, 'hi', 'change_theme', 'विषय को परिवर्तित करें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(331, 'hi', 'customize_your_own_way', 'अपने तरीके से अनुकूलित करें', '2022-06-21 20:30:35', '2022-06-21 20:30:35'),
(332, 'hi', 'navigation_bar_style', 'नेविगेशन बार शैली', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(333, 'hi', 'header_type', 'हैडर प्रकार', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(334, 'hi', 'left_button_option', 'बायां बटन विकल्प', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(335, 'hi', 'right_button_option', 'दायां बटन विकल्प', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(336, 'hi', 'color_gradient', 'रंग ढाल', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(337, 'hi', 'color_solid', 'रंग ठोस', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(338, 'hi', 'loading_animation', 'एनिमेशन लोड हो रहा है', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(339, 'hi', 'back_to_home_page', 'मुखपृष्ठ पर वापस', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(340, 'hi', 'dark_mode', 'डार्क मोड', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(341, 'hi', 'light_mode', 'लाइट मोड', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(342, 'hi', 'follow_us', 'हमारे पर का पालन करें', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(343, 'hi', 'get_start', 'छोड़ें', '2022-06-21 20:30:36', '2022-06-21 20:30:36'),
(344, 'hi', 'skip', 'शुरू करो', '2022-06-21 20:30:36', '2022-06-21 20:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `useragent`
--

CREATE TABLE `useragent` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value_android` text NOT NULL,
  `value_ios` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `useragent`
--

INSERT INTO `useragent` (`id`, `title`, `value_android`, `value_ios`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chrome', 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/90.0.4430.78 Mobile/15E148 Safari/604.1', 1, '2021-11-21 18:08:11', '2021-05-17 20:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `picture` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `picture`) VALUES
(1, 'admin@gmail.com', 'crWzY87gQ/TcQ', 'Admin', 'Admin', 'user_1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_translations`
--
ALTER TABLE `about_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_translations`
--
ALTER TABLE `app_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boarding`
--
ALTER TABLE `boarding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floating`
--
ALTER TABLE `floating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floating_translations`
--
ALTER TABLE `floating_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_font`
--
ALTER TABLE `google_font`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_code`
--
ALTER TABLE `languages_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `left_navigation_icon`
--
ALTER TABLE `left_navigation_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_dynamics`
--
ALTER TABLE `menu_dynamics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_translations_dynamics` (`menu_id`);

--
-- Indexes for table `native_social`
--
ALTER TABLE `native_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `right_navigation_icon`
--
ALTER TABLE `right_navigation_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `splash`
--
ALTER TABLE `splash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_translations`
--
ALTER TABLE `tab_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useragent`
--
ALTER TABLE `useragent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `about_translations`
--
ALTER TABLE `about_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `app_translations`
--
ALTER TABLE `app_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `boarding`
--
ALTER TABLE `boarding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `floating`
--
ALTER TABLE `floating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `floating_translations`
--
ALTER TABLE `floating_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `google_font`
--
ALTER TABLE `google_font`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `languages_code`
--
ALTER TABLE `languages_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `left_navigation_icon`
--
ALTER TABLE `left_navigation_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_dynamics`
--
ALTER TABLE `menu_dynamics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `native_social`
--
ALTER TABLE `native_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `right_navigation_icon`
--
ALTER TABLE `right_navigation_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `splash`
--
ALTER TABLE `splash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_translations`
--
ALTER TABLE `tab_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `useragent`
--
ALTER TABLE `useragent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_dynamics` FOREIGN KEY (`menu_id`) REFERENCES `menu_dynamics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
