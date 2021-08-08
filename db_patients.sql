-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 01:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_patients`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `malade` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `date_naissance`, `malade`, `name`, `score`) VALUES
(19, '2021-07-01 00:00:00', b'0', 'Abdelhamid', 6),
(4, '2021-08-06 00:00:00', b'0', 'aaaaa', 5),
(8, '2021-08-06 00:00:00', b'0', 'Tesrt', 6),
(6, '2021-08-05 00:00:00', b'0', 'amina', 5),
(7, '2021-08-06 00:00:00', b'0', 'HAMID', 7),
(9, '2021-08-06 00:00:00', b'0', 'Tesrt', 6),
(10, '2021-08-06 00:00:00', b'0', 'Tesrt', 6),
(11, '2021-08-06 00:00:00', b'0', 'Tesrt', 6),
(12, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(13, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(14, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(15, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(16, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(17, '2021-08-06 00:00:00', b'0', 'hamid', 7),
(18, '2021-08-06 00:00:00', b'0', 'hamid', 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role`) VALUES
('ADMIN'),
('USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `active`) VALUES
('admin', '$2a$10$/S6xQU.eqlkgdGGoaGNoZu2kiWufttTPYWdPJae0BTtGwP6/d0qZi', 1),
('user1', '$2a$10$/S6xQU.eqlkgdGGoaGNoZu2kiWufttTPYWdPJae0BTtGwP6/d0qZi', 1),
('user2', '$2a$10$/S6xQU.eqlkgdGGoaGNoZu2kiWufttTPYWdPJae0BTtGwP6/d0qZi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `username` varchar(15) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`username`, `role`) VALUES
('admin', 'ADMIN'),
('admin', 'USER'),
('user1', 'USER'),
('user2', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`username`,`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
