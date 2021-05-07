-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 07:05 PM
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
-- Database: `freshfoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `h_id` int(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`id`, `start`, `end`, `increment`, `desc`) VALUES
(1, 1000, 17, 1, 'PROD');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`category_id`, `category`) VALUES
(1, 'for fruits'),
(2, 'for rice'),
(3, 'for vegetable');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `C_ID` int(50) NOT NULL,
  `C_FNAME` varchar(50) NOT NULL,
  `C_LNAME` varchar(50) NOT NULL,
  `C_AGE` int(2) NOT NULL,
  `C_ADDRESS` text NOT NULL,
  `C_PNUMBER` varchar(50) NOT NULL,
  `C_GENDER` varchar(50) NOT NULL,
  `C_EMAILADD` varchar(50) NOT NULL,
  `ZIPCODE` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`C_ID`, `C_FNAME`, `C_LNAME`, `C_AGE`, `C_ADDRESS`, `C_PNUMBER`, `C_GENDER`, `C_EMAILADD`, `ZIPCODE`, `username`, `password`) VALUES
(1, 'Joken', 'Villanueva', 30, 'Enclaro, Binalbagan', '09096798565', 'Male', 'Joken@yahoo.com', '6100', 'j', '$2y$10$0COwfAt8Yy6JTR2omeq5sOfdaKrFtVzh8C3a5WbP8intcwDG5H.Xm'),
(2, 'gladez', 'Jimenez', 23, 'Brgy.9 Isabela', '09096787453', 'Female', 'glad@yahoo.com', '6100', 'gladez', '$2y$10$sZU0lDPm3UdWQz.8lPhuQexh.uW3Dt0D.i8SeHRTD2cuzn4egCpfG'),
(3, 'Lenny', 'Jane', 23, 'Brgy.Santol Binalbagan', '09097865342', 'Female', 'Lenny@yahoo.com', '6100', 'Lenny', '$2y$10$nAIowngDF/uUOWi5G2FCru4RsbVAeliVqYLUIQ9E3Y2h.hEO1dt3u'),
(4, 'Lara', 'Croft', 25, '1 High Street', '0123456789', 'Female', 'lara@gmail.com', '123456', 'laraCroft', '$2y$10$AsGU0gIlLHcYuNotQHj2auBw.Z2vFdLdftxa9LL6HqlDW7sXrXOem'),
(5, 'user1', 'user1', 20, 'user1', '12345', 'Male', 'user1@user1.com', 'user1', 'user1', '$2y$10$mpqUCl6AeVFwoRAb4Mw8H.th3AZ6XdUFWBHjUqEZ6sj20XzeMJ6fq');

-- --------------------------------------------------------

--
-- Table structure for table `tbldelivery`
--

CREATE TABLE `tbldelivery` (
  `D_ID` int(50) NOT NULL,
  `C_ID` int(50) NOT NULL,
  `EMP_ID` int(50) NOT NULL,
  `C_ADDRESS` text NOT NULL,
  `C_PNUMBER` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `emp_id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `position` varchar(50) NOT NULL,
  `hire_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`emp_id`, `fname`, `lname`, `contact`, `email`, `address`, `gender`, `age`, `position`, `hire_date`) VALUES
(1, 'Caren', 'Bautista', '09098591074', 'caren@yahoo.com', 'Kabankalan', 'Female', 23, 'Manager', '2019-11-30'),
(2, 'Jahzel', 'Alarcon', '09509827365', 'jahiam07@gmail.com', 'Isabela', 'Female', 22, 'Manager', '2019-12-01'),
(3, 'Ryan', 'Mana-ay', '09786534342', 'Ryan@yahoo.com', 'Himamaylan ', 'Male', 21, 'Supervisor', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory`
--

CREATE TABLE `tblinventory` (
  `transac_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `date_in` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(6,2) NOT NULL,
  `profit` decimal(15,2) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `imagepath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `price`, `profit`, `date_in`, `category_id`, `supplier_id`, `user_id`, `product_code`, `status`, `imagepath`) VALUES
(1, 'Galla Apples', 499, '2.50', '1.10', '2019-11-21', 1, 2, 1, '1009', 'Available', 'images/Galla Apples.jpg'),
(2, 'Pink Lady Apples', 590, '3.50', '1.90', '2019-11-21', 1, 2, 1, '1010', 'Available', 'images/Pink Lady Apples.jpg'),
(3, 'Cucumbers', 599, '1.70', '0.78', '2019-11-21', 3, 3, 1, '1011', 'Available', 'images/Cucumbers.jpg'),
(4, 'Broccoli', 500, '1.80', '0.69', '2019-11-21', 3, 1, 1, '1012', 'Available', 'images/Broccoli.jpg'),
(5, 'Spring Onions', 495, '1.50', '0.60', '2019-11-21', 3, 1, 1, '1013', 'Available', 'images/Spring Onions.jpg'),
(6, 'Radish', 400, '1.80', '0.78', '2019-11-21', 3, 2, 1, '1014', 'Available', 'images/Radish.jpg'),
(7, 'Strawberries', 60, '2.60', '1.15', '2019-11-22', 1, 2, 2, '1015', 'Available', 'images/Strawberries.jpg'),
(8, 'Pears', 100, '2.20', '0.99', '2019-11-28', 1, 1, 2, '1016', 'Available', 'images/Pears.jpg'),
(9, 'Lettuce', 150, '1.40', '0.60', '2021-04-26', 3, 2, 1, '1017', 'Available', 'images/Lettuce.jpg'),
(10, 'Basmati rice', 60, '2.80', '1.00', '2021-04-26', 2, 2, 1, '1018', 'Available', 'images/Basmati rice.jpg'),
(11, 'Beef Tomatoes', 200, '0.85', '0.30', '2021-04-26', 3, 2, 1, '1019', 'Available', 'images/Beef Tomatoes.jpg'),
(12, 'Carrots', 300, '2.30', '0.85', '2021-04-26', 3, 1, 1, '1020', 'Available', 'images/Carrots.jpg'),
(13, 'Cauliflower', 155, '2.10', '0.90', '2021-04-26', 3, 2, 1, '1021', 'Available', 'images/Cauliflower.jpg'),
(14, 'Spinach', 244, '2.70', '1.00', '2021-04-26', 3, 1, 1, '1022', 'Available', 'images/Spinach.jpg'),
(15, 'Courgette', 111, '2.50', '1.00', '2021-04-26', 3, 2, 1, '1023', 'Available', 'images/Courgette.jpg'),
(16, 'Red Onions', 168, '1.55', '0.62', '2021-04-26', 3, 3, 1, '1024', 'Available', 'images/Red Onions.jpg'),
(17, 'Garlic', 130, '0.60', '0.20', '2021-04-26', 3, 2, 1, '1025', 'Available', 'images/Garlic.jpg'),
(18, 'Aubergine', 98, '1.50', '0.55', '2021-04-26', 3, 2, 1, '1026', 'Available', 'images/Aubergine.jpg'),
(19, 'Pineapple', 82, '3.30', '1.25', '2021-04-26', 1, 1, 1, '1027', 'Available', 'images/Pineapple.jpg'),
(20, 'Brown rice', 200, '3.99', '1.70', '2021-04-26', 2, 2, 1, '1028', 'Available', 'images/Brown rice.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`supplier_id`, `supplier_name`, `contact`, `email`, `address`) VALUES
(1, 'Harvester', '9095643236', 'Harvester@yahoo.com', 'Brgy.Sum-ag, Bacolod City'),
(2, 'Amigo', '9786534213', 'Amigo@yahoo.com', 'Bgry.Singkang Bacolod City'),
(3, 'Atlas', '9096547321', 'Atlas@yahoo.com', 'Brgy.Poblacion, Bacolod City');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransac`
--

CREATE TABLE `tbltransac` (
  `transac_id` int(11) NOT NULL,
  `transac_code` int(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransac`
--

INSERT INTO `tbltransac` (`transac_id`, `transac_code`, `date`, `customer_id`, `product_code`, `qty`, `price`, `total`) VALUES
(31, 1554235838, '2019-04-03', 39, '100', 1, '350.00', '350.00'),
(32, 1554235838, '2019-04-03', 39, '1002', 1, '400.00', '400.00'),
(33, 1554251111, '2019-04-03', 39, '100', 1, '350.00', '350.00'),
(34, 1572074522, '2019-10-26', 42, '1001', 5, '400.00', '2000.00'),
(35, 1572074522, '2019-10-26', 42, '100', 3, '350.00', '1050.00'),
(36, 1572075891, '2019-10-26', 42, '1003', 20, '300.00', '6000.00'),
(37, 1572356267, '2019-10-29', 42, '1001', 3, '400.00', '1200.00'),
(38, 1572356267, '2019-10-29', 42, '1005', 16, '300.00', '4800.00'),
(39, 1572850714, '2019-11-04', 42, '100', 1, '1500.00', '1500.00'),
(40, 1572850714, '2019-11-04', 42, '1001', 1, '1500.00', '1500.00'),
(41, 1573016058, '2019-11-06', 42, '100', 15, '1500.00', '22500.00'),
(42, 1573057409, '2019-11-07', 46, '1001', 7, '1500.00', '10500.00'),
(43, 1573110712, '2019-11-07', 46, '1001', 1, '1500.00', '1500.00'),
(44, 1573788177, '2019-11-15', 46, '1001', 1, '1500.00', '1500.00'),
(45, 1573788177, '2019-11-15', 46, '1002', 1, '1500.00', '1500.00'),
(46, 1573993061, '2019-11-17', 0, '1004', 1, '1000.00', '1000.00'),
(47, 1573993148, '2019-11-17', 30, '1004', 1, '1000.00', '1000.00'),
(48, 1573993179, '2019-11-17', 30, '1004', 1, '1000.00', '1000.00'),
(49, 1573993307, '2019-11-17', 30, '1004', 1, '1000.00', '1000.00'),
(50, 1573993636, '2019-11-17', 30, '1004', 2, '1000.00', '2000.00'),
(51, 1574060123, '2019-11-18', 30, '1004', 10, '1000.00', '10000.00'),
(52, 1574302308, '2019-11-21', 2, '1010', 1, '1500.00', '1500.00'),
(53, 1574306845, '2019-11-21', 2, '1010', 1, '1500.00', '1500.00'),
(54, 1574306845, '2019-11-21', 2, '1009', 1, '1800.00', '1800.00'),
(55, 1574329865, '2019-11-21', 3, '1009', 1, '1800.00', '1800.00'),
(56, 1574330004, '2019-11-21', 3, '1011', 1, '1500.00', '1500.00'),
(57, 1574331170, '2019-11-21', 4, '1010', 1, '1500.00', '1500.00'),
(58, 1574408390, '2019-11-22', 2, '1009', 6, '1800.00', '10800.00'),
(59, 1574408390, '2019-11-22', 2, '1010', 20, '1500.00', '30000.00'),
(60, 1574408390, '2019-11-22', 2, '1011', 20, '1500.00', '30000.00'),
(61, 1574408390, '2019-11-22', 2, '1014', 20, '1000.00', '20000.00'),
(62, 1574408442, '2019-11-22', 2, '1014', 20, '1000.00', '20000.00'),
(63, 1574602908, '2019-11-24', 1, '1014', 1, '1000.00', '1000.00'),
(64, 1574732852, '2019-11-26', 1, '1009', 1, '1800.00', '1800.00'),
(65, 1574836996, '2019-11-27', 1, '1009', 1, '1800.00', '1800.00'),
(66, 1574841234, '2019-11-27', 1, '1009', 1, '1800.00', '1800.00'),
(67, 1574841234, '2019-11-27', 1, '1014', 20, '1000.00', '20000.00'),
(68, 1574844266, '2019-11-27', 1, '1010', 1, '1500.00', '1500.00'),
(69, 1574872971, '2019-11-28', 1, '1011', 5, '1500.00', '7500.00'),
(70, 1574872971, '2019-11-28', 1, '1010', 50, '1500.00', '75000.00'),
(71, 1575428004, '2019-12-04', 1, '1010', 25, '1500.00', '37500.00'),
(72, 1575428004, '2019-12-04', 1, '1011', 40, '1500.00', '60000.00'),
(73, 1575428113, '2019-12-04', 2, '1010', 30, '1500.00', '45000.00'),
(74, 1575428113, '2019-12-04', 2, '1011', 30, '1500.00', '45000.00'),
(75, 1575428238, '2019-12-04', 3, '1012', 45, '1800.00', '81000.00'),
(76, 1575428238, '2019-12-04', 3, '1010', 40, '1500.00', '60000.00'),
(77, 1575872572, '2019-12-09', 1, '1011', 14, '1500.00', '21000.00'),
(78, 1575873091, '2019-12-09', 1, '1011', 15, '1500.00', '22500.00'),
(79, 1576051349, '2019-12-11', 1, '1010', 1, '1500.00', '1500.00'),
(80, 1576051349, '2019-12-11', 1, '1014', 1, '1000.00', '1000.00'),
(81, 1576051349, '2019-12-11', 1, '1012', 5, '1800.00', '9000.00'),
(82, 1619709708, '2021-04-29', 4, '1009', 1, '3.00', '3.00'),
(83, 1619709708, '2021-04-29', 4, '1010', 4, '4.00', '14.00'),
(84, 1619712008, '2021-04-29', 4, '1010', 1, '3.50', '3.50'),
(85, 1619712008, '2021-04-29', 4, '1013', 4, '1.50', '6.00'),
(86, 1619712658, '2021-04-29', 4, '1010', 1, '3.50', '3.50'),
(87, 1619712658, '2021-04-29', 4, '1013', 1, '1.50', '1.50'),
(88, 1619712658, '2021-04-29', 4, '1023', 1, '2.50', '2.50'),
(89, 1619796537, '2021-04-30', 4, '1010', 1, '3.50', '3.50'),
(90, 1619796537, '2021-04-30', 4, '1011', 1, '1.70', '1.70'),
(91, 1620405792, '2021-05-07', 5, '1010', 3, '3.50', '10.50');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransacdetail`
--

CREATE TABLE `tbltransacdetail` (
  `detail_id` int(11) NOT NULL,
  `transac_code` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryfee` int(11) NOT NULL,
  `pay_met` varchar(30) NOT NULL,
  `totalprice` decimal(15,2) NOT NULL,
  `status` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `delivery_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransacdetail`
--

INSERT INTO `tbltransacdetail` (`detail_id`, `transac_code`, `date`, `customer_id`, `deliveryfee`, `pay_met`, `totalprice`, `status`, `remarks`, `delivery_date`) VALUES
(1, 1575428004, '2019-12-04 00:00:00.000000', 1, 15, '', '97650.00', 'Confirmed', 'Your order has been confirmed!', '2019-12-10 00:00:00.000000'),
(2, 1575428113, '2019-12-04 00:00:00.000000', 2, 15, '', '90150.00', 'Confirmed', 'Your order has been confirmed!', '2019-12-16 00:00:00.000000'),
(3, 1575428238, '2019-12-04 00:00:00.000000', 3, 15, '', '141150.00', 'Confirmed', 'Your order has been confirmed!', '2019-12-20 00:00:00.000000'),
(4, 1575872572, '2019-12-09 00:00:00.000000', 1, 15, '', '21150.00', 'Pending', '', '2019-12-10 00:00:00.000000'),
(5, 1575873091, '2019-12-09 00:00:00.000000', 1, 15, '', '22650.00', 'Pending', '', '2019-12-10 00:00:00.000000'),
(6, 1576051349, '2019-12-11 00:00:00.000000', 1, 15, '', '11650.00', 'Pending', '', '2019-06-20 00:00:00.000000'),
(7, 1619709708, '2021-04-29 00:00:00.000000', 4, 15, '', '166.00', 'Cancelled', 'Your order has been cancelled <br>\r\n	 due to lack of communication <br> and incomplete informatio!', '2021-05-01 00:00:00.000000'),
(8, 1619712008, '2021-04-29 00:00:00.000000', 4, 15, '', '159.50', 'Cancelled', 'Your order has been cancelled <br>\r\n	 due to lack of communication <br> and incomplete informatio!', '2021-05-03 00:00:00.000000'),
(9, 1619712658, '2021-04-29 00:00:00.000000', 4, 15, '', '22.50', 'Pending', '', '2021-04-30 00:00:00.000000'),
(10, 1619796537, '2021-04-30 00:00:00.000000', 4, 15, '', '20.20', 'Pending', '', '2021-04-30 00:00:00.000000'),
(11, 1620405792, '2021-05-07 00:00:00.000000', 5, 15, '', '25.50', 'Confirmed', 'Your order has been confirmed!', '2021-05-06 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `fname`, `lname`, `email`, `contact`, `address`, `position`, `username`, `pass`) VALUES
(1, 'jahzel', 'Alarcon', 'jahzel@yahoo.com', 0, '', 'Admin', 'jahzel', '$2y$10$pKOAFaZ1jmmwWGQUJfZTdO3avJ3Es6/.n6TB8qVYAo9rn1Oh6Ic8i'),
(2, 'Caren', 'Bautista', 'caren@yahoo.com', 0, '', 'Admin', 'admin', '$2y$10$ds1gqSSjIHq/I7c.Ly/w9eF.OPgcXyeG09wL71loBGy0qLkNzUZlS'),
(3, 'Ryan', 'Manaay', 'Ryan@yahoo.com', 0, '', 'Admin', 'Ryan', '$2y$10$l1RFNm9UyBe7o1JyO7OxfONOK1WMjbIXyd7k3PPZ1kE7/Hg0U.ysu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `tbldelivery`
--
ALTER TABLE `tbldelivery`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_tblproducts_tblsupplier` (`supplier_id`,`user_id`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbltransac`
--
ALTER TABLE `tbltransac`
  ADD PRIMARY KEY (`transac_id`),
  ADD KEY `FK_tbltransac_details_tblcustomer` (`customer_id`);

--
-- Indexes for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `h_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `C_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldelivery`
--
ALTER TABLE `tbldelivery`
  MODIFY `D_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltransac`
--
ALTER TABLE `tbltransac`
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
