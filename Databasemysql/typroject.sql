-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 10:16 AM
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
-- Database: `typroject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uid` int(11) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uid`, `uname`, `upass`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `subtotal` varchar(10) DEFAULT NULL,
  `gst` varchar(10) DEFAULT NULL,
  `grandtotal` varchar(10) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `cuname` varchar(30) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cuname` varchar(30) NOT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cmob` varchar(15) DEFAULT NULL,
  `cadd` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `cemail` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuname`, `cpass`, `cname`, `cmob`, `cadd`, `pincode`, `cemail`) VALUES
('vaishnavi', '81dc9bdb52d04dc20036dbd8313ed055', 'vaishnavi', '09673198574', '10/11 Bangale Niwas Sukhsagar Nagar part1 Lane no 18, katraj pune 46', '411046', 'vaishnavibangale28@gmail.com'),
('sanskruti', '81dc9bdb52d04dc20036dbd8313ed055', 'sanskrutii', '585845636', 'qwertyuiop[', '15522', 'sanskruti@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `pprice` varchar(10) DEFAULT NULL,
  `pdesc` text DEFAULT NULL,
  `pqty` int(11) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `pcat` varchar(40) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pprice`, `pdesc`, `pqty`, `pimage`, `pcat`, `uid`) VALUES
(9, 'Husky', '45000', 'Siberian Huskies are a popular dog breed known for their striking appearance, intelligence, and athleticism. They have a thick double coat that can come in various colors and markings, including black, white, gray, red, or a mix o. Siberian Huskies were originally bred by the Chukchi people of Siberia to pull sleds over long distances in cold climates.', 4, '../uploads/17107529521653490662siberian_husky.jpg', 'male', 1),
(8, 'Golden Retriever', '15000', 'Intelligence: Golden Retrievers are highly intelligent dogs and are known for their eagerness to please their owners. They are quick learners and excel in obedience training, agility, and other canine sports.', 3, '../uploads/1710410867golden_retriever.jpg', 'female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `short_bill`
--

CREATE TABLE `short_bill` (
  `billno` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `short_bill`
--

INSERT INTO `short_bill` (`billno`, `pid`) VALUES
(1, 6),
(1, 5),
(2, 5),
(2, 1),
(2, 1),
(3, 2),
(3, 1),
(4, 1),
(5, 7),
(5, 3),
(5, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `sid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `pqty` int(11) DEFAULT NULL,
  `sdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

CREATE TABLE `temp_cart` (
  `cuname` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  `cr_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cuname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
