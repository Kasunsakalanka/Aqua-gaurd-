-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 09:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nwsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employer_tbl`
--

CREATE TABLE `employer_tbl` (
  `emp_Id` varchar(10) NOT NULL,
  `emp_FirstName` varchar(50) NOT NULL,
  `emp_SecondName` varchar(50) NOT NULL,
  `emp_Gender` varchar(6) NOT NULL,
  `emp_Nic` varchar(12) NOT NULL,
  `emp_Birthday` date NOT NULL,
  `emp_Image` varchar(250) NOT NULL,
  `emp_Address` varchar(250) NOT NULL,
  `emp_Phone` int(10) NOT NULL,
  `emp_Email` varchar(100) NOT NULL,
  `emp_JobTitle` varchar(20) NOT NULL,
  `emp_JobType` varchar(20) NOT NULL,
  `emp_JobLevel` varchar(20) NOT NULL,
  `d_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer_tbl`
--

INSERT INTO `employer_tbl` (`emp_Id`, `emp_FirstName`, `emp_SecondName`, `emp_Gender`, `emp_Nic`, `emp_Birthday`, `emp_Image`, `emp_Address`, `emp_Phone`, `emp_Email`, `emp_JobTitle`, `emp_JobType`, `emp_JobLevel`, `d_status`) VALUES
('EMP0001', 'sachith', 'wedasingha', 'Male', '970573046v', '2022-02-14', 'upload/employer/EMP0001_IMG_20191103_234241.jpg', '0', 710458089, 'sachith@gmail.com', 'Admin', 'Part Time', 'Senior', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `user_id` char(10) NOT NULL,
  `login_email` varchar(100) NOT NULL,
  `login_pwd` varchar(100) NOT NULL,
  `login_role` varchar(20) NOT NULL,
  `login_status` varchar(32) NOT NULL,
  `d_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`user_id`, `login_email`, `login_pwd`, `login_role`, `login_status`, `d_status`) VALUES
('EMP0001', 'sachith@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', '1', 0),
('PNT0001', 'plant1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mt_tbl`
--

CREATE TABLE `mt_tbl` (
  `rt_Id` varchar(8) NOT NULL,
  `A` int(10) NOT NULL,
  `B` int(10) NOT NULL,
  `C` int(10) NOT NULL,
  `D` int(10) NOT NULL,
  `E` int(10) NOT NULL,
  `F` int(10) NOT NULL,
  `G` int(10) NOT NULL,
  `H` int(10) NOT NULL,
  `I` int(10) NOT NULL,
  `J` int(10) NOT NULL,
  `K` int(10) NOT NULL,
  `L` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sec_tbl`
--

CREATE TABLE `sec_tbl` (
  `id` varchar(8) NOT NULL,
  `plant_id` varchar(8) NOT NULL,
  `year` year(4) NOT NULL,
  `month` int(2) NOT NULL,
  `energyconsumption` int(11) NOT NULL,
  `energyconsumptioncost` int(11) NOT NULL,
  `maximumdemand` int(11) NOT NULL,
  `maximumdemandcost` int(11) NOT NULL,
  `totalcost` int(11) NOT NULL,
  `monthlyproduction` int(11) NOT NULL,
  `specificenergyconsumption` decimal(11,2) NOT NULL,
  `d_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` char(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `ElectracityCat` varchar(6) NOT NULL,
  `region` varchar(20) NOT NULL,
  `user_phone` char(20) NOT NULL,
  `user_nic` char(20) NOT NULL,
  `user_status` varchar(32) NOT NULL,
  `d_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `user_name`, `user_email`, `ElectracityCat`, `region`, `user_phone`, `user_nic`, `user_status`, `d_status`) VALUES
('PNT0001', 'Plant1', 'plant1@gmail.com', 'I1', 'Polonnaruwa', '500', '123456789', '1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employer_tbl`
--
ALTER TABLE `employer_tbl`
  ADD PRIMARY KEY (`emp_Id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mt_tbl`
--
ALTER TABLE `mt_tbl`
  ADD PRIMARY KEY (`rt_Id`);

--
-- Indexes for table `sec_tbl`
--
ALTER TABLE `sec_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
