-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 06:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hima`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted`
--

CREATE TABLE `accepted` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `desciption` varchar(1000) NOT NULL,
  `userId` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accepted`
--

INSERT INTO `accepted` (`id`, `title`, `desciption`, `userId`, `adminid`, `data`) VALUES
(2, 'ghgh', 'ghhghghghg', 2, 19, '2022-09-06 13:26:45'),
(3, 'wewe', 'Message desciption', 1, 19, '2022-09-06 13:27:02'),
(4, 'wewe', 'Message desciption', 1, 19, '2022-09-06 13:30:09'),
(5, 'wsese', 'AAAAAAAA', 1, 19, '2022-09-06 13:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`, `role`) VALUES
(4, 'Mohamed El hosisny', 'm.m.m.elhossin@gmail.com', '123', '166161972963346499.jfif', 0),
(5, 'ibrahem', 'ibrahemyasser@yahoo.com', '123', '1661620013bb.jpg', 0),
(6, 'essam eldeep', 'essameldeep@gmail.com', '1234', '1661620108272990928_4777408229047307_5339057468500715582_n.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `desciption` text NOT NULL,
  `auther` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `desciption`, `auther`, `image`, `data`) VALUES
(13, 'Atricles title', 'Atricles desciption', 'Saif Ahmed', '1662385024slides-1.jpg', '2022-09-05 13:37:04'),
(14, 'حادثة', ' Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 Atricles desciption2 ', 'Saif Ahmed', '1662385842news-4.jpg', '2022-09-05 13:50:42'),
(15, 'Atricles desciption2', 'Atricles desciption2Atricles desciption2Atricles desciption2Atricles desciption2Atricles desciption2Atricles desciption2', 'Mohamed El hosisny', '1662385954product-3.jpg', '2022-09-05 13:52:34'),
(16, 'www', 'AAAAAAAA', 'Seif Ahmed', '1662395652slides-2.jpg', '2022-09-05 16:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `desciption` varchar(1000) NOT NULL,
  `userId` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `title`, `desciption`, `userId`, `adminid`, `date`) VALUES
(6, 'hujkl', 'h', 1, 20, '2022-09-06 12:36:54'),
(8, 'Erorr', 'Message desciption', 1, 20, '2022-09-06 12:37:53'),
(9, 'ghgh', 'ghhghghghg', 2, 19, '2022-09-06 12:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `lawyers`
--

CREATE TABLE `lawyers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lawyers`
--

INSERT INTO `lawyers` (`id`, `name`, `password`, `email`, `image`) VALUES
(19, 'Saif Ahmed', '123', 'sa5302539@gmail.com', '1662376396messages-3.jpg'),
(20, 'Seif Ahmed', '123', '459854708@cairo3.moe.edu.eg', '1662395446messages-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `permations`
--

CREATE TABLE `permations` (
  `role_id` int(11) NOT NULL,
  `descriptoin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permations`
--

INSERT INTO `permations` (`role_id`, `descriptoin`) VALUES
(0, 'All acces '),
(1, 'all access without admins'),
(2, 'all access without articls');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(33) NOT NULL,
  `adminid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Seeeif', 'saif@gmail.com', '123'),
(2, 'seeeeeegggggg', 'seif@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted`
--
ALTER TABLE `accepted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `lawyers`
--
ALTER TABLE `lawyers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `permations`
--
ALTER TABLE `permations`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted`
--
ALTER TABLE `accepted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lawyers`
--
ALTER TABLE `lawyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted`
--
ALTER TABLE `accepted`
  ADD CONSTRAINT `accepted_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `permations` (`role_id`);

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
