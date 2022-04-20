-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 08:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `napd_olms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admnusers`
--

CREATE TABLE `admnusers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admnusers`
--

INSERT INTO `admnusers` (`id`, `name`, `email`, `password`, `code`) VALUES
(0, 'Md. Nasarul Hasan', 'nasarulhasan@gmail.com', 'da8c53275facbb43a3bde56015ad37c5', '');

-- --------------------------------------------------------

--
-- Table structure for table `bg`
--

CREATE TABLE `bg` (
  `id` int(11) NOT NULL,
  `bg` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bg`
--

INSERT INTO `bg` (`id`, `bg`) VALUES
(1, 'A(+)'),
(2, 'A(-)'),
(3, 'B(+)'),
(4, 'B(-)'),
(5, 'O(+)'),
(6, 'O(-)'),
(7, 'AB(+)'),
(8, 'AB(-)');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_link`, `parent_id`, `sort_order`) VALUES
(1, 'Home', 'home', 0, 0),
(2, 'Tutorials', 'tutorials', 0, 1),
(3, 'Java', 'java', 2, 1),
(4, 'Liferay', 'liferay', 2, 1),
(5, 'Frameworks', 'frameworks', 0, 2),
(6, 'JSF', 'jsf', 5, 2),
(7, 'Struts', 'struts', 5, 2),
(8, 'Spring', 'spring', 5, 2),
(9, 'Hibernate', 'hibernate', 5, 2),
(10, 'Webservices', 'webservices', 0, 3),
(11, 'REST', 'rest', 10, 3),
(12, 'SOAP', 'soap', 10, 3),
(13, 'Contact', 'contact', 0, 4),
(14, 'About', 'about', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adm_id` int(6) NOT NULL,
  `adm_name` text NOT NULL,
  `adm_email` varchar(60) NOT NULL,
  `adm_mobile` varchar(16) NOT NULL,
  `adm_username` varchar(40) NOT NULL,
  `adm_password` varchar(60) NOT NULL,
  `adm_created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `ppt` varchar(200) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `thumbnail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `course_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`course_id`, `name`, `duration`) VALUES
(1, 'Post Graduate Diploma in ICT for Development ', '01 January, 2021 to 30 December, 2021'),
(2, 'Special Foundation Training Course for BCS (Health) Cadre Officers', '20 February, 2022 - 17 April, 2022'),
(3, 'Microsoft Project', '06 February, 2022 to 23 February, 2022'),
(4, 'Cyber Security ', '06 February, 2022 to 03 March, 2022'),
(6, 'Post Graduate Diploma in Development Planning', '23 January, 2022 to 31 December, 2022'),
(7, 'Special Foundation Training Course for Non-Cadre Officers ', '16 January, 2022 to 16 March, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `stu_id` int(10) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `organization` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` text NOT NULL,
  `dob` date NOT NULL,
  `bg` varchar(15) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`stu_id`, `roll`, `name`, `designation`, `organization`, `email`, `mobile`, `dob`, `bg`, `image`) VALUES
(1, '18', 'Md. Nasarul Hasan', 'Personal Officer', 'Cabinet Division', 'nasarulhasan@gmail.com', '01552457194', '1970-01-01', 'A(+)', 0x313634343733303239315f363536382e6a7067),
(3, '33', 'Hasan Mia', 'Personal Of', 'Cabinet D', 'afrozanajnin@gmail.com', '4444444444', '1920-02-11', 'AB(-)', 0x313634343733303331395f393038312e6a7067),
(4, '80', 'Afroza Najnin Asha', 'Professor of Home', 'Home Ministry', 'afrozanajnin@gmail.com', '01682477099', '2020-02-02', 'AB(+)', 0x313634343733303237305f393934392e6a7067),
(5, '44', 'Sadia Sultana', 'Personal ', 'Dhaka University, Bangladesh', 'osmangani@gmail.com', '5555555555', '2022-02-28', 'O(+)', 0x313634343736353436365f393833302e6a7067),
(7, '66', 'Md. Nasarul Hasan', 'Personal Officer', 'Rajshahi University', 'miran@gmail.com', '01552457194', '2222-02-22', 'A(+)', 0x313634343737313436355f383835392e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `sub_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `code` varchar(10) NOT NULL,
  `lecture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`sub_id`, `course_name`, `name`, `code`, `lecture`) VALUES
(1, '1', 'Fundamentals of ICT and Programming Language', 'ICT-101', 0x30325f6d73752d41492d636f6e63657074732e706466),
(2, '1', 'Multimedia System Design', 'ICT-111', 0x30315f42696720446174615f4167726963756c747572655f526173686964205369722e70707478),
(3, '2', 'Networking and Data Communication', 'ICT-107', 0x30345f496f54204368616c6c656e6765735f5261736869642e70707478),
(4, '2', 'System Analysis and Design', 'ICT-103', ''),
(5, '3', 'Database Management System & Design', 'ICT-105', 0x30355f426974636f696e2e70707478);

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `tech_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `organization` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`tech_id`, `name`, `designation`, `organization`, `email`, `mobile`, `image`) VALUES
(7, 'Md. Nasarul Hasan', 'Personal Officer', 'Cabinet Division', 'nasarulhasan@gmail.com', '01552457194', '1644730556_6268.jpg'),
(8, 'Afroza Najnin Asha', 'Professor of House', 'Dhaka University', 'afrozanajnin@gmail.com', '01682477099', '1644730623_5880.jpg'),
(10, 'Md. Tanjidul Hasan Rayyan', 'Class One', 'Little Angle School', 'tamjidul@gmail.com', '01682477099', '1644730650_6517.jpg'),
(11, 'Md. Thamidul Hasan', 'Class Seven', 'Udayon School', 'thamidulhasan@gmail.com', '88888888888', '1644730669_1700.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `name`, `pass`, `created_at`) VALUES
(1, 'hasan', 'hasan', '2022-02-08 12:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblvideo`
--

CREATE TABLE `tblvideo` (
  `id` int(10) NOT NULL,
  `title` varchar(250) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `thumbnail` varchar(300) NOT NULL,
  `video` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `code`) VALUES
(1, 'Md. Nasarul Hasan', 'nasarulhasan@gmail.com', '64d331547475d9d264f23db06aad29e2', ''),
(3, 'Md. Nasarul Hasan', 'nasarulhasan@yahoo.com', '64d331547475d9d264f23db06aad29e2', '759418919874725cea87bd2f616de9cd');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` blob NOT NULL,
  `video` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `description`, `thumbnail`, `video`) VALUES
(4, 'Software Matrix', 'This is the lecture of Software Matrix', 0x534d31312e6a7067, 0x706578656c732d656b61746572696e612d626f6c6f7674736f76612d373030333235302e6d7034),
(5, 'test', 'adsfasdf asdfasdfa adfasdfa ', 0x32303139303330395f3133313335312830292e6a7067, 0x70726f64756374696f6e2049445f343533363432322e6d7034),
(8, 'Test', 'Test video ', 0x646f776e6c6f6164312e6a7067, 0x506578656c7320566964656f7320323135373030362e6d7034);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bg`
--
ALTER TABLE `bg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `unique` (`category_name`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`tech_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvideo`
--
ALTER TABLE `tblvideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bg`
--
ALTER TABLE `bg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adm_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `stu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `tech_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvideo`
--
ALTER TABLE `tblvideo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
