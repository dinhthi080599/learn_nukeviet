-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2020 at 03:04 PM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn_nukeviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_qldt_canbo`
--

CREATE TABLE `nv4_vi_qldt_canbo` (
  `ma_canbo` int NOT NULL,
  `ten_canbo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_qldt_lop`
--

CREATE TABLE `nv4_vi_qldt_lop` (
  `ma_lop` int NOT NULL,
  `ten_lop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_qldt_monhoc`
--

CREATE TABLE `nv4_vi_qldt_monhoc` (
  `ma_monhoc` int NOT NULL,
  `ten_monhoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoiluong` int NOT NULL,
  `donvitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_ten_module_diem`
--

CREATE TABLE `nv4_vi_ten_module_diem` (
  `ma_diem` int NOT NULL,
  `ma_dkm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_ten_module_loaidiem`
--

CREATE TABLE `nv4_vi_ten_module_loaidiem` (
  `ma_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_ten_module_lop`
--

CREATE TABLE `nv4_vi_ten_module_lop` (
  `ma_lop` int NOT NULL,
  `ten_lop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_ten_module_lopmon`
--

CREATE TABLE `nv4_vi_ten_module_lopmon` (
  `ma_lopmon` int NOT NULL,
  `ten_lopmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_monhoc` int DEFAULT NULL,
  `ma_canbo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_ten_module_sinhvien`
--

CREATE TABLE `nv4_vi_ten_module_sinhvien` (
  `ma_sv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_sv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_lop` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors`
--

CREATE TABLE `tbl_authors` (
  `admin_id` int UNSIGNED NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int NOT NULL DEFAULT '0',
  `edittime` int NOT NULL DEFAULT '0',
  `is_suspend` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pre_check_num` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int UNSIGNED NOT NULL DEFAULT '0',
  `pre_last_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_authors`
--

INSERT INTO `tbl_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', 'fff1e1937059aa4300a8a2287a521675', 1607064558, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors_config`
--

CREATE TABLE `tbl_authors_config` (
  `id` mediumint UNSIGNED NOT NULL,
  `keyname` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int UNSIGNED NOT NULL DEFAULT '0',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors_module`
--

CREATE TABLE `tbl_authors_module` (
  `mid` mediumint NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint NOT NULL DEFAULT '0',
  `act_1` tinyint NOT NULL DEFAULT '0',
  `act_2` tinyint NOT NULL DEFAULT '1',
  `act_3` tinyint NOT NULL DEFAULT '1',
  `checksum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_authors_module`
--

INSERT INTO `tbl_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '70339df2b6b1ac7053dde2a928451676'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '585c3536e3050f9ebc6d46ad333c2dcb'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'd01aafce38eb401da26053392998c266'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'bbb7dbdac9dd2f0de5ffd6159d4381d2'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, 'f33df954c92f8d0d77dec30192b0801f'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '6442ec540b5e72bf1a6cc988dc10594a'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '85496a96d1a97790d8820e78ca2cce33'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '3c476910054d3242d48e38f990ac855a'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '1f0a9a4f038290c1e607b1e30c9f4e4c'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, 'e68a07b56c2a7bcecb59793abd049dec'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '32f186ab817145ac0b32ee53ed4c9c1c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors_oauth`
--

CREATE TABLE `tbl_authors_oauth` (
  `id` mediumint UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banners_click`
--

CREATE TABLE `tbl_banners_click` (
  `id` int UNSIGNED NOT NULL,
  `bid` mediumint NOT NULL DEFAULT '0',
  `click_time` int UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int NOT NULL,
  `click_ip` varchar(46) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banners_plans`
--

CREATE TABLE `tbl_banners_plans` (
  `id` smallint UNSIGNED NOT NULL,
  `blang` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_banners_plans`
--

INSERT INTO `tbl_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banners_rows`
--

CREATE TABLE `tbl_banners_rows` (
  `id` mediumint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int UNSIGNED NOT NULL DEFAULT '0',
  `height` int UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_banners_rows`
--

INSERT INTO `tbl_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1605868004, 1605868004, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1605868004, 1605868004, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `lang` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', 'google'),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', '104472425294-r5o63r1h7a6ehmaruv1a1c5ema6fcvv2.apps.googleusercontent.com'),
('sys', 'site', 'google_client_secret', 'i3sS5dvu8k8PgdsNHwv4e8iQ'),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1605868004'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.4.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Hệ thống QLĐT'),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'login'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1607069035'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'webmaster@localhost'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'webmaster@localhost'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_q71FyH'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', 'root'),
('sys', 'global', 'ftp_user_pass', 'NfFqX1IfdcFbaew0gu3jaQ,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '3'),
('vi', 'themes', 'qldt_default', 'a:2:{s:10:\"generalcss\";s:261:\".p-0{\r\n padding: 0px;\r\n}\r\n.pt-20{\r\n padding-top: 20px;\r\n}\r\n.pt-40{\r\n padding-top: 40px;\r\n}\r\n.pt-80{\r\n padding-top: 80px;\r\n}\r\n.pl-20{\r\n padding-left: 20px;\r\n}\r\n.pr-20{\r\n padding-right: 20px;\r\n}\r\n.m-0{\r\n margin: 0px;\r\n}\r\n.br-0{\r\n border-radius: 0px !important;\r\n}\";s:11:\"css_content\";s:261:\".p-0{\r\n padding: 0px;\r\n}\r\n.pt-20{\r\n padding-top: 20px;\r\n}\r\n.pt-40{\r\n padding-top: 40px;\r\n}\r\n.pt-80{\r\n padding-top: 80px;\r\n}\r\n.pl-20{\r\n padding-left: 20px;\r\n}\r\n.pr-20{\r\n padding-right: 20px;\r\n}\r\n.m-0{\r\n margin: 0px;\r\n}\r\n.br-0{\r\n border-radius: 0px !important;\r\n}\";}'),
('sys', 'site', 'sitetimestamp', '14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cookies`
--

CREATE TABLE `tbl_cookies` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_counter`
--

CREATE TABLE `tbl_counter` (
  `c_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int NOT NULL DEFAULT '0',
  `c_count` int UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_counter`
--

INSERT INTO `tbl_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1607068734, 0),
('total', 'hits', 1607068734, 65, 65),
('year', '2020', 1607068734, 65, 65),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 1606651579, 37, 37),
('month', 'Dec', 1607068734, 28, 28),
('day', '01', 0, 0, 0),
('day', '02', 1606922479, 14, 14),
('day', '03', 1607013883, 7, 7),
('day', '04', 1607068734, 7, 7),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 1605891196, 0, 0),
('day', '21', 1605949755, 0, 0),
('day', '22', 1606040075, 0, 0),
('day', '23', 1606065293, 0, 0),
('day', '24', 1606235582, 0, 0),
('day', '25', 1606322046, 0, 0),
('day', '26', 1606369700, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1606651579, 0, 0),
('day', '30', 0, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1606651579, 3, 3),
('dayofweek', 'Monday', 1606065293, 1, 1),
('dayofweek', 'Tuesday', 1606235582, 3, 3),
('dayofweek', 'Wednesday', 1606922479, 31, 31),
('dayofweek', 'Thursday', 1607013883, 15, 15),
('dayofweek', 'Friday', 1607068734, 9, 9),
('dayofweek', 'Saturday', 1605949755, 3, 3),
('hour', '00', 1607017517, 2, 2),
('hour', '01', 1606240998, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1607047126, 2, 2),
('hour', '09', 1606876579, 0, 0),
('hour', '10', 1606879943, 0, 0),
('hour', '11', 1606881746, 0, 0),
('hour', '12', 1607059300, 1, 1),
('hour', '13', 1606891894, 0, 0),
('hour', '14', 1607068734, 2, 2),
('hour', '15', 1606898597, 0, 0),
('hour', '16', 1606902227, 0, 0),
('hour', '17', 1606040075, 0, 0),
('hour', '18', 0, 0, 0),
('hour', '19', 1606651579, 0, 0),
('hour', '20', 1607003119, 0, 0),
('hour', '21', 1607007008, 0, 0),
('hour', '22', 1607010646, 0, 0),
('hour', '23', 1607013883, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1607068734, 65, 65),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 1607068734, 65, 65),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1607068734, 65, 65),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cronjobs`
--

CREATE TABLE `tbl_cronjobs` (
  `id` mediumint UNSIGNED NOT NULL,
  `start_time` int UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int UNSIGNED NOT NULL DEFAULT '0',
  `inter_val_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cronjobs`
--

INSERT INTO `tbl_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1605868004, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1607068735, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1605868004, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1607003125, 1, 'Tự động lưu CSDL'),
(3, 1605868004, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1607068735, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1605868004, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1607067417, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1605868004, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1607003125, 1, 'Xóa các file error_log quá hạn'),
(6, 1605868004, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1605868004, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1607068735, 1, 'Xóa các referer quá hạn'),
(8, 1605868004, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1607068735, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1605868004, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1607003125, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extension_files`
--

CREATE TABLE `tbl_extension_files` (
  `idfile` mediumint UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ips`
--

CREATE TABLE `tbl_ips` (
  `id` mediumint NOT NULL,
  `type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint NOT NULL,
  `begintime` int DEFAULT NULL,
  `endtime` int DEFAULT NULL,
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ips`
--

INSERT INTO `tbl_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1605868072, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` mediumint UNSIGNED NOT NULL,
  `idfile` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `langtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language_file`
--

CREATE TABLE `tbl_language_file` (
  `idfile` mediumint UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint UNSIGNED NOT NULL,
  `log_time` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1605868078),
(2, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1605891209),
(3, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1605891212),
(4, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1605945996),
(5, 'vi', 'themes', 'Xóa các thiết lập', 'theme mobile_default', '', 1, 1605946017),
(6, 'vi', 'themes', 'Thiết lập giao diện theme: \"mobile_default\"', '', '', 1, 1605946021),
(7, 'vi', 'themes', 'Thiết lập giao diện theme: \"qldt_default\"', '', '', 1, 1605946098),
(8, 'vi', 'themes', 'Kích hoạt theme: \"qldt_default\"', '', '', 1, 1605946100),
(9, 'vi', 'themes', 'Kích hoạt theme: \"qldt_default\"', '', '', 1, 1605946100),
(10, 'vi', 'themes', 'Thêm block', 'Name : global QR code', '', 1, 1605949840),
(11, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1605949879),
(12, 'vi', 'themes', 'Sửa block', 'Name : global social', '', 1, 1605949890),
(13, 'vi', 'login', '[sammy] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1606038680),
(14, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1606038685),
(15, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1606038717),
(16, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1606038775),
(17, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1606039154),
(18, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1606039258),
(19, 'vi', 'login', '[root] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606230640),
(20, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606230647),
(21, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606230652),
(22, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606230655),
(23, 'vi', 'database', 'Tải về', 'File name: nv_BXFMxi', '', 1, 1606230780),
(24, 'vi', 'modules', 'Thiết lập module mới Security', '', '', 1, 1606233780),
(25, 'vi', 'modules', 'Sửa module &ldquo;Security&rdquo;', '', '', 1, 1606233788),
(26, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1606233861),
(27, 'vi', 'modules', 'Sửa module &ldquo;Security&rdquo;', '', '', 1, 1606234017),
(28, 'vi', 'themes', 'Thiết lập layout theme: \"qldt_default\"', '', '', 1, 1606234479),
(29, 'vi', 'themes', 'Thiết lập layout theme: \"qldt_default\"', '', '', 1, 1606238553),
(30, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606270565),
(31, 'vi', 'users', 'log_add_user', 'userid 2', '', 1, 1606270787),
(32, 'vi', 'login', '[test] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606275529),
(33, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606275534),
(34, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1606275540),
(35, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606275555),
(36, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606275731),
(37, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1606275945),
(38, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1606275946),
(39, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1606275955),
(40, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606275958),
(41, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:127.0.0.1', '', 0, 1606275975),
(42, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606276000),
(43, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:127.0.0.1', '', 1, 1606276832),
(44, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606276840),
(45, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1606276932),
(46, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1606277399),
(47, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1606277510),
(48, 'vi', 'users', '[admin] Đăng nhập bằng cổng google', ' Client IP:127.0.0.1', '', 0, 1606279292),
(49, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606279458),
(50, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606287872),
(51, 'vi', 'database', 'Tải về', 'File name: nv_PexWLu', '', 1, 1606288947),
(52, 'vi', 'modules', 'Thiết lập module mới nvtools', '', '', 1, 1606292184),
(53, 'vi', 'modules', 'Sửa module &ldquo;nvtools&rdquo;', '', '', 1, 1606292189),
(54, 'vi', 'themes', 'Kích hoạt theme: \"qldt_default\"', '', '', 1, 1606292219),
(55, 'vi', 'themes', 'Thiết lập layout theme: \"qldt_default\"', '', '', 1, 1606292261),
(56, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1606293146),
(57, 'vi', 'themes', 'Kích hoạt theme: \"qldt_default\"', '', '', 1, 1606293232),
(58, 'vi', 'modules', 'Xóa module \"nvtools\"', '', '', 1, 1606293678),
(59, 'vi', 'modules', 'Thiết lập module mới nvtools', '', '', 1, 1606293684),
(60, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606295564),
(61, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606295745),
(62, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606295748),
(63, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606295752),
(64, 'vi', 'database', 'Tải về', 'File name: nv_k39m0Z', '', 1, 1606295772),
(65, 'vi', 'database', 'Xuất dữ liệu mẫu', 'Name: t', '', 1, 1606295788),
(66, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1606297768),
(67, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606314448),
(68, 'vi', 'modules', 'Thiết lập module mới login', '', '', 1, 1606321169),
(69, 'vi', 'modules', 'Sửa module &ldquo;login&rdquo;', '', '', 1, 1606321187),
(70, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606361453),
(71, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606361821),
(72, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606362015),
(73, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606362023),
(74, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606362545),
(75, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606362773),
(76, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606363096),
(77, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606363103),
(78, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606363112),
(79, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606363677),
(80, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606363685),
(81, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1606363753),
(82, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606651667),
(83, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1606881746),
(84, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606885808),
(85, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606885811),
(86, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606885938),
(87, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606885947),
(88, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886056),
(89, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886191),
(90, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886204),
(91, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886216),
(92, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886238),
(93, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886297),
(94, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886305),
(95, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886313),
(96, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886529),
(97, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886553),
(98, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886629),
(99, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886659),
(100, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886669),
(101, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886686),
(102, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886739),
(103, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886751),
(104, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886772),
(105, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886778),
(106, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886816),
(107, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886832),
(108, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886834),
(109, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886881),
(110, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886923),
(111, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886938),
(112, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606886957),
(113, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606887066),
(114, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888572),
(115, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888580),
(116, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888591),
(117, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888605),
(118, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888653),
(119, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888864),
(120, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888875),
(121, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888897),
(122, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888959),
(123, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888967),
(124, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888974),
(125, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888981),
(126, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606888989),
(127, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889013),
(128, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889023),
(129, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889033),
(130, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889044),
(131, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889067),
(132, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889100),
(133, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889107),
(134, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889124),
(135, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889146),
(136, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889154),
(137, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889163),
(138, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889266),
(139, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889274),
(140, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889334),
(141, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889346),
(142, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889362),
(143, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1606889370),
(144, 'vi', 'modules', 'Xóa module \"qldt\"', '', '', 1, 1606889376),
(145, 'vi', 'modules', 'Thiết lập module mới qldt', '', '', 1, 1606889381),
(146, 'vi', 'modules', 'Sửa module &ldquo;qldt&rdquo;', '', '', 1, 1606889392),
(147, 'vi', 'modules', 'Thứ tự module: qldt', '19 -> 1', '', 1, 1606889397),
(148, 'vi', 'modules', 'Sửa module &ldquo;qldt&rdquo;', '', '', 1, 1606894180),
(149, 'vi', 'login', '[root] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1606900405),
(150, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1606900411),
(151, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1606922478),
(152, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607003126),
(153, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607005703),
(154, 'vi', 'themes', 'Thiết lập layout theme: \"qldt_default\"', '', '', 1, 1607005738),
(155, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607005842),
(156, 'vi', 'themes', 'Thêm block', 'Name : global metismenu', '', 1, 1607006370),
(157, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1607006398),
(158, 'vi', 'themes', 'Sửa block', 'Name : Contact Default', '', 1, 1607006402),
(159, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1607006407),
(160, 'vi', 'themes', 'Sửa block', 'Name : Copyright', '', 1, 1607006411),
(161, 'vi', 'themes', 'Sửa block', 'Name : Module Menu', '', 1, 1607006429),
(162, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1607006459),
(163, 'vi', 'themes', 'Cập nhật lại vị trí các block', 'reset position all block', '', 1, 1607006474),
(164, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607013938),
(165, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607013964),
(166, 'vi', 'upload', 'Upload file', 'uploads/screenshot-from-2020-12-03-23-37-53.png', '', 1, 1607014568),
(167, 'vi', 'upload', 'Upload file', 'uploads/screenshot-from-2020-12-03-23-33-47.png', '', 1, 1607017611),
(168, 'vi', 'users', 'Cấu hình module', 'Cấu hình đăng nhập, đăng kí bằng google', '', 1, 1607045722),
(169, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607046183),
(170, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1607046198),
(171, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 1, 1607046206),
(172, 'vi', 'users', '[test] Đăng nhập bằng cổng google', ' Client IP:127.0.0.1', '', 0, 1607046229),
(173, 'vi', 'users', '[test] Thoát khỏi tài khoản thành viên', ' Client IP:127.0.0.1', '', 2, 1607046259),
(174, 'vi', 'login', '[root] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1607060017),
(175, 'vi', 'login', '[root] Đăng nhập Thất bại', ' Client IP:127.0.0.1', '', 0, 1607060019),
(176, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607060023),
(177, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:127.0.0.1', '', 0, 1607061825),
(178, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1607064558),
(179, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607067422),
(180, 'vi', 'modules', 'Cài lại module \"qldt\"', '', '', 1, 1607068795);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint UNSIGNED NOT NULL,
  `language` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int UNSIGNED NOT NULL,
  `view` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plugin`
--

CREATE TABLE `tbl_plugin` (
  `pid` tinyint NOT NULL,
  `plugin_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint NOT NULL,
  `weight` tinyint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_plugin`
--

INSERT INTO `tbl_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_canbo`
--

CREATE TABLE `tbl_qldt_canbo` (
  `ma_canbo` int NOT NULL,
  `ten_canbo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_dangkymon`
--

CREATE TABLE `tbl_qldt_dangkymon` (
  `ma_dkm` int NOT NULL,
  `ma_lopmon` int NOT NULL,
  `ma_sv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_diem`
--

CREATE TABLE `tbl_qldt_diem` (
  `ma_diem` int NOT NULL,
  `ma_dkm` int NOT NULL,
  `ma_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_diemthi`
--

CREATE TABLE `tbl_qldt_diemthi` (
  `ma_diemthi` int NOT NULL,
  `ma_dkm` int NOT NULL,
  `ma_dsthi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_dsthi`
--

CREATE TABLE `tbl_qldt_dsthi` (
  `ma_dsthi` int NOT NULL,
  `thoigian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_phongthi` int NOT NULL,
  `ma_mon` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_dvhv`
--

CREATE TABLE `tbl_qldt_dvhv` (
  `ma_dvhv` int NOT NULL,
  `ten_dvhv` int NOT NULL,
  `kyhoc` int NOT NULL,
  `namhoc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_loaidiem`
--

CREATE TABLE `tbl_qldt_loaidiem` (
  `ma_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_loaidiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_lop`
--

CREATE TABLE `tbl_qldt_lop` (
  `ma_lop` int NOT NULL,
  `ten_lop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_lopmon`
--

CREATE TABLE `tbl_qldt_lopmon` (
  `ma_lopmon` int NOT NULL,
  `ten_lopmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_monhoc` int DEFAULT NULL,
  `ma_canbo` int DEFAULT NULL,
  `ma_dvhv` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_monhoc`
--

CREATE TABLE `tbl_qldt_monhoc` (
  `ma_monhoc` int NOT NULL,
  `ten_monhoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoiluong` int NOT NULL,
  `donvitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_phong`
--

CREATE TABLE `tbl_qldt_phong` (
  `ma_phong` int NOT NULL,
  `ten_phong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qldt_sinhvien`
--

CREATE TABLE `tbl_qldt_sinhvien` (
  `ma_sv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_sv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_lop` int DEFAULT NULL,
  `sdt` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmnd` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `session_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('gh28g2hdl01f2ra4knsvl5s813', 1, 'admin', 1607069033);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_extensions`
--

CREATE TABLE `tbl_setup_extensions` (
  `id` int NOT NULL DEFAULT '0',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int NOT NULL DEFAULT '0',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_setup_extensions`
--

INSERT INTO `tbl_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.4.02 1592816400', 1605868004, 'VINADES <contact@vinades.vn>', ''),
(0, 'theme', 'qldt_default', 0, 0, 'qldt_default', 'qldt_default', '4.4.02 1606230728', 1606230728, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'module', 'Security', 0, 0, 'Security', 'Security', '1.0.01 1606258620', 1606233779, 'Thi Đình Nguyễn', ''),
(0, 'module', 'nvtools', 0, 0, 'nvtools', 'nvtools', '4.0.0 1300553445', 1606292181, 'VINADES (contact@vinades.vn)', 'Công cụ xây dựng site'),
(0, 'module', 'sendmail', 0, 0, 'sendmail', 'sendmail', '1.0.01 1606258620', 1606292181, 'Thi Đình Nguyễn', ''),
(0, 'module', 'login', 0, 1, 'login', 'login', '1.0.00 1606320386', 1606321166, 'Thi Đình Nguyễn (ng.thi.0805@gmail.com)', 'Module đăng nhập'),
(0, 'module', 'qldt', 0, 1, 'qldt', 'qldt', '1.0.01 1606880828', 1606885859, 'Thi Đình Nguyễn (ng.thi.0805@gmail.com)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_language`
--

CREATE TABLE `tbl_setup_language` (
  `lang` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_setup_language`
--

INSERT INTO `tbl_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_dir`
--

CREATE TABLE `tbl_upload_dir` (
  `did` mediumint NOT NULL,
  `dirname` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int NOT NULL DEFAULT '0',
  `thumb_type` tinyint NOT NULL DEFAULT '0',
  `thumb_width` smallint NOT NULL DEFAULT '0',
  `thumb_height` smallint NOT NULL DEFAULT '0',
  `thumb_quality` tinyint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_upload_dir`
--

INSERT INTO `tbl_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1606878218, 0, 0, 0, 0),
(2, 'uploads/users', 1607014510, 0, 0, 0, 0),
(3, 'uploads/users/groups', 1607014511, 0, 0, 0, 0),
(4, 'uploads/comment', 1607065058, 0, 0, 0, 0),
(5, 'uploads/siteterms', 1607065063, 0, 0, 0, 0),
(6, 'uploads/banners', 1607065058, 0, 0, 0, 0),
(7, 'uploads/banners/files', 0, 0, 0, 0, 0),
(8, 'uploads/freecontent', 1607065075, 0, 0, 0, 0),
(9, 'uploads/page', 1607065065, 0, 0, 0, 0),
(10, 'uploads/contact', 1607065076, 0, 0, 0, 0),
(11, 'uploads/news', 1607065069, 0, 0, 0, 0),
(12, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(13, 'uploads/news/source', 0, 0, 0, 0, 0),
(14, 'uploads/news/topics', 0, 0, 0, 0, 0),
(15, 'uploads/menu', 1606889600, 0, 0, 0, 0),
(16, 'uploads/about', 1607065057, 0, 0, 0, 0),
(17, 'uploads/news/2020_11', 0, 0, 0, 0, 0),
(19, 'uploads/nvtools', 1607065068, 0, 0, 0, 0),
(20, 'uploads/nvtools/compiler', 0, 0, 0, 0, 0),
(21, 'uploads/login', 1607065074, 0, 0, 0, 0),
(23, 'uploads/qldt', 1607065064, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_file`
--

CREATE TABLE `tbl_upload_file` (
  `name` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int NOT NULL DEFAULT '0',
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int NOT NULL DEFAULT '0',
  `srcheight` int NOT NULL DEFAULT '0',
  `sizes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int NOT NULL DEFAULT '0',
  `did` int NOT NULL DEFAULT '0',
  `title` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_upload_file`
--

INSERT INTO `tbl_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('screenshot...png', 'png', 'image', 301163, 'assets/screenshot-from-2020-12-03-23-37-53.png', 80, 46, '1366|768', 1, 1607014568, 1, 'screenshot-from-2020-12-03-23-37-53.png', 'Screenshot from 2020 12 03 23 37 53'),
('screenshot...png', 'png', 'image', 186540, 'assets/screenshot-from-2020-12-03-23-33-47.png', 80, 46, '1366|768', 1, 1607017611, 1, 'screenshot-from-2020-12-03-23-33-47.png', 'Screenshot from 2020 12 03 23 33 47'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1604742846, 16, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1604742846, 16, 'nukevietcms.png', 'nukevietcms'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1604742846, 16, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1604742846, 16, 'nukevietvn.png', 'nukevietvn'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1604742846, 16, 'w.png', 'w'),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1604742846, 16, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1604742846, 16, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1604742846, 16, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('vinades.jpg', 'jpg', 'image', 104940, 'assets/banners/vinades.jpg', 43, 80, '212|400', 1, 1604742846, 6, 'vinades.jpg', 'vinades'),
('webnhanh.jpg', 'jpg', 'image', 74347, 'assets/banners/webnhanh.jpg', 80, 10, '572|72', 1, 1604742846, 6, 'webnhanh.jpg', 'webnhanh'),
('screenshot...png', 'png', 'image', 171686, 'assets/qldt/screenshot-from-2020-12-03-23-35-18.png', 80, 46, '1366|768', 1, 1607017737, 23, 'screenshot-from-2020-12-03-23-35-18.png', 'screenshot from 2020 12 03 23 35 18'),
('screenshot...png', 'png', 'image', 171686, 'assets/qldt/screenshot-from-2020-12-03-23-35-18_1.png', 80, 46, '1366|768', 1, 1607017744, 23, 'screenshot-from-2020-12-03-23-35-18_1.png', 'screenshot from 2020 12 03 23 35 18 1'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1604742846, 11, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1604742846, 11, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1604742846, 11, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1604742846, 11, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1604742846, 11, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1604742846, 11, 'nangly.jpg', 'nangly'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1604742846, 11, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1604742846, 11, 'nukeviet-cms.jpg', 'nukeviet cms'),
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1604742846, 11, 'hoptac 6.jpg', 'hoptac 6'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1604742846, 11, 'hoptac.jpg', 'hoptac'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1604742846, 11, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('shop.jpg', 'jpg', 'image', 26352, 'assets/freecontent/shop.jpg', 80, 44, '130|71', 1, 1604742846, 8, 'shop.jpg', 'shop'),
('cms.jpg', 'jpg', 'image', 29026, 'assets/freecontent/cms.jpg', 80, 44, '130|71', 1, 1604742846, 8, 'cms.jpg', 'cms'),
('portal.jpg', 'jpg', 'image', 25973, 'assets/freecontent/portal.jpg', 80, 44, '130|71', 1, 1604742846, 8, 'portal.jpg', 'portal'),
('toa-soan-d...jpg', 'jpg', 'image', 28737, 'assets/freecontent/toa-soan-dien-tu.jpg', 80, 44, '130|71', 1, 1604742846, 8, 'toa-soan-dien-tu.jpg', 'toa soan dien tu'),
('edugate.jpg', 'jpg', 'image', 28008, 'assets/freecontent/edugate.jpg', 80, 44, '130|71', 1, 1604742846, 8, 'edugate.jpg', 'edugate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userid` mediumint UNSIGNED NOT NULL,
  `group_id` smallint UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int NOT NULL,
  `sig` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `regdate` int NOT NULL DEFAULT '0',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int NOT NULL DEFAULT '0',
  `safemode` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}1SVH3B4nY6Af362Pbf2F6/84voRgRw8UqqB77n4tNIQ5/dG3L36N8KkgcHSavdaVV09DQq6Owyq2FOjao7+PqDM0ZmQ=', 'ng.thi.0805@gmail.com', 'admin', '', '', '', 0, '', 1605868071, 'FFC nghĩa là gì?', 'Fithou Free Open Source', '', 0, 1, '1', 1, 0, '', '4cba0299806e1caa1e62965e81f93a5b', 1606279292, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', '280116149304e03db8dba9a2b6612092d67ecd34', 0, 0, 0, '', -3, 'SYSTEM'),
(2, 4, 'test', '098f6bcd4621d373cade4e832627b4f6', '{SSHA512}1SVH3B4nY6Af362Pbf2F6/84voRgRw8UqqB77n4tNIQ5/dG3L36N8KkgcHSavdaVV09DQq6Owyq2FOjao7+PqDM0ZmQ=', 'nguyendinhthi080599@gmail.com', 'Thi', 'Nguyễn Đình', 'M', '', 943462800, 'Thu', 1606270787, 't11', 't11', '', 0, 1, '11,4', 1, 0, '', '9da4feec07d6212c1fde21d14f1ce2da', 1607046229, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'ce52008b57ec93112e3287bcf027f40081e699f2', 0, 0, 0, '', -1, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_backupcodes`
--

CREATE TABLE `tbl_users_backupcodes` (
  `userid` mediumint UNSIGNED NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_config`
--

CREATE TABLE `tbl_users_config` (
  `config` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_config`
--

INSERT INTO `tbl_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1606275955),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|1234569|11223344|12345678|12345679|23456789|66666666|66668888|68686868|87654321|88888888|99999999|123456789|999999999|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|hoilamgi|iloveyou|jennifer|jordan|khongbiet|khongco|khongcopass|letmein|macromedia|master|michael|monkey|mustang|nuke123|nuke123@|nuke@123|password|photoshop|pussy|qwerty|shadow|superman', 1606275955),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1606275955),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1606275955),
('avatar_width', '80', 1606275955),
('avatar_height', '80', 1606275955),
('active_group_newusers', '0', 1606275955),
('active_editinfo_censor', '0', 1606275955),
('active_user_logs', '1', 1606275955),
('min_old_user', '16', 1606275955),
('register_active_time', '86400', 1605868004),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_edit`
--

CREATE TABLE `tbl_users_edit` (
  `userid` mediumint UNSIGNED NOT NULL,
  `lastedit` int UNSIGNED NOT NULL DEFAULT '0',
  `info_basic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_field`
--

CREATE TABLE `tbl_users_field` (
  `fid` mediumint NOT NULL,
  `field` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int NOT NULL DEFAULT '0',
  `max_length` bigint UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint NOT NULL DEFAULT '1',
  `class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_field`
--

INSERT INTO `tbl_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_groups`
--

CREATE TABLE `tbl_users_groups` (
  `group_id` smallint UNSIGNED NOT NULL,
  `title` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int NOT NULL,
  `exp_time` int NOT NULL,
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint UNSIGNED NOT NULL,
  `idsite` int UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_groups`
--

INSERT INTO `tbl_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1605868004, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1605868004, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1605868004, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1605868004, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1605868004, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1605868004, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1605868004, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1605868004, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1605868004, 0, 9, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1605868004, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_groups_users`
--

CREATE TABLE `tbl_users_groups_users` (
  `group_id` smallint UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_groups_users`
--

INSERT INTO `tbl_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1605868071, 1605868071),
(11, 2, 0, 1, '0', 1606270787, 1606270787);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_info`
--

CREATE TABLE `tbl_users_info` (
  `userid` mediumint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_info`
--

INSERT INTO `tbl_users_info` (`userid`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_openid`
--

CREATE TABLE `tbl_users_openid` (
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_openid`
--

INSERT INTO `tbl_users_openid` (`userid`, `openid`, `opid`, `email`) VALUES
(1, 'google', '280116149304e03db8dba9a2b6612092d67ecd34', 'ng.thi.0805@gmail.com'),
(2, 'google', 'ce52008b57ec93112e3287bcf027f40081e699f2', 'nguyendinhthi080599@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_question`
--

CREATE TABLE `tbl_users_question` (
  `qid` smallint UNSIGNED NOT NULL,
  `title` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users_question`
--

INSERT INTO `tbl_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_reg`
--

CREATE TABLE `tbl_users_reg` (
  `userid` mediumint UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int NOT NULL,
  `sig` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `regdate` int UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `openid_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idsite` mediumint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_about`
--

CREATE TABLE `tbl_vi_about` (
  `id` mediumint UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint NOT NULL DEFAULT '0',
  `activecomm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int NOT NULL DEFAULT '0',
  `edit_time` int NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_about`
--

INSERT INTO `tbl_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style=\"font-size:20px;\"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href=\"/about/Gioi-thieu-ve-NukeViet-CMS.html\"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href=\"http://toasoandientu.vn\" target=\"_blank\">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href=\"https://github.com/nukeviet/module-shops\" target=\"_blank\">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style=\"font-size:20px;\"><strong>Video giới thiệu</strong></span></h2> <span style=\"font-size:14px;\">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style=\"text-align: center;\"> <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\"Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn\">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href=\"http://nukeviet.vn\">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng\"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\"Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch\">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99\">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7\">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"T.C3.ADnh_n.C4.83ng\"><strong>Tính năng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style=\"font-size:14px;\"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 1, 1, 1605868004, 1605868004, 1, 28, 0),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p style=\"text-align: justify;\">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class=\"mw-headline\" id=\"Ch.E1.BB.A9c_n.C4.83ng\"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style=\"text-align: justify;\"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style=\"text-align: justify;\">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href=\"http://nukeviet.vn\">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style=\"text-align: justify;\">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style=\"text-align: justify;\">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href=\"http://vinades.vn\" target=\"_blank\">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 2, 1, 1605868004, 1605868004, 1, 2, 0),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p style=\"text-align: justify;\">Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p style=\"text-align: justify;\"><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href=\"http://vi.wiktionary.org/wiki/nuke\" target=\"_blank\">http://vi.wiktionary.org/wiki/nuke</a></p>  <p style=\"text-align: justify;\">Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style=\"text-align:center\"><img alt=\"w\" height=\"143\" src=\"/learn_nukeviet/uploads/about/w.png\" style=\"width: 288px; height: 143px; border-width: 0px; border-style: solid;\" width=\"288\" /></p>  <p style=\"text-align: justify;\">Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p style=\"text-align: justify;\">Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms 180x84\" height=\"84\" src=\"/learn_nukeviet/uploads/about/nukevietcms-180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href=\"/learn_nukeviet/uploads/about/nukevietcms.png\">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms mu noel 180x84\" height=\"84\" src=\"/learn_nukeviet/uploads/about/nukevietcms_mu_noel_180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style=\"text-align:center\"><img alt=\"logo nukeviet3 flag 180x75\" height=\"75\" src=\"/learn_nukeviet/uploads/about/logo-nukeviet3-flag-180x75.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms laco 180x57\" height=\"57\" src=\"/learn_nukeviet/uploads/about/nukevietcms_laco_180x57.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style=\"text-align:center\"><img alt=\"nukevietvn 180x84\" height=\"84\" src=\"/learn_nukeviet/uploads/about/nukevietvn_180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href=\"/learn_nukeviet/uploads/about/nukevietvn.png\">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href=\"http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/\">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 3, 1, 1605868004, 1605868004, 1, 0, 0),
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href=\"mailto:dangtuan@vietkey.net\">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt\" target=\"_blank\">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href=\"http://www.gnu.org/licenses/gpl-3.0.txt\" target=\"_blank\">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href=\"http://vi.openoffice.org/gplv.html\" target=\"_blank\">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href=\"http://vi.wikisource.org/wiki/GPL\" target=\"_blank\">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href=\"http://vi.wikisource.org/wiki/LGPL\" target=\"_blank\">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href=\"http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU\" target=\"_blank\">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href=\"http://www.hvaonline.net/hvaonline/posts/list/7120.hva\" target=\"_blank\">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href=\"http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591\" target=\"_blank\">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 4, 1, 1605868004, 1605868004, 1, 0, 0);
INSERT INTO `tbl_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p style=\"text-align: justify;\"><span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Giới thiệu chung</span></span><br  /> <span style=\"font-weight: bold;\">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style=\"font-weight: bold;\">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style=\"font-weight: bold;\">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p style=\"text-align: justify;\"><span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Các tính năng của NukeViet 4</span></span></p> <span style=\"font-weight: bold;\">Nền tảng công nghệ</span>  <ul> 	<li style=\"text-align: justify;\"><span id=\"cke_bm_178S\" style=\"display: none;\">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL (Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li style=\"text-align: justify;\">Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li style=\"text-align: justify;\">Từng bước áp dụng các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li style=\"text-align: justify;\">Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li style=\"text-align: justify;\">Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li style=\"text-align: justify;\">Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id=\"cke_bm_178E\" style=\"display: none;\">&nbsp;</span></li> </ul>  <ul id=\"docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922\"> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Kiến trúc Module</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li style=\"text-align: justify;\">Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li style=\"text-align: justify;\">NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li style=\"text-align: justify;\">Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p style=\"text-align: justify;\"><br  /> <span style=\"font-weight: bold;\">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href=\"http://translate.nukeviet.vn\" target=\"_blank\">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style=\"font-weight: bold;\">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style=\"font-weight: bold;\">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style=\"font-weight: bold;\">Đa giao diện</span></p>  <ul> 	<li style=\"text-align: justify;\">Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li style=\"text-align: justify;\">NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li style=\"text-align: justify;\">NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li style=\"text-align: justify;\">Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p style=\"text-align: justify;\"><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style=\"font-weight: bold;\">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style=\"font-weight: bold;\">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li style=\"text-align: justify;\">Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li style=\"text-align: justify;\">Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li style=\"text-align: justify;\">NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li style=\"text-align: justify;\">Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li style=\"text-align: justify;\">Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li style=\"text-align: justify;\">hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li style=\"text-align: justify;\">Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý CSDL</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li style=\"text-align: justify;\">Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li style=\"text-align: justify;\">Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li style=\"text-align: justify;\">Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li style=\"text-align: justify;\">Cho phép đổi đường dẫn module</li> 	<li style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</li> 	<li style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li style=\"text-align: justify;\">Quản lý và tùy biến tiêu đề site, description</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li style=\"text-align: justify;\">Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý cấu hình robots.txt</li> 	<li style=\"text-align: justify;\">Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style=\"font-weight: bold;\">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p style=\"text-align: justify;\"><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p style=\"text-align: justify;\">Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style=\"font-weight: bold;\">Quản lý Upload</span></p>  <ul> 	<li style=\"text-align: justify;\">Upload file từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li style=\"text-align: justify;\">Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li style=\"text-align: justify;\">Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li style=\"text-align: justify;\">Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li style=\"text-align: justify;\">Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li style=\"text-align: justify;\">Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li style=\"text-align: justify;\">Quản lý block tin (nhóm tin đa luồng)</li> 	<li style=\"text-align: justify;\">Quản lý Tags</li> 	<li style=\"text-align: justify;\">Quản lý nguồn tin</li> 	<li style=\"text-align: justify;\">Tùy chỉnh bố cục trang tin.</li> 	<li style=\"text-align: justify;\">Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li style=\"text-align: justify;\">Cấp tin RSS</li> 	<li style=\"text-align: justify;\">Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Module Page:</span></p>  <ul> 	<li style=\"text-align: justify;\">Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li style=\"text-align: justify;\">Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li style=\"text-align: justify;\">Hỗ trợ RSS</li> 	<li style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý thành viên:</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý việc đăng nhập, đăng ký.</li> 	<li style=\"text-align: justify;\">Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li style=\"text-align: justify;\">Quản lý câu hỏi bảo mật.</li> 	<li style=\"text-align: justify;\">Quản lý nội quy.</li> 	<li style=\"text-align: justify;\">Quản lý thông tin thành viên.</li> 	<li style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li style=\"text-align: justify;\">Chức năng tùy biến trường dữ liệu thành viên</li> 	<li style=\"text-align: justify;\">Chức năng phân quyền sử dụng module users</li> 	<li style=\"text-align: justify;\">Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý thông tin liên hệ trên site.</li> 	<li style=\"text-align: justify;\">Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li style=\"text-align: justify;\">Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li style=\"text-align: justify;\">Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li style=\"text-align: justify;\">Tạo các thăm dò ý kiến</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý khách hàng.</li> 	<li style=\"text-align: justify;\">Quản lý các khu vực quảng cáo</li> 	<li style=\"text-align: justify;\">Quản lý các nội dung quảng cáo.</li> 	<li style=\"text-align: justify;\">Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li style=\"text-align: justify;\">Theo liên kết đến site</li> 	<li style=\"text-align: justify;\">Theo quốc gia</li> 	<li style=\"text-align: justify;\">Theo trình duyệt</li> 	<li style=\"text-align: justify;\">Theo hệ điều hành</li> 	<li style=\"text-align: justify;\">Máy chủ tìm kiếm</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Tìm kiếm</span></p>  <ul> 	<li style=\"text-align: justify;\">Tìm kiếm chung toàn hệ thống</li> 	<li style=\"text-align: justify;\">Tìm kiếm nâng cao từng khu vực</li> </ul>  <div style=\"text-align: justify;\"><strong>Module menu:</strong></div>  <ul> 	<li style=\"text-align: justify;\">Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li style=\"text-align: justify;\">Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p>  <ul> 	<li style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p style=\"text-align: justify;\"><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4, để xem đầy đủ hơn các tính năng <strong><a href=\"http://wiki.nukeviet.vn/nukeviet4:feature\">click vào đây</a></strong>. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 4, '', '0', 5, 1, 1605868004, 1605868004, 1, 0, 0),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class=\"sectionedit2\" id=\"moi_truong_may_chủ\">1. Môi trường máy chủ</h2>  <div class=\"level2\"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Hệ điều hành: Unix (Linux, Ubuntu, Fedora …) hoặc Windows</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class=\"u\"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class=\"urlextern\" href=\"http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao\" rel=\"nofollow\" target=\"_blank\" title=\"http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao\">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class=\"secedit editbutton_section editbutton_2\">  <div class=\"no\">&nbsp;</div>  </div>  <h2 class=\"sectionedit3\" id=\"may_tinh_nguời_truy_cập\">2. Máy tính người truy cập</h2>  <div class=\"level2\"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 6, 1, 1605868004, 1605868004, 1, 0, 0),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href=\"http://vinades.vn/\">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a></strong> thành một <a href=\"http://nukeviet.vn/\" target=\"_blank\">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p style=\"text-align: justify;\"><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href=\"http://toasoandientu.vn\" target=\"_blank\">Tòa Soạn Điện Tử</a></strong>, <strong><a href=\"http://webnhanh.vn\" target=\"_blank\">phần mềm trực tuyến</a></strong>, <strong><a href=\"http://vinades.vn\" target=\"_blank\">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style=\"font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;\">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href=\"http://vinades.vn/\">http://vinades.vn</a> | <a href=\"http://nukeviet.vn/\">http://nukeviet.vn</a> | <a href=\"http://webnhanh.vn/\">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 7, 1, 1605868004, 1605868004, 1, 0, 0),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h2>1. Ủng hộ bằng tiền mặt vào Quỹ tài trợ NukeViet</h2>\r\nQua tài khoản Paypal:\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=5LUSNE2SV5RR2\" target=\"_blank\"><img alt=\"\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif\" /></a></p>\r\nChuyển khoản ngân hàng trực tiếp:\r\n\r\n<ul>\r\n	<li>Người đứng tên tài khoản:&nbsp;NGUYEN THE HUNG</li>\r\n	<li>Số tài khoản:&nbsp;0031000792053</li>\r\n	<li>Loại tài khoản: VND (Việt Nam Đồng)</li>\r\n	<li>Ngân hàng Vietcombank chi nhánh Hải Phòng.</li>\r\n	<li>Website:&nbsp;<a href=\"http://www.vietcombank.com.vn/\">http://www.vietcombank.com.vn</a></li>\r\n</ul>\r\n\r\n<div class=\"alert alert-info\">Lưu ý: Đây là tài khoản hợp lệ duy nhất mà NukeViet.VN sử dụng cho&nbsp;Quỹ tài trợ NukeViet.</div>\r\nThảo luận tại đây:&nbsp;<a href=\"http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592\" target=\"_blank\">http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592</a>\r\n\r\n<h2>2. Ủng hộ bằng cách sử dụng và phổ biến NukeViet đến nhiều người hơn</h2>\r\nCách đơn giản nhất để ủng hộ NukeViet phát triển là sử dụng NukeViet và giúp NukeViet phổ biến đến nhiều người hơn (ví dụ như giữ lại dòng chữ &quot;Powered by&nbsp;<a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a>&quot; hoặc &quot;Sử dụng&nbsp;<a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a>&quot; trên website của bạn, viết bài giới thiệu NukeViet đến mọi người).<br />\r\nNếu bạn có thời gian, bạn có thể tham gia&nbsp;<a href=\"http://forum.nukeviet.vn/\" target=\"_blank\">diễn đàn NukeViet</a>&nbsp;thường xuyên và giúp đỡ những người mới sử dụng NukeViet.\r\n\r\n<h2>3. Ủng hộ bằng cách tham gia phát triển NukeViet</h2>\r\n\r\n<h3>3.1. Phát triển module, giao diện cho NukeViet</h3>\r\nNếu bạn biết code, hãy tham gia viết module, block, theme cho NukeViet và đưa lên&nbsp;<a href=\"http://nukeviet.vn/vi/store/\" target=\"_blank\">NukeViet Store</a>&nbsp;để cung cấp cho cộng đồng. Bạn cũng có thể tham gia đội ngũ phát triển NukeViet.\r\n\r\n<h3>3.2. Tham gia phát triển nhân hệ thống</h3>\r\nToàn bộ code nhân hệ thống NukeViet đã được đưa lên GitHub.com (truy cập tắt:&nbsp;<a href=\"http://code.nukeviet.vn/\" target=\"_blank\">http://code.nukeviet.vn</a>), dù bạn là ai, cá nhân hay doanh nghiệp chỉ cần có một tài khoản tại GitHub và học cách sử dụng&nbsp;<a href=\"#git\">git&nbsp;(1)</a>&nbsp;là bạn có thể tham gia phát triển code NukeViet. Tìm hiểu thêm về việc tham gia phát triển code nhân hệ thống NukeViet tại đây:&nbsp;<a href=\"http://wiki.nukeviet.vn/programming:github_rule\" target=\"_blank\">http://wiki.nukeviet.vn/programming:github_rule</a>\r\n\r\n<h3>3.3. Tham gia dịch thuật</h3>\r\nNếu bạn biết ngoại ngữ, hãy đăng ký tham gia đội ngũ dịch thuật tình nguyện tại&nbsp;<a href=\"http://translate.nukeviet.vn/\" target=\"_blank\">NukeViet Stranslate System</a>&nbsp;để dịch thuật NukeViet sang các ngôn ngữ khác, quảng bá NukeViet ra với thế giới.\r\n\r\n<h3>3.4. Tham gia viết tài liệu hướng dẫn sử dụng</h3>\r\nNếu bạn không biết code, không biết ngoại ngữ, bạn vẫn có thể tham gia đóng góp cho NukeViet bằng cách biên soạn tài liệu hướng dẫn người dùng NukeViet tại thư viện tài liệu mở của NukeViet ở địa chỉ&nbsp;<a href=\"http://wiki.nukeviet.vn/\" target=\"_blank\">http://wiki.nukeviet.vn</a>\r\n\r\n<hr  /> <a id=\"git\" name=\"git\">(1)</a>: Tìm hiểu về git:&nbsp;<a href=\"http://wiki.nukeviet.vn/programming:vcs:git\" target=\"_blank\">http://wiki.nukeviet.vn/programming:vcs:git</a>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 8, 1, 1605868004, 1605868004, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_about_config`
--

CREATE TABLE `tbl_vi_about_config` (
  `config_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_about_config`
--

INSERT INTO `tbl_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_blocks_groups`
--

CREATE TABLE `tbl_vi_blocks_groups` (
  `bid` mediumint UNSIGNED NOT NULL,
  `theme` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int DEFAULT '0',
  `active` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint NOT NULL DEFAULT '0',
  `weight` int NOT NULL DEFAULT '0',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_blocks_groups`
--

INSERT INTO `tbl_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:54:\"/learn_nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(31, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(32, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(33, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(34, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(35, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(36, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(37, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(38, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(39, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(40, 'qldt_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:74:\"+84-24-85872007&#91;+842485872007&#93;|+84-904762534&#91;+84904762534&#93;\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(41, 'qldt_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(42, 'qldt_default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(43, 'qldt_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=vi&nv=siteterms\";}'),
(44, 'qldt_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(45, 'qldt_default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(46, 'qldt_default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 2, ''),
(49, 'qldt_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(50, 'qldt_default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(51, 'qldt_default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(52, 'qldt_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(53, 'qldt_default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(55, 'qldt_default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(59, 'qldt_default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(60, 'qldt_default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(62, 'qldt_default', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:33:\"https://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(63, 'qldt_default', 'menu', 'global.metismenu.php', 'global metismenu', '', 'simple', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_blocks_weight`
--

CREATE TABLE `tbl_vi_blocks_weight` (
  `bid` mediumint NOT NULL DEFAULT '0',
  `func_id` mediumint NOT NULL DEFAULT '0',
  `weight` mediumint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_blocks_weight`
--

INSERT INTO `tbl_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 41, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 51, 1),
(16, 61, 1),
(16, 64, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 52, 1),
(16, 63, 1),
(16, 55, 1),
(16, 56, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 62, 1),
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 61, 1),
(18, 64, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 52, 1),
(18, 63, 1),
(18, 55, 1),
(18, 56, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 62, 1),
(21, 1, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 41, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 50, 1),
(21, 51, 1),
(21, 61, 1),
(21, 64, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 52, 1),
(21, 63, 1),
(21, 55, 1),
(21, 56, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 37, 1),
(21, 58, 1),
(21, 59, 1),
(21, 60, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 29, 1),
(21, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 62, 1),
(12, 1, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 51, 2),
(12, 61, 2),
(12, 64, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 52, 2),
(12, 63, 2),
(12, 55, 2),
(12, 56, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 58, 2),
(12, 59, 2),
(12, 60, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 62, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 61, 2),
(6, 64, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 52, 2),
(6, 63, 2),
(6, 55, 2),
(6, 56, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 62, 2),
(20, 1, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 61, 1),
(20, 64, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 52, 1),
(20, 63, 1),
(20, 55, 1),
(20, 56, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 62, 1),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 61, 1),
(17, 64, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 52, 1),
(17, 63, 1),
(17, 55, 1),
(17, 56, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 61, 2),
(14, 64, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 52, 2),
(14, 63, 2),
(14, 55, 2),
(14, 56, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 62, 2),
(7, 1, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 61, 1),
(7, 64, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 52, 1),
(7, 63, 1),
(7, 55, 1),
(7, 56, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 62, 1),
(8, 1, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 61, 2),
(8, 64, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 52, 2),
(8, 63, 2),
(8, 55, 2),
(8, 56, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 62, 2),
(9, 1, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 51, 3),
(9, 61, 3),
(9, 64, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 52, 3),
(9, 63, 3),
(9, 55, 3),
(9, 56, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 62, 3),
(10, 1, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 61, 4),
(10, 64, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 52, 4),
(10, 63, 4),
(10, 55, 4),
(10, 56, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(10, 62, 4),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 61, 1),
(19, 64, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 52, 1),
(19, 63, 1),
(19, 55, 1),
(19, 56, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 62, 1),
(1, 4, 1),
(2, 4, 2),
(31, 1, 1),
(31, 38, 1),
(31, 39, 1),
(31, 40, 1),
(31, 41, 1),
(31, 47, 1),
(31, 48, 1),
(31, 49, 1),
(31, 50, 1),
(31, 51, 1),
(31, 61, 1),
(31, 64, 1),
(31, 4, 1),
(31, 5, 1),
(31, 6, 1),
(31, 7, 1),
(31, 8, 1),
(31, 9, 1),
(31, 10, 1),
(31, 11, 1),
(31, 12, 1),
(31, 52, 1),
(31, 63, 1),
(31, 55, 1),
(31, 56, 1),
(31, 31, 1),
(31, 32, 1),
(31, 33, 1),
(31, 34, 1),
(31, 35, 1),
(31, 36, 1),
(31, 37, 1),
(31, 58, 1),
(31, 59, 1),
(31, 60, 1),
(31, 19, 1),
(31, 20, 1),
(31, 21, 1),
(31, 22, 1),
(31, 23, 1),
(31, 24, 1),
(31, 25, 1),
(31, 26, 1),
(31, 27, 1),
(31, 28, 1),
(31, 29, 1),
(31, 62, 1),
(32, 1, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 47, 1),
(32, 48, 1),
(32, 49, 1),
(32, 50, 1),
(32, 51, 1),
(32, 61, 1),
(32, 64, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 52, 1),
(32, 63, 1),
(32, 55, 1),
(32, 56, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 58, 1),
(32, 59, 1),
(32, 60, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 62, 1),
(33, 1, 1),
(33, 38, 1),
(33, 39, 1),
(33, 40, 1),
(33, 41, 1),
(33, 47, 1),
(33, 48, 1),
(33, 49, 1),
(33, 50, 1),
(33, 51, 1),
(33, 61, 1),
(33, 64, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(33, 52, 1),
(33, 63, 1),
(33, 55, 1),
(33, 56, 1),
(33, 31, 1),
(33, 32, 1),
(33, 33, 1),
(33, 34, 1),
(33, 35, 1),
(33, 36, 1),
(33, 37, 1),
(33, 58, 1),
(33, 59, 1),
(33, 60, 1),
(33, 19, 1),
(33, 20, 1),
(33, 21, 1),
(33, 22, 1),
(33, 23, 1),
(33, 24, 1),
(33, 25, 1),
(33, 26, 1),
(33, 27, 1),
(33, 28, 1),
(33, 29, 1),
(33, 62, 1),
(34, 1, 1),
(34, 38, 1),
(34, 39, 1),
(34, 40, 1),
(34, 41, 1),
(34, 47, 1),
(34, 48, 1),
(34, 49, 1),
(34, 50, 1),
(34, 51, 1),
(34, 61, 1),
(34, 64, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 52, 1),
(34, 63, 1),
(34, 55, 1),
(34, 56, 1),
(34, 31, 1),
(34, 32, 1),
(34, 33, 1),
(34, 34, 1),
(34, 35, 1),
(34, 36, 1),
(34, 37, 1),
(34, 58, 1),
(34, 59, 1),
(34, 60, 1),
(34, 19, 1),
(34, 20, 1),
(34, 21, 1),
(34, 22, 1),
(34, 23, 1),
(34, 24, 1),
(34, 25, 1),
(34, 26, 1),
(34, 27, 1),
(34, 28, 1),
(34, 29, 1),
(34, 62, 1),
(35, 1, 2),
(35, 38, 2),
(35, 39, 2),
(35, 40, 2),
(35, 41, 2),
(35, 47, 2),
(35, 48, 2),
(35, 49, 2),
(35, 50, 2),
(35, 51, 2),
(35, 61, 2),
(35, 64, 2),
(35, 4, 2),
(35, 5, 2),
(35, 6, 2),
(35, 7, 2),
(35, 8, 2),
(35, 9, 2),
(35, 10, 2),
(35, 11, 2),
(35, 12, 2),
(35, 52, 2),
(35, 63, 2),
(35, 55, 2),
(35, 56, 2),
(35, 31, 2),
(35, 32, 2),
(35, 33, 2),
(35, 34, 2),
(35, 35, 2),
(35, 36, 2),
(35, 37, 2),
(35, 58, 2),
(35, 59, 2),
(35, 60, 2),
(35, 19, 2),
(35, 20, 2),
(35, 21, 2),
(35, 22, 2),
(35, 23, 2),
(35, 24, 2),
(35, 25, 2),
(35, 26, 2),
(35, 27, 2),
(35, 28, 2),
(35, 29, 2),
(35, 62, 2),
(36, 1, 1),
(36, 38, 1),
(36, 39, 1),
(36, 40, 1),
(36, 41, 1),
(36, 47, 1),
(36, 48, 1),
(36, 49, 1),
(36, 50, 1),
(36, 51, 1),
(36, 61, 1),
(36, 64, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 52, 1),
(36, 63, 1),
(36, 55, 1),
(36, 56, 1),
(36, 31, 1),
(36, 32, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 36, 1),
(36, 37, 1),
(36, 58, 1),
(36, 59, 1),
(36, 60, 1),
(36, 19, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 28, 1),
(36, 29, 1),
(36, 62, 1),
(37, 1, 2),
(37, 38, 2),
(37, 39, 2),
(37, 40, 2),
(37, 41, 2),
(37, 47, 2),
(37, 48, 2),
(37, 49, 2),
(37, 50, 2),
(37, 51, 2),
(37, 61, 2),
(37, 64, 2),
(37, 4, 2),
(37, 5, 2),
(37, 6, 2),
(37, 7, 2),
(37, 8, 2),
(37, 9, 2),
(37, 10, 2),
(37, 11, 2),
(37, 12, 2),
(37, 52, 2),
(37, 63, 2),
(37, 55, 2),
(37, 56, 2),
(37, 31, 2),
(37, 32, 2),
(37, 33, 2),
(37, 34, 2),
(37, 35, 2),
(37, 36, 2),
(37, 37, 2),
(37, 58, 2),
(37, 59, 2),
(37, 60, 2),
(37, 19, 2),
(37, 20, 2),
(37, 21, 2),
(37, 22, 2),
(37, 23, 2),
(37, 24, 2),
(37, 25, 2),
(37, 26, 2),
(37, 27, 2),
(37, 28, 2),
(37, 29, 2),
(37, 62, 2),
(38, 1, 3),
(38, 38, 3),
(38, 39, 3),
(38, 40, 3),
(38, 41, 3),
(38, 47, 3),
(38, 48, 3),
(38, 49, 3),
(38, 50, 3),
(38, 51, 3),
(38, 61, 3),
(38, 64, 3),
(38, 4, 3),
(38, 5, 3),
(38, 6, 3),
(38, 7, 3),
(38, 8, 3),
(38, 9, 3),
(38, 10, 3),
(38, 11, 3),
(38, 12, 3),
(38, 52, 3),
(38, 63, 3),
(38, 55, 3),
(38, 56, 3),
(38, 31, 3),
(38, 32, 3),
(38, 33, 3),
(38, 34, 3),
(38, 35, 3),
(38, 36, 3),
(38, 37, 3),
(38, 58, 3),
(38, 59, 3),
(38, 60, 3),
(38, 19, 3),
(38, 20, 3),
(38, 21, 3),
(38, 22, 3),
(38, 23, 3),
(38, 24, 3),
(38, 25, 3),
(38, 26, 3),
(38, 27, 3),
(38, 28, 3),
(38, 29, 3),
(38, 62, 3),
(39, 1, 4),
(39, 38, 4),
(39, 39, 4),
(39, 40, 4),
(39, 41, 4),
(39, 47, 4),
(39, 48, 4),
(39, 49, 4),
(39, 50, 4),
(39, 51, 4),
(39, 61, 4),
(39, 64, 4),
(39, 4, 4),
(39, 5, 4),
(39, 6, 4),
(39, 7, 4),
(39, 8, 4),
(39, 9, 4),
(39, 10, 4),
(39, 11, 4),
(39, 12, 4),
(39, 52, 4),
(39, 63, 4),
(39, 55, 4),
(39, 56, 4),
(39, 31, 4),
(39, 32, 4),
(39, 33, 4),
(39, 34, 4),
(39, 35, 4),
(39, 36, 4),
(39, 37, 4),
(39, 58, 4),
(39, 59, 4),
(39, 60, 4),
(39, 19, 4),
(39, 20, 4),
(39, 21, 4),
(39, 22, 4),
(39, 23, 4),
(39, 24, 4),
(39, 25, 4),
(39, 26, 4),
(39, 27, 4),
(39, 28, 4),
(39, 29, 4),
(39, 62, 4),
(40, 1, 1),
(40, 38, 1),
(40, 39, 1),
(40, 40, 1),
(40, 41, 1),
(40, 47, 1),
(40, 48, 1),
(40, 49, 1),
(40, 50, 1),
(40, 51, 1),
(40, 61, 1),
(40, 64, 1),
(40, 4, 1),
(40, 5, 1),
(40, 6, 1),
(40, 7, 1),
(40, 8, 1),
(40, 9, 1),
(40, 10, 1),
(40, 11, 1),
(40, 12, 1),
(40, 52, 1),
(40, 63, 1),
(40, 55, 1),
(40, 56, 1),
(40, 31, 1),
(40, 32, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 36, 1),
(40, 37, 1),
(40, 58, 1),
(40, 59, 1),
(40, 60, 1),
(40, 19, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 28, 1),
(40, 29, 1),
(40, 62, 1),
(41, 1, 1),
(41, 38, 1),
(41, 39, 1),
(41, 40, 1),
(41, 41, 1),
(41, 47, 1),
(41, 48, 1),
(41, 49, 1),
(41, 50, 1),
(41, 51, 1),
(41, 61, 1),
(41, 64, 1),
(41, 4, 1),
(41, 5, 1),
(41, 6, 1),
(41, 7, 1),
(41, 8, 1),
(41, 9, 1),
(41, 10, 1),
(41, 11, 1),
(41, 12, 1),
(41, 52, 1),
(41, 63, 1),
(41, 55, 1),
(41, 56, 1),
(41, 31, 1),
(41, 32, 1),
(41, 33, 1),
(41, 34, 1),
(41, 35, 1),
(41, 36, 1),
(41, 37, 1),
(41, 58, 1),
(41, 59, 1),
(41, 60, 1),
(41, 19, 1),
(41, 20, 1),
(41, 21, 1),
(41, 22, 1),
(41, 23, 1),
(41, 24, 1),
(41, 25, 1),
(41, 26, 1),
(41, 27, 1),
(41, 28, 1),
(41, 29, 1),
(41, 62, 1),
(42, 1, 1),
(42, 38, 1),
(42, 39, 1),
(42, 40, 1),
(42, 41, 1),
(42, 47, 1),
(42, 48, 1),
(42, 49, 1),
(42, 50, 1),
(42, 51, 1),
(42, 61, 1),
(42, 64, 1),
(42, 4, 1),
(42, 5, 1),
(42, 6, 1),
(42, 7, 1),
(42, 8, 1),
(42, 9, 1),
(42, 10, 1),
(42, 11, 1),
(42, 12, 1),
(42, 52, 1),
(42, 63, 1),
(42, 55, 1),
(42, 56, 1),
(42, 31, 1),
(42, 32, 1),
(42, 33, 1),
(42, 34, 1),
(42, 35, 1),
(42, 36, 1),
(42, 37, 1),
(42, 58, 1),
(42, 59, 1),
(42, 60, 1),
(42, 19, 1),
(42, 20, 1),
(42, 21, 1),
(42, 22, 1),
(42, 23, 1),
(42, 24, 1),
(42, 25, 1),
(42, 26, 1),
(42, 27, 1),
(42, 28, 1),
(42, 29, 1),
(42, 62, 1),
(43, 1, 1),
(43, 38, 1),
(43, 39, 1),
(43, 40, 1),
(43, 41, 1),
(43, 47, 1),
(43, 48, 1),
(43, 49, 1),
(43, 50, 1),
(43, 51, 1),
(43, 61, 1),
(43, 64, 1),
(43, 4, 1),
(43, 5, 1),
(43, 6, 1),
(43, 7, 1),
(43, 8, 1),
(43, 9, 1),
(43, 10, 1),
(43, 11, 1),
(43, 12, 1),
(43, 52, 1),
(43, 63, 1),
(43, 55, 1),
(43, 56, 1),
(43, 31, 1),
(43, 32, 1),
(43, 33, 1),
(43, 34, 1),
(43, 35, 1),
(43, 36, 1),
(43, 37, 1),
(43, 58, 1),
(43, 59, 1),
(43, 60, 1),
(43, 19, 1),
(43, 20, 1),
(43, 21, 1),
(43, 22, 1),
(43, 23, 1),
(43, 24, 1),
(43, 25, 1),
(43, 26, 1),
(43, 27, 1),
(43, 28, 1),
(43, 29, 1),
(43, 62, 1),
(44, 1, 2),
(44, 38, 2),
(44, 39, 2),
(44, 40, 2),
(44, 41, 2),
(44, 47, 2),
(44, 48, 2),
(44, 49, 2),
(44, 50, 2),
(44, 51, 2),
(44, 61, 2),
(44, 64, 2),
(44, 4, 2),
(44, 5, 2),
(44, 6, 2),
(44, 7, 2),
(44, 8, 2),
(44, 9, 2),
(44, 10, 2),
(44, 11, 2),
(44, 12, 2),
(44, 52, 2),
(44, 63, 2),
(44, 55, 2),
(44, 56, 2),
(44, 31, 2),
(44, 32, 2),
(44, 33, 2),
(44, 34, 2),
(44, 35, 2),
(44, 36, 2),
(44, 37, 2),
(44, 58, 2),
(44, 59, 2),
(44, 60, 2),
(44, 19, 2),
(44, 20, 2),
(44, 21, 2),
(44, 22, 2),
(44, 23, 2),
(44, 24, 2),
(44, 25, 2),
(44, 26, 2),
(44, 27, 2),
(44, 28, 2),
(44, 29, 2),
(44, 62, 2),
(45, 4, 1),
(45, 5, 1),
(45, 6, 1),
(45, 7, 1),
(45, 8, 1),
(45, 9, 1),
(45, 10, 1),
(45, 11, 1),
(45, 12, 1),
(46, 19, 2),
(46, 20, 2),
(46, 21, 2),
(46, 22, 2),
(46, 23, 2),
(46, 24, 2),
(46, 25, 2),
(46, 26, 2),
(46, 27, 2),
(46, 28, 2),
(46, 31, 2),
(46, 32, 2),
(46, 33, 2),
(46, 34, 2),
(46, 35, 2),
(46, 36, 2),
(46, 37, 2),
(49, 1, 1),
(49, 38, 1),
(49, 39, 1),
(49, 40, 1),
(49, 41, 1),
(49, 47, 1),
(49, 48, 1),
(49, 49, 1),
(49, 50, 1),
(49, 51, 1),
(49, 61, 1),
(49, 64, 1),
(49, 4, 1),
(49, 5, 1),
(49, 6, 1),
(49, 7, 1),
(49, 8, 1),
(49, 9, 1),
(49, 10, 1),
(49, 11, 1),
(49, 12, 1),
(49, 52, 1),
(49, 63, 1),
(49, 55, 1),
(49, 56, 1),
(49, 31, 1),
(49, 32, 1),
(49, 33, 1),
(49, 34, 1),
(49, 35, 1),
(49, 36, 1),
(49, 37, 1),
(49, 58, 1),
(49, 59, 1),
(49, 60, 1),
(49, 19, 1),
(49, 20, 1),
(49, 21, 1),
(49, 22, 1),
(49, 23, 1),
(49, 24, 1),
(49, 25, 1),
(49, 26, 1),
(49, 27, 1),
(49, 28, 1),
(49, 29, 1),
(49, 62, 1),
(50, 1, 1),
(50, 38, 1),
(50, 39, 1),
(50, 40, 1),
(50, 41, 1),
(50, 47, 1),
(50, 48, 1),
(50, 49, 1),
(50, 50, 1),
(50, 51, 1),
(50, 61, 1),
(50, 64, 1),
(50, 4, 1),
(50, 5, 1),
(50, 6, 1),
(50, 7, 1),
(50, 8, 1),
(50, 9, 1),
(50, 10, 1),
(50, 11, 1),
(50, 12, 1),
(50, 52, 1),
(50, 63, 1),
(50, 55, 1),
(50, 56, 1),
(50, 31, 1),
(50, 32, 1),
(50, 33, 1),
(50, 34, 1),
(50, 35, 1),
(50, 36, 1),
(50, 37, 1),
(50, 58, 1),
(50, 59, 1),
(50, 60, 1),
(50, 19, 1),
(50, 20, 1),
(50, 21, 1),
(50, 22, 1),
(50, 23, 1),
(50, 24, 1),
(50, 25, 1),
(50, 26, 1),
(50, 27, 1),
(50, 28, 1),
(50, 29, 1),
(50, 62, 1),
(51, 1, 1),
(51, 38, 1),
(51, 39, 1),
(51, 40, 1),
(51, 41, 1),
(51, 47, 1),
(51, 48, 1),
(51, 49, 1),
(51, 50, 1),
(51, 51, 1),
(51, 61, 1),
(51, 64, 1),
(51, 4, 1),
(51, 5, 1),
(51, 6, 1),
(51, 7, 1),
(51, 8, 1),
(51, 9, 1),
(51, 10, 1),
(51, 11, 1),
(51, 12, 1),
(51, 52, 1),
(51, 63, 1),
(51, 55, 1),
(51, 56, 1),
(51, 31, 1),
(51, 32, 1),
(51, 33, 1),
(51, 34, 1),
(51, 35, 1),
(51, 36, 1),
(51, 37, 1),
(51, 58, 1),
(51, 59, 1),
(51, 60, 1),
(51, 19, 1),
(51, 20, 1),
(51, 21, 1),
(51, 22, 1),
(51, 23, 1),
(51, 24, 1),
(51, 25, 1),
(51, 26, 1),
(51, 27, 1),
(51, 28, 1),
(51, 29, 1),
(51, 62, 1),
(52, 1, 1),
(52, 38, 1),
(52, 39, 1),
(52, 40, 1),
(52, 41, 1),
(52, 47, 1),
(52, 48, 1),
(52, 49, 1),
(52, 50, 1),
(52, 51, 1),
(52, 61, 1),
(52, 64, 1),
(52, 4, 1),
(52, 5, 1),
(52, 6, 1),
(52, 7, 1),
(52, 8, 1),
(52, 9, 1),
(52, 10, 1),
(52, 11, 1),
(52, 12, 1),
(52, 52, 1),
(52, 63, 1),
(52, 55, 1),
(52, 56, 1),
(52, 31, 1),
(52, 32, 1),
(52, 33, 1),
(52, 34, 1),
(52, 35, 1),
(52, 36, 1),
(52, 37, 1),
(52, 58, 1),
(52, 59, 1),
(52, 60, 1),
(52, 19, 1),
(52, 20, 1),
(52, 21, 1),
(52, 22, 1),
(52, 23, 1),
(52, 24, 1),
(52, 25, 1),
(52, 26, 1),
(52, 27, 1),
(52, 28, 1),
(52, 29, 1),
(52, 62, 1),
(53, 1, 2),
(53, 38, 2),
(53, 39, 2),
(53, 40, 2),
(53, 41, 2),
(53, 47, 2),
(53, 48, 2),
(53, 49, 2),
(53, 50, 2),
(53, 51, 2),
(53, 61, 2),
(53, 64, 2),
(53, 4, 2),
(53, 5, 2),
(53, 6, 2),
(53, 7, 2),
(53, 8, 2),
(53, 9, 2),
(53, 10, 2),
(53, 11, 2),
(53, 12, 2),
(53, 52, 2),
(53, 63, 2),
(53, 55, 2),
(53, 56, 2),
(53, 31, 2),
(53, 32, 2),
(53, 33, 2),
(53, 34, 2),
(53, 35, 2),
(53, 36, 2),
(53, 37, 2),
(53, 58, 2),
(53, 59, 2),
(53, 60, 2),
(53, 19, 2),
(53, 20, 2),
(53, 21, 2),
(53, 22, 2),
(53, 23, 2),
(53, 24, 2),
(53, 25, 2),
(53, 26, 2),
(53, 27, 2),
(53, 28, 2),
(53, 29, 2),
(53, 62, 2),
(55, 1, 1),
(55, 38, 1),
(55, 39, 1),
(55, 40, 1),
(55, 41, 1),
(55, 47, 1),
(55, 48, 1),
(55, 49, 1),
(55, 50, 1),
(55, 51, 1),
(55, 61, 1),
(55, 64, 1),
(55, 4, 1),
(55, 5, 1),
(55, 6, 1),
(55, 7, 1),
(55, 8, 1),
(55, 9, 1),
(55, 10, 1),
(55, 11, 1),
(55, 12, 1),
(55, 52, 1),
(55, 63, 1),
(55, 55, 1),
(55, 56, 1),
(55, 31, 1),
(55, 32, 1),
(55, 33, 1),
(55, 34, 1),
(55, 35, 1),
(55, 36, 1),
(55, 37, 1),
(55, 58, 1),
(55, 59, 1),
(55, 60, 1),
(55, 19, 1),
(55, 20, 1),
(55, 21, 1),
(55, 22, 1),
(55, 23, 1),
(55, 24, 1),
(55, 25, 1),
(55, 26, 1),
(55, 27, 1),
(55, 28, 1),
(55, 29, 1),
(55, 62, 1),
(59, 4, 1),
(60, 4, 2),
(62, 1, 1),
(62, 4, 1),
(62, 5, 1),
(62, 6, 1),
(62, 7, 1),
(62, 8, 1),
(62, 9, 1),
(62, 10, 1),
(62, 11, 1),
(62, 12, 1),
(62, 19, 1),
(62, 20, 1),
(62, 21, 1),
(62, 22, 1),
(62, 23, 1),
(62, 24, 1),
(62, 25, 1),
(62, 26, 1),
(62, 27, 1),
(62, 28, 1),
(62, 29, 1),
(62, 61, 1),
(62, 31, 1),
(62, 32, 1),
(62, 33, 1),
(62, 34, 1),
(62, 35, 1),
(62, 36, 1),
(62, 37, 1),
(62, 62, 1),
(62, 38, 1),
(62, 39, 1),
(62, 40, 1),
(62, 41, 1),
(62, 63, 1),
(62, 64, 1),
(62, 52, 1),
(62, 47, 1),
(62, 48, 1),
(62, 49, 1),
(62, 50, 1),
(62, 51, 1),
(62, 55, 1),
(62, 56, 1),
(62, 58, 1),
(62, 59, 1),
(62, 60, 1),
(16, 65, 1),
(18, 65, 1),
(21, 65, 1),
(11, 65, 1),
(12, 65, 2),
(5, 65, 1),
(6, 65, 2),
(20, 65, 1),
(17, 65, 1),
(15, 65, 1),
(13, 65, 1),
(14, 65, 2),
(7, 65, 1),
(8, 65, 2),
(9, 65, 3),
(10, 65, 4),
(19, 65, 1),
(31, 65, 1),
(32, 65, 1),
(33, 65, 1),
(34, 65, 1),
(35, 65, 2),
(36, 65, 1),
(37, 65, 2),
(38, 65, 3),
(39, 65, 4),
(40, 65, 1),
(41, 65, 1),
(42, 65, 1),
(43, 65, 1),
(44, 65, 2),
(49, 65, 1),
(50, 65, 1),
(51, 65, 1),
(52, 65, 1),
(53, 65, 2),
(55, 65, 1),
(62, 65, 1),
(45, 1, 1),
(45, 19, 1),
(45, 20, 1),
(45, 21, 1),
(45, 22, 1),
(45, 23, 1),
(45, 24, 1),
(45, 25, 1),
(45, 26, 1),
(45, 27, 1),
(45, 28, 1),
(45, 29, 1),
(45, 61, 1),
(45, 31, 1),
(45, 32, 1),
(45, 33, 1),
(45, 34, 1),
(45, 35, 1),
(45, 36, 1),
(45, 37, 1),
(45, 62, 1),
(45, 38, 1),
(45, 39, 1),
(45, 40, 1),
(45, 41, 1),
(45, 63, 1),
(45, 64, 1),
(45, 52, 1),
(45, 47, 1),
(45, 48, 1),
(45, 49, 1),
(45, 50, 1),
(45, 51, 1),
(45, 55, 1),
(45, 56, 1),
(45, 58, 1),
(45, 59, 1),
(45, 60, 1),
(45, 65, 1),
(16, 68, 1),
(16, 69, 1),
(16, 66, 1),
(16, 67, 1),
(18, 68, 1),
(18, 69, 1),
(18, 66, 1),
(18, 67, 1),
(21, 68, 1),
(21, 69, 1),
(21, 66, 1),
(21, 67, 1),
(11, 68, 1),
(11, 69, 1),
(11, 66, 1),
(11, 67, 1),
(12, 68, 2),
(12, 69, 2),
(12, 66, 2),
(12, 67, 2),
(5, 68, 1),
(5, 69, 1),
(5, 66, 1),
(5, 67, 1),
(6, 68, 2),
(6, 69, 2),
(6, 66, 2),
(6, 67, 2),
(20, 68, 1),
(20, 69, 1),
(20, 66, 1),
(20, 67, 1),
(17, 68, 1),
(17, 69, 1),
(17, 66, 1),
(17, 67, 1),
(15, 68, 1),
(15, 69, 1),
(15, 66, 1),
(15, 67, 1),
(13, 68, 1),
(13, 69, 1),
(13, 66, 1),
(13, 67, 1),
(14, 68, 2),
(14, 69, 2),
(14, 66, 2),
(14, 67, 2),
(7, 68, 1),
(7, 69, 1),
(7, 66, 1),
(7, 67, 1),
(8, 68, 2),
(8, 69, 2),
(8, 66, 2),
(8, 67, 2),
(9, 68, 3),
(9, 69, 3),
(9, 66, 3),
(9, 67, 3),
(10, 68, 4),
(10, 69, 4),
(10, 66, 4),
(10, 67, 4),
(19, 68, 1),
(19, 69, 1),
(19, 66, 1),
(19, 67, 1),
(31, 68, 1),
(31, 69, 1),
(31, 66, 1),
(31, 67, 1),
(32, 68, 1),
(32, 69, 1),
(32, 66, 1),
(32, 67, 1),
(33, 68, 1),
(33, 69, 1),
(33, 66, 1),
(33, 67, 1),
(34, 68, 1),
(34, 69, 1),
(34, 66, 1),
(34, 67, 1),
(35, 68, 2),
(35, 69, 2),
(35, 66, 2),
(35, 67, 2),
(36, 68, 1),
(36, 69, 1),
(36, 66, 1),
(36, 67, 1),
(37, 68, 2),
(37, 69, 2),
(37, 66, 2),
(37, 67, 2),
(38, 68, 3),
(38, 69, 3),
(38, 66, 3),
(38, 67, 3),
(39, 68, 4),
(39, 69, 4),
(39, 66, 4),
(39, 67, 4),
(46, 1, 2),
(40, 106, 1),
(46, 5, 2),
(46, 4, 2),
(46, 98, 2),
(41, 106, 1),
(46, 106, 2),
(46, 96, 2),
(46, 97, 2),
(42, 106, 1),
(46, 101, 2),
(46, 102, 2),
(46, 100, 2),
(43, 106, 1),
(46, 105, 2),
(46, 99, 2),
(44, 68, 1),
(44, 69, 1),
(44, 66, 1),
(44, 67, 1),
(45, 68, 1),
(45, 69, 1),
(45, 66, 1),
(45, 67, 1),
(49, 68, 1),
(49, 69, 1),
(49, 66, 1),
(49, 67, 1),
(50, 68, 1),
(50, 69, 1),
(50, 66, 1),
(50, 67, 1),
(51, 68, 1),
(51, 69, 1),
(51, 66, 1),
(51, 67, 1),
(52, 68, 1),
(52, 69, 1),
(52, 66, 1),
(52, 67, 1),
(53, 68, 2),
(53, 69, 2),
(53, 66, 2),
(53, 67, 2),
(55, 68, 1),
(55, 69, 1),
(55, 66, 1),
(55, 67, 1),
(62, 68, 1),
(62, 69, 1),
(62, 66, 1),
(62, 67, 1),
(16, 79, 1),
(16, 80, 1),
(16, 76, 1),
(16, 71, 1),
(16, 70, 1),
(16, 77, 1),
(16, 72, 1),
(16, 81, 1),
(16, 82, 1),
(16, 74, 1),
(16, 75, 1),
(18, 79, 1),
(18, 80, 1),
(18, 76, 1),
(18, 71, 1),
(18, 70, 1),
(18, 77, 1),
(18, 72, 1),
(18, 81, 1),
(18, 82, 1),
(18, 74, 1),
(18, 75, 1),
(21, 79, 1),
(21, 80, 1),
(21, 76, 1),
(21, 71, 1),
(21, 70, 1),
(21, 77, 1),
(21, 72, 1),
(21, 81, 1),
(21, 82, 1),
(21, 74, 1),
(21, 75, 1),
(11, 79, 1),
(11, 80, 1),
(11, 76, 1),
(11, 71, 1),
(11, 70, 1),
(11, 77, 1),
(11, 72, 1),
(11, 81, 1),
(11, 82, 1),
(11, 74, 1),
(11, 75, 1),
(12, 79, 2),
(12, 80, 2),
(12, 76, 2),
(12, 71, 2),
(12, 70, 2),
(12, 77, 2),
(12, 72, 2),
(12, 81, 2),
(12, 82, 2),
(12, 74, 2),
(12, 75, 2),
(5, 79, 1),
(5, 80, 1),
(5, 76, 1),
(5, 71, 1),
(5, 70, 1),
(5, 77, 1),
(5, 72, 1),
(5, 81, 1),
(5, 82, 1),
(5, 74, 1),
(5, 75, 1),
(6, 79, 2),
(6, 80, 2),
(6, 76, 2),
(6, 71, 2),
(6, 70, 2),
(6, 77, 2),
(6, 72, 2),
(6, 81, 2),
(6, 82, 2),
(6, 74, 2),
(6, 75, 2),
(20, 79, 1),
(20, 80, 1),
(20, 76, 1),
(20, 71, 1),
(20, 70, 1),
(20, 77, 1),
(20, 72, 1),
(20, 81, 1),
(20, 82, 1),
(20, 74, 1),
(20, 75, 1),
(17, 79, 1),
(17, 80, 1),
(17, 76, 1),
(17, 71, 1),
(17, 70, 1),
(17, 77, 1),
(17, 72, 1),
(17, 81, 1),
(17, 82, 1),
(17, 74, 1),
(17, 75, 1),
(15, 79, 1),
(15, 80, 1),
(15, 76, 1),
(15, 71, 1),
(15, 70, 1),
(15, 77, 1),
(15, 72, 1),
(15, 81, 1),
(15, 82, 1),
(15, 74, 1),
(15, 75, 1),
(13, 79, 1),
(13, 80, 1),
(13, 76, 1),
(13, 71, 1),
(13, 70, 1),
(13, 77, 1),
(13, 72, 1),
(13, 81, 1),
(13, 82, 1),
(13, 74, 1),
(13, 75, 1),
(14, 79, 2),
(14, 80, 2),
(14, 76, 2),
(14, 71, 2),
(14, 70, 2),
(14, 77, 2),
(14, 72, 2),
(14, 81, 2),
(14, 82, 2),
(14, 74, 2),
(14, 75, 2),
(7, 79, 1),
(7, 80, 1),
(7, 76, 1),
(7, 71, 1),
(7, 70, 1),
(7, 77, 1),
(7, 72, 1),
(7, 81, 1),
(7, 82, 1),
(7, 74, 1),
(7, 75, 1),
(8, 79, 2),
(8, 80, 2),
(8, 76, 2),
(8, 71, 2),
(8, 70, 2),
(8, 77, 2),
(8, 72, 2),
(8, 81, 2),
(8, 82, 2),
(8, 74, 2),
(8, 75, 2),
(9, 79, 3),
(9, 80, 3),
(9, 76, 3),
(9, 71, 3),
(9, 70, 3),
(9, 77, 3),
(9, 72, 3),
(9, 81, 3),
(9, 82, 3),
(9, 74, 3),
(9, 75, 3),
(10, 79, 4),
(10, 80, 4),
(10, 76, 4),
(10, 71, 4),
(10, 70, 4),
(10, 77, 4),
(10, 72, 4),
(10, 81, 4),
(10, 82, 4),
(10, 74, 4),
(10, 75, 4),
(19, 79, 1),
(19, 80, 1),
(19, 76, 1),
(19, 71, 1),
(19, 70, 1),
(19, 77, 1),
(19, 72, 1),
(19, 81, 1),
(19, 82, 1),
(19, 74, 1),
(19, 75, 1),
(31, 79, 1),
(31, 80, 1),
(31, 76, 1),
(31, 71, 1),
(31, 70, 1),
(31, 77, 1),
(31, 72, 1),
(31, 81, 1),
(31, 82, 1),
(31, 74, 1),
(31, 75, 1),
(32, 79, 1),
(32, 80, 1),
(32, 76, 1),
(32, 71, 1),
(32, 70, 1),
(32, 77, 1),
(32, 72, 1),
(32, 81, 1),
(32, 82, 1),
(32, 74, 1),
(32, 75, 1),
(33, 79, 1),
(33, 80, 1),
(33, 76, 1),
(33, 71, 1),
(33, 70, 1),
(33, 77, 1),
(33, 72, 1),
(33, 81, 1),
(33, 82, 1),
(33, 74, 1),
(33, 75, 1),
(34, 79, 1),
(34, 80, 1),
(34, 76, 1),
(34, 71, 1),
(34, 70, 1),
(34, 77, 1),
(34, 72, 1),
(34, 81, 1),
(34, 82, 1),
(34, 74, 1),
(34, 75, 1),
(35, 79, 2),
(35, 80, 2),
(35, 76, 2),
(35, 71, 2),
(35, 70, 2),
(35, 77, 2),
(35, 72, 2),
(35, 81, 2),
(35, 82, 2),
(35, 74, 2),
(35, 75, 2),
(36, 79, 1),
(36, 80, 1),
(36, 76, 1),
(36, 71, 1),
(36, 70, 1),
(36, 77, 1),
(36, 72, 1),
(36, 81, 1),
(36, 82, 1),
(36, 74, 1),
(36, 75, 1),
(37, 79, 2),
(37, 80, 2),
(37, 76, 2),
(37, 71, 2),
(37, 70, 2),
(37, 77, 2),
(37, 72, 2),
(37, 81, 2),
(37, 82, 2),
(37, 74, 2),
(37, 75, 2),
(38, 79, 3),
(38, 80, 3),
(38, 76, 3),
(38, 71, 3),
(38, 70, 3),
(38, 77, 3),
(38, 72, 3),
(38, 81, 3),
(38, 82, 3),
(38, 74, 3),
(38, 75, 3),
(39, 79, 4),
(39, 80, 4),
(39, 76, 4),
(39, 71, 4),
(39, 70, 4),
(39, 77, 4),
(39, 72, 4),
(39, 81, 4),
(39, 82, 4),
(39, 74, 4),
(39, 75, 4),
(40, 79, 1),
(40, 80, 1),
(40, 76, 1),
(40, 71, 1),
(40, 70, 1),
(40, 77, 1),
(40, 72, 1),
(40, 81, 1),
(40, 82, 1),
(40, 74, 1),
(40, 75, 1),
(41, 79, 1),
(41, 80, 1),
(41, 76, 1),
(41, 71, 1),
(41, 70, 1),
(41, 77, 1),
(41, 72, 1),
(41, 81, 1),
(41, 82, 1),
(41, 74, 1),
(41, 75, 1),
(42, 79, 1),
(42, 80, 1),
(42, 76, 1),
(42, 71, 1),
(42, 70, 1),
(42, 77, 1),
(42, 72, 1),
(42, 81, 1),
(42, 82, 1),
(42, 74, 1),
(42, 75, 1),
(43, 79, 1),
(43, 80, 1),
(43, 76, 1),
(43, 71, 1),
(43, 70, 1),
(43, 77, 1),
(43, 72, 1),
(43, 81, 1),
(43, 82, 1),
(43, 74, 1),
(43, 75, 1),
(44, 79, 2),
(44, 80, 2),
(44, 76, 2),
(44, 71, 2),
(44, 70, 2),
(44, 77, 2),
(44, 72, 2),
(44, 81, 2),
(44, 82, 2),
(44, 74, 2),
(44, 75, 2),
(45, 79, 1),
(45, 80, 1),
(45, 76, 1),
(45, 71, 1),
(45, 70, 1),
(45, 77, 1),
(45, 72, 1),
(45, 81, 1),
(45, 82, 1),
(45, 74, 1),
(45, 75, 1),
(49, 79, 1),
(49, 80, 1),
(49, 76, 1),
(49, 71, 1),
(49, 70, 1),
(49, 77, 1),
(49, 72, 1),
(49, 81, 1),
(49, 82, 1),
(49, 74, 1),
(49, 75, 1),
(50, 79, 1),
(50, 80, 1),
(50, 76, 1),
(50, 71, 1),
(50, 70, 1),
(50, 77, 1),
(50, 72, 1),
(50, 81, 1),
(50, 82, 1),
(50, 74, 1),
(50, 75, 1),
(51, 79, 1),
(51, 80, 1),
(51, 76, 1),
(51, 71, 1),
(51, 70, 1),
(51, 77, 1),
(51, 72, 1),
(51, 81, 1),
(51, 82, 1),
(51, 74, 1),
(51, 75, 1),
(52, 79, 1),
(52, 80, 1),
(52, 76, 1),
(52, 71, 1),
(52, 70, 1),
(52, 77, 1),
(52, 72, 1),
(52, 81, 1),
(52, 82, 1),
(52, 74, 1),
(52, 75, 1),
(53, 79, 2),
(53, 80, 2),
(53, 76, 2),
(53, 71, 2),
(53, 70, 2),
(53, 77, 2),
(53, 72, 2),
(53, 81, 2),
(53, 82, 2),
(53, 74, 2),
(53, 75, 2),
(55, 79, 1),
(55, 80, 1),
(55, 76, 1),
(55, 71, 1),
(55, 70, 1),
(55, 77, 1),
(55, 72, 1),
(55, 81, 1),
(55, 82, 1),
(55, 74, 1),
(55, 75, 1),
(62, 79, 1),
(62, 80, 1),
(62, 76, 1),
(62, 71, 1),
(62, 70, 1),
(62, 77, 1),
(62, 72, 1),
(62, 81, 1),
(62, 82, 1),
(62, 74, 1),
(62, 75, 1),
(16, 83, 1),
(18, 83, 1),
(21, 83, 1),
(11, 83, 1),
(12, 83, 2),
(5, 83, 1),
(6, 83, 2),
(20, 83, 1),
(17, 83, 1),
(15, 83, 1),
(13, 83, 1),
(14, 83, 2),
(7, 83, 1),
(8, 83, 2),
(9, 83, 3),
(10, 83, 4),
(19, 83, 1),
(31, 83, 1),
(32, 83, 1),
(33, 83, 1),
(34, 83, 1),
(35, 83, 2),
(36, 83, 1),
(37, 83, 2),
(38, 83, 3),
(39, 83, 4),
(40, 83, 1),
(41, 83, 1),
(42, 83, 1),
(43, 83, 1),
(44, 83, 2),
(45, 83, 1),
(49, 83, 1),
(50, 83, 1),
(51, 83, 1),
(52, 83, 1),
(53, 83, 2),
(55, 83, 1),
(62, 83, 1),
(16, 100, 1),
(16, 99, 1),
(16, 105, 1),
(16, 97, 1),
(16, 102, 1),
(16, 101, 1),
(16, 98, 1),
(16, 96, 1),
(18, 100, 1),
(18, 99, 1),
(18, 105, 1),
(18, 97, 1),
(18, 102, 1),
(18, 101, 1),
(18, 98, 1),
(18, 96, 1),
(21, 100, 1),
(21, 99, 1),
(21, 105, 1),
(21, 97, 1),
(21, 102, 1),
(21, 101, 1),
(21, 98, 1),
(21, 96, 1),
(11, 100, 1),
(11, 99, 1),
(11, 105, 1),
(11, 97, 1),
(11, 102, 1),
(11, 101, 1),
(11, 98, 1),
(11, 96, 1),
(12, 100, 2),
(12, 99, 2),
(12, 105, 2),
(12, 97, 2),
(12, 102, 2),
(12, 101, 2),
(12, 98, 2),
(12, 96, 2),
(5, 100, 1),
(5, 99, 1),
(5, 105, 1),
(5, 97, 1),
(5, 102, 1),
(5, 101, 1),
(5, 98, 1),
(5, 96, 1),
(6, 100, 2),
(6, 99, 2),
(6, 105, 2),
(6, 97, 2),
(6, 102, 2),
(6, 101, 2),
(6, 98, 2),
(6, 96, 2),
(20, 100, 1),
(20, 99, 1),
(20, 105, 1),
(20, 97, 1),
(20, 102, 1),
(20, 101, 1),
(20, 98, 1),
(20, 96, 1),
(17, 100, 1),
(17, 99, 1),
(17, 105, 1),
(17, 97, 1),
(17, 102, 1),
(17, 101, 1),
(17, 98, 1),
(17, 96, 1),
(15, 100, 1),
(15, 99, 1),
(15, 105, 1),
(15, 97, 1),
(15, 102, 1),
(15, 101, 1),
(15, 98, 1),
(15, 96, 1),
(13, 100, 1),
(13, 99, 1),
(13, 105, 1),
(13, 97, 1),
(13, 102, 1),
(13, 101, 1),
(13, 98, 1),
(13, 96, 1),
(14, 100, 2),
(14, 99, 2),
(14, 105, 2),
(14, 97, 2),
(14, 102, 2),
(14, 101, 2),
(14, 98, 2),
(14, 96, 2),
(7, 100, 1),
(7, 99, 1),
(7, 105, 1),
(7, 97, 1),
(7, 102, 1),
(7, 101, 1),
(7, 98, 1),
(7, 96, 1),
(8, 100, 2),
(8, 99, 2),
(8, 105, 2),
(8, 97, 2),
(8, 102, 2),
(8, 101, 2),
(8, 98, 2),
(8, 96, 2),
(9, 100, 3),
(9, 99, 3),
(9, 105, 3),
(9, 97, 3),
(9, 102, 3),
(9, 101, 3),
(9, 98, 3),
(9, 96, 3),
(10, 100, 4),
(10, 99, 4),
(10, 105, 4),
(10, 97, 4),
(10, 102, 4),
(10, 101, 4),
(10, 98, 4),
(10, 96, 4),
(19, 100, 1),
(19, 99, 1),
(19, 105, 1),
(19, 97, 1),
(19, 102, 1),
(19, 101, 1),
(19, 98, 1),
(19, 96, 1),
(31, 100, 1),
(31, 99, 1),
(31, 105, 1),
(31, 97, 1),
(31, 102, 1),
(31, 101, 1),
(31, 98, 1),
(31, 96, 1),
(32, 100, 1),
(32, 99, 1),
(32, 105, 1),
(32, 97, 1),
(32, 102, 1),
(32, 101, 1),
(32, 98, 1),
(32, 96, 1),
(33, 100, 1),
(33, 99, 1),
(33, 105, 1),
(33, 97, 1),
(33, 102, 1),
(33, 101, 1),
(33, 98, 1),
(33, 96, 1),
(34, 100, 1),
(34, 99, 1),
(34, 105, 1),
(34, 97, 1),
(34, 102, 1),
(34, 101, 1),
(34, 98, 1),
(34, 96, 1),
(35, 100, 2),
(35, 99, 2),
(35, 105, 2),
(35, 97, 2),
(35, 102, 2),
(35, 101, 2),
(35, 98, 2),
(35, 96, 2),
(36, 100, 1),
(36, 99, 1),
(36, 105, 1),
(36, 97, 1),
(36, 102, 1),
(36, 101, 1),
(36, 98, 1),
(36, 96, 1),
(37, 100, 2),
(37, 99, 2),
(37, 105, 2),
(37, 97, 2),
(37, 102, 2),
(37, 101, 2),
(37, 98, 2),
(37, 96, 2),
(38, 100, 3),
(38, 99, 3),
(38, 105, 3),
(38, 97, 3),
(38, 102, 3),
(38, 101, 3),
(38, 98, 3),
(38, 96, 3),
(39, 100, 4),
(39, 99, 4),
(39, 105, 4),
(39, 97, 4),
(39, 102, 4),
(39, 101, 4),
(39, 98, 4),
(39, 96, 4),
(40, 100, 1),
(40, 99, 1),
(40, 105, 1),
(40, 97, 1),
(40, 102, 1),
(40, 101, 1),
(40, 98, 1),
(40, 96, 1),
(41, 100, 1),
(41, 99, 1),
(41, 105, 1),
(41, 97, 1),
(41, 102, 1),
(41, 101, 1),
(41, 98, 1),
(41, 96, 1),
(42, 100, 1),
(42, 99, 1),
(42, 105, 1),
(42, 97, 1),
(42, 102, 1),
(42, 101, 1),
(42, 98, 1),
(42, 96, 1),
(43, 100, 1),
(43, 99, 1),
(43, 105, 1),
(43, 97, 1),
(43, 102, 1),
(43, 101, 1),
(43, 98, 1),
(43, 96, 1),
(44, 100, 2),
(44, 99, 2),
(44, 105, 2),
(44, 97, 2),
(44, 102, 2),
(44, 101, 2),
(44, 98, 2),
(44, 96, 2),
(45, 100, 1),
(45, 99, 1),
(45, 105, 1),
(45, 97, 1),
(45, 102, 1),
(45, 101, 1),
(45, 98, 1),
(45, 96, 1),
(49, 100, 1),
(49, 99, 1),
(49, 105, 1),
(49, 97, 1),
(49, 102, 1),
(49, 101, 1),
(49, 98, 1),
(49, 96, 1),
(50, 100, 1),
(50, 99, 1),
(50, 105, 1),
(50, 97, 1),
(50, 102, 1),
(50, 101, 1),
(50, 98, 1),
(50, 96, 1),
(51, 100, 1),
(51, 99, 1),
(51, 105, 1),
(51, 97, 1),
(51, 102, 1),
(51, 101, 1),
(51, 98, 1),
(51, 96, 1),
(52, 100, 1),
(52, 99, 1),
(52, 105, 1),
(52, 97, 1),
(52, 102, 1),
(52, 101, 1),
(52, 98, 1),
(52, 96, 1),
(53, 100, 2),
(53, 99, 2),
(53, 105, 2),
(53, 97, 2),
(53, 102, 2),
(53, 101, 2),
(53, 98, 2),
(53, 96, 2),
(55, 100, 1),
(55, 99, 1),
(55, 105, 1),
(55, 97, 1),
(55, 102, 1),
(55, 101, 1),
(55, 98, 1),
(55, 96, 1),
(62, 100, 1),
(62, 99, 1),
(62, 105, 1),
(62, 97, 1),
(62, 102, 1),
(62, 101, 1),
(62, 98, 1),
(62, 96, 1),
(63, 100, 2),
(63, 99, 2),
(63, 105, 2),
(63, 97, 2),
(63, 102, 2),
(63, 101, 2),
(63, 98, 2),
(63, 96, 2),
(63, 106, 2),
(63, 1, 2),
(63, 4, 2),
(63, 5, 2),
(63, 6, 2),
(63, 7, 2),
(63, 8, 2),
(63, 9, 2),
(63, 10, 2),
(63, 11, 2),
(63, 12, 2),
(63, 19, 2),
(63, 20, 2),
(63, 21, 2),
(63, 22, 2),
(63, 23, 2),
(63, 24, 2),
(63, 25, 2),
(63, 26, 2),
(63, 27, 2),
(63, 28, 2),
(63, 29, 2),
(63, 61, 2),
(63, 31, 2),
(63, 32, 2),
(63, 33, 2),
(63, 34, 2),
(63, 35, 2),
(63, 36, 2),
(63, 37, 2),
(63, 62, 2),
(63, 38, 2),
(63, 39, 2),
(63, 40, 2),
(63, 41, 2),
(63, 63, 2),
(63, 64, 2),
(63, 52, 2),
(63, 47, 2),
(63, 48, 2),
(63, 49, 2),
(63, 50, 2),
(63, 51, 2),
(63, 55, 2),
(63, 56, 2),
(63, 58, 2),
(63, 59, 2),
(63, 60, 2),
(63, 65, 2),
(63, 79, 2),
(63, 80, 2),
(63, 76, 2),
(63, 71, 2),
(63, 70, 2),
(63, 77, 2),
(63, 72, 2),
(63, 81, 2),
(63, 82, 2),
(63, 74, 2),
(63, 75, 2),
(63, 83, 2),
(46, 6, 2),
(46, 7, 2),
(46, 8, 2),
(46, 9, 2),
(46, 10, 2),
(46, 11, 2),
(46, 12, 2),
(46, 29, 2),
(46, 61, 2),
(46, 62, 2),
(46, 38, 2),
(46, 39, 2),
(46, 40, 2),
(46, 41, 2),
(46, 63, 2),
(46, 64, 2),
(46, 52, 2),
(46, 47, 2),
(46, 48, 2),
(46, 49, 2),
(46, 50, 2),
(46, 51, 2),
(46, 55, 2),
(46, 56, 2),
(46, 58, 2),
(46, 59, 2),
(46, 60, 2),
(46, 65, 2),
(46, 79, 2),
(46, 80, 2),
(46, 76, 2),
(46, 71, 2),
(46, 70, 2),
(46, 77, 2),
(46, 72, 2),
(46, 81, 2),
(46, 82, 2),
(46, 74, 2),
(46, 75, 2),
(46, 83, 2),
(44, 106, 2),
(45, 106, 1),
(49, 106, 1),
(50, 106, 1),
(51, 106, 1),
(52, 106, 1),
(53, 106, 2),
(55, 106, 1),
(62, 106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_comment`
--

CREATE TABLE `tbl_vi_comment` (
  `cid` mediumint UNSIGNED NOT NULL,
  `module` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int NOT NULL DEFAULT '0',
  `id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint NOT NULL DEFAULT '0',
  `dislikes` mediumint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_contact_department`
--

CREATE TABLE `tbl_vi_contact_department` (
  `id` smallint UNSIGNED NOT NULL,
  `full_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint NOT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_contact_department`
--

INSERT INTO `tbl_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_contact_reply`
--

CREATE TABLE `tbl_vi_contact_reply` (
  `rid` mediumint UNSIGNED NOT NULL,
  `id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply_time` int UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_contact_send`
--

CREATE TABLE `tbl_vi_contact_send` (
  `id` mediumint UNSIGNED NOT NULL,
  `cid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_contact_supporter`
--

CREATE TABLE `tbl_vi_contact_supporter` (
  `id` smallint UNSIGNED NOT NULL,
  `departmentid` smallint UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_freecontent_blocks`
--

CREATE TABLE `tbl_vi_freecontent_blocks` (
  `bid` mediumint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_freecontent_blocks`
--

INSERT INTO `tbl_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_freecontent_rows`
--

CREATE TABLE `tbl_vi_freecontent_rows` (
  `id` mediumint UNSIGNED NOT NULL,
  `bid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int NOT NULL DEFAULT '0',
  `end_time` int NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_freecontent_rows`
--

INSERT INTO `tbl_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1605868004, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1605868004, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1605868004, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1605868004, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1605868004, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_menu`
--

CREATE TABLE `tbl_vi_menu` (
  `id` smallint UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_menu`
--

INSERT INTO `tbl_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_menu_rows`
--

CREATE TABLE `tbl_vi_menu_rows` (
  `id` mediumint NOT NULL,
  `parentid` mediumint UNSIGNED NOT NULL,
  `mid` smallint NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int NOT NULL,
  `sort` int NOT NULL DEFAULT '0',
  `lev` int NOT NULL DEFAULT '0',
  `subitem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint DEFAULT '0',
  `css` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_menu_rows`
--

INSERT INTO `tbl_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(44, 0, 1, 'Giới thiệu', '/learn_nukeviet/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '', '6', 'about', '', 1, '', 0, 1),
(45, 0, 1, 'Security', '/learn_nukeviet/index.php?language=vi&nv=Security', '', '', '', 2, 2, 0, '', '6', 'Security', '', 1, '', 0, 1),
(46, 0, 1, 'nvtools', '/learn_nukeviet/index.php?language=vi&nv=nvtools', '', '', '', 3, 3, 0, '', '6', 'nvtools', '', 1, '', 0, 1),
(47, 0, 1, 'Thăm dò ý kiến', '/learn_nukeviet/index.php?language=vi&nv=voting', '', '', '', 4, 4, 0, '', '6', 'voting', '', 1, '', 0, 1),
(48, 0, 1, 'Quản lý đào tạo', '/learn_nukeviet/index.php?language=vi&nv=qldt', '', '', '', 5, 5, 0, '', '6', 'qldt', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_modfuncs`
--

CREATE TABLE `tbl_vi_modfuncs` (
  `func_id` mediumint UNSIGNED NOT NULL,
  `func_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint NOT NULL DEFAULT '0',
  `in_submenu` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_modfuncs`
--

INSERT INTO `tbl_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(56, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(57, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(65, 'main', 'main', 'Main', '', 'Security', 1, 0, 1, ''),
(73, 'checktable', 'checktable', 'Checktable', '', 'nvtools', 0, 0, 0, ''),
(72, 'block', 'block', 'Block', '', 'nvtools', 1, 1, 7, ''),
(71, 'addfun', 'addfun', 'Addfun', '', 'nvtools', 1, 1, 4, ''),
(70, 'action', 'action', 'Action', '', 'nvtools', 1, 1, 5, ''),
(74, 'compiler', 'compiler', 'Compiler', '', 'nvtools', 1, 1, 10, ''),
(75, 'copylang', 'copylang', 'Copylang', '', 'nvtools', 1, 1, 11, ''),
(76, 'data', 'data', 'Data', '', 'nvtools', 1, 1, 3, ''),
(77, 'export_excel', 'export_excel', 'Export_excel', '', 'nvtools', 1, 1, 6, ''),
(78, 'js', 'js', 'Js', '', 'nvtools', 0, 0, 0, ''),
(79, 'main', 'main', 'Main', '', 'nvtools', 1, 1, 1, ''),
(80, 'theme', 'theme', 'Theme', '', 'nvtools', 1, 1, 2, ''),
(81, 'themecopy', 'themecopy', 'Themecopy', '', 'nvtools', 1, 1, 8, ''),
(82, 'thememodulecp', 'thememodulecp', 'Thememodulecp', '', 'nvtools', 1, 1, 9, ''),
(83, 'main', 'main', 'Main', '', 'login', 1, 1, 1, ''),
(84, 'rss', 'rss', 'Rss', '', 'login', 0, 0, 0, ''),
(85, 'sitemap', 'sitemap', 'Sitemap', '', 'login', 0, 0, 0, ''),
(106, 'themsv', 'themsv', 'Thêm sinh viên', '', 'qldt', 1, 1, 9, ''),
(105, 'sv_lopmon', 'sv_lopmon', 'Sv_lopmon', '', 'qldt', 1, 0, 3, ''),
(104, 'sitemap', 'sitemap', 'Sitemap', '', 'qldt', 0, 0, 0, ''),
(102, 'nhapdiem', 'nhapdiem', 'Nhapdiem', '', 'qldt', 1, 1, 5, ''),
(101, 'monhoc', 'monhoc', 'Quán lý môn học', '', 'qldt', 1, 1, 6, ''),
(100, 'main', 'main', 'Main', '', 'qldt', 1, 0, 1, ''),
(98, 'import-sinhvien', 'import-sinhvien', 'Import-sinhvien', '', 'qldt', 1, 1, 7, ''),
(97, 'chitiet-lopmon', 'chitiet-lopmon', 'Chitiet-lopmon', '', 'qldt', 1, 1, 4, ''),
(103, 'rss', 'rss', 'Rss', '', 'qldt', 0, 0, 0, ''),
(99, 'lopmon', 'lopmon', 'Tạo lớp môn', '', 'qldt', 1, 0, 2, ''),
(96, 'baocao', 'baocao', 'Baocao', '', 'qldt', 1, 1, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_modthemes`
--

CREATE TABLE `tbl_vi_modthemes` (
  `func_id` mediumint DEFAULT NULL,
  `layout` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_modthemes`
--

INSERT INTO `tbl_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'left-main-right', 'qldt_default'),
(0, 'main', 'mobile_default'),
(1, 'custom', 'qldt_default'),
(1, 'left-main-right', 'default'),
(1, 'main', 'mobile_default'),
(4, 'custom', 'qldt_default'),
(4, 'left-main-right', 'default'),
(4, 'main', 'mobile_default'),
(5, 'custom', 'qldt_default'),
(5, 'left-main-right', 'default'),
(5, 'main', 'mobile_default'),
(6, 'custom', 'qldt_default'),
(6, 'left-main-right', 'default'),
(6, 'main', 'mobile_default'),
(7, 'custom', 'qldt_default'),
(7, 'left-main-right', 'default'),
(7, 'main', 'mobile_default'),
(8, 'custom', 'qldt_default'),
(8, 'left-main-right', 'default'),
(8, 'main', 'mobile_default'),
(9, 'custom', 'qldt_default'),
(9, 'left-main-right', 'default'),
(9, 'main', 'mobile_default'),
(10, 'custom', 'qldt_default'),
(10, 'left-main-right', 'default'),
(10, 'main', 'mobile_default'),
(11, 'custom', 'qldt_default'),
(11, 'left-main-right', 'default'),
(11, 'main', 'mobile_default'),
(12, 'custom', 'qldt_default'),
(12, 'left-main-right', 'default'),
(12, 'main', 'mobile_default'),
(19, 'custom', 'qldt_default'),
(19, 'left-main-right', 'default'),
(19, 'main', 'mobile_default'),
(20, 'custom', 'qldt_default'),
(20, 'left-main-right', 'default'),
(20, 'main', 'mobile_default'),
(21, 'custom', 'qldt_default'),
(21, 'left-main-right', 'default'),
(21, 'main', 'mobile_default'),
(22, 'custom', 'qldt_default'),
(22, 'left-main-right', 'default'),
(22, 'main', 'mobile_default'),
(23, 'custom', 'qldt_default'),
(23, 'left-main-right', 'default'),
(23, 'main', 'mobile_default'),
(24, 'custom', 'qldt_default'),
(24, 'left-main-right', 'default'),
(24, 'main', 'mobile_default'),
(25, 'custom', 'qldt_default'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'custom', 'qldt_default'),
(26, 'left-main-right', 'default'),
(26, 'main', 'mobile_default'),
(27, 'custom', 'qldt_default'),
(27, 'left-main-right', 'default'),
(27, 'main', 'mobile_default'),
(28, 'custom', 'qldt_default'),
(28, 'left-main-right', 'default'),
(28, 'main', 'mobile_default'),
(29, 'custom', 'qldt_default'),
(29, 'left-main', 'default'),
(29, 'main', 'mobile_default'),
(31, 'custom', 'qldt_default'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'custom', 'qldt_default'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'custom', 'qldt_default'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'custom', 'qldt_default'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'custom', 'qldt_default'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'custom', 'qldt_default'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'custom', 'qldt_default'),
(37, 'left-main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'custom', 'qldt_default'),
(38, 'left-main-right', 'default'),
(38, 'main', 'mobile_default'),
(39, 'custom', 'qldt_default'),
(39, 'left-main-right', 'default'),
(39, 'main', 'mobile_default'),
(40, 'custom', 'qldt_default'),
(40, 'left-main-right', 'default'),
(40, 'main', 'mobile_default'),
(41, 'custom', 'qldt_default'),
(41, 'left-main-right', 'default'),
(41, 'main', 'mobile_default'),
(47, 'custom', 'qldt_default'),
(47, 'left-main-right', 'default'),
(47, 'main', 'mobile_default'),
(48, 'custom', 'qldt_default'),
(48, 'left-main-right', 'default'),
(48, 'main', 'mobile_default'),
(49, 'custom', 'qldt_default'),
(49, 'left-main-right', 'default'),
(49, 'main', 'mobile_default'),
(50, 'custom', 'qldt_default'),
(50, 'left-main-right', 'default'),
(50, 'main', 'mobile_default'),
(51, 'custom', 'qldt_default'),
(51, 'main', 'mobile_default'),
(52, 'custom', 'qldt_default'),
(52, 'left-main', 'default'),
(52, 'main', 'mobile_default'),
(55, 'custom', 'qldt_default'),
(55, 'left-main-right', 'default'),
(55, 'main', 'mobile_default'),
(56, 'custom', 'qldt_default'),
(56, 'left-main-right', 'default'),
(56, 'main', 'mobile_default'),
(58, 'custom', 'qldt_default'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(59, 'custom', 'qldt_default'),
(59, 'left-main-right', 'default'),
(59, 'main', 'mobile_default'),
(60, 'custom', 'qldt_default'),
(60, 'left-main-right', 'default'),
(60, 'main', 'mobile_default'),
(61, 'custom', 'qldt_default'),
(61, 'left-main', 'default'),
(61, 'main', 'mobile_default'),
(62, 'custom', 'qldt_default'),
(62, 'left-main', 'default'),
(62, 'main', 'mobile_default'),
(63, 'custom', 'qldt_default'),
(63, 'left-main-right', 'default'),
(63, 'main', 'mobile_default'),
(64, 'custom', 'qldt_default'),
(64, 'left-main-right', 'default'),
(64, 'main', 'mobile_default'),
(65, 'custom', 'qldt_default'),
(65, 'left-main-right', 'default'),
(65, 'main', 'mobile_default'),
(70, 'custom', 'qldt_default'),
(71, 'custom', 'qldt_default'),
(72, 'custom', 'qldt_default'),
(73, 'left-main-right', 'qldt_default'),
(74, 'custom', 'qldt_default'),
(75, 'custom', 'qldt_default'),
(76, 'custom', 'qldt_default'),
(77, 'custom', 'qldt_default'),
(78, 'left-main-right', 'qldt_default'),
(79, 'custom', 'qldt_default'),
(80, 'custom', 'qldt_default'),
(81, 'custom', 'qldt_default'),
(82, 'custom', 'qldt_default'),
(83, 'custom', 'qldt_default'),
(83, 'left-main-right', 'default'),
(83, 'main', 'mobile_default'),
(84, 'left-main-right', 'qldt_default'),
(85, 'left-main-right', 'qldt_default'),
(96, 'custom', 'qldt_default'),
(96, 'left-main-right', 'default'),
(96, 'main', 'mobile_default'),
(97, 'custom', 'qldt_default'),
(97, 'left-main-right', 'default'),
(97, 'main', 'mobile_default'),
(98, 'custom', 'qldt_default'),
(98, 'left-main-right', 'default'),
(98, 'main', 'mobile_default'),
(99, 'custom', 'qldt_default'),
(99, 'left-main-right', 'default'),
(99, 'main', 'mobile_default'),
(100, 'custom', 'qldt_default'),
(100, 'left-main-right', 'default'),
(100, 'main', 'mobile_default'),
(101, 'custom', 'qldt_default'),
(101, 'left-main-right', 'default'),
(101, 'main', 'mobile_default'),
(102, 'custom', 'qldt_default'),
(102, 'left-main-right', 'default'),
(102, 'main', 'mobile_default'),
(103, 'left-main-right', 'qldt_default'),
(104, 'left-main-right', 'qldt_default'),
(105, 'custom', 'qldt_default'),
(105, 'left-main-right', 'default'),
(105, 'main', 'mobile_default'),
(106, 'custom', 'qldt_default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_modules`
--

CREATE TABLE `tbl_vi_modules` (
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint NOT NULL DEFAULT '1',
  `sitemap` tinyint NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_modules`
--

INSERT INTO `tbl_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1605868004, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1605868004, 1, 1, '', '', '', '', '6', 3, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1605868004, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1605868004, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1605868004, 1, 1, '', '', '', 'online, statistics', '6', 6, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1605868004, 1, 1, '', '', '', '', '6', 7, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1605868004, 1, 1, '', '', '', '', '6', 8, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1605868004, 1, 0, '', '', '', '', '6', 9, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1605868004, 0, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1605868004, 1, 1, '', '', '', '', '6', 11, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1605868004, 1, 1, '', '', '', '', '6', 12, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1605868004, 0, 1, '', '', '', '', '6', 13, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1605868004, 1, 1, '', '', '', '', '6', 14, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1605868004, 0, 1, '', '', '', '', '6', 15, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1605868004, 1, 0, '', '', '', '', '6', 16, 1, '', 0, 1),
('Security', 'Security', 'Security', 'Security', 'Security', 'Security', '', '', 1606233780, 1, 0, 'qldt_default', '', '', '', '6', 17, 1, '', 0, 0),
('nvtools', 'nvtools', 'nvtools', 'nvtools', 'nvtools', 'nvtools', '', '', 1606293684, 1, 0, '', '', '', '', '6', 18, 1, '', 1, 1),
('login', 'login', 'login', 'login', 'login', 'Login', '', '', 1606321169, 1, 0, '', '', '', '', '6', 19, 1, '', 1, 1),
('qldt', 'qldt', 'qldt', 'qldt', 'qldt', 'Quản lý đào tạo', '', '', 1606889381, 1, 0, 'qldt_default', '', '', '', '6', 1, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_1`
--

CREATE TABLE `tbl_vi_news_1` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_1`
--

INSERT INTO `tbl_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_2`
--

CREATE TABLE `tbl_vi_news_2` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_2`
--

INSERT INTO `tbl_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_8`
--

CREATE TABLE `tbl_vi_news_8` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_8`
--

INSERT INTO `tbl_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_9`
--

CREATE TABLE `tbl_vi_news_9` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_9`
--

INSERT INTO `tbl_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_10`
--

CREATE TABLE `tbl_vi_news_10` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_10`
--

INSERT INTO `tbl_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_11`
--

CREATE TABLE `tbl_vi_news_11` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_11`
--

INSERT INTO `tbl_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_12`
--

CREATE TABLE `tbl_vi_news_12` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_12`
--

INSERT INTO `tbl_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_admins`
--

CREATE TABLE `tbl_vi_news_admins` (
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint NOT NULL DEFAULT '0',
  `admin` tinyint NOT NULL DEFAULT '0',
  `add_content` tinyint NOT NULL DEFAULT '0',
  `pub_content` tinyint NOT NULL DEFAULT '0',
  `edit_content` tinyint NOT NULL DEFAULT '0',
  `del_content` tinyint NOT NULL DEFAULT '0',
  `app_content` tinyint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_block`
--

CREATE TABLE `tbl_vi_news_block` (
  `bid` smallint UNSIGNED NOT NULL,
  `id` int UNSIGNED NOT NULL,
  `weight` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_block`
--

INSERT INTO `tbl_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 17, 1),
(2, 16, 2),
(2, 15, 3),
(2, 14, 4),
(2, 12, 5),
(2, 11, 6),
(2, 1, 7),
(2, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_block_cat`
--

CREATE TABLE `tbl_vi_news_block_cat` (
  `bid` smallint UNSIGNED NOT NULL,
  `adddefault` tinyint NOT NULL DEFAULT '0',
  `numbers` smallint NOT NULL DEFAULT '10',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint NOT NULL DEFAULT '0',
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_time` int NOT NULL DEFAULT '0',
  `edit_time` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_block_cat`
--

INSERT INTO `tbl_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_cat`
--

CREATE TABLE `tbl_vi_news_cat` (
  `catid` smallint UNSIGNED NOT NULL,
  `parentid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint NOT NULL DEFAULT '0',
  `weight` smallint UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint NOT NULL DEFAULT '0',
  `lev` smallint NOT NULL DEFAULT '0',
  `viewcat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint NOT NULL DEFAULT '0',
  `subcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `featured` int NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admins` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_time` int UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_cat`
--

INSERT INTO `tbl_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 4, 2, 0, '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274986705, 1274986705, '6', 1),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987105, 1274987244, '6', 1),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987212, 1274987212, '6', 1),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987460, 1274987460, '6', 1),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987538, 1274987538, '6', 1),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_config_post`
--

CREATE TABLE `tbl_vi_news_config_post` (
  `group_id` smallint NOT NULL,
  `addcontent` tinyint NOT NULL,
  `postcontent` tinyint NOT NULL,
  `editcontent` tinyint NOT NULL,
  `delcontent` tinyint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_config_post`
--

INSERT INTO `tbl_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_detail`
--

CREATE TABLE `tbl_vi_news_detail` (
  `id` int UNSIGNED NOT NULL,
  `titlesite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_detail`
--

INSERT INTO `tbl_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, '', '', '<p style=\"text-align: justify;\">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style=\"text-align: justify;\"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href=\"http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm\" target=\"_blank\">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href=\"http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov\" target=\"_blank\">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', '', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', NULL, 2, '', 0, 1, 1, 1),
(6, '', '', '<div style=\"text-align: justify;\">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style=\"text-align: justify;\"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href=\"http://nukeviet.vn/vi/contact/\" target=\"_blank\">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href=\"http://forum.nukeviet.vn/viewforum.php?f=4\" target=\"_blank\">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href=\"http://fb.com/nukeviet/\" target=\"_blank\">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href=\"https://nukeviet.vn/vi/partner/\" target=\"_blank\">https://nukeviet.vn/vi/partner/</a></div>', '', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', NULL, 2, '', 0, 1, 1, 1),
(7, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', 'http://vinades.vn/vi/news/Tuyen-dung/', NULL, 2, '', 0, 1, 1, 1),
(8, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(9, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(10, '', '', 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align=\"center\"> &nbsp;</div><div align=\"left\"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg\" width=\"350\" /></div> <div align=\"center\"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style=\"FONT-STYLE: italic\">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg\" style=\"MARGIN: 5px\" width=\"400\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style=\"FONT-STYLE: italic\">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style=\"FONT-WEIGHT: bold\">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style=\"FONT-STYLE: italic\">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style=\"FONT-STYLE: italic\">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất:</span> Không có.</p><p> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> Không có</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> <span style=\"FONT-STYLE: italic\">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style=\"FONT-WEIGHT: bold; FONT-STYLE: italic\">2.</span> <span style=\"FONT-STYLE: italic\">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" alt=\"NukeViet nhận giải ba Nhân tài đất Việt 2011\" src=\"/uploads/news/nukeviet-nhantaidatviet2011.jpg\" style=\"margin: 5px; width: 450px; height: 301px;\" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style=\"FONT-WEIGHT: bold\">3.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style=\"FONT-STYLE: italic\">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất: </span>Không có.</p><div> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> trị giá 50 triệu đồng: <span style=\"FONT-STYLE: italic\">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1. </span><span style=\"FONT-STYLE: italic\">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style=\"FONT-WEIGHT: bold\">2.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"> <tbody> <tr> <td> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', '', NULL, 2, '', 0, 1, 1, 1);
INSERT INTO `tbl_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(11, '', '', '<div style=\"text-align: justify;\">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style=\"text-align: justify;\">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style=\"text-align: justify;\">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style=\"text-align: justify;\">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/\" target=\"_blank\">tại đây</a>.</p>\r\n\r\n<p style=\"text-align: justify;\">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href=\"http://vinades.vn/\" target=\"_blank\">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', '', 'mic.gov.vn', NULL, 2, '', 0, 1, 1, 1),
(12, '', '', '<div style=\"text-align: justify;\">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align=\"left\" border=\"1\" cellpadding=\"20\" cellspacing=\"0\" class=\"table table-striped table-bordered table-hover\" style=\"width:100%;\" width=\"653\">	<tbody>		<tr>			<td style=\"width: 27.66%;\"><strong>Vị trí tuyển dụng:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Chức vụ:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Ngành nghề:</strong></td>			<td style=\"width: 72.34%;\"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức làm việc:</strong></td>			<td style=\"width: 72.34%;\">Toàn thời gian cố định</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa điểm làm việc:</strong></td>			<td style=\"width: 72.34%;\">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mức lương:</strong></td>			<td style=\"width: 72.34%;\">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mô tả công việc:</strong></td>			<td style=\"width: 72.34%;\">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số lượng cần tuyển:</strong></td>			<td style=\"width: 72.34%;\">05</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Quyền lợi được hưởng:</strong></td>			<td style=\"width: 72.34%;\">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số năm kinh nghiệm:</strong></td>			<td style=\"width: 72.34%;\">Trên 6 tháng</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu bằng cấp:</strong></td>			<td style=\"width: 72.34%;\">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu giới tính:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu độ tuổi:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu khác:</strong></td>			<td style=\"width: 72.34%;\">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hồ sơ bao gồm:</strong></td>			<td style=\"width: 72.34%;\"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/\">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hạn nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Qua Email</td>		</tr>		<tr>			<td colspan=\"2\" style=\"width:100.0%;\">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Điện thoại liên hệ:</strong></td>			<td style=\"width: 72.34%;\">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa chỉ liên hệ:</strong></td>			<td style=\"width: 72.34%;\">Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Email liên hệ:</strong></td><td style=\"width: 72.34%;\">tuyendung@vinades.vn</td></tr></tbody></table>', '', '', NULL, 2, '', 0, 1, 1, 1),
(14, '', '', '<p style=\"text-align: justify;\">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style=\"text-align: justify;\"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style=\"text-align: justify;\">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>).</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(15, '', '', '<p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style=\"text-align: justify;\">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style=\"text-align: justify;\"><b>Các vị trí nhận học việc</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của học viên</b></h2><ul>	<li style=\"text-align: justify;\">Được hưởng trợ cấp ăn trưa.</li>	<li style=\"text-align: justify;\">Được trợ cấp vé gửi xe.</li>	<li style=\"text-align: justify;\">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style=\"text-align: justify;\">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>)</p><h2 style=\"text-align: justify;\"><b>Điều kiện</b></h2><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style=\"text-align: justify;\">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style=\"text-align: justify;\">Thực hiện theo các quy định khác của công ty...</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style=\"text-align: justify;\"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(16, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href=\"http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage\" target=\"_blank\">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href=\"http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/\" target=\"_blank\">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href=\"http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/\" target=\"_blank\">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(17, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><span style=\"font-size:16px;\"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style=\"font-size:16px;\"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href=\"http://edu.nukeviet.vn/lienminh-dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href=\"http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/\" target=\"_blank\">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href=\"http://edu.nukeviet.vn/\" target=\"_blank\">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style=\"font-size:14px;\"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 024-85872007, <strong>Fax</strong>: 024-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style=\"color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;\">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href=\"http://edu.nukeviet.vn/dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style=\"font-size:16px;\"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/\" target=\"_blank\">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(18, '', '', '<p dir=\"ltr\" style=\"text-align: justify;\">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style=\"line-height: 1.6;\"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style=\"line-height: 1.6;\">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href=\"http://www.php-fig.org/psr/\">http://www.php-fig.org/psr/</a></p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đổi đường dẫn module</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style=\"line-height: 1.6;\">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify; margin-left: 40px;\"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style=\"line-height: 1.6;\">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các thay đổi của module:</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module menu:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module about:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm RSS</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trạng thái bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir=\"ltr\" style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', '', NULL, 2, '', 0, 1, 1, 1),
(19, '', '', '<strong>Hệ thống:</strong><br  />- Sửa code theo khuyến nghị của codacy: https://www.codacy.com/app/nukeviet/nukeviet/dashboard<br  />- Cải thiện an ninh hệ thống theo đánh giá của các phần mềm bảo mật OWASP ZAP 2.6<br  />- Cải tiến chức năng Rewrite<br  />- Thêm tính năng bật tắt sitemap cho các module<br  />- Thêm link hướng dẫn sử dụng website dẫn tới từng chức năng tại https://wiki.nukeviet.vn/<br  />- Cập nhật trình soạn thảo&nbsp; CKEditor 4.7.1 để hỗ trợ việc copy nội dung từ Word, Excel, Hỗ trợ việc kéo thả ảnh, file từ máy tính vào trình soạn thảo tốt hơn: http://ckeditor.com/blog/CKEditor-4.7-released<br  />- Tích hợp thêm <a href=\\\"https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-1-se-ho-tro-redis-de-cache-435.html\\\">Redis để cache</a> cho hệ thống<br  /><br  /><strong>Module Tài khoản:</strong><br  />- Tùy biến các trường hệ thống của module users giúp quản trị có thể cho ẩn/hiện khi đăng ký và đổi tên các trường này.<br  />- Thêm chức năng&nbsp; xác thực hai bước cho từng nhóm thành viên, Cấu hình yêu cầu xác thực hai bước cho từng nhóm thành viên.<br  />- Tích hợp reCAPTCHA<br  /><br  /><strong>Module Tin tức:</strong><br  />- Thêm cấu hình có bật tính năng copy bài viết, để dùng module này đăng cái bài viết có cạc trình bày tương tự nhau.<br  />- Cải thiện tính năng cho bài viết Facebook Instant Articles<br  />- Cảnh báo tránh cùng&nbsp; một lúc nhiều người sửa bài viết.<br  /><br  /><strong>Module banners</strong><br  />- Bỏ phần quản lý khách hàng tại quảng cáo, chuyển sang dùng tài khoản chung của site<br  />- Phần cấu hình khối quảng cáo được viết lại để cấu hình nhóm&nbsp; thành viên được đăng quảng cáo ngoài site, sau đó quản trị duyệt lại quảng cáo để hiển thị ngoài site.<br  />- Thêm cấu hình về thời gian chung áp dụng cho quảng cáo theo khối.<br  />- Sửa lại link quản cáo để tránh các click ảo.<br  />- Sửa hiển thị quản lý quảng cáo để tiện quản lý hơn.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt<br  />', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-2-co-gi-moi-505.html', NULL, 2, '', 0, 1, 1, 1),
(20, '', '', '<strong>Hệ thống:</strong><br  />- Thay đổi phần quản lý block để dễ dùng hơn khi module có quá nhiều chức năng.<br  />- Thêm các tham số cấu hình&nbsp; SSL cho&nbsp; SMTP<br  />- Module Upload: Thêm cấu hình có thể chia nhỏ các file khi upload để có thể upload<br  />- Plugin:Thêm vị trí chạy sau khi thực hiện module, cải tiến mỗi Plugin sẽ chạy được ở các vị trí nhất định theo người lập trình quy định.<br  />- Tích hợp thêm thư viện PDF.js<br  />- Thêm tính năng xuất dữ liệu mẫu để khi tiết hành cài đặt có thể dựng luôn site hoàn chỉnh tường tự như cài đặt NukeViet eGovernment<br  /><br  /><strong>Module comment: </strong><br  />- Cho phép cấu hình có sử dụng trình soạn thảo ở phần bình luận hay không.<br  />- Cho phép cấu hình có sử dụng file đính kèm ở phần bình luận hay không.<br  />- Module news: Allow deactive category, allow search for locked posts, Allows attaching files to posts<br  />- Config module display on admin index for authors<br  />&nbsp;<br  /><strong>Module Tài khoản:</strong><br  />- Module users: Allowed to delete and change status multiple account, fix block login, update Openid icon, fix sort groups, fix delete group<br  />- Người điều hành chung của site có thể cấu hình 1 số thông số. (Lúc trước chỉ quản trị tối cao mới cấu hình được)<br  />- Với mỗi tài khoản quản trị, có thể chọn module mặc định sau khi đăng nhập quản trị.<br  /><br  /><strong>Module Tin tức:</strong><br  />-&nbsp; Thay đổi chức năng quản lý chủ đề có thể: Hiển thị trên trang chủ, không hiển thị trên trang chủ hoặc Khóa chủ đề.<br  />-&nbsp; Cho phép đính kèm file vào các bài viết (Không cần thông qua trình soạn thảo)<br  />- Thêm tính năng sắp xếp các bài viết.<br  />- Cho phép cấu hình layout khi xem chi tiết bài viết (Tưong tự module page đã có trước)<br  /><br  /><strong>Module page</strong><br  />-&nbsp; Thêm cấu hình alias lower khi thêm bài viết mới.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: <a href=\"https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt\">https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt</a>', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-3-co-gi-moi-540.html', NULL, 2, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_logs`
--

CREATE TABLE `tbl_vi_news_logs` (
  `id` mediumint UNSIGNED NOT NULL,
  `sid` mediumint NOT NULL DEFAULT '0',
  `userid` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_rows`
--

CREATE TABLE `tbl_vi_news_rows` (
  `id` int UNSIGNED NOT NULL,
  `catid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint NOT NULL DEFAULT '0',
  `addtime` int UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `weight` int UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint NOT NULL DEFAULT '0',
  `inhome` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int NOT NULL DEFAULT '0',
  `click_rating` int NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_rows`
--

INSERT INTO `tbl_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_sources`
--

CREATE TABLE `tbl_vi_news_sources` (
  `sourceid` mediumint UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int UNSIGNED NOT NULL,
  `edit_time` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_sources`
--

INSERT INTO `tbl_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_tags`
--

CREATE TABLE `tbl_vi_news_tags` (
  `tid` mediumint UNSIGNED NOT NULL,
  `numnews` mediumint NOT NULL DEFAULT '0',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_tags`
--

INSERT INTO `tbl_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_tags_id`
--

CREATE TABLE `tbl_vi_news_tags_id` (
  `id` int NOT NULL,
  `tid` mediumint NOT NULL,
  `keyword` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_tags_id`
--

INSERT INTO `tbl_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_tmp`
--

CREATE TABLE `tbl_vi_news_tmp` (
  `id` mediumint UNSIGNED NOT NULL,
  `admin_id` int NOT NULL DEFAULT '0',
  `time_edit` int NOT NULL,
  `time_late` int NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_tmp`
--

INSERT INTO `tbl_vi_news_tmp` (`id`, `admin_id`, `time_edit`, `time_late`, `ip`) VALUES
(6, 1, 1606364041, 1606364041, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_news_topics`
--

CREATE TABLE `tbl_vi_news_topics` (
  `topicid` smallint UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint NOT NULL DEFAULT '0',
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_time` int NOT NULL DEFAULT '0',
  `edit_time` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_news_topics`
--

INSERT INTO `tbl_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_page`
--

CREATE TABLE `tbl_vi_page` (
  `id` mediumint UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint NOT NULL DEFAULT '0',
  `activecomm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int NOT NULL DEFAULT '0',
  `edit_time` int NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_page_config`
--

CREATE TABLE `tbl_vi_page_config` (
  `config_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_page_config`
--

INSERT INTO `tbl_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_referer_stats`
--

CREATE TABLE `tbl_vi_referer_stats` (
  `host` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL DEFAULT '0',
  `month01` int NOT NULL DEFAULT '0',
  `month02` int NOT NULL DEFAULT '0',
  `month03` int NOT NULL DEFAULT '0',
  `month04` int NOT NULL DEFAULT '0',
  `month05` int NOT NULL DEFAULT '0',
  `month06` int NOT NULL DEFAULT '0',
  `month07` int NOT NULL DEFAULT '0',
  `month08` int NOT NULL DEFAULT '0',
  `month09` int NOT NULL DEFAULT '0',
  `month10` int NOT NULL DEFAULT '0',
  `month11` int NOT NULL DEFAULT '0',
  `month12` int NOT NULL DEFAULT '0',
  `last_update` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_searchkeys`
--

CREATE TABLE `tbl_vi_searchkeys` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL DEFAULT '0',
  `search_engine` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_siteterms`
--

CREATE TABLE `tbl_vi_siteterms` (
  `id` mediumint UNSIGNED NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint NOT NULL DEFAULT '0',
  `activecomm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int NOT NULL DEFAULT '0',
  `edit_time` int NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_siteterms`
--

INSERT INTO `tbl_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1605868004, 1605868004, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1605868004, 1605868004, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_siteterms_config`
--

CREATE TABLE `tbl_vi_siteterms_config` (
  `config_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_siteterms_config`
--

INSERT INTO `tbl_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_voting`
--

CREATE TABLE `tbl_vi_voting` (
  `vid` smallint UNSIGNED NOT NULL,
  `question` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int NOT NULL DEFAULT '1',
  `active_captcha` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_voting`
--

INSERT INTO `tbl_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vi_voting_rows`
--

CREATE TABLE `tbl_vi_voting_rows` (
  `id` mediumint UNSIGNED NOT NULL,
  `vid` smallint UNSIGNED NOT NULL,
  `title` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vi_voting_rows`
--

INSERT INTO `tbl_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 1),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 1),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_vi_qldt_canbo`
--
ALTER TABLE `nv4_vi_qldt_canbo`
  ADD PRIMARY KEY (`ma_canbo`);

--
-- Indexes for table `nv4_vi_qldt_lop`
--
ALTER TABLE `nv4_vi_qldt_lop`
  ADD PRIMARY KEY (`ma_lop`);

--
-- Indexes for table `nv4_vi_qldt_monhoc`
--
ALTER TABLE `nv4_vi_qldt_monhoc`
  ADD PRIMARY KEY (`ma_monhoc`);

--
-- Indexes for table `nv4_vi_ten_module_diem`
--
ALTER TABLE `nv4_vi_ten_module_diem`
  ADD PRIMARY KEY (`ma_diem`);

--
-- Indexes for table `nv4_vi_ten_module_loaidiem`
--
ALTER TABLE `nv4_vi_ten_module_loaidiem`
  ADD PRIMARY KEY (`ma_loaidiem`);

--
-- Indexes for table `nv4_vi_ten_module_lop`
--
ALTER TABLE `nv4_vi_ten_module_lop`
  ADD PRIMARY KEY (`ma_lop`);

--
-- Indexes for table `nv4_vi_ten_module_lopmon`
--
ALTER TABLE `nv4_vi_ten_module_lopmon`
  ADD PRIMARY KEY (`ma_lopmon`),
  ADD KEY `ma_monhoc` (`ma_monhoc`),
  ADD KEY `ma_canbo` (`ma_canbo`);

--
-- Indexes for table `nv4_vi_ten_module_sinhvien`
--
ALTER TABLE `nv4_vi_ten_module_sinhvien`
  ADD PRIMARY KEY (`ma_sv`),
  ADD KEY `ma_lop` (`ma_lop`);

--
-- Indexes for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_authors_config`
--
ALTER TABLE `tbl_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `tbl_authors_module`
--
ALTER TABLE `tbl_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `tbl_authors_oauth`
--
ALTER TABLE `tbl_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `tbl_banners_click`
--
ALTER TABLE `tbl_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `tbl_banners_plans`
--
ALTER TABLE `tbl_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `tbl_banners_rows`
--
ALTER TABLE `tbl_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `tbl_cookies`
--
ALTER TABLE `tbl_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbl_counter`
--
ALTER TABLE `tbl_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `tbl_cronjobs`
--
ALTER TABLE `tbl_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `tbl_extension_files`
--
ALTER TABLE `tbl_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `tbl_ips`
--
ALTER TABLE `tbl_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `tbl_language_file`
--
ALTER TABLE `tbl_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `tbl_plugin`
--
ALTER TABLE `tbl_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `tbl_qldt_canbo`
--
ALTER TABLE `tbl_qldt_canbo`
  ADD PRIMARY KEY (`ma_canbo`);

--
-- Indexes for table `tbl_qldt_dangkymon`
--
ALTER TABLE `tbl_qldt_dangkymon`
  ADD PRIMARY KEY (`ma_dkm`),
  ADD KEY `ma_lopmon` (`ma_lopmon`),
  ADD KEY `ma_sv` (`ma_sv`);

--
-- Indexes for table `tbl_qldt_diem`
--
ALTER TABLE `tbl_qldt_diem`
  ADD PRIMARY KEY (`ma_diem`),
  ADD KEY `ma_loaidiem` (`ma_loaidiem`),
  ADD KEY `ma_dkm` (`ma_dkm`);

--
-- Indexes for table `tbl_qldt_diemthi`
--
ALTER TABLE `tbl_qldt_diemthi`
  ADD PRIMARY KEY (`ma_diemthi`),
  ADD KEY `ma_dkm` (`ma_dkm`),
  ADD KEY `ma_dsthi` (`ma_dsthi`);

--
-- Indexes for table `tbl_qldt_dsthi`
--
ALTER TABLE `tbl_qldt_dsthi`
  ADD PRIMARY KEY (`ma_dsthi`),
  ADD KEY `ma_phongthi` (`ma_phongthi`),
  ADD KEY `ma_mon` (`ma_mon`);

--
-- Indexes for table `tbl_qldt_dvhv`
--
ALTER TABLE `tbl_qldt_dvhv`
  ADD PRIMARY KEY (`ma_dvhv`);

--
-- Indexes for table `tbl_qldt_loaidiem`
--
ALTER TABLE `tbl_qldt_loaidiem`
  ADD PRIMARY KEY (`ma_loaidiem`);

--
-- Indexes for table `tbl_qldt_lop`
--
ALTER TABLE `tbl_qldt_lop`
  ADD PRIMARY KEY (`ma_lop`);

--
-- Indexes for table `tbl_qldt_lopmon`
--
ALTER TABLE `tbl_qldt_lopmon`
  ADD PRIMARY KEY (`ma_lopmon`),
  ADD KEY `ma_monhoc` (`ma_monhoc`),
  ADD KEY `ma_dvhv` (`ma_dvhv`),
  ADD KEY `ma_canbo` (`ma_canbo`);

--
-- Indexes for table `tbl_qldt_monhoc`
--
ALTER TABLE `tbl_qldt_monhoc`
  ADD PRIMARY KEY (`ma_monhoc`);

--
-- Indexes for table `tbl_qldt_phong`
--
ALTER TABLE `tbl_qldt_phong`
  ADD PRIMARY KEY (`ma_phong`);

--
-- Indexes for table `tbl_qldt_sinhvien`
--
ALTER TABLE `tbl_qldt_sinhvien`
  ADD PRIMARY KEY (`ma_sv`),
  ADD KEY `ma_lop` (`ma_lop`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `tbl_setup_extensions`
--
ALTER TABLE `tbl_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tbl_setup_language`
--
ALTER TABLE `tbl_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `tbl_upload_dir`
--
ALTER TABLE `tbl_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `tbl_upload_file`
--
ALTER TABLE `tbl_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `tbl_users_backupcodes`
--
ALTER TABLE `tbl_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `tbl_users_config`
--
ALTER TABLE `tbl_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `tbl_users_edit`
--
ALTER TABLE `tbl_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tbl_users_field`
--
ALTER TABLE `tbl_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `tbl_users_groups`
--
ALTER TABLE `tbl_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `tbl_users_groups_users`
--
ALTER TABLE `tbl_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `tbl_users_info`
--
ALTER TABLE `tbl_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tbl_users_openid`
--
ALTER TABLE `tbl_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_users_question`
--
ALTER TABLE `tbl_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `tbl_users_reg`
--
ALTER TABLE `tbl_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_vi_about`
--
ALTER TABLE `tbl_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_about_config`
--
ALTER TABLE `tbl_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tbl_vi_blocks_groups`
--
ALTER TABLE `tbl_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `tbl_vi_blocks_weight`
--
ALTER TABLE `tbl_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `tbl_vi_comment`
--
ALTER TABLE `tbl_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `tbl_vi_contact_department`
--
ALTER TABLE `tbl_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_contact_reply`
--
ALTER TABLE `tbl_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_vi_contact_send`
--
ALTER TABLE `tbl_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `tbl_vi_contact_supporter`
--
ALTER TABLE `tbl_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vi_freecontent_blocks`
--
ALTER TABLE `tbl_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tbl_vi_freecontent_rows`
--
ALTER TABLE `tbl_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vi_menu`
--
ALTER TABLE `tbl_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tbl_vi_menu_rows`
--
ALTER TABLE `tbl_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `tbl_vi_modfuncs`
--
ALTER TABLE `tbl_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `tbl_vi_modthemes`
--
ALTER TABLE `tbl_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `tbl_vi_modules`
--
ALTER TABLE `tbl_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `tbl_vi_news_1`
--
ALTER TABLE `tbl_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_2`
--
ALTER TABLE `tbl_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_8`
--
ALTER TABLE `tbl_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_9`
--
ALTER TABLE `tbl_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_10`
--
ALTER TABLE `tbl_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_11`
--
ALTER TABLE `tbl_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_12`
--
ALTER TABLE `tbl_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_admins`
--
ALTER TABLE `tbl_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `tbl_vi_news_block`
--
ALTER TABLE `tbl_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `tbl_vi_news_block_cat`
--
ALTER TABLE `tbl_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_news_cat`
--
ALTER TABLE `tbl_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_vi_news_config_post`
--
ALTER TABLE `tbl_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tbl_vi_news_detail`
--
ALTER TABLE `tbl_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vi_news_logs`
--
ALTER TABLE `tbl_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_vi_news_rows`
--
ALTER TABLE `tbl_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tbl_vi_news_sources`
--
ALTER TABLE `tbl_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tbl_vi_news_tags`
--
ALTER TABLE `tbl_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_news_tags_id`
--
ALTER TABLE `tbl_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `tbl_vi_news_tmp`
--
ALTER TABLE `tbl_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vi_news_topics`
--
ALTER TABLE `tbl_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_page`
--
ALTER TABLE `tbl_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_page_config`
--
ALTER TABLE `tbl_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tbl_vi_referer_stats`
--
ALTER TABLE `tbl_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `tbl_vi_searchkeys`
--
ALTER TABLE `tbl_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `tbl_vi_siteterms`
--
ALTER TABLE `tbl_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tbl_vi_siteterms_config`
--
ALTER TABLE `tbl_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tbl_vi_voting`
--
ALTER TABLE `tbl_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `tbl_vi_voting_rows`
--
ALTER TABLE `tbl_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_vi_qldt_canbo`
--
ALTER TABLE `nv4_vi_qldt_canbo`
  MODIFY `ma_canbo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_qldt_lop`
--
ALTER TABLE `nv4_vi_qldt_lop`
  MODIFY `ma_lop` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_qldt_monhoc`
--
ALTER TABLE `nv4_vi_qldt_monhoc`
  MODIFY `ma_monhoc` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_ten_module_diem`
--
ALTER TABLE `nv4_vi_ten_module_diem`
  MODIFY `ma_diem` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_ten_module_lop`
--
ALTER TABLE `nv4_vi_ten_module_lop`
  MODIFY `ma_lop` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_ten_module_lopmon`
--
ALTER TABLE `nv4_vi_ten_module_lopmon`
  MODIFY `ma_lopmon` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_authors_config`
--
ALTER TABLE `tbl_authors_config`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_authors_module`
--
ALTER TABLE `tbl_authors_module`
  MODIFY `mid` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_authors_oauth`
--
ALTER TABLE `tbl_authors_oauth`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_banners_click`
--
ALTER TABLE `tbl_banners_click`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_banners_plans`
--
ALTER TABLE `tbl_banners_plans`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_banners_rows`
--
ALTER TABLE `tbl_banners_rows`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cronjobs`
--
ALTER TABLE `tbl_cronjobs`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_extension_files`
--
ALTER TABLE `tbl_extension_files`
  MODIFY `idfile` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ips`
--
ALTER TABLE `tbl_ips`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language_file`
--
ALTER TABLE `tbl_language_file`
  MODIFY `idfile` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_plugin`
--
ALTER TABLE `tbl_plugin`
  MODIFY `pid` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_qldt_canbo`
--
ALTER TABLE `tbl_qldt_canbo`
  MODIFY `ma_canbo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_dangkymon`
--
ALTER TABLE `tbl_qldt_dangkymon`
  MODIFY `ma_dkm` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_diem`
--
ALTER TABLE `tbl_qldt_diem`
  MODIFY `ma_diem` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_diemthi`
--
ALTER TABLE `tbl_qldt_diemthi`
  MODIFY `ma_diemthi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_dsthi`
--
ALTER TABLE `tbl_qldt_dsthi`
  MODIFY `ma_dsthi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_dvhv`
--
ALTER TABLE `tbl_qldt_dvhv`
  MODIFY `ma_dvhv` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_lop`
--
ALTER TABLE `tbl_qldt_lop`
  MODIFY `ma_lop` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_lopmon`
--
ALTER TABLE `tbl_qldt_lopmon`
  MODIFY `ma_lopmon` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_monhoc`
--
ALTER TABLE `tbl_qldt_monhoc`
  MODIFY `ma_monhoc` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_qldt_phong`
--
ALTER TABLE `tbl_qldt_phong`
  MODIFY `ma_phong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_upload_dir`
--
ALTER TABLE `tbl_upload_dir`
  MODIFY `did` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users_backupcodes`
--
ALTER TABLE `tbl_users_backupcodes`
  MODIFY `userid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users_field`
--
ALTER TABLE `tbl_users_field`
  MODIFY `fid` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users_groups`
--
ALTER TABLE `tbl_users_groups`
  MODIFY `group_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_users_question`
--
ALTER TABLE `tbl_users_question`
  MODIFY `qid` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users_reg`
--
ALTER TABLE `tbl_users_reg`
  MODIFY `userid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_about`
--
ALTER TABLE `tbl_vi_about`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_vi_blocks_groups`
--
ALTER TABLE `tbl_vi_blocks_groups`
  MODIFY `bid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_vi_comment`
--
ALTER TABLE `tbl_vi_comment`
  MODIFY `cid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_contact_department`
--
ALTER TABLE `tbl_vi_contact_department`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vi_contact_reply`
--
ALTER TABLE `tbl_vi_contact_reply`
  MODIFY `rid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_contact_send`
--
ALTER TABLE `tbl_vi_contact_send`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_contact_supporter`
--
ALTER TABLE `tbl_vi_contact_supporter`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_freecontent_blocks`
--
ALTER TABLE `tbl_vi_freecontent_blocks`
  MODIFY `bid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vi_freecontent_rows`
--
ALTER TABLE `tbl_vi_freecontent_rows`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_vi_menu`
--
ALTER TABLE `tbl_vi_menu`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vi_menu_rows`
--
ALTER TABLE `tbl_vi_menu_rows`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_vi_modfuncs`
--
ALTER TABLE `tbl_vi_modfuncs`
  MODIFY `func_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_vi_news_1`
--
ALTER TABLE `tbl_vi_news_1`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_vi_news_2`
--
ALTER TABLE `tbl_vi_news_2`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_vi_news_8`
--
ALTER TABLE `tbl_vi_news_8`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vi_news_9`
--
ALTER TABLE `tbl_vi_news_9`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_vi_news_10`
--
ALTER TABLE `tbl_vi_news_10`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_vi_news_11`
--
ALTER TABLE `tbl_vi_news_11`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_vi_news_12`
--
ALTER TABLE `tbl_vi_news_12`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_vi_news_block_cat`
--
ALTER TABLE `tbl_vi_news_block_cat`
  MODIFY `bid` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vi_news_cat`
--
ALTER TABLE `tbl_vi_news_cat`
  MODIFY `catid` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_vi_news_logs`
--
ALTER TABLE `tbl_vi_news_logs`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_news_rows`
--
ALTER TABLE `tbl_vi_news_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_vi_news_sources`
--
ALTER TABLE `tbl_vi_news_sources`
  MODIFY `sourceid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_vi_news_tags`
--
ALTER TABLE `tbl_vi_news_tags`
  MODIFY `tid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_vi_news_topics`
--
ALTER TABLE `tbl_vi_news_topics`
  MODIFY `topicid` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_vi_page`
--
ALTER TABLE `tbl_vi_page`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vi_siteterms`
--
ALTER TABLE `tbl_vi_siteterms`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vi_voting`
--
ALTER TABLE `tbl_vi_voting`
  MODIFY `vid` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vi_voting_rows`
--
ALTER TABLE `tbl_vi_voting_rows`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nv4_vi_ten_module_lopmon`
--
ALTER TABLE `nv4_vi_ten_module_lopmon`
  ADD CONSTRAINT `nv4_vi_ten_module_lopmon_ibfk_1` FOREIGN KEY (`ma_monhoc`) REFERENCES `nv4_vi_qldt_monhoc` (`ma_monhoc`),
  ADD CONSTRAINT `nv4_vi_ten_module_lopmon_ibfk_2` FOREIGN KEY (`ma_canbo`) REFERENCES `nv4_vi_qldt_canbo` (`ma_canbo`);

--
-- Constraints for table `nv4_vi_ten_module_sinhvien`
--
ALTER TABLE `nv4_vi_ten_module_sinhvien`
  ADD CONSTRAINT `nv4_vi_ten_module_sinhvien_ibfk_1` FOREIGN KEY (`ma_lop`) REFERENCES `nv4_vi_qldt_lop` (`ma_lop`);

--
-- Constraints for table `tbl_qldt_dangkymon`
--
ALTER TABLE `tbl_qldt_dangkymon`
  ADD CONSTRAINT `tbl_qldt_dangkymon_ibfk_1` FOREIGN KEY (`ma_lopmon`) REFERENCES `tbl_qldt_lopmon` (`ma_lopmon`),
  ADD CONSTRAINT `tbl_qldt_dangkymon_ibfk_2` FOREIGN KEY (`ma_sv`) REFERENCES `tbl_qldt_sinhvien` (`ma_sv`);

--
-- Constraints for table `tbl_qldt_diem`
--
ALTER TABLE `tbl_qldt_diem`
  ADD CONSTRAINT `tbl_qldt_diem_ibfk_1` FOREIGN KEY (`ma_loaidiem`) REFERENCES `tbl_qldt_loaidiem` (`ma_loaidiem`),
  ADD CONSTRAINT `tbl_qldt_diem_ibfk_2` FOREIGN KEY (`ma_dkm`) REFERENCES `tbl_qldt_dangkymon` (`ma_dkm`);

--
-- Constraints for table `tbl_qldt_diemthi`
--
ALTER TABLE `tbl_qldt_diemthi`
  ADD CONSTRAINT `tbl_qldt_diemthi_ibfk_1` FOREIGN KEY (`ma_dkm`) REFERENCES `tbl_qldt_dangkymon` (`ma_dkm`),
  ADD CONSTRAINT `tbl_qldt_diemthi_ibfk_2` FOREIGN KEY (`ma_dsthi`) REFERENCES `tbl_qldt_dsthi` (`ma_dsthi`);

--
-- Constraints for table `tbl_qldt_dsthi`
--
ALTER TABLE `tbl_qldt_dsthi`
  ADD CONSTRAINT `tbl_qldt_dsthi_ibfk_1` FOREIGN KEY (`ma_phongthi`) REFERENCES `tbl_qldt_phong` (`ma_phong`),
  ADD CONSTRAINT `tbl_qldt_dsthi_ibfk_2` FOREIGN KEY (`ma_mon`) REFERENCES `tbl_qldt_monhoc` (`ma_monhoc`);

--
-- Constraints for table `tbl_qldt_lopmon`
--
ALTER TABLE `tbl_qldt_lopmon`
  ADD CONSTRAINT `tbl_qldt_lopmon_ibfk_1` FOREIGN KEY (`ma_monhoc`) REFERENCES `tbl_qldt_monhoc` (`ma_monhoc`),
  ADD CONSTRAINT `tbl_qldt_lopmon_ibfk_2` FOREIGN KEY (`ma_dvhv`) REFERENCES `tbl_qldt_dvhv` (`ma_dvhv`),
  ADD CONSTRAINT `tbl_qldt_lopmon_ibfk_3` FOREIGN KEY (`ma_canbo`) REFERENCES `tbl_qldt_canbo` (`ma_canbo`);

--
-- Constraints for table `tbl_qldt_sinhvien`
--
ALTER TABLE `tbl_qldt_sinhvien`
  ADD CONSTRAINT `tbl_qldt_sinhvien_ibfk_1` FOREIGN KEY (`ma_lop`) REFERENCES `tbl_qldt_lop` (`ma_lop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
