-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 07:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(45) NOT NULL,
  `Admin_Pass` varchar(45) NOT NULL,
  `onoff` varchar(100) NOT NULL,
  `L_Date` varchar(100) NOT NULL,
  `L_Time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Pass`, `onoff`, `L_Date`, `L_Time`) VALUES
('ani', '1234', 'online', '2023-12-19', '01:23:51 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_ID` varchar(45) NOT NULL,
  `Order_ID` varchar(45) NOT NULL,
  `Product_ID` varchar(45) NOT NULL,
  `Pro_Name` varchar(45) NOT NULL,
  `Imgurl` varchar(100) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Amount` int(20) NOT NULL,
  `Cus_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_ID`, `Order_ID`, `Product_ID`, `Pro_Name`, `Imgurl`, `Price`, `Quantity`, `Amount`, `Cus_ID`) VALUES
('CRT0002', 'ORD0001', 'PRO0009', '150', 'mk9.jpg', '150', 4, 600, 'CUS0001'),
('CRT0003', 'ORD0001', 'PRO0006', '400', 'mk6.jpg', '400', 1, 400, 'CUS0001'),
('CRT0004', 'ORD0001', 'PRO0004', '100', 'mk4.jpg', '100', 1, 100, 'CUS0001'),
('CRT0006', 'ORD0004', 'PRO0003', '520', 'm3.jpg', '520', 7, 3640, 'CUS0001'),
('CRT0007', 'ORD0004', 'PRO0006', '400', 'mk6.jpg', '400', 1, 400, 'CUS0001'),
('CRT0008', 'ORD0004', 'PRO0007', '250', 'mk7.jpg', '250', 1, 250, 'CUS0001'),
('CRT0009', 'ORD0005', 'PRO0003', '520', 'm3.jpg', '520', 7, 3640, 'CUS0001'),
('CRT0011', 'ORD0005', 'PRO0006', 'Fortune Oil, 5L', 'mk6.jpg', '400', 1, 400, 'CUS0001'),
('CRT0012', 'ORD0006', 'PRO0002', 'Cashew Nuts, 100g', 'm2.jpg', '200', 1, 200, 'CUS0001'),
('CRT0013', 'ORD0007', 'PRO0001', 'Almonds, 100g', 'm1.jpg', '1500', 1, 1500, 'CUS0001'),
('CRT0014', 'ORD0007', 'PRO0005', 'Saffola Gold, 1L', 'mk5.jpg', '130', 1, 130, 'CUS0001'),
('CRT0015', 'ORD0008', 'PRO0002', 'Cashew Nuts, 100g', 'm2.jpg', '200', 1, 200, 'CUS0001'),
('CRT0016', 'ORD0008', 'PRO0001', 'Almonds, 100g', 'm1.jpg', '1500', 1, 1500, 'CUS0001'),
('CRT0017', 'ORD0009', 'PRO0003', 'Pista, 250g', 'm3.jpg', '520', 1, 520, 'CUS0001'),
('CRT0018', 'ORD0009', 'PRO0003', 'Pista, 250g', 'm3.jpg', '520', 1, 520, 'CUS0006'),
('CRT0019', 'ORD0009', 'PRO0002', 'Cashew Nuts, 100g', 'm2.jpg', '200', 1, 200, 'CUS0006'),
('CRT0020', 'ORD0009', 'PRO0009', 'Chinese Noodles, 68g', 'mk9.jpg', '150', 4, 600, 'CUS0006'),
('CRT0021', 'ORD0010', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0007'),
('CRT0022', 'ORD0010', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0007'),
('CRT0023', 'ORD0010', 'PRO0035', 'Yippee Noodles , 68g', 'mk7.jpg', '120', 1, 120, 'CUS0006'),
('CRT0024', 'ORD0010', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0006'),
('CRT0026', 'ORD0011', 'PRO0031', 'Cashew Nuts,100g', 'm2.jpg', '2500', 8, 20000, 'CUS0008'),
('CRT0027', 'ORD0012', 'PRO0031', 'Cashew Nuts,100g', 'm2.jpg', '2500', 8, 20000, 'CUS0009'),
('CRT0028', 'ORD0013', 'PRO0030', 'Almonds,100g', 'm1.jpg', '1500', 1, 1500, 'CUS0009'),
('CRT0029', 'ORD0013', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0009'),
('CRT0030', 'ORD0014', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0031', 'ORD0015', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0032', 'ORD0016', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0033', 'ORD0017', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0009'),
('CRT0034', 'ORD0018', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0035', 'ORD0019', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0036', 'ORD0020', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0037', 'ORD0021', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0038', 'ORD0022', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0039', 'ORD0023', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0040', 'ORD0024', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0009'),
('CRT0041', 'ORD0025', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0042', 'ORD0026', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0044', 'ORD0027', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0046', 'ORD0029', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0047', 'ORD0030', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0009'),
('CRT0048', 'ORD0031', 'PRO0031', 'Cashew Nuts,100g', 'm2.jpg', '2500', 8, 20000, 'CUS0008'),
('CRT0049', 'ORD0032', 'PRO0026', 'Chili Powder, 500g', 'chilli.jfif', '450', 1, 450, 'CUS0008'),
('CRT0050', 'ORD0032', 'PRO0027', 'Papper Powder, 500g', 'papper.jfif', '550', 1, 550, 'CUS0008'),
('CRT0051', 'ORD0033', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0008'),
('CRT0052', 'ORD0034', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0008'),
('CRT0053', 'ORD0035', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0008'),
('CRT0054', 'ORD0036', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0008'),
('CRT0055', 'ORD0037', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0008'),
('CRT0056', 'ORD0038', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0008'),
('CRT0057', 'ORD0039', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0008'),
('CRT0058', 'ORD0040', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 6, 21000, 'CUS0008'),
('CRT0059', 'ORD0041', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 6, 21000, 'CUS0008'),
('CRT0060', 'ORD0042', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 6, 21000, 'CUS0008'),
('CRT0061', 'ORD0043', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 6, 21000, 'CUS0008'),
('CRT0062', 'ORD0044', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0008'),
('CRT0063', 'ORD0045', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0064', 'ORD0046', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0065', 'ORD0047', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0010'),
('CRT0066', 'ORD0048', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0010'),
('CRT0067', 'ORD0049', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0010'),
('CRT0068', 'ORD0050', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0010'),
('CRT0069', 'ORD0051', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0010'),
('CRT0070', 'ORD0052', 'PRO0012', 'Cake, 1kg', 'cake.jfif', '3500', 1, 3500, 'CUS0010'),
('CRT0071', 'ORD0053', 'PRO0013', 'Bun, 1 piece', 'bun.jfif', '250', 10, 2500, 'CUS0010'),
('CRT0072', 'ORD0054', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 9, 1080, 'CUS0010'),
('CRT0073', 'ORD0055', 'PRO0011', 'Pastry, 1 piece', 'pastry.jfif', '120', 1, 120, 'CUS0010'),
('CRT0074', 'ORD0056', 'PRO0014', 'Measuring Cup', 'cup.jfif', '560', 10, 5600, 'CUS0010'),
('CRT0075', 'ORD0057', 'PRO0015', 'Wooden Spoon', 'spoon.jfif', '670', 8, 5360, 'CUS0010'),
('CRT0076', 'ORD0058', 'PRO0015', 'Wooden Spoon', 'spoon.jfif', '670', 8, 5360, 'CUS0010'),
('CRT0077', 'ORD0059', 'PRO0015', 'Wooden Spoon', 'spoon.jfif', '670', 1, 670, 'CUS0010'),
('CRT0078', 'ORD0060', 'PRO0016', 'Rubber Spatula', 'spatula.jpg', '250', 2, 500, 'CUS0010'),
('CRT0079', 'ORD0061', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0080', 'ORD0062', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0081', 'ORD0063', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0082', 'ORD0064', 'PRO0016', 'Rubber Spatula', 'spatula.jpg', '250', 2, 500, 'CUS0010'),
('CRT0083', 'ORD0065', 'PRO0028', 'Turmaric Powder, 250g', 'turmaric.jfif', '350', 13, 4550, 'CUS0010'),
('CRT0084', 'ORD0066', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0010'),
('CRT0085', 'ORD0067', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0012'),
('CRT0086', 'ORD0068', 'PRO0010', 'Bread, 1 pack ', 'bread.jfif', '320', 1, 320, 'CUS0008'),
('CRT0087', 'ORD0069', 'PRO0031', 'Cashew Nuts,100g', 'm2.jpg', '2500', 8, 20000, 'CUS0008');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Cat_ID` varchar(45) NOT NULL,
  `Cat_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Cat_ID`, `Cat_Name`) VALUES
('CAT0001', 'Bakery'),
('CAT0002', 'Baking Supplies'),
('CAT0003', 'Coffee, Tea & Beverages'),
('CAT0004', 'Sweets , Chocolate'),
('CAT0005', 'Spices & Masalas'),
('CAT0006', 'Nuts'),
('CAT0007', 'Oils'),
('CAT0008', 'Pasta & Noodles');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Chat_ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(100) NOT NULL,
  `To_Status` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Chat_ID`, `Name`, `Subject`, `Mail`, `Message`, `Date`, `Time`, `To_Status`, `Type`) VALUES
('CHT0011', 'aniqa ameed', 'enterprise', 'aniqameed078@gmail.com', 'ccffde', '2023-10-10', '04:40:22 PM', 'Read', 'contact'),
('CHT0012', 'aniqa ameed', 'complain', 'aniqameed078@gmail.com', 'errfyik', '2023-10-12', '12:40:22 PM', 'Read', 'contact'),
('CHT0013', 'aniqa ameed', 'complain', 'aniqameed078@gmail.com', 'bvbnk,', '2023-12-17', '10:12:55 AM', 'Read', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` varchar(45) NOT NULL,
  `Cus_Name` varchar(45) NOT NULL,
  `Cus_Pass` varchar(45) NOT NULL,
  `Cus_Address` varchar(50) NOT NULL,
  `Cus_Phone` int(10) NOT NULL,
  `Cus_Mail` varchar(45) NOT NULL,
  `Admin_ID` varchar(45) NOT NULL,
  `onoff` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `lastdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Cus_Name`, `Cus_Pass`, `Cus_Address`, `Cus_Phone`, `Cus_Mail`, `Admin_ID`, `onoff`, `last`, `lastdate`) VALUES
('CUS0007', 'shaz', '1234', 'batticaloa', 777897123, 'shaz@gmail.com', '', 'offline', '12:56:29 PM', '2023-10-12'),
('CUS0008', 'aniqa ameed', '123', 'batticaloa', 2147483647, 'aniqameed078@gmail.com', '', 'online', '10:15:41 AM', '2023-12-18'),
('CUS0009', 'Mohamed', '123', 'ninthavur', 752646287, 'mohamed@gmail.com', '', 'offline', '11:44:32 AM', '2023-12-17'),
('CUS0010', 'josaf', '1234', 'batticaloa', 765692340, 'josaf@gmail.com', '', 'offline', '12:28:26 PM', '2023-12-18'),
('CUS0011', 'vg', '123', 'batti', 769245678, 'vg@gmail.com', '', 'offline', '12:29:58 PM', '2023-12-18'),
('CUS0012', 'aa ', '123', 'batti', 789674578, 'aa@gmail.com', '', 'offline', '01:23:15 PM', '2023-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `F_ID` varchar(100) NOT NULL,
  `Cus_ID` varchar(100) NOT NULL,
  `Pro_ID` varchar(100) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `F_Date` varchar(100) NOT NULL,
  `F_Time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`F_ID`, `Cus_ID`, `Pro_ID`, `Message`, `F_Date`, `F_Time`) VALUES
('FED0002', 'CUS0001', 'PRO0003', 'asdasdasd', '2019-03-02', '05:43:34 PM'),
('FED0003', 'CUS0001', 'PRO0001', 'asdasdasdsad', '2019-03-02', '05:51:41 PM'),
('FED0005', 'CUS0006', 'PRO0010', 'taste good', '2023-10-12', '12:43:06 PM'),
('FED0006', 'CUS0009', 'PRO0011', 'gud ', '2023-12-17', '10:08:23 AM'),
('FED0007', 'CUS0008', 'PRO0017', 'taste good ', '2023-12-18', '12:51:44 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` varchar(45) NOT NULL,
  `Cus_ID` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(56) NOT NULL,
  `D_Date` varchar(100) NOT NULL,
  `D_Time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Cus_ID`, `Amount`, `Date`, `Status`, `D_Date`, `D_Time`) VALUES
('ORD0009', 'CUS0006', '1320', '2023-10-12', 'Delivered', '2023-10-12', '12:43:40 PM'),
('ORD0010', 'CUS0006', '3860', '2023-10-18', 'Delivered', '2023-10-18', '02:59:33 PM'),
('ORD0011', 'CUS0008', '2500', '2023-12-17', 'Delivered', '2023-12-17', '09:57:22 AM'),
('ORD0012', 'CUS0009', '2500', '2023-12-17', 'Delivered', '2023-12-17', '09:57:25 AM'),
('ORD0013', 'CUS0009', '1620', '2023-12-17', 'Delivered', '2023-12-17', '10:18:46 AM'),
('ORD0014', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '10:18:49 AM'),
('ORD0015', 'CUS0009', '3520', '2023-12-17', 'Delivered', '2023-12-17', '11:16:53 AM'),
('ORD0016', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:17:01 AM'),
('ORD0017', 'CUS0009', '1200', '2023-12-17', 'Delivered', '2023-12-17', '11:16:58 AM'),
('ORD0018', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:17:03 AM'),
('ORD0019', 'CUS0009', '1600', '2023-12-17', 'Delivered', '2023-12-17', '11:16:56 AM'),
('ORD0020', 'CUS0009', '3200', '2023-12-17', 'Delivered', '2023-12-17', '11:18:30 AM'),
('ORD0021', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:19:21 AM'),
('ORD0022', 'CUS0009', '960', '2023-12-17', 'Delivered', '2023-12-17', '11:20:28 AM'),
('ORD0023', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:22:35 AM'),
('ORD0024', 'CUS0009', '120', '2023-12-17', 'Delivered', '2023-12-17', '11:25:38 AM'),
('ORD0025', 'CUS0009', '2560', '2023-12-17', 'Delivered', '2023-12-17', '11:28:03 AM'),
('ORD0026', 'CUS0009', '640', '2023-12-17', 'Delivered', '2023-12-17', '11:29:56 AM'),
('ORD0027', 'CUS0009', '65240', '2023-12-17', 'Delivered', '2023-12-17', '11:33:18 AM'),
('ORD0028', 'CUS0009', '3500', '2023-12-17', 'Delivered', '2023-12-17', '11:34:36 AM'),
('ORD0029', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:34:40 AM'),
('ORD0030', 'CUS0009', '320', '2023-12-17', 'Delivered', '2023-12-17', '11:36:54 AM'),
('ORD0031', 'CUS0008', '2500', '2023-12-17', 'Delivered', '2023-12-17', '12:30:14 PM'),
('ORD0032', 'CUS0008', '1000', '2023-12-18', 'Delivered', '2023-12-18', '09:59:39 AM'),
('ORD0033', 'CUS0008', '640', '2023-12-18', 'Delivered', '2023-12-18', '10:01:08 AM'),
('ORD0034', 'CUS0008', '320', '2023-12-18', 'Delivered', '2023-12-18', '10:02:55 AM'),
('ORD0035', 'CUS0008', '1600', '2023-12-18', 'Delivered', '2023-12-18', '10:03:57 AM'),
('ORD0036', 'CUS0008', '320', '2023-12-18', 'Delivered', '2023-12-18', '12:36:30 PM'),
('ORD0037', 'CUS0008', '240', '2023-12-18', 'Delivered', '2023-12-18', '12:36:35 PM'),
('ORD0038', 'CUS0008', '1080', '2023-12-18', 'Delivered', '2023-12-18', '12:36:40 PM'),
('ORD0039', 'CUS0008', '120', '2023-12-18', 'Delivered', '2023-12-18', '12:36:43 PM'),
('ORD0040', 'CUS0008', '7000', '2023-12-18', 'Delivered', '2023-12-18', '12:36:53 PM'),
('ORD0041', 'CUS0008', '21000', '2023-12-18', 'Delivered', '2023-12-18', '12:36:57 PM'),
('ORD0042', 'CUS0008', '10500', '2023-12-18', 'Delivered', '2023-12-18', '12:37:02 PM'),
('ORD0043', 'CUS0008', '21000', '2023-12-18', 'Delivered', '2023-12-18', '12:37:05 PM'),
('ORD0044', 'CUS0008', '3500', '2023-12-18', 'Delivered', '2023-12-18', '12:36:20 PM'),
('ORD0045', 'CUS0010', '320', '2023-12-18', 'Delivered', '2023-12-18', '10:17:59 AM'),
('ORD0046', 'CUS0010', '320', '2023-12-18', 'Delivered', '2023-12-18', '12:36:25 PM'),
('ORD0047', 'CUS0010', '240', '2023-12-18', 'Not Delivered', '', ''),
('ORD0048', 'CUS0010', '3500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0049', 'CUS0010', '3500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0050', 'CUS0010', '3500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0051', 'CUS0010', '3500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0052', 'CUS0010', '3500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0053', 'CUS0010', '2500', '2023-12-18', 'Delivered', '2023-12-19', '01:07:00 PM'),
('ORD0054', 'CUS0010', '1080', '2023-12-18', 'Not Delivered', '', ''),
('ORD0055', 'CUS0010', '120', '2023-12-18', 'Not Delivered', '', ''),
('ORD0056', 'CUS0010', '5600', '2023-12-18', 'Not Delivered', '', ''),
('ORD0057', 'CUS0010', '1340', '2023-12-18', 'Not Delivered', '', ''),
('ORD0058', 'CUS0010', '5360', '2023-12-18', 'Not Delivered', '', ''),
('ORD0059', 'CUS0010', '670', '2023-12-18', 'Not Delivered', '', ''),
('ORD0060', 'CUS0010', '2500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0061', 'CUS0010', '320', '2023-12-18', 'Not Delivered', '', ''),
('ORD0062', 'CUS0010', '320', '2023-12-18', 'Not Delivered', '', ''),
('ORD0063', 'CUS0010', '640', '2023-12-18', 'Not Delivered', '', ''),
('ORD0064', 'CUS0010', '500', '2023-12-18', 'Not Delivered', '', ''),
('ORD0065', 'CUS0010', '4550', '2023-12-18', 'Not Delivered', '', ''),
('ORD0066', 'CUS0010', '320', '2023-12-18', 'Not Delivered', '', ''),
('ORD0067', 'CUS0012', '320', '2023-12-19', 'Delivered', '2023-12-19', '01:12:06 PM'),
('ORD0068', 'CUS0008', '320', '2023-12-19', 'Delivered', '2023-12-19', '03:19:24 PM'),
('ORD0069', 'CUS0008', '20000', '2023-12-19', 'Not Delivered', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Price` int(45) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Admin_ID` varchar(45) NOT NULL,
  `Cat_ID` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Imgurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Quantity`, `Price`, `Description`, `Admin_ID`, `Cat_ID`, `Date`, `Imgurl`) VALUES
('PRO0010', 'Bread, 1 pack ', 4, 320, 'Bread, baked food product made of flour or meal that is moistened, kneaded, and sometimes fermented.', 'aniqa', 'CAT0001', '2023-10-12', 'bread.jfif'),
('PRO0011', 'Pastry, 1 piece', 2, 120, 'Pastry, stiff dough made from flour, salt, a relatively high proportion of fat, and a small proporti', 'aniqa', 'CAT0001', '2023-10-12', 'pastry.jfif'),
('PRO0012', 'Cake, 1kg', 2, 3500, 'cake is a flour confection made from flour, sugar, and other ingredients', 'aniqa', 'CAT0001', '2023-10-12', 'cake.jfif'),
('PRO0013', 'Bun, 1 piece', 2, 250, 'Buns are usually made from a dough of flour, milk, yeast and small amounts of sugar and/or butter', 'aniqa', 'CAT0001', '2023-10-12', 'bun.jfif'),
('PRO0014', 'Measuring Cup', 2, 560, 'House hold things', 'aniqa', 'CAT0002', '2023-10-12', 'cup.jfif'),
('PRO0015', 'Wooden Spoon', 5, 670, 'House hold things', 'aniqa', 'CAT0002', '2023-10-12', 'spoon.jfif'),
('PRO0016', 'Rubber Spatula', 11, 250, 'House hold things', 'aniqa', 'CAT0002', '2023-10-12', 'spatula.jpg'),
('PRO0017', 'Cappuccino', 100, 600, 'Coffee to be healthy.', 'aniqa', 'CAT0003', '2023-10-12', 'cap.jfif'),
('PRO0018', 'Dark Coffee', 12, 300, 'Coffee to be healthy.', 'aniqa', 'CAT0003', '2023-10-12', 'dark.jfif'),
('PRO0019', 'Lemon Tea', 12, 350, 'tea to enhance ', 'aniqa', 'CAT0003', '2023-10-12', 'leTea.jfif'),
('PRO0020', 'Herbs Tea', 20, 250, 'tea to enhance ', 'aniqa', 'CAT0003', '2023-10-12', 'herbtea.jfif'),
('PRO0021', 'Beverage', 30, 400, 'Beverage to chill.', 'aniqa', 'CAT0003', '2023-10-12', 'bev.jfif'),
('PRO0022', 'Fruit Gums, 250g', 12, 240, 'Dessert is the last course of a meal', 'aniqa', 'CAT0004', '2023-10-12', 'fruit.jfif'),
('PRO0023', 'Candy', 14, 150, 'Dessert is the last course of a meal', 'aniqa', 'CAT0004', '2023-10-12', 'loli.jfif'),
('PRO0024', 'Cadburry, 250g', 20, 500, 'Dessert is the last course of a meal', 'aniqa', 'CAT0004', '2023-10-12', 'cad.jfif'),
('PRO0025', 'Galaxy, 250g', 100, 450, 'Dessert is the last course of a meal', 'aniqa', 'CAT0004', '2023-10-12', 'galax.jfif'),
('PRO0026', 'Chili Powder, 500g', 38, 450, 'spices to add taste to foods.', 'aniqa', 'CAT0005', '2023-10-12', 'chilli.jfif'),
('PRO0027', 'Papper Powder, 500g', 27, 550, 'spices to add taste to foods.', 'aniqa', 'CAT0005', '2023-10-12', 'papper.jfif'),
('PRO0028', 'Turmaric Powder, 250g', 0, 350, 'spices to add taste to foods.', 'aniqa', 'CAT0005', '2023-10-12', 'turmaric.jfif'),
('PRO0029', 'Pista,250g', 20, 1200, 'nuts are a composite of seed and dry fruit found inside of a hard outer shell. ', 'aniqa', 'CAT0006', '2023-10-12', 'm3.jpg'),
('PRO0030', 'Almonds,100g', 71, 1500, 'nuts are a composite of seed and dry fruit found inside of a hard outer shell. ', 'aniqa', 'CAT0006', '2023-10-12', 'm1.jpg'),
('PRO0031', 'Cashew Nuts,100g', 1, 2500, 'nuts are a composite of seed and dry fruit found inside of a hard outer shell. ', 'aniqa', 'CAT0006', '2023-10-12', 'm2.jpg'),
('PRO0032', 'Freedom Oil , 1L', 20, 1000, 'oil is primarily composed of linoleic acid, a polyunsaturated fat, and oleic acid, a monounsaturated', 'aniqa', 'CAT0007', '2023-10-12', 'mk4.jpg'),
('PRO0033', 'Saffola Gold , 1L', 42, 1340, 'oil is primarily composed of linoleic acid, a polyunsaturated fat, and oleic acid, a monounsaturated', 'aniqa', 'CAT0007', '2023-10-12', 'mk5.jpg'),
('PRO0034', 'Fortune Oil , 5L', 40, 1200, 'oil is primarily composed of linoleic acid, a polyunsaturated fat, and oleic acid, a monounsaturated', 'aniqa', 'CAT0007', '2023-10-12', 'mk6.jpg'),
('PRO0035', 'Yippee Noodles , 68g', 45, 120, 'noodle, a cooked egg -and- flour paste prominent in European and Asian cuisine', 'aniqa', 'CAT0008', '2023-10-12', 'mk7.jpg'),
('PRO0036', 'Wheat Pasta , 500g', 0, 500, 'noodle, a cooked egg -and- flour paste prominent in European and Asian cuisine', 'aniqa', 'CAT0008', '2023-10-12', 'mk8.jpg'),
('PRO0037', 'Chinese Noodles , 68g', 0, 350, 'noodle, a cooked egg -and- flour paste prominent in European and Asian cuisine', 'aniqa', 'CAT0008', '2023-10-12', 'mk9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Stock_ID` varchar(45) NOT NULL,
  `Supplier_ID` varchar(45) NOT NULL,
  `Pro_ID` varchar(45) NOT NULL,
  `Quantity` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Stock_ID`, `Supplier_ID`, `Pro_ID`, `Quantity`) VALUES
('STK0001', 'SUP0001', 'PRO0010', 10),
('STK0002', 'SUP0001', 'PRO0011', 12),
('STK0003', 'SUP0001', 'PRO0012', 10),
('STK0004', 'SUP0001', 'PRO0012', 10),
('STK0005', 'SUP0001', 'PRO0013', 10),
('STK0006', 'SUP0001', 'PRO0014', 10),
('STK0007', 'SUP0001', 'PRO0015', 10),
('STK0008', 'SUP0001', 'PRO0016', 10),
('STK0009', 'SUP0001', 'PRO0017', 100),
('STK0010', 'SUP0001', 'PRO0018', 12),
('STK0011', 'SUP0001', 'PRO0019', 12),
('STK0012', 'SUP0001', 'PRO0020', 20),
('STK0013', 'SUP0001', 'PRO0021', 30),
('STK0014', 'SUP0001', 'PRO0022', 12),
('STK0015', 'SUP0001', 'PRO0023', 14),
('STK0016', 'SUP0001', 'PRO0024', 20),
('STK0017', 'SUP0001', 'PRO0025', 100),
('STK0018', 'SUP0001', 'PRO0026', 39),
('STK0019', 'SUP0001', 'PRO0027', 28),
('STK0020', 'SUP0001', 'PRO0028', 13),
('STK0021', 'SUP0001', 'PRO0029', 20),
('STK0022', 'SUP0001', 'PRO0030', 45),
('STK0023', 'SUP0001', 'PRO0030', 27),
('STK0024', 'SUP0001', 'PRO0031', 12),
('STK0025', 'SUP0001', 'PRO0032', 20),
('STK0026', 'SUP0001', 'PRO0033', 12),
('STK0027', 'SUP0001', 'PRO0033', 30),
('STK0028', 'SUP0001', 'PRO0034', 40),
('STK0029', 'SUP0001', 'PRO0035', 46),
('STK0030', 'SUP0001', 'PRO0011', 1),
('STK0031', 'SUP0001', 'PRO0010', 1),
('STK0032', 'SUP0001', 'PRO0010', 2),
('STK0033', 'SUP0001', 'PRO0011', 2),
('STK0034', 'SUP0001', 'PRO0012', 2),
('STK0035', 'SUP0001', 'PRO0010', 2),
('STK0036', 'SUP0001', 'PRO0011', 2),
('STK0037', 'SUP0001', 'PRO0012', 5),
('STK0038', 'SUP0001', 'PRO0010', 2),
('STK0039', 'SUP0001', 'PRO0010', 2),
('STK0040', 'SUP0001', 'PRO0010', 2),
('STK0041', 'SUP0001', 'PRO0011', 2),
('STK0042', 'SUP0002', 'PRO0012', 2),
('STK0043', 'SUP0001', 'PRO0013', 2),
('STK0044', 'SUP0001', 'PRO0014', 2),
('STK0045', 'SUP0001', 'PRO0015', 5),
('STK0046', 'SUP0001', 'PRO0016', 4);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_ID` varchar(45) NOT NULL,
  `Sup_Name` varchar(100) NOT NULL,
  `Sup_Address` varchar(100) NOT NULL,
  `Sup_Mail` varchar(100) NOT NULL,
  `Sup_Phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_ID`, `Sup_Name`, `Sup_Address`, `Sup_Mail`, `Sup_Phone`) VALUES
('SUP0001', 'Aniqa', 'kallady', 'smartamal9@gmail.com', '0752201727'),
('SUP0002', 'croos', 'kallady, Batticaloa', 'croos@gmail.com', '0751234560'),
('SUP0003', 'croos', 'jaffna', 'croos@gmail.com', '0751234560');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Chat_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
