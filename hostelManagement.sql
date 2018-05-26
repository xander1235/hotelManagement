-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 03:26 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `city` varchar(25) DEFAULT NULL,
  `hostelName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `city`, `hostelName`) VALUES
(1, 'Hyderabad', 'VH-1'),
(2, 'Hyderabad', 'VH-2'),
(3, 'Varanasi', 'BH-1'),
(4, 'Varanasi', 'BH-2'),
(5, 'Varanasi', 'BH-3'),
(6, 'Allahabad', 'GH-1');

-- --------------------------------------------------------

--
-- Table structure for table `roomDetails`
--

CREATE TABLE `roomDetails` (
  `id` int(11) NOT NULL,
  `roomType` int(11) DEFAULT NULL,
  `availabity` int(11) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `hostelId` int(11) NOT NULL,
  `roomName` varchar(25) NOT NULL,
  `customer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomDetails`
--

INSERT INTO `roomDetails` (`id`, `roomType`, `availabity`, `rent`, `hostelId`, `roomName`, `customer`) VALUES
(1, 1, 1, 300, 2, 'R1', ''),
(2, 2, 1, 500, 2, 'r2', ''),
(3, 3, 0, 300, 0, 'r3', ''),
(4, 4, 1, 500, 2, 'r4', '');

-- --------------------------------------------------------

--
-- Table structure for table `roomType`
--

CREATE TABLE `roomType` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomType`
--

INSERT INTO `roomType` (`id`, `type`) VALUES
(1, 'single non-ac'),
(2, 'double non-ac'),
(3, 'single ac'),
(4, 'double ac');

-- --------------------------------------------------------

--
-- Table structure for table `userDetails`
--

CREATE TABLE `userDetails` (
  `id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userDetails`
--

INSERT INTO `userDetails` (`id`, `username`, `password`, `email`) VALUES
(2, 'surya', 'kanna', 'kana@keka.co'),
(3, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomDetails`
--
ALTER TABLE `roomDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userDetails`
--
ALTER TABLE `userDetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roomDetails`
--
ALTER TABLE `roomDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `userDetails`
--
ALTER TABLE `userDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
