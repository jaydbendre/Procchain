-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 05:47 PM
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
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, '6287 Lorem St.'),
(2, '981-3844 Luctus Rd.'),
(3, '9018 Sociis Road'),
(4, '9133 Tortor. Avenue'),
(5, '8236 Pellentesque Street'),
(6, '5910 Est Road'),
(7, '683-8243 Vulputate Street'),
(8, 'Ap #105-9086 Vulputate, Avenue'),
(9, '9129 Natoque St.'),
(10, '9300 Sit Avenue'),
(11, 'P.O. Box 860, 7442 Aliquet Rd.'),
(12, 'Ap #365-2918 Vel Road'),
(13, 'Ap #466-684 Vulputate St.'),
(14, '7258 Fusce St.'),
(15, '6635 Enim, St.'),
(16, 'P.O. Box 242, 4245 Feugiat. Avenue'),
(17, 'P.O. Box 853, 5257 Vitae, Ave'),
(18, 'P.O. Box 964, 6450 Justo Road'),
(19, '3616 Cursus St.'),
(20, 'P.O. Box 396, 7731 Pharetra. Road'),
(21, '3328 Lacus Rd.'),
(22, '7631 Lacus. Av.'),
(23, '155 Eu Rd.'),
(24, 'Ap #111-4846 A, Avenue'),
(25, 'P.O. Box 182, 5024 Lectus. St.'),
(26, '6925 Ut Avenue'),
(27, 'Ap #562-7859 Nascetur Ave'),
(28, '947-7218 Euismod St.'),
(29, '325-6026 Adipiscing Street'),
(30, 'P.O. Box 160, 209 Tellus Avenue'),
(31, '4075 Dolor Road'),
(32, '6840 Egestas Rd.'),
(33, 'P.O. Box 334, 5853 Felis Avenue'),
(34, '6642 Dui. Ave'),
(35, '8365 Scelerisque, Av.'),
(36, 'P.O. Box 639, 5447 Rutrum Avenue'),
(37, '848-1675 Ut Rd.'),
(38, '6416 Nec, St.'),
(39, '1040 Sed St.'),
(40, '804-1595 Aliquet Street'),
(41, '933-5895 Ligula. St.'),
(42, '1448 Dapibus Rd.'),
(43, 'Ap #538-5448 Pellentesque St.'),
(44, '267-7229 Ut Ave'),
(45, 'P.O. Box 675, 1696 Dolor St.'),
(46, '565-5788 Nunc St.'),
(47, '431-5291 Luctus, Rd.'),
(48, '582-9543 Vestibulum Street'),
(49, '621-8809 Nec St.'),
(50, 'Ap #899-1480 Risus. Ave'),
(51, 'P.O. Box 982, 2849 Per Av.'),
(52, '5380 Nunc. St.'),
(53, 'Ap #443-8162 Proin Rd.'),
(54, 'P.O. Box 238, 523 Ac Rd.'),
(55, '9440 Fringilla Street'),
(56, 'P.O. Box 257, 8287 Vel, St.'),
(57, 'P.O. Box 711, 7124 Nulla St.'),
(58, '7105 Cum St.'),
(59, 'Ap #987-2572 Orci Av.'),
(60, '569-9720 Est. Street'),
(61, '837-7914 Diam. Ave'),
(62, 'Ap #366-1806 Lacinia Ave'),
(63, '6179 Torquent St.'),
(64, 'P.O. Box 120, 7647 Tincidunt Av.'),
(65, '8778 Nisi. St.'),
(66, '304-5559 Amet Ave'),
(67, 'P.O. Box 961, 8045 Ad Rd.'),
(68, '446-9973 Enim. St.'),
(69, 'Ap #647-5156 Vivamus Ave'),
(70, '684-6704 Nunc Road'),
(71, 'P.O. Box 660, 2680 Sit Road'),
(72, '2351 Aliquet St.'),
(73, '286-3541 Fusce Road'),
(74, 'Ap #167-7801 Iaculis Avenue'),
(75, '4913 Orci Rd.'),
(76, 'Ap #723-9586 Etiam Rd.'),
(77, 'Ap #869-7021 Libero. St.'),
(78, '642-6135 Aliquet St.'),
(79, '263-5138 Ridiculus Avenue'),
(80, '5562 Fringilla Road'),
(81, '804-4941 Morbi St.'),
(82, 'P.O. Box 738, 7811 Elit, Ave'),
(83, '904-6050 A Rd.'),
(84, 'P.O. Box 761, 4613 Molestie Rd.'),
(85, 'P.O. Box 314, 2226 Quam Street'),
(86, 'Ap #329-490 Eu, Avenue'),
(87, '626-1255 A, Av.'),
(88, 'P.O. Box 189, 9066 Nam Street'),
(89, 'Ap #315-2689 Cras St.'),
(90, '671-2688 Ligula. St.'),
(91, '3835 Non, Avenue'),
(92, '124-5669 Sollicitudin Ave'),
(93, 'Ap #863-6740 Lectus Rd.'),
(94, '642-7909 Cursus. Street'),
(95, '4972 Justo Rd.'),
(96, '578-2511 Phasellus Ave'),
(97, 'P.O. Box 505, 9966 Enim. Ave'),
(98, 'P.O. Box 684, 6692 Eros Rd.'),
(99, '3709 In Avenue'),
(100, '1831 In Ave');

-- --------------------------------------------------------

--
-- Table structure for table `middleman`
--

CREATE TABLE `middleman` (
  `middle_id` int(11) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `middle_company` varchar(100) NOT NULL,
  `auth_type` int(1) NOT NULL COMMENT '0- phone 1- email',
  `type` varchar(100) NOT NULL,
  `source_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `verified_by` int(11) NOT NULL,
  `verified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `middleman`
--

INSERT INTO `middleman` (`middle_id`, `middle_name`, `middle_company`, `auth_type`, `type`, `source_id`, `destination_id`, `verified_by`, `verified_at`) VALUES
(1, 'Middle1', 'UPS', 0, '2', 46, 54, 23, '0000-00-00 00:00:00'),
(2, 'Middle2', 'UPS', 1, '4', 66, 85, 7, '0000-00-00 00:00:00'),
(3, 'Middle3', 'FEDEX', 0, '4', 42, 66, 9, '0000-00-00 00:00:00'),
(4, 'Middle4', 'UPS', 1, '2', 22, 79, 25, '0000-00-00 00:00:00'),
(5, 'Middle5', 'UPS', 0, '3', 94, 67, 21, '0000-00-00 00:00:00'),
(6, 'Middle6', 'FEDEX', 1, '2', 90, 89, 5, '0000-00-00 00:00:00'),
(7, 'Middle7', 'FEDEX', 1, '5', 75, 95, 10, '0000-00-00 00:00:00'),
(8, 'Middle8', 'FEDEX', 0, '2', 15, 46, 10, '0000-00-00 00:00:00'),
(9, 'Middle9', 'FEDEX', 1, '5', 6, 90, 26, '0000-00-00 00:00:00'),
(10, 'Middle10', 'UPS', 0, '5', 22, 57, 28, '0000-00-00 00:00:00'),
(11, 'Middle11', 'UPS', 0, '5', 75, 32, 16, '0000-00-00 00:00:00'),
(12, 'Middle12', 'UPS', 0, '2', 53, 52, 24, '0000-00-00 00:00:00'),
(13, 'Middle13', 'FEDEX', 1, '5', 71, 94, 22, '0000-00-00 00:00:00'),
(14, 'Middle14', 'UPS', 0, '5', 82, 95, 26, '0000-00-00 00:00:00'),
(15, 'Middle15', 'FEDEX', 1, '1', 52, 14, 12, '0000-00-00 00:00:00'),
(16, 'Middle16', 'UPS', 1, '3', 44, 18, 30, '0000-00-00 00:00:00'),
(17, 'Middle17', 'FEDEX', 0, '4', 53, 63, 13, '0000-00-00 00:00:00'),
(18, 'Middle18', 'UPS', 0, '2', 42, 8, 17, '0000-00-00 00:00:00'),
(19, 'Middle19', 'UPS', 1, '1', 3, 19, 15, '0000-00-00 00:00:00'),
(20, 'Middle20', 'UPS', 0, '2', 36, 42, 27, '0000-00-00 00:00:00'),
(21, 'Middle21', 'UPS', 0, '2', 85, 48, 29, '0000-00-00 00:00:00'),
(22, 'Middle22', 'UPS', 1, '4', 15, 85, 8, '0000-00-00 00:00:00'),
(23, 'Middle23', 'UPS', 1, '3', 25, 11, 11, '0000-00-00 00:00:00'),
(24, 'Middle24', 'FEDEX', 1, '5', 33, 9, 9, '0000-00-00 00:00:00'),
(25, 'Middle25', 'FEDEX', 0, '2', 20, 70, 22, '0000-00-00 00:00:00'),
(26, 'Middle26', 'UPS', 1, '2', 74, 17, 1, '0000-00-00 00:00:00'),
(27, 'Middle27', 'UPS', 1, '4', 83, 57, 6, '0000-00-00 00:00:00'),
(28, 'Middle28', 'FEDEX', 1, '1', 91, 83, 5, '0000-00-00 00:00:00'),
(29, 'Middle29', 'UPS', 1, '3', 56, 48, 13, '0000-00-00 00:00:00'),
(30, 'Middle30', 'UPS', 1, '3', 1, 57, 3, '0000-00-00 00:00:00'),
(31, 'Middle31', 'UPS', 0, '5', 33, 24, 2, '0000-00-00 00:00:00'),
(32, 'Middle32', 'FEDEX', 0, '4', 33, 55, 5, '0000-00-00 00:00:00'),
(33, 'Middle33', 'FEDEX', 1, '2', 64, 30, 30, '0000-00-00 00:00:00'),
(34, 'Middle34', 'FEDEX', 0, '2', 41, 6, 4, '0000-00-00 00:00:00'),
(35, 'Middle35', 'UPS', 0, '3', 31, 76, 6, '0000-00-00 00:00:00'),
(36, 'Middle36', 'FEDEX', 1, '4', 39, 39, 27, '0000-00-00 00:00:00'),
(37, 'Middle37', 'UPS', 0, '3', 25, 83, 8, '0000-00-00 00:00:00'),
(38, 'Middle38', 'FEDEX', 0, '5', 96, 6, 28, '0000-00-00 00:00:00'),
(39, 'Middle39', 'FEDEX', 1, '5', 38, 99, 17, '0000-00-00 00:00:00'),
(40, 'Middle40', 'FEDEX', 0, '3', 83, 100, 27, '0000-00-00 00:00:00'),
(41, 'Middle41', 'UPS', 1, '1', 44, 83, 1, '0000-00-00 00:00:00'),
(42, 'Middle42', 'UPS', 0, '5', 95, 73, 24, '0000-00-00 00:00:00'),
(43, 'Middle43', 'UPS', 0, '3', 2, 63, 3, '0000-00-00 00:00:00'),
(44, 'Middle44', 'FEDEX', 1, '4', 41, 4, 25, '0000-00-00 00:00:00'),
(45, 'Middle45', 'FEDEX', 0, '4', 47, 43, 3, '0000-00-00 00:00:00'),
(46, 'Middle46', 'UPS', 0, '1', 69, 16, 7, '0000-00-00 00:00:00'),
(47, 'Middle47', 'FEDEX', 0, '4', 70, 30, 8, '0000-00-00 00:00:00'),
(48, 'Middle48', 'FEDEX', 0, '5', 79, 56, 15, '0000-00-00 00:00:00'),
(49, 'Middle49', 'FEDEX', 0, '4', 14, 52, 12, '0000-00-00 00:00:00'),
(50, 'Middle50', 'UPS', 0, '5', 75, 58, 12, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `org_id` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `details` text DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `sub_zone_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `eth_addr` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`org_id`, `head`, `details`, `zone_id`, `sub_zone_id`, `location_id`, `eth_addr`) VALUES
(1, 29, '', 91, 49, 97, 53012),
(2, 29, '', 34, 18, 52, 33151),
(3, 21, '', 15, 78, 96, 21143),
(4, 20, '', 98, 94, 66, 32997),
(5, 3, '', 19, 37, 46, 77665),
(6, 10, '', 12, 72, 99, 96803),
(7, 13, '', 96, 34, 49, 71681),
(8, 1, '', 76, 58, 90, 71744),
(9, 21, '', 16, 36, 30, 44658),
(10, 7, '', 62, 49, 46, 38898),
(11, 12, '', 29, 45, 15, 76781),
(12, 30, '', 86, 29, 9, 25461),
(13, 9, '', 100, 43, 71, 32288),
(14, 2, '', 27, 12, 34, 89434),
(15, 9, '', 89, 61, 26, 71577),
(16, 18, '', 99, 51, 86, 34187),
(17, 26, '', 97, 75, 25, 56477),
(18, 20, '', 88, 28, 61, 63319),
(19, 3, '', 49, 48, 4, 25507),
(20, 4, '', 28, 64, 88, 70114),
(21, 28, '', 72, 85, 99, 41398),
(22, 14, '', 18, 39, 27, 12229),
(23, 3, '', 79, 42, 93, 47807),
(24, 25, '', 42, 12, 87, 15310),
(25, 13, '', 52, 57, 3, 59051),
(26, 11, '', 7, 40, 1, 60800),
(27, 25, '', 92, 26, 28, 44762),
(28, 4, '', 41, 72, 89, 39260),
(29, 29, '', 63, 48, 11, 54214),
(30, 7, '', 69, 67, 99, 39357),
(31, 28, '', 25, 59, 93, 54685),
(32, 19, '', 70, 83, 40, 64431),
(33, 25, '', 74, 84, 66, 37425),
(34, 9, '', 35, 76, 79, 91939),
(35, 25, '', 27, 90, 10, 19026),
(36, 6, '', 16, 7, 15, 69886),
(37, 29, '', 91, 8, 78, 80660),
(38, 22, '', 15, 73, 2, 63360),
(39, 6, '', 100, 2, 70, 17054),
(40, 2, '', 46, 59, 36, 68258),
(41, 12, '', 66, 63, 61, 81670),
(42, 24, '', 68, 16, 53, 98657),
(43, 29, '', 96, 56, 84, 32577),
(44, 3, '', 89, 12, 56, 53849),
(45, 23, '', 63, 46, 80, 45677),
(46, 17, '', 98, 89, 47, 64523),
(47, 30, '', 13, 8, 4, 73644),
(48, 18, '', 7, 10, 61, 82144),
(49, 24, '', 61, 60, 42, 91264),
(50, 7, '', 76, 16, 92, 56099),
(51, 11, '', 67, 35, 75, 47236),
(52, 11, '', 99, 78, 96, 33711),
(53, 2, '', 84, 47, 1, 28577),
(54, 30, '', 67, 61, 36, 95480),
(55, 30, '', 27, 55, 34, 94576),
(56, 2, '', 85, 91, 50, 60979),
(57, 17, '', 33, 31, 21, 73122),
(58, 28, '', 24, 32, 49, 72006),
(59, 8, '', 64, 41, 95, 23644),
(60, 29, '', 21, 40, 78, 16692),
(61, 6, '', 96, 16, 95, 28136),
(62, 21, '', 83, 80, 34, 64818),
(63, 5, '', 75, 46, 69, 51476),
(64, 22, '', 47, 98, 89, 46886),
(65, 18, '', 4, 77, 37, 40718),
(66, 2, '', 40, 81, 3, 46176),
(67, 13, '', 28, 73, 35, 93675),
(68, 19, '', 88, 3, 67, 81834),
(69, 15, '', 99, 33, 93, 76604),
(70, 3, '', 43, 100, 27, 97165),
(71, 8, '', 48, 62, 7, 62335),
(72, 26, '', 58, 12, 97, 23934),
(73, 1, '', 26, 92, 75, 21443),
(74, 2, '', 97, 29, 16, 25320),
(75, 14, '', 6, 20, 74, 99340),
(76, 27, '', 14, 71, 74, 38365),
(77, 8, '', 68, 15, 79, 16531),
(78, 19, '', 88, 45, 40, 37066),
(79, 25, '', 71, 58, 5, 78067),
(80, 30, '', 66, 13, 46, 84405),
(81, 15, '', 62, 16, 17, 92532),
(82, 18, '', 66, 87, 23, 47060),
(83, 6, '', 32, 23, 37, 10603),
(84, 11, '', 26, 11, 27, 29501),
(85, 14, '', 53, 2, 32, 76080),
(86, 17, '', 71, 80, 7, 38600),
(87, 24, '', 95, 14, 33, 91740),
(88, 23, '', 71, 19, 99, 11403),
(89, 5, '', 21, 74, 47, 28750),
(90, 12, '', 72, 35, 69, 15586),
(91, 16, '', 67, 92, 85, 29311),
(92, 23, '', 20, 62, 90, 58835),
(93, 30, '', 27, 7, 41, 14631),
(94, 2, '', 37, 19, 39, 71525),
(95, 26, '', 81, 84, 45, 92319),
(96, 11, '', 55, 10, 22, 16705),
(97, 18, '', 55, 56, 16, 99326),
(98, 10, '', 27, 78, 4, 71214),
(99, 21, '', 10, 66, 89, 23178),
(100, 9, '', 3, 44, 74, 23759);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_name`) VALUES
(1, 'Accounting'),
(2, 'Payroll'),
(3, 'Legal Department'),
(4, 'Asset Management'),
(5, 'Human Resources'),
(6, 'Advertising'),
(7, 'Advertising'),
(8, 'Customer Relations'),
(9, 'Legal Department'),
(10, 'Payroll'),
(11, 'Human Resources'),
(12, 'Customer Relations'),
(13, 'Customer Service'),
(14, 'Media Relations'),
(15, 'Customer Service'),
(16, 'Quality Assurance'),
(17, 'Legal Department'),
(18, 'Research and Development'),
(19, 'Asset Management'),
(20, 'Quality Assurance'),
(21, 'Finances'),
(22, 'Accounting'),
(23, 'Finances'),
(24, 'Quality Assurance'),
(25, 'Accounting'),
(26, 'Customer Relations'),
(27, 'Advertising'),
(28, 'Asset Management'),
(29, 'Finances'),
(30, 'Asset Management'),
(31, 'Advertising'),
(32, 'Quality Assurance'),
(33, 'Accounting'),
(34, 'Customer Relations'),
(35, 'Advertising'),
(36, 'Payroll'),
(37, 'Finances'),
(38, 'Research and Development'),
(39, 'Payroll'),
(40, 'Public Relations'),
(41, 'Accounting'),
(42, 'Legal Department'),
(43, 'Quality Assurance'),
(44, 'Accounting'),
(45, 'Human Resources'),
(46, 'Finances'),
(47, 'Media Relations'),
(48, 'Sales and Marketing'),
(49, 'Payroll'),
(50, 'Human Resources'),
(51, 'Sales and Marketing'),
(52, 'Sales and Marketing'),
(53, 'Public Relations'),
(54, 'Customer Relations'),
(55, 'Customer Relations'),
(56, 'Asset Management'),
(57, 'Research and Development'),
(58, 'Media Relations'),
(59, 'Legal Department'),
(60, 'Finances'),
(61, 'Quality Assurance'),
(62, 'Sales and Marketing'),
(63, 'Human Resources'),
(64, 'Accounting'),
(65, 'Customer Service'),
(66, 'Customer Service'),
(67, 'Advertising'),
(68, 'Accounting'),
(69, 'Sales and Marketing'),
(70, 'Quality Assurance'),
(71, 'Accounting'),
(72, 'Customer Relations'),
(73, 'Public Relations'),
(74, 'Media Relations'),
(75, 'Quality Assurance'),
(76, 'Advertising'),
(77, 'Accounting'),
(78, 'Customer Service'),
(79, 'Advertising'),
(80, 'Tech Support'),
(81, 'Quality Assurance'),
(82, 'Media Relations'),
(83, 'Finances'),
(84, 'Customer Service'),
(85, 'Advertising'),
(86, 'Public Relations'),
(87, 'Accounting'),
(88, 'Finances'),
(89, 'Tech Support'),
(90, 'Customer Service'),
(91, 'Customer Relations'),
(92, 'Accounting'),
(93, 'Public Relations'),
(94, 'Research and Development'),
(95, 'Legal Department'),
(96, 'Customer Relations'),
(97, 'Human Resources'),
(98, 'Tech Support'),
(99, 'Human Resources'),
(100, 'Public Relations');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `use_case` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `use_case`) VALUES
(0, 'super admin'),
(1, 'admin  (on boarding of organisation and its employees)'),
(2, 'CRUD tenders'),
(3, 'View Bids'),
(4, 'Accept / Reject Bids'),
(5, 'centre head'),
(6, 'sub-zonal head'),
(7, 'zonal head'),
(8, 'HQ head'),
(9, 'make payments'),
(10, 'generate Payorder'),
(11, 'view Invoice'),
(100, 'CRUD bids'),
(101, 'View Approved or Rejected Bid'),
(102, 'Take Back bids'),
(103, 'CRUD middleman details'),
(104, 'Accept payments'),
(105, 'Generate invoice'),
(106, 'Track the Package'),
(200, 'View order details'),
(201, 'Update Status of package'),
(202, 'View History');

-- --------------------------------------------------------

--
-- Table structure for table `sub_zone`
--

CREATE TABLE `sub_zone` (
  `sub_zone_id` int(11) NOT NULL,
  `sub_zone_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_zone`
--

INSERT INTO `sub_zone` (`sub_zone_id`, `sub_zone_name`) VALUES
(1, 'Heidenheim'),
(2, 'Charny'),
(3, 'LaSalle'),
(4, 'Olsztyn'),
(5, 'Göksun'),
(6, 'Burnaby'),
(7, 'Dessel'),
(8, 'Cicagna'),
(9, 'Osorno'),
(10, 'Groenlo'),
(11, 'Tracadie-Shelia'),
(12, 'Lahore'),
(13, 'Opprebais'),
(14, 'Goulburn'),
(15, 'Meißen'),
(16, 'Milwaukee'),
(17, 'Cicagna'),
(18, 'Lerwick'),
(19, 'Crystal Springs'),
(20, 'Pavone del Mella'),
(21, 'Orp-Jauche'),
(22, 'Missoula'),
(23, 'Santa Cruz de Lorica'),
(24, 'Hanam'),
(25, 'Appleby'),
(26, 'Mesa'),
(27, 'Nimy'),
(28, 'Kacchi'),
(29, 'Khotkovo'),
(30, 'Camporotondo di Fiastrone'),
(31, 'Dehradun'),
(32, 'Mellet'),
(33, 'Gorzów Wielkopolski'),
(34, 'Birkenhead'),
(35, 'Redcliffe'),
(36, 'Sunshine Coast Regional District'),
(37, 'Uiwang'),
(38, 'Joncret'),
(39, 'Caucaia'),
(40, 'Saint-Remy'),
(41, 'Wolkrange'),
(42, 'Kallo'),
(43, 'Lusevera'),
(44, 'Sant\'Arsenio'),
(45, 'Naro-Fominsk'),
(46, 'Ararat'),
(47, 'Coalhurst'),
(48, 'Lochgilphead'),
(49, 'Barkhan'),
(50, 'Hollange'),
(51, 'Hondelange'),
(52, 'Remagne'),
(53, 'Avennes'),
(54, 'Emines'),
(55, 'Chestermere'),
(56, 'Melsele'),
(57, 'Rosciano'),
(58, 'Camerino'),
(59, 'Saint-Eugne-de-Guigues'),
(60, 'Nottingham'),
(61, 'Emden'),
(62, 'Valverde'),
(63, 'El Carmen'),
(64, 'Lakewood'),
(65, 'Caccamo'),
(66, 'Belmont'),
(67, 'Pelarco'),
(68, 'Calbuco'),
(69, 'Sart-Dames-Avelines'),
(70, 'Dhule'),
(71, 'Lieferinge'),
(72, 'Darlington'),
(73, 'Paço do Lumiar'),
(74, 'Jalandhar (Jullundur)'),
(75, 'Lerum'),
(76, 'Limoges'),
(77, 'Ramagundam'),
(78, 'Chandigarh'),
(79, 'Torrevecchia Teatina'),
(80, 'Avadi'),
(81, 'Perth'),
(82, 'Parndorf'),
(83, 'Toledo'),
(84, 'Broken Hill'),
(85, 'Geoje'),
(86, 'Morro Reatino'),
(87, 'Isla de Maipo'),
(88, 'Oostmalle'),
(89, 'Somma Lombardo'),
(90, 'Naro-Fominsk'),
(91, 'Fumal'),
(92, 'Baardegem'),
(93, 'Cheltenham'),
(94, 'Santa Inês'),
(95, 'Millesimo'),
(96, 'Maple Ridge'),
(97, 'Piura'),
(98, 'Certaldo'),
(99, 'Vaux-lez-Rosieres'),
(100, 'Merzig');

-- --------------------------------------------------------

--
-- Table structure for table `tender`
--

CREATE TABLE `tender` (
  `tender_id` int(11) NOT NULL,
  `file_path` text DEFAULT NULL COMMENT '{ 	"bids" : [], 	"tender" : [], 	"by" : [] }  Mapped by index in the list',
  `file_hash` text DEFAULT NULL COMMENT '{ 	"bids" : [], 	"tender" : [], 	"by" : [] }  Mapped by index in the list',
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` int(11) NOT NULL,
  `approved_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tender`
--

INSERT INTO `tender` (`tender_id`, `file_path`, `file_hash`, `uploaded_at`, `uploaded_by`, `approved_at`, `approved_by`) VALUES
(10000, '', '', '0000-00-00 00:00:00', 23, '0000-00-00 00:00:00', 13),
(10001, '', '', '0000-00-00 00:00:00', 28, '0000-00-00 00:00:00', 3),
(10002, '', '', '0000-00-00 00:00:00', 20, '0000-00-00 00:00:00', 7),
(10003, '', '', '0000-00-00 00:00:00', 21, '0000-00-00 00:00:00', 3),
(10004, '', '', '0000-00-00 00:00:00', 13, '0000-00-00 00:00:00', 11),
(10005, '', '', '0000-00-00 00:00:00', 11, '0000-00-00 00:00:00', 4),
(10006, '', '', '0000-00-00 00:00:00', 18, '0000-00-00 00:00:00', 17),
(10007, '', '', '0000-00-00 00:00:00', 30, '0000-00-00 00:00:00', 14),
(10008, '', '', '0000-00-00 00:00:00', 30, '0000-00-00 00:00:00', 10),
(10009, '', '', '0000-00-00 00:00:00', 29, '0000-00-00 00:00:00', 10),
(10010, '', '', '0000-00-00 00:00:00', 28, '0000-00-00 00:00:00', 18),
(10011, '', '', '0000-00-00 00:00:00', 10, '0000-00-00 00:00:00', 28),
(10012, '', '', '0000-00-00 00:00:00', 21, '0000-00-00 00:00:00', 1),
(10013, '', '', '0000-00-00 00:00:00', 19, '0000-00-00 00:00:00', 12),
(10014, '', '', '0000-00-00 00:00:00', 9, '0000-00-00 00:00:00', 6),
(10015, '', '', '0000-00-00 00:00:00', 16, '0000-00-00 00:00:00', 23),
(10016, '', '', '0000-00-00 00:00:00', 18, '0000-00-00 00:00:00', 15),
(10017, '', '', '0000-00-00 00:00:00', 8, '0000-00-00 00:00:00', 9),
(10018, '', '', '0000-00-00 00:00:00', 21, '0000-00-00 00:00:00', 12),
(10019, '', '', '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 19),
(10020, '', '', '0000-00-00 00:00:00', 5, '0000-00-00 00:00:00', 12),
(10021, '', '', '0000-00-00 00:00:00', 28, '0000-00-00 00:00:00', 20),
(10022, '', '', '0000-00-00 00:00:00', 30, '0000-00-00 00:00:00', 24),
(10023, '', '', '0000-00-00 00:00:00', 21, '0000-00-00 00:00:00', 20),
(10024, '', '', '0000-00-00 00:00:00', 30, '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE `transaction_log` (
  `contract_address` bigint(20) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `payment_sent_by` int(11) NOT NULL,
  `payment_sent_at` timestamp NULL DEFAULT NULL,
  `payment_recieved_by` int(11) NOT NULL,
  `payment_recieved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `email` varchar(1000) NOT NULL,
  `password` text NOT NULL,
  `active_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `details`, `email`, `password`, `active_status`) VALUES
(1, 'Bert', 'Horne', '', 'BertHorne@gmail.com', 'pass1', 1),
(2, 'Sawyer', 'Pittman', '', 'SawyerPittman@gmail.com', 'pass2', 1),
(3, 'Lilah', 'Reese', '', 'LilahReese@gmail.com', 'pass3', 1),
(4, 'Colby', 'Santiago', '', 'ColbySantiago@gmail.com', 'pass4', 1),
(5, 'Nehru', 'Bray', '', 'NehruBray@gmail.com', 'pass5', 1),
(6, 'Andrew', 'Tyler', '', 'AndrewTyler@gmail.com', 'pass6', 1),
(7, 'Julie', 'Luna', '', 'JulieLuna@gmail.com', 'pass7', 1),
(8, 'Richard', 'Riggs', '', 'RichardRiggs@gmail.com', 'pass8', 1),
(9, 'Iliana', 'Fisher', '', 'IlianaFisher@gmail.com', 'pass9', 1),
(10, 'Gail', 'Hartman', '', 'GailHartman@gmail.com', 'pass10', 1),
(11, 'Craig', 'Newton', '', 'CraigNewton@gmail.com', 'pass11', 1),
(12, 'Elizabeth', 'Long', '', 'ElizabethLong@gmail.com', 'pass12', 1),
(13, 'Lilah', 'Chan', '', 'LilahChan@gmail.com', 'pass13', 1),
(14, 'Jerry', 'Mcfadden', '', 'JerryMcfadden@gmail.com', 'pass14', 1),
(15, 'Cyrus', 'Odom', '', 'CyrusOdom@gmail.com', 'pass15', 1),
(16, 'Sierra', 'Petty', '', 'SierraPetty@gmail.com', 'pass16', 1),
(17, 'Colby', 'Wilcox', '', 'ColbyWilcox@gmail.com', 'pass17', 1),
(18, 'Sharon', 'Reynolds', '', 'SharonReynolds@gmail.com', 'pass18', 1),
(19, 'Ciaran', 'Frazier', '', 'CiaranFrazier@gmail.com', 'pass19', 1),
(20, 'Amaya', 'Jarvis', '', 'AmayaJarvis@gmail.com', 'pass20', 1),
(21, 'Camden', 'Conrad', '', 'CamdenConrad@gmail.com', 'pass21', 1),
(22, 'Eugenia', 'Peters', '', 'EugeniaPeters@gmail.com', 'pass22', 1),
(23, 'Fredericka', 'Beach', '', 'FrederickaBeach@gmail.com', 'pass23', 1),
(24, 'Kuame', 'Reeves', '', 'KuameReeves@gmail.com', 'pass24', 1),
(25, 'Colton', 'Lang', '', 'ColtonLang@gmail.com', 'pass25', 1),
(26, 'Iola', 'Dominguez', '', 'IolaDominguez@gmail.com', 'pass26', 1),
(27, 'Daniel', 'Irwin', '', 'DanielIrwin@gmail.com', 'pass27', 1),
(28, 'Randall', 'Lopez', '', 'RandallLopez@gmail.com', 'pass28', 1),
(29, 'Jordan', 'Santos', '', 'JordanSantos@gmail.com', 'pass29', 1),
(30, 'Oprah', 'Mccoy', '', 'OprahMccoy@gmail.com', 'pass30', 1),
(31, 'Magee', 'Humphrey', '', 'MageeHumphrey@gmail.com', 'pass31', 1),
(32, 'Louis', 'Heath', '', 'LouisHeath@gmail.com', 'pass32', 1),
(33, 'Burke', 'Guthrie', '', 'BurkeGuthrie@gmail.com', 'pass33', 1),
(34, 'Melvin', 'Johnston', '', 'MelvinJohnston@gmail.com', 'pass34', 1),
(35, 'Lucius', 'Perry', '', 'LuciusPerry@gmail.com', 'pass35', 1),
(36, 'Penelope', 'Dickerson', '', 'PenelopeDickerson@gmail.com', 'pass36', 1),
(37, 'Adrian', 'Frye', '', 'AdrianFrye@gmail.com', 'pass37', 1),
(38, 'Leah', 'Foster', '', 'LeahFoster@gmail.com', 'pass38', 1),
(39, 'Vance', 'Merritt', '', 'VanceMerritt@gmail.com', 'pass39', 1),
(40, 'Athena', 'Lara', '', 'AthenaLara@gmail.com', 'pass40', 1),
(41, 'Yardley', 'Mccullough', '', 'YardleyMccullough@gmail.com', 'pass41', 1),
(42, 'Gray', 'Hutchinson', '', 'GrayHutchinson@gmail.com', 'pass42', 1),
(43, 'Jesse', 'Bates', '', 'JesseBates@gmail.com', 'pass43', 1),
(44, 'Ariel', 'Castillo', '', 'ArielCastillo@gmail.com', 'pass44', 1),
(45, 'Nayda', 'Whitaker', '', 'NaydaWhitaker@gmail.com', 'pass45', 1),
(46, 'Basia', 'Ryan', '', 'BasiaRyan@gmail.com', 'pass46', 1),
(47, 'Phyllis', 'Gamble', '', 'PhyllisGamble@gmail.com', 'pass47', 1),
(48, 'Patrick', 'Wells', '', 'PatrickWells@gmail.com', 'pass48', 1),
(49, 'Hoyt', 'Garza', '', 'HoytGarza@gmail.com', 'pass49', 1),
(50, 'Cullen', 'Burke', '', 'CullenBurke@gmail.com', 'pass50', 1),
(51, 'Slade', 'English', '', 'SladeEnglish@gmail.com', 'pass51', 1),
(52, 'Alisa', 'Hensley', '', 'AlisaHensley@gmail.com', 'pass52', 1),
(53, 'Caldwell', 'Watts', '', 'CaldwellWatts@gmail.com', 'pass53', 1),
(54, 'Brian', 'Lane', '', 'BrianLane@gmail.com', 'pass54', 1),
(55, 'Blossom', 'Bailey', '', 'BlossomBailey@gmail.com', 'pass55', 1),
(56, 'Olivia', 'Reid', '', 'OliviaReid@gmail.com', 'pass56', 1),
(57, 'Ishmael', 'Cameron', '', 'IshmaelCameron@gmail.com', 'pass57', 1),
(58, 'Jana', 'Leach', '', 'JanaLeach@gmail.com', 'pass58', 1),
(59, 'Jayme', 'Hoffman', '', 'JaymeHoffman@gmail.com', 'pass59', 1),
(60, 'Cora', 'Lawson', '', 'CoraLawson@gmail.com', 'pass60', 1),
(61, 'Richard', 'Britt', '', 'RichardBritt@gmail.com', 'pass61', 1),
(62, 'Caryn', 'Patrick', '', 'CarynPatrick@gmail.com', 'pass62', 1),
(63, 'Steven', 'Dunn', '', 'StevenDunn@gmail.com', 'pass63', 1),
(64, 'Naomi', 'Slater', '', 'NaomiSlater@gmail.com', 'pass64', 1),
(65, 'Ray', 'Gaines', '', 'RayGaines@gmail.com', 'pass65', 1),
(66, 'Griffin', 'Hinton', '', 'GriffinHinton@gmail.com', 'pass66', 1),
(67, 'Dorothy', 'Fernandez', '', 'DorothyFernandez@gmail.com', 'pass67', 1),
(68, 'Adara', 'Davenport', '', 'AdaraDavenport@gmail.com', 'pass68', 1),
(69, 'Zachery', 'Griffin', '', 'ZacheryGriffin@gmail.com', 'pass69', 1),
(70, 'Violet', 'Hicks', '', 'VioletHicks@gmail.com', 'pass70', 1),
(71, 'Ariel', 'Chavez', '', 'ArielChavez@gmail.com', 'pass71', 1),
(72, 'Berk', 'Golden', '', 'BerkGolden@gmail.com', 'pass72', 1),
(73, 'Jorden', 'Mclaughlin', '', 'JordenMclaughlin@gmail.com', 'pass73', 1),
(74, 'Tate', 'Harding', '', 'TateHarding@gmail.com', 'pass74', 1),
(75, 'Caesar', 'Rivers', '', 'CaesarRivers@gmail.com', 'pass75', 1),
(76, 'Berk', 'Jacobs', '', 'BerkJacobs@gmail.com', 'pass76', 1),
(77, 'Colton', 'Everett', '', 'ColtonEverett@gmail.com', 'pass77', 1),
(78, 'Hyacinth', 'Bryant', '', 'HyacinthBryant@gmail.com', 'pass78', 1),
(79, 'Leilani', 'Cooke', '', 'LeilaniCooke@gmail.com', 'pass79', 1),
(80, 'Hop', 'Hutchinson', '', 'HopHutchinson@gmail.com', 'pass80', 1),
(81, 'Magee', 'Walter', '', 'MageeWalter@gmail.com', 'pass81', 1),
(82, 'Yuri', 'Alston', '', 'YuriAlston@gmail.com', 'pass82', 1),
(83, 'Brielle', 'Dickson', '', 'BrielleDickson@gmail.com', 'pass83', 1),
(84, 'Zelenia', 'Espinoza', '', 'ZeleniaEspinoza@gmail.com', 'pass84', 1),
(85, 'Hadley', 'Cochran', '', 'HadleyCochran@gmail.com', 'pass85', 1),
(86, 'James', 'Sparks', '', 'JamesSparks@gmail.com', 'pass86', 1),
(87, 'Kevyn', 'Holloway', '', 'KevynHolloway@gmail.com', 'pass87', 1),
(88, 'Zahir', 'Page', '', 'ZahirPage@gmail.com', 'pass88', 1),
(89, 'Adara', 'Fulton', '', 'AdaraFulton@gmail.com', 'pass89', 1),
(90, 'Kyle', 'Cook', '', 'KyleCook@gmail.com', 'pass90', 1),
(91, 'Zeph', 'Blankenship', '', 'ZephBlankenship@gmail.com', 'pass91', 1),
(92, 'Breanna', 'Mercado', '', 'BreannaMercado@gmail.com', 'pass92', 1),
(93, 'Reed', 'Aguirre', '', 'ReedAguirre@gmail.com', 'pass93', 1),
(94, 'Louis', 'Lewis', '', 'LouisLewis@gmail.com', 'pass94', 1),
(95, 'Ann', 'Maxwell', '', 'AnnMaxwell@gmail.com', 'pass95', 1),
(96, 'Kerry', 'Shannon', '', 'KerryShannon@gmail.com', 'pass96', 1),
(97, 'Fredericka', 'Aguilar', '', 'FrederickaAguilar@gmail.com', 'pass97', 1),
(98, 'Forrest', 'Dejesus', '', 'ForrestDejesus@gmail.com', 'pass98', 1),
(99, 'Darrel', 'Harper', '', 'DarrelHarper@gmail.com', 'pass99', 1),
(100, 'Sheila', 'Acevedo', '', 'SheilaAcevedo@gmail.com', 'pass100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_middle_map`
--

CREATE TABLE `user_middle_map` (
  `uid` int(11) NOT NULL,
  `middle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_middle_map`
--

INSERT INTO `user_middle_map` (`uid`, `middle_id`) VALUES
(73, 19),
(83, 41),
(73, 22),
(95, 40),
(88, 15),
(86, 7),
(100, 38),
(79, 9),
(71, 39),
(93, 42),
(92, 4),
(83, 19),
(91, 50),
(83, 35),
(81, 46),
(100, 48),
(80, 4),
(80, 45),
(74, 33),
(85, 8),
(84, 39),
(86, 45),
(83, 35),
(91, 25),
(89, 34),
(86, 8),
(98, 39),
(74, 9),
(76, 12),
(88, 35),
(93, 34),
(98, 45),
(71, 36),
(81, 6),
(92, 2),
(77, 31),
(86, 50),
(97, 38),
(79, 7),
(82, 18),
(77, 47),
(95, 42),
(72, 2),
(91, 34),
(76, 33),
(93, 5),
(92, 26),
(88, 25),
(90, 19),
(91, 8),
(92, 37),
(73, 2),
(92, 32),
(97, 49),
(99, 21),
(86, 9),
(73, 40),
(99, 25),
(99, 30);

-- --------------------------------------------------------

--
-- Table structure for table `user_org_map`
--

CREATE TABLE `user_org_map` (
  `uid` int(11) NOT NULL,
  `org_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_org_map`
--

INSERT INTO `user_org_map` (`uid`, `org_id`) VALUES
(29, 16),
(10, 17),
(17, 84),
(22, 86),
(16, 40),
(12, 13),
(27, 18),
(16, 15),
(20, 94),
(16, 23),
(13, 98),
(18, 26),
(13, 38),
(1, 86),
(23, 87),
(15, 15),
(15, 8),
(14, 19),
(14, 9),
(27, 78),
(19, 84),
(20, 94),
(29, 72),
(3, 1),
(11, 98),
(24, 100),
(1, 82),
(2, 24),
(29, 94),
(24, 80),
(17, 98),
(3, 73),
(13, 9),
(15, 48),
(4, 74),
(20, 92),
(7, 39),
(14, 18),
(17, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_post_role_map`
--

CREATE TABLE `user_post_role_map` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_post_role_map`
--

INSERT INTO `user_post_role_map` (`id`, `uid`, `post_id`, `role_id`) VALUES
(1, 6, 90, 10),
(2, 23, 26, 7),
(3, 21, 76, 1),
(4, 4, 20, 10),
(5, 17, 31, 7),
(6, 13, 89, 5),
(7, 7, 17, 1),
(8, 8, 54, 5),
(9, 11, 43, 4),
(10, 19, 65, 11),
(11, 15, 66, 4),
(12, 22, 66, 9),
(13, 14, 48, 9),
(14, 22, 86, 2),
(15, 2, 91, 2),
(16, 14, 97, 2),
(17, 18, 80, 11),
(18, 27, 60, 8),
(19, 13, 13, 6),
(20, 24, 83, 5),
(21, 21, 14, 3),
(22, 20, 64, 7),
(23, 16, 75, 10),
(24, 23, 90, 5),
(25, 21, 27, 8),
(26, 1, 24, 7),
(27, 19, 29, 8),
(28, 3, 68, 5),
(29, 8, 40, 1),
(30, 25, 50, 10),
(31, 15, 78, 1),
(32, 9, 10, 2),
(33, 7, 10, 9),
(34, 28, 78, 4),
(35, 13, 67, 4),
(36, 16, 10, 2),
(37, 16, 44, 8),
(38, 17, 68, 3),
(39, 22, 62, 4),
(40, 11, 70, 8),
(41, 28, 97, 11),
(42, 23, 37, 9),
(43, 23, 96, 9),
(44, 7, 57, 4),
(45, 20, 47, 5),
(46, 27, 16, 10),
(47, 20, 72, 7),
(48, 11, 12, 10),
(49, 24, 16, 5),
(50, 18, 25, 6),
(51, 36, 18, 104),
(52, 61, 44, 103),
(53, 31, 95, 102),
(54, 45, 9, 102),
(55, 43, 11, 104),
(56, 33, 17, 105),
(57, 31, 54, 100),
(58, 48, 14, 106),
(59, 50, 35, 106),
(60, 39, 70, 100),
(61, 33, 71, 104),
(62, 42, 67, 100),
(63, 68, 57, 106),
(64, 66, 18, 104),
(65, 56, 21, 103),
(66, 66, 51, 104),
(67, 48, 6, 102),
(68, 62, 31, 104),
(69, 66, 52, 102),
(70, 62, 33, 102),
(71, 61, 7, 106),
(72, 37, 77, 106),
(73, 40, 27, 101),
(74, 41, 12, 104),
(75, 55, 64, 105),
(76, 44, 73, 103),
(77, 68, 25, 101),
(78, 62, 65, 105),
(79, 32, 89, 103),
(80, 64, 47, 104),
(81, 68, 36, 102),
(82, 49, 87, 100),
(83, 65, 82, 103),
(84, 62, 13, 102),
(85, 46, 70, 100),
(86, 39, 36, 101),
(87, 62, 83, 106),
(88, 55, 35, 102),
(89, 64, 67, 106),
(90, 49, 91, 101),
(91, 70, 100, 104),
(92, 37, 40, 101),
(93, 32, 55, 102),
(94, 42, 27, 100),
(95, 61, 39, 101),
(96, 56, 33, 100),
(97, 48, 57, 103),
(98, 40, 58, 105),
(99, 35, 53, 102),
(100, 42, 95, 104),
(101, 97, 29, 202),
(102, 78, 4, 202),
(103, 88, 5, 201),
(104, 79, 20, 200),
(105, 80, 4, 200),
(106, 76, 34, 202),
(107, 73, 30, 202),
(108, 93, 82, 202),
(109, 73, 15, 200),
(110, 97, 85, 202),
(111, 80, 72, 201),
(112, 71, 64, 200),
(113, 100, 33, 200),
(114, 90, 3, 202),
(115, 87, 69, 202),
(116, 71, 61, 201),
(117, 80, 52, 201),
(118, 88, 22, 200),
(119, 87, 33, 202),
(120, 88, 51, 201),
(121, 87, 22, 201),
(122, 78, 86, 200),
(123, 77, 47, 200),
(124, 75, 77, 201),
(125, 96, 13, 200),
(126, 91, 63, 201),
(127, 73, 23, 202),
(128, 92, 25, 200),
(129, 100, 19, 201),
(130, 71, 9, 202),
(131, 86, 22, 201),
(132, 88, 61, 202),
(133, 80, 28, 201),
(134, 77, 58, 201),
(135, 71, 47, 200),
(136, 86, 28, 202),
(137, 88, 18, 201),
(138, 87, 12, 201),
(139, 74, 97, 200),
(140, 82, 17, 202),
(141, 82, 44, 201),
(142, 95, 56, 200),
(143, 91, 84, 200),
(144, 82, 98, 200),
(145, 80, 41, 201),
(146, 75, 48, 202),
(147, 87, 83, 201),
(148, 96, 76, 202),
(149, 83, 70, 202),
(150, 73, 51, 201);

-- --------------------------------------------------------

--
-- Table structure for table `user_vendor_map`
--

CREATE TABLE `user_vendor_map` (
  `uid` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_vendor_map`
--

INSERT INTO `user_vendor_map` (`uid`, `vendor_id`) VALUES
(36, 91),
(35, 58),
(63, 46),
(33, 54),
(55, 36),
(61, 26),
(31, 18),
(67, 11),
(54, 78),
(51, 10),
(60, 41),
(50, 19),
(35, 34),
(46, 99),
(38, 83),
(57, 40),
(46, 68),
(52, 71),
(62, 88),
(51, 99),
(46, 61),
(53, 23),
(50, 96),
(39, 60),
(63, 79),
(42, 43),
(69, 14),
(64, 76),
(41, 76),
(35, 47),
(50, 57),
(57, 40),
(64, 65),
(62, 6),
(46, 16),
(34, 91),
(68, 21),
(62, 55),
(62, 26),
(33, 65),
(51, 10),
(51, 62),
(57, 25),
(52, 91),
(40, 49),
(61, 82),
(31, 45),
(58, 66),
(47, 33);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `contact_head` int(11) NOT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `on_chain` int(1) NOT NULL COMMENT '0- Not on chain , 1- on chain',
  `document` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `location_id`, `type`, `contact_head`, `verified_by`, `verified_at`, `on_chain`, `document`) VALUES
(1, 'Vendor1', 37, 1, 38, 12, '0000-00-00 00:00:00', 1, ''),
(2, 'Vendor2', 69, 1, 32, 2, '0000-00-00 00:00:00', 0, ''),
(3, 'Vendor3', 42, 1, 70, 12, '0000-00-00 00:00:00', 0, ''),
(4, 'Vendor4', 52, 1, 54, 7, '0000-00-00 00:00:00', 0, ''),
(5, 'Vendor5', 83, 4, 42, 25, '0000-00-00 00:00:00', 1, ''),
(6, 'Vendor6', 86, 1, 41, 11, '0000-00-00 00:00:00', 0, ''),
(7, 'Vendor7', 13, 1, 52, 4, '0000-00-00 00:00:00', 0, ''),
(8, 'Vendor8', 31, 1, 68, 25, '0000-00-00 00:00:00', 0, ''),
(9, 'Vendor9', 27, 3, 56, 20, '0000-00-00 00:00:00', 0, ''),
(10, 'Vendor10', 11, 5, 50, 7, '0000-00-00 00:00:00', 0, ''),
(11, 'Vendor11', 27, 1, 65, 10, '0000-00-00 00:00:00', 0, ''),
(12, 'Vendor12', 3, 4, 64, 9, '0000-00-00 00:00:00', 1, ''),
(13, 'Vendor13', 85, 5, 52, 2, '0000-00-00 00:00:00', 0, ''),
(14, 'Vendor14', 24, 2, 54, 8, '0000-00-00 00:00:00', 0, ''),
(15, 'Vendor15', 73, 2, 69, 12, '0000-00-00 00:00:00', 0, ''),
(16, 'Vendor16', 45, 2, 44, 1, '0000-00-00 00:00:00', 1, ''),
(17, 'Vendor17', 52, 3, 58, 22, '0000-00-00 00:00:00', 0, ''),
(18, 'Vendor18', 33, 3, 70, 11, '0000-00-00 00:00:00', 0, ''),
(19, 'Vendor19', 38, 2, 57, 21, '0000-00-00 00:00:00', 0, ''),
(20, 'Vendor20', 99, 5, 63, 9, '0000-00-00 00:00:00', 0, ''),
(21, 'Vendor21', 57, 2, 34, 23, '0000-00-00 00:00:00', 0, ''),
(22, 'Vendor22', 48, 3, 59, 19, '0000-00-00 00:00:00', 1, ''),
(23, 'Vendor23', 50, 1, 44, 6, '0000-00-00 00:00:00', 1, ''),
(24, 'Vendor24', 67, 4, 61, 22, '0000-00-00 00:00:00', 0, ''),
(25, 'Vendor25', 37, 1, 49, 15, '0000-00-00 00:00:00', 1, ''),
(26, 'Vendor26', 79, 5, 62, 12, '0000-00-00 00:00:00', 0, ''),
(27, 'Vendor27', 16, 2, 62, 11, '0000-00-00 00:00:00', 0, ''),
(28, 'Vendor28', 86, 5, 69, 9, '0000-00-00 00:00:00', 1, ''),
(29, 'Vendor29', 56, 3, 43, 4, '0000-00-00 00:00:00', 0, ''),
(30, 'Vendor30', 51, 5, 38, 15, '0000-00-00 00:00:00', 0, ''),
(31, 'Vendor31', 14, 4, 31, 20, '0000-00-00 00:00:00', 1, ''),
(32, 'Vendor32', 99, 3, 56, 20, '0000-00-00 00:00:00', 1, ''),
(33, 'Vendor33', 81, 1, 62, 14, '0000-00-00 00:00:00', 1, ''),
(34, 'Vendor34', 43, 3, 60, 22, '0000-00-00 00:00:00', 1, ''),
(35, 'Vendor35', 91, 2, 47, 16, '0000-00-00 00:00:00', 1, ''),
(36, 'Vendor36', 71, 3, 40, 19, '0000-00-00 00:00:00', 1, ''),
(37, 'Vendor37', 12, 2, 69, 30, '0000-00-00 00:00:00', 1, ''),
(38, 'Vendor38', 4, 5, 50, 26, '0000-00-00 00:00:00', 1, ''),
(39, 'Vendor39', 44, 2, 52, 4, '0000-00-00 00:00:00', 1, ''),
(40, 'Vendor40', 34, 5, 46, 19, '0000-00-00 00:00:00', 1, ''),
(41, 'Vendor41', 60, 3, 64, 7, '0000-00-00 00:00:00', 0, ''),
(42, 'Vendor42', 12, 1, 67, 21, '0000-00-00 00:00:00', 0, ''),
(43, 'Vendor43', 89, 5, 33, 27, '0000-00-00 00:00:00', 0, ''),
(44, 'Vendor44', 80, 3, 31, 7, '0000-00-00 00:00:00', 1, ''),
(45, 'Vendor45', 39, 1, 41, 5, '0000-00-00 00:00:00', 0, ''),
(46, 'Vendor46', 36, 3, 51, 9, '0000-00-00 00:00:00', 0, ''),
(47, 'Vendor47', 64, 4, 42, 13, '0000-00-00 00:00:00', 0, ''),
(48, 'Vendor48', 29, 3, 31, 30, '0000-00-00 00:00:00', 1, ''),
(49, 'Vendor49', 69, 2, 39, 21, '0000-00-00 00:00:00', 0, ''),
(50, 'Vendor50', 63, 1, 42, 4, '0000-00-00 00:00:00', 0, ''),
(51, 'Vendor51', 67, 3, 35, 11, '0000-00-00 00:00:00', 1, ''),
(52, 'Vendor52', 56, 4, 69, 16, '0000-00-00 00:00:00', 0, ''),
(53, 'Vendor53', 92, 1, 33, 23, '0000-00-00 00:00:00', 1, ''),
(54, 'Vendor54', 19, 1, 55, 11, '0000-00-00 00:00:00', 1, ''),
(55, 'Vendor55', 60, 5, 66, 10, '0000-00-00 00:00:00', 0, ''),
(56, 'Vendor56', 92, 1, 31, 15, '0000-00-00 00:00:00', 1, ''),
(57, 'Vendor57', 13, 1, 70, 9, '0000-00-00 00:00:00', 0, ''),
(58, 'Vendor58', 39, 3, 35, 12, '0000-00-00 00:00:00', 1, ''),
(59, 'Vendor59', 69, 4, 57, 1, '0000-00-00 00:00:00', 0, ''),
(60, 'Vendor60', 25, 4, 42, 30, '0000-00-00 00:00:00', 1, ''),
(61, 'Vendor61', 43, 4, 42, 25, '0000-00-00 00:00:00', 0, ''),
(62, 'Vendor62', 44, 1, 52, 6, '0000-00-00 00:00:00', 1, ''),
(63, 'Vendor63', 72, 1, 68, 4, '0000-00-00 00:00:00', 0, ''),
(64, 'Vendor64', 92, 5, 50, 9, '0000-00-00 00:00:00', 0, ''),
(65, 'Vendor65', 29, 2, 34, 24, '0000-00-00 00:00:00', 1, ''),
(66, 'Vendor66', 18, 1, 33, 27, '0000-00-00 00:00:00', 0, ''),
(67, 'Vendor67', 42, 2, 59, 13, '0000-00-00 00:00:00', 0, ''),
(68, 'Vendor68', 77, 3, 67, 27, '0000-00-00 00:00:00', 0, ''),
(69, 'Vendor69', 43, 2, 49, 27, '0000-00-00 00:00:00', 0, ''),
(70, 'Vendor70', 82, 5, 31, 9, '0000-00-00 00:00:00', 1, ''),
(71, 'Vendor71', 29, 5, 40, 19, '0000-00-00 00:00:00', 0, ''),
(72, 'Vendor72', 60, 5, 35, 12, '0000-00-00 00:00:00', 0, ''),
(73, 'Vendor73', 28, 3, 60, 1, '0000-00-00 00:00:00', 0, ''),
(74, 'Vendor74', 71, 2, 42, 10, '0000-00-00 00:00:00', 0, ''),
(75, 'Vendor75', 47, 5, 36, 24, '0000-00-00 00:00:00', 0, ''),
(76, 'Vendor76', 12, 4, 51, 30, '0000-00-00 00:00:00', 0, ''),
(77, 'Vendor77', 3, 3, 59, 10, '0000-00-00 00:00:00', 1, ''),
(78, 'Vendor78', 53, 2, 33, 28, '0000-00-00 00:00:00', 1, ''),
(79, 'Vendor79', 60, 4, 61, 21, '0000-00-00 00:00:00', 0, ''),
(80, 'Vendor80', 74, 2, 34, 10, '0000-00-00 00:00:00', 0, ''),
(81, 'Vendor81', 87, 2, 55, 12, '0000-00-00 00:00:00', 0, ''),
(82, 'Vendor82', 62, 4, 54, 27, '0000-00-00 00:00:00', 1, ''),
(83, 'Vendor83', 79, 1, 59, 22, '0000-00-00 00:00:00', 1, ''),
(84, 'Vendor84', 75, 5, 52, 29, '0000-00-00 00:00:00', 1, ''),
(85, 'Vendor85', 5, 4, 56, 23, '0000-00-00 00:00:00', 0, ''),
(86, 'Vendor86', 68, 2, 67, 17, '0000-00-00 00:00:00', 0, ''),
(87, 'Vendor87', 10, 5, 49, 20, '0000-00-00 00:00:00', 0, ''),
(88, 'Vendor88', 16, 5, 68, 8, '0000-00-00 00:00:00', 1, ''),
(89, 'Vendor89', 31, 4, 44, 30, '0000-00-00 00:00:00', 1, ''),
(90, 'Vendor90', 46, 5, 54, 2, '0000-00-00 00:00:00', 0, ''),
(91, 'Vendor91', 50, 4, 31, 22, '0000-00-00 00:00:00', 1, ''),
(92, 'Vendor92', 80, 3, 54, 29, '0000-00-00 00:00:00', 0, ''),
(93, 'Vendor93', 29, 3, 31, 7, '0000-00-00 00:00:00', 0, ''),
(94, 'Vendor94', 6, 3, 50, 30, '0000-00-00 00:00:00', 0, ''),
(95, 'Vendor95', 44, 1, 64, 3, '0000-00-00 00:00:00', 1, ''),
(96, 'Vendor96', 43, 2, 53, 28, '0000-00-00 00:00:00', 0, ''),
(97, 'Vendor97', 89, 5, 46, 15, '0000-00-00 00:00:00', 0, ''),
(98, 'Vendor98', 53, 5, 69, 27, '0000-00-00 00:00:00', 1, ''),
(99, 'Vendor99', 29, 4, 36, 21, '0000-00-00 00:00:00', 1, ''),
(100, 'Vendor100', 65, 5, 60, 12, '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `zone_name`) VALUES
(1, 'MA'),
(2, 'Mexico City'),
(3, 'WY'),
(4, 'North Island'),
(5, 'PU'),
(6, 'ON'),
(7, 'Drenthe'),
(8, 'VIC'),
(9, 'West-Vlaanderen'),
(10, 'C'),
(11, 'PK'),
(12, 'West Bengal'),
(13, 'GA'),
(14, 'CA'),
(15, 'Kano'),
(16, 'AB'),
(17, 'Haute-Normandie'),
(18, 'TOM'),
(19, 'Balochistan'),
(20, 'Oregon'),
(21, 'WV'),
(22, 'Minnesota'),
(23, 'MAG'),
(24, 'Wielkopolskie'),
(25, 'Noord Holland'),
(26, 'AS'),
(27, 'Andalucía'),
(28, 'Kano'),
(29, 'Maule'),
(30, 'HE'),
(31, 'JT'),
(32, 'ON'),
(33, 'C'),
(34, 'Victoria'),
(35, 'Alaska'),
(36, 'Canarias'),
(37, 'NS'),
(38, 'Idaho'),
(39, 'BK'),
(40, 'DS'),
(41, 'PI'),
(42, 'NI'),
(43, 'KPK'),
(44, 'South Island'),
(45, 'OÖ.'),
(46, 'WM'),
(47, 'South Gyeongsang'),
(48, 'HH'),
(49, 'RJ'),
(50, 'Zl'),
(51, 'Gye'),
(52, 'Picardie'),
(53, 'Utah'),
(54, 'Emilia-Romagna'),
(55, 'Vladimir Oblast'),
(56, 'MT'),
(57, 'PIU'),
(58, 'F'),
(59, 'C'),
(60, 'ON'),
(61, 'Hamburg'),
(62, 'RM'),
(63, 'OS'),
(64, 'MS'),
(65, 'Ulster'),
(66, 'Kostroma Oblast'),
(67, 'Oost-Vlaanderen'),
(68, 'MA'),
(69, 'Pomorskie'),
(70, 'Hamburg'),
(71, 'U'),
(72, 'Uttar Pradesh'),
(73, 'Minas Gerais'),
(74, 'HI'),
(75, 'Ontario'),
(76, 'SL'),
(77, 'Gan'),
(78, 'Wie'),
(79, 'Bauchi'),
(80, 'Aceh'),
(81, 'NT'),
(82, 'WB'),
(83, 'LAZ'),
(84, 'Missouri'),
(85, 'Valparaíso'),
(86, 'Illinois'),
(87, 'Veracruz'),
(88, 'Veneto'),
(89, 'Argyllshire'),
(90, 'British Columbia'),
(91, 'Oaxaca'),
(92, 'GA'),
(93, 'Brussels Hoofdstedelijk Gewest'),
(94, 'Provence-Alpes-Côte d\'Azur'),
(95, 'NI'),
(96, 'Antwerpen'),
(97, 'SJ'),
(98, 'Valparaíso'),
(99, 'ON'),
(100, 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `zone_subzone_location_mapping`
--

CREATE TABLE `zone_subzone_location_mapping` (
  `zone_id` int(11) NOT NULL,
  `sub_zone_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone_subzone_location_mapping`
--

INSERT INTO `zone_subzone_location_mapping` (`zone_id`, `sub_zone_id`, `location_id`) VALUES
(84, 91, 17),
(65, 34, 87),
(63, 67, 76),
(65, 4, 8),
(6, 89, 48),
(61, 91, 26),
(15, 48, 75),
(32, 100, 95),
(98, 42, 37),
(23, 8, 26),
(28, 17, 24),
(68, 65, 6),
(15, 67, 39),
(42, 80, 97),
(87, 22, 34),
(13, 34, 12),
(45, 91, 94),
(52, 85, 3),
(37, 22, 42),
(78, 32, 76),
(71, 24, 32),
(74, 23, 94),
(90, 59, 100),
(26, 11, 19),
(44, 22, 23),
(78, 72, 32),
(8, 63, 2),
(66, 89, 49),
(45, 79, 22),
(6, 55, 68),
(32, 16, 92),
(28, 9, 98),
(26, 15, 96),
(58, 82, 1),
(9, 92, 31),
(13, 38, 54),
(74, 56, 78),
(4, 30, 41),
(37, 6, 86),
(66, 41, 66),
(80, 95, 78),
(95, 78, 33),
(56, 79, 89),
(57, 16, 39),
(99, 36, 91),
(35, 17, 82),
(91, 82, 93),
(16, 99, 59),
(47, 4, 9),
(83, 79, 99),
(99, 26, 71),
(70, 76, 16),
(76, 37, 53),
(100, 17, 77),
(76, 28, 42),
(45, 9, 33),
(77, 21, 83),
(30, 57, 92),
(25, 18, 5),
(74, 29, 23),
(57, 44, 87),
(12, 87, 23),
(50, 8, 38),
(68, 59, 54),
(69, 98, 87),
(51, 18, 24),
(28, 35, 77),
(18, 95, 74),
(59, 18, 100),
(67, 28, 43),
(89, 43, 32),
(12, 3, 25),
(8, 89, 17),
(15, 58, 49),
(9, 90, 13),
(82, 31, 15),
(55, 88, 88),
(84, 66, 35),
(43, 87, 85),
(71, 95, 64),
(11, 79, 5),
(21, 11, 63),
(1, 64, 4),
(29, 59, 49),
(66, 90, 44),
(22, 27, 36),
(29, 89, 82),
(29, 71, 58),
(31, 2, 32),
(14, 95, 48),
(69, 20, 86),
(45, 100, 96),
(10, 49, 76),
(14, 71, 76),
(34, 21, 74),
(68, 47, 67),
(46, 58, 20),
(44, 64, 96),
(39, 38, 26),
(67, 65, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `middleman`
--
ALTER TABLE `middleman`
  ADD PRIMARY KEY (`middle_id`),
  ADD KEY `source_id` (`source_id`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`org_id`),
  ADD KEY `head` (`head`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `sub_zone_id` (`sub_zone_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sub_zone`
--
ALTER TABLE `sub_zone`
  ADD PRIMARY KEY (`sub_zone_id`);

--
-- Indexes for table `tender`
--
ALTER TABLE `tender`
  ADD PRIMARY KEY (`tender_id`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD PRIMARY KEY (`contract_address`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `payment_recieved_by` (`payment_recieved_by`),
  ADD KEY `payment_sent_by` (`payment_sent_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `user_middle_map`
--
ALTER TABLE `user_middle_map`
  ADD KEY `uid` (`uid`),
  ADD KEY `middle_id` (`middle_id`);

--
-- Indexes for table `user_org_map`
--
ALTER TABLE `user_org_map`
  ADD KEY `uid` (`uid`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `user_post_role_map`
--
ALTER TABLE `user_post_role_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_vendor_map`
--
ALTER TABLE `user_vendor_map`
  ADD KEY `uid` (`uid`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD UNIQUE KEY `vendor_name` (`vendor_name`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `contact_head` (`contact_head`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zone_subzone_location_mapping`
--
ALTER TABLE `zone_subzone_location_mapping`
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `sub_zone_id` (`sub_zone_id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `middleman`
--
ALTER TABLE `middleman`
  MODIFY `middle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sub_zone`
--
ALTER TABLE `sub_zone`
  MODIFY `sub_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `transaction_log`
--
ALTER TABLE `transaction_log`
  MODIFY `contract_address` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_post_role_map`
--
ALTER TABLE `user_post_role_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `middleman`
--
ALTER TABLE `middleman`
  ADD CONSTRAINT `middleman_ibfk_1` FOREIGN KEY (`source_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `middleman_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `middleman_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`uid`);

--
-- Constraints for table `organisation`
--
ALTER TABLE `organisation`
  ADD CONSTRAINT `organisation_ibfk_1` FOREIGN KEY (`head`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `organisation_ibfk_2` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `organisation_ibfk_3` FOREIGN KEY (`sub_zone_id`) REFERENCES `sub_zone` (`sub_zone_id`),
  ADD CONSTRAINT `organisation_ibfk_4` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `tender`
--
ALTER TABLE `tender`
  ADD CONSTRAINT `tender_ibfk_1` FOREIGN KEY (`approved_by`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `tender_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`uid`);

--
-- Constraints for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD CONSTRAINT `transaction_log_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`),
  ADD CONSTRAINT `transaction_log_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`),
  ADD CONSTRAINT `transaction_log_ibfk_3` FOREIGN KEY (`payment_recieved_by`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `transaction_log_ibfk_4` FOREIGN KEY (`payment_sent_by`) REFERENCES `users` (`uid`);

--
-- Constraints for table `user_middle_map`
--
ALTER TABLE `user_middle_map`
  ADD CONSTRAINT `user_middle_map_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `user_middle_map_ibfk_2` FOREIGN KEY (`middle_id`) REFERENCES `middleman` (`middle_id`);

--
-- Constraints for table `user_org_map`
--
ALTER TABLE `user_org_map`
  ADD CONSTRAINT `user_org_map_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `user_org_map_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `organisation` (`org_id`);

--
-- Constraints for table `user_post_role_map`
--
ALTER TABLE `user_post_role_map`
  ADD CONSTRAINT `user_post_role_map_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `user_post_role_map_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `user_post_role_map_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `user_vendor_map`
--
ALTER TABLE `user_vendor_map`
  ADD CONSTRAINT `user_vendor_map_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `user_vendor_map_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  ADD CONSTRAINT `vendor_ibfk_2` FOREIGN KEY (`verified_by`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `vendor_ibfk_3` FOREIGN KEY (`contact_head`) REFERENCES `users` (`uid`);

--
-- Constraints for table `zone_subzone_location_mapping`
--
ALTER TABLE `zone_subzone_location_mapping`
  ADD CONSTRAINT `zone_subzone_location_mapping_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `zone_subzone_location_mapping_ibfk_2` FOREIGN KEY (`sub_zone_id`) REFERENCES `sub_zone` (`sub_zone_id`),
  ADD CONSTRAINT `zone_subzone_location_mapping_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
