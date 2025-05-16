-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 03:32 PM
-- Server version: 11.4.4-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalgrrc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add User', 7, 'add_user'),
(26, 'Can change User', 7, 'change_user'),
(27, 'Can delete User', 7, 'delete_user'),
(28, 'Can view User', 7, 'view_user'),
(29, 'Can add Article', 8, 'add_article'),
(30, 'Can change Article', 8, 'change_article'),
(31, 'Can delete Article', 8, 'delete_article'),
(32, 'Can view Article', 8, 'view_article'),
(33, 'Can add Research', 9, 'add_research'),
(34, 'Can change Research', 9, 'change_research'),
(35, 'Can delete Research', 9, 'delete_research'),
(36, 'Can view Research', 9, 'view_research'),
(37, 'Can add Featured Category', 10, 'add_featuredcategory'),
(38, 'Can change Featured Category', 10, 'change_featuredcategory'),
(39, 'Can delete Featured Category', 10, 'delete_featuredcategory'),
(40, 'Can view Featured Category', 10, 'view_featuredcategory'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add research category', 12, 'add_researchcategory'),
(46, 'Can change research category', 12, 'change_researchcategory'),
(47, 'Can delete research category', 12, 'delete_researchcategory'),
(48, 'Can view research category', 12, 'view_researchcategory'),
(49, 'Can add footer info', 13, 'add_footerinfo'),
(50, 'Can change footer info', 13, 'change_footerinfo'),
(51, 'Can delete footer info', 13, 'delete_footerinfo'),
(52, 'Can view footer info', 13, 'view_footerinfo'),
(53, 'Can add hero section', 14, 'add_herosection'),
(54, 'Can change hero section', 14, 'change_herosection'),
(55, 'Can delete hero section', 14, 'delete_herosection'),
(56, 'Can view hero section', 14, 'view_herosection'),
(57, 'Can add mission vision', 15, 'add_missionvision'),
(58, 'Can change mission vision', 15, 'change_missionvision'),
(59, 'Can delete mission vision', 15, 'delete_missionvision'),
(60, 'Can view mission vision', 15, 'view_missionvision'),
(61, 'Can add key objectives', 16, 'add_keyobjectives'),
(62, 'Can change key objectives', 16, 'change_keyobjectives'),
(63, 'Can delete key objectives', 16, 'delete_keyobjectives'),
(64, 'Can view key objectives', 16, 'view_keyobjectives'),
(65, 'Can add dynamic banner image', 17, 'add_dynamicbannerimage'),
(66, 'Can change dynamic banner image', 17, 'change_dynamicbannerimage'),
(67, 'Can delete dynamic banner image', 17, 'delete_dynamicbannerimage'),
(68, 'Can view dynamic banner image', 17, 'view_dynamicbannerimage'),
(69, 'Can add content card', 18, 'add_contentcard'),
(70, 'Can change content card', 18, 'change_contentcard'),
(71, 'Can delete content card', 18, 'delete_contentcard'),
(72, 'Can view content card', 18, 'view_contentcard'),
(73, 'Can add team member', 19, 'add_teammember'),
(74, 'Can change team member', 19, 'change_teammember'),
(75, 'Can delete team member', 19, 'delete_teammember'),
(76, 'Can view team member', 19, 'view_teammember'),
(77, 'Can add call to action', 20, 'add_calltoaction'),
(78, 'Can change call to action', 20, 'change_calltoaction'),
(79, 'Can delete call to action', 20, 'delete_calltoaction'),
(80, 'Can view call to action', 20, 'view_calltoaction'),
(81, 'Can add uga hero section', 21, 'add_ugaherosection'),
(82, 'Can change uga hero section', 21, 'change_ugaherosection'),
(83, 'Can delete uga hero section', 21, 'delete_ugaherosection'),
(84, 'Can view uga hero section', 21, 'view_ugaherosection'),
(85, 'Can add uga implementation step', 22, 'add_ugaimplementationstep'),
(86, 'Can change uga implementation step', 22, 'change_ugaimplementationstep'),
(87, 'Can delete uga implementation step', 22, 'delete_ugaimplementationstep'),
(88, 'Can view uga implementation step', 22, 'view_ugaimplementationstep'),
(89, 'Can add uga key area', 23, 'add_ugakeyarea'),
(90, 'Can change uga key area', 23, 'change_ugakeyarea'),
(91, 'Can delete uga key area', 23, 'delete_ugakeyarea'),
(92, 'Can view uga key area', 23, 'view_ugakeyarea'),
(93, 'Can add uga overview card', 24, 'add_ugaoverviewcard'),
(94, 'Can change uga overview card', 24, 'change_ugaoverviewcard'),
(95, 'Can delete uga overview card', 24, 'delete_ugaoverviewcard'),
(96, 'Can view uga overview card', 24, 'view_ugaoverviewcard'),
(97, 'Can add uga overview section', 25, 'add_ugaoverviewsection'),
(98, 'Can change uga overview section', 25, 'change_ugaoverviewsection'),
(99, 'Can delete uga overview section', 25, 'delete_ugaoverviewsection'),
(100, 'Can view uga overview section', 25, 'view_ugaoverviewsection'),
(101, 'Can add uga call to action', 20, 'add_ugacalltoaction'),
(102, 'Can change uga call to action', 20, 'change_ugacalltoaction'),
(103, 'Can delete uga call to action', 20, 'delete_ugacalltoaction'),
(104, 'Can view uga call to action', 20, 'view_ugacalltoaction');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'user_views', 'article'),
(11, 'user_views', 'category'),
(18, 'user_views', 'contentcard'),
(17, 'user_views', 'dynamicbannerimage'),
(10, 'user_views', 'featuredcategory'),
(13, 'user_views', 'footerinfo'),
(14, 'user_views', 'herosection'),
(16, 'user_views', 'keyobjectives'),
(15, 'user_views', 'missionvision'),
(9, 'user_views', 'research'),
(12, 'user_views', 'researchcategory'),
(19, 'user_views', 'teammember'),
(20, 'user_views', 'ugacalltoaction'),
(21, 'user_views', 'ugaherosection'),
(22, 'user_views', 'ugaimplementationstep'),
(23, 'user_views', 'ugakeyarea'),
(24, 'user_views', 'ugaoverviewcard'),
(25, 'user_views', 'ugaoverviewsection'),
(7, 'user_views', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-25 12:19:05.242923'),
(2, 'auth', '0001_initial', '2025-03-25 12:19:05.391255'),
(3, 'admin', '0001_initial', '2025-03-25 12:19:05.449048'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-25 12:19:05.470158'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-25 12:19:05.480196'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-25 12:19:05.539864'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-25 12:19:05.564360'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-25 12:19:05.576927'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-25 12:19:05.585149'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-25 12:19:05.610050'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-25 12:19:05.611699'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-25 12:19:05.632772'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-25 12:19:05.653046'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-25 12:19:05.671803'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-25 12:19:05.689153'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-25 12:19:05.702323'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-25 12:19:05.727906'),
(18, 'sessions', '0001_initial', '2025-03-25 12:19:05.757025'),
(19, 'user_views', '0001_initial', '2025-03-25 12:19:05.805377'),
(20, 'user_views', '0002_research', '2025-03-25 12:19:05.825978'),
(21, 'user_views', '0003_remove_article_box1_content_and_more', '2025-04-08 06:32:31.978088'),
(22, 'user_views', '0004_featuredcategory_research_featured_categories', '2025-04-14 01:35:16.730416'),
(23, 'user_views', '0005_category_alter_featuredcategory_options_and_more', '2025-04-14 02:16:58.166438'),
(24, 'user_views', '0006_remove_featuredcategory_category_and_more', '2025-04-16 06:12:11.635432'),
(25, 'user_views', '0007_researchcategory_research_category', '2025-04-16 13:15:24.705285'),
(26, 'user_views', '0008_footerinfo', '2025-04-22 05:32:37.691245'),
(27, 'user_views', '0009_rename_email_footerinfo_contact_email_and_more', '2025-04-22 05:54:49.831450'),
(28, 'user_views', '0010_herosection_remove_footerinfo_quick_link_about_and_more', '2025-04-28 14:47:21.629142'),
(29, 'user_views', '0011_missionvision', '2025-04-28 16:39:29.296424'),
(30, 'user_views', '0012_missionvision_mission_points_and_more', '2025-04-28 23:23:10.001879'),
(31, 'user_views', '0013_keyobjectives', '2025-04-29 14:18:46.179089'),
(32, 'user_views', '0014_delete_keyobjectives', '2025-04-29 14:24:13.238232'),
(33, 'user_views', '0015_keyobjectives', '2025-04-29 14:25:02.235964'),
(34, 'user_views', '0016_dynamicbannerimage', '2025-04-29 15:34:56.174725'),
(35, 'user_views', '0017_contentcard', '2025-04-29 21:07:02.962647'),
(36, 'user_views', '0018_remove_contentcard_bg_color_and_more', '2025-04-29 21:22:14.474410'),
(37, 'user_views', '0019_teammember', '2025-04-29 21:52:08.143299'),
(38, 'user_views', '0020_calltoaction_ugaherosection_ugaimplementationstep_and_more', '2025-04-30 00:36:38.274343'),
(39, 'user_views', '0021_rename_calltoaction_ugacalltoaction', '2025-04-30 00:48:11.341040');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dnl8l9kpwkeckrfn47d860h6gjq5fh13', '.eJyrViotTi2Kz0xRsjLSgbDzEnNTlayUXFMyc5JSi0rylaDiRfk5IPHElNzMPKBYVmlxSXxOfnp6ako8UMCqpKg0tRYAQTUb2Q:1u21yg:-vw9v_-U6rdRLxxrIdC3qnQuwU7Ddg3Vf6mBIF9eqe4', '2025-04-22 05:58:30.005186'),
('ivruznh1jmbdqv0fy86k6lf0jgpyyf8c', '.eJyrViotTi2Kz0xRsjLSgbDzEnNTlayUXFMyc5JSi0rylaDiRfk5IPHElNzMPKBYVmlxSXxOfnp6ako8UMCqpKg0tRYAQTUb2Q:1u9yGh:fzGqkzhFZpH3wDPMEL6Bn6CFWgWhWs1Ly-qxcYFDQAI', '2025-05-14 03:37:55.685174');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_article`
--

CREATE TABLE `user_views_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `author_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_article`
--

INSERT INTO `user_views_article` (`id`, `title`, `content`, `created_at`, `image`, `updated_at`, `is_approved`, `author_id`) VALUES
(1, 'Welcome to the OFFICIAL GRRC Website!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin.', '2025-03-25 13:30:01.025017', 'articles/453436052_18447654181011426_6323604365113818174_n.jpg', '2025-03-26 01:14:44.105156', 1, 2),
(3, 'My first post!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin.', '2025-03-01 14:29:13.612463', 'articles/httyd_green.jpg', '2025-03-25 15:47:15.018070', 1, 5),
(4, 'Created new things!', 'hatdog ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2025-03-02 14:39:16.630051', 'articles/mikhaa.jpg', '2025-03-26 00:48:51.419281', 1, 2),
(5, 'Post tayu ulit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nCurabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin. In hac habitasse platea dictumst. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt erat quam, eu feugiat nisi laoreet non. Quisque eleifend orci eu facilisis eleifend.', '2025-03-25 15:16:49.079101', 'articles/wallpaperflare.com_wallpaper_2.jpg', '2025-03-26 01:14:20.136101', 1, 5),
(6, 'Article number 4', 'Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin. In hac habitasse platea dictumst. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt erat quam, eu feugiat nisi laoreet non. Quisque eleifend orci eu facilisis eleifend.\r\n\r\nNam ultricies, ligula in suscipit elementum, urna tortor lobortis sapien, ac tincidunt lorem lacus eu nulla. Proin ac aliquam ligula. Nulla sed nisi facilisis, malesuada risus ac, sollicitudin mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut euismod felis et libero faucibus, at vehicula eros vestibulum', '2025-03-25 16:12:50.827627', 'articles/1191601.png', '2025-04-17 14:28:18.697017', 1, 2),
(7, 'Halo da mingming', 'Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin. In hac habitasse platea dictumst. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt erat quam, eu feugiat nisi laoreet non. Quisque eleifend orci eu facilisis eleifend.\r\n\r\nNam ultricies, ligula in suscipit elementum, urna tortor lobortis sapien, ac tincidunt lorem lacus eu nulla. Proin ac aliquam ligula. Nulla sed nisi facilisis, malesuada risus ac, sollicitudin mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut euismod felis et libero faucibus, at vehicula eros vestibulum', '2025-03-26 00:00:33.322584', 'articles/wallpaperflare.com_wallpaper_3.jpg', '2025-04-17 14:28:25.202919', 1, 5),
(8, 'Hello World!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2025-03-26 00:46:52.676215', 'articles/453412097_18447654190011426_3493355584819425163_n.jpg', '2025-04-17 14:27:13.158834', 1, 5),
(12, 'My Second Article!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2025-03-05 14:25:19.583049', 'articles/_af576f78-aee7-4a95-bbad-2a5dcbadca35.jpg', '2025-04-17 14:25:54.949361', 1, 5),
(13, 'Posting Cringe Information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2025-03-06 14:32:20.980329', 'articles/466948324_602494585791697_2950541443373817305_n.jpg', '2025-04-17 14:34:08.894129', 1, 7),
(14, 'Creating Another Bad Article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2025-03-18 14:33:43.012900', 'articles/466146234_18467744452011426_7721935833565302390_n.jpg', '2025-04-17 14:34:07.457435', 1, 7),
(15, 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2025-03-02 06:06:18.684797', 'articles/438204049_1109618640250153_5606144683884345747_n.jpg', '2025-04-20 06:06:18.688433', 1, 2),
(16, 'Article 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2025-03-03 06:06:44.698864', 'articles/438223455_1002199374860868_1279709342618801956_n.jpg', '2025-04-20 06:06:44.703292', 1, 2),
(17, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2025-02-13 06:07:06.049703', 'articles/CCS_logo.jpg', '2025-04-20 06:07:06.051834', 1, 2),
(18, 'Article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2025-03-20 06:07:31.537094', 'articles/438158376_1605427143625045_8239699014600669381_n.jpg', '2025-04-20 06:07:31.542195', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_views_contentcard`
--

CREATE TABLE `user_views_contentcard` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL CHECK (`order` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_contentcard`
--

INSERT INTO `user_views_contentcard` (`id`, `title`, `description`, `image`, `order`) VALUES
(1, 'Womens Month', 'Stand out with custom jerseys—designed for style, comfort, and just for you. Let\'s make your vision a reality!', 'cards/grrcimage1.jpg', 1),
(2, 'GRRC Parade', 'Stand out with custom jerseys—designed for style, comfort, and just for you. Let\'s make your vision a reality!', 'cards/grrcimage2.jpg', 2),
(3, 'GRRC Tayo', 'Stand out with custom jerseys—designed for style, comfort, and just for you. Let\'s make your vision a reality!', 'cards/grrcimage3.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_views_dynamicbannerimage`
--

CREATE TABLE `user_views_dynamicbannerimage` (
  `id` bigint(20) NOT NULL,
  `small_image` varchar(100) NOT NULL,
  `large_image` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_dynamicbannerimage`
--

INSERT INTO `user_views_dynamicbannerimage` (`id`, `small_image`, `large_image`, `uploaded_at`) VALUES
(1, 'banner/grrctayosmall.png', 'banner/grrctayolarge_B3CT8b4.png', '2025-04-29 15:55:03.306922');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_footerinfo`
--

CREATE TABLE `user_views_footerinfo` (
  `id` bigint(20) NOT NULL,
  `contact_email` varchar(254) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `social_facebook` varchar(200) DEFAULT NULL,
  `social_instagram` varchar(200) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_footerinfo`
--

INSERT INTO `user_views_footerinfo` (`id`, `contact_email`, `contact_phone`, `social_facebook`, `social_instagram`, `logo`) VALUES
(1, 'grrc@wmsu.edu.ph', '123-456-789', 'https://www.facebook.com/profile.php?id=100064595509801', 'https://www.instagram.com/laufey?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==', 'footer_logos/GENDER_RESEARCH_AND_RESOURCE_CENTER.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_herosection`
--

CREATE TABLE `user_views_herosection` (
  `id` bigint(20) NOT NULL,
  `title_line_1` varchar(255) NOT NULL,
  `title_line_2` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `visit_us_link` varchar(200) NOT NULL,
  `logo_image` varchar(100) NOT NULL,
  `background_image_mobile` varchar(100) NOT NULL,
  `background_image_desktop` varchar(100) NOT NULL,
  `learn_more_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_herosection`
--

INSERT INTO `user_views_herosection` (`id`, `title_line_1`, `title_line_2`, `description`, `visit_us_link`, `logo_image`, `background_image_mobile`, `background_image_desktop`, `learn_more_url`) VALUES
(1, 'Gender Research TESDT', 'and Resource Center TEST', 'Sa GRRC WMSU, Safe ka! ipagtanggol ka, ilalaban ang karapatan mo, may kakampi at kaibigan ka maging sino ka man! TEST', 'https://www.facebook.com/', 'hero/GENDER_RESEARCH_AND_RESOURCE_CENTER.png', 'hero/backgrounds/1337089_1r8OFDV.jpeg', 'hero/backgrounds/GRRC_wVjX8hr.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_views_keyobjectives`
--

CREATE TABLE `user_views_keyobjectives` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `intro` longtext NOT NULL,
  `objective_1_title` varchar(255) NOT NULL,
  `objective_1_text` longtext NOT NULL,
  `objective_2_title` varchar(255) NOT NULL,
  `objective_2_text` longtext NOT NULL,
  `objective_3_title` varchar(255) NOT NULL,
  `objective_3_text` longtext NOT NULL,
  `objective_4_title` varchar(255) NOT NULL,
  `objective_4_text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_keyobjectives`
--

INSERT INTO `user_views_keyobjectives` (`id`, `heading`, `intro`, `objective_1_title`, `objective_1_text`, `objective_2_title`, `objective_2_text`, `objective_3_title`, `objective_3_text`, `objective_4_title`, `objective_4_text`) VALUES
(1, 'Key Objectives', 'GRRC are to advance gender equality and inclusivity through interdisciplinary research, advocacy, education, and resource provision. These centers aim to analyze gender-related issues, empower marginalized groups, influence policy development, and foster a society that upholds gender equity.', 'Conduct Gender-Focused Research', 'Generate data and insights on gender issues to support evidence-based policies and advocacy.', 'Provide Education and Training', 'Offer workshops, seminars, and resources to enhance awareness and understanding of gender-related topics.', 'Address Gender-Based Violence and Discrimination', 'Develop initiatives to prevent gender-based violence and support affected individuals.', 'Promote Gender Equality and Inclusivity', 'Advocate for gender-responsive policies, programs, and practices in institutions and communities.');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_missionvision`
--

CREATE TABLE `user_views_missionvision` (
  `id` bigint(20) NOT NULL,
  `mission_title` varchar(255) NOT NULL,
  `mission_description` longtext NOT NULL,
  `vision_title` varchar(255) NOT NULL,
  `vision_description` longtext NOT NULL,
  `background_image_mobile` varchar(100) NOT NULL,
  `background_image_desktop` varchar(100) NOT NULL,
  `mission_points` longtext DEFAULT NULL,
  `vision_points` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_missionvision`
--

INSERT INTO `user_views_missionvision` (`id`, `mission_title`, `mission_description`, `vision_title`, `vision_description`, `background_image_mobile`, `background_image_desktop`, `mission_points`, `vision_points`) VALUES
(1, 'Mission TEST', 'To coordinate, implement and facilitate gender mainstreaming in local, regional and national development through participation in policy formulation, advocacy, research, education, investigation of gender based violations, establishment of partnership, monitoring and evaluation in order to achieve gender equity and equality.', 'TEST', 'The leading institution in Western Mindanao vital to the realization of gender equality and equity in all aspects of development for a fair and just society.', 'mission_vision/backgrounds/scrollsmall_copy.png', 'mission_vision/backgrounds/scroll.png', 'Conducting gender-focused research and studies,Providing CCS educational programs and resources,Advocating for gender equality policies, TEST', 'Creating a gender-responsive academic environment,Building partnerships for gender equality,Empowering future leaders for gender equality, TEST,thing');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_research`
--

CREATE TABLE `user_views_research` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `featured_order` smallint(5) UNSIGNED NOT NULL CHECK (`featured_order` >= 0),
  `is_featured` tinyint(1) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_research`
--

INSERT INTO `user_views_research` (`id`, `title`, `content`, `image`, `pdf_file`, `created_at`, `is_approved`, `author_id`, `featured_order`, `is_featured`, `category_id`) VALUES
(22, 'Research 1', 'GRRC Research Number 01', 'research/Acer_Wallpaper_05_3840x2400.jpg', 'research_pdfs/Section_II_-_GAD-related_studies-research_conducted_by_ZamPen_SUCs_in_last_Qs0By4x.pdf', '2025-04-30 01:46:28.907341', 1, 2, 3, 1, 1),
(23, 'Research 3', 'GRRC Research Number 03', 'research/Acer_Wallpaper_01_3840x2400.jpg', 'research_pdfs/Indama1_Workplace-Bullying-and-Gender-Minority.pdf', '2025-04-30 01:47:43.659680', 1, 2, 2, 1, 1),
(24, 'Research 2', 'GRRC Research Number 02', 'research/453412097_18447654190011426_3493355584819425163_n.jpg', 'research_pdfs/TOR_Prep_Compendium_RGADC9_Policies_GAD-related_studies_best_practices_ili_T4mGPYV.pdf', '2025-04-30 01:50:31.221600', 1, 2, 1, 1, 1),
(25, 'Random', 'aefawefqw', 'research/1191601.png', 'research_pdfs/Assembly_Interrupts.pdf', '2025-04-30 03:35:08.298327', 0, 5, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_views_researchcategory`
--

CREATE TABLE `user_views_researchcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_researchcategory`
--

INSERT INTO `user_views_researchcategory` (`id`, `name`, `created_at`) VALUES
(1, 'Education', '2025-04-16 13:20:25.849981'),
(2, 'Gender Rights', '2025-04-16 13:21:03.725115'),
(3, 'Social Studies', '2025-04-16 13:21:38.484698'),
(4, 'Gender Awareness', '2025-04-16 14:07:59.742943');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_teammember`
--

CREATE TABLE `user_views_teammember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `linkedin_url` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_teammember`
--

INSERT INTO `user_views_teammember` (`id`, `name`, `role`, `profile_image`, `linkedin_url`, `email`) VALUES
(1, 'DR. Mariam Z. Julkarnain', 'Director', 'team_members/MaamMariam.png', 'https://www.linkedin.com/login', 'diamondmonday5@gmail.com'),
(2, 'DR. Elmer M. Labad', 'Assistant Director', 'team_members/Dr_Elmer_M._Labad.png', 'https://www.linkedin.com/login', 'diamondmonday5@gmail.com'),
(3, 'Asst. Prof. Nelibelle C. Ulama', 'GAD Training Specialist, GRP', 'team_members/ASST_k9PQvjT._PROF._NELIBELLE_C._ULAMA_-_TRAINING_SPECIALIST.png', 'https://www.linkedin.com/login', 'diamondmonday5@gmail.com'),
(4, 'DR. Ma. Carla A. Ochotorena', 'President (GAD FOCAL POINT SYSTEM CHAIRPERSON)', 'team_members/DR._MA._CARLA_A._OCHOTORENA_-_PRESIDENT.png', 'https://www.linkedin.com/login', 'diamondmonday5@gmail.com'),
(5, 'Mr. Kenneth Potenciano', 'ADMINISTRATIVE AIDE III', 'team_members/MR._KENNETH_POTENCIANO_-_ADMINISTRATIVE_AIDE_III.png', 'https://www.linkedin.com/login', 'diamondmonday5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugacalltoaction`
--

CREATE TABLE `user_views_ugacalltoaction` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `subheading` longtext NOT NULL,
  `primary_button` varchar(100) NOT NULL,
  `primary_url` varchar(200) NOT NULL,
  `secondary_button` varchar(100) NOT NULL,
  `secondary_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugaherosection`
--

CREATE TABLE `user_views_ugaherosection` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `subheading` longtext NOT NULL,
  `background_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugaimplementationstep`
--

CREATE TABLE `user_views_ugaimplementationstep` (
  `id` bigint(20) NOT NULL,
  `step_number` int(10) UNSIGNED NOT NULL CHECK (`step_number` >= 0),
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugakeyarea`
--

CREATE TABLE `user_views_ugakeyarea` (
  `id` bigint(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `link_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugaoverviewcard`
--

CREATE TABLE `user_views_ugaoverviewcard` (
  `id` bigint(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `overview_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_ugaoverviewcard`
--

INSERT INTO `user_views_ugaoverviewcard` (`id`, `icon_class`, `title`, `description`, `overview_id`) VALUES
(2, ' fa-solid fa-handshake-angle', 'Outreach Programs', 'Our team actively engages with communities to spread awareness and promote gender-sensitive practices.', 1),
(7, ' fa-solid fa-handshake-angle', 'Outreach Programs', 'Our team actively engages with communities to spread awareness and promote gender-sensitive practices. TEST', 1),
(8, ' fa-solid fa-handshake-angle', 'Outreach Programs', 'Our team actively engages with communities to spread awareness and promote gender-sensitive practices. TEST AGAIN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_views_ugaoverviewsection`
--

CREATE TABLE `user_views_ugaoverviewsection` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_ugaoverviewsection`
--

INSERT INTO `user_views_ugaoverviewsection` (`id`, `title`, `content`) VALUES
(1, 'Our Commitment to Gender Equality', 'The University Gender Association (UGA) is our comprehensive framework for promoting gender equality, preventing gender-based violence, and fostering an inclusive environment for all members of the WMSU community.');

-- --------------------------------------------------------

--
-- Table structure for table `user_views_user`
--

CREATE TABLE `user_views_user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_views_user`
--

INSERT INTO `user_views_user` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `role`, `password`, `date_created`, `is_active`, `updated_at`) VALUES
(2, 'Edilberto', 'Dela Cruz', '', 'eds@gmail.com', 'admin', 'pbkdf2_sha256$870000$h2Fc7FWnZ3fz6Rm1LqtTPM$F1zgLjpTMMo228XagjkhKxFM0Cvk1CVmfzyl4eiK3Gg=', '2025-03-25', 1, '2025-03-25 13:14:33.979995'),
(3, 'Admin', 'Test', '', 'admin@gmail.com', 'admin', 'pbkdf2_sha256$870000$KUp6u0hg2LI5urncjzxaHQ$SKRf85VEnQ4NhoKFAze+B1Ts5CEcYCKrrb0eGEJnbcU=', '2025-03-25', 1, '2025-04-17 14:23:12.379294'),
(5, 'kiara', 'cando', '', 'cando@gmail.com', 'member', 'pbkdf2_sha256$870000$77M7bjfIan4hACMCubdbF8$5SJuhevK2myxnc+PocIiuEBUmc+eLn+wzh+MXNefg7Q=', '2025-03-25', 1, '2025-04-29 12:33:21.501114'),
(7, 'neiljam', 'juson', '', 'juson@gmail.com', 'member', 'pbkdf2_sha256$870000$tFHIMSqMApodeNrKTnxfAh$vO8t80vhfE4t7IhE2B0ttcjCKmP3myM9lALs+yaxZWk=', '2025-03-25', 0, '2025-04-29 12:33:25.280236');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `user_views_article`
--
ALTER TABLE `user_views_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_views_article_author_id_d7b1b04d_fk_user_views_user_id` (`author_id`);

--
-- Indexes for table `user_views_contentcard`
--
ALTER TABLE `user_views_contentcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_dynamicbannerimage`
--
ALTER TABLE `user_views_dynamicbannerimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_footerinfo`
--
ALTER TABLE `user_views_footerinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_herosection`
--
ALTER TABLE `user_views_herosection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_keyobjectives`
--
ALTER TABLE `user_views_keyobjectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_missionvision`
--
ALTER TABLE `user_views_missionvision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_research`
--
ALTER TABLE `user_views_research`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_views_research_author_id_c10ee40d_fk_user_views_user_id` (`author_id`),
  ADD KEY `user_views_research_category_id_6d6dc0cb_fk_user_view` (`category_id`);

--
-- Indexes for table `user_views_researchcategory`
--
ALTER TABLE `user_views_researchcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_teammember`
--
ALTER TABLE `user_views_teammember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_ugacalltoaction`
--
ALTER TABLE `user_views_ugacalltoaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_ugaherosection`
--
ALTER TABLE `user_views_ugaherosection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_ugaimplementationstep`
--
ALTER TABLE `user_views_ugaimplementationstep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_ugakeyarea`
--
ALTER TABLE `user_views_ugakeyarea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_ugaoverviewcard`
--
ALTER TABLE `user_views_ugaoverviewcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_views_ugaovervi_overview_id_d52781b8_fk_user_view` (`overview_id`);

--
-- Indexes for table `user_views_ugaoverviewsection`
--
ALTER TABLE `user_views_ugaoverviewsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_views_user`
--
ALTER TABLE `user_views_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_views_article`
--
ALTER TABLE `user_views_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_views_contentcard`
--
ALTER TABLE `user_views_contentcard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_views_dynamicbannerimage`
--
ALTER TABLE `user_views_dynamicbannerimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_footerinfo`
--
ALTER TABLE `user_views_footerinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_herosection`
--
ALTER TABLE `user_views_herosection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_keyobjectives`
--
ALTER TABLE `user_views_keyobjectives`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_missionvision`
--
ALTER TABLE `user_views_missionvision`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_research`
--
ALTER TABLE `user_views_research`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_views_researchcategory`
--
ALTER TABLE `user_views_researchcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_views_teammember`
--
ALTER TABLE `user_views_teammember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_views_ugacalltoaction`
--
ALTER TABLE `user_views_ugacalltoaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_views_ugaherosection`
--
ALTER TABLE `user_views_ugaherosection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_views_ugaimplementationstep`
--
ALTER TABLE `user_views_ugaimplementationstep`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_views_ugakeyarea`
--
ALTER TABLE `user_views_ugakeyarea`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_views_ugaoverviewcard`
--
ALTER TABLE `user_views_ugaoverviewcard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_views_ugaoverviewsection`
--
ALTER TABLE `user_views_ugaoverviewsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_views_user`
--
ALTER TABLE `user_views_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_views_article`
--
ALTER TABLE `user_views_article`
  ADD CONSTRAINT `user_views_article_author_id_d7b1b04d_fk_user_views_user_id` FOREIGN KEY (`author_id`) REFERENCES `user_views_user` (`id`);

--
-- Constraints for table `user_views_research`
--
ALTER TABLE `user_views_research`
  ADD CONSTRAINT `user_views_research_author_id_c10ee40d_fk_user_views_user_id` FOREIGN KEY (`author_id`) REFERENCES `user_views_user` (`id`),
  ADD CONSTRAINT `user_views_research_category_id_6d6dc0cb_fk_user_view` FOREIGN KEY (`category_id`) REFERENCES `user_views_researchcategory` (`id`);

--
-- Constraints for table `user_views_ugaoverviewcard`
--
ALTER TABLE `user_views_ugaoverviewcard`
  ADD CONSTRAINT `user_views_ugaovervi_overview_id_d52781b8_fk_user_view` FOREIGN KEY (`overview_id`) REFERENCES `user_views_ugaoverviewsection` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
