-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 12:32 PM
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
-- Database: `animaux`
--

-- --------------------------------------------------------

--
-- Table structure for table `animaux`
--

CREATE TABLE `animaux` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `animaux`
--

INSERT INTO `animaux` (`id`, `word`, `image`, `audio`) VALUES
(1, 'Lion', 'images/lion.png', 'audio/lion.m4a'),
(2, 'Girafe', 'images/girafe.webp', 'audio/girafe.m4a'),
(3, 'Coq', 'images/coq.png', 'audio/coq.m4a'),
(4, 'Papillon', 'images/papillon.png', 'audio/papillon.m4a'),
(5, 'Lapin', 'images/lapin.png', 'audio/lapin.m4a'),
(6, 'Chien', 'images/chien.png', 'audio/chien.m4a'),
(7, 'Poisson', 'images/poisson.webp', 'audio/poisson.m4a'),
(8, 'Tortue', 'images/tortue.png', 'audio/tortue.m4a'),
(9, 'Pingouin', 'images/pingouin.jpg', 'audio/pingouin.m4a'),
(10, 'Chat', 'images/chat.jpg', 'audio/chat.m4a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
