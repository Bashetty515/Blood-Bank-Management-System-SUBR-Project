-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 08:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blooddinfo`
--

CREATE TABLE `blooddinfo` (
  `bdid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddinfo`
--

INSERT INTO `blooddinfo` (`bdid`, `rid`, `bg`) VALUES
(10, 1, 'A+'),
(11, 1, 'B-'),
(12, 4, 'B+'),
(13, 4, 'O+'),
(14, 5, 'B+'),
(15, 5, 'B-'),
(16, 5, 'O+'),
(17, 6, 'B+'),
(18, 6, 'AB+'),
(19, 6, 'A-'),
(20, 7, 'AB-'),
(21, 7, 'A-'),
(22, 7, 'O-'),
(23, 1, 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonate`
--

CREATE TABLE `blooddonate` (
  `donoid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

CREATE TABLE `bloodinfo` (
  `bid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(7, 1, 'A-'),
(8, 1, 'O+'),
(12, 4, 'A-'),
(13, 4, 'A+'),
(14, 4, 'AB+'),
(16, 5, 'A+'),
(17, 5, 'B-'),
(18, 5, 'O-'),
(20, 5, 'B+'),
(21, 6, 'O+'),
(22, 6, 'A-'),
(23, 6, 'O-'),
(24, 7, 'A-'),
(25, 7, 'A+'),
(26, 7, 'B-'),
(27, 7, 'B+'),
(31, 1, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `reqid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`) VALUES
(1, 'Baton Rouge General', 'brgeneral@org', 'general', '(225)387-7000', 'Baton Rouge'),
(4, 'Ochsner Medical Center', 'Ochsner@gmail.com', 'ochsner', '(225)752-2470', 'Baton Rouge'),
(5, 'Our Lady of the Lake Regional Medical', 'lake@gmail.com', 'lake', '(225)765-6565', 'Baton Rouge'),
(6, 'Promise Hospital', 'Promise@gmail.com', 'promise', '(225)490-9600', 'Baton Rouge'),
(7, 'womans Hospital', 'womans@gmail.com', 'womans', '(225)927-1300', 'Baton Rouge');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `rphone`, `rbg`, `rcity`) VALUES
(1, 'test', 'test@gmail.com', 'test@123', '(469)426-5989', 'A+', 'Nirmal'),
(4, 'Arun', 'arun@gmail.com', 'arun@123', '(475)298-8147', 'B+', 'Nirmal'),
(5, 'Akshay', 'akshay@gmail.com', 'akshay@123', '(904)240-9968', 'B+', 'hyderabad'),
(6, 'Ram', 'ram@gmail.com', 'ram@123', '(551)328-9107', 'B+', 'Warangal'),
(7, 'Chandu', 'chandu@gmail.com', 'chandhu@123', '(334)895-1068', 'AB-', 'hyderabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  ADD PRIMARY KEY (`bdid`),
  ADD KEY `blooddinfo_ibfk_2` (`rid`);

--
-- Indexes for table `blooddonate`
--
ALTER TABLE `blooddonate`
  ADD PRIMARY KEY (`donoid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  MODIFY `bdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blooddonate`
--
ALTER TABLE `blooddonate`
  MODIFY `donoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  ADD CONSTRAINT `blooddinfo_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `receivers` (`id`);

--
-- Constraints for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD CONSTRAINT `bloodinfo_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
