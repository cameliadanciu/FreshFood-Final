-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 04:36 PM
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
(1, 'Laura', 'Perera', 23, 'Laura street', '123456789', 'Female', 'laura@laura.com', '123456', 'laura', '$2y$10$Li33oJ/2NENbNHwltVFPne3O7JXVg1Dg6OOSAKzbUdADrA72CInUC'),
(2, 'Camelia', 'Pop', 26, 'Camelia street', '0123456789', 'Female', 'camelia@camelia.com', '123456', 'camelia', '$2y$10$VX7QoG7hepst4IH5i45ugued9..zbd/qwSoyLIc6.KhzFDiKvCeOa'),
(3, 'Bob', 'Johnson', 55, 'Bob street', '0123456789', 'Male', 'bob@bob.com', '123456', 'bob', '$2y$10$v/XkpmxzMgI4cj3I9/Db6.GlfrdzC4Fr6brO4lGgu6sJA9VHF32Ya'),
(4, 'Sierra', 'Richards', 31, 'Sierra street', '0123456789', 'Female', 'sierra@sierra.com', '123456', 'sierra', '$2y$10$wup203EjOhGrr3aJEPA7J.JVGMdgG3gX7BSeYlXd/CGxxUrAP1316'),
(5, 'Swahley', 'Bossman', 21, 'Swahley street', '0123456789', 'Male', 'swahley@swahley.com', '123456', 'swahley', '$2y$10$hsQqMvXpsgmAFkrJZNLFAeatOl/PLbvQd/1Y8oZCxR4NNw2Qoxn1W');

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
(1, 'Caren', 'Bautista', '09098591074', 'caren@yahoo.com', 'Kabankalan', 'Female', 23, 'Manager', '2021-04-15'),
(2, 'Jahzel', 'Alarcon', '09509827365', 'jahiam07@gmail.com', 'Isabela', 'Female', 22, 'Manager', '2021-04-15'),
(3, 'Ryan', 'Mana-ay', '09786534342', 'Ryan@yahoo.com', 'Himamaylan ', 'Male', 21, 'Supervisor', '2021-04-15');

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
(1, 'Galla Apples', 968, '2.50', '1.10', '2021-04-21', 1, 2, 1, '1009', 'Available', 'images/Galla Apples.jpg'),
(2, 'Pink Lady Apples', 556, '3.50', '1.90', '2021-04-21', 1, 2, 1, '1010', 'Available', 'images/Pink Lady Apples.jpg'),
(3, 'Cucumbers', 590, '1.70', '0.78', '2021-04-21', 3, 3, 1, '1011', 'Available', 'images/Cucumbers.jpg'),
(4, 'Broccoli', 490, '1.80', '0.69', '2021-04-21', 3, 1, 1, '1012', 'Available', 'images/Broccoli.jpg'),
(5, 'Spring Onions', 482, '1.50', '0.60', '2021-04-21', 3, 1, 1, '1013', 'Available', 'images/Spring Onions.jpg'),
(6, 'Radish', 400, '1.80', '0.78', '2021-04-21', 3, 2, 1, '1014', 'Available', 'images/Radish.jpg'),
(7, 'Strawberries', 30, '2.60', '1.15', '2021-04-21', 1, 2, 2, '1015', 'Available', 'images/Strawberries.jpg'),
(8, 'Pears', 85, '2.20', '0.99', '2021-04-21', 1, 1, 2, '1016', 'Available', 'images/Pears.jpg'),
(9, 'Lettuce', 120, '1.40', '0.60', '2021-04-26', 3, 2, 1, '1017', 'Available', 'images/Lettuce.jpg'),
(10, 'Basmati rice', 58, '2.80', '1.00', '2021-04-26', 2, 2, 1, '1018', 'Available', 'images/Basmati rice.jpg'),
(11, 'Beef Tomatoes', 186, '0.85', '0.30', '2021-04-26', 3, 2, 1, '1019', 'Available', 'images/Beef Tomatoes.jpg'),
(12, 'Carrots', 297, '2.30', '0.85', '2021-04-26', 3, 1, 1, '1020', 'Available', 'images/Carrots.jpg'),
(13, 'Cauliflower', 151, '2.10', '0.90', '2021-04-26', 3, 2, 1, '1021', 'Available', 'images/Cauliflower.jpg'),
(14, 'Spinach', 226, '2.70', '1.00', '2021-04-26', 3, 1, 1, '1022', 'Available', 'images/Spinach.jpg'),
(15, 'Courgette', 107, '2.50', '1.00', '2021-04-26', 3, 2, 1, '1023', 'Available', 'images/Courgette.jpg'),
(16, 'Red Onions', 165, '1.55', '0.62', '2021-04-26', 3, 3, 1, '1024', 'Available', 'images/Red Onions.jpg'),
(17, 'Garlic', 125, '0.60', '0.20', '2021-04-26', 3, 2, 1, '1025', 'Available', 'images/Garlic.jpg'),
(18, 'Aubergine', 91, '1.50', '0.55', '2021-04-26', 3, 2, 1, '1026', 'Available', 'images/Aubergine.jpg'),
(19, 'Pineapple', 72, '3.30', '1.25', '2021-04-26', 1, 1, 1, '1027', 'Available', 'images/Pineapple.jpg'),
(20, 'Brown rice', 196, '3.99', '1.70', '2021-04-26', 2, 2, 1, '1028', 'Available', 'images/Brown rice.jpg');

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
(105, 1620826812, '2021-05-12', 8, '1009', 4, '2.50', '10.00'),
(106, 1620826812, '2021-05-12', 8, '1010', 4, '3.50', '14.00'),
(107, 1620826812, '2021-05-12', 8, '1027', 5, '3.30', '16.50'),
(108, 1620826812, '2021-05-12', 8, '1015', 9, '2.60', '23.40'),
(109, 1620827007, '2021-05-12', 9, '1017', 10, '1.40', '14.00'),
(110, 1620827007, '2021-05-12', 9, '1011', 5, '1.70', '8.50'),
(111, 1620827007, '2021-05-12', 9, '1022', 5, '2.70', '13.50'),
(112, 1620827007, '2021-05-12', 9, '1012', 3, '1.80', '5.40'),
(113, 1620827007, '2021-05-12', 9, '1013', 6, '1.50', '9.00'),
(114, 1620827043, '2021-05-12', 9, '1009', 4, '2.50', '10.00'),
(115, 1620827043, '2021-05-12', 9, '1010', 4, '3.50', '14.00'),
(116, 1620827043, '2021-05-12', 9, '1015', 6, '2.60', '15.60'),
(117, 1620827239, '2021-05-12', 10, '1015', 5, '2.60', '13.00'),
(118, 1620827239, '2021-05-12', 10, '1023', 3, '2.50', '7.50'),
(119, 1620827239, '2021-05-12', 10, '1025', 1, '0.60', '0.60'),
(120, 1620827239, '2021-05-12', 10, '1028', 2, '3.99', '7.98'),
(121, 1620829363, '2021-05-12', 1, '1010', 3, '3.50', '10.50'),
(122, 1620829363, '2021-05-12', 1, '1012', 2, '1.80', '3.60'),
(123, 1620829363, '2021-05-12', 1, '1018', 1, '2.80', '2.80'),
(124, 1620829363, '2021-05-12', 1, '1022', 3, '2.70', '8.10'),
(125, 1620829412, '2021-05-12', 2, '1011', 1, '1.70', '1.70'),
(126, 1620829412, '2021-05-12', 2, '1017', 3, '1.40', '4.20'),
(127, 1620829412, '2021-05-12', 2, '1023', 1, '2.50', '2.50'),
(128, 1620829412, '2021-05-12', 2, '1026', 5, '1.50', '7.50'),
(129, 1620829412, '2021-05-12', 2, '1012', 1, '1.80', '1.80'),
(130, 1620829506, '2021-05-12', 5, '1028', 2, '3.99', '7.98'),
(131, 1620829506, '2021-05-12', 5, '1021', 2, '2.10', '4.20'),
(132, 1620829506, '2021-05-12', 5, '1022', 2, '2.70', '5.40'),
(133, 1620829506, '2021-05-12', 5, '1027', 1, '3.30', '3.30'),
(134, 1620829506, '2021-05-12', 5, '1012', 1, '1.80', '1.80'),
(135, 1620829506, '2021-05-12', 5, '1024', 3, '1.55', '4.65'),
(136, 1620829506, '2021-05-12', 5, '1025', 3, '0.60', '1.80'),
(137, 1620829530, '2021-05-12', 5, '1010', 3, '3.50', '10.50'),
(138, 1620829530, '2021-05-12', 5, '1009', 3, '2.50', '7.50'),
(139, 1620829530, '2021-05-12', 5, '1015', 3, '2.60', '7.80'),
(140, 1620829592, '2021-05-12', 3, '1012', 3, '1.80', '5.40'),
(141, 1620829592, '2021-05-12', 3, '1019', 10, '0.85', '8.50'),
(142, 1620829592, '2021-05-12', 3, '1013', 5, '1.50', '7.50'),
(143, 1620829592, '2021-05-12', 3, '1017', 5, '1.40', '7.00'),
(144, 1620829592, '2021-05-12', 3, '1027', 3, '3.30', '9.90'),
(145, 1620829592, '2021-05-12', 3, '1011', 3, '1.70', '5.10'),
(146, 1620829892, '2021-05-12', 4, '1009', 20, '2.50', '50.00'),
(147, 1620829892, '2021-05-12', 4, '1010', 10, '3.50', '35.00'),
(148, 1620829892, '2021-05-12', 4, '1015', 5, '2.60', '13.00'),
(149, 1620829892, '2021-05-12', 4, '1017', 10, '1.40', '14.00'),
(150, 1620829892, '2021-05-12', 4, '1016', 15, '2.20', '33.00');

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
(15, 1620826812, '2021-05-12 00:00:00.000000', 8, 15, '', '78.90', 'Pending', '', '2021-05-17 00:00:00.000000'),
(16, 1620827007, '2021-05-12 00:00:00.000000', 9, 15, '', '65.40', 'Pending', '', '2021-05-22 00:00:00.000000'),
(17, 1620827043, '2021-05-12 00:00:00.000000', 9, 15, '', '54.60', 'Pending', '', '2021-05-24 00:00:00.000000'),
(18, 1620827239, '2021-05-12 00:00:00.000000', 10, 15, '', '44.08', 'Pending', '', '2021-05-20 00:00:00.000000'),
(19, 1620829363, '2021-05-12 00:00:00.000000', 1, 15, '', '40.00', 'Confirmed', 'Your order has been confirmed!', '2021-05-16 00:00:00.000000'),
(20, 1620829412, '2021-05-12 00:00:00.000000', 2, 15, '', '32.70', 'Confirmed', 'Your order has been confirmed!', '2021-05-17 00:00:00.000000'),
(21, 1620829506, '2021-05-12 00:00:00.000000', 5, 15, '', '44.13', 'Cancelled', 'Your order has been cancelled <br>\r\n	 due to lack of communication <br> and incomplete informatio!', '2021-05-20 00:00:00.000000'),
(22, 1620829530, '2021-05-12 00:00:00.000000', 5, 15, '', '40.80', 'Pending', '', '2021-05-22 00:00:00.000000'),
(23, 1620829592, '2021-05-12 00:00:00.000000', 3, 15, '', '58.40', 'Pending', '', '2021-05-23 00:00:00.000000'),
(24, 1620829892, '2021-05-12 00:00:00.000000', 4, 15, '', '160.00', 'Pending', '', '2021-05-24 00:00:00.000000');

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
  MODIFY `C_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
