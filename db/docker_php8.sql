-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Oct 28, 2022 at 02:35 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docker_php8`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `publish_date`, `modify_date`) VALUES
(1, 'Lorem ipsum', '\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(2, 'Nulla mollis', 'Nulla mollis lectus vitae interdum volutpat.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(3, 'Donec ac dolo', 'Donec ac dolor iaculis, ullamcorper ipsum ac, porta mauris.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(4, 'Integer in', 'Integer in nisl tempus augue vestibulum varius eget id nisl.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(5, 'Etiam eu', 'Etiam eu ligula lacinia, ornare enim commodo, feugiat ipsum.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(6, 'In ut enim', 'In ut enim bibendum, scelerisque dui non, rhoncus neque.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(7, 'Sed eu urna', 'Sed eu urna scelerisque metus pharetra venenatis.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(8, 'Ut porttitor', 'Ut porttitor erat a purus dictum, euismod aliquam ex elementum.', '2022-10-28 14:34:59', '2022-10-28 14:34:59'),
(9, 'Phasellus non', 'Phasellus non massa at nibh porta consequat vitae non augue.', '2022-10-28 14:34:59', '2022-10-28 14:34:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
