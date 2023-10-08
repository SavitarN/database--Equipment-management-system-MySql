-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 02:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', '$2y$10$mvePkZ8wp30FSgO3xGW/kus37GYzaFpRrM/EeigvjRGrAkMMcbHz.'),
(2, 'admin2', '$2y$10$7vvUpP9a8YmlEolCuhK1VeP6Bmef2ap4xXXw8JvN/YVXjC8sqzyPq');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Microscope'),
(2, 'Tube'),
(3, 'Blood Pressure Monitors'),
(4, 'Blood Test'),
(5, 'Flask Tube');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_username`, `customer_email`, `customer_password`, `customer_address`, `customer_phone`) VALUES
(1, 'Nischal Joshi', 'nischalzoc999@gmail.com', '$2y$10$mPuaEGzv/S57ID/QczNrE.q/4ykFD3g1T8SNGWpjV7QzU8MbUAa0y', 'KTM', '9821635060'),
(2, 'Ravi Upadhaya', 'ravi007@gmail.com', '$2y$10$2GU4sLEr9px3/CXn9Mcdg.AkPqTzarROz5xTzUX5NVCwMlmYmbfk.', 'Dhangadhi', '9848430404'),
(3, '123', '123@gmail.com', '$2y$10$x9DwCsKcJ5KVfAULpkXcLu4.uejXny7c1ARSOvKE0qGbEDNpCZnf2', 'New Baneshwor, kathmandu', '9876543210'),
(4, 'Hari Pandey', 'hari_pandey@gmail.com', '$2y$10$q0w73QLs4iKM.a/Q5c2eP.MEoyUtTHDg9xrTNHR.y.QUNhn8UrvTO', 'ktm', '9821645969'),
(5, 'shekhar bhatt', 'shekhar_bhatt@gmail.com', '$2y$10$H2WcoaGKhgJCphAuv9FZlOZqng8Ygq/jiT6.hfAnU1SEMCNLnMV4a', 'ktm', '9821645969'),
(6, 'diwash', 'diwash@gmail.com', '$2y$10$XIpNhsOwmaRe2kidviRXW.YvW2c3HOwGUm.RxF8FnJSUnusr55Xcu', 'KTM', '9848430404'),
(7, 'Shiv', 'shivt@gmail.com', '$2y$10$bWY0/x4XAQHFBHFKJKbFH.Itar3Jl/GyaQtnO25NkypSkklj5GwEa', 'KTM', '9812667985'),
(8, 'Dipendra', 'dipendra@gmail.com', '$2y$10$dNj/MxQXqQGO71tpN5n5AORufwdSD/na92JdirDkiOCAI5yk/eCVW', 'KARESHWOR', '9812334455');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` int(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`, `order_id`, `amount`, `created_at`) VALUES
(1, 'eSewa', NULL, 3550, '2023-10-08 17:17:09'),
(2, 'eSewa', NULL, 3550, '2023-10-08 17:17:41'),
(3, 'eSewa', NULL, 5050, '2023-10-08 17:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_rate` varchar(20) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_keyword` varchar(60) NOT NULL,
  `product_quantity` int(50) NOT NULL,
  `product_category` varchar(60) NOT NULL,
  `product_image` blob NOT NULL,
  `product_image2` blob NOT NULL,
  `product_image3` blob NOT NULL,
  `product_status` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_rate`, `product_description`, `product_keyword`, `product_quantity`, `product_category`, `product_image`, `product_image2`, `product_image3`, `product_status`, `category_id`, `admin_id`, `order_id`) VALUES
(1, 'Electronic Microscope', '45000', 'Electron microscopy (EM) is a technique for obtaining high resolution images of biological and non-b', 'Electronic, microscope, lab', 1, 'Microscope', 0x456c656374726f6e5f4d6963726f73636f70652e6a7067, 0x656c656374726f6e6963322e6a706567, 0x656c656374726f6e6963332e706e67, 'Checked', NULL, NULL, NULL),
(3, 'Digital BloodPressure Tool', '3550', 'Digital devices, also called monitors, will give you the systolic and diastolic blood pressures and ', 'Blood pressure, digital, bp', 1, 'Blood Pressure Monitors', 0x6270326a70672e6a7067, 0x62702e6a7067, 0x6270332e6a7067, 'Checked', NULL, NULL, NULL),
(5, 'Blood Pressure', '2000', 'BP', 'Blood pressure', 1, 'Blood Pressure Monitors', 0x426c6f6f64546573742e6a7067, 0x62702e6a7067, 0x6270326a70672e6a7067, 'checked', NULL, NULL, NULL),
(6, 'Blood Glucose Meter', '1500', 'Blood glucose meter— a finger-prick device is used to draw a drop of blood from your finger, which y', 'sugar, blood, measurement , health', 1, 'Blood Test', 0x626c6f6f64537567617231202d2053686f72746375742e6a7067, 0x626c6f6f645375676172322e706e67, 0x53756761724c6576656c332e77656270, 'Checked', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
