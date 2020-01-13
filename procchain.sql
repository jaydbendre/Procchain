-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 10:57 AM
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
-- Table structure for table `gail`
--

CREATE TABLE `gail` (
  `org_id` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `contact_head` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `sub_zone_id` int(11) NOT NULL,
  `contact_details` text NOT NULL,
  `eth_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `middleman`
--

CREATE TABLE `middleman` (
  `middle_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `other_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `function` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_zones`
--

CREATE TABLE `sub_zones` (
  `sub_zone_id` int(11) NOT NULL,
  `sub_zone_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `contact_head` int(11) NOT NULL,
  `number_of_centres` int(11) NOT NULL,
  `centres` text NOT NULL,
  `verified_status` int(1) NOT NULL,
  `verified_by` int(11) NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `documents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for dumped tables
--

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
  ADD KEY `invited_by` (`invited_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

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
-- AUTO_INCREMENT for table `gail`
--
ALTER TABLE `gail`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_zones`
--
ALTER TABLE `sub_zones`
  MODIFY `sub_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
