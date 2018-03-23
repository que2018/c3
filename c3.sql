-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 12:12 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c3`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `method` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44677 ;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE IF NOT EXISTS `balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE IF NOT EXISTS `checkin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_fee`
--

CREATE TABLE IF NOT EXISTS `checkin_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkin_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_file`
--

CREATE TABLE IF NOT EXISTS `checkin_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkin_id` int(11) NOT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkin_product`
--

CREATE TABLE IF NOT EXISTS `checkin_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkin_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`checkin_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE IF NOT EXISTS `checkout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_modified` datetime NOT NULL,
  `code` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_fee`
--

CREATE TABLE IF NOT EXISTS `checkout_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkout_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_file`
--

CREATE TABLE IF NOT EXISTS `checkout_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkout_id` int(11) DEFAULT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_product`
--

CREATE TABLE IF NOT EXISTS `checkout_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkout_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`checkout_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
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
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1031 ;

-- --------------------------------------------------------

--
-- Table structure for table `damage`
--

CREATE TABLE IF NOT EXISTS `damage` (
  `damage_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`damage_id`),
  KEY `product_id` (`product_id`),
  KEY `id` (`damage_id`),
  KEY `product_id_2` (`product_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE IF NOT EXISTS `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

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
(78, 'shipping', 'usps'),
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

CREATE TABLE IF NOT EXISTS `fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `front` tinyint(4) NOT NULL,
  `redirect` varchar(1024) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `front`, `redirect`, `status`, `sort_order`) VALUES
(4, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `information_content`
--

CREATE TABLE IF NOT EXISTS `information_content` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `id` (`id`),
  KEY `product_id_2` (`product_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2350 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `code` varchar(16) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `length_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(16) NOT NULL,
  `unit_short` varchar(16) NOT NULL,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2229 ;

-- --------------------------------------------------------

--
-- Table structure for table `location_to_client`
--

CREATE TABLE IF NOT EXISTS `location_to_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `location_unit`
--

CREATE TABLE IF NOT EXISTS `location_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93316 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_fee`
--

CREATE TABLE IF NOT EXISTS `product_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE IF NOT EXISTS `recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_paid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE IF NOT EXISTS `refund` (
  `refund_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`refund_id`),
  KEY `id` (`refund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `refund_product`
--

CREATE TABLE IF NOT EXISTS `refund_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refund_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`refund_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=944 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_fee`
--

CREATE TABLE IF NOT EXISTS `sale_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_label`
--

CREATE TABLE IF NOT EXISTS `sale_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `tracking` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE IF NOT EXISTS `sale_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `store_sale_product_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1197 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_to_checkout`
--

CREATE TABLE IF NOT EXISTS `sale_to_checkout` (
  `sale_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22466 ;

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
(21475, 'usps', 'usps_fee_type', '0', 0),
(21476, 'usps', 'usps_fee_value', '3', 0),
(21477, 'usps', 'usps_client_fee', 'a:9:{i:0;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"10";}i:1;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"11";}i:2;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"12";}i:3;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"13";}i:4;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"14";}i:5;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"15";}i:6;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"16";}i:7;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"17";}i:8;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"18";}}', 1),
(15438, 'system', 'system_google_map_api_key', 'AIzaSyAc05thWPUV50Wuz-ain57oVv4NU5sme_Y', 0),
(16740, 'alipay', 'alipay_sort_order', '0', 0),
(16472, 'authorize', 'authorize_id', '744fRQNwM', 0),
(16470, 'paypal', 'paypal_email', 'freeshopping.us@gmail.com', 0),
(21474, 'usps', 'usps_service', 'a:2:{i:0;a:4:{s:4:"name";s:11:"First Class";s:4:"code";s:2:"fc";s:6:"method";s:5:"US-FC";s:7:"package";s:7:"Package";}i:1;a:4:{s:4:"name";s:8:"Priority";s:4:"code";s:2:"pr";s:6:"method";s:5:"US-PM";s:7:"package";s:7:"Package";}}', 1),
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
(21473, 'usps', 'usps_stamps_wsdl_file', 'assets/file/stamps/stamps.prod.xml', 0),
(21472, 'usps', 'usps_stamps_integration_id', 'e13dde83-59b9-4b45-9a51-3f83016fd883', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:"token";}', 1),
(17216, 'square', 'square_status', '1', 0),
(21471, 'usps', 'usps_stamps_password', 'Proline9910', 0),
(21988, 'ups', 'ups_fee_value', '3', 0),
(21987, 'ups', 'ups_fee_type', '0', 0),
(21967, 'ups', 'ups_time_zone', 'America/Los_Angeles', 0),
(21968, 'ups', 'ups_origin', 'US', 0),
(21969, 'ups', 'ups_street', '9852 Baldwin Place', 0),
(21970, 'ups', 'ups_street2', 'B', 0),
(21971, 'ups', 'ups_city', 'EL Monte', 0),
(21972, 'ups', 'ups_state', 'CA', 0),
(21973, 'ups', 'ups_postcode', '91731', 0),
(21974, 'ups', 'ups_country', 'US', 0),
(21975, 'ups', 'ups_quote_type', 'commercial', 0),
(21976, 'ups', 'ups_owner', 'Prolineshipping', 0),
(21977, 'ups', 'ups_description', 'Prolineshipping', 0),
(21978, 'ups', 'ups_phone', '6263008400', 0),
(21979, 'ups', 'ups_length_unit', 'INCH', 0),
(21980, 'ups', 'ups_weight_unit', 'OZ', 0),
(21981, 'ups', 'ups_image_type', 'PNG', 0),
(21982, 'ups', 'ups_debug_mode', '1', 0),
(21983, 'ups', 'ups_status', '1', 0),
(21984, 'ups', 'ups_sort_order', '0', 0),
(21985, 'ups', 'ups_service', 'a:2:{i:0;a:4:{s:4:"name";s:10:"UPS Ground";s:4:"code";s:2:"gr";s:6:"method";s:2:"03";s:7:"package";s:2:"04";}i:1;a:4:{s:4:"name";s:15:"UPS 2nd Day Air";s:4:"code";s:4:"2nda";s:6:"method";s:2:"02";s:7:"package";s:2:"04";}}', 1),
(21986, 'ups', 'ups_state_mapping', 'a:48:{i:0;a:2:{s:10:"state_long";s:7:"alabama";s:11:"state_short";s:2:"AL";}i:1;a:2:{s:10:"state_long";s:6:"alaska";s:11:"state_short";s:2:"AK";}i:2;a:2:{s:10:"state_long";s:7:"arizona";s:11:"state_short";s:2:"AZ";}i:3;a:2:{s:10:"state_long";s:8:"arkansas";s:11:"state_short";s:2:"AR";}i:4;a:2:{s:10:"state_long";s:10:"california";s:11:"state_short";s:2:"CA";}i:5;a:2:{s:10:"state_long";s:8:"colorado";s:11:"state_short";s:2:"CO";}i:6;a:2:{s:10:"state_long";s:11:"connecticut";s:11:"state_short";s:2:"CT";}i:7;a:2:{s:10:"state_long";s:8:"delaware";s:11:"state_short";s:2:"DE";}i:8;a:2:{s:10:"state_long";s:7:"florida";s:11:"state_short";s:2:"FL";}i:9;a:2:{s:10:"state_long";s:7:"georgia";s:11:"state_short";s:2:"GA";}i:10;a:2:{s:10:"state_long";s:6:"hawaii";s:11:"state_short";s:2:"HI";}i:11;a:2:{s:10:"state_long";s:5:"idaho";s:11:"state_short";s:2:"ID";}i:12;a:2:{s:10:"state_long";s:8:"illinois";s:11:"state_short";s:2:"IN";}i:13;a:2:{s:10:"state_long";s:4:"iowa";s:11:"state_short";s:2:"IA";}i:14;a:2:{s:10:"state_long";s:6:"kansas";s:11:"state_short";s:2:"KS";}i:15;a:2:{s:10:"state_long";s:8:"kentucky";s:11:"state_short";s:2:"KY";}i:16;a:2:{s:10:"state_long";s:9:"louisiana";s:11:"state_short";s:2:"LA";}i:17;a:2:{s:10:"state_long";s:5:"maine";s:11:"state_short";s:2:"ME";}i:18;a:2:{s:10:"state_long";s:8:"maryland";s:11:"state_short";s:2:"MD";}i:19;a:2:{s:10:"state_long";s:13:"massachusetts";s:11:"state_short";s:2:"MA";}i:20;a:2:{s:10:"state_long";s:8:"michigan";s:11:"state_short";s:2:"MI";}i:21;a:2:{s:10:"state_long";s:9:"minnesota";s:11:"state_short";s:2:"MN";}i:22;a:2:{s:10:"state_long";s:12:"mississippi ";s:11:"state_short";s:2:"MS";}i:23;a:2:{s:10:"state_long";s:8:"missouri";s:11:"state_short";s:2:"MO";}i:24;a:2:{s:10:"state_long";s:7:"montana";s:11:"state_short";s:2:"NE";}i:25;a:2:{s:10:"state_long";s:6:"nevada";s:11:"state_short";s:2:"NV";}i:26;a:2:{s:10:"state_long";s:13:"new hampshire";s:11:"state_short";s:2:"NH";}i:27;a:2:{s:10:"state_long";s:10:"new jersey";s:11:"state_short";s:2:"NJ";}i:28;a:2:{s:10:"state_long";s:10:"new mexico";s:11:"state_short";s:2:"NM";}i:29;a:2:{s:10:"state_long";s:8:"new york";s:11:"state_short";s:2:"NY";}i:30;a:2:{s:10:"state_long";s:14:"north carolina";s:11:"state_short";s:2:"NC";}i:31;a:2:{s:10:"state_long";s:12:"north dakota";s:11:"state_short";s:2:"ND";}i:32;a:2:{s:10:"state_long";s:4:"ohio";s:11:"state_short";s:2:"OH";}i:33;a:2:{s:10:"state_long";s:8:"oklahoma";s:11:"state_short";s:2:"OK";}i:34;a:2:{s:10:"state_long";s:6:"oregon";s:11:"state_short";s:2:"OR";}i:35;a:2:{s:10:"state_long";s:12:"pennsylvania";s:11:"state_short";s:2:"PA";}i:36;a:2:{s:10:"state_long";s:12:"rhode island";s:11:"state_short";s:2:"RI";}i:37;a:2:{s:10:"state_long";s:14:"south carolina";s:11:"state_short";s:2:"SC";}i:38;a:2:{s:10:"state_long";s:12:"south dakota";s:11:"state_short";s:2:"SD";}i:39;a:2:{s:10:"state_long";s:9:"tennessee";s:11:"state_short";s:2:"TN";}i:40;a:2:{s:10:"state_long";s:5:"texas";s:11:"state_short";s:2:"TX";}i:41;a:2:{s:10:"state_long";s:4:"utah";s:11:"state_short";s:2:"UT";}i:42;a:2:{s:10:"state_long";s:7:"vermont";s:11:"state_short";s:2:"VT";}i:43;a:2:{s:10:"state_long";s:8:"virginia";s:11:"state_short";s:2:"VA";}i:44;a:2:{s:10:"state_long";s:10:"washington";s:11:"state_short";s:2:"WA";}i:45;a:2:{s:10:"state_long";s:13:"west virginia";s:11:"state_short";s:2:"WV";}i:46;a:2:{s:10:"state_long";s:9:"wisconsin";s:11:"state_short";s:2:"WI";}i:47;a:2:{s:10:"state_long";s:7:"wyoming";s:11:"state_short";s:2:"WY";}}', 1),
(21470, 'usps', 'usps_stamps_username', 'prolineds', 0),
(21469, 'usps', 'usps_sort_order', '0', 0),
(21468, 'usps', 'usps_status', '1', 0),
(21467, 'usps', 'usps_postcode', '91731', 0),
(17647, 'amazon', 'amazon_field', 'a:6:{i:0;s:6:"Dev Id";i:1;s:6:"App Id";i:2;s:7:"Cert Id";i:3;s:8:"Username";i:4;s:7:"Site Id";i:5;s:5:"Token";}', 1),
(17648, 'amazon', 'amazon_status', '0', 0),
(17649, 'amazon', 'amazon_sort_order', '0', 0),
(22373, 'config', 'config_google_key', '', 0),
(22372, 'config', 'config_smtp_timeout', '', 0),
(22371, 'config', 'config_smtp_port', '', 0),
(22370, 'config', 'config_smtp_password', '', 0),
(22369, 'config', 'config_smtp_username', '', 0),
(22368, 'config', 'config_smtp_hostname', '', 0),
(22367, 'config', 'config_default_order_shipping_service', 'gr', 0),
(22366, 'config', 'config_default_order_shipping_provider', 'ups', 0),
(22365, 'config', 'config_weight_class_id', '5', 0),
(22364, 'config', 'config_length_class_id', '1', 0),
(22363, 'config', 'config_idiom', 'english', 0),
(22362, 'config', 'config_printnode_printer_id', '329118', 0),
(18696, 'offline', 'offline_status', '1', 0),
(18695, 'offline', 'offline_sort_order', '0', 0),
(22360, 'config', 'config_printnode_width', '180', 0),
(22361, 'config', 'config_printnode_api_key', '0b81619dd08e61c9f9bd5c3a567f4cb5d7d93de1', 0),
(22359, 'config', 'config_printnode_position_y', '20', 0),
(22355, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(22358, 'config', 'config_printnode_position_x', '14', 0),
(22357, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(22356, 'config', 'config_location_barcode_batch_margin', '200', 0),
(22354, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(22091, 'fedex', 'fedex_fee_type', '0', 0),
(22092, 'fedex', 'fedex_fee_value', '3', 0),
(22093, 'fedex', 'fedex_client_fee', 'a:9:{i:0;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"10";}i:1;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"11";}i:2;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"12";}i:3;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"13";}i:4;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"14";}i:5;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"15";}i:6;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"16";}i:7;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"17";}i:8;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"18";}}', 1),
(22084, 'fedex', 'fedex_weight_unit', 'LB', 0),
(22085, 'fedex', 'fedex_image_type', 'PNG', 0),
(22086, 'fedex', 'fedex_debug_mode', '1', 0),
(22087, 'fedex', 'fedex_status', '1', 0),
(22088, 'fedex', 'fedex_sort_order', '0', 0),
(22089, 'fedex', 'fedex_service', 'a:1:{i:0;a:4:{s:4:"name";s:19:"Fedex Home Delivery";s:4:"code";s:3:"ghd";s:6:"method";s:20:"GROUND_HOME_DELIVERY";s:7:"package";s:14:"YOUR_PACKAGING";}}', 1),
(22090, 'fedex', 'fedex_state_mapping', 'a:47:{i:0;a:2:{s:10:"state_long";s:7:"alabama";s:11:"state_short";s:2:"AL";}i:1;a:2:{s:10:"state_long";s:6:"alaska";s:11:"state_short";s:2:"AK";}i:2;a:2:{s:10:"state_long";s:7:"arizona";s:11:"state_short";s:2:"AZ";}i:3;a:2:{s:10:"state_long";s:8:"arkansas";s:11:"state_short";s:2:"AR";}i:4;a:2:{s:10:"state_long";s:10:"california";s:11:"state_short";s:2:"CA";}i:5;a:2:{s:10:"state_long";s:8:"colorado";s:11:"state_short";s:2:"CO";}i:6;a:2:{s:10:"state_long";s:11:"connecticut";s:11:"state_short";s:2:"CT";}i:7;a:2:{s:10:"state_long";s:8:"delaware";s:11:"state_short";s:2:"DE";}i:8;a:2:{s:10:"state_long";s:7:"florida";s:11:"state_short";s:2:"FL";}i:9;a:2:{s:10:"state_long";s:7:"georgia";s:11:"state_short";s:2:"GA";}i:10;a:2:{s:10:"state_long";s:6:"hawaii";s:11:"state_short";s:2:"HI";}i:11;a:2:{s:10:"state_long";s:5:"idaho";s:11:"state_short";s:2:"ID";}i:12;a:2:{s:10:"state_long";s:8:"illinois";s:11:"state_short";s:2:"IN";}i:13;a:2:{s:10:"state_long";s:4:"iowa";s:11:"state_short";s:2:"IA";}i:14;a:2:{s:10:"state_long";s:6:"kansas";s:11:"state_short";s:2:"KS";}i:15;a:2:{s:10:"state_long";s:8:"kentucky";s:11:"state_short";s:2:"KY";}i:16;a:2:{s:10:"state_long";s:9:"louisiana";s:11:"state_short";s:2:"LA";}i:17;a:2:{s:10:"state_long";s:5:"maine";s:11:"state_short";s:2:"ME";}i:18;a:2:{s:10:"state_long";s:8:"maryland";s:11:"state_short";s:2:"MD";}i:19;a:2:{s:10:"state_long";s:13:"massachusetts";s:11:"state_short";s:2:"MA";}i:20;a:2:{s:10:"state_long";s:8:"michigan";s:11:"state_short";s:2:"MI";}i:21;a:2:{s:10:"state_long";s:9:"minnesota";s:11:"state_short";s:2:"MN";}i:22;a:2:{s:10:"state_long";s:11:"mississippi";s:11:"state_short";s:2:"MS";}i:23;a:2:{s:10:"state_long";s:8:"missouri";s:11:"state_short";s:2:"MO";}i:24;a:2:{s:10:"state_long";s:7:"montana";s:11:"state_short";s:2:"NE";}i:25;a:2:{s:10:"state_long";s:6:"nevada";s:11:"state_short";s:2:"NV";}i:26;a:2:{s:10:"state_long";s:13:"new hampshire";s:11:"state_short";s:2:"NH";}i:27;a:2:{s:10:"state_long";s:10:"new mexico";s:11:"state_short";s:2:"NM";}i:28;a:2:{s:10:"state_long";s:8:"new york";s:11:"state_short";s:2:"NY";}i:29;a:2:{s:10:"state_long";s:14:"north carolina";s:11:"state_short";s:2:"NC";}i:30;a:2:{s:10:"state_long";s:12:"north dakota";s:11:"state_short";s:2:"ND";}i:31;a:2:{s:10:"state_long";s:4:"ohio";s:11:"state_short";s:2:"OH";}i:32;a:2:{s:10:"state_long";s:8:"oklahoma";s:11:"state_short";s:2:"OK";}i:33;a:2:{s:10:"state_long";s:6:"oregon";s:11:"state_short";s:2:"OR";}i:34;a:2:{s:10:"state_long";s:12:"pennsylvania";s:11:"state_short";s:2:"PA";}i:35;a:2:{s:10:"state_long";s:12:"rhode island";s:11:"state_short";s:2:"RI";}i:36;a:2:{s:10:"state_long";s:14:"south carolina";s:11:"state_short";s:2:"SC";}i:37;a:2:{s:10:"state_long";s:12:"south dakota";s:11:"state_short";s:2:"SD";}i:38;a:2:{s:10:"state_long";s:9:"tennessee";s:11:"state_short";s:2:"TN";}i:39;a:2:{s:10:"state_long";s:5:"texas";s:11:"state_short";s:2:"TX";}i:40;a:2:{s:10:"state_long";s:4:"utah";s:11:"state_short";s:2:"UT";}i:41;a:2:{s:10:"state_long";s:7:"vermont";s:11:"state_short";s:2:"VT";}i:42;a:2:{s:10:"state_long";s:8:"virginia";s:11:"state_short";s:2:"VA";}i:43;a:2:{s:10:"state_long";s:10:"washington";s:11:"state_short";s:2:"WA";}i:44;a:2:{s:10:"state_long";s:13:"west virginia";s:11:"state_short";s:2:"WV";}i:45;a:2:{s:10:"state_long";s:9:"wisconsin";s:11:"state_short";s:2:"WI";}i:46;a:2:{s:10:"state_long";s:7:"wyoming";s:11:"state_short";s:2:"WY";}}', 1),
(21466, 'usps', 'usps_country', 'US', 0),
(21465, 'usps', 'usps_state', 'CA', 0),
(21455, 'usps', 'usps_user_id', '609FREES0002', 0),
(21456, 'usps', 'usps_time_zone', 'America/Los_Angeles', 0),
(21457, 'usps', 'usps_owner', 'Tony', 0),
(21458, 'usps', 'usps_first_name', 'Tony', 0),
(21459, 'usps', 'usps_last_name', 'Liu', 0),
(21460, 'usps', 'usps_company', 'Free Shopping Inc', 0),
(21461, 'usps', 'usps_phone', '6263008400', 0),
(21462, 'usps', 'usps_street', '9852 Baldwin Place', 0),
(21463, 'usps', 'usps_street2', 'B', 0),
(21464, 'usps', 'usps_city', 'EL Monte', 0),
(21966, 'ups', 'ups_classification_code', '01', 0),
(21965, 'ups', 'ups_pickup_method', '03', 0),
(21964, 'ups', 'ups_account_number', '3FR703', 0),
(21963, 'ups', 'ups_password', 'Proline2017', 0),
(21962, 'ups', 'ups_username', 'proline18', 0),
(21961, 'ups', 'ups_access_key', '7D3678D352FE879D', 0),
(22353, 'config', 'config_location_barcode_batch_posy', '20', 0),
(22351, 'config', 'config_location_barcode_batch_height', '300', 0),
(22352, 'config', 'config_location_barcode_batch_posx', '10', 0),
(22350, 'config', 'config_location_barcode_batch_width', '630', 0),
(22349, 'config', 'config_location_barcode_code_size', '80', 0),
(22348, 'config', 'config_location_barcode_name_size', '200', 0),
(22347, 'config', 'config_location_barcode_posy', '200', 0),
(22083, 'fedex', 'fedex_length_unit', 'IN', 0),
(22082, 'fedex', 'fedex_phone', '6263008400', 0),
(22081, 'fedex', 'fedex_owner', 'Tony', 0),
(22080, 'fedex', 'fedex_country', 'US', 0),
(22079, 'fedex', 'fedex_postcode', '91731', 0),
(22078, 'fedex', 'fedex_state', 'CA', 0),
(22077, 'fedex', 'fedex_city', 'El Monte', 0),
(22076, 'fedex', 'fedex_street2', '', 0),
(22075, 'fedex', 'fedex_street', '9910 Baldwin Place', 0),
(22074, 'fedex', 'fedex_origin', 'US', 0),
(22073, 'fedex', 'fedex_time_zone', 'America/Los_Angeles', 0),
(22072, 'fedex', 'fedex_company', 'Prolineshipping Inc', 0),
(22071, 'fedex', 'fedex_password', 'GYuOzp9a0uGbUcw25uLnJ4vD7', 0),
(22070, 'fedex', 'fedex_key', 'UOLSEeKVrlJSMEKb', 0),
(22069, 'fedex', 'fedex_meter_number', '119000362', 0),
(22068, 'fedex', 'fedex_account_number', '510087720', 0),
(21989, 'ups', 'ups_client_fee', 'a:9:{i:0;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"10";}i:1;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"11";}i:2;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"12";}i:3;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"13";}i:4;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"14";}i:5;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"15";}i:6;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"16";}i:7;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"17";}i:8;a:2:{s:3:"fee";s:1:"3";s:9:"client_id";s:2:"18";}}', 1),
(22346, 'config', 'config_location_barcode_posx', '1', 0),
(22345, 'config', 'config_location_barcode_height', '400', 0),
(22344, 'config', 'config_location_barcode_width', '6', 0),
(22343, 'config', 'config_label_posy', '0', 0),
(22342, 'config', 'config_label_width', '60', 0),
(22341, 'config', 'config_label_width_type', '0', 0),
(22340, 'config', 'config_autocomplete_limit', '5', 0),
(22339, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(22338, 'config', 'config_dashboard_order_limit', '7', 0),
(22337, 'config', 'config_dashboard_activity_limit', '8', 0),
(22336, 'config', 'config_sale_product_page_limit', '15', 0),
(22335, 'config', 'config_page_limit', '10', 0),
(22334, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(22463, 'postpony', 'postpony_fee_type', '0', 0),
(22464, 'postpony', 'postpony_fee_value', '0', 0),
(22465, 'postpony', 'postpony_client_fee', 'a:9:{i:0;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"10";}i:1;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"11";}i:2;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"12";}i:3;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"13";}i:4;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"14";}i:5;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"15";}i:6;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"16";}i:7;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"17";}i:8;a:2:{s:3:"fee";s:1:"0";s:9:"client_id";s:2:"18";}}', 1),
(22460, 'postpony', 'postpony_sort_order', '0', 0),
(22461, 'postpony', 'postpony_service', 'a:1:{i:0;a:4:{s:4:"name";s:21:"Postpony Fedex Ground";s:4:"code";s:3:"pfg";s:6:"method";s:12:"FEDEX_GROUND";s:7:"package";s:12:"YOUR_PACKAGE";}}', 1),
(22462, 'postpony', 'postpony_state_mapping', 'a:1:{i:0;a:2:{s:10:"state_long";s:0:"";s:11:"state_short";s:0:"";}}', 1),
(22459, 'postpony', 'postpony_status', '1', 0),
(22458, 'postpony', 'postpony_debug_mode', '0', 0),
(22457, 'postpony', 'postpony_image_type', 'PNG', 0),
(22456, 'postpony', 'postpony_weight_unit', 'LB', 0),
(22455, 'postpony', 'postpony_length_unit', 'IN', 0),
(22454, 'postpony', 'postpony_phone', '9098956073', 0),
(22453, 'postpony', 'postpony_owner', 'SHAN SUN', 0),
(22452, 'postpony', 'postpony_country', 'US', 0),
(22451, 'postpony', 'postpony_postcode', '91733', 0),
(22450, 'postpony', 'postpony_state', 'CA', 0),
(22448, 'postpony', 'postpony_street2', '', 0),
(22449, 'postpony', 'postpony_city', 'South El Monte', 0),
(22447, 'postpony', 'postpony_street', '1467 Lidcombe Ave', 0),
(22446, 'postpony', 'postpony_company', 'intadat Inc', 0),
(22443, 'postpony', 'postpony_key', 'PY', 0),
(22444, 'postpony', 'postpony_pwd', 'pypypypypy', 0),
(22445, 'postpony', 'postpony_authorized_key', 'TESTTOKEN-ske39De3mkC39d', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `sync_warehouse_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_sync`
--

CREATE TABLE IF NOT EXISTS `store_sync` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_sync_history`
--

CREATE TABLE IF NOT EXISTS `store_sync_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7940 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `markup` decimal(15,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `comment` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=700 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_to_type`
--

CREATE TABLE IF NOT EXISTS `transaction_to_type` (
  `type` varchar(16) NOT NULL,
  `type_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `from_location_id` int(11) DEFAULT NULL,
  `to_location_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_product`
--

CREATE TABLE IF NOT EXISTS `transfer_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_id` (`transfer_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '95068e04a290a228e40ea96aff17d52c73d436c9', '300', 'Sam', 'Shao', 'admin@jiusite.com', '', '', '::1', 1, '2017-02-13 11:42:29'),
(2, 12, 'avwc', '433815068e533a10a5d78d3b0ab0796c85606a9e', '135', 'Raymond', 'Liu', 'raymond@ohmash.com', '', '', '', 1, '0000-00-00 00:00:00'),
(4, 12, 'ava', '5be1565b1ded53aaee6ed3135471b668fc280a9e', '360', 'Steven', 'Luu', 'steven@ohmash.com', '', '', '', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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

CREATE TABLE IF NOT EXISTS `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

CREATE TABLE IF NOT EXISTS `weight_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(16) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`id`, `unit`, `value`) VALUES
(1, 'kg', '1.0000'),
(2, 'g', '1000.0000'),
(5, 'lb', '2.2046'),
(6, 'oz', '35.7400');

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
