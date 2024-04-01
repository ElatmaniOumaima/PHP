-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 12:35 PM
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
-- Database: `fruits`
--

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Ananas', 'images/ananas.png', 'audio/ananas.m4a'),
(2, 'Banane', 'images/banana.png', 'audio/banane.m4a'),
(3, 'Cerise', 'images/cerise.png', 'audio/cerise.m4a'),
(4, 'Pêche', 'images/peche.png', 'audio/peche.m4a'),
(5, 'Orange', 'images/orange.png', 'audio/orange.m4a'),
(6, 'Kiwi', 'images/kiwi.png', 'audio/kiwi.m4a'),
(7, 'Poire', 'images/poire.png', 'audio/poire.m4a'),
(8, 'Citron', 'images/citron.png', 'audio/citron.m4a'),
(9, 'Fraise', 'images/fraise.png', 'audio/fraise.m4a'),
(10, 'Pomme', 'images/pomme.png', 'audio/pomme.m4a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
