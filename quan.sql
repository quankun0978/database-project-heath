-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 05:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcodes`
--

CREATE TABLE `allcodes` (
  `id` int(11) NOT NULL,
  `keyType` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `valueEn` varchar(255) DEFAULT NULL,
  `valueVi` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allcodes`
--

INSERT INTO `allcodes` (`id`, `keyType`, `type`, `valueEn`, `valueVi`, `createdAt`, `updatedAt`) VALUES
(1, 'R1', 'ROLE', 'Admin', 'Quản trị viên', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'R2', 'ROLE', 'Doctor', 'Bác sĩ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'R3', 'ROLE', 'Patient', 'Bệnh nhân', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'S1', 'STATUS', 'New', 'Lịch hẹn mới', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'S2', 'STATUS', 'Confirmed', 'Đã xác nhận', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'S3', 'STATUS', 'Done', 'Đã khám xong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'S4', 'STATUS', 'Cancel', 'Đã hủy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'T1', 'TIME', '8:00 AM - 9:00 AM', '8:00 - 9:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'T2', 'TIME', '9:00 AM - 10:00 AM', '9:00 - 10:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'T3', 'TIME', '10:00 AM - 11:00 AM', '10:00 - 11:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'T4', 'TIME', '11:00 AM - 0:00 PM', '11:00 - 12:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'T5', 'TIME', '1:00 PM - 2:00 PM', '13:00 - 14:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'T6', 'TIME', '2:00 PM - 3:00 PM', '14:00 - 15:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'T7', 'TIME', '3:00 PM - 4:00 PM', '15:00 - 16:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'T8', 'TIME', '4:00 PM - 5:00 PM', '16:00 - 17:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'P0', 'POSITION', 'None', 'Bác sĩ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'P1', 'POSITION', 'Master', 'Thạc sĩ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'P2', 'POSITION', 'Doctor', 'Tiến sĩ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'P3', 'POSITION', 'Associate Professor', 'Phó giáo sư', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'P4', 'POSITION', 'Professor', 'Giáo sư', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'M', 'GENDER', 'Male', 'Nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'F', 'GENDER', 'Female', 'Nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'O', 'GENDER', 'Other', 'Khác', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `statusId` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `patientid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `timeType` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_clinic_specialty`
--

CREATE TABLE `doctor_clinic_specialty` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `clinicId` int(11) DEFAULT NULL,
  `specialtyId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `patientid` int(11) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markdown`
--

CREATE TABLE `markdown` (
  `id` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `htmlText` longtext NOT NULL,
  `markdownText` longtext NOT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `specialtyId` int(11) DEFAULT NULL,
  `clinicId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `currentNumber` int(11) DEFAULT NULL,
  `maxNumber` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `timeType` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('migrations-create-allcodes.js'),
('migrations-create-booking.js'),
('migrations-create-clinic.js'),
('migrations-create-doctor-clinic-specialty.js'),
('migrations-create-history.js'),
('migrations-create-markdowns.js'),
('migrations-create-schedule.js'),
('migrations-create-specialty.js'),
('migrations-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `positionId` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstName`, `lastName`, `address`, `gender`, `roleId`, `phonenumber`, `positionId`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'aaa@gmail.com', '$2b$10$ybXfpwB83TEDnBrBLfOSZew87CaF.Ie0iicLm0V.n6UPOxS88gaWW', 'Qunt', '5', 'Hanoi', '1', '1', NULL, NULL, NULL, '2023-11-08 11:51:21', '2023-11-08 11:51:21'),
(2, 'ss', '$2b$10$r3ZHVdD.dbl0DdprNBetZ.92uDkmrQBn1JfTaALtbgr.CWsoxxgH6', 's', 's', 's', 'Male', 'Doctor', 's', 'Doctor', NULL, '2023-11-08 12:21:11', '2023-11-08 12:21:11'),
(3, 'ssssss', '$2b$10$r3ZHVdD.dbl0DdprNBetZ.342YXoyUtWLNuTBwykryycJjt23ZKj6', 's', 's', 's', 'Male', 'Doctor', 's44444', 'Doctor', NULL, '2023-11-08 12:21:20', '2023-11-08 12:21:20'),
(4, 'sssssshy', '$2b$10$r3ZHVdD.dbl0DdprNBetZ.342YXoyUtWLNuTBwykryycJjt23ZKj6', 'seee', 'srt', 's', 'Female', 'Doctor', 's44444', 'Associate Professor', NULL, '2023-11-08 12:21:34', '2023-11-08 12:21:34'),
(8, 'uuuuuuu', '$2b$10$X6EXeh65MSGGafPxjvGM9Oyh.TRtZ5xLxy7a0lA61coXsbaQyLqES', 'Vũ ', 'Hoàng Hải', 'k5', 'M', 'R3', '111111111111111', 'P3', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699437588/jmgl2ng2pjmew8i1qozw.png', '2023-11-08 16:59:49', '2023-11-08 16:59:49'),
(9, 'uuuuuuu4444', '$2b$10$X6EXeh65MSGGafPxjvGM9Oyh.TRtZ5xLxy7a0lA61coXsbaQyLqES', 'Vũ ', 'Hoàng Hải', 'k5', 'M', 'R3', '111111111111111', 'P0', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699437628/x4cuqqlhszlnkbzgldxo.png', '2023-11-08 17:00:29', '2023-11-08 17:00:29'),
(10, 'uuuuuus', '$2b$10$X6EXeh65MSGGafPxjvGM9Oyh.TRtZ5xLxy7a0lA61coXsbaQyLqES', 'Vũ ', 'Hoàng Hải', 'k5', 'M', 'R2', '111111111111111', 'P0', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699437693/g25oglvd1m9qnioiftqf.png', '2023-11-08 17:01:34', '2023-11-08 17:01:34'),
(11, 'aaaaaf', '$2b$10$PQ7XA051k7OUVodKrZfYV./IGjXfuRbKu70gN4qIZ1NHyg6OBf0eS', '444', '7', '6', 'M', 'R2', '12345', 'P0', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699860343/hcjctrncgonqjpwurecn.png', '2023-11-13 14:25:44', '2023-11-13 14:25:44'),
(12, 'ee', '$2b$10$PQ7XA051k7OUVodKrZfYV.XjlfevEKArkQ3TkxghJC8X/lWmQpFIG', 'ssss', 'a', 's', 'F', 'R2', 'a', 'P3', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699860451/zhfvipuqggc8zt6eoalv.png', '2023-11-13 14:27:32', '2023-11-13 14:27:32'),
(13, 'eesssssq', '$2b$10$PQ7XA051k7OUVodKrZfYV.XjlfevEKArkQ3TkxghJC8X/lWmQpFIG', 'ssss', 'a', 's', 'F', 'R2', '55555', 'P1', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699860492/mzdviaepltt1yt1wlcht.png', '2023-11-13 14:28:13', '2023-11-13 14:28:13'),
(14, 'quankun@eeeee.com', '$2b$10$PQ7XA051k7OUVodKrZfYV.BKY58BmoCHlQs8JTnngNJbEpf8XPv3G', 'Bùi', 'Bình', 's3', 'F', 'R2', '555554', 'P2', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699863845/gclbrh24m5d6sw2cjjon.png', '2023-11-13 15:24:06', '2023-11-13 15:24:06'),
(15, 'quankun@ee7', '$2b$10$PQ7XA051k7OUVodKrZfYV.BKY58BmoCHlQs8JTnngNJbEpf8XPv3G', 'Bùi', 'Bình', 's3', 'M', 'R2', '555554000', 'P3', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699868076/qw8n1w70uysksqvvvfbq.png', '2023-11-13 16:34:37', '2023-11-13 16:34:37'),
(16, 'tttttttttt', '$2b$10$PQ7XA051k7OUVodKrZfYV.BKY58BmoCHlQs8JTnngNJbEpf8XPv3G', 'Tiến', 'Dũng', 's3', 'O', 'R2', '555554000', 'P1', 'https://res.cloudinary.com/da8l8b4tg/image/upload/v1699868123/qwgij97tyq1simbvk8fr.png', '2023-11-13 16:35:24', '2023-11-13 16:35:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allcodes`
--
ALTER TABLE `allcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_clinic_specialty`
--
ALTER TABLE `doctor_clinic_specialty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markdown`
--
ALTER TABLE `markdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allcodes`
--
ALTER TABLE `allcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_clinic_specialty`
--
ALTER TABLE `doctor_clinic_specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markdown`
--
ALTER TABLE `markdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
