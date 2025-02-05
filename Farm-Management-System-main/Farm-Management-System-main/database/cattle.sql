-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 02:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cattle`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8 ');

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`id`, `name`) VALUES
(17, 'Holstein Friesian'),
(16, 'Brown Swiss'),
(15, 'Ayrshire'),
(18, 'Jersey'),
(20, 'Red Dane');

-- --------------------------------------------------------

--
-- Table structure for table `cattles`
--

CREATE TABLE `cattles` (
  `id` int(11) NOT NULL,
  `cattleno` varchar(255) NOT NULL,
  `breed_id` int(11) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `arrived` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `health_status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cattles`
--

INSERT INTO `cattles` (`id`, `cattleno`, `breed_id`, `weight`, `img`, `gender`, `arrived`, `remark`, `health_status`) VALUES
(5, 'cat-fms-7573', 12, '123', 'uploadfolder/download.jfif', 'female', '2021-02-10', 'A good cow with a good yield', 'active'),
(3, '', 0, '', '', '', '', '', ''),
(4, 'cat-fms-6754', 3, '123', 'uploadfolder/download.jfif', 'male', '2021-02-17', 'asdasdasdqweqweqweqweqweasdasdsad', 'active'),
(7, 'cat-fms-3554', 15, '200', 'uploadfolder/1.jpg', 'female', '2023-09-14', 'Good grade cow', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `id` int(11) NOT NULL,
  `cattle_no` varchar(50) NOT NULL,
  `date_q` varchar(10) NOT NULL,
  `reason` text NOT NULL,
  `breed` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quarantine`
--

INSERT INTO `quarantine` (`id`, `cattle_no`, `date_q`, `reason`, `breed`) VALUES
(2, 'cat-fms-7573', '2021-02-26', 'wadadasdasd', 'Arialian'),
(4, 'cat-fms-7573', '2021-02-26', 'qweqweqweqweqwe', 'Arialian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cattles`
--
ALTER TABLE `cattles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breed`
--
ALTER TABLE `breed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cattles`
--
ALTER TABLE `cattles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quarantine`
--
ALTER TABLE `quarantine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
