-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2024 at 08:05 AM
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
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `assigned_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('Pending','In Progress','Completed') NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `assigned_date`, `due_date`, `status`, `user_id`) VALUES
(3, 'Manage Users', '2024-08-09', '2025-08-09', 'In Progress', 3),
(7, 'Organize Employee Training Workshop', '2024-08-01', '2024-10-14', 'In Progress', 5),
(8, 'Cleaning', '2024-08-07', '2024-08-30', 'In Progress', 4),
(9, ' Conduct Interviews for Software Developer Position', '2024-08-10', '2024-08-31', 'In Progress', 5),
(10, 'Review and Update Employee Handbook', '2024-08-01', '2024-08-10', 'Completed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('User','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-08-10 14:10:55'),
(3, 'Ravindu', 'ravindu@gmail.com', '37cf4a13225f08f94f43bdd615196b65', 'User', '2024-08-10 14:20:09'),
(4, 'Lahiru', 'lahiru@gmail.com', '2a12f86e0124d7e43e2a16c7a051bb1a', 'User', '2024-08-10 14:20:47'),
(5, 'Gayani', 'gayani@gmail.com', 'f265febecffd119a4014513228e1c8c1', 'User', '2024-08-10 16:55:41'),
(13, 'sammani', 'sammani@gmail.com', '202cb962ac59075b964b07152d234b70', 'User', '2024-08-10 18:25:29'),
(15, 'Dinushi', 'dinu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'User', '2024-08-11 02:47:48'),
(25, 'Amal', 'amal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', '2024-08-11 06:01:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
