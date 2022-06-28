-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 01:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mothersvillage`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `admin_id` int(11) NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_text` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`admin_id`, `adminname`, `username`, `email`, `password`, `password_text`, `profile`, `status`, `created_date`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '4305a07549479f542cf2c9c74b97e8cf', 'mothersvillage@2022', '62455a6243f73.jpg', 'Active', '2022-03-31 09:27:13'),
(13, 'Subadmin', 'mothersvillage', 'mothers@gmail.com', '25d55ad283aa400af464c76d713c07ad', '12345678', '624558e5a912f.jpg', 'Trash', '2022-03-31 13:01:49'),
(15, 'Subadmin', 'Priyanka', 'priya.mkp.mv@gmail.com', '5576cee0a7b32c0b3a7108e2c3d71fdb', 'Riya@2906', '628dddfba688c.jpg', 'Active', '2022-05-25 13:07:19'),
(16, 'Subadmin', 'Sneha', 'sneha07.mv@gmail.com', 'a8a3d50dc26ed3dec7c2ed6cd30265a6', 'sneha@mkp2022', '628ddce24355b.jpg', 'Active', '2022-05-25 13:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(11) NOT NULL,
  `phase_id` int(11) DEFAULT NULL,
  `block_name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `phase_id`, `block_name`, `status`, `created_date`, `modified_date`) VALUES
(16, 12, 'Block A', 'Active', '2022-02-26 11:55:38', NULL),
(17, 12, 'Block B', 'Active', '2022-02-26 11:55:47', NULL),
(18, 12, 'Block C', 'Active', '2022-02-26 11:56:36', NULL),
(19, 12, 'Block D', 'Active', '2022-02-26 11:56:53', NULL),
(20, 12, 'Block E', 'Active', '2022-02-26 11:57:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `cost_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `applicant_name` varchar(255) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `flatnumber` int(11) DEFAULT NULL,
  `flattype` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `facing` varchar(255) DEFAULT NULL,
  `rate_sqft` varchar(255) DEFAULT NULL,
  `sal_area` varchar(255) DEFAULT NULL,
  `salable_value` varchar(255) DEFAULT NULL,
  `uds_area` varchar(255) DEFAULT NULL,
  `guideline_value` varchar(255) DEFAULT NULL,
  `land_cost` varchar(255) DEFAULT NULL,
  `construction_cost` varchar(255) DEFAULT NULL,
  `electricity_charges` varchar(255) DEFAULT NULL,
  `water_supply` varchar(255) DEFAULT NULL,
  `car_park` varchar(255) DEFAULT NULL,
  `amenities_charges` varchar(255) DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `gross_amount` varchar(255) DEFAULT NULL,
  `stamp` varchar(255) DEFAULT NULL,
  `registration` varchar(255) DEFAULT NULL,
  `construction` varchar(255) DEFAULT NULL,
  `corpus_fund` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `addedby` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`cost_id`, `customer_id`, `document_id`, `application_number`, `applicant_name`, `block`, `flatnumber`, `flattype`, `floor`, `facing`, `rate_sqft`, `sal_area`, `salable_value`, `uds_area`, `guideline_value`, `land_cost`, `construction_cost`, `electricity_charges`, `water_supply`, `car_park`, `amenities_charges`, `maintenance`, `gross_amount`, `stamp`, `registration`, `construction`, `corpus_fund`, `gst`, `total_amount`, `addedby`, `status`, `created_date`, `modified_date`) VALUES
(29, 62, 38, '0605', 'Vinayakamoorthykumar', 17, 684, 40, 24, 'North', '3945.29201', '839', '3310100.00', '316', '940', '297040.00', '3013060.00', '0', '0', '0', '0', '0', '3310100.00', '20792.80', '11881.60', '60261.20', '0', '33101.00', '3436136.60', 'Priyanka', 'Active', '2022-05-25 13:20:30', NULL),
(30, 63, 39, '0363', 'Arunkumar PT & Priyanka Devi', 16, 377, 16, 18, 'East', '3903.41981', '848', '3310100.00', '319', '1072', '341968.00', '2968132.00', '0', '0', '0', '0', '0', '3310100.00', '23937.76', '13678.72', '59362.64', '0', '33101.00', '3440180.12', 'Priyanka', 'Active', '2022-06-14 11:07:10', NULL),
(31, 64, 40, '0109', 'S.Arun', 16, 378, 16, 18, 'East', '3732.18527', '842', '3142500.00', '317', '1072', '339824.00', '2802676.00', '0', '0', '0', '0', '0', '3142500.00', '23787.68', '13592.96', '56053.52', '0', '31425.00', '3267359.16', 'Priyanka', 'Active', '2022-06-14 11:22:12', NULL),
(32, 65, 41, '0563', 'Vairamuthu L', 16, 386, 16, 18, 'North', '3926.571767', '843', '3310100.00', '317', '1072', '339824.00', '2970276.00', '0', '0', '0', '0', '0', '3310100.00', '23787.68', '13592.96', '59405.52', '0', '33101.00', '3439987.16', 'Priyanka', 'Active', '2022-06-16 11:11:53', NULL),
(33, 66, 42, '0366', 'Premkumar', 16, 395, 20, 19, 'East', '3714.539007', '846', '3142500.00', '319', '1072', '341968.00', '2800532.00', '0', '0', '0', '0', '0', '3142500.00', '23937.76', '13678.72', '56010.64', '0', '31425.00', '3267552.12', 'Priyanka', 'Active', '2022-06-16 11:22:41', NULL),
(34, 67, 43, '0396', 'sheeja K Nair', 16, 397, 20, 19, 'East', '3903.41981', '848', '3310100.00', '319', '1072', '341968.00', '2968132.00', '0', '0', '0', '0', '0', '3310100.00', '23937.76', '13678.72', '59362.64', '0', '33101.00', '3440180.12', 'Priyanka', 'Active', '2022-06-16 11:47:00', NULL),
(35, 68, 44, '0616', 'D. Hema', 16, 396, 20, 19, 'East', '3732.185273', '842', '3142500.00', '317', '1072', '339824.00', '2802676.00', '0', '0', '0', '0', '0', '3142500.00', '23787.68', '13592.96', '56053.52', '0', '31425.00', '3267359.16', 'Priyanka', 'Active', '2022-06-16 12:14:25', NULL),
(36, 69, 45, '0374', 'Padmavathi Ragavan', 16, 399, 20, 19, 'East', '3727.758007', '843', '3142500.00', '317', '1072', '339824.00', '2802676.00', '0', '0', '0', '0', '0', '3142500.00', '23787.68', '13592.96', '56053.52', '0', '31425.00', '3267359.16', 'Priyanka', 'Active', '2022-06-27 13:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `date_of_application` varchar(255) DEFAULT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `fathers_name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `altphone_code` varchar(255) DEFAULT NULL,
  `altphone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `addedby` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `status` enum('Active','Inactive','Trash') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `application_number`, `date_of_application`, `applicant_name`, `fathers_name`, `age`, `gender`, `phone_code`, `phone`, `altphone_code`, `altphone`, `email`, `occupation`, `experience`, `income`, `permanent_address`, `present_address`, `photo`, `addedby`, `created_date`, `modified_date`, `status`) VALUES
(68, '0616', '10-09-2021', 'D. Hema', 'Dharmaraj', 28, 'Female', '+91', '8072136490', NULL, NULL, 'rameshbabu17.r@gmail.com', 'house wife / assistant professor', 5, '1500000', '39/2, first floor, ruthrappan nagar, ganapathy, coimbatore - 641006.', NULL, '62aad0e450aa4.jpg', 'Priyanka', '2022-06-16 12:12:44', NULL, 'Active'),
(67, '0396', '15-10-2021', 'sheeja K Nair', 'Sreenivasan', 48, 'Male', '+91', '9790019151', NULL, NULL, 'Sheeabbi77@gmail.com', 'senior account manager', 25, '600000', '48, bharathi nagar, 4th street, ramanathapuram, Coimbatore - 641045', NULL, '62aaca63941b7.jpg', 'Priyanka', '2022-06-16 11:44:59', NULL, 'Active'),
(66, '0366', '18-09-2021', 'Premkumar', 'Periyasamy', 30, 'Male', '+91', '9842697982', NULL, NULL, 'Premkumar016@gmail.com', 'employee', 9, '1800000', '18/625, Kongu nagar, vellakovil, senapathipalayam, kangeyam, tiruppur - 638111', NULL, '62aac4b16c504.jpg', 'Priyanka', '2022-06-16 11:20:41', NULL, 'Active'),
(65, '0563', '06-01-2022', 'Vairamuthu L', 'Lakshmanam', 32, 'Male', '+91', '9486513099', NULL, NULL, 'Vairamuthu@gmail.com', 'NRI', 8, '1000000', '170/170, Papaiyapuram, silaimalai patti, peraiyur, Madurai - 625703', NULL, '62aac17eb656f.jpg', 'Priyanka', '2022-06-16 11:07:02', NULL, 'Active'),
(64, '0109', '15-07-2021', 'S.Arun', 'Sivanandam', 29, 'Male', '+91', '9994337086', NULL, NULL, 'Aruns29@gmail.com', 'IT', 6, '1500000', 'M-17, Nethajipuram, TNHB, Neelikonampalyam, Coimbatore - 641033.', NULL, '62a821527acc0.png', 'Priyanka', '2022-06-14 11:19:06', NULL, 'Active'),
(63, '0363', '20-10-2021', 'Arunkumar PT & Priyanka Devi', 'Thirumalaisamy', 35, 'Male', '+91', '9788374204', NULL, NULL, 'priyankaarun@gmail.com', 'Doctors', 8, '2500000', '10, Yes Yes Gardens, R. Ponnapuram, Coimbatore - 642002.', NULL, '62a81d938aee0.jpg', 'Priyanka', '2022-06-14 11:03:07', NULL, 'Active'),
(62, '0605', '18-02-2022', 'Vinayakamoorthykumar', 'Kumar', 41, 'Male', '+91', '7431671076', NULL, NULL, 'Murthykumar@gmail.com', 'NRI', 20, '2500000', 'No-113, sri sai nivas, new saraswathi nagar, modern theatre backside kannankuruchi salem 636008', NULL, '628ddee7a0b4c.jpg', 'Priyanka', '2022-05-25 13:16:47', NULL, 'Active'),
(69, '0374', '29-09-2021', 'Padmavathi Ragavan', 'Ragavan', 32, 'Female', '+91', '6379983919', NULL, NULL, 'padmavathiragavan@gmail.com', NULL, NULL, NULL, 'No-30, South Street, Govindanagaram, Theni - 625517', NULL, '62b95fc961dbb.jpg', 'Priyanka', '2022-06-27 13:14:09', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `document_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `date_of_application` varchar(255) DEFAULT NULL,
  `applicant_name` varchar(255) DEFAULT NULL,
  `co_applicant_name` varchar(255) DEFAULT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `coaadhar_number` varchar(255) DEFAULT NULL,
  `coaadhar` varchar(255) DEFAULT NULL,
  `copan` varchar(255) DEFAULT NULL,
  `copan_number` varchar(255) DEFAULT NULL,
  `copassport` varchar(255) DEFAULT NULL,
  `copassport_number` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `coapp_phone_code` varchar(255) DEFAULT NULL,
  `coapp_phone` varchar(255) DEFAULT NULL,
  `coapp_address` text DEFAULT NULL,
  `coapp_email` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `refered_name` varchar(255) DEFAULT NULL,
  `refered_phone_code` varchar(255) DEFAULT NULL,
  `refered_phone` varchar(255) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `flattype` int(11) DEFAULT NULL,
  `flatnumber` int(11) DEFAULT NULL,
  `facing` varchar(255) DEFAULT NULL,
  `salable_area` varchar(255) DEFAULT NULL,
  `plinth_area` varchar(255) DEFAULT NULL,
  `uds_area` varchar(255) DEFAULT NULL,
  `comn_area` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `addedby` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`document_id`, `customer_id`, `application_number`, `date_of_application`, `applicant_name`, `co_applicant_name`, `aadhar_number`, `aadhar`, `pan_number`, `pan`, `passport`, `passport_number`, `coaadhar_number`, `coaadhar`, `copan`, `copan_number`, `copassport`, `copassport_number`, `phone_code`, `phone`, `coapp_phone_code`, `coapp_phone`, `coapp_address`, `coapp_email`, `customer_type`, `refered_name`, `refered_phone_code`, `refered_phone`, `phase`, `block`, `floor`, `flattype`, `flatnumber`, `facing`, `salable_area`, `plinth_area`, `uds_area`, `comn_area`, `status`, `addedby`, `created_date`, `modified_date`) VALUES
(38, 62, '0605', '18-02-2022', 'Vinayakamoorthykumar', 'Kannammal Power agent', '6983 2842 3886', NULL, 'ADVPV8706E', NULL, NULL, 'M4349588', '4071 6842 2823', NULL, NULL, 'BOCPK5785B', NULL, NULL, '+91', '7431671076', NULL, NULL, 'No-113, sri sai nivas, new saraswathi nagar, modern theatre backside kannankuruchi salem 636008', NULL, 'Direct', '-', '-', '-', 12, 17, 24, 40, 684, 'North', '839', '695', '316', '144', 'Active', 'Priyanka', '2022-05-25 13:19:13', NULL),
(39, 63, '0363', '20-10-2021', 'Arunkumar PT & Priyanka Devi', 'Priyanka Devi', '4714 9208 1321', NULL, 'CBJPP5115M', NULL, NULL, NULL, '7467 2021 8760', NULL, NULL, 'AMNPA6920G', NULL, NULL, '+91', '9788374204', '+91', '9843008968', '10, MGR Nagar, Suleeswaranpatti, Pollachi, Coimbatore - 642006.', NULL, 'Direct', '-', '-', '-', 12, 16, 18, 16, 377, 'East', '848', '699', '319', '149', 'Active', 'Priyanka', '2022-06-14 11:05:48', NULL),
(40, 64, '0109', '15-07-2021', 'S.Arun', NULL, '7605 2772 7175', NULL, 'BCMPA9164Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '9994337086', NULL, NULL, NULL, NULL, 'Direct', '-', '-', '-', 12, 16, 18, 16, 378, 'East', '842', '694', '317', '148', 'Active', 'Priyanka', '2022-06-14 11:21:18', NULL),
(41, 65, '0563', '06-01-2022', 'Vairamuthu L', NULL, '8980 4626 5995', NULL, 'ADXPL0789P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '9486513099', NULL, NULL, NULL, NULL, 'Direct', '-', '-', '-', 12, 16, 18, 16, 386, 'North', '843', '695', '317', '148', 'Active', 'Priyanka', '2022-06-16 11:09:03', NULL),
(42, 66, '0366', '18-09-2021', 'Premkumar', NULL, '3938 6888 1346', NULL, 'BXTPP9566P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '9842697982', NULL, NULL, NULL, NULL, 'Direct', '-', '-', '-', 12, 16, 19, 20, 395, 'East', '846', '698', '319', '148', 'Active', 'Priyanka', '2022-06-16 11:22:09', NULL),
(43, 67, '0396', '15-10-2021', 'sheeja K Nair', NULL, '7320 6457 1646', NULL, 'AHQPN2726H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '9790019151', NULL, NULL, NULL, NULL, 'Referedby', 'Geetha', 'A', '509', 12, 16, 19, 20, 397, 'East', '848', '699', '319', '149', 'Active', 'Priyanka', '2022-06-16 11:46:21', NULL),
(44, 68, '0616', '10-09-2021', 'D. Hema', NULL, '4536 1723 2838', NULL, 'AWYPH5722J', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '8072136490', NULL, NULL, NULL, NULL, 'Direct', '-', '-', '-', 12, 16, 19, 20, 396, 'East', '842', '694', '317', '148', 'Active', 'Priyanka', '2022-06-16 12:13:58', NULL),
(45, 69, '0374', '29-09-2021', 'Padmavathi Ragavan', NULL, '8521 6726 7558', NULL, 'DGYPP6426E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+91', '6379983919', NULL, NULL, NULL, NULL, 'Direct', '-', '-', '-', 12, 16, 19, 20, 399, 'East', '843', '695', '317', '148', 'Active', 'Priyanka', '2022-06-27 13:15:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `family_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`family_id`, `customer_id`, `relation`, `name`, `age`, `profession`, `school`, `class`, `status`, `created_date`, `modified_date`) VALUES
(14, '48', 'Son', '-', '-', '-', '-', '-', 'Trash', '2022-04-04 16:55:29', '0000-00-00 00:00:00'),
(15, '48', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-04 16:55:29', '0000-00-00 00:00:00'),
(16, '49', 'Son', '-', '-', '-', '-', '-', 'Trash', '2022-04-04 16:58:32', '0000-00-00 00:00:00'),
(17, '49', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-04 16:58:32', '0000-00-00 00:00:00'),
(18, '50', 'Son', '-', '-', '-', '-', '-', 'Trash', '2022-04-05 12:48:25', '0000-00-00 00:00:00'),
(19, '50', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-05 12:48:25', '0000-00-00 00:00:00'),
(20, '51', 'Son', '-', '-', '-', '-', '-', 'Trash', '2022-04-05 13:03:12', '0000-00-00 00:00:00'),
(21, '51', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-05 13:03:12', '0000-00-00 00:00:00'),
(27, '52', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-14 11:25:49', '0000-00-00 00:00:00'),
(28, '53', 'Son', '-', '-', '-', '-', '-', 'Trash', '2022-04-19 11:42:16', '0000-00-00 00:00:00'),
(29, '53', 'Daughter', '-', '-', '-', '-', '-', 'Trash', '2022-04-19 11:42:16', '0000-00-00 00:00:00'),
(32, '54', 'Son', '', '', '', '', '', 'Trash', '2022-04-21 13:38:57', '0000-00-00 00:00:00'),
(33, '54', 'Daughter', '', '', '', '', '', 'Trash', '2022-04-21 13:38:57', '0000-00-00 00:00:00'),
(34, '55', 'Son', 'jam', '25', 'employee', '-', '-', 'Active', '2022-04-21 13:41:50', '0000-00-00 00:00:00'),
(35, '55', 'Son', 'kam', '20', 'student', 'mis', '4th std', 'Active', '2022-04-21 13:41:50', '0000-00-00 00:00:00'),
(36, '55', 'Daughter', '-', '-', '-', '-', '-', 'Active', '2022-04-21 13:41:50', '0000-00-00 00:00:00'),
(53, '56', 'Son', 'jam', '25', 'student', 'MIS', '4th std', 'Active', '2022-04-21 16:55:18', '0000-00-00 00:00:00'),
(54, '56', 'Son', 'fgfg', '34', 'others', '', '', 'Active', '2022-04-21 16:55:18', '0000-00-00 00:00:00'),
(55, '56', 'Daughter', 'rtrt', '23', 'others', '', '', 'Active', '2022-04-21 16:55:18', '0000-00-00 00:00:00'),
(56, '57', 'Son', 'kamal', '25', 'student', 'MIV', '4th std', 'Active', '2022-04-26 12:37:29', '0000-00-00 00:00:00'),
(57, '57', 'Daughter', 'VImali', '20', 'Employee', '', '', 'Active', '2022-04-26 12:37:29', '0000-00-00 00:00:00'),
(60, '59', 'Son', 'mavi', '5', 'others', '', '', 'Active', '2022-04-27 11:46:19', '0000-00-00 00:00:00'),
(61, '59', 'Son', 'rishi', '2', 'others', '', '', 'Active', '2022-04-27 11:46:19', '0000-00-00 00:00:00'),
(62, '59', 'Daughter', 'nandhini', '10', 'student', 'others', '4th std', 'Active', '2022-04-27 11:46:19', '0000-00-00 00:00:00'),
(90, '58', 'Son', '', '', '', '', '', 'Active', '2022-04-27 12:32:14', '0000-00-00 00:00:00'),
(91, '58', 'Daughter', '', '', '', '', '', 'Active', '2022-04-27 12:32:14', '0000-00-00 00:00:00'),
(101, '60', 'Son', 'mari', '25', 'others', '', '', 'Active', '2022-05-14 10:41:45', '0000-00-00 00:00:00'),
(102, '60', 'Daughter', 'nivedha', '25', 'student', 'MIS', '12th std', 'Active', '2022-05-14 10:41:45', '0000-00-00 00:00:00'),
(105, '61', 'Son', '', '', '', '', '', 'Trash', '2022-05-25 12:12:50', '0000-00-00 00:00:00'),
(106, '61', 'Daughter', '', '', '', '', '', 'Trash', '2022-05-25 12:12:50', '0000-00-00 00:00:00'),
(107, '62', 'Son', '', '', '', '', '', 'Active', '2022-05-25 13:16:47', '0000-00-00 00:00:00'),
(108, '62', 'Daughter', '', '', '', '', '', 'Active', '2022-05-25 13:16:47', '0000-00-00 00:00:00'),
(109, '63', 'Son', '', '', '', '', '', 'Active', '2022-06-14 11:03:07', '0000-00-00 00:00:00'),
(110, '63', 'Daughter', '', '', '', '', '', 'Active', '2022-06-14 11:03:07', '0000-00-00 00:00:00'),
(111, '64', 'Son', '', '', '', '', '', 'Active', '2022-06-14 11:19:06', '0000-00-00 00:00:00'),
(112, '64', 'Daughter', '', '', '', '', '', 'Active', '2022-06-14 11:19:06', '0000-00-00 00:00:00'),
(113, '65', 'Son', '', '', '', '', '', 'Active', '2022-06-16 11:07:02', '0000-00-00 00:00:00'),
(114, '65', 'Daughter', '', '', '', '', '', 'Active', '2022-06-16 11:07:02', '0000-00-00 00:00:00'),
(115, '66', 'Son', '', '', '', '', '', 'Active', '2022-06-16 11:20:41', '0000-00-00 00:00:00'),
(116, '66', 'Daughter', '', '', '', '', '', 'Active', '2022-06-16 11:20:41', '0000-00-00 00:00:00'),
(117, '67', 'Son', '', '', '', '', '', 'Active', '2022-06-16 11:44:59', '0000-00-00 00:00:00'),
(118, '67', 'Daughter', '', '', '', '', '', 'Active', '2022-06-16 11:44:59', '0000-00-00 00:00:00'),
(119, '68', 'Son', '', '', '', '', '', 'Active', '2022-06-16 12:12:44', '0000-00-00 00:00:00'),
(120, '68', 'Daughter', '', '', '', '', '', 'Active', '2022-06-16 12:12:44', '0000-00-00 00:00:00'),
(121, '69', 'Son', '', '', '', '', '', 'Active', '2022-06-27 13:14:09', '0000-00-00 00:00:00'),
(122, '69', 'Daughter', '', '', '', '', '', 'Active', '2022-06-27 13:14:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `flatnumbers`
--

CREATE TABLE `flatnumbers` (
  `flatnumber_id` int(11) NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `flattype` int(11) DEFAULT NULL,
  `flatnumber` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flatnumbers`
--

INSERT INTO `flatnumbers` (`flatnumber_id`, `phase`, `block`, `floor`, `flattype`, `flatnumber`, `status`, `created_date`, `modified_date`) VALUES
(373, 12, 16, 18, 15, '110', 'Active', '2022-02-26 15:32:46', NULL),
(374, 12, 16, 18, 15, '111', 'Active', '2022-02-26 15:32:59', NULL),
(375, 12, 16, 18, 16, '101', 'Active', '2022-02-26 15:33:16', NULL),
(376, 12, 16, 18, 16, '102', 'Active', '2022-02-26 15:33:28', NULL),
(377, 12, 16, 18, 16, '103', 'Active', '2022-02-26 15:33:40', NULL),
(378, 12, 16, 18, 16, '104', 'Active', '2022-02-26 15:33:58', NULL),
(379, 12, 16, 18, 18, '105', 'Active', '2022-02-26 15:35:30', NULL),
(380, 12, 16, 18, 18, '114', 'Active', '2022-02-26 15:35:44', NULL),
(381, 12, 16, 18, 16, '108', 'Active', '2022-02-26 15:36:17', NULL),
(382, 12, 16, 18, 16, '109', 'Active', '2022-02-26 15:36:30', NULL),
(383, 12, 16, 18, 16, '113', 'Active', '2022-02-26 15:37:08', NULL),
(384, 12, 16, 18, 16, '112', 'Active', '2022-02-26 15:38:04', NULL),
(385, 12, 16, 18, 16, '118', 'Active', '2022-02-26 15:38:19', '2022-02-26 15:38:40'),
(386, 12, 16, 18, 16, '117', 'Active', '2022-02-26 15:38:33', NULL),
(387, 12, 16, 18, 16, '119', 'Active', '2022-02-26 15:38:51', NULL),
(388, 12, 16, 18, 17, '120', 'Active', '2022-02-26 15:39:04', NULL),
(389, 12, 16, 19, 19, '210', 'Active', '2022-02-26 15:42:38', NULL),
(390, 12, 16, 19, 19, '211', 'Active', '2022-02-26 15:42:50', NULL),
(391, 12, 16, 19, 22, '205', 'Active', '2022-02-26 15:43:07', NULL),
(392, 12, 16, 19, 22, '216', 'Active', '2022-02-26 15:43:21', NULL),
(393, 12, 16, 19, 21, '220', 'Active', '2022-02-26 15:44:08', NULL),
(394, 12, 16, 19, 20, '201', 'Active', '2022-02-26 15:44:46', NULL),
(395, 12, 16, 19, 20, '202', 'Active', '2022-02-26 15:45:22', NULL),
(396, 12, 16, 19, 20, '204', 'Active', '2022-02-26 15:45:39', '2022-02-26 15:46:02'),
(397, 12, 16, 19, 20, '203', 'Active', '2022-02-26 15:45:54', NULL),
(398, 12, 16, 19, 20, '208', 'Active', '2022-02-26 15:46:22', NULL),
(399, 12, 16, 19, 20, '209', 'Active', '2022-02-26 15:46:38', NULL),
(400, 12, 16, 19, 20, '212', 'Active', '2022-02-26 15:47:00', NULL),
(401, 12, 16, 19, 20, '213', 'Active', '2022-02-26 15:47:11', NULL),
(402, 12, 16, 19, 20, '217', 'Active', '2022-02-26 15:47:26', NULL),
(403, 12, 16, 19, 20, '218', 'Active', '2022-02-26 15:47:36', NULL),
(404, 12, 16, 19, 20, '219', 'Active', '2022-02-26 15:47:53', NULL),
(405, 12, 16, 20, 23, '310', 'Active', '2022-02-26 15:48:21', NULL),
(406, 12, 16, 20, 23, '311', 'Active', '2022-02-26 15:48:34', NULL),
(407, 12, 16, 21, 27, '410', 'Active', '2022-02-26 15:48:49', NULL),
(408, 12, 16, 21, 27, '411', 'Active', '2022-02-26 15:49:40', '2022-02-26 15:50:34'),
(409, 12, 16, 22, 33, '520', 'Active', '2022-02-26 15:49:58', '2022-02-26 15:51:12'),
(410, 12, 16, 22, 31, '510', 'Active', '2022-02-26 15:50:10', NULL),
(411, 12, 16, 22, 31, '511', 'Active', '2022-02-26 15:50:21', NULL),
(412, 12, 16, 20, 25, '320', 'Active', '2022-02-26 15:53:12', NULL),
(413, 12, 16, 21, 29, '420', 'Active', '2022-02-26 15:53:58', NULL),
(414, 12, 16, 20, 26, '306', 'Active', '2022-02-26 15:54:49', NULL),
(415, 12, 16, 20, 26, '316', 'Active', '2022-02-26 15:55:04', NULL),
(416, 12, 16, 21, 30, '406', 'Active', '2022-02-26 15:55:29', NULL),
(417, 12, 16, 22, 34, '506', 'Active', '2022-02-26 15:55:40', '2022-02-26 15:56:08'),
(418, 12, 16, 21, 30, '416', 'Active', '2022-02-26 15:55:51', NULL),
(419, 12, 16, 22, 34, '516', 'Active', '2022-02-26 15:56:20', NULL),
(420, 12, 16, 20, 24, '301', 'Active', '2022-02-26 15:56:48', NULL),
(421, 12, 16, 20, 24, '302', 'Active', '2022-02-26 15:57:00', NULL),
(422, 12, 16, 20, 24, '303', 'Active', '2022-02-26 15:57:11', NULL),
(423, 12, 16, 20, 24, '304', 'Active', '2022-02-26 15:57:26', NULL),
(424, 12, 16, 20, 24, '308', 'Active', '2022-02-26 15:57:46', NULL),
(425, 12, 16, 20, 24, '309', 'Active', '2022-02-26 15:57:59', NULL),
(426, 12, 16, 20, 24, '312', 'Active', '2022-02-26 15:58:12', NULL),
(427, 12, 16, 20, 24, '313', 'Active', '2022-02-26 15:58:25', NULL),
(428, 12, 16, 20, 24, '317', 'Active', '2022-02-26 15:58:47', NULL),
(429, 12, 16, 20, 24, '318', 'Active', '2022-02-26 15:59:01', NULL),
(430, 12, 16, 20, 24, '319', 'Active', '2022-02-26 15:59:16', NULL),
(431, 12, 16, 21, 28, '401', 'Active', '2022-02-26 15:59:38', NULL),
(432, 12, 16, 21, 28, '402', 'Active', '2022-02-26 15:59:51', NULL),
(433, 12, 16, 21, 28, '403', 'Active', '2022-02-26 16:00:09', NULL),
(434, 12, 16, 21, 28, '405', 'Active', '2022-02-26 16:00:26', NULL),
(435, 12, 16, 21, 28, '408', 'Active', '2022-02-26 16:00:41', NULL),
(436, 12, 16, 21, 28, '409', 'Active', '2022-02-26 16:00:55', NULL),
(437, 12, 16, 21, 28, '412', 'Active', '2022-02-26 16:01:09', NULL),
(438, 12, 16, 21, 28, '414', 'Active', '2022-02-26 16:01:23', NULL),
(439, 12, 16, 21, 28, '417', 'Active', '2022-02-26 16:01:36', NULL),
(440, 12, 16, 21, 28, '418', 'Active', '2022-02-26 16:01:59', NULL),
(441, 12, 16, 21, 28, '419', 'Active', '2022-02-26 16:02:14', NULL),
(442, 12, 16, 22, 32, '501', 'Active', '2022-02-26 16:02:38', NULL),
(443, 12, 16, 22, 32, '502', 'Active', '2022-02-26 16:02:49', NULL),
(444, 12, 16, 22, 32, '504', 'Active', '2022-02-26 16:03:06', NULL),
(445, 12, 16, 22, 32, '505', 'Active', '2022-02-26 16:03:20', NULL),
(446, 12, 16, 22, 32, '508', 'Active', '2022-02-26 16:03:39', NULL),
(447, 12, 16, 22, 32, '509', 'Active', '2022-02-26 16:03:54', NULL),
(448, 12, 16, 22, 32, '513', 'Active', '2022-02-26 16:04:11', NULL),
(449, 12, 16, 22, 32, '514', 'Active', '2022-02-26 16:04:25', NULL),
(450, 12, 16, 22, 32, '517', 'Active', '2022-02-26 16:04:42', NULL),
(451, 12, 16, 22, 32, '518', 'Active', '2022-02-26 16:04:55', NULL),
(452, 12, 16, 22, 32, '519', 'Active', '2022-02-26 16:05:08', NULL),
(453, 12, 20, 38, 105, '101', 'Active', '2022-02-26 16:06:03', NULL),
(454, 12, 20, 38, 106, '114', 'Active', '2022-02-26 16:06:34', NULL),
(455, 12, 20, 38, 109, '108', 'Active', '2022-02-26 16:06:56', NULL),
(456, 12, 20, 38, 108, '106', 'Active', '2022-02-26 16:07:15', NULL),
(457, 12, 20, 38, 108, '110', 'Active', '2022-02-26 16:07:28', NULL),
(458, 12, 20, 38, 108, '109', 'Active', '2022-02-26 16:07:43', NULL),
(459, 12, 20, 38, 107, '102', 'Active', '2022-02-26 16:08:19', NULL),
(460, 12, 20, 38, 107, '103', 'Active', '2022-02-26 16:08:33', NULL),
(461, 12, 20, 38, 107, '104', 'Active', '2022-02-26 16:08:45', NULL),
(462, 12, 20, 38, 107, '105', 'Active', '2022-02-26 16:08:58', NULL),
(463, 12, 20, 38, 107, '111', 'Active', '2022-02-26 16:09:26', NULL),
(464, 12, 20, 38, 107, '112', 'Active', '2022-02-26 16:09:41', NULL),
(465, 12, 20, 38, 107, '113', 'Active', '2022-02-26 16:09:53', NULL),
(466, 12, 20, 39, 112, '202', 'Active', '2022-02-26 16:10:17', NULL),
(467, 12, 20, 39, 112, '203', 'Active', '2022-02-26 16:10:32', NULL),
(468, 12, 20, 39, 112, '204', 'Active', '2022-02-26 16:10:48', NULL),
(469, 12, 20, 39, 112, '205', 'Active', '2022-02-26 16:11:02', NULL),
(470, 12, 20, 39, 112, '211', 'Active', '2022-02-26 16:12:45', NULL),
(471, 12, 20, 39, 112, '212', 'Active', '2022-02-26 16:13:03', NULL),
(472, 12, 20, 39, 112, '213', 'Active', '2022-02-26 16:13:17', NULL),
(473, 12, 20, 39, 110, '201', 'Active', '2022-02-26 16:13:34', NULL),
(474, 12, 20, 39, 111, '214', 'Active', '2022-02-26 16:13:48', NULL),
(475, 12, 20, 39, 114, '208', 'Active', '2022-02-26 16:14:09', NULL),
(476, 12, 20, 39, 113, '207', 'Active', '2022-02-26 16:14:42', NULL),
(477, 12, 20, 39, 113, '209', 'Active', '2022-02-26 16:15:00', NULL),
(478, 12, 20, 39, 113, '210', 'Active', '2022-02-26 16:15:15', NULL),
(479, 12, 20, 40, 115, '301', 'Active', '2022-02-26 16:15:47', NULL),
(480, 12, 20, 40, 116, '314', 'Active', '2022-02-26 16:16:11', NULL),
(481, 12, 20, 40, 117, '302', 'Active', '2022-02-26 16:16:24', NULL),
(482, 12, 20, 40, 117, '303', 'Active', '2022-02-26 16:16:39', NULL),
(483, 12, 20, 40, 117, '304', 'Active', '2022-02-26 16:16:54', NULL),
(484, 12, 20, 40, 117, '306', 'Active', '2022-02-26 16:17:07', NULL),
(485, 12, 20, 40, 117, '311', 'Active', '2022-02-26 16:17:19', NULL),
(486, 12, 20, 40, 117, '312', 'Active', '2022-02-26 16:17:35', NULL),
(487, 12, 20, 40, 117, '313', 'Active', '2022-02-26 16:17:51', NULL),
(488, 12, 20, 40, 118, '307', 'Active', '2022-02-26 16:18:25', NULL),
(489, 12, 20, 40, 118, '309', 'Active', '2022-02-26 16:18:37', NULL),
(490, 12, 20, 40, 118, '310', 'Active', '2022-02-26 16:18:56', NULL),
(491, 12, 20, 40, 119, '308', 'Active', '2022-02-26 16:19:14', NULL),
(492, 12, 20, 41, 124, '408', 'Active', '2022-02-26 16:20:21', NULL),
(493, 12, 20, 41, 123, '407', 'Active', '2022-02-26 16:20:39', NULL),
(494, 12, 20, 41, 123, '409', 'Active', '2022-02-26 16:20:55', NULL),
(495, 12, 20, 41, 123, '410', 'Active', '2022-02-26 16:21:58', NULL),
(496, 12, 20, 41, 120, '401', 'Active', '2022-02-26 16:22:26', NULL),
(497, 12, 20, 41, 121, '415', 'Active', '2022-02-26 16:22:44', NULL),
(498, 12, 20, 41, 122, '402', 'Active', '2022-02-26 16:22:59', NULL),
(499, 12, 20, 41, 122, '403', 'Active', '2022-02-26 16:23:13', NULL),
(500, 12, 20, 41, 122, '405', 'Active', '2022-02-26 16:23:26', NULL),
(501, 12, 20, 41, 122, '406', 'Active', '2022-02-26 16:23:39', NULL),
(502, 12, 20, 41, 122, '411', 'Active', '2022-02-26 16:23:51', NULL),
(503, 12, 20, 41, 122, '412', 'Active', '2022-02-26 16:24:04', NULL),
(504, 12, 20, 41, 122, '414', 'Active', '2022-02-26 16:24:23', NULL),
(505, 12, 20, 42, 125, '501', 'Active', '2022-02-26 16:24:54', NULL),
(506, 12, 20, 42, 126, '515', 'Active', '2022-02-26 16:25:08', NULL),
(507, 12, 20, 42, 127, '502', 'Active', '2022-02-26 16:25:21', NULL),
(508, 12, 20, 42, 127, '504', 'Active', '2022-02-26 16:26:16', NULL),
(509, 12, 20, 42, 127, '505', 'Active', '2022-02-26 16:26:28', NULL),
(510, 12, 20, 42, 127, '506', 'Active', '2022-02-26 16:26:40', NULL),
(511, 12, 20, 42, 127, '511', 'Active', '2022-02-26 16:26:54', NULL),
(512, 12, 20, 42, 127, '513', 'Active', '2022-02-26 16:27:08', NULL),
(513, 12, 20, 42, 127, '514', 'Active', '2022-02-26 16:27:20', NULL),
(514, 12, 20, 42, 128, '507', 'Active', '2022-02-26 16:27:55', NULL),
(515, 12, 20, 42, 128, '509', 'Active', '2022-02-26 16:28:06', NULL),
(516, 12, 20, 42, 128, '510', 'Active', '2022-02-26 16:28:19', NULL),
(517, 12, 20, 42, 129, '508', 'Active', '2022-02-26 16:28:34', NULL),
(518, 12, 19, 33, 80, '101', 'Active', '2022-02-28 11:33:15', NULL),
(519, 12, 19, 33, 81, '115', 'Active', '2022-02-28 11:33:31', NULL),
(520, 12, 19, 33, 84, '108', 'Active', '2022-02-28 11:34:02', NULL),
(521, 12, 19, 33, 83, '106', 'Active', '2022-02-28 11:34:16', NULL),
(522, 12, 19, 33, 83, '109', 'Active', '2022-02-28 11:34:32', NULL),
(523, 12, 19, 33, 83, '110', 'Active', '2022-02-28 11:34:44', NULL),
(524, 12, 19, 33, 82, '102', 'Active', '2022-02-28 11:35:05', NULL),
(525, 12, 19, 33, 82, '103', 'Active', '2022-02-28 11:35:24', '2022-02-28 11:35:30'),
(526, 12, 19, 33, 82, '104', 'Active', '2022-02-28 11:35:44', NULL),
(527, 12, 19, 33, 82, '105', 'Active', '2022-02-28 11:35:56', NULL),
(528, 12, 19, 33, 82, '111', 'Active', '2022-02-28 11:36:10', NULL),
(529, 12, 19, 33, 82, '112', 'Active', '2022-02-28 11:36:22', NULL),
(530, 12, 19, 33, 82, '113', 'Active', '2022-02-28 11:36:36', NULL),
(531, 12, 19, 33, 82, '114', 'Active', '2022-02-28 11:36:48', NULL),
(532, 12, 19, 34, 85, '201', 'Active', '2022-02-28 11:37:12', NULL),
(533, 12, 19, 34, 86, '216', 'Active', '2022-02-28 11:37:24', NULL),
(534, 12, 19, 34, 87, '202', 'Active', '2022-02-28 11:37:43', NULL),
(535, 12, 19, 34, 87, '203', 'Active', '2022-02-28 11:37:56', NULL),
(536, 12, 19, 34, 87, '204', 'Active', '2022-02-28 11:38:08', NULL),
(537, 12, 19, 34, 87, '205', 'Active', '2022-02-28 11:38:20', NULL),
(538, 12, 19, 34, 87, '211', 'Active', '2022-02-28 11:38:36', NULL),
(539, 12, 19, 34, 87, '212', 'Active', '2022-02-28 11:38:48', NULL),
(540, 12, 19, 34, 87, '213', 'Active', '2022-02-28 11:44:42', NULL),
(541, 12, 19, 34, 87, '214', 'Active', '2022-02-28 11:44:54', NULL),
(542, 12, 19, 34, 88, '207', 'Active', '2022-02-28 11:45:16', NULL),
(543, 12, 19, 34, 88, '209', 'Active', '2022-02-28 11:45:51', NULL),
(544, 12, 19, 34, 88, '210', 'Active', '2022-02-28 11:46:21', NULL),
(545, 12, 19, 34, 89, '208', 'Active', '2022-02-28 11:46:35', NULL),
(546, 12, 19, 35, 93, '307', 'Active', '2022-02-28 11:46:54', NULL),
(547, 12, 19, 35, 93, '309', 'Active', '2022-02-28 11:47:07', NULL),
(548, 12, 19, 35, 93, '310', 'Active', '2022-02-28 11:47:22', NULL),
(549, 12, 19, 35, 94, '308', 'Active', '2022-02-28 11:47:37', '2022-02-28 11:47:42'),
(550, 12, 19, 35, 92, '302', 'Active', '2022-02-28 11:48:01', NULL),
(551, 12, 19, 35, 92, '303', 'Active', '2022-02-28 11:48:15', NULL),
(552, 12, 19, 35, 92, '304', 'Active', '2022-02-28 11:48:28', NULL),
(553, 12, 19, 35, 92, '306', 'Active', '2022-02-28 11:48:40', NULL),
(554, 12, 19, 35, 92, '311', 'Active', '2022-02-28 11:48:54', NULL),
(555, 12, 19, 35, 92, '312', 'Active', '2022-02-28 11:49:07', NULL),
(556, 12, 19, 35, 92, '313', 'Active', '2022-02-28 11:49:20', NULL),
(557, 12, 19, 35, 92, '315', 'Active', '2022-02-28 11:49:37', NULL),
(558, 12, 19, 35, 90, '301', 'Active', '2022-02-28 11:49:53', NULL),
(559, 12, 19, 35, 91, '316', 'Active', '2022-02-28 11:50:06', NULL),
(560, 12, 19, 36, 95, '401', 'Active', '2022-02-28 11:50:21', NULL),
(561, 12, 19, 36, 96, '416', 'Active', '2022-02-28 11:50:37', NULL),
(562, 12, 19, 36, 97, '402', 'Active', '2022-02-28 11:51:45', NULL),
(563, 12, 19, 36, 97, '403', 'Active', '2022-02-28 11:51:57', NULL),
(564, 12, 19, 36, 97, '405', 'Active', '2022-02-28 11:52:09', NULL),
(565, 12, 19, 36, 97, '406', 'Active', '2022-02-28 11:52:21', NULL),
(566, 12, 19, 36, 97, '411', 'Active', '2022-02-28 11:52:37', NULL),
(567, 12, 19, 36, 97, '412', 'Active', '2022-02-28 11:52:56', NULL),
(568, 12, 19, 36, 97, '414', 'Active', '2022-02-28 11:53:11', NULL),
(569, 12, 19, 36, 97, '415', 'Active', '2022-02-28 11:53:24', NULL),
(570, 12, 19, 36, 98, '407', 'Active', '2022-02-28 11:54:00', NULL),
(571, 12, 19, 36, 98, '409', 'Active', '2022-02-28 11:54:12', NULL),
(572, 12, 19, 36, 98, '410', 'Active', '2022-02-28 11:54:25', NULL),
(573, 12, 19, 36, 99, '408', 'Active', '2022-02-28 11:54:37', NULL),
(574, 12, 19, 37, 100, '501', 'Active', '2022-02-28 11:55:00', NULL),
(575, 12, 19, 37, 101, '516', 'Active', '2022-02-28 11:55:21', NULL),
(576, 12, 19, 37, 102, '502', 'Active', '2022-02-28 11:55:45', NULL),
(577, 12, 19, 37, 102, '504', 'Active', '2022-02-28 11:56:00', NULL),
(578, 12, 19, 37, 102, '505', 'Active', '2022-02-28 11:56:15', NULL),
(579, 12, 19, 37, 102, '506', 'Active', '2022-02-28 11:56:28', NULL),
(580, 12, 19, 37, 102, '511', 'Active', '2022-02-28 11:56:45', NULL),
(581, 12, 19, 37, 102, '513', 'Active', '2022-02-28 11:57:01', NULL),
(582, 12, 19, 37, 102, '514', 'Active', '2022-02-28 11:57:13', NULL),
(583, 12, 19, 37, 102, '515', 'Active', '2022-02-28 11:57:33', NULL),
(584, 12, 19, 37, 103, '507', 'Active', '2022-02-28 11:57:54', NULL),
(585, 12, 19, 37, 103, '509', 'Active', '2022-02-28 11:58:08', NULL),
(586, 12, 19, 37, 103, '510', 'Active', '2022-02-28 11:58:22', NULL),
(587, 12, 19, 37, 104, '508', 'Active', '2022-02-28 11:58:38', NULL),
(588, 12, 18, 28, 55, '101', 'Active', '2022-02-28 12:00:41', NULL),
(589, 12, 18, 28, 56, '115', 'Active', '2022-02-28 12:00:56', NULL),
(590, 12, 18, 28, 57, '102', 'Active', '2022-02-28 12:01:12', NULL),
(591, 12, 18, 28, 57, '103', 'Active', '2022-02-28 12:01:25', NULL),
(592, 12, 18, 28, 57, '104', 'Active', '2022-02-28 12:01:37', NULL),
(593, 12, 18, 28, 57, '105', 'Active', '2022-02-28 12:01:57', NULL),
(594, 12, 18, 28, 57, '111', 'Active', '2022-02-28 12:02:11', NULL),
(595, 12, 18, 28, 57, '112', 'Active', '2022-02-28 12:02:22', NULL),
(596, 12, 18, 28, 57, '113', 'Active', '2022-02-28 12:02:34', NULL),
(597, 12, 18, 28, 57, '114', 'Active', '2022-02-28 12:02:51', NULL),
(598, 12, 18, 28, 58, '106', 'Active', '2022-02-28 12:03:12', NULL),
(599, 12, 18, 28, 58, '109', 'Active', '2022-02-28 12:03:25', NULL),
(600, 12, 18, 28, 58, '110', 'Active', '2022-02-28 12:03:44', NULL),
(601, 12, 18, 28, 59, '108', 'Active', '2022-02-28 12:03:58', NULL),
(602, 12, 18, 29, 60, '201', 'Active', '2022-02-28 12:04:15', NULL),
(603, 12, 18, 29, 61, '216', 'Active', '2022-02-28 12:04:27', NULL),
(604, 12, 18, 29, 62, '202', 'Active', '2022-02-28 12:04:43', NULL),
(605, 12, 18, 29, 62, '203', 'Active', '2022-02-28 12:04:58', NULL),
(606, 12, 18, 29, 62, '204', 'Active', '2022-02-28 12:05:13', NULL),
(607, 12, 18, 29, 62, '205', 'Active', '2022-02-28 12:05:27', NULL),
(608, 12, 18, 29, 62, '211', 'Active', '2022-02-28 12:05:39', NULL),
(609, 12, 18, 29, 62, '212', 'Active', '2022-02-28 12:05:51', NULL),
(610, 12, 18, 29, 62, '213', 'Active', '2022-02-28 12:06:05', NULL),
(611, 12, 18, 29, 62, '214', 'Active', '2022-02-28 12:06:19', NULL),
(612, 12, 18, 29, 63, '207', 'Active', '2022-02-28 12:06:36', NULL),
(613, 12, 18, 29, 63, '209', 'Active', '2022-02-28 12:06:54', NULL),
(614, 12, 18, 29, 63, '210', 'Active', '2022-02-28 12:07:14', NULL),
(615, 12, 18, 29, 64, '208', 'Active', '2022-02-28 12:07:31', NULL),
(616, 12, 18, 30, 65, '301', 'Active', '2022-02-28 12:08:00', NULL),
(617, 12, 18, 31, 70, '401', 'Active', '2022-02-28 12:08:14', NULL),
(618, 12, 18, 32, 75, '501', 'Active', '2022-02-28 12:08:29', NULL),
(619, 12, 18, 30, 66, '316', 'Active', '2022-02-28 12:08:49', NULL),
(620, 12, 18, 31, 71, '416', 'Active', '2022-02-28 12:09:05', NULL),
(621, 12, 18, 32, 76, '516', 'Active', '2022-02-28 12:09:19', NULL),
(622, 12, 18, 30, 67, '302', 'Active', '2022-02-28 12:09:38', NULL),
(623, 12, 18, 30, 67, '303', 'Active', '2022-02-28 12:09:57', NULL),
(624, 12, 18, 30, 67, '304', 'Active', '2022-02-28 12:10:13', NULL),
(625, 12, 18, 30, 67, '306', 'Active', '2022-02-28 12:10:33', NULL),
(626, 12, 18, 30, 67, '311', 'Active', '2022-02-28 12:10:48', NULL),
(627, 12, 18, 30, 67, '312', 'Active', '2022-02-28 12:11:03', NULL),
(628, 12, 18, 30, 67, '313', 'Active', '2022-02-28 12:11:36', NULL),
(629, 12, 18, 30, 67, '315', 'Active', '2022-02-28 12:11:57', NULL),
(630, 12, 18, 31, 72, '402', 'Active', '2022-02-28 12:12:15', NULL),
(631, 12, 18, 31, 72, '403', 'Active', '2022-02-28 12:12:28', NULL),
(632, 12, 18, 31, 72, '405', 'Active', '2022-02-28 12:12:42', NULL),
(633, 12, 18, 31, 72, '406', 'Active', '2022-02-28 12:12:58', NULL),
(634, 12, 18, 31, 72, '411', 'Active', '2022-02-28 12:13:14', NULL),
(635, 12, 18, 31, 72, '412', 'Active', '2022-02-28 12:13:27', NULL),
(636, 12, 18, 31, 72, '414', 'Active', '2022-02-28 12:13:43', NULL),
(637, 12, 18, 31, 72, '415', 'Active', '2022-02-28 12:13:56', NULL),
(638, 12, 18, 32, 77, '502', 'Active', '2022-02-28 12:14:12', NULL),
(639, 12, 18, 32, 77, '504', 'Active', '2022-02-28 12:14:26', NULL),
(640, 12, 18, 32, 77, '505', 'Active', '2022-02-28 12:14:56', NULL),
(641, 12, 18, 32, 77, '506', 'Active', '2022-02-28 12:15:12', NULL),
(642, 12, 18, 32, 77, '511', 'Active', '2022-02-28 12:15:29', NULL),
(643, 12, 18, 32, 77, '513', 'Active', '2022-02-28 12:15:48', NULL),
(644, 12, 18, 32, 77, '514', 'Active', '2022-02-28 12:16:18', NULL),
(645, 12, 18, 32, 77, '515', 'Active', '2022-02-28 12:16:35', NULL),
(646, 12, 18, 30, 68, '307', 'Active', '2022-02-28 12:17:14', NULL),
(647, 12, 18, 30, 68, '309', 'Active', '2022-02-28 12:17:27', NULL),
(648, 12, 18, 30, 68, '310', 'Active', '2022-02-28 12:17:42', NULL),
(649, 12, 18, 30, 69, '308', 'Active', '2022-02-28 12:18:00', NULL),
(650, 12, 18, 30, 68, '407', 'Active', '2022-02-28 12:18:21', NULL),
(651, 12, 18, 31, 73, '409', 'Active', '2022-02-28 12:18:46', NULL),
(652, 12, 18, 31, 73, '410', 'Active', '2022-02-28 12:19:01', NULL),
(653, 12, 18, 31, 74, '408', 'Active', '2022-02-28 12:19:27', NULL),
(654, 12, 18, 32, 78, '507', 'Active', '2022-02-28 12:19:51', NULL),
(655, 12, 18, 32, 78, '509', 'Active', '2022-02-28 12:20:08', NULL),
(656, 12, 18, 32, 78, '510', 'Active', '2022-02-28 12:20:41', NULL),
(657, 12, 18, 32, 79, '508', 'Active', '2022-02-28 12:20:56', NULL),
(658, 12, 17, 23, 36, '101', 'Active', '2022-03-01 11:04:44', NULL),
(659, 12, 17, 23, 36, '102', 'Active', '2022-03-01 11:04:56', NULL),
(660, 12, 17, 23, 36, '103', 'Active', '2022-03-01 11:05:08', NULL),
(661, 12, 17, 23, 36, '104', 'Active', '2022-03-01 11:05:19', NULL),
(662, 12, 17, 23, 36, '114', 'Active', '2022-03-01 11:05:33', NULL),
(663, 12, 17, 23, 36, '115', 'Active', '2022-03-01 11:05:46', NULL),
(664, 12, 17, 23, 36, '117', 'Active', '2022-03-01 11:05:59', NULL),
(665, 12, 17, 23, 36, '106', 'Active', '2022-03-01 11:06:14', NULL),
(666, 12, 17, 23, 36, '108', 'Active', '2022-03-01 11:06:27', NULL),
(667, 12, 17, 23, 36, '111', 'Active', '2022-03-01 11:06:40', NULL),
(668, 12, 17, 23, 36, '112', 'Active', '2022-03-01 11:06:52', NULL),
(669, 12, 17, 23, 35, '109', 'Active', '2022-03-01 11:07:15', NULL),
(670, 12, 17, 23, 35, '110', 'Active', '2022-03-01 11:07:27', NULL),
(671, 12, 17, 23, 38, '105', 'Active', '2022-03-01 11:07:50', NULL),
(672, 12, 17, 23, 38, '113', 'Active', '2022-03-01 11:08:03', NULL),
(673, 12, 17, 23, 37, '118', 'Active', '2022-03-01 11:08:24', NULL),
(674, 12, 17, 24, 40, '201', 'Active', '2022-03-01 11:08:37', NULL),
(675, 12, 17, 24, 40, '202', 'Active', '2022-03-01 11:08:48', NULL),
(676, 12, 17, 24, 40, '203', 'Active', '2022-03-01 11:08:58', NULL),
(677, 12, 17, 24, 40, '204', 'Active', '2022-03-01 11:09:10', NULL),
(678, 12, 17, 24, 40, '214', 'Active', '2022-03-01 11:09:23', NULL),
(679, 12, 17, 24, 40, '216', 'Active', '2022-03-01 11:09:34', NULL),
(680, 12, 17, 24, 40, '217', 'Active', '2022-03-01 11:09:46', NULL),
(681, 12, 17, 24, 40, '207', 'Active', '2022-03-01 11:10:02', NULL),
(682, 12, 17, 24, 40, '208', 'Active', '2022-03-01 11:10:14', NULL),
(683, 12, 17, 24, 40, '212', 'Active', '2022-03-01 11:10:28', NULL),
(684, 12, 17, 24, 40, '211', 'Active', '2022-03-01 11:10:48', NULL),
(685, 12, 17, 24, 39, '209', 'Active', '2022-03-01 11:11:00', NULL),
(686, 12, 17, 24, 39, '210', 'Active', '2022-03-01 11:11:27', '2022-03-01 11:11:33'),
(687, 12, 17, 24, 42, '205', 'Active', '2022-03-01 11:11:50', NULL),
(688, 12, 17, 24, 42, '213', 'Active', '2022-03-01 11:12:01', NULL),
(689, 12, 17, 24, 41, '218', 'Active', '2022-03-01 11:12:14', NULL),
(690, 12, 17, 25, 44, '301', 'Active', '2022-03-01 11:12:31', NULL),
(691, 12, 17, 25, 44, '302', 'Active', '2022-03-01 11:12:43', NULL),
(692, 12, 17, 25, 44, '303', 'Active', '2022-03-01 11:12:54', NULL),
(693, 12, 17, 25, 44, '304', 'Active', '2022-03-01 11:13:09', NULL),
(694, 12, 17, 25, 44, '315', 'Active', '2022-03-01 11:13:20', NULL),
(695, 12, 17, 25, 44, '316', 'Active', '2022-03-01 11:13:31', NULL),
(696, 12, 17, 25, 44, '317', 'Active', '2022-03-01 11:13:44', NULL),
(697, 12, 17, 25, 44, '307', 'Active', '2022-03-01 11:14:46', NULL),
(698, 12, 17, 25, 44, '308', 'Active', '2022-03-01 11:14:57', NULL),
(699, 12, 17, 25, 44, '311', 'Active', '2022-03-01 11:15:09', NULL),
(700, 12, 17, 25, 44, '312', 'Active', '2022-03-01 11:15:22', NULL),
(701, 12, 17, 25, 43, '309', 'Active', '2022-03-01 11:15:35', NULL),
(702, 12, 17, 25, 43, '310', 'Active', '2022-03-01 11:15:46', NULL),
(703, 12, 17, 25, 46, '306', 'Active', '2022-03-01 11:16:00', NULL),
(704, 12, 17, 25, 46, '313', 'Active', '2022-03-01 11:16:13', NULL),
(705, 12, 17, 25, 45, '318', 'Active', '2022-03-01 11:16:28', NULL),
(706, 12, 17, 26, 48, '401', 'Active', '2022-03-01 11:16:45', NULL),
(707, 12, 17, 26, 48, '402', 'Active', '2022-03-01 11:16:59', NULL),
(708, 12, 17, 26, 48, '403', 'Active', '2022-03-01 11:17:13', NULL),
(709, 12, 17, 26, 48, '405', 'Active', '2022-03-01 11:17:26', NULL),
(710, 12, 17, 26, 48, '415', 'Active', '2022-03-01 11:17:40', NULL),
(711, 12, 17, 26, 48, '416', 'Active', '2022-03-01 11:17:54', NULL),
(712, 12, 17, 26, 48, '417', 'Active', '2022-03-01 11:18:07', NULL),
(713, 12, 17, 26, 48, '407', 'Active', '2022-03-01 11:18:22', NULL),
(714, 12, 17, 26, 48, '408', 'Active', '2022-03-01 11:18:35', NULL),
(715, 12, 17, 26, 48, '411', 'Active', '2022-03-01 11:18:48', NULL),
(716, 12, 17, 26, 48, '412', 'Active', '2022-03-01 11:19:04', NULL),
(717, 12, 17, 26, 47, '409', 'Active', '2022-03-01 11:19:21', NULL),
(718, 12, 17, 26, 47, '410', 'Active', '2022-03-01 11:19:34', NULL),
(719, 12, 17, 26, 50, '406', 'Active', '2022-03-01 11:19:47', NULL),
(720, 12, 17, 26, 50, '414', 'Active', '2022-03-01 11:20:01', NULL),
(721, 12, 17, 26, 49, '418', 'Active', '2022-03-01 11:20:18', NULL),
(722, 12, 17, 27, 52, '501', 'Active', '2022-03-01 11:20:34', NULL),
(723, 12, 17, 27, 52, '502', 'Active', '2022-03-01 11:20:45', NULL),
(724, 12, 17, 27, 52, '504', 'Active', '2022-03-01 11:20:57', NULL),
(725, 12, 17, 27, 52, '505', 'Active', '2022-03-01 11:21:14', NULL),
(726, 12, 17, 27, 52, '515', 'Active', '2022-03-01 11:21:30', NULL),
(727, 12, 17, 27, 52, '516', 'Active', '2022-03-01 11:21:44', NULL),
(728, 12, 17, 27, 52, '517', 'Active', '2022-03-01 11:22:00', NULL),
(729, 12, 17, 27, 52, '507', 'Active', '2022-03-01 11:22:23', NULL),
(730, 12, 17, 27, 52, '508', 'Active', '2022-03-01 11:22:36', NULL),
(731, 12, 17, 27, 52, '511', 'Active', '2022-03-01 11:22:49', NULL),
(732, 12, 17, 27, 52, '513', 'Active', '2022-03-01 11:23:01', NULL),
(733, 12, 17, 27, 51, '509', 'Active', '2022-03-01 11:23:15', NULL),
(734, 12, 17, 27, 51, '510', 'Active', '2022-03-01 11:23:29', NULL),
(735, 12, 17, 27, 54, '506', 'Active', '2022-03-01 11:23:41', NULL),
(736, 12, 17, 27, 54, '514', 'Active', '2022-03-01 11:23:54', NULL),
(737, 12, 17, 27, 53, '518', 'Active', '2022-03-01 11:24:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flattypes`
--

CREATE TABLE `flattypes` (
  `flattype_id` int(11) NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `flattype` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flattypes`
--

INSERT INTO `flattypes` (`flattype_id`, `phase`, `block`, `floor`, `flattype`, `status`, `created_date`, `modified_date`) VALUES
(15, 12, 16, 18, '1 BHK', 'Active', '2022-02-26 12:57:21', NULL),
(16, 12, 16, 18, '2 BHK', 'Active', '2022-02-26 12:58:12', NULL),
(17, 12, 16, 18, '2 BHK P', 'Active', '2022-02-26 12:58:38', NULL),
(18, 12, 16, 18, '3 BHK', 'Active', '2022-02-26 12:58:53', NULL),
(19, 12, 16, 19, '1 BHK', 'Active', '2022-02-26 12:59:53', NULL),
(20, 12, 16, 19, '2 BHK', 'Active', '2022-02-26 13:00:07', NULL),
(21, 12, 16, 19, '2 BHK P', 'Active', '2022-02-26 13:00:23', NULL),
(22, 12, 16, 19, '3 BHK', 'Active', '2022-02-26 13:00:34', NULL),
(23, 12, 16, 20, '1 BHK', 'Active', '2022-02-26 13:00:50', NULL),
(24, 12, 16, 20, '2 BHK', 'Active', '2022-02-26 13:01:03', NULL),
(25, 12, 16, 20, '2 BHK P', 'Active', '2022-02-26 13:01:18', NULL),
(26, 12, 16, 20, '3 BHK', 'Active', '2022-02-26 13:01:40', NULL),
(27, 12, 16, 21, '1 BHK', 'Active', '2022-02-26 13:02:01', NULL),
(28, 12, 16, 21, '2 BHK', 'Active', '2022-02-26 13:02:16', NULL),
(29, 12, 16, 21, '2 BHK P', 'Active', '2022-02-26 13:02:35', NULL),
(30, 12, 16, 21, '3 BHK', 'Active', '2022-02-26 13:02:51', NULL),
(31, 12, 16, 22, '1 BHK', 'Active', '2022-02-26 13:03:12', NULL),
(32, 12, 16, 22, '2 BHK', 'Active', '2022-02-26 13:03:23', NULL),
(33, 12, 16, 22, '2 BHK P', 'Active', '2022-02-26 13:03:38', NULL),
(34, 12, 16, 22, '3 BHK', 'Active', '2022-02-26 13:03:55', NULL),
(35, 12, 17, 23, '1 BHK', 'Active', '2022-02-26 13:05:06', NULL),
(36, 12, 17, 23, '2 BHK', 'Active', '2022-02-26 13:05:18', NULL),
(37, 12, 17, 23, '2 BHK P', 'Active', '2022-02-26 13:05:33', NULL),
(38, 12, 17, 23, '3 BHK', 'Active', '2022-02-26 13:05:50', NULL),
(39, 12, 17, 24, '1 BHK', 'Active', '2022-02-26 13:06:02', NULL),
(40, 12, 17, 24, '2 BHK', 'Active', '2022-02-26 13:06:16', NULL),
(41, 12, 17, 24, '2 BHK P', 'Active', '2022-02-26 13:06:34', NULL),
(42, 12, 17, 24, '3 BHK', 'Active', '2022-02-26 13:06:47', NULL),
(43, 12, 17, 25, '1 BHK', 'Active', '2022-02-26 13:07:51', NULL),
(44, 12, 17, 25, '2 BHK', 'Active', '2022-02-26 13:08:02', NULL),
(45, 12, 17, 25, '2 BHK P', 'Active', '2022-02-26 13:08:14', NULL),
(46, 12, 17, 25, '3 BHK', 'Active', '2022-02-26 13:08:29', NULL),
(47, 12, 17, 26, '1 BHK', 'Active', '2022-02-26 13:08:48', NULL),
(48, 12, 17, 26, '2 BHK', 'Active', '2022-02-26 13:09:59', NULL),
(49, 12, 17, 26, '2 BHK P', 'Active', '2022-02-26 13:10:12', NULL),
(50, 12, 17, 26, '3 BHK', 'Active', '2022-02-26 13:10:24', NULL),
(51, 12, 17, 27, '1 BHK', 'Active', '2022-02-26 13:10:39', NULL),
(52, 12, 17, 27, '2 BHK', 'Active', '2022-02-26 13:10:51', NULL),
(53, 12, 17, 27, '2 BHK P', 'Active', '2022-02-26 13:11:03', NULL),
(54, 12, 17, 27, '3 BHK', 'Active', '2022-02-26 13:11:23', NULL),
(55, 12, 18, 28, '2 BHK', 'Active', '2022-02-26 13:13:43', NULL),
(56, 12, 18, 28, '2 BHK P', 'Active', '2022-02-26 13:13:56', NULL),
(57, 12, 18, 28, '2 BHK SP', 'Active', '2022-02-26 13:14:12', NULL),
(58, 12, 18, 28, '3 BHK', 'Active', '2022-02-26 13:14:25', NULL),
(59, 12, 18, 28, '3 BHK P', 'Active', '2022-02-26 13:14:40', NULL),
(60, 12, 18, 29, '2 BHK', 'Active', '2022-02-26 13:15:06', NULL),
(61, 12, 18, 29, '2 BHK P', 'Active', '2022-02-26 13:15:17', NULL),
(62, 12, 18, 29, '2 BHK SP', 'Active', '2022-02-26 13:15:30', NULL),
(63, 12, 18, 29, '3 BHK', 'Active', '2022-02-26 13:15:44', NULL),
(64, 12, 18, 29, '3 BHK P', 'Active', '2022-02-26 13:15:57', NULL),
(65, 12, 18, 30, '2 BHK', 'Active', '2022-02-26 13:16:15', NULL),
(66, 12, 18, 30, '2 BHK P', 'Active', '2022-02-26 13:16:27', NULL),
(67, 12, 18, 30, '2 BHK SP', 'Active', '2022-02-26 13:16:45', NULL),
(68, 12, 18, 30, '3 BHK', 'Active', '2022-02-26 13:16:56', NULL),
(69, 12, 18, 30, '3 BHK P', 'Active', '2022-02-26 13:17:08', NULL),
(70, 12, 18, 31, '2 BHK', 'Active', '2022-02-26 13:17:26', NULL),
(71, 12, 18, 31, '2 BHK P', 'Active', '2022-02-26 13:17:40', NULL),
(72, 12, 18, 31, '2 BHK SP', 'Active', '2022-02-26 13:17:54', NULL),
(73, 12, 18, 31, '3 BHK', 'Active', '2022-02-26 13:18:08', NULL),
(74, 12, 18, 31, '3 BHK P', 'Active', '2022-02-26 13:18:29', NULL),
(75, 12, 18, 32, '2 BHK', 'Active', '2022-02-26 13:19:39', NULL),
(76, 12, 18, 32, '2 BHK P', 'Active', '2022-02-26 14:42:31', NULL),
(77, 12, 18, 32, '2 BHK SP', 'Active', '2022-02-26 14:44:00', NULL),
(78, 12, 18, 32, '3 BHK', 'Active', '2022-02-26 14:44:17', NULL),
(79, 12, 18, 32, '3 BHK P', 'Active', '2022-02-26 14:44:30', NULL),
(80, 12, 19, 33, '2 BHK', 'Active', '2022-02-26 14:45:20', NULL),
(81, 12, 19, 33, '2 BHK P', 'Active', '2022-02-26 14:45:42', NULL),
(82, 12, 19, 33, '2 BHK SP', 'Active', '2022-02-26 14:45:59', NULL),
(83, 12, 19, 33, '3 BHK', 'Active', '2022-02-26 14:46:12', NULL),
(84, 12, 19, 33, '3 BHK P', 'Active', '2022-02-26 14:46:24', NULL),
(85, 12, 19, 34, '2 BHK', 'Active', '2022-02-26 14:46:42', NULL),
(86, 12, 19, 34, '2 BHK P', 'Active', '2022-02-26 14:46:57', NULL),
(87, 12, 19, 34, '2 BHK SP', 'Active', '2022-02-26 14:47:08', NULL),
(88, 12, 19, 34, '3 BHK', 'Active', '2022-02-26 14:47:20', NULL),
(89, 12, 19, 34, '3 BHK P', 'Active', '2022-02-26 14:47:31', NULL),
(90, 12, 19, 35, '2 BHK', 'Active', '2022-02-26 14:47:43', NULL),
(91, 12, 19, 35, '2 BHK P', 'Active', '2022-02-26 14:47:54', NULL),
(92, 12, 19, 35, '2 BHK SP', 'Active', '2022-02-26 14:48:06', NULL),
(93, 12, 19, 35, '3 BHK', 'Active', '2022-02-26 14:48:20', NULL),
(94, 12, 19, 35, '3 BHK P', 'Active', '2022-02-26 14:48:35', NULL),
(95, 12, 19, 36, '2 BHK', 'Active', '2022-02-26 14:48:48', NULL),
(96, 12, 19, 36, '2 BHK P', 'Active', '2022-02-26 14:48:58', NULL),
(97, 12, 19, 36, '2 BHK SP', 'Active', '2022-02-26 14:49:10', NULL),
(98, 12, 19, 36, '3 BHK', 'Active', '2022-02-26 14:49:19', NULL),
(99, 12, 19, 36, '3 BHK P', 'Active', '2022-02-26 14:49:33', NULL),
(100, 12, 19, 37, '2 BHK', 'Active', '2022-02-26 14:49:48', NULL),
(101, 12, 19, 37, '2 BHK P', 'Active', '2022-02-26 14:50:05', NULL),
(102, 12, 19, 37, '2 BHK SP', 'Active', '2022-02-26 14:50:18', NULL),
(103, 12, 19, 37, '3 BHK', 'Active', '2022-02-26 14:50:29', NULL),
(104, 12, 19, 37, '3 BHK P', 'Active', '2022-02-26 14:50:43', NULL),
(105, 12, 20, 38, '2 BHK', 'Active', '2022-02-26 14:52:10', NULL),
(106, 12, 20, 38, '2 BHK P', 'Active', '2022-02-26 14:52:25', NULL),
(107, 12, 20, 38, '2 BHK SP', 'Active', '2022-02-26 14:52:38', NULL),
(108, 12, 20, 38, '3 BHK', 'Active', '2022-02-26 14:52:50', NULL),
(109, 12, 20, 38, '3 BHK P', 'Active', '2022-02-26 14:53:01', NULL),
(110, 12, 20, 39, '2 BHK', 'Active', '2022-02-26 14:53:15', NULL),
(111, 12, 20, 39, '2 BHK P', 'Active', '2022-02-26 14:53:26', NULL),
(112, 12, 20, 39, '2 BHK SP', 'Active', '2022-02-26 14:53:36', NULL),
(113, 12, 20, 39, '3 BHK', 'Active', '2022-02-26 14:53:46', NULL),
(114, 12, 20, 39, '3 BHK P', 'Active', '2022-02-26 14:53:56', NULL),
(115, 12, 20, 40, '2 BHK', 'Active', '2022-02-26 14:54:16', NULL),
(116, 12, 20, 40, '2 BHK P', 'Active', '2022-02-26 14:54:31', NULL),
(117, 12, 20, 40, '2 BHK SP', 'Active', '2022-02-26 14:54:43', NULL),
(118, 12, 20, 40, '3 BHK', 'Active', '2022-02-26 14:55:02', NULL),
(119, 12, 20, 40, '3 BHK P', 'Active', '2022-02-26 14:55:13', NULL),
(120, 12, 20, 41, '2 BHK', 'Active', '2022-02-26 14:55:24', NULL),
(121, 12, 20, 41, '2 BHK P', 'Active', '2022-02-26 14:55:36', NULL),
(122, 12, 20, 41, '2 BHK SP', 'Active', '2022-02-26 14:55:51', NULL),
(123, 12, 20, 41, '3 BHK', 'Active', '2022-02-26 14:56:02', NULL),
(124, 12, 20, 41, '3 BHK P', 'Active', '2022-02-26 14:56:15', NULL),
(125, 12, 20, 42, '2 BHK', 'Active', '2022-02-26 14:56:41', NULL),
(126, 12, 20, 42, '2 BHK P', 'Active', '2022-02-26 14:56:52', NULL),
(127, 12, 20, 42, '2 BHK SP', 'Active', '2022-02-26 14:57:02', NULL),
(128, 12, 20, 42, '3 BHK', 'Active', '2022-02-26 14:57:15', '2022-02-26 14:57:23'),
(129, 12, 20, 42, '3 BHK P', 'Active', '2022-02-26 14:57:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `floor_id` int(11) NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `floor_name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`floor_id`, `phase`, `block`, `floor_name`, `status`, `created_date`, `modified_date`) VALUES
(18, 12, 16, 'First Floor', 'Active', '2022-02-26 11:58:48', NULL),
(19, 12, 16, 'Second Floor', 'Active', '2022-02-26 11:59:59', '2022-02-26 12:00:20'),
(20, 12, 16, 'Third Floor', 'Active', '2022-02-26 12:03:21', '2022-02-26 12:05:19'),
(21, 12, 16, 'Fourth FLoor', 'Active', '2022-02-26 12:05:52', NULL),
(22, 12, 16, 'Fifth Floor', 'Active', '2022-02-26 12:06:02', NULL),
(23, 12, 17, 'First Floor', 'Active', '2022-02-26 12:06:20', NULL),
(24, 12, 17, 'Second Floor', 'Active', '2022-02-26 12:06:34', NULL),
(25, 12, 17, 'Third Floor', 'Active', '2022-02-26 12:06:46', NULL),
(26, 12, 17, 'Fourth Floor', 'Active', '2022-02-26 12:06:57', NULL),
(27, 12, 17, 'Fifth Floor', 'Active', '2022-02-26 12:07:08', NULL),
(28, 12, 18, 'First Floor', 'Active', '2022-02-26 12:07:27', NULL),
(29, 12, 18, 'Second Floor', 'Active', '2022-02-26 12:07:50', NULL),
(30, 12, 18, 'Third Floor', 'Active', '2022-02-26 12:08:00', NULL),
(31, 12, 18, 'Fourth Floor', 'Active', '2022-02-26 12:08:11', NULL),
(32, 12, 18, 'Fifth Floor', 'Active', '2022-02-26 12:08:22', NULL),
(33, 12, 19, 'First Floor', 'Active', '2022-02-26 12:08:42', NULL),
(34, 12, 19, 'Second Floor', 'Active', '2022-02-26 12:08:55', NULL),
(35, 12, 19, 'Third Floor', 'Active', '2022-02-26 12:09:09', NULL),
(36, 12, 19, 'Fourth Floor', 'Active', '2022-02-26 12:09:23', NULL),
(37, 12, 19, 'Fifth Floor', 'Active', '2022-02-26 12:09:35', NULL),
(38, 12, 20, 'First Floor', 'Active', '2022-02-26 12:09:54', NULL),
(39, 12, 20, 'Second Floor', 'Active', '2022-02-26 12:10:05', NULL),
(40, 12, 20, 'Third Floor', 'Active', '2022-02-26 12:10:34', NULL),
(41, 12, 20, 'Fourth Floor', 'Active', '2022-02-26 12:10:45', NULL),
(42, 12, 20, 'Fifth Floor', 'Active', '2022-02-26 12:10:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cost_id` int(11) DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `applicant_name` varchar(255) DEFAULT NULL,
  `date_of_application` varchar(255) DEFAULT NULL,
  `gross_amount` varchar(255) DEFAULT NULL,
  `payment_schedule` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `bank_type` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `loan_amount` varchar(255) DEFAULT NULL,
  `onbook10per` varchar(255) DEFAULT NULL,
  `onbook_received10per` varchar(255) DEFAULT NULL,
  `onbook_balance10per` varchar(255) DEFAULT NULL,
  `onbook_paymentdate10per` varchar(255) DEFAULT NULL,
  `onbook_transactiontype10per` varchar(255) DEFAULT NULL,
  `onbook_paymenttype10per` varchar(255) DEFAULT NULL,
  `onbook_chequenumber10per` varchar(255) DEFAULT NULL,
  `onbook_neftid10per` varchar(255) DEFAULT NULL,
  `onbook_rtgsid10per` varchar(255) DEFAULT NULL,
  `payments10per` varchar(255) DEFAULT NULL,
  `payments_received10per` varchar(255) DEFAULT NULL,
  `payments_balance10per` varchar(255) DEFAULT NULL,
  `payments_paymentdate10per` varchar(255) DEFAULT NULL,
  `payments_transactiontype10per` varchar(255) DEFAULT NULL,
  `payments_paymenttype10per` varchar(255) DEFAULT NULL,
  `payments_chequenumber10per` varchar(255) DEFAULT NULL,
  `payments_neftid10per` varchar(255) DEFAULT NULL,
  `payments_rtgsid10per` varchar(255) DEFAULT NULL,
  `first10per` varchar(255) DEFAULT NULL,
  `first_received10per` varchar(255) DEFAULT NULL,
  `first_balance10per` varchar(255) DEFAULT NULL,
  `first_paymentdate10per` varchar(255) DEFAULT NULL,
  `first_transactiontype10per` varchar(255) DEFAULT NULL,
  `first_paymenttype10per` varchar(255) DEFAULT NULL,
  `first_chequenumber10per` varchar(255) DEFAULT NULL,
  `first_neftid10per` varchar(255) DEFAULT NULL,
  `first_rtgsid10per` varchar(255) DEFAULT NULL,
  `second10per` varchar(255) DEFAULT NULL,
  `second_received10per` varchar(255) DEFAULT NULL,
  `second_balance10per` varchar(255) DEFAULT NULL,
  `second_paymentdate10per` varchar(255) DEFAULT NULL,
  `second_transactiontype10per` varchar(255) DEFAULT NULL,
  `second_paymenttype10per` varchar(255) DEFAULT NULL,
  `second_chequenumber10per` varchar(255) DEFAULT NULL,
  `second_neftid10per` varchar(255) DEFAULT NULL,
  `second_rtgsid10per` varchar(255) DEFAULT NULL,
  `third10per` varchar(255) DEFAULT NULL,
  `third_received10per` varchar(255) DEFAULT NULL,
  `third_balance10per` varchar(255) DEFAULT NULL,
  `third_paymentdate10per` varchar(255) DEFAULT NULL,
  `third_transactiontype10per` varchar(255) DEFAULT NULL,
  `third_paymenttype10per` varchar(255) DEFAULT NULL,
  `third_chequenumber10per` varchar(255) DEFAULT NULL,
  `third_neftid10per` varchar(255) DEFAULT NULL,
  `third_rtgsid10per` varchar(255) DEFAULT NULL,
  `fourth10per` varchar(255) DEFAULT NULL,
  `fourth_received10per` varchar(255) DEFAULT NULL,
  `fourth_balance10per` varchar(255) DEFAULT NULL,
  `fourth_paymentdate10per` varchar(255) DEFAULT NULL,
  `fourth_transactiontype10per` varchar(255) DEFAULT NULL,
  `fourth_paymenttype10per` varchar(255) DEFAULT NULL,
  `fourth_chequenumber10per` varchar(255) DEFAULT NULL,
  `fourth_neftid10per` varchar(255) DEFAULT NULL,
  `fourth_rtgsid10per` varchar(255) DEFAULT NULL,
  `fifth10per` varchar(255) DEFAULT NULL,
  `fifth_received10per` varchar(255) DEFAULT NULL,
  `fifth_balance10per` varchar(255) DEFAULT NULL,
  `fifth_paymentdate10per` varchar(255) DEFAULT NULL,
  `fifth_transactiontype10per` varchar(255) DEFAULT NULL,
  `fifth_paymenttype10per` varchar(255) DEFAULT NULL,
  `fifth_chequenumber10per` varchar(255) DEFAULT NULL,
  `fifth_neftid10per` varchar(255) DEFAULT NULL,
  `fifth_rtgsid10per` varchar(255) DEFAULT NULL,
  `handover10per` varchar(255) DEFAULT NULL,
  `handover_received10per` varchar(255) DEFAULT NULL,
  `handover_balance10per` varchar(255) DEFAULT NULL,
  `handover_paymentdate10per` varchar(255) DEFAULT NULL,
  `handover_transactiontype10per` varchar(255) DEFAULT NULL,
  `handover_paymenttype10per` varchar(255) DEFAULT NULL,
  `handover_chequenumber10per` varchar(255) DEFAULT NULL,
  `handover_neftid10per` varchar(255) DEFAULT NULL,
  `handover_rtgsid10per` varchar(255) DEFAULT NULL,
  `onbook15per` varchar(255) DEFAULT NULL,
  `onbook_received15per` varchar(255) DEFAULT NULL,
  `onbook_balance15per` varchar(255) DEFAULT NULL,
  `onbook_paymentdate15per` varchar(255) DEFAULT NULL,
  `onbook_transactiontype15per` varchar(255) DEFAULT NULL,
  `onbook_paymenttype15per` varchar(255) DEFAULT NULL,
  `onbook_chequenumber15per` varchar(255) DEFAULT NULL,
  `onbook_neftid15per` varchar(255) DEFAULT NULL,
  `onbook_rtgsid15per` varchar(255) DEFAULT NULL,
  `payments15per` varchar(255) DEFAULT NULL,
  `payments_received15per` varchar(255) DEFAULT NULL,
  `payments_balance15per` varchar(255) DEFAULT NULL,
  `payments_paymentdate15per` varchar(255) DEFAULT NULL,
  `payments_transactiontype15per` varchar(255) DEFAULT NULL,
  `payments_paymenttype15per` varchar(255) NOT NULL,
  `payments_chequenumber15per` varchar(255) DEFAULT NULL,
  `payments_neftid15per` varchar(255) DEFAULT NULL,
  `payments_rtgsid15per` varchar(255) DEFAULT NULL,
  `first15per` varchar(255) DEFAULT NULL,
  `first_received15per` varchar(255) DEFAULT NULL,
  `first_balance15per` varchar(255) DEFAULT NULL,
  `first_paymentdate15per` varchar(255) DEFAULT NULL,
  `first_transactiontype15per` varchar(255) DEFAULT NULL,
  `first_paymenttype15per` varchar(255) DEFAULT NULL,
  `first_chequenumber15per` varchar(255) DEFAULT NULL,
  `first_neftid15per` varchar(255) DEFAULT NULL,
  `first_rtgsid15per` varchar(255) DEFAULT NULL,
  `second15per` varchar(255) DEFAULT NULL,
  `second_received15per` varchar(255) DEFAULT NULL,
  `second_balance15per` varchar(255) DEFAULT NULL,
  `second_paymentdate15per` varchar(255) DEFAULT NULL,
  `second_transactiontype15per` varchar(255) DEFAULT NULL,
  `second_paymenttype15per` varchar(255) DEFAULT NULL,
  `second_chequenumber15per` varchar(255) DEFAULT NULL,
  `second_neftid15per` varchar(255) DEFAULT NULL,
  `second_rtgsid15per` varchar(255) DEFAULT NULL,
  `third15per` varchar(255) DEFAULT NULL,
  `third_received15per` varchar(255) DEFAULT NULL,
  `third_balance15per` varchar(255) DEFAULT NULL,
  `third_paymentdate15per` varchar(255) DEFAULT NULL,
  `third_transactiontype15per` varchar(255) DEFAULT NULL,
  `third_paymenttype15per` varchar(255) DEFAULT NULL,
  `third_chequenumber15per` varchar(255) DEFAULT NULL,
  `third_neftid15per` varchar(255) DEFAULT NULL,
  `third_rtgsid15per` varchar(255) DEFAULT NULL,
  `fourth15per` varchar(255) DEFAULT NULL,
  `fourth_received15per` varchar(255) DEFAULT NULL,
  `fourth_balance15per` varchar(255) DEFAULT NULL,
  `fourth_paymentdate15per` varchar(255) DEFAULT NULL,
  `fourth_transactiontype15per` varchar(255) DEFAULT NULL,
  `fourth_paymenttype15per` varchar(255) DEFAULT NULL,
  `fourth_chequenumber15per` varchar(255) DEFAULT NULL,
  `fourth_neftid15per` varchar(255) DEFAULT NULL,
  `fourth_rtgsid15per` varchar(255) DEFAULT NULL,
  `fifth15per` varchar(255) DEFAULT NULL,
  `fifth_received15per` varchar(255) DEFAULT NULL,
  `fifth_balance15per` varchar(255) DEFAULT NULL,
  `fifth_paymentdate15per` varchar(255) DEFAULT NULL,
  `fifth_transactiontype15per` varchar(255) DEFAULT NULL,
  `fifth_paymenttype15per` varchar(255) DEFAULT NULL,
  `fifth_chequenumber15per` varchar(255) DEFAULT NULL,
  `fifth_neftid15per` varchar(255) DEFAULT NULL,
  `fifth_rtgsid15per` varchar(255) DEFAULT NULL,
  `handover15per` varchar(255) DEFAULT NULL,
  `handover_received15per` varchar(255) DEFAULT NULL,
  `handover_balance15per` varchar(255) DEFAULT NULL,
  `handover_paymentdate15per` varchar(255) DEFAULT NULL,
  `handover_transactiontype15per` varchar(255) DEFAULT NULL,
  `handover_paymenttype15per` varchar(255) DEFAULT NULL,
  `handover_chequenumber15per` varchar(255) DEFAULT NULL,
  `handover_neftid15per` varchar(255) DEFAULT NULL,
  `handover_rtgsid15per` varchar(255) DEFAULT NULL,
  `onbook20per` varchar(255) DEFAULT NULL,
  `onbook_received20per` varchar(255) DEFAULT NULL,
  `onbook_balance20per` varchar(255) DEFAULT NULL,
  `onbook_paymentdate20per` varchar(255) DEFAULT NULL,
  `onbook_transactiontype20per` varchar(255) DEFAULT NULL,
  `onbook_paymenttype20per` varchar(255) DEFAULT NULL,
  `onbook_chequenumber20per` varchar(255) DEFAULT NULL,
  `onbook_neftid20per` varchar(255) DEFAULT NULL,
  `onbook_rtgsid20per` varchar(255) DEFAULT NULL,
  `payments20per` varchar(255) DEFAULT NULL,
  `payments_received20per` varchar(255) DEFAULT NULL,
  `payments_balance20per` varchar(255) DEFAULT NULL,
  `payments_paymentdate20per` varchar(255) DEFAULT NULL,
  `payments_transactiontype20per` varchar(255) DEFAULT NULL,
  `payments_paymenttype20per` varchar(255) DEFAULT NULL,
  `payments_chequenumber20per` varchar(255) DEFAULT NULL,
  `payments_neftid20per` varchar(255) DEFAULT NULL,
  `payments_rtgsid20per` varchar(255) DEFAULT NULL,
  `first20per` varchar(255) DEFAULT NULL,
  `first_received20per` varchar(255) DEFAULT NULL,
  `first_balance20per` varchar(255) DEFAULT NULL,
  `first_paymentdate20per` varchar(255) DEFAULT NULL,
  `first_transactiontype20per` varchar(255) DEFAULT NULL,
  `first_paymenttype20per` varchar(255) DEFAULT NULL,
  `first_chequenumber20per` varchar(255) DEFAULT NULL,
  `first_neftid20per` varchar(255) DEFAULT NULL,
  `first_rtgsid20per` varchar(255) DEFAULT NULL,
  `second20per` varchar(255) DEFAULT NULL,
  `second_received20per` varchar(255) DEFAULT NULL,
  `second_balance20per` varchar(255) DEFAULT NULL,
  `second_paymentdate20per` varchar(255) DEFAULT NULL,
  `second_transactiontype20per` varchar(255) DEFAULT NULL,
  `second_paymenttype20per` varchar(255) DEFAULT NULL,
  `second_chequenumber20per` varchar(255) DEFAULT NULL,
  `second_neftid20per` varchar(255) DEFAULT NULL,
  `second_rtgsid20per` varchar(255) DEFAULT NULL,
  `third20per` varchar(255) DEFAULT NULL,
  `third_received20per` varchar(255) DEFAULT NULL,
  `third_balance20per` varchar(255) DEFAULT NULL,
  `third_paymentdate20per` varchar(255) DEFAULT NULL,
  `third_transactiontype20per` varchar(255) DEFAULT NULL,
  `third_paymenttype20per` varchar(255) DEFAULT NULL,
  `third_chequenumber20per` varchar(255) DEFAULT NULL,
  `third_neftid20per` varchar(255) DEFAULT NULL,
  `third_rtgsid20per` varchar(255) DEFAULT NULL,
  `fourth20per` varchar(255) DEFAULT NULL,
  `fourth_received20per` varchar(255) DEFAULT NULL,
  `fourth_balance20per` varchar(255) DEFAULT NULL,
  `fourth_paymentdate20per` varchar(255) DEFAULT NULL,
  `fourth_transactiontype20per` varchar(255) DEFAULT NULL,
  `fourth_paymenttype20per` varchar(255) DEFAULT NULL,
  `fourth_chequenumber20per` varchar(255) DEFAULT NULL,
  `fourth_neftid20per` varchar(255) DEFAULT NULL,
  `fourth_rtgsid20per` varchar(255) DEFAULT NULL,
  `fifth20per` varchar(255) DEFAULT NULL,
  `fifth_received20per` varchar(255) DEFAULT NULL,
  `fifth_balance20per` varchar(255) DEFAULT NULL,
  `fifth_paymentdate20per` varchar(255) DEFAULT NULL,
  `fifth_transactiontype20per` varchar(255) DEFAULT NULL,
  `fifth_paymenttype20per` varchar(255) DEFAULT NULL,
  `fifth_chequenumber20per` varchar(255) DEFAULT NULL,
  `fifth_neftid20per` varchar(255) DEFAULT NULL,
  `fifth_rtgsid20per` varchar(255) DEFAULT NULL,
  `handover20per` varchar(255) DEFAULT NULL,
  `handover_received20per` varchar(255) DEFAULT NULL,
  `handover_balance20per` varchar(255) DEFAULT NULL,
  `handover_paymentdate20per` varchar(255) DEFAULT NULL,
  `handover_transactiontype20per` varchar(255) DEFAULT NULL,
  `handover_paymenttype20per` varchar(255) DEFAULT NULL,
  `handover_chequenumber20per` varchar(255) DEFAULT NULL,
  `handover_neftid20per` varchar(255) DEFAULT NULL,
  `handover_rtgsid20per` varchar(255) DEFAULT NULL,
  `addmore` int(11) DEFAULT 0,
  `addedby` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` enum('Active','Trash') DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `customer_id`, `cost_id`, `application_number`, `applicant_name`, `date_of_application`, `gross_amount`, `payment_schedule`, `transaction_type`, `bank_type`, `bank_name`, `loan_amount`, `onbook10per`, `onbook_received10per`, `onbook_balance10per`, `onbook_paymentdate10per`, `onbook_transactiontype10per`, `onbook_paymenttype10per`, `onbook_chequenumber10per`, `onbook_neftid10per`, `onbook_rtgsid10per`, `payments10per`, `payments_received10per`, `payments_balance10per`, `payments_paymentdate10per`, `payments_transactiontype10per`, `payments_paymenttype10per`, `payments_chequenumber10per`, `payments_neftid10per`, `payments_rtgsid10per`, `first10per`, `first_received10per`, `first_balance10per`, `first_paymentdate10per`, `first_transactiontype10per`, `first_paymenttype10per`, `first_chequenumber10per`, `first_neftid10per`, `first_rtgsid10per`, `second10per`, `second_received10per`, `second_balance10per`, `second_paymentdate10per`, `second_transactiontype10per`, `second_paymenttype10per`, `second_chequenumber10per`, `second_neftid10per`, `second_rtgsid10per`, `third10per`, `third_received10per`, `third_balance10per`, `third_paymentdate10per`, `third_transactiontype10per`, `third_paymenttype10per`, `third_chequenumber10per`, `third_neftid10per`, `third_rtgsid10per`, `fourth10per`, `fourth_received10per`, `fourth_balance10per`, `fourth_paymentdate10per`, `fourth_transactiontype10per`, `fourth_paymenttype10per`, `fourth_chequenumber10per`, `fourth_neftid10per`, `fourth_rtgsid10per`, `fifth10per`, `fifth_received10per`, `fifth_balance10per`, `fifth_paymentdate10per`, `fifth_transactiontype10per`, `fifth_paymenttype10per`, `fifth_chequenumber10per`, `fifth_neftid10per`, `fifth_rtgsid10per`, `handover10per`, `handover_received10per`, `handover_balance10per`, `handover_paymentdate10per`, `handover_transactiontype10per`, `handover_paymenttype10per`, `handover_chequenumber10per`, `handover_neftid10per`, `handover_rtgsid10per`, `onbook15per`, `onbook_received15per`, `onbook_balance15per`, `onbook_paymentdate15per`, `onbook_transactiontype15per`, `onbook_paymenttype15per`, `onbook_chequenumber15per`, `onbook_neftid15per`, `onbook_rtgsid15per`, `payments15per`, `payments_received15per`, `payments_balance15per`, `payments_paymentdate15per`, `payments_transactiontype15per`, `payments_paymenttype15per`, `payments_chequenumber15per`, `payments_neftid15per`, `payments_rtgsid15per`, `first15per`, `first_received15per`, `first_balance15per`, `first_paymentdate15per`, `first_transactiontype15per`, `first_paymenttype15per`, `first_chequenumber15per`, `first_neftid15per`, `first_rtgsid15per`, `second15per`, `second_received15per`, `second_balance15per`, `second_paymentdate15per`, `second_transactiontype15per`, `second_paymenttype15per`, `second_chequenumber15per`, `second_neftid15per`, `second_rtgsid15per`, `third15per`, `third_received15per`, `third_balance15per`, `third_paymentdate15per`, `third_transactiontype15per`, `third_paymenttype15per`, `third_chequenumber15per`, `third_neftid15per`, `third_rtgsid15per`, `fourth15per`, `fourth_received15per`, `fourth_balance15per`, `fourth_paymentdate15per`, `fourth_transactiontype15per`, `fourth_paymenttype15per`, `fourth_chequenumber15per`, `fourth_neftid15per`, `fourth_rtgsid15per`, `fifth15per`, `fifth_received15per`, `fifth_balance15per`, `fifth_paymentdate15per`, `fifth_transactiontype15per`, `fifth_paymenttype15per`, `fifth_chequenumber15per`, `fifth_neftid15per`, `fifth_rtgsid15per`, `handover15per`, `handover_received15per`, `handover_balance15per`, `handover_paymentdate15per`, `handover_transactiontype15per`, `handover_paymenttype15per`, `handover_chequenumber15per`, `handover_neftid15per`, `handover_rtgsid15per`, `onbook20per`, `onbook_received20per`, `onbook_balance20per`, `onbook_paymentdate20per`, `onbook_transactiontype20per`, `onbook_paymenttype20per`, `onbook_chequenumber20per`, `onbook_neftid20per`, `onbook_rtgsid20per`, `payments20per`, `payments_received20per`, `payments_balance20per`, `payments_paymentdate20per`, `payments_transactiontype20per`, `payments_paymenttype20per`, `payments_chequenumber20per`, `payments_neftid20per`, `payments_rtgsid20per`, `first20per`, `first_received20per`, `first_balance20per`, `first_paymentdate20per`, `first_transactiontype20per`, `first_paymenttype20per`, `first_chequenumber20per`, `first_neftid20per`, `first_rtgsid20per`, `second20per`, `second_received20per`, `second_balance20per`, `second_paymentdate20per`, `second_transactiontype20per`, `second_paymenttype20per`, `second_chequenumber20per`, `second_neftid20per`, `second_rtgsid20per`, `third20per`, `third_received20per`, `third_balance20per`, `third_paymentdate20per`, `third_transactiontype20per`, `third_paymenttype20per`, `third_chequenumber20per`, `third_neftid20per`, `third_rtgsid20per`, `fourth20per`, `fourth_received20per`, `fourth_balance20per`, `fourth_paymentdate20per`, `fourth_transactiontype20per`, `fourth_paymenttype20per`, `fourth_chequenumber20per`, `fourth_neftid20per`, `fourth_rtgsid20per`, `fifth20per`, `fifth_received20per`, `fifth_balance20per`, `fifth_paymentdate20per`, `fifth_transactiontype20per`, `fifth_paymenttype20per`, `fifth_chequenumber20per`, `fifth_neftid20per`, `fifth_rtgsid20per`, `handover20per`, `handover_received20per`, `handover_balance20per`, `handover_paymentdate20per`, `handover_transactiontype20per`, `handover_paymenttype20per`, `handover_chequenumber20per`, `handover_neftid20per`, `handover_rtgsid20per`, `addmore`, `addedby`, `created_date`, `status`) VALUES
(129, 64, 31, '0109', 'S.Arun', '15-07-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '470374.00', '470374', '0.00', '16-07-2021', 'Ownfund', 'NEFT', '-', 'TPT', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:03:16', 'Active'),
(128, 64, 31, '0109', 'S.Arun', '15-07-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '1001', '470374.00', '15-07-2021', 'Ownfund', 'NEFT', '-', 'TPT', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:02:39', 'Active'),
(127, 63, 30, '0363', 'Arunkumar PT & Priyanka Devi', '20-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2800000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '1324040', '0.00', '29-11-2021', 'Bank', 'RTGS', '-', '-', NULL, '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '151920.00', '0', '151920.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-14 11:10:39', 'Active'),
(126, 63, 30, '0363', 'Arunkumar PT & Priyanka Devi', '20-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2800000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '13585', '151920.00', '29-10-2021', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-14 11:10:07', 'Active'),
(125, 63, 30, '0363', 'Arunkumar PT & Priyanka Devi', '20-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2800000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '46515.00', '46515', '0.00', '29-10-2021', 'Bank', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-14 11:09:35', 'Active'),
(124, 63, 30, '0363', 'Arunkumar PT & Priyanka Devi', '20-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2800000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '446515.00', '400000', '46515.00', '28-10-2021', 'Ownfund', 'Cash', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-14 11:08:52', 'Active'),
(123, 63, 30, '0363', 'Arunkumar PT & Priyanka Devi', '20-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2800000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '50000', '446515.00', '20-10-2021', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-14 11:08:06', 'Active'),
(122, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '1324040', '0.00', '30-04-2022', 'Bank', 'NEFT', '-', 'IMPS', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165415.00', '0', '165415.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-05-25 13:24:03', 'Active'),
(121, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '90', '165415.00', '25-04-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-05-25 13:23:32', 'Active'),
(120, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '31010.00', '31010', '0.00', '25-04-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-05-25 13:23:08', 'Active'),
(119, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '131010.00', '100000', '31010.00', '18-04-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-05-25 13:22:37', 'Active'),
(118, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '231010.00', '100000', '131010.00', '28-02-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-05-25 13:21:54', 'Active'),
(117, 62, 29, '0605', 'Vinayakamoorthykumar', '18-02-2022', '3310100.00', '10', 'Bank', 'HDFC', '-', '2979000', '331010.00', '100000', '231010.00', '08-02-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-05-25 13:21:18', 'Active'),
(130, 64, 31, '0109', 'S.Arun', '15-07-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1257000.00', '1257000', '0.00', '02-09-2021', 'Bank', 'NEFT', '-', 'SBIN121245019807', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-16 11:03:55', 'Active'),
(131, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '100000', '562020.00', '03-01-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:12:45', 'Active'),
(132, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '562020.00', '175000', '387020.00', '10-01-2022', 'Ownfund', 'NEFT', '-', 'imps', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:13:13', 'Active'),
(133, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '387020.00', '100000', '287020.00', '31-01-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:13:39', 'Active'),
(134, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '287020.00', '202000', '85020.00', '04-02-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:14:54', 'Active'),
(135, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '85020.00', '85020', '0.00', '18-02-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:15:45', 'Active'),
(136, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '1324040', '0.00', '28-03-2022', 'Bank', 'NEFT', '-', NULL, '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:16:12', 'Active'),
(137, 65, 32, '0563', 'Vairamuthu L', '06-01-2022', '3310100.00', '20', 'Bank', 'SBI', '-', '2648000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '0', '496515.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '80', '165425.00', '18-02-2022', 'Ownfund', 'NEFT', '-', 'IMPS', '-', 0, 'Priyanka', '2022-06-16 11:17:19', 'Active'),
(138, 66, 33, '0366', 'Premkumar', '18-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2400000', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '5000', '466375.00', '02-09-2021', 'Ownfund', 'NEFT', '-', 'IMPS', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-16 11:30:51', 'Active'),
(139, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2810100', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '496515.00', '300000', '196515.00', '18-10-2021', 'Ownfund', 'Cheque', '111794', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:47:39', 'Active'),
(140, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2810100', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '196515.00', '196515', '0.00', '18-10-2021', 'Ownfund', 'Cheque', '092027', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:48:19', 'Active'),
(141, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2810100', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '3485', '162020.00', '18-10-2021', 'Ownfund', 'Cheque', '092027', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:49:04', 'Active'),
(142, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2810100', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1324040.00', '397212', '926828.00', '28-10-2021', 'Bank', 'NEFT', '-', NULL, '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '162020.00', '0', '162020.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:49:37', 'Active'),
(143, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '28101000', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '926828.00', '926828', '0.00', '29-12-2021', 'Bank', 'NEFT', '-', NULL, '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '162020.00', '0', '162020.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 11:50:11', 'Active');
INSERT INTO `payments` (`payment_id`, `customer_id`, `cost_id`, `application_number`, `applicant_name`, `date_of_application`, `gross_amount`, `payment_schedule`, `transaction_type`, `bank_type`, `bank_name`, `loan_amount`, `onbook10per`, `onbook_received10per`, `onbook_balance10per`, `onbook_paymentdate10per`, `onbook_transactiontype10per`, `onbook_paymenttype10per`, `onbook_chequenumber10per`, `onbook_neftid10per`, `onbook_rtgsid10per`, `payments10per`, `payments_received10per`, `payments_balance10per`, `payments_paymentdate10per`, `payments_transactiontype10per`, `payments_paymenttype10per`, `payments_chequenumber10per`, `payments_neftid10per`, `payments_rtgsid10per`, `first10per`, `first_received10per`, `first_balance10per`, `first_paymentdate10per`, `first_transactiontype10per`, `first_paymenttype10per`, `first_chequenumber10per`, `first_neftid10per`, `first_rtgsid10per`, `second10per`, `second_received10per`, `second_balance10per`, `second_paymentdate10per`, `second_transactiontype10per`, `second_paymenttype10per`, `second_chequenumber10per`, `second_neftid10per`, `second_rtgsid10per`, `third10per`, `third_received10per`, `third_balance10per`, `third_paymentdate10per`, `third_transactiontype10per`, `third_paymenttype10per`, `third_chequenumber10per`, `third_neftid10per`, `third_rtgsid10per`, `fourth10per`, `fourth_received10per`, `fourth_balance10per`, `fourth_paymentdate10per`, `fourth_transactiontype10per`, `fourth_paymenttype10per`, `fourth_chequenumber10per`, `fourth_neftid10per`, `fourth_rtgsid10per`, `fifth10per`, `fifth_received10per`, `fifth_balance10per`, `fifth_paymentdate10per`, `fifth_transactiontype10per`, `fifth_paymenttype10per`, `fifth_chequenumber10per`, `fifth_neftid10per`, `fifth_rtgsid10per`, `handover10per`, `handover_received10per`, `handover_balance10per`, `handover_paymentdate10per`, `handover_transactiontype10per`, `handover_paymenttype10per`, `handover_chequenumber10per`, `handover_neftid10per`, `handover_rtgsid10per`, `onbook15per`, `onbook_received15per`, `onbook_balance15per`, `onbook_paymentdate15per`, `onbook_transactiontype15per`, `onbook_paymenttype15per`, `onbook_chequenumber15per`, `onbook_neftid15per`, `onbook_rtgsid15per`, `payments15per`, `payments_received15per`, `payments_balance15per`, `payments_paymentdate15per`, `payments_transactiontype15per`, `payments_paymenttype15per`, `payments_chequenumber15per`, `payments_neftid15per`, `payments_rtgsid15per`, `first15per`, `first_received15per`, `first_balance15per`, `first_paymentdate15per`, `first_transactiontype15per`, `first_paymenttype15per`, `first_chequenumber15per`, `first_neftid15per`, `first_rtgsid15per`, `second15per`, `second_received15per`, `second_balance15per`, `second_paymentdate15per`, `second_transactiontype15per`, `second_paymenttype15per`, `second_chequenumber15per`, `second_neftid15per`, `second_rtgsid15per`, `third15per`, `third_received15per`, `third_balance15per`, `third_paymentdate15per`, `third_transactiontype15per`, `third_paymenttype15per`, `third_chequenumber15per`, `third_neftid15per`, `third_rtgsid15per`, `fourth15per`, `fourth_received15per`, `fourth_balance15per`, `fourth_paymentdate15per`, `fourth_transactiontype15per`, `fourth_paymenttype15per`, `fourth_chequenumber15per`, `fourth_neftid15per`, `fourth_rtgsid15per`, `fifth15per`, `fifth_received15per`, `fifth_balance15per`, `fifth_paymentdate15per`, `fifth_transactiontype15per`, `fifth_paymenttype15per`, `fifth_chequenumber15per`, `fifth_neftid15per`, `fifth_rtgsid15per`, `handover15per`, `handover_received15per`, `handover_balance15per`, `handover_paymentdate15per`, `handover_transactiontype15per`, `handover_paymenttype15per`, `handover_chequenumber15per`, `handover_neftid15per`, `handover_rtgsid15per`, `onbook20per`, `onbook_received20per`, `onbook_balance20per`, `onbook_paymentdate20per`, `onbook_transactiontype20per`, `onbook_paymenttype20per`, `onbook_chequenumber20per`, `onbook_neftid20per`, `onbook_rtgsid20per`, `payments20per`, `payments_received20per`, `payments_balance20per`, `payments_paymentdate20per`, `payments_transactiontype20per`, `payments_paymenttype20per`, `payments_chequenumber20per`, `payments_neftid20per`, `payments_rtgsid20per`, `first20per`, `first_received20per`, `first_balance20per`, `first_paymentdate20per`, `first_transactiontype20per`, `first_paymenttype20per`, `first_chequenumber20per`, `first_neftid20per`, `first_rtgsid20per`, `second20per`, `second_received20per`, `second_balance20per`, `second_paymentdate20per`, `second_transactiontype20per`, `second_paymenttype20per`, `second_chequenumber20per`, `second_neftid20per`, `second_rtgsid20per`, `third20per`, `third_received20per`, `third_balance20per`, `third_paymentdate20per`, `third_transactiontype20per`, `third_paymenttype20per`, `third_chequenumber20per`, `third_neftid20per`, `third_rtgsid20per`, `fourth20per`, `fourth_received20per`, `fourth_balance20per`, `fourth_paymentdate20per`, `fourth_transactiontype20per`, `fourth_paymenttype20per`, `fourth_chequenumber20per`, `fourth_neftid20per`, `fourth_rtgsid20per`, `fifth20per`, `fifth_received20per`, `fifth_balance20per`, `fifth_paymentdate20per`, `fifth_transactiontype20per`, `fifth_paymenttype20per`, `fifth_chequenumber20per`, `fifth_neftid20per`, `fifth_rtgsid20per`, `handover20per`, `handover_received20per`, `handover_balance20per`, `handover_paymentdate20per`, `handover_transactiontype20per`, `handover_paymenttype20per`, `handover_chequenumber20per`, `handover_neftid20per`, `handover_rtgsid20per`, `addmore`, `addedby`, `created_date`, `status`) VALUES
(144, 68, 35, '0616', 'D. Hema', '10-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '10000', '461375.00', '13-09-2021', 'Ownfund', 'Cheque', '159553', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 12:15:49', 'Active'),
(145, 68, 35, '0616', 'D. Hema', '10-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '461375.00', '90000', '371375.00', '13-09-2021', 'Ownfund', 'Cheque', '159553', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 12:16:36', 'Active'),
(146, 68, 35, '0616', 'D. Hema', '10-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '371375.00', '371375', '0.00', '31-12-2021', 'Ownfund', 'Cheque', '000061', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 12:17:01', 'Active'),
(147, 68, 35, '0616', 'D. Hema', '10-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '1257000.00', '1080000', '177000.00', '27-09-2021', 'Bank', 'NEFT', '-', NULL, '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-16 12:17:28', 'Active'),
(148, 68, 35, '0616', 'D. Hema', '10-09-2021', '3142500.00', '15', 'Bank', 'SBI', '-', '2671125', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '177000.00', '177000', '0.00', '29-09-2021', 'Bank', 'NEFT', '-', NULL, '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-16 12:17:55', 'Active'),
(149, 69, 36, '0374', 'Padmavathi Ragavan', '29-09-2021', '3142500.00', '10', 'Bank', 'SBI', '-', '2828250', '314250.00', '100000', '214250.00', '20-09-2021', 'Ownfund', 'RTGS', '-', '-', 'IMPS', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '0', '471375.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-27 13:16:32', 'Active'),
(150, 69, 36, '0374', 'Padmavathi Ragavan', '29-09-2021', '3142500.00', '10', 'Bank', 'SBI', '-', '2828250', '214250.00', '100000', '114250.00', '17-10-2021', 'Ownfund', 'RTGS', '-', '-', 'IMPS', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '0', '471375.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-27 13:16:54', 'Active'),
(151, 69, 36, '0374', 'Padmavathi Ragavan', '29-09-2021', '3142500.00', '10', 'Bank', 'SBI', '-', '2828250', '114250.00', '64000', '50250.00', '19-04-2022', 'Ownfund', 'RTGS', '-', '-', 'UPI', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '0', '471375.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-27 13:17:27', 'Active'),
(152, 69, 36, '0374', 'Padmavathi Ragavan', '29-09-2021', '3142500.00', '10', 'Bank', 'SBI', '-', '2828250', '50250.00', '0', '50250.00', '-', '-', '-', '-', '-', '-', '1257000.00', '879900', '377100.00', '31-10-2021', 'Bank', 'NEFT', '-', NULL, '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '0', '471375.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 1, 'Priyanka', '2022-06-27 13:17:57', 'Active'),
(153, 69, 36, '0374', 'Padmavathi Ragavan', '29-09-2021', '3142500.00', '10', 'Bank', 'SBI', '-', '2828250', '50250.00', '0', '50250.00', '-', '-', '-', '-', '-', '-', '377100.00', '377100', '0.00', '31-10-2021', 'Bank', 'NEFT', '-', NULL, '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '471375.00', '0', '471375.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '628500.00', '0', '628500.00', '-', '-', '-', '-', '-', '-', '1257000.00', '0', '1257000.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '314250.00', '0', '314250.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', '157125.00', '0', '157125.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-27 13:18:19', 'Active'),
(154, 67, 34, '0396', 'sheeja K Nair', '15-10-2021', '3310100.00', '15', 'Bank', 'SBI', '-', '2671125', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '0.00', '0', '0.00', '-', '-', '-', '-', '-', '-', '331010.00', '331010', '0.00', '27-06-2022', 'Bank', 'NEFT', '-', NULL, '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '162020.00', '0', '162020.00', '-', '-', '-', '-', '-', '-', '662020.00', '0', '662020.00', '-', '-', '-', '-', '-', '-', '1324040.00', '0', '1324040.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '331010.00', '0', '331010.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', '165505.00', '0', '165505.00', '-', '-', '-', '-', '-', '-', 0, 'Priyanka', '2022-06-27 14:39:22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `phase_id` int(11) NOT NULL,
  `phase_name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`phase_id`, `phase_name`, `status`, `created_date`, `modified_date`) VALUES
(12, 'Phase 1', 'Active', '2022-02-26 11:51:23', '2022-02-26 11:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `receipt_no` varchar(255) DEFAULT NULL,
  `receipt_date` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `received` varchar(255) DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `sum_rupees` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `dated` varchar(255) DEFAULT NULL,
  `drawn_on` varchar(255) DEFAULT NULL,
  `bank_towards` varchar(255) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `final_amount` varchar(255) DEFAULT NULL,
  `addedby` varchar(255) DEFAULT NULL,
  `status` enum('Active','Trash') NOT NULL DEFAULT 'Active',
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receipt_id`, `receipt_no`, `receipt_date`, `customer_id`, `received`, `application_number`, `sum_rupees`, `cheque_no`, `dated`, `drawn_on`, `bank_towards`, `referred_by`, `final_amount`, `addedby`, `status`, `created_date`) VALUES
(12, '747', '08-02-2022', 62, 'Vinayakamoorthykumar', '0605', 'One Laksh Only', 'IMPS', '08-02-2022', 'SBI - RERA (lll)', 'Booking Advance', 'DIRECT', '1,00,000/-', 'Priyanka', 'Active', '2022-05-25 13:25:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`cost_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`family_id`);

--
-- Indexes for table `flatnumbers`
--
ALTER TABLE `flatnumbers`
  ADD PRIMARY KEY (`flatnumber_id`);

--
-- Indexes for table `flattypes`
--
ALTER TABLE `flattypes`
  ADD PRIMARY KEY (`flattype_id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`phase_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `flatnumbers`
--
ALTER TABLE `flatnumbers`
  MODIFY `flatnumber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `flattypes`
--
ALTER TABLE `flattypes`
  MODIFY `flattype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `phase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
