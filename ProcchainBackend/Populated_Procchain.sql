-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 03:36 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add association', 7, 'add_association'),
(26, 'Can change association', 7, 'change_association'),
(27, 'Can delete association', 7, 'delete_association'),
(28, 'Can view association', 7, 'view_association'),
(29, 'Can add code', 8, 'add_code'),
(30, 'Can change code', 8, 'change_code'),
(31, 'Can delete code', 8, 'delete_code'),
(32, 'Can view code', 8, 'view_code'),
(33, 'Can add nonce', 9, 'add_nonce'),
(34, 'Can change nonce', 9, 'change_nonce'),
(35, 'Can delete nonce', 9, 'delete_nonce'),
(36, 'Can view nonce', 9, 'view_nonce'),
(37, 'Can add user social auth', 10, 'add_usersocialauth'),
(38, 'Can change user social auth', 10, 'change_usersocialauth'),
(39, 'Can delete user social auth', 10, 'delete_usersocialauth'),
(40, 'Can view user social auth', 10, 'view_usersocialauth'),
(41, 'Can add partial', 11, 'add_partial'),
(42, 'Can change partial', 11, 'change_partial'),
(43, 'Can delete partial', 11, 'delete_partial'),
(44, 'Can view partial', 11, 'view_partial');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(7, 'social_django', 'association'),
(8, 'social_django', 'code'),
(9, 'social_django', 'nonce'),
(11, 'social_django', 'partial'),
(10, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-13 12:26:55.933186'),
(2, 'auth', '0001_initial', '2020-01-13 12:26:56.104403'),
(3, 'admin', '0001_initial', '2020-01-13 12:26:56.602889'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-13 12:26:56.728665'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-13 12:26:56.752121'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-13 12:26:56.830249'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-13 12:26:56.889226'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-13 12:26:56.917990'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-13 12:26:56.934067'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-13 12:26:56.983301'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-13 12:26:56.987333'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-13 12:26:57.003121'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-13 12:26:57.026024'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-13 12:26:57.063225'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-13 12:26:57.086436'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-13 12:26:57.102991'),
(17, 'sessions', '0001_initial', '2020-01-13 12:26:57.129618'),
(18, 'default', '0001_initial', '2020-01-13 12:26:57.362247'),
(19, 'social_auth', '0001_initial', '2020-01-13 12:26:57.368351'),
(20, 'default', '0002_add_related_name', '2020-01-13 12:26:57.550893'),
(21, 'social_auth', '0002_add_related_name', '2020-01-13 12:26:57.555002'),
(22, 'default', '0003_alter_email_max_length', '2020-01-13 12:26:57.573827'),
(23, 'social_auth', '0003_alter_email_max_length', '2020-01-13 12:26:57.577675'),
(24, 'default', '0004_auto_20160423_0400', '2020-01-13 12:26:57.593607'),
(25, 'social_auth', '0004_auto_20160423_0400', '2020-01-13 12:26:57.598890'),
(26, 'social_auth', '0005_auto_20160727_2333', '2020-01-13 12:26:57.627081'),
(27, 'social_django', '0006_partial', '2020-01-13 12:26:57.658457'),
(28, 'social_django', '0007_code_timestamp', '2020-01-13 12:26:57.706590'),
(29, 'social_django', '0008_partial_timestamp', '2020-01-13 12:26:57.741974'),
(30, 'social_django', '0001_initial', '2020-01-13 12:26:57.765010'),
(31, 'social_django', '0002_add_related_name', '2020-01-13 12:26:57.768740'),
(32, 'social_django', '0003_alter_email_max_length', '2020-01-13 12:26:57.773664'),
(33, 'social_django', '0005_auto_20160727_2333', '2020-01-13 12:26:57.778616'),
(34, 'social_django', '0004_auto_20160423_0400', '2020-01-13 12:26:57.783780');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gail`
--

CREATE TABLE `gail` (
  `org_id` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `contact_head` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `sub_zone_id` int(11) NOT NULL,
  `contact_details` text DEFAULT NULL,
  `eth_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gail`
--

INSERT INTO `gail` (`org_id`, `head`, `contact_head`, `zone_id`, `sub_zone_id`, `contact_details`, `eth_address`) VALUES
(1, 183, 194, 6, 11, NULL, '77226'),
(2, 2, 164, 1, 1, NULL, '94943'),
(3, 97, 182, 6, 11, NULL, '28158'),
(4, 137, 192, 17, 33, NULL, '29617'),
(5, 89, 117, 1, 2, NULL, '99849'),
(6, 194, 72, 12, 23, NULL, '98440'),
(7, 43, 22, 2, 3, NULL, '58825'),
(8, 110, 122, 20, 40, NULL, '87279'),
(9, 47, 107, 7, 14, NULL, '97910'),
(10, 53, 189, 12, 23, NULL, '89067'),
(11, 17, 30, 1, 2, NULL, '43418'),
(12, 36, 185, 9, 17, NULL, '53268'),
(13, 144, 105, 2, 3, NULL, '63309'),
(14, 33, 179, 1, 2, NULL, '70091'),
(15, 84, 136, 14, 28, NULL, '22409'),
(16, 13, 82, 2, 4, NULL, '12118'),
(17, 16, 70, 14, 27, NULL, '79295'),
(18, 189, 4, 15, 29, NULL, '14212'),
(19, 4, 51, 11, 21, NULL, '30709'),
(20, 197, 28, 12, 24, NULL, '20080'),
(21, 91, 151, 2, 4, NULL, '52043'),
(22, 188, 178, 16, 32, NULL, '93273'),
(23, 44, 88, 15, 30, NULL, '40973'),
(24, 61, 20, 17, 33, NULL, '31044'),
(25, 102, 81, 7, 13, NULL, '68372'),
(26, 121, 179, 18, 36, NULL, '80507'),
(27, 118, 66, 15, 30, NULL, '79775'),
(28, 84, 112, 18, 35, NULL, '69015'),
(29, 176, 114, 7, 13, NULL, '78532'),
(30, 10, 114, 17, 34, NULL, '60082');

-- --------------------------------------------------------

--
-- Table structure for table `middleman`
--

CREATE TABLE `middleman` (
  `middle_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `other_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `middleman`
--

INSERT INTO `middleman` (`middle_id`, `name`, `address`, `invited_by`, `other_details`) VALUES
(1, 0, 'Address1', 78, NULL),
(2, 0, 'Address2', 167, NULL),
(3, 0, 'Address3', 134, NULL),
(4, 0, 'Address4', 147, NULL),
(5, 0, 'Address5', 98, NULL),
(6, 0, 'Address6', 21, NULL),
(7, 0, 'Address7', 164, NULL),
(8, 0, 'Address8', 120, NULL),
(9, 0, 'Address9', 117, NULL),
(10, 0, 'Address10', 87, NULL),
(11, 0, 'Address11', 27, NULL),
(12, 0, 'Address12', 25, NULL),
(13, 0, 'Address13', 67, NULL),
(14, 0, 'Address14', 144, NULL),
(15, 0, 'Address15', 197, NULL),
(16, 0, 'Address16', 15, NULL),
(17, 0, 'Address17', 165, NULL),
(18, 0, 'Address18', 118, NULL),
(19, 0, 'Address19', 90, NULL),
(20, 0, 'Address20', 13, NULL),
(21, 0, 'Address21', 23, NULL),
(22, 0, 'Address22', 62, NULL),
(23, 0, 'Address23', 91, NULL),
(24, 0, 'Address24', 12, NULL),
(25, 0, 'Address25', 190, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `function` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `function`) VALUES
(1, 'adds tenders'),
(2, 'validates tenders'),
(3, 'views bids'),
(4, 'approve bids'),
(5, 'payment incharge for GAIL'),
(6, 'payment validator for vendor'),
(7, 'dept head'),
(8, 'centre head'),
(9, 'zonal head'),
(10, 'sub zonal head'),
(11, 'HQ head');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_zones`
--

CREATE TABLE `sub_zones` (
  `sub_zone_id` int(11) NOT NULL,
  `sub_zone_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_zones`
--

INSERT INTO `sub_zones` (`sub_zone_id`, `sub_zone_name`) VALUES
(1, 'Sub Zone 1'),
(2, 'Sub Zone 2'),
(3, 'Sub Zone 3'),
(4, 'Sub Zone 4'),
(5, 'Sub Zone 5'),
(6, 'Sub Zone 6'),
(7, 'Sub Zone 7'),
(8, 'Sub Zone 8'),
(9, 'Sub Zone 9'),
(10, 'Sub Zone 10'),
(11, 'Sub Zone 11'),
(12, 'Sub Zone 12'),
(13, 'Sub Zone 13'),
(14, 'Sub Zone 14'),
(15, 'Sub Zone 15'),
(16, 'Sub Zone 16'),
(17, 'Sub Zone 17'),
(18, 'Sub Zone 18'),
(19, 'Sub Zone 19'),
(20, 'Sub Zone 20'),
(21, 'Sub Zone 21'),
(22, 'Sub Zone 22'),
(23, 'Sub Zone 23'),
(24, 'Sub Zone 24'),
(25, 'Sub Zone 25'),
(26, 'Sub Zone 26'),
(27, 'Sub Zone 27'),
(28, 'Sub Zone 28'),
(29, 'Sub Zone 29'),
(30, 'Sub Zone 30'),
(31, 'Sub Zone 31'),
(32, 'Sub Zone 32'),
(33, 'Sub Zone 33'),
(34, 'Sub Zone 34'),
(35, 'Sub Zone 35'),
(36, 'Sub Zone 36'),
(37, 'Sub Zone 37'),
(38, 'Sub Zone 38'),
(39, 'Sub Zone 39'),
(40, 'Sub Zone 40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `oauth` int(1) NOT NULL COMMENT '0-  Not using oauth , 1- using oauth'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `start_date`, `end_date`, `email`, `password`, `oauth`) VALUES
(1, 'Fname1', 'Lname1', '1972-11-20 18:30:00', NULL, 'user1@gmail.com', 'pass1', 0),
(2, 'Fname2', 'Lname2', '1999-01-03 18:30:00', NULL, 'user2@gmail.com', 'pass2', 1),
(3, 'Fname3', 'Lname3', '1975-04-09 18:30:00', NULL, 'user3@gmail.com', 'pass3', 1),
(4, 'Fname4', 'Lname4', '2017-11-16 18:30:00', NULL, 'user4@gmail.com', 'pass4', 1),
(5, 'Fname5', 'Lname5', '2013-12-28 18:30:00', NULL, 'user5@gmail.com', 'pass5', 1),
(6, 'Fname6', 'Lname6', '1996-01-21 18:30:00', NULL, 'user6@gmail.com', 'pass6', 1),
(7, 'Fname7', 'Lname7', '2001-04-09 18:30:00', NULL, 'user7@gmail.com', 'pass7', 1),
(8, 'Fname8', 'Lname8', '0000-00-00 00:00:00', NULL, 'user8@gmail.com', 'pass8', 1),
(9, 'Fname9', 'Lname9', '2008-03-17 18:30:00', NULL, 'user9@gmail.com', 'pass9', 1),
(10, 'Fname10', 'Lname10', '0000-00-00 00:00:00', NULL, 'user10@gmail.com', 'pass10', 1),
(11, 'Fname11', 'Lname11', '1973-08-26 18:30:00', NULL, 'user11@gmail.com', 'pass11', 1),
(12, 'Fname12', 'Lname12', '2011-03-03 18:30:00', NULL, 'user12@gmail.com', 'pass12', 1),
(13, 'Fname13', 'Lname13', '2002-05-26 18:30:00', NULL, 'user13@gmail.com', 'pass13', 1),
(14, 'Fname14', 'Lname14', '2016-07-16 18:30:00', NULL, 'user14@gmail.com', 'pass14', 0),
(15, 'Fname15', 'Lname15', '2018-12-13 18:30:00', NULL, 'user15@gmail.com', 'pass15', 0),
(16, 'Fname16', 'Lname16', '1976-05-25 18:30:00', NULL, 'user16@gmail.com', 'pass16', 1),
(17, 'Fname17', 'Lname17', '2017-05-28 18:30:00', NULL, 'user17@gmail.com', 'pass17', 1),
(18, 'Fname18', 'Lname18', '2020-04-03 18:30:00', NULL, 'user18@gmail.com', 'pass18', 0),
(19, 'Fname19', 'Lname19', '1988-10-02 18:30:00', NULL, 'user19@gmail.com', 'pass19', 1),
(20, 'Fname20', 'Lname20', '0000-00-00 00:00:00', NULL, 'user20@gmail.com', 'pass20', 1),
(21, 'Fname21', 'Lname21', '2018-04-15 18:30:00', NULL, 'user21@gmail.com', 'pass21', 0),
(22, 'Fname22', 'Lname22', '1980-04-30 18:30:00', NULL, 'user22@gmail.com', 'pass22', 1),
(23, 'Fname23', 'Lname23', '2015-08-21 18:30:00', NULL, 'user23@gmail.com', 'pass23', 1),
(24, 'Fname24', 'Lname24', '2018-12-30 18:30:00', NULL, 'user24@gmail.com', 'pass24', 1),
(25, 'Fname25', 'Lname25', '1982-07-09 18:30:00', NULL, 'user25@gmail.com', 'pass25', 1),
(26, 'Fname26', 'Lname26', '1986-02-01 18:30:00', NULL, 'user26@gmail.com', 'pass26', 1),
(27, 'Fname27', 'Lname27', '2015-04-13 18:30:00', NULL, 'user27@gmail.com', 'pass27', 0),
(28, 'Fname28', 'Lname28', '0000-00-00 00:00:00', NULL, 'user28@gmail.com', 'pass28', 1),
(29, 'Fname29', 'Lname29', '2013-02-03 18:30:00', NULL, 'user29@gmail.com', 'pass29', 0),
(30, 'Fname30', 'Lname30', '1978-10-22 18:30:00', NULL, 'user30@gmail.com', 'pass30', 1),
(31, 'Fname31', 'Lname31', '1974-04-10 18:30:00', NULL, 'user31@gmail.com', 'pass31', 1),
(32, 'Fname32', 'Lname32', '2001-06-06 18:30:00', NULL, 'user32@gmail.com', 'pass32', 1),
(33, 'Fname33', 'Lname33', '1997-10-31 18:30:00', NULL, 'user33@gmail.com', 'pass33', 1),
(34, 'Fname34', 'Lname34', '1981-09-20 18:30:00', NULL, 'user34@gmail.com', 'pass34', 1),
(35, 'Fname35', 'Lname35', '1978-05-16 18:30:00', NULL, 'user35@gmail.com', 'pass35', 1),
(36, 'Fname36', 'Lname36', '1996-05-19 18:30:00', NULL, 'user36@gmail.com', 'pass36', 1),
(37, 'Fname37', 'Lname37', '2003-03-01 18:30:00', NULL, 'user37@gmail.com', 'pass37', 1),
(38, 'Fname38', 'Lname38', '1986-06-19 18:30:00', NULL, 'user38@gmail.com', 'pass38', 1),
(39, 'Fname39', 'Lname39', '2009-06-20 18:30:00', NULL, 'user39@gmail.com', 'pass39', 0),
(40, 'Fname40', 'Lname40', '1977-07-16 18:30:00', NULL, 'user40@gmail.com', 'pass40', 1),
(41, 'Fname41', 'Lname41', '1981-12-22 18:30:00', NULL, 'user41@gmail.com', 'pass41', 1),
(42, 'Fname42', 'Lname42', '2020-11-24 18:30:00', NULL, 'user42@gmail.com', 'pass42', 1),
(43, 'Fname43', 'Lname43', '2016-07-29 18:30:00', NULL, 'user43@gmail.com', 'pass43', 1),
(44, 'Fname44', 'Lname44', '1990-12-15 18:30:00', NULL, 'user44@gmail.com', 'pass44', 1),
(45, 'Fname45', 'Lname45', '1986-04-25 18:30:00', NULL, 'user45@gmail.com', 'pass45', 1),
(46, 'Fname46', 'Lname46', '1983-08-13 18:30:00', NULL, 'user46@gmail.com', 'pass46', 1),
(47, 'Fname47', 'Lname47', '1973-04-17 18:30:00', NULL, 'user47@gmail.com', 'pass47', 1),
(48, 'Fname48', 'Lname48', '2014-06-11 18:30:00', NULL, 'user48@gmail.com', 'pass48', 1),
(49, 'Fname49', 'Lname49', '2005-06-28 18:30:00', NULL, 'user49@gmail.com', 'pass49', 1),
(50, 'Fname50', 'Lname50', '1970-02-19 18:30:00', NULL, 'user50@gmail.com', 'pass50', 1),
(51, 'Fname51', 'Lname51', '1979-10-29 18:30:00', NULL, 'user51@gmail.com', 'pass51', 1),
(52, 'Fname52', 'Lname52', '2015-10-12 18:30:00', NULL, 'user52@gmail.com', 'pass52', 1),
(53, 'Fname53', 'Lname53', '0000-00-00 00:00:00', NULL, 'user53@gmail.com', 'pass53', 0),
(54, 'Fname54', 'Lname54', '2013-11-25 18:30:00', NULL, 'user54@gmail.com', 'pass54', 1),
(55, 'Fname55', 'Lname55', '1989-08-28 18:30:00', NULL, 'user55@gmail.com', 'pass55', 1),
(56, 'Fname56', 'Lname56', '1997-08-27 18:30:00', NULL, 'user56@gmail.com', 'pass56', 1),
(57, 'Fname57', 'Lname57', '1979-10-26 18:30:00', NULL, 'user57@gmail.com', 'pass57', 1),
(58, 'Fname58', 'Lname58', '0000-00-00 00:00:00', NULL, 'user58@gmail.com', 'pass58', 0),
(59, 'Fname59', 'Lname59', '2002-12-17 18:30:00', NULL, 'user59@gmail.com', 'pass59', 1),
(60, 'Fname60', 'Lname60', '2003-02-26 18:30:00', NULL, 'user60@gmail.com', 'pass60', 1),
(61, 'Fname61', 'Lname61', '1981-11-09 18:30:00', NULL, 'user61@gmail.com', 'pass61', 0),
(62, 'Fname62', 'Lname62', '2016-05-06 18:30:00', NULL, 'user62@gmail.com', 'pass62', 1),
(63, 'Fname63', 'Lname63', '2018-04-15 18:30:00', NULL, 'user63@gmail.com', 'pass63', 1),
(64, 'Fname64', 'Lname64', '0000-00-00 00:00:00', NULL, 'user64@gmail.com', 'pass64', 1),
(65, 'Fname65', 'Lname65', '0000-00-00 00:00:00', NULL, 'user65@gmail.com', 'pass65', 1),
(66, 'Fname66', 'Lname66', '0000-00-00 00:00:00', NULL, 'user66@gmail.com', 'pass66', 1),
(67, 'Fname67', 'Lname67', '0000-00-00 00:00:00', NULL, 'user67@gmail.com', 'pass67', 1),
(68, 'Fname68', 'Lname68', '1993-07-10 18:30:00', NULL, 'user68@gmail.com', 'pass68', 0),
(69, 'Fname69', 'Lname69', '1981-10-22 18:30:00', NULL, 'user69@gmail.com', 'pass69', 1),
(70, 'Fname70', 'Lname70', '0000-00-00 00:00:00', NULL, 'user70@gmail.com', 'pass70', 1),
(71, 'Fname71', 'Lname71', '1994-10-03 18:30:00', NULL, 'user71@gmail.com', 'pass71', 1),
(72, 'Fname72', 'Lname72', '2020-11-27 18:30:00', NULL, 'user72@gmail.com', 'pass72', 1),
(73, 'Fname73', 'Lname73', '2019-09-03 18:30:00', NULL, 'user73@gmail.com', 'pass73', 1),
(74, 'Fname74', 'Lname74', '1997-06-11 18:30:00', NULL, 'user74@gmail.com', 'pass74', 1),
(75, 'Fname75', 'Lname75', '0000-00-00 00:00:00', NULL, 'user75@gmail.com', 'pass75', 0),
(76, 'Fname76', 'Lname76', '0000-00-00 00:00:00', NULL, 'user76@gmail.com', 'pass76', 1),
(77, 'Fname77', 'Lname77', '1971-12-10 18:30:00', NULL, 'user77@gmail.com', 'pass77', 1),
(78, 'Fname78', 'Lname78', '0000-00-00 00:00:00', NULL, 'user78@gmail.com', 'pass78', 1),
(79, 'Fname79', 'Lname79', '1992-12-29 18:30:00', NULL, 'user79@gmail.com', 'pass79', 1),
(80, 'Fname80', 'Lname80', '1990-02-09 18:30:00', NULL, 'user80@gmail.com', 'pass80', 0),
(81, 'Fname81', 'Lname81', '1979-09-03 18:30:00', NULL, 'user81@gmail.com', 'pass81', 1),
(82, 'Fname82', 'Lname82', '2020-12-01 18:30:00', NULL, 'user82@gmail.com', 'pass82', 1),
(83, 'Fname83', 'Lname83', '2007-10-31 18:30:00', NULL, 'user83@gmail.com', 'pass83', 1),
(84, 'Fname84', 'Lname84', '1996-07-19 18:30:00', NULL, 'user84@gmail.com', 'pass84', 1),
(85, 'Fname85', 'Lname85', '1990-08-19 18:30:00', NULL, 'user85@gmail.com', 'pass85', 1),
(86, 'Fname86', 'Lname86', '2005-12-15 18:30:00', NULL, 'user86@gmail.com', 'pass86', 1),
(87, 'Fname87', 'Lname87', '2001-05-04 18:30:00', NULL, 'user87@gmail.com', 'pass87', 1),
(88, 'Fname88', 'Lname88', '1974-05-05 18:30:00', NULL, 'user88@gmail.com', 'pass88', 1),
(89, 'Fname89', 'Lname89', '2005-03-02 18:30:00', NULL, 'user89@gmail.com', 'pass89', 1),
(90, 'Fname90', 'Lname90', '1993-10-08 18:30:00', NULL, 'user90@gmail.com', 'pass90', 0),
(91, 'Fname91', 'Lname91', '1986-08-10 18:30:00', NULL, 'user91@gmail.com', 'pass91', 0),
(92, 'Fname92', 'Lname92', '2001-09-22 18:30:00', NULL, 'user92@gmail.com', 'pass92', 1),
(93, 'Fname93', 'Lname93', '1996-10-07 18:30:00', NULL, 'user93@gmail.com', 'pass93', 0),
(94, 'Fname94', 'Lname94', '2020-09-08 18:30:00', NULL, 'user94@gmail.com', 'pass94', 1),
(95, 'Fname95', 'Lname95', '2005-10-17 18:30:00', NULL, 'user95@gmail.com', 'pass95', 0),
(96, 'Fname96', 'Lname96', '1981-10-06 18:30:00', NULL, 'user96@gmail.com', 'pass96', 0),
(97, 'Fname97', 'Lname97', '1974-01-24 18:30:00', NULL, 'user97@gmail.com', 'pass97', 1),
(98, 'Fname98', 'Lname98', '1974-10-02 18:30:00', NULL, 'user98@gmail.com', 'pass98', 1),
(99, 'Fname99', 'Lname99', '0000-00-00 00:00:00', NULL, 'user99@gmail.com', 'pass99', 1),
(100, 'Fname100', 'Lname100', '1991-06-30 18:30:00', NULL, 'user100@gmail.com', 'pass100', 1),
(101, 'Fname101', 'Lname101', '0000-00-00 00:00:00', NULL, 'user101@gmail.com', 'pass101', 1),
(102, 'Fname102', 'Lname102', '2016-12-24 18:30:00', NULL, 'user102@gmail.com', 'pass102', 1),
(103, 'Fname103', 'Lname103', '1979-06-21 18:30:00', NULL, 'user103@gmail.com', 'pass103', 0),
(104, 'Fname104', 'Lname104', '2001-11-10 18:30:00', NULL, 'user104@gmail.com', 'pass104', 1),
(105, 'Fname105', 'Lname105', '2017-12-01 18:30:00', NULL, 'user105@gmail.com', 'pass105', 1),
(106, 'Fname106', 'Lname106', '0000-00-00 00:00:00', NULL, 'user106@gmail.com', 'pass106', 1),
(107, 'Fname107', 'Lname107', '1979-04-08 18:30:00', NULL, 'user107@gmail.com', 'pass107', 1),
(108, 'Fname108', 'Lname108', '1975-07-05 18:30:00', NULL, 'user108@gmail.com', 'pass108', 1),
(109, 'Fname109', 'Lname109', '1991-08-30 18:30:00', NULL, 'user109@gmail.com', 'pass109', 1),
(110, 'Fname110', 'Lname110', '1985-04-10 18:30:00', NULL, 'user110@gmail.com', 'pass110', 1),
(111, 'Fname111', 'Lname111', '1978-01-18 18:30:00', NULL, 'user111@gmail.com', 'pass111', 1),
(112, 'Fname112', 'Lname112', '1974-01-26 18:30:00', NULL, 'user112@gmail.com', 'pass112', 0),
(113, 'Fname113', 'Lname113', '2002-03-19 18:30:00', NULL, 'user113@gmail.com', 'pass113', 1),
(114, 'Fname114', 'Lname114', '2005-08-02 18:30:00', NULL, 'user114@gmail.com', 'pass114', 1),
(115, 'Fname115', 'Lname115', '0000-00-00 00:00:00', NULL, 'user115@gmail.com', 'pass115', 0),
(116, 'Fname116', 'Lname116', '1972-12-23 18:30:00', NULL, 'user116@gmail.com', 'pass116', 1),
(117, 'Fname117', 'Lname117', '0000-00-00 00:00:00', NULL, 'user117@gmail.com', 'pass117', 1),
(118, 'Fname118', 'Lname118', '0000-00-00 00:00:00', NULL, 'user118@gmail.com', 'pass118', 1),
(119, 'Fname119', 'Lname119', '0000-00-00 00:00:00', NULL, 'user119@gmail.com', 'pass119', 1),
(120, 'Fname120', 'Lname120', '2011-07-23 18:30:00', NULL, 'user120@gmail.com', 'pass120', 1),
(121, 'Fname121', 'Lname121', '2014-09-28 18:30:00', NULL, 'user121@gmail.com', 'pass121', 0),
(122, 'Fname122', 'Lname122', '2004-04-17 18:30:00', NULL, 'user122@gmail.com', 'pass122', 0),
(123, 'Fname123', 'Lname123', '2002-07-07 18:30:00', NULL, 'user123@gmail.com', 'pass123', 1),
(124, 'Fname124', 'Lname124', '0000-00-00 00:00:00', NULL, 'user124@gmail.com', 'pass124', 1),
(125, 'Fname125', 'Lname125', '0000-00-00 00:00:00', NULL, 'user125@gmail.com', 'pass125', 1),
(126, 'Fname126', 'Lname126', '2003-10-02 18:30:00', NULL, 'user126@gmail.com', 'pass126', 0),
(127, 'Fname127', 'Lname127', '2008-07-04 18:30:00', NULL, 'user127@gmail.com', 'pass127', 1),
(128, 'Fname128', 'Lname128', '1981-12-31 18:30:00', NULL, 'user128@gmail.com', 'pass128', 1),
(129, 'Fname129', 'Lname129', '0000-00-00 00:00:00', NULL, 'user129@gmail.com', 'pass129', 0),
(130, 'Fname130', 'Lname130', '1986-05-31 18:30:00', NULL, 'user130@gmail.com', 'pass130', 1),
(131, 'Fname131', 'Lname131', '1975-08-30 18:30:00', NULL, 'user131@gmail.com', 'pass131', 0),
(132, 'Fname132', 'Lname132', '1994-02-22 18:30:00', NULL, 'user132@gmail.com', 'pass132', 1),
(133, 'Fname133', 'Lname133', '1972-08-11 18:30:00', NULL, 'user133@gmail.com', 'pass133', 0),
(134, 'Fname134', 'Lname134', '2004-08-20 18:30:00', NULL, 'user134@gmail.com', 'pass134', 1),
(135, 'Fname135', 'Lname135', '1981-01-11 18:30:00', NULL, 'user135@gmail.com', 'pass135', 0),
(136, 'Fname136', 'Lname136', '2002-12-14 18:30:00', NULL, 'user136@gmail.com', 'pass136', 1),
(137, 'Fname137', 'Lname137', '0000-00-00 00:00:00', NULL, 'user137@gmail.com', 'pass137', 1),
(138, 'Fname138', 'Lname138', '0000-00-00 00:00:00', NULL, 'user138@gmail.com', 'pass138', 1),
(139, 'Fname139', 'Lname139', '2009-12-27 18:30:00', NULL, 'user139@gmail.com', 'pass139', 1),
(140, 'Fname140', 'Lname140', '1980-04-10 18:30:00', NULL, 'user140@gmail.com', 'pass140', 1),
(141, 'Fname141', 'Lname141', '1972-01-04 18:30:00', NULL, 'user141@gmail.com', 'pass141', 0),
(142, 'Fname142', 'Lname142', '2007-04-14 18:30:00', NULL, 'user142@gmail.com', 'pass142', 1),
(143, 'Fname143', 'Lname143', '0000-00-00 00:00:00', NULL, 'user143@gmail.com', 'pass143', 1),
(144, 'Fname144', 'Lname144', '1983-09-16 18:30:00', NULL, 'user144@gmail.com', 'pass144', 1),
(145, 'Fname145', 'Lname145', '1974-01-24 18:30:00', NULL, 'user145@gmail.com', 'pass145', 1),
(146, 'Fname146', 'Lname146', '1999-03-23 18:30:00', NULL, 'user146@gmail.com', 'pass146', 1),
(147, 'Fname147', 'Lname147', '1988-05-22 18:30:00', NULL, 'user147@gmail.com', 'pass147', 1),
(148, 'Fname148', 'Lname148', '1976-04-09 18:30:00', NULL, 'user148@gmail.com', 'pass148', 1),
(149, 'Fname149', 'Lname149', '2000-12-08 18:30:00', NULL, 'user149@gmail.com', 'pass149', 0),
(150, 'Fname150', 'Lname150', '0000-00-00 00:00:00', NULL, 'user150@gmail.com', 'pass150', 1),
(151, 'Fname151', 'Lname151', '1980-05-07 18:30:00', NULL, 'user151@gmail.com', 'pass151', 1),
(152, 'Fname152', 'Lname152', '2007-06-04 18:30:00', NULL, 'user152@gmail.com', 'pass152', 1),
(153, 'Fname153', 'Lname153', '2000-04-14 18:30:00', NULL, 'user153@gmail.com', 'pass153', 1),
(154, 'Fname154', 'Lname154', '2014-01-20 18:30:00', NULL, 'user154@gmail.com', 'pass154', 1),
(155, 'Fname155', 'Lname155', '1997-05-06 18:30:00', NULL, 'user155@gmail.com', 'pass155', 1),
(156, 'Fname156', 'Lname156', '2016-02-15 18:30:00', NULL, 'user156@gmail.com', 'pass156', 1),
(157, 'Fname157', 'Lname157', '0000-00-00 00:00:00', NULL, 'user157@gmail.com', 'pass157', 0),
(158, 'Fname158', 'Lname158', '2005-03-18 18:30:00', NULL, 'user158@gmail.com', 'pass158', 1),
(159, 'Fname159', 'Lname159', '2011-07-24 18:30:00', NULL, 'user159@gmail.com', 'pass159', 0),
(160, 'Fname160', 'Lname160', '2009-03-30 18:30:00', NULL, 'user160@gmail.com', 'pass160', 1),
(161, 'Fname161', 'Lname161', '0000-00-00 00:00:00', NULL, 'user161@gmail.com', 'pass161', 0),
(162, 'Fname162', 'Lname162', '2000-12-28 18:30:00', NULL, 'user162@gmail.com', 'pass162', 0),
(163, 'Fname163', 'Lname163', '2011-04-12 18:30:00', NULL, 'user163@gmail.com', 'pass163', 1),
(164, 'Fname164', 'Lname164', '0000-00-00 00:00:00', NULL, 'user164@gmail.com', 'pass164', 1),
(165, 'Fname165', 'Lname165', '2007-12-24 18:30:00', NULL, 'user165@gmail.com', 'pass165', 1),
(166, 'Fname166', 'Lname166', '1985-02-04 18:30:00', NULL, 'user166@gmail.com', 'pass166', 1),
(167, 'Fname167', 'Lname167', '1995-01-25 18:30:00', NULL, 'user167@gmail.com', 'pass167', 1),
(168, 'Fname168', 'Lname168', '2016-01-19 18:30:00', NULL, 'user168@gmail.com', 'pass168', 1),
(169, 'Fname169', 'Lname169', '1995-12-18 18:30:00', NULL, 'user169@gmail.com', 'pass169', 1),
(170, 'Fname170', 'Lname170', '1976-08-21 18:30:00', NULL, 'user170@gmail.com', 'pass170', 1),
(171, 'Fname171', 'Lname171', '2011-04-13 18:30:00', NULL, 'user171@gmail.com', 'pass171', 1),
(172, 'Fname172', 'Lname172', '1974-12-02 18:30:00', NULL, 'user172@gmail.com', 'pass172', 1),
(173, 'Fname173', 'Lname173', '2007-11-18 18:30:00', NULL, 'user173@gmail.com', 'pass173', 1),
(174, 'Fname174', 'Lname174', '1977-04-18 18:30:00', NULL, 'user174@gmail.com', 'pass174', 1),
(175, 'Fname175', 'Lname175', '2013-02-14 18:30:00', NULL, 'user175@gmail.com', 'pass175', 1),
(176, 'Fname176', 'Lname176', '2009-12-06 18:30:00', NULL, 'user176@gmail.com', 'pass176', 1),
(177, 'Fname177', 'Lname177', '0000-00-00 00:00:00', NULL, 'user177@gmail.com', 'pass177', 0),
(178, 'Fname178', 'Lname178', '0000-00-00 00:00:00', NULL, 'user178@gmail.com', 'pass178', 1),
(179, 'Fname179', 'Lname179', '1996-10-30 18:30:00', NULL, 'user179@gmail.com', 'pass179', 1),
(180, 'Fname180', 'Lname180', '1992-01-31 18:30:00', NULL, 'user180@gmail.com', 'pass180', 1),
(181, 'Fname181', 'Lname181', '1970-03-28 18:30:00', NULL, 'user181@gmail.com', 'pass181', 0),
(182, 'Fname182', 'Lname182', '1991-04-26 18:30:00', NULL, 'user182@gmail.com', 'pass182', 1),
(183, 'Fname183', 'Lname183', '2000-06-07 18:30:00', NULL, 'user183@gmail.com', 'pass183', 1),
(184, 'Fname184', 'Lname184', '2014-07-22 18:30:00', NULL, 'user184@gmail.com', 'pass184', 0),
(185, 'Fname185', 'Lname185', '1991-02-09 18:30:00', NULL, 'user185@gmail.com', 'pass185', 1),
(186, 'Fname186', 'Lname186', '0000-00-00 00:00:00', NULL, 'user186@gmail.com', 'pass186', 1),
(187, 'Fname187', 'Lname187', '2020-05-04 18:30:00', NULL, 'user187@gmail.com', 'pass187', 1),
(188, 'Fname188', 'Lname188', '1979-10-05 18:30:00', NULL, 'user188@gmail.com', 'pass188', 1),
(189, 'Fname189', 'Lname189', '1997-09-14 18:30:00', NULL, 'user189@gmail.com', 'pass189', 0),
(190, 'Fname190', 'Lname190', '1973-10-17 18:30:00', NULL, 'user190@gmail.com', 'pass190', 1),
(191, 'Fname191', 'Lname191', '0000-00-00 00:00:00', NULL, 'user191@gmail.com', 'pass191', 1),
(192, 'Fname192', 'Lname192', '2001-11-02 18:30:00', NULL, 'user192@gmail.com', 'pass192', 1),
(193, 'Fname193', 'Lname193', '1989-05-03 18:30:00', NULL, 'user193@gmail.com', 'pass193', 1),
(194, 'Fname194', 'Lname194', '2008-10-03 18:30:00', NULL, 'user194@gmail.com', 'pass194', 1),
(195, 'Fname195', 'Lname195', '1983-04-28 18:30:00', NULL, 'user195@gmail.com', 'pass195', 0),
(196, 'Fname196', 'Lname196', '1990-05-10 18:30:00', NULL, 'user196@gmail.com', 'pass196', 1),
(197, 'Fname197', 'Lname197', '1974-01-22 18:30:00', NULL, 'user197@gmail.com', 'pass197', 1),
(198, 'Fname198', 'Lname198', '0000-00-00 00:00:00', NULL, 'user198@gmail.com', 'pass198', 1),
(199, 'Fname199', 'Lname199', '1998-01-16 18:30:00', NULL, 'user199@gmail.com', 'pass199', 1),
(200, 'Fname200', 'Lname200', '1993-03-20 18:30:00', NULL, 'user200@gmail.com', 'pass200', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_mapping`
--

CREATE TABLE `user_role_mapping` (
  `uid` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role_mapping`
--

INSERT INTO `user_role_mapping` (`uid`, `role_id`) VALUES
(188, 8),
(180, 11),
(127, 4),
(148, 3),
(108, 10),
(87, 6),
(166, 5),
(137, 5),
(38, 9),
(105, 6),
(69, 6),
(2, 6),
(194, 8),
(23, 3),
(82, 11),
(20, 1),
(51, 9),
(96, 1),
(105, 9),
(91, 5),
(158, 9),
(46, 2),
(196, 5),
(75, 9),
(7, 9),
(119, 11),
(180, 6),
(184, 7),
(84, 5),
(66, 11),
(191, 5),
(42, 8),
(82, 6),
(197, 5),
(65, 4),
(75, 5),
(106, 9),
(91, 5),
(110, 6),
(147, 10),
(117, 7),
(185, 11),
(75, 10),
(182, 4),
(174, 5),
(145, 9),
(141, 8),
(10, 11),
(11, 10),
(145, 7),
(52, 10),
(77, 8),
(2, 3),
(32, 9),
(120, 2),
(130, 6),
(159, 4),
(32, 7),
(110, 11),
(53, 11),
(113, 11),
(58, 11),
(50, 7),
(44, 10),
(27, 9),
(178, 4),
(56, 11),
(10, 10),
(76, 6),
(8, 3),
(139, 8),
(74, 8),
(170, 1),
(82, 10),
(167, 5),
(174, 1),
(29, 3),
(73, 2),
(51, 11),
(143, 10),
(194, 7),
(4, 5),
(40, 8),
(146, 10),
(198, 11),
(35, 5),
(75, 2),
(178, 1),
(154, 5),
(62, 1),
(7, 7),
(180, 7),
(108, 7),
(4, 7),
(112, 11),
(190, 4),
(99, 9),
(133, 4),
(17, 1),
(185, 5),
(181, 11),
(7, 4),
(173, 6),
(126, 11),
(53, 9),
(62, 4),
(79, 9),
(163, 8),
(31, 8),
(136, 1),
(99, 7),
(12, 4),
(143, 1),
(67, 9),
(179, 2),
(169, 4),
(146, 4),
(145, 6),
(197, 6),
(63, 4),
(165, 3),
(55, 1),
(162, 5),
(109, 10),
(60, 11),
(200, 10),
(89, 10),
(81, 4),
(92, 10),
(136, 6),
(73, 3),
(54, 3),
(126, 9),
(94, 10),
(79, 6),
(27, 9),
(23, 11),
(49, 5),
(76, 7),
(196, 2),
(166, 4),
(196, 4),
(138, 9),
(73, 2),
(73, 5),
(183, 7),
(29, 5),
(125, 11),
(128, 11),
(76, 7),
(3, 3),
(33, 5),
(108, 10),
(107, 1),
(32, 6),
(136, 4),
(19, 3),
(67, 10),
(95, 8),
(72, 3),
(17, 3),
(104, 6),
(38, 10),
(68, 9),
(41, 6),
(89, 5),
(148, 8),
(198, 5),
(26, 1),
(6, 3),
(33, 5),
(167, 1),
(16, 11),
(26, 9),
(65, 2),
(25, 9),
(158, 4),
(34, 3),
(79, 7),
(83, 2),
(195, 5),
(154, 9),
(76, 6),
(126, 11),
(126, 11),
(146, 10),
(128, 5),
(95, 10),
(169, 1),
(127, 2),
(128, 5),
(50, 5),
(179, 6),
(182, 8),
(96, 6),
(59, 9),
(166, 9),
(15, 10),
(175, 4),
(137, 10),
(174, 2),
(117, 4),
(113, 1),
(192, 11),
(38, 11),
(93, 1),
(101, 11),
(190, 6),
(7, 9),
(120, 1),
(28, 2),
(185, 9),
(42, 1),
(91, 4),
(145, 9),
(147, 8),
(70, 5),
(108, 8),
(89, 11),
(135, 1),
(113, 3),
(188, 7),
(154, 10),
(18, 7),
(61, 6),
(119, 4),
(84, 5),
(22, 11),
(126, 4),
(71, 8),
(142, 5),
(3, 6),
(26, 3),
(170, 6),
(54, 6),
(200, 6),
(50, 6),
(140, 3),
(75, 2),
(94, 4),
(148, 10),
(137, 5),
(70, 1),
(23, 1),
(95, 5),
(169, 5),
(166, 9),
(55, 6),
(179, 10),
(126, 3),
(168, 9),
(104, 1),
(152, 3),
(120, 1),
(186, 1),
(72, 1),
(8, 8),
(55, 8),
(169, 7),
(95, 10),
(15, 4),
(18, 11),
(100, 5),
(196, 5),
(71, 3),
(135, 5),
(46, 3),
(102, 7),
(107, 2),
(164, 1),
(106, 9),
(51, 4),
(110, 11),
(162, 8),
(168, 1),
(25, 1),
(190, 9),
(22, 9),
(3, 2),
(136, 7),
(163, 6),
(104, 10),
(113, 2),
(127, 8),
(168, 8),
(45, 9),
(168, 3),
(187, 5),
(101, 2),
(97, 6),
(135, 2),
(140, 5),
(79, 7),
(158, 10),
(49, 3),
(137, 9),
(9, 2),
(147, 3),
(11, 4),
(184, 7);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `contact_head` int(11) NOT NULL,
  `number_of_centres` int(11) NOT NULL,
  `centres` text DEFAULT NULL,
  `verified_status` int(1) NOT NULL,
  `verified_by` int(11) NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `documents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `contact_head`, `number_of_centres`, `centres`, `verified_status`, `verified_by`, `verified_at`, `documents`) VALUES
(1, 'Vendor1', 92, 9, NULL, 1, 145, '0000-00-00 00:00:00', NULL),
(2, 'Vendor2', 148, 9, NULL, 1, 95, '0000-00-00 00:00:00', NULL),
(3, 'Vendor3', 40, 10, NULL, 1, 181, '0000-00-00 00:00:00', NULL),
(4, 'Vendor4', 87, 10, NULL, 1, 177, '0000-00-00 00:00:00', NULL),
(5, 'Vendor5', 119, 4, NULL, 1, 68, '0000-00-00 00:00:00', NULL),
(6, 'Vendor6', 133, 6, NULL, 1, 150, '0000-00-00 00:00:00', NULL),
(7, 'Vendor7', 70, 7, NULL, 1, 160, '0000-00-00 00:00:00', NULL),
(8, 'Vendor8', 31, 7, NULL, 1, 28, '0000-00-00 00:00:00', NULL),
(9, 'Vendor9', 162, 3, NULL, 1, 193, '0000-00-00 00:00:00', NULL),
(10, 'Vendor10', 98, 4, NULL, 1, 47, '0000-00-00 00:00:00', NULL),
(11, 'Vendor11', 103, 3, NULL, 1, 43, '0000-00-00 00:00:00', NULL),
(12, 'Vendor12', 137, 5, NULL, 1, 200, '0000-00-00 00:00:00', NULL),
(13, 'Vendor13', 190, 6, NULL, 1, 45, '0000-00-00 00:00:00', NULL),
(14, 'Vendor14', 192, 6, NULL, 0, 14, '0000-00-00 00:00:00', NULL),
(15, 'Vendor15', 192, 10, NULL, 1, 8, '0000-00-00 00:00:00', NULL),
(16, 'Vendor16', 88, 6, NULL, 1, 118, '0000-00-00 00:00:00', NULL),
(17, 'Vendor17', 72, 1, NULL, 1, 196, '0000-00-00 00:00:00', NULL),
(18, 'Vendor18', 14, 2, NULL, 1, 14, '0000-00-00 00:00:00', NULL),
(19, 'Vendor19', 98, 5, NULL, 1, 192, '0000-00-00 00:00:00', NULL),
(20, 'Vendor20', 18, 9, NULL, 1, 85, '0000-00-00 00:00:00', NULL),
(21, 'Vendor21', 146, 10, NULL, 1, 31, '0000-00-00 00:00:00', NULL),
(22, 'Vendor22', 140, 9, NULL, 1, 149, '0000-00-00 00:00:00', NULL),
(23, 'Vendor23', 61, 3, NULL, 1, 9, '0000-00-00 00:00:00', NULL),
(24, 'Vendor24', 160, 7, NULL, 1, 98, '0000-00-00 00:00:00', NULL),
(25, 'Vendor25', 158, 9, NULL, 1, 52, '0000-00-00 00:00:00', NULL),
(26, 'Vendor26', 6, 4, NULL, 1, 26, '0000-00-00 00:00:00', NULL),
(27, 'Vendor27', 42, 7, NULL, 1, 163, '0000-00-00 00:00:00', NULL),
(28, 'Vendor28', 77, 4, NULL, 1, 88, '0000-00-00 00:00:00', NULL),
(29, 'Vendor29', 131, 1, NULL, 1, 119, '0000-00-00 00:00:00', NULL),
(30, 'Vendor30', 32, 3, NULL, 1, 192, '0000-00-00 00:00:00', NULL),
(31, 'Vendor31', 142, 2, NULL, 1, 47, '0000-00-00 00:00:00', NULL),
(32, 'Vendor32', 6, 2, NULL, 1, 72, '0000-00-00 00:00:00', NULL),
(33, 'Vendor33', 55, 9, NULL, 1, 138, '0000-00-00 00:00:00', NULL),
(34, 'Vendor34', 95, 3, NULL, 0, 133, '0000-00-00 00:00:00', NULL),
(35, 'Vendor35', 86, 7, NULL, 1, 40, '0000-00-00 00:00:00', NULL),
(36, 'Vendor36', 186, 4, NULL, 1, 124, '0000-00-00 00:00:00', NULL),
(37, 'Vendor37', 99, 6, NULL, 1, 86, '0000-00-00 00:00:00', NULL),
(38, 'Vendor38', 51, 1, NULL, 1, 135, '0000-00-00 00:00:00', NULL),
(39, 'Vendor39', 87, 3, NULL, 1, 190, '0000-00-00 00:00:00', NULL),
(40, 'Vendor40', 99, 1, NULL, 1, 58, '0000-00-00 00:00:00', NULL),
(41, 'Vendor41', 45, 10, NULL, 1, 80, '0000-00-00 00:00:00', NULL),
(42, 'Vendor42', 3, 4, NULL, 1, 121, '0000-00-00 00:00:00', NULL),
(43, 'Vendor43', 178, 2, NULL, 1, 190, '0000-00-00 00:00:00', NULL),
(44, 'Vendor44', 90, 7, NULL, 1, 133, '0000-00-00 00:00:00', NULL),
(45, 'Vendor45', 48, 10, NULL, 1, 187, '0000-00-00 00:00:00', NULL),
(46, 'Vendor46', 15, 4, NULL, 1, 145, '0000-00-00 00:00:00', NULL),
(47, 'Vendor47', 121, 9, NULL, 1, 150, '0000-00-00 00:00:00', NULL),
(48, 'Vendor48', 103, 5, NULL, 1, 71, '0000-00-00 00:00:00', NULL),
(49, 'Vendor49', 12, 6, NULL, 1, 77, '0000-00-00 00:00:00', NULL),
(50, 'Vendor50', 183, 2, NULL, 1, 61, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `zone_name`) VALUES
(1, 'Zone 1'),
(2, 'Zone 2'),
(3, 'Zone 3'),
(4, 'Zone 4'),
(5, 'Zone 5'),
(6, 'Zone 6'),
(7, 'Zone 7'),
(8, 'Zone 8'),
(9, 'Zone 9'),
(10, 'Zone 10'),
(11, 'Zone 11'),
(12, 'Zone 12'),
(13, 'Zone 13'),
(14, 'Zone 14'),
(15, 'Zone 15'),
(16, 'Zone 16'),
(17, 'Zone 17'),
(18, 'Zone 18'),
(19, 'Zone 19'),
(20, 'Zone 20');

-- --------------------------------------------------------

--
-- Table structure for table `zone_subzone_mapping`
--

CREATE TABLE `zone_subzone_mapping` (
  `zone_id` int(11) NOT NULL,
  `sub_zone_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone_subzone_mapping`
--

INSERT INTO `zone_subzone_mapping` (`zone_id`, `sub_zone_id`, `location`) VALUES
(1, 1, 'Location11'),
(1, 2, 'Location12'),
(2, 3, 'Location23'),
(2, 4, 'Location24'),
(3, 5, 'Location35'),
(3, 6, 'Location36'),
(4, 7, 'Location47'),
(4, 8, 'Location48'),
(5, 9, 'Location59'),
(5, 10, 'Location510'),
(6, 11, 'Location611'),
(6, 12, 'Location612'),
(7, 13, 'Location713'),
(7, 14, 'Location714'),
(8, 15, 'Location815'),
(8, 16, 'Location816'),
(9, 17, 'Location917'),
(9, 18, 'Location918'),
(10, 19, 'Location1019'),
(10, 20, 'Location1020'),
(11, 21, 'Location1121'),
(11, 22, 'Location1122'),
(12, 23, 'Location1223'),
(12, 24, 'Location1224'),
(13, 25, 'Location1325'),
(13, 26, 'Location1326'),
(14, 27, 'Location1427'),
(14, 28, 'Location1428'),
(15, 29, 'Location1529'),
(15, 30, 'Location1530'),
(16, 31, 'Location1631'),
(16, 32, 'Location1632'),
(17, 33, 'Location1733'),
(17, 34, 'Location1734'),
(18, 35, 'Location1835'),
(18, 36, 'Location1836'),
(19, 37, 'Location1937'),
(19, 38, 'Location1938'),
(20, 39, 'Location2039'),
(20, 40, 'Location2040');

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
-- Indexes for table `gail`
--
ALTER TABLE `gail`
  ADD PRIMARY KEY (`org_id`),
  -- ADD UNIQUE KEY `eth_address` (`eth_address`),
  ADD KEY `contact_head` (`contact_head`),
  ADD KEY `head` (`head`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `sub_zone_id` (`sub_zone_id`);

--
-- Indexes for table `middleman`
--
ALTER TABLE `middleman`
  ADD PRIMARY KEY (`middle_id`),
  ADD KEY `invited_by` (`invited_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`);
  -- ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  -- ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`);
  -- ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  -- ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `sub_zones`
--
ALTER TABLE `sub_zones`
  ADD PRIMARY KEY (`sub_zone_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_role_mapping`
--
ALTER TABLE `user_role_mapping`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD UNIQUE KEY `vendor_name` (`vendor_name`),
  ADD KEY `contact_head` (`contact_head`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zone_subzone_mapping`
--
ALTER TABLE `zone_subzone_mapping`
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `sub_zone_id` (`sub_zone_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `gail`
--
ALTER TABLE `gail`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_zones`
--
ALTER TABLE `sub_zones`
  MODIFY `sub_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `gail`
--
ALTER TABLE `gail`
  ADD CONSTRAINT `gail_ibfk_1` FOREIGN KEY (`contact_head`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `gail_ibfk_2` FOREIGN KEY (`head`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `gail_ibfk_3` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `gail_ibfk_4` FOREIGN KEY (`sub_zone_id`) REFERENCES `sub_zones` (`sub_zone_id`);

--
-- Constraints for table `middleman`
--
ALTER TABLE `middleman`
  ADD CONSTRAINT `middleman_ibfk_1` FOREIGN KEY (`invited_by`) REFERENCES `users` (`uid`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_role_mapping`
--
ALTER TABLE `user_role_mapping`
  ADD CONSTRAINT `user_role_mapping_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `user_role_mapping_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`contact_head`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `vendor_ibfk_2` FOREIGN KEY (`verified_by`) REFERENCES `users` (`uid`);

--
-- Constraints for table `zone_subzone_mapping`
--
ALTER TABLE `zone_subzone_mapping`
  ADD CONSTRAINT `zone_subzone_mapping_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `zone_subzone_mapping_ibfk_2` FOREIGN KEY (`sub_zone_id`) REFERENCES `sub_zones` (`sub_zone_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
