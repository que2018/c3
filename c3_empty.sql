-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 04:24 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c3`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `method` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(48642, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-04-18 04:14:45'),
(48643, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-04-18 04:18:49'),
(48644, 1, '104.33.58.117', 'user/user', 'view the user page', 'GET', '2018-04-18 04:18:57'),
(48645, 1, '104.33.58.117', 'user/user/edit', 'view the user edit page', 'GET', '2018-04-18 04:18:58'),
(48646, 1, '104.33.58.117', 'user/user/edit', 'view the user edit page', 'POST', '2018-04-18 04:19:09'),
(48647, 1, '104.33.58.117', 'user/user/edit', 'view the user edit page', 'POST', '2018-04-18 04:19:16'),
(48648, 1, '104.33.58.117', 'user/user', 'view the user page', 'GET', '2018-04-18 04:19:16'),
(48649, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2018-04-18 04:19:17'),
(48650, 1, '104.33.58.117', 'refund/refund', 'view the refund page', 'GET', '2018-04-18 04:19:19'),
(48651, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2018-04-18 04:19:20'),
(48652, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2018-04-18 04:19:22'),
(48653, 1, '104.33.58.117', 'inventory/inventory_alert', 'view the alert inventory page', 'GET', '2018-04-18 04:19:24'),
(48654, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:19:27'),
(48655, 1, '104.33.58.117', 'finance/balance', 'view the balance page', 'GET', '2018-04-18 04:19:30'),
(48656, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-04-18 04:19:33'),
(48657, 1, '104.33.58.117', 'common/logout', 'view the logout page', 'GET', '2018-04-18 04:19:37'),
(48658, NULL, '104.33.58.117', 'common/login', 'view the login page', 'GET', '2018-04-18 04:19:37'),
(48659, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-04-18 04:19:41'),
(48660, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-04-18 04:19:41'),
(48661, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2018-04-18 04:19:49'),
(48662, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2018-04-18 04:19:54'),
(48663, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2018-04-18 04:20:00'),
(48664, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-04-18 04:20:04'),
(48665, 1, '104.33.58.117', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-04-18 04:20:06'),
(48666, 1, '104.33.58.117', 'extension/platform', 'view the platform page', 'GET', '2018-04-18 04:20:09'),
(48667, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:20:09'),
(48668, 1, '104.33.58.117', 'shipping/fedex', '0', 'GET', '2018-04-18 04:20:16'),
(48669, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:20:54'),
(48670, 1, '104.33.58.117', 'extension/shipping/uninstall', '0', 'GET', '2018-04-18 04:20:56'),
(48671, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:20:56'),
(48672, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:21:00'),
(48673, 1, '104.33.58.117', 'shipping/fedex', '0', 'GET', '2018-04-18 04:21:02'),
(48674, 1, '104.33.58.117', 'shipping/fedex', '0', 'POST', '2018-04-18 04:21:36'),
(48675, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:21:36'),
(48676, 1, '104.33.58.117', 'shipping/postpony', '0', 'GET', '2018-04-18 04:21:38'),
(48677, 1, '104.33.58.117', 'shipping/postpony', '0', 'POST', '2018-04-18 04:22:17'),
(48678, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:22:17'),
(48679, 1, '104.33.58.117', 'shipping/ups', 'view the ups setting page', 'GET', '2018-04-18 04:22:18'),
(48680, 1, '104.33.58.117', 'shipping/ups', 'view the ups setting page', 'POST', '2018-04-18 04:22:54'),
(48681, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:22:54'),
(48682, 1, '104.33.58.117', 'extension/shipping/install', '0', 'GET', '2018-04-18 04:22:57'),
(48683, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:22:57'),
(48684, 1, '104.33.58.117', 'shipping/usps', 'view the usps setting page', 'GET', '2018-04-18 04:22:58'),
(48685, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2018-04-18 04:23:01'),
(48686, 1, '104.33.58.117', 'shipping/usps', 'view the usps setting page', 'GET', '2018-04-18 04:23:44'),
(48687, 1, '104.33.58.117', 'extension/platform', 'view the platform page', 'GET', '2018-04-18 04:23:51'),
(48688, 1, '104.33.58.117', 'platform/amazon', '0', 'GET', '2018-04-18 04:23:59'),
(48689, 1, '104.33.58.117', 'extension/platform', 'view the platform page', 'GET', '2018-04-18 04:24:01'),
(48690, 1, '104.33.58.117', 'platform/ebay', '0', 'GET', '2018-04-18 04:24:03'),
(48691, 1, '104.33.58.117', 'extension/platform', 'view the platform page', 'GET', '2018-04-18 04:24:05'),
(48692, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2018-04-18 04:24:09'),
(48693, 1, '104.33.58.117', 'extension/platform', 'view the platform page', 'GET', '2018-04-18 04:24:13'),
(48694, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2018-04-18 04:24:23'),
(48695, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2018-04-18 04:24:26'),
(48696, 1, '104.33.58.117', 'sale/sale/add', 'view the order add page', 'GET', '2018-04-18 04:24:28'),
(48697, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2018-04-18 04:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_fee`
--

CREATE TABLE `checkin_fee` (
  `id` int(11) NOT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `fee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_file`
--

CREATE TABLE `checkin_file` (
  `id` int(11) NOT NULL,
  `checkin_id` int(11) NOT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_product`
--

CREATE TABLE `checkin_product` (
  `id` int(11) NOT NULL,
  `checkin_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch` varchar(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `width` decimal(15,2) NOT NULL,
  `length` decimal(15,2) NOT NULL,
  `height` decimal(15,2) NOT NULL,
  `weight` decimal(15,2) NOT NULL,
  `length_class_id` int(11) NOT NULL,
  `weight_class_id` int(11) NOT NULL,
  `shipping_provider` varchar(16) NOT NULL,
  `shipping_service` varchar(16) NOT NULL,
  `label` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `description` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_fee`
--

CREATE TABLE `checkout_fee` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `fee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_file`
--

CREATE TABLE `checkout_file` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_product`
--

CREATE TABLE `checkout_product` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT '1',
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `damage`
--

CREATE TABLE `damage` (
  `damage_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` mediumint(8) UNSIGNED NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(21, 'module', 'category_h'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'theme_default'),
(22, 'module', 'fullslideshow'),
(65, 'payment', 'alipay'),
(69, 'payment', 'offline'),
(29, 'module', 'html'),
(85, 'platform', 'ebay'),
(88, 'platform', 'wish'),
(71, 'platform', 'opencart'),
(103, 'shipping', 'usps'),
(82, 'shipping', 'ups'),
(89, 'platform', 'square'),
(90, 'platform', 'amazon'),
(100, 'shipping', 'fedex'),
(101, 'platform', 'offline'),
(102, 'shipping', 'postpony');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `name`, `amount`) VALUES
(1, 'Moving Fee', '10.00'),
(2, 'Label Fee', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `front` tinyint(4) NOT NULL,
  `redirect` varchar(1024) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `front`, `redirect`, `status`, `sort_order`) VALUES
(4, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `information_content`
--

CREATE TABLE `information_content` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `batch` varchar(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `code` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`, `code`) VALUES
(4, '中文', 'chinese'),
(5, 'English', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `length_class`
--

CREATE TABLE `length_class` (
  `id` int(11) NOT NULL,
  `unit` varchar(16) NOT NULL,
  `unit_short` varchar(16) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `length_class`
--

INSERT INTO `length_class` (`id`, `unit`, `unit_short`, `value`) VALUES
(1, 'inch', 'in', '1.00000000'),
(2, 'cm', 'cm', '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location_to_client`
--

CREATE TABLE `location_to_client` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_unit`
--

CREATE TABLE `location_unit` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `upc` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `asin` varchar(255) NOT NULL,
  `name` char(255) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `description` text,
  `weight` decimal(15,2) NOT NULL,
  `weight_class_id` int(11) NOT NULL DEFAULT '1',
  `length_class_id` int(11) NOT NULL,
  `length` decimal(15,2) NOT NULL,
  `width` decimal(15,2) NOT NULL,
  `height` decimal(15,2) NOT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '0',
  `shipping_provider` varchar(32) DEFAULT NULL,
  `shipping_service` varchar(32) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_fee`
--

CREATE TABLE `product_fee` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_paid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `refund_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `refund_product`
--

CREATE TABLE `refund_product` (
  `id` int(11) NOT NULL,
  `refund_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_sale_id` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `zipcode` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `length` decimal(15,2) NOT NULL,
  `width` decimal(15,2) NOT NULL,
  `height` decimal(15,2) NOT NULL,
  `weight` decimal(15,2) NOT NULL,
  `length_class_id` int(11) NOT NULL,
  `weight_class_id` int(11) NOT NULL,
  `shipping_provider` varchar(32) NOT NULL,
  `shipping_service` varchar(255) DEFAULT '',
  `total` decimal(15,2) NOT NULL,
  `tracking` varchar(55) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `note` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_fee`
--

CREATE TABLE `sale_fee` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_label`
--

CREATE TABLE `sale_label` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `tracking` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE `sale_product` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `store_sale_product_id` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_to_checkout`
--

CREATE TABLE `sale_to_checkout` (
  `sale_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `code`, `key`, `value`, `serialized`) VALUES
(14544, 'aplipay', 'aplipay_service', '0', 0),
(14545, 'aplipay', 'aplipay_partner', '0', 0),
(14546, 'aplipay', 'aplipay_seller_id', '0', 0),
(14547, 'aplipay', 'aplipay_key', '0', 0),
(16474, 'authorize', 'authorize_md5', '', 0),
(16473, 'authorize', 'authorize_key', '5xk389K33ScXN3PQ', 0),
(16741, 'alipay', 'alipay_status', '1', 0),
(16736, 'alipay', 'alipay_service', 'create_forex_trade', 0),
(16737, 'alipay', 'alipay_partner', '850025472000772009660', 0),
(15438, 'system', 'system_google_map_api_key', 'AIzaSyAc05thWPUV50Wuz-ain57oVv4NU5sme_Y', 0),
(16740, 'alipay', 'alipay_sort_order', '0', 0),
(16472, 'authorize', 'authorize_id', '744fRQNwM', 0),
(16470, 'paypal', 'paypal_email', 'freeshopping.us@gmail.com', 0),
(16475, 'finance', 'finance_fee_type', 'a:4:{i:0;a:4:{s:4:"code";s:9:"label_fee";s:4:"text";s:13:"Label Fee($2)";s:6:"static";s:1:"1";s:6:"amount";s:3:"0.5";}i:1;a:4:{s:4:"code";s:12:"shipping_fee";s:4:"text";s:12:"Shipping Fee";s:6:"static";s:1:"0";s:6:"amount";s:0:"";}i:2;a:4:{s:4:"code";s:12:"location_fee";s:4:"text";s:12:"Location Fee";s:6:"static";s:1:"0";s:6:"amount";s:0:"";}i:3;a:4:{s:4:"code";s:10:"handle_fee";s:4:"text";s:14:"Label Fee($10)";s:6:"static";s:1:"1";s:6:"amount";s:2:"10";}}', 1),
(16471, 'paypal', 'paypal_payment_name', 'Shipping Charge', 0),
(17123, 'wish', 'wish_field', 'a:1:{i:0;s:5:"token";}', 1),
(16484, 'filter', 'filter_state', 'a:50:{i:0;a:2:{s:5:"input";s:7:"alabama";s:6:"output";s:2:"AL";}i:1;a:2:{s:5:"input";s:6:"alaska";s:6:"output";s:2:"AK";}i:2;a:2:{s:5:"input";s:7:"arizona";s:6:"output";s:2:"AZ";}i:3;a:2:{s:5:"input";s:8:"arkansas";s:6:"output";s:2:"AR";}i:4;a:2:{s:5:"input";s:10:"california";s:6:"output";s:2:"CA";}i:5;a:2:{s:5:"input";s:8:"colorado";s:6:"output";s:2:"CO";}i:6;a:2:{s:5:"input";s:11:"connecticut";s:6:"output";s:2:"CT";}i:7;a:2:{s:5:"input";s:8:"delaware";s:6:"output";s:2:"DE";}i:8;a:2:{s:5:"input";s:7:"florida";s:6:"output";s:2:"FL";}i:9;a:2:{s:5:"input";s:7:"georgia";s:6:"output";s:2:"GA";}i:10;a:2:{s:5:"input";s:6:"hawaii";s:6:"output";s:2:"HI";}i:11;a:2:{s:5:"input";s:5:"idaho";s:6:"output";s:2:"ID";}i:12;a:2:{s:5:"input";s:8:"illinois";s:6:"output";s:2:"IL";}i:13;a:2:{s:5:"input";s:7:"indiana";s:6:"output";s:2:"IN";}i:14;a:2:{s:5:"input";s:4:"iowa";s:6:"output";s:2:"IA";}i:15;a:2:{s:5:"input";s:6:"kansas";s:6:"output";s:2:"KS";}i:16;a:2:{s:5:"input";s:8:"kentucky";s:6:"output";s:2:"KY";}i:17;a:2:{s:5:"input";s:9:"louisiana";s:6:"output";s:2:"LA";}i:18;a:2:{s:5:"input";s:5:"maine";s:6:"output";s:2:"ME";}i:19;a:2:{s:5:"input";s:8:"maryland";s:6:"output";s:2:"MD";}i:20;a:2:{s:5:"input";s:13:"massachusetts";s:6:"output";s:2:"MA";}i:21;a:2:{s:5:"input";s:8:"michigan";s:6:"output";s:2:"MI";}i:22;a:2:{s:5:"input";s:9:"minnesota";s:6:"output";s:2:"MN";}i:23;a:2:{s:5:"input";s:12:"mississippi ";s:6:"output";s:2:"MS";}i:24;a:2:{s:5:"input";s:8:"missouri";s:6:"output";s:2:"MO";}i:25;a:2:{s:5:"input";s:7:"montana";s:6:"output";s:2:"MT";}i:26;a:2:{s:5:"input";s:8:"nebraska";s:6:"output";s:2:"NE";}i:27;a:2:{s:5:"input";s:6:"nevada";s:6:"output";s:2:"NV";}i:28;a:2:{s:5:"input";s:13:"new hampshire";s:6:"output";s:2:"NH";}i:29;a:2:{s:5:"input";s:10:"new jersey";s:6:"output";s:2:"NJ";}i:30;a:2:{s:5:"input";s:10:"new mexico";s:6:"output";s:2:"NM";}i:31;a:2:{s:5:"input";s:8:"new york";s:6:"output";s:2:"NY";}i:32;a:2:{s:5:"input";s:14:"north carolina";s:6:"output";s:2:"NC";}i:33;a:2:{s:5:"input";s:12:"north dakota";s:6:"output";s:2:"ND";}i:34;a:2:{s:5:"input";s:4:"ohio";s:6:"output";s:2:"OH";}i:35;a:2:{s:5:"input";s:8:"oklahoma";s:6:"output";s:2:"OK";}i:36;a:2:{s:5:"input";s:6:"oregon";s:6:"output";s:2:"OR";}i:37;a:2:{s:5:"input";s:12:"pennsylvania";s:6:"output";s:2:"PA";}i:38;a:2:{s:5:"input";s:12:"rhode island";s:6:"output";s:2:"RI";}i:39;a:2:{s:5:"input";s:14:"south carolina";s:6:"output";s:2:"SC";}i:40;a:2:{s:5:"input";s:12:"south dakota";s:6:"output";s:2:"SD";}i:41;a:2:{s:5:"input";s:9:"tennessee";s:6:"output";s:2:"TN";}i:42;a:2:{s:5:"input";s:5:"texas";s:6:"output";s:2:"TX";}i:43;a:2:{s:5:"input";s:4:"utah";s:6:"output";s:2:"UT";}i:44;a:2:{s:5:"input";s:7:"vermont";s:6:"output";s:2:"VT";}i:45;a:2:{s:5:"input";s:8:"virginia";s:6:"output";s:2:"VA";}i:46;a:2:{s:5:"input";s:10:"washington";s:6:"output";s:2:"WA";}i:47;a:2:{s:5:"input";s:13:"west virginia";s:6:"output";s:2:"WV";}i:48;a:2:{s:5:"input";s:9:"wisconsin";s:6:"output";s:2:"WI";}i:49;a:2:{s:5:"input";s:7:"wyoming";s:6:"output";s:2:"WY";}}', 1),
(17126, 'ebay', 'ebay_field', 'a:6:{i:0;s:6:"Dev Id";i:1;s:6:"App Id";i:2;s:7:"Cert Id";i:3;s:8:"Username";i:4;s:7:"Site Id";i:5;s:5:"Token";}', 1),
(17128, 'ebay', 'ebay_status', '1', 0),
(16739, 'alipay', 'alipay_key', 'dffvsdmmmdilxzawil22206', 0),
(16738, 'alipay', 'alipay_seller_id', '850025472000772009660', 0),
(17215, 'square', 'square_sort_order', '5', 0),
(17121, 'opencart', 'opencart_sort_order', '1', 0),
(17120, 'opencart', 'opencart_field', 'a:1:{i:0;s:5:"token";}', 1),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:"token";}', 1),
(17216, 'square', 'square_status', '1', 0),
(22944, 'ups', 'ups_fee_value', '3', 0),
(22943, 'ups', 'ups_fee_type', '0', 0),
(22932, 'ups', 'ups_owner', 'Prolineshipping', 0),
(22933, 'ups', 'ups_description', 'Prolineshipping', 0),
(22934, 'ups', 'ups_phone', '6265518446', 0),
(22935, 'ups', 'ups_length_unit', 'INCH', 0),
(22936, 'ups', 'ups_weight_unit', 'OZ', 0),
(22937, 'ups', 'ups_image_type', 'PNG', 0),
(22938, 'ups', 'ups_debug_mode', '1', 0),
(22939, 'ups', 'ups_status', '1', 0),
(22940, 'ups', 'ups_sort_order', '0', 0),
(22941, 'ups', 'ups_service', 'a:2:{i:0;a:4:{s:4:"name";s:10:"UPS Ground";s:4:"code";s:2:"gr";s:6:"method";s:2:"03";s:7:"package";s:2:"04";}i:1;a:4:{s:4:"name";s:15:"UPS 2nd Day Air";s:4:"code";s:4:"2nda";s:6:"method";s:2:"02";s:7:"package";s:2:"04";}}', 1),
(22942, 'ups', 'ups_state_mapping', 'a:48:{i:0;a:2:{s:10:"state_long";s:7:"alabama";s:11:"state_short";s:2:"AL";}i:1;a:2:{s:10:"state_long";s:6:"alaska";s:11:"state_short";s:2:"AK";}i:2;a:2:{s:10:"state_long";s:7:"arizona";s:11:"state_short";s:2:"AZ";}i:3;a:2:{s:10:"state_long";s:8:"arkansas";s:11:"state_short";s:2:"AR";}i:4;a:2:{s:10:"state_long";s:10:"california";s:11:"state_short";s:2:"CA";}i:5;a:2:{s:10:"state_long";s:8:"colorado";s:11:"state_short";s:2:"CO";}i:6;a:2:{s:10:"state_long";s:11:"connecticut";s:11:"state_short";s:2:"CT";}i:7;a:2:{s:10:"state_long";s:8:"delaware";s:11:"state_short";s:2:"DE";}i:8;a:2:{s:10:"state_long";s:7:"florida";s:11:"state_short";s:2:"FL";}i:9;a:2:{s:10:"state_long";s:7:"georgia";s:11:"state_short";s:2:"GA";}i:10;a:2:{s:10:"state_long";s:6:"hawaii";s:11:"state_short";s:2:"HI";}i:11;a:2:{s:10:"state_long";s:5:"idaho";s:11:"state_short";s:2:"ID";}i:12;a:2:{s:10:"state_long";s:8:"illinois";s:11:"state_short";s:2:"IN";}i:13;a:2:{s:10:"state_long";s:4:"iowa";s:11:"state_short";s:2:"IA";}i:14;a:2:{s:10:"state_long";s:6:"kansas";s:11:"state_short";s:2:"KS";}i:15;a:2:{s:10:"state_long";s:8:"kentucky";s:11:"state_short";s:2:"KY";}i:16;a:2:{s:10:"state_long";s:9:"louisiana";s:11:"state_short";s:2:"LA";}i:17;a:2:{s:10:"state_long";s:5:"maine";s:11:"state_short";s:2:"ME";}i:18;a:2:{s:10:"state_long";s:8:"maryland";s:11:"state_short";s:2:"MD";}i:19;a:2:{s:10:"state_long";s:13:"massachusetts";s:11:"state_short";s:2:"MA";}i:20;a:2:{s:10:"state_long";s:8:"michigan";s:11:"state_short";s:2:"MI";}i:21;a:2:{s:10:"state_long";s:9:"minnesota";s:11:"state_short";s:2:"MN";}i:22;a:2:{s:10:"state_long";s:12:"mississippi ";s:11:"state_short";s:2:"MS";}i:23;a:2:{s:10:"state_long";s:8:"missouri";s:11:"state_short";s:2:"MO";}i:24;a:2:{s:10:"state_long";s:7:"montana";s:11:"state_short";s:2:"NE";}i:25;a:2:{s:10:"state_long";s:6:"nevada";s:11:"state_short";s:2:"NV";}i:26;a:2:{s:10:"state_long";s:13:"new hampshire";s:11:"state_short";s:2:"NH";}i:27;a:2:{s:10:"state_long";s:10:"new jersey";s:11:"state_short";s:2:"NJ";}i:28;a:2:{s:10:"state_long";s:10:"new mexico";s:11:"state_short";s:2:"NM";}i:29;a:2:{s:10:"state_long";s:8:"new york";s:11:"state_short";s:2:"NY";}i:30;a:2:{s:10:"state_long";s:14:"north carolina";s:11:"state_short";s:2:"NC";}i:31;a:2:{s:10:"state_long";s:12:"north dakota";s:11:"state_short";s:2:"ND";}i:32;a:2:{s:10:"state_long";s:4:"ohio";s:11:"state_short";s:2:"OH";}i:33;a:2:{s:10:"state_long";s:8:"oklahoma";s:11:"state_short";s:2:"OK";}i:34;a:2:{s:10:"state_long";s:6:"oregon";s:11:"state_short";s:2:"OR";}i:35;a:2:{s:10:"state_long";s:12:"pennsylvania";s:11:"state_short";s:2:"PA";}i:36;a:2:{s:10:"state_long";s:12:"rhode island";s:11:"state_short";s:2:"RI";}i:37;a:2:{s:10:"state_long";s:14:"south carolina";s:11:"state_short";s:2:"SC";}i:38;a:2:{s:10:"state_long";s:12:"south dakota";s:11:"state_short";s:2:"SD";}i:39;a:2:{s:10:"state_long";s:9:"tennessee";s:11:"state_short";s:2:"TN";}i:40;a:2:{s:10:"state_long";s:5:"texas";s:11:"state_short";s:2:"TX";}i:41;a:2:{s:10:"state_long";s:4:"utah";s:11:"state_short";s:2:"UT";}i:42;a:2:{s:10:"state_long";s:7:"vermont";s:11:"state_short";s:2:"VT";}i:43;a:2:{s:10:"state_long";s:8:"virginia";s:11:"state_short";s:2:"VA";}i:44;a:2:{s:10:"state_long";s:10:"washington";s:11:"state_short";s:2:"WA";}i:45;a:2:{s:10:"state_long";s:13:"west virginia";s:11:"state_short";s:2:"WV";}i:46;a:2:{s:10:"state_long";s:9:"wisconsin";s:11:"state_short";s:2:"WI";}i:47;a:2:{s:10:"state_long";s:7:"wyoming";s:11:"state_short";s:2:"WY";}}', 1),
(17647, 'amazon', 'amazon_field', 'a:6:{i:0;s:6:"Dev Id";i:1;s:6:"App Id";i:2;s:7:"Cert Id";i:3;s:8:"Username";i:4;s:7:"Site Id";i:5;s:5:"Token";}', 1),
(17648, 'amazon', 'amazon_status', '0', 0),
(17649, 'amazon', 'amazon_sort_order', '0', 0),
(22858, 'config', 'config_printnode_api_key', '042f4d55c23fbc64ea98b5bb6d0a85a4caae5cbc', 0),
(22857, 'config', 'config_printnode_width', '180', 0),
(18696, 'offline', 'offline_status', '1', 0),
(18695, 'offline', 'offline_sort_order', '0', 0),
(22856, 'config', 'config_printnode_position_y', '20', 0),
(22855, 'config', 'config_printnode_position_x', '14', 0),
(22854, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(22853, 'config', 'config_location_barcode_batch_margin', '200', 0),
(22852, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(22896, 'fedex', 'fedex_fee_value', '3', 0),
(22895, 'fedex', 'fedex_fee_type', '0', 0),
(22888, 'fedex', 'fedex_weight_unit', 'LB', 0),
(22889, 'fedex', 'fedex_image_type', 'PNG', 0),
(22890, 'fedex', 'fedex_debug_mode', '1', 0),
(22891, 'fedex', 'fedex_status', '1', 0),
(22892, 'fedex', 'fedex_sort_order', '0', 0),
(22893, 'fedex', 'fedex_service', 'a:1:{i:0;a:4:{s:4:"name";s:19:"Fedex Home Delivery";s:4:"code";s:3:"ghd";s:6:"method";s:20:"GROUND_HOME_DELIVERY";s:7:"package";s:14:"YOUR_PACKAGING";}}', 1),
(22894, 'fedex', 'fedex_state_mapping', 'a:47:{i:0;a:2:{s:10:"state_long";s:7:"alabama";s:11:"state_short";s:2:"AL";}i:1;a:2:{s:10:"state_long";s:6:"alaska";s:11:"state_short";s:2:"AK";}i:2;a:2:{s:10:"state_long";s:7:"arizona";s:11:"state_short";s:2:"AZ";}i:3;a:2:{s:10:"state_long";s:8:"arkansas";s:11:"state_short";s:2:"AR";}i:4;a:2:{s:10:"state_long";s:10:"california";s:11:"state_short";s:2:"CA";}i:5;a:2:{s:10:"state_long";s:8:"colorado";s:11:"state_short";s:2:"CO";}i:6;a:2:{s:10:"state_long";s:11:"connecticut";s:11:"state_short";s:2:"CT";}i:7;a:2:{s:10:"state_long";s:8:"delaware";s:11:"state_short";s:2:"DE";}i:8;a:2:{s:10:"state_long";s:7:"florida";s:11:"state_short";s:2:"FL";}i:9;a:2:{s:10:"state_long";s:7:"georgia";s:11:"state_short";s:2:"GA";}i:10;a:2:{s:10:"state_long";s:6:"hawaii";s:11:"state_short";s:2:"HI";}i:11;a:2:{s:10:"state_long";s:5:"idaho";s:11:"state_short";s:2:"ID";}i:12;a:2:{s:10:"state_long";s:8:"illinois";s:11:"state_short";s:2:"IN";}i:13;a:2:{s:10:"state_long";s:4:"iowa";s:11:"state_short";s:2:"IA";}i:14;a:2:{s:10:"state_long";s:6:"kansas";s:11:"state_short";s:2:"KS";}i:15;a:2:{s:10:"state_long";s:8:"kentucky";s:11:"state_short";s:2:"KY";}i:16;a:2:{s:10:"state_long";s:9:"louisiana";s:11:"state_short";s:2:"LA";}i:17;a:2:{s:10:"state_long";s:5:"maine";s:11:"state_short";s:2:"ME";}i:18;a:2:{s:10:"state_long";s:8:"maryland";s:11:"state_short";s:2:"MD";}i:19;a:2:{s:10:"state_long";s:13:"massachusetts";s:11:"state_short";s:2:"MA";}i:20;a:2:{s:10:"state_long";s:8:"michigan";s:11:"state_short";s:2:"MI";}i:21;a:2:{s:10:"state_long";s:9:"minnesota";s:11:"state_short";s:2:"MN";}i:22;a:2:{s:10:"state_long";s:11:"mississippi";s:11:"state_short";s:2:"MS";}i:23;a:2:{s:10:"state_long";s:8:"missouri";s:11:"state_short";s:2:"MO";}i:24;a:2:{s:10:"state_long";s:7:"montana";s:11:"state_short";s:2:"NE";}i:25;a:2:{s:10:"state_long";s:6:"nevada";s:11:"state_short";s:2:"NV";}i:26;a:2:{s:10:"state_long";s:13:"new hampshire";s:11:"state_short";s:2:"NH";}i:27;a:2:{s:10:"state_long";s:10:"new mexico";s:11:"state_short";s:2:"NM";}i:28;a:2:{s:10:"state_long";s:8:"new york";s:11:"state_short";s:2:"NY";}i:29;a:2:{s:10:"state_long";s:14:"north carolina";s:11:"state_short";s:2:"NC";}i:30;a:2:{s:10:"state_long";s:12:"north dakota";s:11:"state_short";s:2:"ND";}i:31;a:2:{s:10:"state_long";s:4:"ohio";s:11:"state_short";s:2:"OH";}i:32;a:2:{s:10:"state_long";s:8:"oklahoma";s:11:"state_short";s:2:"OK";}i:33;a:2:{s:10:"state_long";s:6:"oregon";s:11:"state_short";s:2:"OR";}i:34;a:2:{s:10:"state_long";s:12:"pennsylvania";s:11:"state_short";s:2:"PA";}i:35;a:2:{s:10:"state_long";s:12:"rhode island";s:11:"state_short";s:2:"RI";}i:36;a:2:{s:10:"state_long";s:14:"south carolina";s:11:"state_short";s:2:"SC";}i:37;a:2:{s:10:"state_long";s:12:"south dakota";s:11:"state_short";s:2:"SD";}i:38;a:2:{s:10:"state_long";s:9:"tennessee";s:11:"state_short";s:2:"TN";}i:39;a:2:{s:10:"state_long";s:5:"texas";s:11:"state_short";s:2:"TX";}i:40;a:2:{s:10:"state_long";s:4:"utah";s:11:"state_short";s:2:"UT";}i:41;a:2:{s:10:"state_long";s:7:"vermont";s:11:"state_short";s:2:"VT";}i:42;a:2:{s:10:"state_long";s:8:"virginia";s:11:"state_short";s:2:"VA";}i:43;a:2:{s:10:"state_long";s:10:"washington";s:11:"state_short";s:2:"WA";}i:44;a:2:{s:10:"state_long";s:13:"west virginia";s:11:"state_short";s:2:"WV";}i:45;a:2:{s:10:"state_long";s:9:"wisconsin";s:11:"state_short";s:2:"WI";}i:46;a:2:{s:10:"state_long";s:7:"wyoming";s:11:"state_short";s:2:"WY";}}', 1),
(22931, 'ups', 'ups_quote_type', 'commercial', 0),
(22930, 'ups', 'ups_country', 'US', 0),
(22929, 'ups', 'ups_postcode', '91748', 0),
(22928, 'ups', 'ups_state', 'CA', 0),
(22927, 'ups', 'ups_city', 'Rowland Heights', 0),
(22851, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(22850, 'config', 'config_location_barcode_batch_posy', '20', 0),
(22849, 'config', 'config_location_barcode_batch_posx', '10', 0),
(22887, 'fedex', 'fedex_length_unit', 'IN', 0),
(22886, 'fedex', 'fedex_phone', '6265518446', 0),
(22885, 'fedex', 'fedex_owner', 'Sam', 0),
(22884, 'fedex', 'fedex_country', 'US', 0),
(22883, 'fedex', 'fedex_postcode', '91748', 0),
(22882, 'fedex', 'fedex_state', 'CA', 0),
(22881, 'fedex', 'fedex_city', 'El Monte', 0),
(22880, 'fedex', 'fedex_street2', '', 0),
(22879, 'fedex', 'fedex_street', '19097 Colima Road', 0),
(22878, 'fedex', 'fedex_origin', 'US', 0),
(22877, 'fedex', 'fedex_time_zone', 'America/Los_Angeles', 0),
(22876, 'fedex', 'fedex_company', 'jiusite inc', 0),
(22875, 'fedex', 'fedex_password', '111111', 0),
(22874, 'fedex', 'fedex_key', '111111', 0),
(22873, 'fedex', 'fedex_meter_number', '111111', 0),
(22872, 'fedex', 'fedex_account_number', '111111', 0),
(22917, 'ups', 'ups_access_key', '111111', 0),
(22918, 'ups', 'ups_username', '111111', 0),
(22919, 'ups', 'ups_password', '111111', 0),
(22920, 'ups', 'ups_account_number', '111111', 0),
(22921, 'ups', 'ups_pickup_method', '03', 0),
(22922, 'ups', 'ups_classification_code', '01', 0),
(22923, 'ups', 'ups_time_zone', 'America/Los_Angeles', 0),
(22924, 'ups', 'ups_origin', 'US', 0),
(22925, 'ups', 'ups_street', '19097 Colima Road', 0),
(22926, 'ups', 'ups_street2', '', 0),
(22848, 'config', 'config_location_barcode_batch_height', '300', 0),
(22847, 'config', 'config_location_barcode_batch_width', '630', 0),
(22846, 'config', 'config_location_barcode_code_size', '80', 0),
(22845, 'config', 'config_location_barcode_name_size', '200', 0),
(22844, 'config', 'config_location_barcode_posy', '200', 0),
(22912, 'postpony', 'postpony_status', '1', 0),
(22913, 'postpony', 'postpony_sort_order', '0', 0),
(22914, 'postpony', 'postpony_service', 'a:1:{i:0;a:4:{s:4:"name";s:21:"Postpony Fedex Ground";s:4:"code";s:3:"pfg";s:6:"method";s:11:"FedExGround";s:7:"package";s:12:"YOUR_PACKAGE";}}', 1),
(22915, 'postpony', 'postpony_fee_type', '0', 0),
(22916, 'postpony', 'postpony_fee_value', '0', 0),
(22911, 'postpony', 'postpony_debug_mode', '1', 0),
(22910, 'postpony', 'postpony_weight_unit', 'LB', 0),
(22909, 'postpony', 'postpony_length_unit', 'IN', 0),
(22908, 'postpony', 'postpony_phone', '6265518446', 0),
(22907, 'postpony', 'postpony_owner', 'Sam', 0),
(22906, 'postpony', 'postpony_country', 'US', 0),
(22905, 'postpony', 'postpony_postcode', '91748', 0),
(22904, 'postpony', 'postpony_state', 'CA', 0),
(22903, 'postpony', 'postpony_city', 'Rowland Height', 0),
(22902, 'postpony', 'postpony_street2', '', 0),
(22901, 'postpony', 'postpony_street', '19097 Colima Road', 0),
(22900, 'postpony', 'postpony_company', 'jiusite inc', 0),
(22843, 'config', 'config_location_barcode_posx', '1', 0),
(22842, 'config', 'config_location_barcode_height', '400', 0),
(22841, 'config', 'config_location_barcode_width', '6', 0),
(22840, 'config', 'config_label_posy', '0', 0),
(22839, 'config', 'config_label_width', '60', 0),
(22838, 'config', 'config_label_width_type', '0', 0),
(22899, 'postpony', 'postpony_authorized_key', '11111', 0),
(22898, 'postpony', 'postpony_pwd', '11111', 0),
(22897, 'postpony', 'postpony_key', '11111', 0),
(22837, 'config', 'config_autocomplete_limit', '5', 0),
(22836, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(22835, 'config', 'config_dashboard_order_limit', '7', 0),
(22834, 'config', 'config_dashboard_activity_limit', '8', 0),
(22833, 'config', 'config_sale_product_page_limit', '15', 0),
(22832, 'config', 'config_page_limit', '10', 0),
(22831, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(22859, 'config', 'config_printnode_label_printer_id', '356900', 0),
(22860, 'config', 'config_printnode_general_printer_id', '356900', 0),
(22861, 'config', 'config_language_id', '5', 0),
(22862, 'config', 'config_length_class_id', '1', 0),
(22863, 'config', 'config_weight_class_id', '5', 0),
(22864, 'config', 'config_default_order_shipping_provider', 'postpony', 0),
(22865, 'config', 'config_default_order_shipping_service', 'pfg', 0),
(22866, 'config', 'config_smtp_hostname', '', 0),
(22867, 'config', 'config_smtp_username', '', 0),
(22868, 'config', 'config_smtp_password', '', 0),
(22869, 'config', 'config_smtp_port', '', 0),
(22870, 'config', 'config_smtp_timeout', '', 0),
(22871, 'config', 'config_google_key', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `platform` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `default_sale_status_id` int(11) NOT NULL,
  `default_sale_shipping_provider` varchar(32) NOT NULL,
  `default_sale_shipping_service` varchar(32) NOT NULL,
  `active_download` tinyint(4) NOT NULL DEFAULT '0',
  `active_upload` tinyint(4) NOT NULL DEFAULT '0',
  `sync_inventory` tinyint(4) NOT NULL DEFAULT '1',
  `sync_single_warehouse` int(11) NOT NULL DEFAULT '0',
  `sync_warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_sync`
--

CREATE TABLE `store_sync` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_sync_history`
--

CREATE TABLE `store_sync_history` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `markup` decimal(15,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `comment` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_to_type`
--

CREATE TABLE `transaction_to_type` (
  `type` varchar(16) NOT NULL,
  `type_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `from_location_id` int(11) DEFAULT NULL,
  `to_location_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_product`
--

CREATE TABLE `transfer_product` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '664def51a45b834fa94e49bffc1f679d8ca552dc', '332', 'Sam', 'Shao', 'sam@jiusite.com', '', '', '::1', 1, '2017-02-13 11:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `name`, `description`, `permission`) VALUES
(1, 'Administrator', 'The administrator user group', '{"access":["check","catalog","inventory","warehouse","sale","store","extension","finance","platform","shipping","payment","report","client","user","setting"],"modify":["check","catalog","inventory","warehouse","sale","store","extension","finance","platform","shipping","payment","report","client","user","setting"]}'),
(12, 'Clerk', 'The clerk user group', '{"access":["inventory"]}'),
(13, 'Client', '', '{"access":["check","catalog","inventory","warehouse","sale","store","extension","finance","platform","shipping","payment","report","setting"]}');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

CREATE TABLE `weight_class` (
  `id` int(11) NOT NULL,
  `unit` varchar(16) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`id`, `unit`, `value`) VALUES
(1, 'kg', '1.0000'),
(2, 'g', '1000.0000'),
(5, 'lb', '2.2046'),
(6, 'oz', '35.7400');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `checkin_fee`
--
ALTER TABLE `checkin_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin_file`
--
ALTER TABLE `checkin_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin_product`
--
ALTER TABLE `checkin_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`checkin_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_file`
--
ALTER TABLE `checkout_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_product`
--
ALTER TABLE `checkout_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`checkout_id`),
  ADD KEY `product_id` (`inventory_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage`
--
ALTER TABLE `damage`
  ADD PRIMARY KEY (`damage_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `id` (`damage_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `id` (`id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `length_class`
--
ALTER TABLE `length_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `location_to_client`
--
ALTER TABLE `location_to_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_unit`
--
ALTER TABLE `location_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`),
  ADD KEY `id_4` (`id`);

--
-- Indexes for table `product_fee`
--
ALTER TABLE `product_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`refund_id`),
  ADD KEY `id` (`refund_id`);

--
-- Indexes for table `refund_product`
--
ALTER TABLE `refund_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`refund_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sale_fee`
--
ALTER TABLE `sale_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_label`
--
ALTER TABLE `sale_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_sync`
--
ALTER TABLE `store_sync`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_product`
--
ALTER TABLE `transfer_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `weight_class`
--
ALTER TABLE `weight_class`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48698;
--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `checkin_fee`
--
ALTER TABLE `checkin_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `checkin_file`
--
ALTER TABLE `checkin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkin_product`
--
ALTER TABLE `checkin_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `checkout_file`
--
ALTER TABLE `checkout_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkout_product`
--
ALTER TABLE `checkout_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;
--
-- AUTO_INCREMENT for table `damage`
--
ALTER TABLE `damage`
  MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5461;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `length_class`
--
ALTER TABLE `length_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2527;
--
-- AUTO_INCREMENT for table `location_to_client`
--
ALTER TABLE `location_to_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location_unit`
--
ALTER TABLE `location_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93914;
--
-- AUTO_INCREMENT for table `product_fee`
--
ALTER TABLE `product_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `refund_product`
--
ALTER TABLE `refund_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=954;
--
-- AUTO_INCREMENT for table `sale_fee`
--
ALTER TABLE `sale_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1233;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22945;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7987;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_product`
--
ALTER TABLE `transfer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `weight_class`
--
ALTER TABLE `weight_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
