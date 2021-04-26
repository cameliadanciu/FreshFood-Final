-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 10:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teambam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(6,2) NOT NULL,
  `profit` int(22) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `price`, `profit`, `date_in`, `category_id`, `supplier_id`, `user_id`, `product_code`, `status`) VALUES
(1, 'Galla Apples', 500, '2.50', 1, '2019-11-21', 1, 2, 1, '1009', 'Available'),
(2, 'Pink Lady Apples', 600, '3.50', 2, '2019-11-21', 1, 2, 1, '1010', 'Available'),
(3, 'Cucumbers', 600, '1.70', 1, '2019-11-21', 3, 3, 1, '1011', 'Available'),
(4, 'Broccoli ', 500, '1.80', 1, '2019-11-21', 3, 1, 1, '1012', 'Available'),
(5, 'Spring Onions', 500, '1.50', 1, '2019-11-21', 3, 1, 1, '1013', 'Available'),
(6, 'Radish', 400, '1.80', 1, '2019-11-21', 3, 2, 1, '1014', 'Available'),
(7, 'Strawberries', 60, '2.60', 1, '2019-11-22', 1, 2, 2, '1015', 'Available'),
(8, 'Pears', 100, '2.20', 1, '2019-11-28', 1, 1, 2, '1016', 'Available'),
(9, 'Lettuce', 150, '1.40', 1, '2021-04-26', 3, 2, 1, '1017', 'Available'),
(10, 'Basmati rice', 60, '2.80', 1, '2021-04-26', 2, 2, 1, '1018', 'Available'),
(11, 'Beef Tomatoes', 200, '0.85', 0, '2021-04-26', 3, 2, 1, '1019', 'Available'),
(12, 'Carrots', 300, '2.30', 1, '2021-04-26', 3, 1, 1, '1020', 'Available'),
(13, 'Cauliflower', 155, '2.10', 1, '2021-04-26', 3, 2, 1, '1021', 'Available'),
(14, 'Spinach', 244, '2.70', 1, '2021-04-26', 3, 1, 1, '1022', 'Available'),
(15, 'Courgette', 112, '2.50', 1, '2021-04-26', 3, 2, 1, '1023', 'Available'),
(16, 'Red Onions', 168, '1.55', 1, '2021-04-26', 3, 3, 1, '1024', 'Available'),
(17, 'Garlic', 130, '0.60', 0, '2021-04-26', 3, 2, 1, '1025', 'Available'),
(18, 'Aubergine', 98, '1.50', 1, '2021-04-26', 3, 2, 1, '1026', 'Available'),
(19, 'Pineapple', 82, '3.30', 1, '2021-04-26', 1, 1, 1, '1027', 'Available'),
(20, 'Brown rice', 200, '3.99', 2, '2021-04-26', 2, 2, 1, '1028', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_tblproducts_tblsupplier` (`supplier_id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
