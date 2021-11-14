-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2021 at 11:13 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(10) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `time` date NOT NULL,
  `user` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(255) NOT NULL,
  `apassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `person` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(10) NOT NULL,
  `csubject` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cmessage` text NOT NULL,
  `ctime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `csubject`, `cname`, `cemail`, `cmessage`, `ctime`) VALUES
(1, 'collage', 'Watcharaphong Phummirang', 'pornhemnn1@gmail.com', 'Hallo', '2021-11-13 09:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `cooperation`
--

CREATE TABLE `cooperation` (
  `id` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` date NOT NULL,
  `author1` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `innovation`
--

CREATE TABLE `innovation` (
  `id` int(10) NOT NULL,
  `process` varchar(255) NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `emal` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `id` int(10) NOT NULL,
  `detail` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spatial`
--

CREATE TABLE `spatial` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbgroup`
--

CREATE TABLE `tbgroup` (
  `tbid` int(4) NOT NULL,
  `tbname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbgroup`
--

INSERT INTO `tbgroup` (`tbid`, `tbname`) VALUES
(1, 'องค์ความรู้และการปฏิบัติการเชิงพื้นที่'),
(2, 'จดหมายข่าว'),
(3, 'นวัตกรรมเพื่อการจัดการภัยพิบัติ'),
(4, 'โปรแกรม/สื่อมัลติมีเดีย'),
(5, 'กิจกรรม'),
(6, 'พื้นที่ต้นแบบ'),
(7, 'หลักสูตรอบรม'),
(8, 'ความร่วมมือระหว่างหน่วยงาน');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `target` varchar(255) NOT NULL,
  `unit` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `detailcontact` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cooperation`
--
ALTER TABLE `cooperation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovation`
--
ALTER TABLE `innovation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spatial`
--
ALTER TABLE `spatial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbgroup`
--
ALTER TABLE `tbgroup`
  ADD PRIMARY KEY (`tbid`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cooperation`
--
ALTER TABLE `cooperation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `innovation`
--
ALTER TABLE `innovation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spatial`
--
ALTER TABLE `spatial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbgroup`
--
ALTER TABLE `tbgroup`
  MODIFY `tbid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
