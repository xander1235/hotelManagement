-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2017 at 06:55 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(2) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `hallName` varchar(25) DEFAULT NULL,
  `rent` int(10) DEFAULT NULL,
  `availability` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `city`, `hallName`, `rent`, `availability`) VALUES
(1, 'Hyderabad', 'Avasa', 30000, 1),
(2, 'Varanasi', 'Nakshatra', 15000, 1),
(3, 'Chennai', 'Utsava', 20000, 1),
(4, 'Vizag', 'Daspalla', 17000, 1),
(5, 'Mumbai', 'Evershine', 20000, 1),
(6, 'Allahabad', 'Kay Cee', 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `city` varchar(25) DEFAULT NULL,
  `hotelName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `city`, `hotelName`) VALUES
(1, 'Hyderabad', 'Novotel'),
(2, 'Hyderabad', 'Taj-Banjara'),
(3, 'Varanasi', 'Radisson'),
(4, 'Varanasi', 'The-Gateway'),
(5, 'Varanasi', 'Ramada'),
(6, 'Allahabad', 'Kanha-Shyam'),
(7, 'Hyderabad', 'The-Westin'),
(8, 'Hyderabad', 'Redfox'),
(9, 'Hyderabad', 'Marriott'),
(10, 'Allahabad', 'Prayag'),
(11, 'Allahabad', 'Milan'),
(12, 'Allahabad', 'Mandiram'),
(13, 'Allahabad', 'Grand-continental'),
(14, 'Varanasi', 'Ravatas'),
(15, 'Varanasi', 'Great-Wine'),
(16, 'Vizag', 'Winsar'),
(17, 'Vizag', 'Sheraton'),
(18, 'Vizag', 'Novotel'),
(19, 'Vizag', 'Encore'),
(20, 'Vizag', 'Sunray'),
(21, 'Mumbai', 'Hyat'),
(22, 'Mumbai', 'Treebo'),
(23, 'Mumbai', 'Taj-lands'),
(24, 'Mumbai', 'Trident'),
(25, 'Mumbai', 'Kohinoor'),
(26, 'Chennai', 'The-Raintree'),
(27, 'Chennai', 'The-Checkers'),
(28, 'Chennai', 'Taj-Club'),
(29, 'Chennai', 'Hilton'),
(30, 'Chennai', 'Benzz-Park');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `id` int(3) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`id`, `firstname`, `lastname`, `contact`, `address`, `email`) VALUES
(4, 'rathod', 'veerender', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'fmdkfmvmv        f d d dcjv', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'gfdgfdhhd', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(8, 'kumar', 'kumar', 9455294564, 'fdjkfbdsbsdgbs', 'kumar@gmail.comhjf'),
(8, 'kumar', 'kumar', 9455294564, 'fdjkfbdsbsdgbs', 'kumar@gmail.comhjf'),
(8, 'kumar', 'kumar', 9455294564, 'fdjkfbdsbsdgbs', 'kumar@gmail.comhjf'),
(8, 'kumar', 'kumar', 9455294564, 'fdjkfbdsbsdgbs', 'kumar@gmail.comhjf'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(4, 'rathod', 'rathod', 9455294564, 'mancherial', 'rathodveerender25@gmail.com'),
(9, 'ghfdh', 'fkdf', 9455294564, 'fhdkgj', 'ff@gngf.com'),
(10, 'niharika', 'vallambatla', 9063389488, 'hkxujsgdue', 'niha7698@gmail.com'),
(10, 'niharika', 'vallambatla', 9063389488, 'hkxujsgdue', 'niha7698@gmail.com'),
(10, 'niharika', 'vallambatla', 9063389488, 'hkxujsgdue', 'niha7698@gmail.com'),
(10, 'sdjvbvb', 'xckbvb', 9455294564, 'nfdbdsds', 'mnbvbd@nfvfmn.com'),
(10, 'sdjvbvb', 'xckbvb', 9455294564, 'nfdbdsds', 'mnbvbd@nfvfmn.com'),
(10, 'sdjvbvb', 'xckbvb', 9455294564, 'nfdbdsds', 'mnbvbd@nfvfmn.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(11, 'fhjvfhv', 'dbbf', 9455294564, 'fnjdkgnfjkbfd', 'fndsjnfn@nfbjnf.com'),
(5, 'sama', 'sama', 8187818911, 'as sfvcfxvcsd', 'praveensama0@gmail.com'),
(5, 'sama', 'sama', 8187818911, 'as sfvcfxvcsd', 'praveensama0@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(2) DEFAULT NULL,
  `pic` varchar(30) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `submited` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `pic`, `name`, `submited`) VALUES
(4, 'chennai.jpg', 'rathod', 1),
(4, 'chennai.jpg', 'rathod', 1),
(4, 'chennai.jpg', 'rathod', 1),
(4, 'chennai.jpg', 'rathod', 1),
(4, '', 'rathod', 1),
(9, '', 'raghu', 1),
(4, '', 'rathod', 1),
(10, 'hyat2.jpg', 'sdjvbvb', 1),
(10, 'hyat2.jpg', 'sdjvbvb', 1),
(4, '', 'rathod', 1),
(11, 'indexbg.jpg', 'ddgsgs', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(11, 'indexbg.jpg', 'fhjvfhv', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(10, '', 'niharika', 1),
(5, 'allahabad.jpg', 'sama', 1),
(5, 'allahabad.jpg', 'sama', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomDetails`
--

CREATE TABLE `roomDetails` (
  `id` int(11) NOT NULL,
  `roomType` int(11) DEFAULT NULL,
  `availabity` int(11) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `hotelId` int(11) NOT NULL,
  `roomName` varchar(25) NOT NULL,
  `customer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomDetails`
--

INSERT INTO `roomDetails` (`id`, `roomType`, `availabity`, `rent`, `hotelId`, `roomName`, `customer`) VALUES
(1, 1, 1, 300, 2, 'R1', 'noCustomer'),
(2, 2, 1, 500, 2, 'r2', 'noCustomer'),
(3, 3, 1, 300, 2, 'r3', 'noCustomer'),
(4, 4, 1, 500, 2, 'r4', 'noCustomer'),
(5, 1, 0, 300, 1, 's1', 'rucbyvinu'),
(6, 2, 1, 500, 1, 's2', 'noCustomer'),
(7, 3, 1, 300, 1, 's3', 'noCustomer'),
(8, 4, 1, 500, 1, 's4', 'noCustomer'),
(9, 1, 1, 300, 3, 'a1', 'noCustomer'),
(10, 2, 1, 500, 3, 'a2', 'noCustomer'),
(11, 3, 1, 300, 3, 'a3', 'noCustomer'),
(12, 4, 1, 500, 3, 'a4', 'noCustomer'),
(13, 1, 1, 300, 4, 'b1', 'noCustomer'),
(14, 2, 1, 500, 4, 'b2', 'noCustomer'),
(15, 3, 1, 300, 4, 'b3', 'noCustomer'),
(16, 4, 1, 500, 4, 'b4', 'noCustomer'),
(17, 1, 1, 300, 5, 'c1', 'noCustomer'),
(18, 2, 1, 500, 5, 'c2', 'noCustomer'),
(19, 3, 1, 300, 5, 'c3', 'noCustomer'),
(20, 4, 1, 500, 5, 'c4', 'noCustomer'),
(21, 1, 1, 300, 6, 'd1', 'noCustomer'),
(22, 2, 1, 500, 6, 'd2', 'noCustomer'),
(23, 3, 1, 300, 6, 'd3', 'noCustomer'),
(24, 4, 1, 500, 6, 'd4', 'noCustomer'),
(25, 1, 1, 300, 7, 'e1', 'noCustomer'),
(26, 2, 1, 500, 7, 'e2', 'noCustomer'),
(27, 3, 1, 300, 7, 'e3', 'noCustomer'),
(28, 4, 1, 500, 7, 'e4', 'noCustomer'),
(29, 1, 1, 300, 8, 'f1', 'noCustomer'),
(30, 2, 1, 500, 8, 'f2', 'noCustomer'),
(31, 3, 1, 300, 8, 'f3', 'noCustomer'),
(32, 4, 1, 500, 8, 'f4', 'noCustomer'),
(33, 1, 1, 300, 9, 'g1', 'noCustomer'),
(34, 2, 1, 500, 9, 'g2', 'noCustomer'),
(35, 3, 1, 300, 9, 'g3', 'noCustomer'),
(36, 4, 1, 500, 9, 'g4', 'noCustomer'),
(37, 1, 1, 300, 10, 'h1', 'noCustomer'),
(38, 2, 1, 500, 10, 'h2', 'noCustomer'),
(39, 3, 1, 300, 10, 'h3', 'noCustomer'),
(40, 4, 1, 500, 10, 'h4', 'noCustomer'),
(41, 1, 1, 300, 11, 'i1', 'noCustomer'),
(42, 2, 1, 500, 11, 'i2', 'noCustomer'),
(43, 3, 1, 300, 11, 'i3', 'noCustomer'),
(44, 4, 1, 500, 11, 'i4', 'noCustomer'),
(45, 1, 1, 300, 12, 'j1', 'noCustomer'),
(46, 2, 1, 500, 12, 'j2', 'noCustomer'),
(47, 3, 1, 300, 12, 'j3', 'noCustomer'),
(48, 4, 1, 500, 12, 'j4', 'noCustomer'),
(49, 1, 1, 300, 13, 'k1', 'noCustomer'),
(50, 2, 1, 500, 13, 'k2', 'noCustomer'),
(51, 3, 1, 300, 13, 'k3', 'noCustomer'),
(52, 4, 1, 500, 13, 'k4', 'noCustomer'),
(53, 1, 1, 300, 14, 'l1', 'noCustomer'),
(54, 2, 1, 500, 14, 'l2', 'noCustomer'),
(55, 3, 1, 300, 14, 'l3', 'noCustomer'),
(56, 4, 1, 500, 14, 'l4', 'noCustomer'),
(57, 1, 1, 300, 15, 'm1', 'noCustomer'),
(58, 2, 1, 500, 15, 'm2', 'noCustomer'),
(59, 3, 1, 300, 15, 'm3', 'noCustomer'),
(60, 4, 1, 500, 15, 'm4', 'noCustomer'),
(61, 1, 1, 300, 16, 'n1', 'noCustomer'),
(62, 2, 1, 500, 16, '22', 'noCustomer'),
(63, 3, 1, 300, 16, 'n3', 'noCustomer'),
(64, 4, 1, 500, 16, 'n4', 'noCustomer'),
(65, 1, 1, 300, 17, 'o1', 'noCustomer'),
(66, 2, 1, 500, 17, 'o2', 'noCustomer'),
(67, 3, 1, 300, 17, 'o3', 'noCustomer'),
(68, 4, 1, 500, 17, 'o4', 'noCustomer'),
(69, 1, 1, 300, 18, 'p1', 'noCustomer'),
(70, 2, 1, 500, 18, 'p2', 'noCustomer'),
(71, 3, 1, 300, 18, 'p3', 'noCustomer'),
(72, 4, 1, 500, 18, 'p4', 'noCustomer'),
(73, 1, 1, 300, 19, 'q1', 'noCustomer'),
(74, 2, 1, 500, 19, 'q2', 'noCustomer'),
(75, 3, 1, 300, 19, 'q3', 'noCustomer'),
(76, 4, 1, 500, 19, 'q4', 'noCustomer'),
(77, 1, 1, 300, 20, 'r1', 'noCustomer'),
(78, 2, 1, 500, 20, 'r2', 'noCustomer'),
(79, 3, 1, 300, 20, 'r3', 'noCustomer'),
(80, 4, 1, 500, 20, 'r4', 'noCustomer'),
(81, 1, 1, 300, 21, 's1', 'noCustomer'),
(82, 2, 1, 500, 21, 's2', 'noCustomer'),
(83, 3, 1, 300, 21, 's3', 'noCustomer'),
(84, 4, 1, 500, 21, 's4', 'noCustomer'),
(85, 1, 1, 300, 22, 't1', 'noCustomer'),
(86, 2, 1, 500, 22, 't2', 'noCustomer'),
(87, 3, 1, 300, 22, 't3', 'noCustomer'),
(88, 4, 1, 500, 22, 't4', 'noCustomer'),
(89, 1, 1, 300, 23, 'u1', 'noCustomer'),
(90, 2, 1, 500, 23, 'u2', 'noCustomer'),
(91, 3, 1, 300, 23, 'u3', 'noCustomer'),
(92, 4, 1, 500, 23, 'u4', 'noCustomer'),
(93, 1, 1, 300, 24, 'v1', 'noCustomer'),
(94, 2, 1, 500, 24, 'v2', 'noCustomer'),
(95, 3, 1, 300, 24, 'v3', 'noCustomer'),
(96, 4, 1, 500, 24, 'v4', 'noCustomer'),
(97, 1, 1, 300, 25, 'w1', 'noCustomer'),
(98, 2, 1, 500, 25, 'w2', 'noCustomer'),
(99, 3, 1, 300, 25, 'w3', 'noCustomer'),
(100, 4, 1, 500, 25, 'w4', 'noCustomer'),
(101, 1, 1, 300, 26, 'x1', 'noCustomer'),
(102, 2, 1, 500, 26, 'x2', 'noCustomer'),
(103, 3, 1, 300, 26, 'x3', 'noCustomer'),
(104, 4, 1, 500, 26, 'x4', 'noCustomer'),
(105, 1, 1, 300, 27, 'y1', 'noCustomer'),
(106, 2, 1, 500, 27, 'y2', 'noCustomer'),
(107, 3, 1, 300, 27, 'y3', 'noCustomer'),
(108, 4, 1, 500, 27, 'y4', 'noCustomer'),
(109, 1, 1, 300, 28, 'z1', 'noCustomer'),
(110, 2, 1, 500, 28, 'z2', 'noCustomer'),
(111, 3, 1, 300, 28, 'z3', 'noCustomer'),
(112, 4, 1, 500, 28, 'z4', 'noCustomer'),
(113, 1, 1, 300, 29, 'as1', 'noCustomer'),
(114, 2, 1, 500, 29, 'as2', 'noCustomer'),
(115, 3, 1, 300, 29, 'as3', 'noCustomer'),
(116, 4, 1, 500, 29, 'as4', 'noCustomer'),
(117, 1, 1, 300, 30, 'ad1', 'noCustomer'),
(118, 2, 1, 500, 30, 'ad2', 'noCustomer'),
(119, 3, 1, 300, 30, 'ad3', 'noCustomer'),
(120, 4, 1, 500, 30, 'ad4', 'noCustomer');

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
(4, 'rathod', 'rathod', 'rathod@fdfbd.com'),
(5, 'sama', 'sama', 'sama@gmail.com'),
(6, 'naveen', 'naveen', 'naveen@dnfnd.com'),
(7, '', '', ''),
(8, 'kumar', 'kumar', 'kumar@gmail.com'),
(9, 'raghu', 'chaitanya', 'naveen@dnfnd.com'),
(10, 'niharika', 'niharika', 'niha7698@gmail.com'),
(11, 'ddgsgs', 'gsgfgfdgf', 'dgsfgsgfs@fdsf.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
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
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `roomDetails`
--
ALTER TABLE `roomDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `userDetails`
--
ALTER TABLE `userDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
