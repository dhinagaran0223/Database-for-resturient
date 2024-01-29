-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2024 at 05:17 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tableId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `tableId`, `userId`, `token`, `status`, `firstName`, `middleName`, `lastName`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, 'token no 03', 50, 'Ajith', 'Kumar', 'AK', '1234567890', 'ajith@gmail.com', 'veg meals', 'non-veg mels', 'Chennai', 'TamilNadu', 'India', '2024-01-23 16:04:07', '2024-01-23 16:04:07', 'I spend my free time with my Family in this Resraurant and it have good Ambience.'),
(2, 2, 2, 'Token no 04', 50, 'Joseph', 'Vijay', 'S', '0987654321', 'vijay@gmail.com', 'veg meals', 'biryani', 'Chennai', 'TamilNadu', 'India', '2024-01-23 16:10:52', '2024-01-23 16:10:52', 'Good Restaurant for spend time with family. ');

-- --------------------------------------------------------

--
-- Table structure for table `booking_item`
--

DROP TABLE IF EXISTS `booking_item`;
CREATE TABLE IF NOT EXISTS `booking_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookingId` bigint(20) NOT NULL,
  `itemId` bigint(20) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `unit` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_item`
--

INSERT INTO `booking_item` (`id`, `bookingId`, `itemId`, `sku`, `price`, `discount`, `quantity`, `unit`, `status`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, '2000', 150, 20, 5, 3, 1, '2024-01-23 16:17:02', '2024-01-23 16:17:02', 'place your order'),
(2, 2, 1, '2000', 100, 10, 3, 1, 1, '2024-01-23 16:21:19', '2024-01-23 16:21:19', 'place your order');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `vendorId` bigint(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `summary` tinyint(4) NOT NULL,
  `type` smallint(6) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `quantity` float NOT NULL,
  `unit` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `userId`, `vendorId`, `title`, `slug`, `summary`, `type`, `sku`, `quantity`, `unit`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, 'Idly', 'rice,vegetable,dhal,oil', 100, 1, '1500', 5, 1, '2024-01-23 16:25:14', '2024-01-23 16:25:14', 'Enjoy your order'),
(2, 2, 1, 'Dosa', 'rice,vegetable,dhal,oil', 100, 1, '1500', 5, 2, '2024-01-23 16:26:57', '2024-01-23 16:26:57', 'Enjoy your order');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `vendorId` bigint(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `summary` tinytext NOT NULL,
  `type` smallint(6) NOT NULL,
  `cooking` tinyint(1) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` smallint(6) NOT NULL,
  `recipe` text NOT NULL,
  `instructions` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `userId`, `vendorId`, `title`, `slug`, `summary`, `type`, `cooking`, `sku`, `price`, `quantity`, `unit`, `recipe`, `instructions`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, 'Breakfast', 'idly,dosa,pongal,tea,coffee', 'order placed', 100, 1, 'idly,dosa', 100, 3, 1, 'Dosa and idly', 'order confimed', '2024-01-23 16:27:39', '2024-01-23 16:27:39', 'order placed'),
(2, 2, 1, 'Dinner', 'idly,dosa,parota,fried rice', 'make your order', 1, 2, 'parota', 150, 5, 1, 'parota with chicken', 'order confimed', '2024-01-23 16:32:07', '2024-01-23 16:32:07', 'order placed');

-- --------------------------------------------------------

--
-- Table structure for table `item_chef`
--

DROP TABLE IF EXISTS `item_chef`;
CREATE TABLE IF NOT EXISTS `item_chef` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemId` bigint(20) NOT NULL,
  `chefId` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_chef`
--

INSERT INTO `item_chef` (`id`, `itemId`, `chefId`, `active`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `summary` tinyint(4) NOT NULL,
  `type` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `userId`, `title`, `slug`, `summary`, `type`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 'breakfast', 'idly,dosa,pongal,vada,tea,coffee,poori', 100, 1, '2024-01-23 16:37:19', '2024-01-23 16:37:19', 'order your food at anytime'),
(2, 2, 'lunch', 'biryani,parota,veg meals, non-veg meals', 100, 2, '2024-01-23 16:38:56', '2024-01-23 16:38:56', 'order your food at anytime');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menuId` bigint(20) NOT NULL,
  `itemId` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `menuId`, `itemId`, `active`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) NOT NULL,
  `itemId` bigint(20) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `orderId`, `itemId`, `sku`, `price`, `discount`, `quantity`, `unit`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, 'idly,dosa,vada', 100, 10, 3, 1, '2024-01-23 16:40:52', '2024-01-23 16:40:52', 'please order your food'),
(2, 2, 2, 'pongal,vada', 70, 5, 2, 2, '2024-01-23 16:42:16', '2024-01-23 16:42:16', 'please order your food');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemId` bigint(20) NOT NULL,
  `ingredientId` bigint(20) NOT NULL,
  `quantity` float NOT NULL,
  `unit` smallint(6) NOT NULL,
  `instructions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`id`, `itemId`, `ingredientId`, `quantity`, `unit`, `instructions`) VALUES
(1, 1, 1, 100, 20, 'make your first order with maximum discount'),
(2, 2, 1, 250, 30, 'order your fisrt item with better discount');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_order`
--

DROP TABLE IF EXISTS `restaurant_order`;
CREATE TABLE IF NOT EXISTS `restaurant_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_Id` bigint(20) NOT NULL,
  `vendor_Id` bigint(20) NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `status` smallint(6) NOT NULL,
  `sub_total` float NOT NULL,
  `item_discount` float NOT NULL,
  `tax` float NOT NULL,
  `shipping` float NOT NULL,
  `total` float NOT NULL,
  `promo` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `discount` float NOT NULL,
  `grand_Total` float NOT NULL,
  `first_Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `middle_Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `last_Name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `line1` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `line2` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `created_At` datetime NOT NULL,
  `updated_At` datetime NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_order`
--

INSERT INTO `restaurant_order` (`id`, `user_Id`, `vendor_Id`, `token`, `status`, `sub_total`, `item_discount`, `tax`, `shipping`, `total`, `promo`, `discount`, `grand_Total`, `first_Name`, `middle_Name`, `last_Name`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `created_At`, `updated_At`, `content`) VALUES
(1, 1, 1, 'token no 03', 1, 100, 10, 2.25, 1.15, 95, 'make your order', 5, 100, 'ajith', 'Kumar', 'AK', '1234567890', 'ajith@gmail.com', 'veg meals', 'non-veg mels', 'Chennai', 'TamilNadu', 'India', '2024-01-23 17:07:32', '2024-01-23 17:07:32', 'order placed...'),
(2, 2, 1, 'token no 05', 1, 150, 15, 2.5, 2, 150, 'make your order', 10, 150, 'joseph', 'Vijay', 'S', '0987654321', 'vijay@gmail.com', 'veg meals', 'biryani', 'Chennai', 'TamilNadu', 'India', '2024-01-23 17:11:16', '2024-01-23 17:11:16', 'order placed...');

-- --------------------------------------------------------

--
-- Table structure for table `table_top`
--

DROP TABLE IF EXISTS `table_top`;
CREATE TABLE IF NOT EXISTS `table_top` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `stauts` smallint(6) NOT NULL,
  `capacity` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_top`
--

INSERT INTO `table_top` (`id`, `code`, `stauts`, `capacity`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 'asdfg', 1, 100, '2024-01-23 16:47:29', '2024-01-23 16:47:29', 'make your order'),
(2, 'zxcvb', 1, 250, '2024-01-23 16:48:14', '2024-01-23 16:48:14', 'make your order');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `vendorId` bigint(20) NOT NULL,
  `orderId` bigint(20) NOT NULL,
  `code` varchar(100) NOT NULL,
  `type` smallint(6) NOT NULL,
  `mode` smallint(6) NOT NULL,
  `stauts` smallint(6) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `userId`, `vendorId`, `orderId`, `code`, `type`, `mode`, `stauts`, `createdAt`, `updatedAt`, `content`) VALUES
(1, 1, 1, 1, 'asdfg', 1, 2, 1, '2024-01-23 16:49:47', '2024-01-23 16:49:47', 'enjoy your order'),
(2, 2, 1, 2, 'zxcvb', 2, 1, 1, '2024-01-23 16:50:45', '2024-01-23 16:50:45', 'Enjoy your order');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `middleName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwordHash` varchar(32) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `vendor` tinyint(1) NOT NULL,
  `chef` tinyint(1) NOT NULL,
  `agent` tinyint(1) NOT NULL,
  `registeredAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intro` tinyint(4) NOT NULL,
  `profile` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `middleName`, `lastName`, `mobile`, `email`, `passwordHash`, `admin`, `vendor`, `chef`, `agent`, `registeredAt`, `lastLogin`, `intro`, `profile`) VALUES
(1, 'Ajith', 'Kumar', 'AK', '1234567890', 'ajith@gmail.com', '1234567890', 1, 1, 1, 1, '2024-01-23 16:53:02', '2024-01-23 16:53:02', 1, 'make better order'),
(2, 'Joseph', 'Vijay', 'S', '0987654321', 'vijay@gmail.com', '0987654321', 1, 2, 1, 1, '2024-01-23 16:54:14', '2024-01-23 16:54:14', 1, 'make better order');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
