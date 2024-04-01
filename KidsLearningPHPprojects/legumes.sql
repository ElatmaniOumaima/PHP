-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 12:33 PM
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
-- Database: `legumes`
--

-- --------------------------------------------------------

--
-- Table structure for table `legumes`
--

CREATE TABLE `legumes` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `legumes`
--

INSERT INTO `legumes` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Aubergine', 'images/aubergine.png', 'audio/aubergine.m4a'),
(2, 'Brocoli', 'images/brocoli.png', 'audio/brocoli.m4a'),
(3, 'Carotte', 'images/carotte.png', 'audio/carotte.m4a'),
(4, 'Epinard', 'images/épinard.png', 'audio/epinard.m4a'),
(5, 'Pomme de terre', 'images/pomme-de-terre.png', 'audio/pomme-de-terre.m4a'),
(6, 'Oignon', 'images/oignon.png', 'audio/oignon.m4a'),
(7, 'Champignon', 'images/champignon.png', 'audio/champignon.m4a'),
(8, 'Poivron', 'images/poivron.png', 'audio/poivron.m4a'),
(9, 'Chou-fleur', 'images/chou-fleur.png', 'audio/chou-fleur.m4a'),
(10, 'Petit-pois', 'images/petit_poi.png', 'audio/petit_pois.m4a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `legumes`
--
ALTER TABLE `legumes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `legumes`
--
ALTER TABLE `legumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
