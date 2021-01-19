-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2017 at 07:46 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midterm_zamora`
--
CREATE DATABASE IF NOT EXISTS `testing1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testing1`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Electronics & Computers'),
(2, 'Home, Garden & Tools'),
(3, 'Handmade');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` varchar(30) NOT NULL,
  `product_image` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 1, 'ASUS Laptop 1500', '799.00', 'asus-laptop.jpg'),
(2, 1, 'Microsoft Surface Pro 3', '898.00', 'surface-pro.jpg'),
(3, 1, 'Samsung EVO 32GB', '12.00', 'samsung-sd-card.jpg'),
(4, 1, 'Desktop Hard Drive', '50.00', 'computer-hard-disk.jpg'),
(5, 1, 'External Hard Drive', '80.00', 'external-hard-disk.jpg'),
(6, 2, 'Crock-Pot Oval Slow Cooker', '34.00', 'crok-pot-cooker.jpg'),
(7, 2, 'Magic Blender System', '80.00', 'blender.jpg'),
(8, 2, 'Cordless Hand Vacuum', '40.00', 'vaccum-cleaner.jpg'),
(9, 2, 'Dishwasher Detergent', '15.00', 'detergent-powder.jpg'),
(10, 2, 'Essential Oil Diffuser', '20.00', 'unpower-difuser.jpg'),
(11, 3, 'Medical Personalized', '11.00', 'hand-bag.jpg'),
(12, 3, 'Best Bridle Leather Belt', '64.00', 'mens-belt.jpg'),
(13, 3, 'HANDMADE Bow set', '24.00', 'pastal-colors.jpg');

-- --------------------------------------------------------

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
