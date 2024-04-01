-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 12:38 PM
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
-- Database: `nombres`
--

-- --------------------------------------------------------

--
-- Table structure for table `nombres`
--

CREATE TABLE `nombres` (
  `id` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `nombres`
--

INSERT INTO `nombres` (`id`, `nombre`, `image`, `audio`) VALUES
(1, 0, 'images/0.png', 'audio/0.m4a'),
(2, 1, 'images/1.png', 'audio/1.m4a'),
(3, 2, 'images/2.png', 'audio/2.m4a'),
(4, 3, 'images/3.png', 'audio/3.m4a'),
(5, 4, 'images/4.png', 'audio/4.m4a'),
(6, 5, 'images/5.png', 'audio/5.m4a'),
(7, 6, 'images/6.png', 'audio/6.m4a'),
(8, 7, 'images/7.png', 'audio/7.m4a'),
(9, 8, 'images/8.png', 'audio/8.m4a'),
(10, 9, 'images/9.png', 'audio/9.m4a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nombres`
--
ALTER TABLE `nombres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nombres`
--
ALTER TABLE `nombres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
