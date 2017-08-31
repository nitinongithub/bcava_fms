-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2017 at 01:35 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `CLASS_ID` varchar(50) NOT NULL,
  `CLASS_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes_in_session`
--

CREATE TABLE `classes_in_session` (
  `CLASS_SESSION_ID` varchar(50) NOT NULL,
  `CLASS_ID` varchar(50) NOT NULL,
  `SESSION_START_YEAR` varchar(50) NOT NULL,
  `SESSION_END_YEAR` varchar(50) NOT NULL,
  `SESSION` varchar(50) NOT NULL,
  `USER_ID` bigint(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_wise _students`
--

CREATE TABLE `class_wise _students` (
  `CLASS_WISE_SESSION_ID` varchar(50) NOT NULL,
  `CLASS_SESSION_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `STATIC_HEAD_ID` int(11) NOT NULL,
  `STATIC_HEAD_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`STATIC_HEAD_ID`, `STATIC_HEAD_NAME`, `DESCRIPTION`, `USER_ID`, `DATE_`, `STATUS`) VALUES
(1, 'REGISTRATION', 'To register students.', 'user', '2017-08-31 11:03:55', 1),
(2, '', '', 'user', '2017-08-31 13:16:34', 1),
(3, 'Tuition Fee', 'The fee paid for tuition.', 'user', '2017-08-31 13:17:04', 1),
(4, '', '', 'user', '2017-08-31 13:25:34', 1),
(5, '', '', 'user', '2017-08-31 13:26:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_flexible_heads`
--

CREATE TABLE `fee_flexible_heads` (
  `FLEXIBLE_HEAD_ID` varchar(50) NOT NULL,
  `FLEXIBLE_HEAD_NAME` varchar(50) NOT NULL,
  `DISCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `flexible_to_students`
--

CREATE TABLE `flexible_to_students` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `CLASS_SESSION_ID` varchar(50) NOT NULL,
  `FLEXIBLE_HEAD_ID` varchar(50) NOT NULL,
  `FLEXIBLE_HEAD_AMOUNT` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE` datetime NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `INVOICE_ID` varchar(50) NOT NULL,
  `CLASS_SESSION_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `STATIC_HEADS` varchar(50) NOT NULL,
  `FLEXIBLE_HEADS` varchar(50) NOT NULL,
  `STATIC_SPLIT_AMOUNT` int(50) NOT NULL,
  `FLEXIBLE_SPLIT_AMOUNT` int(50) NOT NULL,
  `ACTUAL_AMOUNT` int(50) NOT NULL,
  `PREVIOUS_DUES` int(50) NOT NULL,
  `MONTH_FROM` varchar(50) NOT NULL,
  `YEAR_FROM` varchar(50) NOT NULL,
  `MONTH_TO` varchar(50) NOT NULL,
  `YEAR_TO` varchar(50) NOT NULL,
  `NUMBER_OF_MONTHS` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `USER_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `USER_STATUS` varchar(20) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`USER_ID`, `PASSWORD`, `USER_STATUS`, `DATE_`, `STATUS`) VALUES
('hemant', '123456', 'ADMINISTRATOR', '2017-08-25 13:58:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `RECEIPT_ID` varchar(50) NOT NULL,
  `INVOICE_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `FLEXIBLE_STATUS` varchar(50) NOT NULL,
  `FLEXIBLE_HEADS` varchar(50) NOT NULL,
  `DISCOUNT` int(50) NOT NULL,
  `DISCOUNT_AMOUNT` int(50) NOT NULL,
  `FINE` int(50) NOT NULL,
  `FINE_AMOUNT` int(50) NOT NULL,
  `ACTUAL_PAID_AMOUNT` int(50) NOT NULL,
  `MODE_OF_PAYMENT` varchar(50) NOT NULL,
  `DD_CHEQUE_NUMBER` varchar(50) NOT NULL,
  `DD_CHEQUE_DATEYEAR` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `static_to_class`
--

CREATE TABLE `static_to_class` (
  `CLASS_SESSION_ID` varchar(50) NOT NULL,
  `STATIC_HEAD_ID` varchar(50) NOT NULL,
  `STATIC_HEAD_AMOUNT` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `NAME_OF_THE_STUDENT` varchar(50) NOT NULL,
  `FATHER'S_NAME` varchar(50) NOT NULL,
  `MOTHER'S_NAME` varchar(50) NOT NULL,
  `D_O_B` int(20) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CONTACT_NUMBER` int(10) NOT NULL,
  `DATE_OF_ ADMISSION` varchar(50) NOT NULL,
  `CLASS_OF_ ADMISSION` varchar(50) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `USER_STATUS_ID` int(11) NOT NULL,
  `USER_STATUS` varchar(20) NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`USER_STATUS_ID`, `USER_STATUS`, `STATUS`) VALUES
(1, 'ADMINISTRATOR', 1),
(2, 'MANAGEMENT', 1),
(3, 'user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`CLASS_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `classes_in_session`
--
ALTER TABLE `classes_in_session`
  ADD PRIMARY KEY (`CLASS_SESSION_ID`),
  ADD KEY `CLASS_ID` (`CLASS_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `class_wise _students`
--
ALTER TABLE `class_wise _students`
  ADD PRIMARY KEY (`CLASS_WISE_SESSION_ID`),
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`STATIC_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `fee_flexible_heads`
--
ALTER TABLE `fee_flexible_heads`
  ADD PRIMARY KEY (`FLEXIBLE_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`RECEIPT_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `static_to_class`
--
ALTER TABLE `static_to_class`
  ADD KEY `CLASS_SESSION_ID` (`CLASS_SESSION_ID`),
  ADD KEY `STATIC_HEAD_ID` (`STATIC_HEAD_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`USER_STATUS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `STATIC_HEAD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
