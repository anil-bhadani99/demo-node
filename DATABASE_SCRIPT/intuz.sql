-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 31, 2020 at 01:58 PM
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
-- Database: `intuz`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `category` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `actualPrice` double NOT NULL,
  `discountPrice` double NOT NULL,
  `qty` int(11) NOT NULL,
  `image` text NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createdAt` date NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `name`, `actualPrice`, `discountPrice`, `qty`, `image`, `createdBy`, `createdAt`, `description`) VALUES
(1, 'Electronic', 'Laptop', 50000, 1000, 20, 'http://localhost:5000/images/laptop.jpg', 'Anil Bhadani', '2020-08-31', 'Test Laptop'),
(2, 'Electronic', 'Mouse', 500, 20, 10, 'http://localhost:5000/images/mouse.jpg', 'Anil Bhadani', '2020-08-31', 'test mouse'),
(3, 'Fashion', 'Dress', 700, 50, 5, 'http://localhost:5000/images/dress.jpg', 'Anil Bhadani', '2020-08-31', 'Nice Dress'),
(4, 'Fashion', 'Jeans', 1300, 100, 14, 'http://localhost:5000/images/jeans.jpg', 'Anil Bhadani', '2020-08-31', 'Mens jeans');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
