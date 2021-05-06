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
(1, 'Fruits'),
(2, 'Vegetables'),
(3, 'Misc');

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
(1, 'Lara', 'Croft', 25, '1 High Street', '0123456789', 'Female', 'lara@gmail.com', '123456', 'laraCroft', '$2y$10$AsGU0gIlLHcYuNotQHj2auBw.Z2vFdLdftxa9LL6HqlDW7sXrXOem');

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
(1, 'Lara', 'Croft 2', '0000000000', 'lara@gmail.com', 'UK', 'Female', 20, 'Manager', '2020-01-01');

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
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `price`, `profit`, `date_in`, `category_id`, `supplier_id`, `user_id`, `product_code`, `status`) VALUES
(1, 'Galla Apples', 499, '2.50', '1.10', '2019-11-21', 1, 2, 1, '1009', 'Available'),
(2, 'Pink Lady Apples', 593, '3.50', '1.90', '2019-11-21', 1, 2, 1, '1010', 'Available'),
(3, 'Cucumbers', 599, '1.70', '0.78', '2019-11-21', 3, 3, 1, '1011', 'Available'),
(4, 'Broccoli', 500, '1.80', '0.69', '2019-11-21', 3, 1, 1, '1012', 'Available'),
(5, 'Spring Onions', 495, '1.50', '0.60', '2019-11-21', 3, 1, 1, '1013', 'Available'),
(6, 'Radish', 400, '1.80', '0.78', '2019-11-21', 3, 2, 1, '1014', 'Available'),
(7, 'Strawberries', 60, '2.60', '1.15', '2019-11-22', 1, 2, 2, '1015', 'Available'),
(8, 'Pears', 100, '2.20', '0.99', '2019-11-28', 1, 1, 2, '1016', 'Available'),
(9, 'Lettuce', 150, '1.40', '0.60', '2021-04-26', 3, 2, 1, '1017', 'Available'),
(10, 'Basmati rice', 60, '2.80', '1.00', '2021-04-26', 2, 2, 1, '1018', 'Available'),
(11, 'Beef Tomatoes', 200, '0.85', '0.30', '2021-04-26', 3, 2, 1, '1019', 'Available'),
(12, 'Carrots', 300, '2.30', '0.85', '2021-04-26', 3, 1, 1, '1020', 'Available'),
(13, 'Cauliflower', 155, '2.10', '0.90', '2021-04-26', 3, 2, 1, '1021', 'Available'),
(14, 'Spinach', 244, '2.70', '1.00', '2021-04-26', 3, 1, 1, '1022', 'Available'),
(15, 'Courgette', 111, '2.50', '1.00', '2021-04-26', 3, 2, 1, '1023', 'Available'),
(16, 'Red Onions', 168, '1.55', '0.62', '2021-04-26', 3, 3, 1, '1024', 'Available'),
(17, 'Garlic', 130, '0.60', '0.20', '2021-04-26', 3, 2, 1, '1025', 'Available'),
(18, 'Aubergine', 98, '1.50', '0.55', '2021-04-26', 3, 2, 1, '1026', 'Available'),
(19, 'Pineapple', 82, '3.30', '1.25', '2021-04-26', 1, 1, 1, '1027', 'Available'),
(20, 'Brown rice', 200, '3.99', '1.70', '2021-04-26', 2, 2, 1, '1028', 'Available');

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
(1, 'UWL', '0000000000', 'uwl@gmail.com', 'London');

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
(31, 1554235838, '2019-04-03', 39, '100', 1, '350.00', '350.00');

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
(1, 1575428004, '2019-12-04 00:00:00.000000', 1, 15, '', '97650.00', 'Confirmed', 'Your order has been confirmed!', '2019-12-10 00:00:00.000000');

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
(1, 'test', 'test', 'test@yahoo.com', 0, '', 'Admin', 'test', '$2y$10$pKOAFaZ1jmmwWGQUJfZTdO3avJ3Es6/.n6TB8qVYAo9rn1Oh6Ic8i');

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
  MODIFY `C_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
