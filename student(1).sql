-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2018 at 06:26 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtrain`
--

CREATE TABLE IF NOT EXISTS `addtrain` (
  `trainno` varchar(20) NOT NULL,
  `trainname` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `intermediate` int(20) NOT NULL,
  `slberth` int(20) NOT NULL,
  `acberth` int(20) NOT NULL,
  `natureoftrain` varchar(20) NOT NULL,
  PRIMARY KEY (`trainno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addtrain`
--

INSERT INTO `addtrain` (`trainno`, `trainname`, `source`, `destination`, `intermediate`, `slberth`, `acberth`, `natureoftrain`) VALUES
('12', 'Narsapur', 'Nagarsol', 'Narsapur', 4, 10, 8, 'daily');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE IF NOT EXISTS `buyers` (
  `accountnumber` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `ifsc_code` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `balance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`accountnumber`, `branch`, `ifsc_code`, `name`, `balance`) VALUES
('12345', 'basar', '123456', 'anuradha', 1540),
('54321', 'basar', '543210', 'akhila', 6);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`message`) VALUES
('hdvjfhi'),
('hdvjfhi'),
('hdvjfhi'),
('hdvjfhi'),
('hdvjfhi'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('hiuieai'),
('hiuieai'),
('hiuieai'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('hjuj'),
(''),
('sdfgvhb'),
('dhjsajks'),
('hello');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phno` int(20) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`fname`, `lname`, `uname`, `password`, `email`, `phno`, `address`, `dob`) VALUES
('akhila', 'reddy', 'akhilareddy', 'tggggggtg', 'akhilareddy@gmail.com', 987654321, 'basar', '2018-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(20) NOT NULL,
  `passid` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `vill` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `passid`, `email`, `phno`, `vill`) VALUES
('akki', '12345678', 'anu@gmail.com', '8106240479', 'basar'),
('anu', '12345678', 'anu@gmail.com', '8106240479', 'mkp');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `name` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `trainno` int(20) NOT NULL,
  `src` varchar(20) NOT NULL,
  `at1` time NOT NULL,
  `dt1` time NOT NULL,
  `dn1` int(20) NOT NULL,
  `date1` date NOT NULL,
  `i1` varchar(20) DEFAULT NULL,
  `at2` time DEFAULT NULL,
  `dt2` time DEFAULT NULL,
  `dn2` int(20) DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `i2` varchar(20) DEFAULT NULL,
  `at3` time DEFAULT NULL,
  `dt3` time DEFAULT NULL,
  `dn3` int(20) DEFAULT NULL,
  `date3` date DEFAULT NULL,
  `i3` varchar(20) DEFAULT NULL,
  `at4` time DEFAULT NULL,
  `dt4` time DEFAULT NULL,
  `dn4` int(20) DEFAULT NULL,
  `date4` date DEFAULT NULL,
  `i4` varchar(20) DEFAULT NULL,
  `at5` time DEFAULT NULL,
  `dt5` time DEFAULT NULL,
  `dn5` int(20) DEFAULT NULL,
  `date5` date NOT NULL,
  `i5` varchar(20) DEFAULT NULL,
  `at6` time DEFAULT NULL,
  `dt6` time DEFAULT NULL,
  `dn6` int(20) DEFAULT NULL,
  `date6` date DEFAULT NULL,
  `dst` varchar(20) NOT NULL,
  `at7` time NOT NULL,
  `dt7` time NOT NULL,
  `dn7` int(20) NOT NULL,
  `date7` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seasonal_crops`
--

CREATE TABLE IF NOT EXISTS `seasonal_crops` (
  `Better_crop` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `district` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seasonal_crops`
--

INSERT INTO `seasonal_crops` (`Better_crop`, `season`, `district`) VALUES
('Rice', 'kharif,rabi', 'Adilabad'),
('cotton', 'kharif', 'Adilabad'),
('soybean', 'kharif', 'Adilabad'),
('maize', 'kharif,rabi', 'Adilabad'),
('red gram', 'kharif', 'Adilabad'),
('green gram', 'kharif,rabi', 'Adilabad'),
('turmeric', 'kharif', 'Adilabad'),
('jowar', 'rabi', 'Adilabad'),
('rice', 'kharif,rabi', 'Warangal'),
('cotton', 'kharif', 'Warangal'),
('green gram', 'kharif,rabi', 'Warangal'),
('soybean', 'kharif', 'Warangal'),
('maize', 'kharif,rabi', 'Warangal'),
('bengal gram', 'rabi', 'Warangal'),
('black gram', 'rabi', 'Warangal'),
('ground nut', 'rabi', 'Warangal'),
('sun flower', 'rabi', 'Warangal'),
('rice', 'kharif,rabi', 'Nalgonda'),
('cotton', 'kharif', 'Nalgonda'),
('maize', 'kharif,rabi', 'Nalgonda'),
('red gram', 'kharif', 'Nalgonda'),
('green gram', 'kharif', 'Nalgonda'),
('bengal gram', 'rabi', 'Nalgonda'),
('ground nut', 'rabi', 'Nalgonda');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `userid`, `address`) VALUES
('saddsf', 'sdsx', 'asdcxxx'),
('akhila', '1111', 'basar');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
