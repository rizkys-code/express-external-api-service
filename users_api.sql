-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20251207.3e20f101f7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2026 at 11:59 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `external_users`
--

CREATE TABLE `external_users` (
  `id` int NOT NULL,
  `external_id` char(36) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `external_users`
--

INSERT INTO `external_users` (`id`, `external_id`, `gender`, `first_name`, `last_name`, `email`, `city`, `country`, `created_at`) VALUES
(1, 'test-uuid-123', 'male', 'Noah', 'Moore', 'noah.moore@example.com', 'Mildura', 'Australia', '2026-01-03 02:51:58'),
(2, '6bdcbe81-c13e-4c8d-9052-5a3cd2a76b6f', 'male', 'Juho', 'Pulli', 'juho.pulli@example.com', 'Tuusniemi', 'Finland', '2026-01-03 03:04:56'),
(3, 'bd8d7f22-65ec-4064-9542-b1f158653711', 'female', 'Nanna', 'Poulsen', 'nanna.poulsen@example.com', 'Branderup J', 'Denmark', '2026-01-03 03:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `reqres_api`
--

CREATE TABLE `reqres_api` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reqres_api`
--

INSERT INTO `reqres_api` (`id`, `email`, `first_name`, `last_name`, `created_at`) VALUES
(1, 'emily.johnson@x.dummyjson.com', 'Emily', 'Johnson', '2026-01-03 06:38:46'),
(3, 'emily.johnson@x.dummyjson.com', 'Emily', 'Johnson', '2026-01-03 11:59:05'),
(4, 'emily.johnson@x.dummyjson.com', 'Emily', 'Johnson', '2026-01-03 11:59:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_users`
--
ALTER TABLE `external_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_external_id` (`external_id`);

--
-- Indexes for table `reqres_api`
--
ALTER TABLE `reqres_api`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `external_users`
--
ALTER TABLE `external_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reqres_api`
--
ALTER TABLE `reqres_api`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
