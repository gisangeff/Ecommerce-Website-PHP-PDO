-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 07:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guitar_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cart_code` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `cart_code`) VALUES
(140, 100007, 1007, 1, 702001),
(141, 100007, 1004, 2, 702001);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `total` float(10,2) NOT NULL,
  `ordered_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `contact`, `address`, `total`, `ordered_date`) VALUES
(702001, 100007, '+639123789168', 'Block 1 Lot 4 Talomo Proper, Davao City', 1030889.00, 'August 8, 2020, 1:19 PM');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `description` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `QuantityInStock` int(100) NOT NULL,
  `QuantitySold` int(100) NOT NULL,
  `date_registered` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `photo`, `QuantityInStock`, `QuantitySold`, `date_registered`) VALUES
(1000, 'Brian Ray \'62 SG Junior - White Fox', 'Specifications:\r\n\r\nSolidbody Electric Guitar\r\nThicker Mahogany Body\r\nMahogany Neck and Rosewood Fretboard\r\n24-3/4\" Scale Length\r\n12” Fretboard Radius\r\nDog Ear P-90 Pickup\r\nMaster Volume and Tone Controls\r\nPassive ‘Induction Coil’ Circuit activated with Push-Push Knob to Reduce RF Interference and High Gain Noise\r\nConvertible Tailpiece for Wraptail or Vibrola Setup\r\nCustom Trapezoid Inlay Pattern\r\nEbony Block Tailpiece\r\n\r\nIncludes: Hardshell Case, Certificate of Authenticity, Paperwork', 212403.91, 'guitar-1.jpg', 1, 0, 'March 13, 2020, 5:31 PM'),
(1001, '1958 Les Paul Junior Double Cut Reissue - Cherry Red', 'SPECIFICATIONS\r\nBody Shape: Doublecut\r\nColour: Cherry\r\nBody Style: Solidbody\r\nNumber of Strings: 6\r\nRelic/Aging: No\r\nBody Wood: Mahogany\r\nFinish: Nitro\r\nNeck Wood: Mahogany\r\nFretboard Wood: Rosewood\r\nScale Length: 24.75\"\r\nNumber of Frets: 22\r\nFretboard Radius: 12\"\r\nNut Width: 1-11/16\" (43mm)\r\nBridge/Tailpiece: Fixed\r\nPickup Configuration: P90', 192170.14, 'guitar-2.jpg', 2, 0, 'March 14, 2020, 3:54 AM'),
(1002, 'Chuck Berry 1955 ES-350T - Antique Natural', 'my guitar is ambots hsaub', 504949.50, 'guitar-3.jpg', 3, 0, 'March 14, 2020, 3:53 AM'),
(1003, 'Dave Amato Les Paul Axcess Standard - Boston Sunset Fade', 'Spec\'d by REO Speedwagon guitarist Dave Amato\r\nFigured maple-topped weight-relieved mahogany body delivers classic tone and resonance\r\n\'57 Classic Plus humbuckers yield hot output, along with rich, vintage tone\r\nUltra-playable Extra Chunky neck with Axcess contour heel and white ebony fingerboard\r\nFloyd Rose tremolo for twisting, bending, and diving', 257499.50, 'guitar-4.jpg', 3, 0, 'March 14, 2020, 3:38 AM'),
(1004, 'Eric Clapton 1964 Firebird I - Vintage Sunburst', 'my guitar is ambots hsaub', 403949.50, 'guitar-5.jpg', 3, 0, '	 March 14, 2020, 3:58 AM'),
(1005, '1957 Les Paul Goldtop Reissue - Double Gold', 'my guitar is ambots hsaub', 237299.50, 'guitar-6.jpg', 3, 0, 'March 14, 2020, 3:56 AM'),
(1006, 'JIMI HENDRIX VOODOO CHILD STRATOCASTER JOURNEYMAN RELIC - OLYMPIC', 'my guitar is ambots hsaub', 232300.00, 'guitar-7.jpg', 3, 0, 'March 14, 2020, 3:57 AM'),
(1007, 'LIMITED EDITION SUPER CUSTOM TELECASTER DELUXE - BLUE SPARKLE', 'my guitar is ambots hsaub', 222200.00, 'guitar-8.jpg', 3, 0, 'March 14, 2020, 4:00 AM'),
(1008, '1957 Les Paul Custom Reissue - Ebony 2-Pickup', 'my guitar is ambots hsaub', 338299.50, 'guitar-9.jpg', 3, 0, 'March 16, 2020, 12:00 AM'),
(1009, '1967 Flying V w/ Vibrola - Sparkling Burgundy', 'my guitar is ambots hsaub', 252449.50, 'guitar-10.jpg', 3, 0, 'March 15, 2020, 0:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(128) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `contact` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_registered` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `contact`, `address`, `date_registered`) VALUES
(100003, 'jervey', 'pamad', 'pamadjervey21@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, NULL, NULL, 'May 17, 2020, 9:23 PM'),
(100004, 'Dan', 'Walker', 'dan.walker0321@gmail.com', 'af4383061f60f59e96c8acd56a4b51d123edfc6d692e86921daba3979a792f86d4d32d6f52b257021f2262c63d0ea91c5d6f08c04ac699bad901a7b8cbba83e9', 0, NULL, NULL, 'May 20, 2020, 2:40 AM'),
(100005, 'Gisan Geff', 'Raniego', 'gisangeff@gmail.com', 'aa671e970186a16007fd50ef22d2601c58f475ca52a4d116903545b6d6c76df784ee955e4352aea0ceb339b19ec64587fe3b6f2933adb0511fb5604443c2d92d', 1, '+639123789168', 'Block 1 Lot 4 Talomo Proper, Davao City', 'August 8, 2020, 10:12 AM'),
(100007, 'Xander', 'Ford', 'ford@gmail.com', 'aa671e970186a16007fd50ef22d2601c58f475ca52a4d116903545b6d6c76df784ee955e4352aea0ceb339b19ec64587fe3b6f2933adb0511fb5604443c2d92d', 0, NULL, NULL, 'August 8, 2020, 1:15 PM'),
(100008, 'Jake', 'Zyrus', 'jake@gmail.com', 'aa671e970186a16007fd50ef22d2601c58f475ca52a4d116903545b6d6c76df784ee955e4352aea0ceb339b19ec64587fe3b6f2933adb0511fb5604443c2d92d', 0, NULL, NULL, 'August 8, 2020, 1:16 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
