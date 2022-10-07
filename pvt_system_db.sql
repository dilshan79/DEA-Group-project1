-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2022 at 05:39 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pvt_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `flightId` int(11) NOT NULL AUTO_INCREMENT,
  `flightNumber` varchar(30) NOT NULL,
  `departTime` time NOT NULL,
  `arrivalTime` time NOT NULL,
  `numberOfSeats` int(11) NOT NULL,
  `ticketPrice` double(11,2) NOT NULL,
  `date` date NOT NULL,
  `departLocation` varchar(50) NOT NULL,
  `arrivalLocation` varchar(50) NOT NULL,
  PRIMARY KEY (`flightId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightId`, `flightNumber`, `departTime`, `arrivalTime`, `numberOfSeats`, `ticketPrice`, `date`, `departLocation`, `arrivalLocation`) VALUES
(1, 'FA103', '15:12:00', '03:10:00', 75, 5248.00, '2022-05-03', 'cjkzxnkcjnz', 'xczxvzx'),
(2, 'FA104', '10:55:00', '12:55:00', 50, 6000.00, '2022-03-31', 'jrgnj', 'hytmnj'),
(3, 'FA105', '10:55:00', '23:55:00', 50, 4850.00, '2022-10-25', 'fbjbfjk', 'dsddf'),
(5, 'FA107', '15:03:00', '18:06:00', 75, 50000.00, '2022-05-21', 'Sri Lanka', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
CREATE TABLE IF NOT EXISTS `login_details` (
  `email` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`email`, `role`, `time`, `ip`) VALUES
('staff1@gmail.com', 'Level 1', '2022-05-20 04:56:31', '127.0.0.1'),
('admin@gmail.com', 'Admin', '2022-05-20 05:21:04', '127.0.0.1'),
('staff2@gmail.com', 'Level 2', '2022-05-20 03:52:20', '127.0.0.1'),
('samitha@gmail.com', 'User', '2022-05-20 03:54:40', '127.0.0.1'),
('test@gmail.com', 'User', '2022-05-19 18:04:51', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_booking`
--

DROP TABLE IF EXISTS `ticket_booking`;
CREATE TABLE IF NOT EXISTS `ticket_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numberOfSeats` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `flightId` int(11) NOT NULL,
  `paymentStatus` varchar(30) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_booking`
--

INSERT INTO `ticket_booking` (`id`, `numberOfSeats`, `email`, `flightId`, `paymentStatus`) VALUES
(1, 15, 'samitha@gmail.com', 1, 'Pending'),
(4, 50, 'samitha@gmail.com', 1, 'Pending'),
(5, 10, 'samitha@gmail.com', 1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Activated',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `dob`, `address`, `role`, `status`) VALUES
(1, 'Normal User', 'samitha@gmail.com', 'Samitha@15', '1999-01-05', 'No 100,Gmage Stores,Thiththawelpotha,Pallebedda', 'User', 'Activated'),
(2, 'Staff Level 1', 'staff1@gmail.com', 'Staff1@123', '1998-10-25', 'Staff one Address', 'Level 1', 'Activated'),
(3, 'Staff Level 2', 'staff2@gmail.com', 'staff2@123', '1997-03-25', 'Staff2 Address', 'Level 2', 'Activated'),
(4, 'Admin', 'admin@gmail.com', 'admin@123', '1997-05-25', 'Admin Address', 'Admin', 'Activated'),
(5, 'Test', 'test@gmail.com', 'Test@123', '1996-10-25', 'Test Address', 'Level 1', 'Pending'),
(6, 'Test', 'test@gmail.com', 'Test', '2022-05-18', 'Test Address', 'User', 'Activated'),
(7, 'tesst2', 'test2@gmail.com', 'test2', '1997-05-26', 'Test 2 Address', 'Level 1', 'Pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
