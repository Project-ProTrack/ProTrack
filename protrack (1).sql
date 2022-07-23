-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 07:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `bill_id` varchar(255) NOT NULL,
  `projectid` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `est_cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `s_id` varchar(255) NOT NULL,
  `projectid` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `projecthead` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `userid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`userid`, `username`, `password`, `usertype`) VALUES
('H301', '@angela_jose', '@j200', 'PH'),
('H302', '@bonnie_mj', '@2000', 'PH'),
('HR100', '@Sandra_maria', '@2000san', 'HRM'),
('M200', '@adams_jane', '@1234', 'PM'),
('M201', '@Alan_luke', '@luke20', 'PM'),
('M202', '@Thomas_martin', '@martin2002', 'PM'),
('M203', '@michael_mish', '@2004', 'PM'),
('M204', '@Shella_Jose', '@2110', 'PM'),
('M205', '@Lisa_lucky', '@2005', 'PM'),
('M206', '@Joe_mith', '@2006', 'PM'),
('M207', '@Irene_jospeh', '2007@', 'PM'),
('M208', '@Natasha_martin', '@2008', 'PM'),
('M209', '@Davidmathew', '2009@', 'PM');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `t_id` varchar(255) NOT NULL,
  `projectid` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `est_del` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `user`, `email`, `message`) VALUES
(1, 'sona', 'programmercrazy627@gmail.com', 'hi'),
(2, 'nimna', 'sonaelizebethshaji2023@sjcetpalai.ac.in', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `userid` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `position` varchar(256) NOT NULL,
  `usertype` varchar(256) NOT NULL,
  `year_join` int(11) NOT NULL,
  `experience` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`userid`, `username`, `name`, `password`, `email`, `phone`, `age`, `position`, `usertype`, `year_join`, `experience`) VALUES
(' M203', '@michael_mish', 'Michael Mish', '@2004', 'mimi200@gmail.com', '+91 72408 28348', 33, 'Tester', 'PM', 2009, '14'),
('H301', '@angela_jose', 'Angela Jose', '@j200', 'angela2024@gmail.com', '+91 61279 53874', 38, 'Project Head', 'PH', 2010, '12'),
('H302', '@bonnie_mj', 'Bonnie MJ', '@2000', 'bnie@gmail.com', '+91 79313 24105', 45, 'Project Head', 'PH', 2010, '14'),
('HR100', '@Sandra_maria', 'Sandra Maria', '@2000san', 'sandramaria@gmail.com', '+91 88476 65529', 35, 'Manager', 'HRM', 2012, '10'),
('M200', '@adams_jane', 'Adams Jane', '@1234', 'adams@gmail.com', '+91 72198 65062', 28, 'Developer', 'PM', 2018, '5'),
('M201', '@Alan_luke', 'Alan Luke', '@luke20', 'alanluke@gmail.com', '+91 74496 04798', 34, 'Analyst', 'PM', 2015, '8'),
('M202', '@Thomas_martin', 'Thomas Martin', '@martin2002', 'thomasmartin200@gmail.com', '+91 72856 63803', 40, 'Developer', 'PM', 2009, '14'),
('M204', '@Shella_Jose', 'Shella Mary Jose', '@2110', 'shellamary@gmail.com', '+91 61279 87394', 30, 'Designer', 'PM', 2016, '8'),
('M205', '@Lisa_lucky', 'Lisa Lucky', '@2005', 'lisalis@gmail.com', '+91 61292 18571', 32, 'Analyst', 'PM', 2013, '12'),
('M206', '@Joe_mith', 'Joe Mith', '@2006', 'joe@gmail.com', '+91 61279 72299', 38, 'Developer', 'PM', 2010, '22'),
('M207', '@Irene_jospeh', 'Irene Jospeh', '2007@', 'irene@gmail.com', '+91 61279 46912', 36, 'Developer', 'PM', 2009, '13'),
('M208', '@Natasha_martin', 'Natasha Martin', '@2008', 'natsh@gmail.com', '+91 74476 75273', 34, 'Tester', 'PM', 2013, '10'),
('M209', '@Davidmathew', 'David Mathew', '2009@', 'davi@gmail.com', '+91 74715 45473', 29, 'Designer', 'PM', 2014, '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`s_id`,`projectid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
