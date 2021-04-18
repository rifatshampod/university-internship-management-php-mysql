-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 09:13 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseName` text NOT NULL,
  `faculty` text NOT NULL,
  `semester` text NOT NULL,
  `teacher` text NOT NULL,
  `credit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseName`, `faculty`, `semester`, `teacher`, `credit`) VALUES
(1, 'Programming', 'Information Technology', '3', 'Abdul Halim', '3'),
(2, 'Computer system', 'Information Technology', '3', 'Abdul Halim', '4'),
(3, 'Media System', 'Arts & Social Science', '2', 'Md Anwar', '3'),
(4, 'Business Math', 'Business Administration', '3', 'Lim Woo', '3'),
(5, 'Media History', 'Arts & Social Science', '2', 'Ang Tang Fong', '3');

-- --------------------------------------------------------

--
-- Table structure for table `coursereg`
--

CREATE TABLE `coursereg` (
  `id` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `courseName` text NOT NULL,
  `studentID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `result` text NOT NULL,
  `attendance` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereg`
--

INSERT INTO `coursereg` (`id`, `courseID`, `courseName`, `studentID`, `teacherID`, `result`, `attendance`, `status`) VALUES
(21, 1, 'Programming', 3, 10, '3.7', '90', 1),
(22, 2, 'Computer system', 3, 10, '', '', 1),
(23, 4, 'Business Math', 5, 0, '', '', 0),
(24, 5, 'Media History', 5, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `name`, `address`, `contactno`, `email`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Lalin', 'A-743, 12 ', 1133998877, 'lalin@gmail.com', 'f9f16d97c90d8c6f2cab37bb6d1f1992', '2019-03-04 12:44:02', ''),
(10, 'Rifat', 'A-743, 12 residential college\r\nUniversiti Malaya', 1139918440, 'mail@rifatshampod.com', '215779b903da8f6b3b13d3e244e9e276', '2019-03-12 16:55:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `address`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Lalin', 'A-743, 12 ', 1133998877, 'lalin@gmail.com', 'f9f16d97c90d8c6f2cab37bb6d1f1992', '2019-03-04 12:44:02', ''),
(10, 'Rifat', 'A-743, 12 residential college\r\nUniversiti Malaya', 1139918440, 'mail@rifatshampod.com', '215779b903da8f6b3b13d3e244e9e276', '2019-03-12 16:55:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `address`, `contactno`, `email`, `password`, `creationDate`, `updationDate`) VALUES
(8, 'Lalin', 'A-743, 12 ', 1133998877, 'lalin@gmail.com', 'f9f16d97c90d8c6f2cab37bb6d1f1992', '2019-03-04 12:44:02', ''),
(10, 'Abdul Halim', 'A-743, 12 residential college\r\nUniversiti Malaya', 1139918440, 'mail@rifatshampod.com', '215779b903da8f6b3b13d3e244e9e276', '2019-03-12 16:55:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `faculty` text NOT NULL,
  `depertment` text NOT NULL,
  `semester` text NOT NULL,
  `studentNo` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `paymentDue` decimal(10,0) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `faculty`, `depertment`, `semester`, `studentNo`, `gender`, `email`, `password`, `paymentDue`, `regDate`, `updationDate`) VALUES
(1, 'Zeshan Hossain', '12th residential college', 'Petaling Jaya', 'Engineering', 'Bio Medical', '1', 'EIT160704', 'male', 'mahir@gmail.com', 'b5b73fae0d87d8b4e2573105f8fbe7bc', '0', '2019-03-12 16:43:04', ''),
(3, 'User Model ', 'sample address', 'sample city', 'Information Technology', 'multimedia', '4', 'WIG160703', 'male', 'user@gmail.com', 'd440aed189a13ff970dac7e7e8f987b2', '700', '2019-03-23 17:53:30', ''),
(4, 'rifat', 'A-743, 12 residential college, Universiti Malaya', 'Kuala Lumpur', '', '', '1', '', 'male', 'shampodrifat@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', '0', '2019-05-07 13:18:42', ''),
(5, 'Adnan', 'segi residence', 'selangor', 'saab', 'software', '3', 'wer1231234', 'male', 'sadadnan@gmail.com', 'aa3870525fd37551c80b22a5b7293892', '0', '2019-10-27 20:49:39', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursereg`
--
ALTER TABLE `coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coursereg`
--
ALTER TABLE `coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
