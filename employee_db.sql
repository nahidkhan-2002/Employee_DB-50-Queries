-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 11:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` varchar(30) NOT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `city`) VALUES
('Amazon', 'Seattle'),
('Apple', 'Cupertino'),
('Facebook', 'Menlo Park'),
('Google', 'Mountain View'),
('IBM', 'Armonk'),
('Intel', 'Santa Clara'),
('Microsoft', 'Redmond'),
('Netflix', 'Los Gatos'),
('Oracle', 'Redwood City'),
('Tesla', 'Palo Alto');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `employee_city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `street`, `employee_city`) VALUES
(1, 'John Doe', '123 Main St', 'Redmond'),
(2, 'Jane smith', '456 Oak St', 'Mountain View'),
(3, 'Bob Johnson', '789 Pine St', 'Cupertino'),
(4, 'Alice Brown', '101 Maple St', 'Seattle'),
(5, 'Charlie Davis', '202 Cedar St', 'Menlo Park'),
(6, 'David Harris', '303 Birch St', 'Armonk'),
(7, 'Emily Clark', '404 Elm St', 'Los Gatos'),
(8, 'Frank Miller', '505 Fir St', 'Palo Alto'),
(9, 'Grace Wilson', '606 Hickory St', 'Santa Clara'),
(10, 'Henry Baker', '707 Juniper St', 'Redwood City');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `employee_id` int(11) NOT NULL,
  `manager_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`employee_id`, `manager_name`) VALUES
(1, 'Emma Thompson'),
(2, 'Liam Neeson'),
(3, 'Olivia Wilde'),
(4, 'Daniel Craig'),
(5, 'Emma Stone'),
(6, 'Sarah Johnson'),
(7, 'Robert Brown'),
(8, 'Jennifer Lee'),
(9, 'Michael White'),
(10, 'Karen Taylor');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `employee_id` int(11) NOT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`employee_id`, `company_name`, `salary`) VALUES
(1, 'Microsoft', 100000.00),
(2, 'Google', 1200000.00),
(3, 'Apple', 110000.00),
(4, 'Amazon', 1050000.97),
(5, 'Facebook', 1150000.35),
(6, 'IBM', 95000.34),
(7, 'Netflix', 130000.89),
(8, 'Tesla', 125000.35),
(9, 'Intel', 90000.45),
(10, 'Oracle', 115000.34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `company_name` (`company_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
