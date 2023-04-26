-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2023 at 09:21 AM
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
-- Database: `closet`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `c_id` int(11) NOT NULL COMMENT 'clothes_id',
  `c_type` varchar(50) NOT NULL COMMENT 'clothes_type',
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`c_id`, `c_type`, `image`, `user_id`) VALUES
(1, 'ff', 'jpg_kritsada.jpg', 1),
(2, 'Pants', '185570.jpg', 7),
(3, 'Pants', '186842.jpg', 7),
(4, 'hat', '185571.jpg', 7),
(5, 'hat', '338023308_3310330062549752_1060554428702023335_n.jpg', 7),
(6, 'hat', '65015004 กฤษฎา แซ่กัว.png', 7),
(7, 'hat', '328085718_6085115128177870_6838227227288430455_n.jpg', 7),
(8, 'hat', '338023308_3310330062549752_1060554428702023335_n.jpg', 7),
(9, 'hat', 'DHCP Client.png', 7),
(10, 'Shoes', 'DHCP Client (1).png', 7),
(11, 'hat', 'black-with-gold-accent-background-free-vector.jpg', 7),
(12, 'hat', '244676084_991190721444423_1003813372756139813_n.jpg', 7),
(13, 'shirts', 'g5eo32xjgam31.png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sets`
--

CREATE TABLE `sets` (
  `set_id` int(11) NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sets`
--

INSERT INTO `sets` (`set_id`, `s_name`, `c_id`, `user_id`) VALUES
(3, 'set1', 2, 7),
(4, 'set1', 3, 7),
(5, 'set1', 4, 7),
(6, 'set1', 5, 7),
(7, 'set1', 6, 7),
(8, 'set2', 7, 7),
(9, 'set2', 8, 7),
(10, 'set2', 9, 7),
(13, 'set2', 11, 7),
(14, 'set2', 10, 7),
(18, 'gameza', 3, 7),
(19, 'gameza', 2, 7),
(20, 'gameza', 6, 7),
(21, 'gameza', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'gmgame1020@gmail.com'),
(2, 'game', 'game', 'gmgaddme1020@gmail.com'),
(6, 'test', 'test', 'test@test1.com'),
(7, 'abcd', 'abcd', 'gmgddddame1020@gmail.com'),
(8, 'root', '1234', 'gmgamddde1020@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'clothes_id', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sets`
--
ALTER TABLE `sets`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
