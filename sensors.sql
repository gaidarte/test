-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 05:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensors`
--

-- --------------------------------------------------------

--
-- Table structure for table `datalog`
--

CREATE TABLE `datalog` (
  `dat_id` int(11) NOT NULL,
  `dat_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dat_value` double NOT NULL,
  `dat_sensor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datalog`
--

INSERT INTO `datalog` (`dat_id`, `dat_date`, `dat_value`, `dat_sensor`) VALUES
(113, '2019-05-16 15:29:43', 22.5, 1),
(114, '2019-05-16 15:29:43', 20.5, 2),
(115, '2019-05-16 15:30:07', 22.2, 1),
(116, '2019-05-16 15:30:07', 22.2, 1),
(117, '2019-05-16 15:30:07', 21.2, 2),
(118, '2019-05-16 15:30:07', 21.2, 2),
(119, '2019-05-16 15:30:35', 22.1, 1),
(120, '2019-05-16 15:30:35', 20.9, 2),
(121, '2019-05-16 15:31:01', 21.7, 1),
(122, '2019-05-16 15:31:01', 20.3, 2),
(123, '2019-05-16 16:16:02', 31.7, 1),
(124, '2019-05-16 16:16:02', 28.7, 2),
(125, '2019-05-16 16:16:46', 32.7, 1),
(126, '2019-05-16 16:16:46', 25.7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--

CREATE TABLE `sensor` (
  `sen_id` int(11) NOT NULL,
  `sen_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sensor`
--

INSERT INTO `sensor` (`sen_id`, `sen_name`) VALUES
(1, 'zone A'),
(2, 'zone B');

-- --------------------------------------------------------

--
-- Table structure for table `threshold`
--

CREATE TABLE `threshold` (
  `thr_id` int(11) NOT NULL,
  `thr_sensor` int(11) NOT NULL,
  `thr_min` double NOT NULL,
  `thr_max` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `threshold`
--

INSERT INTO `threshold` (`thr_id`, `thr_sensor`, `thr_min`, `thr_max`) VALUES
(1, 1, 9.2, 33.8),
(2, 2, 18, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datalog`
--
ALTER TABLE `datalog`
  ADD PRIMARY KEY (`dat_id`),
  ADD KEY `fk_sensor_datalog` (`dat_sensor`);

--
-- Indexes for table `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`sen_id`);

--
-- Indexes for table `threshold`
--
ALTER TABLE `threshold`
  ADD PRIMARY KEY (`thr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datalog`
--
ALTER TABLE `datalog`
  MODIFY `dat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `sensor`
--
ALTER TABLE `sensor`
  MODIFY `sen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `threshold`
--
ALTER TABLE `threshold`
  MODIFY `thr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datalog`
--
ALTER TABLE `datalog`
  ADD CONSTRAINT `fk_sensor_datalog` FOREIGN KEY (`dat_sensor`) REFERENCES `sensor` (`sen_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
