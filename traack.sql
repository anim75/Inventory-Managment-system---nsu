-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 09:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traack`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(7) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL,
  `category_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`) VALUES
('HP', 'HEADPHONES', 'All headphone related stuffs'),
('KEYB', 'KEYBOARD', 'All keyboard related stuffs'),
('KEYC', 'KEYCAPS', 'All keybcaps related stuffs'),
('MOUSE', 'MOUSE', 'All mouse related stuffs'),
('SWT', 'KEYBOARD SWITCHES', 'All keyboard switch related stuffs');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `customer_address` varchar(200) DEFAULT NULL,
  `phone_no` int(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` varchar(7) NOT NULL,
  `manufacturer_name` varchar(30) DEFAULT NULL,
  `hq_address` varchar(200) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`, `hq_address`, `email`, `phone_no`) VALUES
('AJAZZ', 'Ajazz', 'china,22', 'ajazz.support@gmail.com', 2147483647),
('DAREU', 'Dareu', 'china,22', 'dareu.customercare@gmail.com', 2147483647),
('KT', 'Kt', 'hong kong,22', 'kt.support@gmail.com', 2147483647),
('LOGI', 'Logitech', 'california,22', 'logitech.sales@gmail.com', 2147483647),
('RAZER', 'Razer', 'berlin,10', 'razer.products@gmail.com', 999646565);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` varchar(7) NOT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `items` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `discount` decimal(20,3) DEFAULT NULL,
  `total_price` decimal(20,3) DEFAULT NULL,
  `payment_id` varchar(7) DEFAULT NULL,
  `customer_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `order_status`, `items`, `date`, `discount`, `total_price`, `payment_id`, `customer_id`) VALUES
('ORD0001', 'completed', 'PRO0001 PRO0002', '2022-01-02', '50.000', '1670.000', 'PAY0001', 1),
('ORD0002', 'completed', 'PRO0001 PRO0002', '2022-01-02', '50.000', '1670.000', 'PAY0001', 1),
('ORD0003', 'pending', 'PRO0003 PRO0002', '2022-01-02', '50.000', '3200.000', 'PAY0002', 1),
('ORD0004', 'pending', 'PRO0001', '2022-01-02', '50.000', '2340.000', 'PAY0003', 2),
('ORD0005', 'pending', 'PRO0001 PRO0002', '2022-01-02', '50.000', '2560.000', 'PAY0004', 2),
('ORD0006', 'completed', 'PRO0003 PRO0002', '2022-01-02', '50.000', '1670.000', 'PAY0005', 2),
('ORD0007', 'pending', 'PRO0001 PRO0003', '2022-01-02', '50.000', '6509.000', 'PAY0006', 3),
('ORD0009', 'pending', 'PRO0001 PRO0002', '2022-01-02', '50.000', '1670.000', 'PAY0007', 4),
('ORD0010', 'completed', 'PRO0002', '2022-01-02', '50.000', '1670.000', 'PAY0008', 5),
('ORD0011', 'pending', 'PRO0001', '2022-01-02', '50.000', '1670.000', 'PAY0009', 5),
('ORD0012', 'pending', 'PRO0001 PRO0003', '2022-01-02', '50.000', '1670.000', 'PAY0010', 6);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(7) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_amount` decimal(20,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_amount`) VALUES
('PAY0001', 'bkash', '4000.000000'),
('PAY0002', 'bkash', '3100.000000'),
('PAY0003', 'COD', '3590.000000'),
('PAY0004', 'nagad', '1290.000000'),
('PAY0005', 'COD', '7600.000000'),
('PAY0006', 'COD', '4580.000000'),
('PAY0007', 'COD', '4580.000000'),
('PAY0008', 'COD', '2570.000000'),
('PAY0009', 'COD', '2300.000000'),
('PAY0010', 'bkash', '5000.000000');

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `product_code` varchar(7) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_desc` varchar(100) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `price_per_unit` decimal(20,3) DEFAULT NULL,
  `manufacturer_id` varchar(5) DEFAULT NULL,
  `category_id` varchar(7) DEFAULT NULL,
  `supplier_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`product_code`, `product_name`, `product_desc`, `quantity`, `price_per_unit`, `manufacturer_id`, `category_id`, `supplier_id`) VALUES
('PRO0001', 'AJ390', 'lightweight honeycomb mouse', 10, '1860.000', 'AJAZZ', 'MOUSE', 'BD001'),
('PRO0002', 'AJ390R', 'honeycomb gaming mouse', 10, '1500.000', 'AJAZZ', 'MOUSE', 'BD001'),
('PRO0003', 'KT87', 'barebone for kt', 10, '4500.000', 'KT', 'KEYB', 'BD002');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` varchar(5) NOT NULL,
  `supplier_name` varchar(30) DEFAULT NULL,
  `supplier_adderss` varchar(200) DEFAULT NULL,
  `phone_no` int(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_adderss`, `phone_no`, `email`) VALUES
('', NULL, NULL, NULL, NULL),
('101', 'Tanjim', 'dhaka cantonment', 1989898989, 'tanjimimtial5@gmail.com'),
('102', 'rejwan', 'pakistan', 6793834, 'rejwan@gmail.com'),
('103', 'lilnas', 'united kingdom', 47839292, 'lilnas@gmail.com'),
('104', 'travisscott', 'United states', 2524544, 'travisscott@gmail.com'),
('105', 'maroon', 'ireland', 281821, 'maroon@gmail.com'),
('106', 'dualip', 'germany', 121121, 'dualip@gmail.com'),
('107', 'kidlaroi', 'scotland', 2445222, 'kidlar@gmail.com'),
('108', 'justin', 'poland', 254523543, 'jb@gmail.com'),
('109', 'edshere', 'Netherland', 243434, 'edshere@gmail.com'),
('110', 'roddyrich', 'turkey', 2345242, 'roddyrich@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `full_name` varchar(50) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`full_name`, `username`, `email`, `gender`, `password`) VALUES
('Alex Brian', 'alex.brian', 'alexbrian@gmail.com', 'male', 'alex1234'),
('Ashikul Bari Chowdhury', 'ashikul.chowdhury', 'ashikul.chowdhury@northsouth.e', 'male', 'Sami1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`product_code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
