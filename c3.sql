-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 07:23 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 21:59:18'),
(2, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 21:59:20'),
(3, 1, '172.56.30.101', 'check/checkin', 'view the checkin page', 'GET', '2018-06-08 21:59:21'),
(4, 1, '172.56.30.101', 'check/checkout', 'view the checkout page', 'GET', '2018-06-08 21:59:24'),
(5, 1, '172.56.30.101', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-08 21:59:27'),
(6, 1, '172.56.30.101', 'sale/sale', 'view the order page', 'GET', '2018-06-08 21:59:28'),
(7, 1, '172.56.30.101', 'sale/customer', 'view the customer page', 'GET', '2018-06-08 21:59:30'),
(8, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 21:59:33'),
(9, 1, '172.56.30.101', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-08 21:59:35'),
(10, 1, '172.56.30.101', 'inventory/transfer', 'view the transfer page', 'GET', '2018-06-08 21:59:38'),
(11, 1, '172.56.30.101', 'finance/fee', 'view the fee page', 'GET', '2018-06-08 22:01:13'),
(12, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:01:13'),
(13, 1, '172.56.30.101', 'sale/customer', 'view the customer page', 'GET', '2018-06-08 22:01:13'),
(14, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:01:13'),
(15, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:01:13'),
(16, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:01:13'),
(17, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:01:16'),
(18, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:01:16'),
(19, 1, '172.56.30.101', 'check/checkin', 'view the checkin page', 'GET', '2018-06-08 22:01:18'),
(20, 1, '172.56.30.101', 'check/checkout', 'view the checkout page', 'GET', '2018-06-08 22:01:20'),
(21, 1, '172.56.30.101', 'sale/sale', 'view the order page', 'GET', '2018-06-08 22:01:21'),
(22, 1, '172.56.30.101', 'sale/import', 'view the order import page', 'GET', '2018-06-08 22:01:24'),
(23, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:01:26'),
(24, 1, '172.56.30.101', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-08 22:01:27'),
(25, 1, '172.56.30.101', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-08 22:01:27'),
(26, 1, '172.56.30.101', 'catalog/product_import', 'view the product import page', 'GET', '2018-06-08 22:01:28'),
(27, 1, '172.56.30.101', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-08 22:01:30'),
(28, 1, '172.56.30.101', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-06-08 22:01:30'),
(29, 1, '172.56.30.101', 'inventory/transfer', 'view the transfer page', 'GET', '2018-06-08 22:01:31'),
(30, 1, '172.56.30.101', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-08 22:02:23'),
(31, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:02:24'),
(32, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:02:30'),
(33, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:02:31'),
(34, NULL, '172.56.30.101', 'common/login', 'view the login page', 'GET', '2018-06-08 22:03:03'),
(35, NULL, '172.56.30.101', 'common/login', 'view the login page', 'POST', '2018-06-08 22:03:05'),
(36, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:03:05'),
(37, 1, '172.56.30.101', 'extension/fee', '0', 'GET', '2018-06-08 22:03:16'),
(38, 1, '172.56.30.101', 'extension/platform', 'view the platform page', 'GET', '2018-06-08 22:03:17'),
(39, 1, '172.56.30.101', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-08 22:03:19'),
(40, 1, '172.56.30.101', 'extension/payment', 'view the payment page', 'GET', '2018-06-08 22:03:20'),
(41, 1, '172.56.30.101', 'finance/fee', 'view the fee page', 'GET', '2018-06-08 22:03:23'),
(42, 1, '172.56.30.101', 'finance/balance', 'view the balance page', 'GET', '2018-06-08 22:03:23'),
(43, 1, '172.56.30.101', 'finance/recharge', 'view the recharge page', 'GET', '2018-06-08 22:03:25'),
(44, 1, '172.56.30.101', 'finance/transaction', 'view the transaction page', 'GET', '2018-06-08 22:03:26'),
(45, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:29'),
(46, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:29'),
(47, 1, '172.56.30.101', 'finance/transaction', 'view the transaction page', 'GET', '2018-06-08 22:03:31'),
(48, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:34'),
(49, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:34'),
(50, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:42'),
(51, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:42'),
(52, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:43'),
(53, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:43'),
(54, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:43'),
(55, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:44'),
(56, 1, '172.56.30.101', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-06-08 22:03:44'),
(57, 1, '172.56.30.101', 'finance/transaction/reload', '0', 'GET', '2018-06-08 22:03:44'),
(58, 1, '172.56.30.101', 'finance/transaction', 'view the transaction page', 'GET', '2018-06-08 22:03:46'),
(59, 1, '172.56.30.101', 'finance/transaction', 'view the transaction page', 'GET', '2018-06-08 22:03:50'),
(60, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:03:52'),
(61, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'GET', '2018-06-08 22:03:54'),
(62, 1, '172.56.30.101', 'user/user', 'view the user page', 'GET', '2018-06-08 22:03:57'),
(63, 1, '172.56.30.101', 'user/user_group', 'view the user group page', 'GET', '2018-06-08 22:03:59'),
(64, 1, '172.56.30.101', 'setting/setting', 'view the setting page', 'GET', '2018-06-08 22:04:01'),
(65, 1, '172.56.30.101', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-08 22:04:02'),
(66, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:04:06'),
(67, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:04:14'),
(68, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'GET', '2018-06-08 22:05:14'),
(69, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'POST', '2018-06-08 22:06:32'),
(70, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:06:32'),
(71, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'GET', '2018-06-08 22:06:36'),
(72, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'POST', '2018-06-08 22:07:10'),
(73, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:07:10'),
(74, 1, '172.56.30.101', 'client/client/add', 'view the client add page', 'GET', '2018-06-08 22:08:53'),
(75, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:08:55'),
(76, 1, '172.56.30.101', 'client/client/edit', 'view the client edit page', 'GET', '2018-06-08 22:09:08'),
(77, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:10:29'),
(78, 1, '172.56.30.101', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-08 22:10:32'),
(79, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:12:20'),
(80, 1, '172.56.30.101', 'catalog/product/delete', 'try to delete a product', 'GET', '2018-06-08 22:12:24'),
(81, 1, '172.56.30.101', 'catalog/product/reload', 'reload the product page', 'GET', '2018-06-08 22:12:24'),
(82, 1, '172.56.30.101', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-08 22:12:25'),
(83, 1, '172.56.30.101', 'client/client', 'view the client page', 'GET', '2018-06-08 22:12:49'),
(84, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:13:03'),
(85, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'GET', '2018-06-08 22:13:05'),
(86, 1, '172.56.30.101', 'extension/platform/get_platform_form', 'get plaform form', 'GET', '2018-06-08 22:13:17'),
(87, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'POST', '2018-06-08 22:14:00'),
(88, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:14:00'),
(89, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-08 22:14:02'),
(90, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-08 22:14:12'),
(91, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:14:12'),
(92, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'GET', '2018-06-08 22:14:14'),
(93, 1, '172.56.30.101', 'extension/platform/get_platform_form', 'get plaform form', 'GET', '2018-06-08 22:14:23'),
(94, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'POST', '2018-06-08 22:14:45'),
(95, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:14:45'),
(96, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-08 22:14:48'),
(97, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-08 22:14:52'),
(98, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:14:52'),
(99, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'GET', '2018-06-08 22:14:58'),
(100, 1, '172.56.30.101', 'extension/platform/get_platform_form', 'get plaform form', 'GET', '2018-06-08 22:15:17'),
(101, 1, '172.56.30.101', 'store/store/add', 'view the store add page', 'POST', '2018-06-08 22:15:27'),
(102, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:15:27'),
(103, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-08 22:15:29'),
(104, 1, '172.56.30.101', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-08 22:15:35'),
(105, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:15:36'),
(106, 1, '172.56.30.101', 'setting/setting', 'view the setting page', 'GET', '2018-06-08 22:16:04'),
(107, 1, '172.56.30.101', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-08 22:16:05'),
(108, 1, '172.56.30.101', 'user/user', 'view the user page', 'GET', '2018-06-08 22:16:07'),
(109, 1, '172.56.30.101', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-08 22:16:09'),
(110, 1, '172.56.30.101', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-08 22:16:18'),
(111, 1, '172.56.30.101', 'user/user', 'view the user page', 'GET', '2018-06-08 22:16:18'),
(112, 1, '172.56.30.101', 'user/user', 'view the user page', 'GET', '2018-06-08 22:16:24'),
(113, 1, '172.56.30.101', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-08 22:16:27'),
(114, 1, '172.56.30.101', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-08 22:16:29'),
(115, 1, '172.56.30.101', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-08 22:16:40'),
(116, 1, '172.56.30.101', 'user/user', 'view the user page', 'GET', '2018-06-08 22:16:40'),
(117, 1, '172.56.30.101', 'store/store', 'view the store page', 'GET', '2018-06-08 22:16:51'),
(118, 1, '172.56.30.101', 'store/store_sale_sync', 'view the store sale sync page', 'GET', '2018-06-08 22:16:52'),
(119, 1, '172.56.30.101', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-08 22:16:54'),
(120, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:17:20'),
(121, 1, '172.56.30.101', 'common/logout', 'view the logout page', 'GET', '2018-06-08 22:20:05'),
(122, NULL, '172.56.30.101', 'common/login', 'view the login page', 'GET', '2018-06-08 22:20:05'),
(123, NULL, '172.56.30.101', 'common/login', 'view the login page', 'POST', '2018-06-08 22:20:10'),
(124, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:20:10'),
(125, 1, '172.56.30.101', 'check/checkin', 'view the checkin page', 'GET', '2018-06-08 22:21:44'),
(126, 1, '172.56.30.101', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-06-08 22:21:45'),
(127, 1, '172.56.30.101', 'check/checkout', 'view the checkout page', 'GET', '2018-06-08 22:21:47'),
(128, 1, '172.56.30.101', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-08 22:21:49'),
(129, 1, '172.56.30.101', 'sale/sale', 'view the order page', 'GET', '2018-06-08 22:21:50'),
(130, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:21:52'),
(131, 1, '172.56.30.101', '', 'view the dashboard', 'GET', '2018-06-08 22:39:12'),
(132, 1, '172.56.30.101', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-08 22:39:12'),
(133, 1, '172.56.30.101', 'check/checkin', 'view the checkin page', 'GET', '2018-06-08 22:39:15'),
(134, 1, '172.56.30.101', 'sale/sale', 'view the order page', 'GET', '2018-06-08 22:39:18'),
(135, 1, '172.56.30.101', 'sale/sale/add', 'view the order add page', 'GET', '2018-06-08 22:39:21'),
(136, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:39:27'),
(137, 1, '172.56.30.101', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-08 22:39:29'),
(138, 1, '172.56.30.101', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-08 22:39:32'),
(139, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:39:47'),
(140, 1, '172.56.30.101', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-08 22:39:47'),
(141, 1, '172.56.30.101', 'catalog/product', 'view the product page', 'GET', '2018-06-08 22:39:49'),
(142, 1, '172.56.30.101', 'check/checkout', 'view the checkout page', 'GET', '2018-06-08 22:39:52'),
(143, NULL, '172.58.19.50', '', 'view the dashboard', 'GET', '2018-06-09 22:45:40'),
(144, NULL, '172.58.19.50', 'common/login', 'view the login page', 'POST', '2018-06-09 22:45:51'),
(145, NULL, '172.58.19.50', 'common/login', 'view the login page', 'POST', '2018-06-09 22:45:54'),
(146, NULL, '172.58.19.50', 'common/login', 'view the login page', 'POST', '2018-06-09 22:45:59'),
(147, NULL, '172.58.19.50', 'common/login', 'view the login page', 'POST', '2018-06-09 22:46:10'),
(148, 1, '172.58.19.50', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-09 22:46:10'),
(149, 1, '172.58.19.50', 'sale/sale', 'view the order page', 'GET', '2018-06-09 22:46:48'),
(150, NULL, '172.58.24.206', '', 'view the dashboard', 'GET', '2018-06-11 23:59:08'),
(151, NULL, '172.58.24.206', 'common/login', 'view the login page', 'POST', '2018-06-11 23:59:11'),
(152, NULL, '172.58.24.206', 'common/login', 'view the login page', 'POST', '2018-06-11 23:59:14'),
(153, NULL, '172.58.24.206', 'common/login', 'view the login page', 'POST', '2018-06-11 23:59:21'),
(154, NULL, '172.58.24.206', 'common/login', 'view the login page', 'POST', '2018-06-11 23:59:24'),
(155, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-11 23:59:24'),
(156, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-11 23:59:27'),
(157, 1, '172.58.24.206', 'check/checkout', 'view the checkout page', 'GET', '2018-06-12 00:00:19'),
(158, NULL, '113.99.225.90', 'common/login', 'view the login page', 'GET', '2018-06-14 01:06:45'),
(159, NULL, '113.99.221.178', 'common/login', 'view the login page', 'GET', '2018-06-15 12:55:13'),
(160, NULL, '59.41.237.130', '', 'view the dashboard', 'GET', '2018-06-15 14:07:19'),
(161, NULL, '59.41.237.130', 'common/login', 'view the login page', 'POST', '2018-06-15 14:09:54'),
(162, NULL, '59.41.237.130', 'common/login', 'view the login page', 'POST', '2018-06-15 14:09:59'),
(163, NULL, '59.41.237.130', 'common/login', 'view the login page', 'POST', '2018-06-15 14:10:49'),
(164, NULL, '106.120.160.114', '', 'view the dashboard', 'GET', '2018-06-15 14:32:21'),
(165, NULL, '220.181.132.193', '', 'view the dashboard', 'GET', '2018-06-15 14:32:40'),
(166, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2018-06-17 04:07:56'),
(167, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-06-17 04:08:00'),
(168, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-06-17 04:08:03'),
(169, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-06-17 04:08:07'),
(170, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-06-17 04:08:24'),
(171, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2018-06-17 04:08:29'),
(172, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-17 04:08:29'),
(173, NULL, '101.226.79.234', '', 'view the dashboard', 'GET', '2018-06-17 04:09:45'),
(174, NULL, '113.111.37.178', '', 'view the dashboard', 'GET', '2018-06-18 07:24:07'),
(175, NULL, '113.111.37.178', 'common/login', 'view the login page', 'POST', '2018-06-18 07:26:21'),
(176, 1, '113.111.37.178', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-18 07:26:22'),
(177, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:27:22'),
(178, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:27:26'),
(179, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:29:32'),
(180, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:29:40'),
(181, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:29:40'),
(182, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:29:54'),
(183, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:30:02'),
(184, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:30:06'),
(185, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:30:52'),
(186, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:30:54'),
(187, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:30:54'),
(188, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:31:01'),
(189, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:31:46'),
(190, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:31:49'),
(191, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:31:49'),
(192, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:31:59'),
(193, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:32:56'),
(194, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:33:05'),
(195, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:33:05'),
(196, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:33:27'),
(197, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:34:02'),
(198, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:34:04'),
(199, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:34:05'),
(200, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:34:20'),
(201, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:34:54'),
(202, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:35:16'),
(203, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:35:16'),
(204, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:35:48'),
(205, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:36:02'),
(206, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:37:51'),
(207, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:38:14'),
(208, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:38:47'),
(209, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:38:50'),
(210, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:38:50'),
(211, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:38:55'),
(212, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:39:33'),
(213, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:39:41'),
(214, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:39:42'),
(215, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:39:47'),
(216, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:40:19'),
(217, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:40:27'),
(218, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:40:28'),
(219, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:41:04'),
(220, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:41:12'),
(221, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:41:38'),
(222, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:41:38'),
(223, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:41:54'),
(224, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:42:03'),
(225, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:42:03'),
(226, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:42:05'),
(227, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:09'),
(228, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:12'),
(229, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:16'),
(230, 1, '113.111.37.178', 'common/filemanager/folder', '0', 'POST', '2018-06-18 07:42:19'),
(231, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:25'),
(232, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:27'),
(233, 1, '113.111.37.178', 'common/filemanager', 'view the filemanager', 'GET', '2018-06-18 07:42:29'),
(234, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:42:35'),
(235, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:42:37'),
(236, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:42:42'),
(237, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:42:42'),
(238, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:42:45'),
(239, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:42:49'),
(240, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:42:50'),
(241, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:42:52'),
(242, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:42:57'),
(243, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:42:57'),
(244, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:42:59'),
(245, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:43:03'),
(246, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:43:03'),
(247, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:43:06'),
(248, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:43:10'),
(249, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:43:10'),
(250, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 07:43:12'),
(251, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 07:43:17'),
(252, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:43:17'),
(253, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:43:20'),
(254, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:43:58'),
(255, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:44:00'),
(256, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:44:00'),
(257, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:44:09'),
(258, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:44:52'),
(259, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:44:55'),
(260, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:44:55'),
(261, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:45:16'),
(262, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:45:44'),
(263, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:45:46'),
(264, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:45:46'),
(265, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:46:04'),
(266, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:46:34'),
(267, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:46:36'),
(268, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:46:36'),
(269, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:46:49'),
(270, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:47:17'),
(271, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:47:20'),
(272, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:47:20'),
(273, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:47:34'),
(274, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:48:01'),
(275, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:48:03'),
(276, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:48:03'),
(277, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:48:06'),
(278, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:48:41'),
(279, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:48:44'),
(280, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:48:44'),
(281, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:48:47'),
(282, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:49:27'),
(283, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:49:29'),
(284, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:49:29'),
(285, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:49:32'),
(286, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:50:19'),
(287, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:50:22'),
(288, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:50:22'),
(289, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 07:58:16'),
(290, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 07:58:45'),
(291, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 07:58:47'),
(292, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 07:58:47'),
(293, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:00:58'),
(294, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:01:33'),
(295, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:01:35'),
(296, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:01:35'),
(297, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:03:56'),
(298, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:04:25'),
(299, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:04:27'),
(300, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:04:27'),
(301, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:04:44'),
(302, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:05:14'),
(303, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:05:16'),
(304, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:05:16'),
(305, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:05:28'),
(306, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:06:13'),
(307, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:06:15'),
(308, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:06:15'),
(309, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:08:10'),
(310, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:08:36'),
(311, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:08:38'),
(312, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:08:38'),
(313, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:08:41'),
(314, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:11:03'),
(315, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:11:04'),
(316, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:11:05'),
(317, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:11:19'),
(318, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:12:05'),
(319, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:12:06'),
(320, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:12:07'),
(321, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:18:11'),
(322, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:18:43'),
(323, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:18:47'),
(324, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:18:47'),
(325, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:18:49'),
(326, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:19:29'),
(327, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:19:30'),
(328, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:19:30'),
(329, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:19:36'),
(330, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:19:43'),
(331, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:19:50'),
(332, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:19:57'),
(333, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:00'),
(334, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:02'),
(335, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 08:20:03'),
(336, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:09'),
(337, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:17'),
(338, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:21'),
(339, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:25'),
(340, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-18 08:20:28'),
(341, 1, '113.111.37.178', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-06-18 08:20:39'),
(342, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:20:39'),
(343, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:20:42'),
(344, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:21:23'),
(345, NULL, '106.120.160.114', '', 'view the dashboard', 'GET', '2018-06-18 08:21:26'),
(346, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:21:31'),
(347, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:21:31'),
(348, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:21:34'),
(349, NULL, '101.199.112.50', '', 'view the dashboard', 'GET', '2018-06-18 08:21:44'),
(350, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:22:12'),
(351, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:22:14'),
(352, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:22:14'),
(353, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:22:21'),
(354, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:22:58'),
(355, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:23:01'),
(356, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:23:01'),
(357, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:23:03'),
(358, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:23:38'),
(359, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:23:40'),
(360, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:23:40'),
(361, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:35:33'),
(362, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:36:05'),
(363, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:36:06'),
(364, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:36:06'),
(365, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:36:09'),
(366, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:36:52'),
(367, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:37:21'),
(368, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:37:23'),
(369, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:37:23'),
(370, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:46:41'),
(371, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:46:54'),
(372, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:47:24'),
(373, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:47:26'),
(374, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:47:26'),
(375, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:47:35'),
(376, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:48:10'),
(377, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:48:12'),
(378, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:48:12'),
(379, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:48:24'),
(380, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:48:55'),
(381, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:48:58'),
(382, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:48:58'),
(383, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:49:04'),
(384, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:49:33'),
(385, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:50:19'),
(386, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:50:39'),
(387, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:50:40'),
(388, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:51:18'),
(389, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:51:46'),
(390, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:51:49'),
(391, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:51:49'),
(392, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:52:03'),
(393, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:52:31'),
(394, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:52:33'),
(395, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:52:33'),
(396, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:52:46'),
(397, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:53:15'),
(398, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:53:17'),
(399, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:53:17'),
(400, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:54:44'),
(401, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:55:12'),
(402, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:55:14'),
(403, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:55:14'),
(404, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:55:32'),
(405, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:55:59'),
(406, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:56:01'),
(407, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:56:01'),
(408, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:56:34'),
(409, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:57:00'),
(410, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:57:02'),
(411, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:57:02'),
(412, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:57:12'),
(413, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:57:42'),
(414, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:57:44'),
(415, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:57:44'),
(416, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:57:54'),
(417, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:58:21'),
(418, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:58:23'),
(419, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:58:23'),
(420, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:58:34'),
(421, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:59:00'),
(422, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:59:02'),
(423, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:59:02'),
(424, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:59:15'),
(425, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 08:59:44'),
(426, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 08:59:46'),
(427, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 08:59:47'),
(428, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 08:59:49'),
(429, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:01:25'),
(430, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:01:28'),
(431, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:01:28'),
(432, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:02:28'),
(433, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:02:57'),
(434, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:02:59'),
(435, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:03:00'),
(436, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:04:12'),
(437, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:04:51'),
(438, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:04:52'),
(439, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:04:52'),
(440, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:05:18'),
(441, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:05:56'),
(442, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:05:58'),
(443, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:05:58'),
(444, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:06:39'),
(445, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:07:22'),
(446, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:07:25'),
(447, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:07:26'),
(448, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:07:47'),
(449, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:08:32'),
(450, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:08:34'),
(451, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:08:34'),
(452, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:08:41'),
(453, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:09:32'),
(454, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:09:34'),
(455, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:09:34'),
(456, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:09:36'),
(457, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:10:20'),
(458, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:10:23'),
(459, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:10:23'),
(460, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:10:32'),
(461, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:11:00'),
(462, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:11:02'),
(463, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:11:02'),
(464, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:11:04'),
(465, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:11:45'),
(466, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:11:46'),
(467, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:11:47'),
(468, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:11:57'),
(469, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:12:24'),
(470, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:12:26'),
(471, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:12:26'),
(472, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:12:36'),
(473, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:13:19'),
(474, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:13:21'),
(475, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:13:21'),
(476, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:13:43'),
(477, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:14:09'),
(478, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:14:11'),
(479, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:14:11'),
(480, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:14:25'),
(481, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:14:53'),
(482, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:14:55'),
(483, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:14:56'),
(484, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:14:58'),
(485, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:15:29');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(486, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:15:31'),
(487, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:15:31'),
(488, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:16:03'),
(489, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:16:29'),
(490, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:16:31'),
(491, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:16:31'),
(492, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:17:23'),
(493, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:18:20'),
(494, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:18:22'),
(495, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:18:22'),
(496, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:18:24'),
(497, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:18:56'),
(498, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:18:58'),
(499, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:18:58'),
(500, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:19:04'),
(501, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:19:51'),
(502, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:19:52'),
(503, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:19:53'),
(504, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:20:09'),
(505, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:20:44'),
(506, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:20:47'),
(507, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:20:47'),
(508, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:20:49'),
(509, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:21:22'),
(510, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:21:23'),
(511, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:21:24'),
(512, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:21:29'),
(513, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:22:13'),
(514, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:22:15'),
(515, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:22:15'),
(516, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:22:16'),
(517, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:22:51'),
(518, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:22:52'),
(519, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:22:52'),
(520, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:22:54'),
(521, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:23:29'),
(522, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:23:31'),
(523, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:23:31'),
(524, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:23:33'),
(525, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:24:19'),
(526, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:24:20'),
(527, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:24:21'),
(528, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:24:22'),
(529, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:24:55'),
(530, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:24:57'),
(531, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:24:57'),
(532, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-18 09:25:11'),
(533, 1, '113.111.37.178', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-18 09:25:36'),
(534, 1, '113.111.37.178', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-18 09:25:38'),
(535, 1, '113.111.37.178', 'catalog/product', 'view the product page', 'GET', '2018-06-18 09:25:38'),
(536, NULL, '123.156.144.218', '', 'view the dashboard', 'GET', '2018-06-18 14:21:05'),
(537, NULL, '123.156.144.218', 'common/login', 'view the login page', 'POST', '2018-06-18 14:21:35'),
(538, 1, '123.156.144.218', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-18 14:21:36'),
(539, 1, '123.156.144.218', 'store/store_sale_sync', 'view the store sale sync page', 'GET', '2018-06-18 14:22:13'),
(540, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:22:33'),
(541, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:22:56'),
(542, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:23:09'),
(543, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:23:22'),
(544, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:23:34'),
(545, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:25:22'),
(546, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:25:41'),
(547, 1, '123.156.144.218', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-18 14:26:18'),
(548, NULL, '113.99.220.247', 'common/login', 'view the login page', 'GET', '2018-06-19 03:26:24'),
(549, NULL, '123.156.144.150', 'common/login', 'view the login page', 'GET', '2018-06-19 04:03:48'),
(550, NULL, '172.58.24.206', '', 'view the dashboard', 'GET', '2018-06-20 19:38:14'),
(551, NULL, '172.58.24.206', 'common/login', 'view the login page', 'POST', '2018-06-20 19:38:16'),
(552, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 19:38:16'),
(553, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 19:38:21'),
(554, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 19:38:27'),
(555, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 19:38:33'),
(556, 1, '172.58.24.206', 'store/store', 'view the store page', 'GET', '2018-06-20 19:41:23'),
(557, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 19:41:31'),
(558, 1, '172.58.24.206', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-20 19:41:33'),
(559, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 19:41:44'),
(560, 1, '172.58.24.206', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-20 19:41:50'),
(561, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 19:41:54'),
(562, 1, '172.58.24.206', '', 'view the dashboard', 'GET', '2018-06-20 20:04:36'),
(563, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 20:04:36'),
(564, 1, '172.58.24.206', 'check/checkin', 'view the checkin page', 'GET', '2018-06-20 20:04:38'),
(565, 1, '172.58.24.206', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-06-20 20:04:40'),
(566, 1, '172.58.24.206', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-06-20 20:04:42'),
(567, 1, '172.58.24.206', 'check/checkin', 'view the checkin page', 'GET', '2018-06-20 20:04:44'),
(568, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:04:48'),
(569, 1, '172.58.24.206', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-20 20:04:49'),
(570, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:04:51'),
(571, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:04:55'),
(572, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:04:57'),
(573, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:05:00'),
(574, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:05:02'),
(575, 1, '172.58.24.206', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-20 20:11:04'),
(576, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:11:09'),
(577, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:11:12'),
(578, 1, '172.58.24.206', 'user/user', 'view the user page', 'GET', '2018-06-20 20:12:34'),
(579, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-20 20:12:36'),
(580, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 20:13:36'),
(581, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 20:13:47'),
(582, 1, '172.58.24.206', 'user/user', 'view the user page', 'GET', '2018-06-20 20:13:47'),
(583, 1, '172.58.24.206', 'user/user', 'view the user page', 'GET', '2018-06-20 20:13:50'),
(584, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-20 20:13:53'),
(585, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 20:13:54'),
(586, 1, '172.58.24.206', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 20:13:56'),
(587, 1, '172.58.24.206', 'user/user', 'view the user page', 'GET', '2018-06-20 20:13:59'),
(588, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 20:13:59'),
(589, 1, '172.58.24.206', 'client/client', 'view the client page', 'GET', '2018-06-20 20:14:15'),
(590, 1, '172.58.24.206', 'client/client', 'view the client page', 'GET', '2018-06-20 20:22:46'),
(591, 1, '172.58.24.206', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-20 20:22:51'),
(592, 1, '172.58.24.206', 'sale/sale', 'view the order page', 'GET', '2018-06-20 20:23:42'),
(593, 1, '172.58.24.206', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-20 20:23:48'),
(594, 1, '172.58.24.206', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-20 20:23:51'),
(595, 1, '172.58.24.206', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-20 20:23:53'),
(596, 1, '172.58.24.206', 'sale/sale/delete', 'try to delete an order', 'GET', '2018-06-20 20:24:23'),
(597, 1, '172.58.24.206', 'sale/sale_unsolved/reload', 'reload the unsolved order list', 'GET', '2018-06-20 20:24:23'),
(598, 1, '172.58.24.206', 'sale/sale/delete', 'try to delete an order', 'GET', '2018-06-20 20:24:25'),
(599, 1, '172.58.24.206', 'sale/sale_unsolved/reload', 'reload the unsolved order list', 'GET', '2018-06-20 20:24:25'),
(600, 1, '172.58.24.206', 'sale/sale', 'view the order page', 'GET', '2018-06-20 20:24:26'),
(601, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:27:45'),
(602, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:29:04'),
(603, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:29:13'),
(604, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:29:13'),
(605, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:29:17'),
(606, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:29:43'),
(607, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:29:48'),
(608, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:29:48'),
(609, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:29:49'),
(610, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:30:13'),
(611, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:30:15'),
(612, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:30:15'),
(613, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:30:33'),
(614, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:31:00'),
(615, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:31:02'),
(616, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:31:02'),
(617, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:31:21'),
(618, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:31:47'),
(619, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:31:49'),
(620, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:31:49'),
(621, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:31:59'),
(622, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:32:24'),
(623, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:32:26'),
(624, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:32:26'),
(625, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:32:29'),
(626, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:32:56'),
(627, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:32:58'),
(628, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:32:58'),
(629, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:33:04'),
(630, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:33:26'),
(631, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:33:29'),
(632, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:33:29'),
(633, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:33:35'),
(634, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:34:00'),
(635, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:34:02'),
(636, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:34:02'),
(637, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:34:13'),
(638, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:34:31'),
(639, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:34:34'),
(640, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:34:34'),
(641, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:34:41'),
(642, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:35:03'),
(643, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:35:05'),
(644, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:35:05'),
(645, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:35:12'),
(646, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:35:34'),
(647, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:35:38'),
(648, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:35:38'),
(649, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:35:44'),
(650, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:36:08'),
(651, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:36:10'),
(652, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:36:10'),
(653, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-20 20:36:17'),
(654, 1, '172.58.24.206', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-20 20:36:36'),
(655, 1, '172.58.24.206', 'catalog/product/add', 'view the product add page', 'POST', '2018-06-20 20:36:37'),
(656, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:36:37'),
(657, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:36:43'),
(658, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:38:57'),
(659, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:38:59'),
(660, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:25'),
(661, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:32'),
(662, 1, '172.58.24.206', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-20 20:39:34'),
(663, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:35'),
(664, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:46'),
(665, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:47'),
(666, 1, '172.58.24.206', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-20 20:39:52'),
(667, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:54'),
(668, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:39:57'),
(669, 1, '172.58.24.206', 'catalog/product', 'view the product page', 'GET', '2018-06-20 20:40:03'),
(670, 1, '172.58.24.206', 'store/store_sale_sync', 'view the store sale sync page', 'GET', '2018-06-20 20:40:23'),
(671, 1, '172.58.24.206', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-20 20:40:25'),
(672, 1, '172.58.24.206', 'store/store', 'view the store page', 'GET', '2018-06-20 20:40:40'),
(673, 1, '172.58.24.206', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-20 20:40:41'),
(674, 1, '172.58.24.206', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-20 20:40:52'),
(675, 1, '172.58.24.206', 'store/store', 'view the store page', 'GET', '2018-06-20 20:40:52'),
(676, 1, '172.58.24.206', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-20 20:40:55'),
(677, 1, '172.58.24.206', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-20 20:41:01'),
(678, 1, '172.58.24.206', 'store/store', 'view the store page', 'GET', '2018-06-20 20:41:01'),
(679, 1, '172.58.24.206', 'store/store', 'view the store page', 'GET', '2018-06-20 20:41:02'),
(680, 1, '172.58.24.206', 'store/store_sale_sync', 'view the store sale sync page', 'GET', '2018-06-20 20:41:04'),
(681, 1, '172.58.24.206', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-20 20:41:05'),
(682, 1, '172.58.24.206', 'store/store_sale_sync_download/download_ajax', 'init the store order sync download', 'POST', '2018-06-20 20:41:19'),
(683, 1, '172.58.24.206', 'sale/sale', 'view the order page', 'GET', '2018-06-20 20:41:33'),
(684, 1, '172.58.24.206', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-20 20:41:43'),
(685, 1, '172.58.24.206', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 20:41:44'),
(686, 1, '172.58.24.206', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-06-20 20:41:50'),
(687, 1, '172.58.24.206', 'store/store_sync_history/clear', 'try to clear store sync history', 'GET', '2018-06-20 20:41:52'),
(688, 1, '172.58.24.206', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-06-20 20:41:52'),
(689, 1, '172.58.24.206', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-06-20 20:41:54'),
(690, 1, '172.58.24.206', 'store/store_sync_history/clear', 'try to clear store sync history', 'GET', '2018-06-20 20:41:57'),
(691, 1, '172.58.24.206', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-06-20 20:41:57'),
(692, 1, '172.58.24.206', 'inventory/refund', 'view the refund page', 'GET', '2018-06-20 20:42:40'),
(693, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:09:41'),
(694, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:09:44'),
(695, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:09:44'),
(696, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:09:47'),
(697, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:09:49'),
(698, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:09:52'),
(699, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-20 23:09:53'),
(700, 1, '::1', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 23:09:55'),
(701, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:09:55'),
(702, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:10:00'),
(703, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:10:00'),
(704, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:10:01'),
(705, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:10:02'),
(706, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:10:03'),
(707, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:10:52'),
(708, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:10:52'),
(709, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:10:54'),
(710, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:10:54'),
(711, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:10:58'),
(712, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:11:05'),
(713, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:11:05'),
(714, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:11:08'),
(715, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:11:09'),
(716, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:11:09'),
(717, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:11:11'),
(718, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-20 23:11:40'),
(719, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:11:46'),
(720, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:11:47'),
(721, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:11:54'),
(722, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:11:54'),
(723, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-06-20 23:11:56'),
(724, 1, '::1', 'user/user/edit', 'view the user edit page', 'POST', '2018-06-20 23:11:58'),
(725, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:11:58'),
(726, 1, '::1', '', 'view the dashboard', 'GET', '2018-06-20 23:12:09'),
(727, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:12:09'),
(728, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:12:13'),
(729, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:12:13'),
(730, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:12:17'),
(731, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:12:18'),
(732, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:12:22'),
(733, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:12:22'),
(734, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:13:03'),
(735, 1, '::1', 'inventory/refund', 'view the refund page', 'GET', '2018-06-20 23:13:05'),
(736, 1, '::1', 'inventory/refund/add', 'view the refund add page', 'GET', '2018-06-20 23:13:07'),
(737, 1, '::1', 'inventory/refund/add', 'view the refund add page', 'POST', '2018-06-20 23:13:09'),
(738, 1, '::1', 'inventory/refund', 'view the refund page', 'GET', '2018-06-20 23:13:11'),
(739, 1, '::1', 'inventory/refund/bulk_delete', '0', 'POST', '2018-06-20 23:13:40'),
(740, 1, '::1', 'inventory/refund', 'view the refund page', 'GET', '2018-06-20 23:13:46'),
(741, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:13:51'),
(742, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:13:51'),
(743, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:13:54'),
(744, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:15:38'),
(745, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:15:38'),
(746, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:15:40'),
(747, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:15:40'),
(748, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:15:42'),
(749, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:15:52'),
(750, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:15:54'),
(751, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:15:54'),
(752, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:15:55'),
(753, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:15:55'),
(754, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:15:58'),
(755, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:16:38'),
(756, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:16:38'),
(757, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:16:39'),
(758, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:16:39'),
(759, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:16:43'),
(760, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:16:59'),
(761, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:17:00'),
(762, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:17:00'),
(763, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:17:01'),
(764, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:17:01'),
(765, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:17:03'),
(766, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:22:22'),
(767, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:22:28'),
(768, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:22:30'),
(769, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:22:56'),
(770, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:22:56'),
(771, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-06-20 23:22:58'),
(772, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-06-20 23:22:58'),
(773, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:23:03'),
(774, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:23:07'),
(775, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:23:37'),
(776, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:23:42'),
(777, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-20 23:23:46'),
(778, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-20 23:23:47'),
(779, 1, '::1', 'inventory/refund', 'view the refund page', 'GET', '2018-06-20 23:23:53'),
(780, 1, '::1', '', 'view the dashboard', 'GET', '2018-06-20 23:31:06'),
(781, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-20 23:31:06'),
(782, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-20 23:31:09'),
(783, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-20 23:31:17'),
(784, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-20 23:31:29'),
(785, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-21 22:50:17'),
(786, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-21 22:50:19'),
(787, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-21 22:50:19'),
(788, 1, '::1', 'client/client', 'view the client page', 'GET', '2018-06-21 22:50:30'),
(789, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2018-06-21 22:50:33'),
(790, 1, '::1', 'client/client', 'view the client page', 'GET', '2018-06-21 22:50:36'),
(791, 1, '::1', 'warehouse/warehouse', 'view the warehouse page', 'GET', '2018-06-21 22:50:48'),
(792, 1, '::1', 'warehouse/warehouse/edit', 'view the warehouse edit page', 'GET', '2018-06-21 22:50:56'),
(793, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:50:58'),
(794, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:02'),
(795, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:03'),
(796, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:04'),
(797, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:05'),
(798, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:07'),
(799, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:08'),
(800, 1, '::1', 'warehouse/location/edit', 'view the location edit page', 'GET', '2018-06-21 22:51:11'),
(801, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-06-21 22:51:13'),
(802, 1, '::1', 'warehouse/location_print/batch', '0', 'GET', '2018-06-21 22:51:15'),
(803, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-21 22:51:23'),
(804, 1, '::1', 'client/client', 'view the client page', 'GET', '2018-06-21 22:51:28'),
(805, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-21 22:51:31'),
(806, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-21 22:51:33'),
(807, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-21 22:52:05'),
(808, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2018-06-21 22:52:08'),
(809, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-21 22:52:09'),
(810, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-21 22:52:19'),
(811, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-06-21 22:52:22'),
(812, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-21 22:53:00'),
(813, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-06-21 22:53:04'),
(814, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 22:53:09'),
(815, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-06-21 22:53:51'),
(816, 1, '::1', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-06-21 22:53:52'),
(817, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-21 22:53:54'),
(818, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2018-06-21 22:54:36'),
(819, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 22:54:47'),
(820, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-21 22:54:50'),
(821, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2018-06-21 22:54:54'),
(822, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-21 22:55:02'),
(823, 1, '::1', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2018-06-21 22:55:11'),
(824, 1, '::1', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2018-06-21 22:55:13'),
(825, 1, '::1', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2018-06-21 22:55:13'),
(826, 1, '::1', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2018-06-21 22:55:14'),
(827, 1, '::1', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2018-06-21 22:55:14'),
(828, 1, '::1', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2018-06-21 22:55:16'),
(829, 1, '::1', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2018-06-21 22:55:16'),
(830, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-21 22:55:20'),
(831, 1, '::1', 'sale/sale/add', 'view the order add page', 'POST', '2018-06-21 22:55:22'),
(832, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 22:55:22'),
(833, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:55:32'),
(834, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-21 22:55:32'),
(835, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-21 22:55:44'),
(836, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-06-21 22:55:45'),
(837, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-06-21 22:55:48'),
(838, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-06-21 22:55:50'),
(839, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2018-06-21 22:56:03'),
(840, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-21 22:56:03'),
(841, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-21 22:56:09'),
(842, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-21 22:56:15'),
(843, 1, '::1', 'check/checkout_sale/get_sale', 'try to get order for order checkout', 'GET', '2018-06-21 22:56:19'),
(844, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 22:56:21'),
(845, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:22'),
(846, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:24'),
(847, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:25'),
(848, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:26'),
(849, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 22:56:30'),
(850, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 22:56:33'),
(851, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:34'),
(852, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:35'),
(853, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-21 22:56:42'),
(854, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 22:56:45'),
(855, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-21 22:56:46'),
(856, 1, '::1', 'check/checkout_sale/get_sale', 'try to get order for order checkout', 'GET', '2018-06-21 22:56:47'),
(857, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-21 22:56:49'),
(858, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 22:57:05'),
(859, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 22:57:07'),
(860, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-21 22:57:16'),
(861, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-21 22:57:18'),
(862, 1, '::1', 'extension/platform', 'view the platform page', 'GET', '2018-06-21 22:58:43'),
(863, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-06-21 22:59:21'),
(864, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-21 23:01:50'),
(865, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-21 23:01:51'),
(866, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-21 23:02:38'),
(867, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 23:02:38'),
(868, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 23:03:01'),
(869, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-21 23:03:05'),
(870, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-06-21 23:03:06'),
(871, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-06-21 23:03:07'),
(872, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-06-21 23:03:08'),
(873, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-06-21 23:03:08'),
(874, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-06-21 23:03:10'),
(875, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-21 23:03:12'),
(876, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-21 23:03:24'),
(877, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-06-21 23:03:32'),
(878, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-21 23:04:20'),
(879, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-06-21 23:04:22'),
(880, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-21 23:04:24'),
(881, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-21 23:04:24'),
(882, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-06-21 23:04:25'),
(883, 1, '::1', 'setting/language', 'view the language page', 'GET', '2018-06-21 23:04:29'),
(884, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-06-21 23:04:33'),
(885, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-21 23:05:08'),
(886, 1, '::1', 'sale/sale/delete', 'try to delete an order', 'GET', '2018-06-21 23:05:15'),
(887, 1, '::1', 'sale/sale/reload', 'try to reload order page', 'GET', '2018-06-21 23:05:15'),
(888, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-22 01:22:49'),
(889, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-22 01:22:51'),
(890, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 01:22:51'),
(891, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:22:56'),
(892, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-22 01:22:57'),
(893, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-06-22 01:23:01'),
(894, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-06-22 01:23:02'),
(895, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-06-22 01:23:02'),
(896, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-06-22 01:23:03'),
(897, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-22 01:24:15'),
(898, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-06-22 01:24:20'),
(899, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-06-22 01:24:20'),
(900, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-06-22 01:24:20'),
(901, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-06-22 01:24:21'),
(902, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:24:21'),
(903, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:24:24'),
(904, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-06-22 01:24:31'),
(905, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2018-06-22 01:24:33'),
(906, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:24:33'),
(907, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:24:37'),
(908, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-22 01:24:38'),
(909, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:24:40'),
(910, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:24:40'),
(911, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:24:42'),
(912, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2018-06-22 01:24:43'),
(913, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:24:52'),
(914, 1, '::1', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2018-06-22 01:24:55'),
(915, 1, '::1', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2018-06-22 01:24:56'),
(916, 1, '::1', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2018-06-22 01:24:56'),
(917, 1, '::1', 'sale/sale/add', 'view the order add page', 'POST', '2018-06-22 01:24:57'),
(918, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:24:57'),
(919, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:24:59'),
(920, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:24:59'),
(921, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 01:25:05'),
(922, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:25:25'),
(923, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 01:27:26'),
(924, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:29'),
(925, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:31'),
(926, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:34'),
(927, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:35'),
(928, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:37'),
(929, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:37'),
(930, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:38'),
(931, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:41'),
(932, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:43'),
(933, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:44'),
(934, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-22 01:27:45'),
(935, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-22 01:27:49'),
(936, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:27:49'),
(937, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:27:56'),
(938, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:27:56'),
(939, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 01:28:03'),
(940, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-06-22 01:28:05'),
(941, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-06-22 01:28:07'),
(942, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-06-22 01:28:08'),
(943, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-06-22 01:28:12'),
(944, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2018-06-22 01:28:18'),
(945, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 01:28:18'),
(946, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-22 01:28:20'),
(947, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:28:23'),
(948, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:28:23'),
(949, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 01:28:28'),
(950, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-06-22 01:28:31'),
(951, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-06-22 01:28:33'),
(952, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-06-22 01:28:34'),
(953, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2018-06-22 01:28:39'),
(954, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 01:28:39'),
(955, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:28:41'),
(956, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:28:43'),
(957, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:28:44'),
(958, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:28:44'),
(959, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:28:49'),
(960, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:28:49'),
(961, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:28:53'),
(962, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:31:22'),
(963, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:31:31'),
(964, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-06-22 01:31:38'),
(965, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-06-22 01:31:38'),
(966, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-06-22 01:31:40'),
(967, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-06-22 01:31:40'),
(968, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:31:42'),
(969, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:31:43'),
(970, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:31:44'),
(971, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:31:44'),
(972, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:31:47'),
(973, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:19'),
(974, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:33:23'),
(975, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-06-22 01:33:27'),
(976, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-06-22 01:33:27'),
(977, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:33:28'),
(978, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:33:30'),
(979, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:33:32'),
(980, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:33:33'),
(981, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:33:34'),
(982, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:36'),
(983, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:33:41'),
(984, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:33:46'),
(985, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-06-22 01:33:48');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(986, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-06-22 01:33:48'),
(987, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:33:49'),
(988, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:33:51'),
(989, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-06-22 01:33:55'),
(990, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 01:33:55'),
(991, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:57'),
(992, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:58'),
(993, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:59'),
(994, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:59'),
(995, 1, '::1', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2018-06-22 01:33:59'),
(996, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:34:04'),
(997, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-06-22 01:34:15'),
(998, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 01:34:21'),
(999, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 01:34:44'),
(1000, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:34:47'),
(1001, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:34:49'),
(1002, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:50:40'),
(1003, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:51:25'),
(1004, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 01:51:27'),
(1005, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:51:28'),
(1006, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:27'),
(1007, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:53:29'),
(1008, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:53:30'),
(1009, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:30'),
(1010, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:32'),
(1011, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:35'),
(1012, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:53:36'),
(1013, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:53:37'),
(1014, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:37'),
(1015, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:53:39'),
(1016, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 01:53:40'),
(1017, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:40'),
(1018, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:53:42'),
(1019, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:53:43'),
(1020, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:43'),
(1021, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 01:53:44'),
(1022, 1, '::1', 'shipping/postpony', '0', 'POST', '2018-06-22 01:53:45'),
(1023, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:45'),
(1024, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:53:46'),
(1025, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:53:47'),
(1026, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:53:47'),
(1027, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:26'),
(1028, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:27'),
(1029, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:54:29'),
(1030, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:54:30'),
(1031, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:30'),
(1032, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:32'),
(1033, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:54:33'),
(1034, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:54:35'),
(1035, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:35'),
(1036, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 01:54:36'),
(1037, 1, '::1', 'shipping/postpony', '0', 'POST', '2018-06-22 01:54:37'),
(1038, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:37'),
(1039, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:54:38'),
(1040, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:54:39'),
(1041, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:40'),
(1042, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:54:41'),
(1043, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 01:54:42'),
(1044, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:54:42'),
(1045, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:56:19'),
(1046, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:56:20'),
(1047, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:56:22'),
(1048, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:56:22'),
(1049, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:56:24'),
(1050, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:13'),
(1051, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:57:14'),
(1052, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:57:16'),
(1053, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:16'),
(1054, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 01:57:17'),
(1055, 1, '::1', 'shipping/postpony', '0', 'POST', '2018-06-22 01:57:18'),
(1056, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:18'),
(1057, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:57:20'),
(1058, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:57:21'),
(1059, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:21'),
(1060, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:57:22'),
(1061, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 01:57:23'),
(1062, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:24'),
(1063, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:57:26'),
(1064, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:57:27'),
(1065, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:27'),
(1066, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:57:46'),
(1067, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:57:47'),
(1068, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:47'),
(1069, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:50'),
(1070, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:57:56'),
(1071, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:57:57'),
(1072, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:57:57'),
(1073, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 01:58:08'),
(1074, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 01:58:09'),
(1075, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:09'),
(1076, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 01:58:11'),
(1077, 1, '::1', 'shipping/postpony', '0', 'POST', '2018-06-22 01:58:12'),
(1078, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:12'),
(1079, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:58:14'),
(1080, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:58:16'),
(1081, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:16'),
(1082, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:58:17'),
(1083, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 01:58:18'),
(1084, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:18'),
(1085, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:44'),
(1086, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 01:58:44'),
(1087, 1, '::1', 'shipping/ups', 'view the ups setting page', 'POST', '2018-06-22 01:58:46'),
(1088, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 01:58:46'),
(1089, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 01:58:58'),
(1090, 1, '::1', '', 'view the dashboard', 'GET', '2018-06-22 02:03:21'),
(1091, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 02:03:21'),
(1092, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:03:30'),
(1093, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:03:32'),
(1094, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 02:03:39'),
(1095, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-22 02:03:45'),
(1096, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 02:03:47'),
(1097, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 02:03:48'),
(1098, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:05:12'),
(1099, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:05:12'),
(1100, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2018-06-22 02:07:15'),
(1101, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:07:15'),
(1102, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:07:15'),
(1103, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:07:24'),
(1104, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:07:25'),
(1105, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-22 02:07:32'),
(1106, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2018-06-22 02:07:33'),
(1107, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-22 02:07:42'),
(1108, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:07:42'),
(1109, 1, '::1', 'extension/payment', 'view the payment page', 'GET', '2018-06-22 02:07:46'),
(1110, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 02:07:46'),
(1111, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 02:07:48'),
(1112, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 02:09:24'),
(1113, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 02:09:24'),
(1114, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 02:09:26'),
(1115, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:09:35'),
(1116, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 02:09:59'),
(1117, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 02:10:00'),
(1118, 1, '::1', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-06-22 02:10:02'),
(1119, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 02:10:04'),
(1120, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-22 02:10:07'),
(1121, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 02:10:19'),
(1122, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-06-22 02:10:24'),
(1123, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-06-22 02:10:26'),
(1124, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 02:13:03'),
(1125, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-22 02:13:04'),
(1126, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-22 02:13:05'),
(1127, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:13:10'),
(1128, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:13:22'),
(1129, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-22 02:13:30'),
(1130, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:13:31'),
(1131, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:13:32'),
(1132, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-22 02:13:38'),
(1133, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:13:38'),
(1134, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:13:45'),
(1135, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 02:13:52'),
(1136, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-06-22 02:13:53'),
(1137, 1, '::1', '', 'view the dashboard', 'GET', '2018-06-22 02:20:08'),
(1138, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 02:20:08'),
(1139, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:20:11'),
(1140, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:20:11'),
(1141, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:20:21'),
(1142, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:20:21'),
(1143, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:23:06'),
(1144, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:23:06'),
(1145, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-06-22 02:24:31'),
(1146, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:24:31'),
(1147, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-22 02:24:33'),
(1148, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:26:32'),
(1149, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:26:32'),
(1150, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2018-06-22 02:29:48'),
(1151, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-06-22 02:29:48'),
(1152, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-06-22 02:29:48'),
(1153, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:29:54'),
(1154, 1, '::1', 'sale/label/check', 'check if shipping label is printable', 'POST', '2018-06-22 02:30:17'),
(1155, 1, '::1', 'sale/label/execute_d', '0', 'POST', '2018-06-22 02:30:17'),
(1156, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 02:49:57'),
(1157, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 02:50:00'),
(1158, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 02:50:02'),
(1159, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 02:50:05'),
(1160, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 02:50:07'),
(1161, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 02:50:10'),
(1162, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 02:53:02'),
(1163, 1, '::1', 'shipping/postpony', '0', 'GET', '2018-06-22 02:53:05'),
(1164, 1, '::1', 'shipping/ups', 'view the ups setting page', 'GET', '2018-06-22 02:53:10'),
(1165, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 02:53:12'),
(1166, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 03:03:01'),
(1167, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 03:03:04'),
(1168, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 03:03:05'),
(1169, 1, '::1', 'shipping/usps', 'view the usps setting page', 'POST', '2018-06-22 03:03:10'),
(1170, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 03:03:11'),
(1171, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 03:14:26'),
(1172, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 03:14:28'),
(1173, 1, '::1', 'shipping/fedex', '0', 'GET', '2018-06-22 03:14:30'),
(1174, 1, '::1', 'shipping/fedex', '0', 'POST', '2018-06-22 03:14:30'),
(1175, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 03:14:31'),
(1176, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-22 03:20:20'),
(1177, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2018-06-22 03:20:22'),
(1178, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2018-06-22 03:20:24'),
(1179, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-22 23:00:47'),
(1180, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-22 23:00:49'),
(1181, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-22 23:00:49'),
(1182, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-22 23:00:56'),
(1183, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-22 23:00:57'),
(1184, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-23 02:04:11'),
(1185, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-23 02:33:36'),
(1186, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-23 02:33:37'),
(1187, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 02:33:37'),
(1188, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-06-23 02:33:41'),
(1189, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-06-23 02:33:53'),
(1190, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-23 02:33:56'),
(1191, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-23 02:33:57'),
(1192, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-06-23 02:34:04'),
(1193, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-06-23 02:34:59'),
(1194, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-06-23 02:35:01'),
(1195, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-06-23 02:35:02'),
(1196, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-06-23 02:35:07'),
(1197, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-06-23 02:35:07'),
(1198, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-23 02:36:07'),
(1199, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-23 02:36:24'),
(1200, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-23 02:36:25'),
(1201, 1, '::1', '', 'view the dashboard', 'GET', '2018-06-23 02:52:37'),
(1202, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 02:52:37'),
(1203, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-23 02:52:42'),
(1204, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-23 02:52:43'),
(1205, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-23 02:59:39'),
(1206, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-06-23 03:10:21'),
(1207, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:15:05'),
(1208, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:15:11'),
(1209, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-06-23 03:15:31'),
(1210, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:15:38'),
(1211, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:16:27'),
(1212, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-23 03:16:29'),
(1213, 1, '::1', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-23 03:16:34'),
(1214, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:16:34'),
(1215, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-23 03:16:36'),
(1216, 1, '::1', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-23 03:16:39'),
(1217, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:16:39'),
(1218, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:18:36'),
(1219, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:18:36'),
(1220, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:18:39'),
(1221, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:20:00'),
(1222, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:20:02'),
(1223, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:28:00'),
(1224, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:28:03'),
(1225, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:28:09'),
(1226, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:28:13'),
(1227, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:28:25'),
(1228, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-23 03:28:30'),
(1229, 1, '::1', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-23 03:28:33'),
(1230, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:28:33'),
(1231, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:29:21'),
(1232, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:29:45'),
(1233, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-23 03:29:47'),
(1234, 1, '::1', 'store/store/edit', 'view the store edit page', 'POST', '2018-06-23 03:29:54'),
(1235, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:29:54'),
(1236, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:30:01'),
(1237, 1, '::1', 'store/store_sync_history/detail', 'view the store sync history detail page', 'GET', '2018-06-23 03:30:03'),
(1238, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:30:46'),
(1239, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-06-23 03:30:59'),
(1240, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-06-23 03:31:13'),
(1241, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-23 03:36:57'),
(1242, 1, '::1', 'store/store', 'view the store page', 'GET', '2018-06-23 03:37:00'),
(1243, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2018-06-23 03:37:02'),
(1244, NULL, '::1', '', 'view the dashboard', 'GET', '2018-06-25 18:47:43'),
(1245, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-06-25 18:47:46'),
(1246, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-06-25 18:47:46'),
(1247, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 18:47:49'),
(1248, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 18:47:51'),
(1249, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-25 18:48:01'),
(1250, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 18:48:01'),
(1251, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 18:48:03'),
(1252, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-25 18:48:09'),
(1253, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 18:48:10'),
(1254, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 18:48:15'),
(1255, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-06-25 18:52:52'),
(1256, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-06-25 18:52:54'),
(1257, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:01:53'),
(1258, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:01:54'),
(1259, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:09:37'),
(1260, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:09:40'),
(1261, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:16:41'),
(1262, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-25 19:16:46'),
(1263, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-25 19:17:21'),
(1264, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:17:21'),
(1265, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2018-06-25 19:17:27'),
(1266, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-25 19:17:32'),
(1267, 1, '::1', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2018-06-25 19:17:34'),
(1268, 1, '::1', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2018-06-25 19:17:37'),
(1269, 1, '::1', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2018-06-25 19:17:38'),
(1270, 1, '::1', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2018-06-25 19:17:38'),
(1271, 1, '::1', 'sale/sale/add', 'view the order add page', 'POST', '2018-06-25 19:17:41'),
(1272, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:17:41'),
(1273, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:17:48'),
(1274, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:17:50'),
(1275, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:23:18'),
(1276, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-06-25 19:23:23'),
(1277, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:23:23'),
(1278, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:23:25'),
(1279, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-06-25 19:23:27'),
(1280, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-06-25 19:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `client_id`, `amount`) VALUES
(1, 1, '0.00'),
(2, 2, '0.00');

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

--
-- Dumping data for table `checkin_fee`
--

INSERT INTO `checkin_fee` (`id`, `checkin_id`, `fee_id`) VALUES
(19, 4, 1),
(20, 4, 2),
(22, 5, 2),
(24, 6, 1),
(30, 10, 2),
(31, 10, 2);

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

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `code`, `location_id`, `tracking`, `status`, `width`, `length`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `label`, `note`, `description`, `date_added`, `date_modified`) VALUES
(83, '1000000000000083', 0, '', 1, '15.00', '9.00', '2.00', '0.73', 1, 5, 'postpony', 'pfg', '', '', '', '2018-06-22 01:33:51', '2018-06-22 01:33:51');

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

--
-- Dumping data for table `checkout_product`
--

INSERT INTO `checkout_product` (`id`, `checkout_id`, `inventory_id`, `quantity`) VALUES
(162, 83, 3, 1);

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

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `ip_address`, `password`, `salt`, `email`, `status`, `firstname`, `lastname`, `company`, `address`, `city`, `state`, `country`, `postal_code`, `phone`) VALUES
(1, '', 'a64e29f468e9948a4877866c661fd58f84d9933f', '34', '649790223@qq.com', 1, 'Arron', 'Dong', 'Arron Inc', '', '', '', '', '', '1386523650'),
(2, '', 'deb3da0dc5c6da3d90266eea9952ba118b7aa827', '662', 'd15875325129@outlook.com', 1, 'Huang', 'Xiaojian', 'Huang Inc', '', '', '', '', '', '1386203696');

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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `client_id`, `name`, `email`, `company`, `street`, `street2`, `city`, `state`, `country`, `zipcode`, `phone`) VALUES
(1, 2, 'Vanessa Hill', '', '', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', 'US', '29461', ''),
(2, 2, 'Emily Taggart', '', '', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', 'US', '54981', '');

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
(78, 'shipping', 'usps'),
(82, 'shipping', 'ups'),
(89, 'platform', 'square'),
(90, 'platform', 'amazon'),
(100, 'shipping', 'fedex'),
(101, 'platform', 'offline'),
(102, 'shipping', 'postpony'),
(103, 'fee', 'flat');

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
(4, 1, '', 1, 0),
(5, 1, '', 1, 0);

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

--
-- Dumping data for table `information_content`
--

INSERT INTO `information_content` (`information_id`, `language_id`, `title`, `content`) VALUES
(5, 4, '首页', '<style>\r\n.home-links {\r\n    width: 400px;\r\n    margin: 0 auto;\r\n    margin-top: 240px;\r\n}\r\n.btn-admin {\r\n    width: 130px;\r\n    float: left;\r\n}\r\n.btn-client {\r\n    width: 130px;\r\n    float: right;\r\n}\r\n</style>\r\n<div class=\"home-links\">\r\n<a href=\"http://c3.jiusite.com/admin\" class=\"btn btn-primary btn-admin\">管理者</a>\r\n<a href=\"http://c3.jiusite.com/client\" class=\"btn btn-primary btn-client\">用户</a>\r\n</div>'),
(5, 5, 'Home', '<style>\r\n.home-links {\r\n    width: 400px;\r\n    margin: 0 auto;\r\n    margin-top: 240px;\r\n}\r\n.btn-admin {\r\n    width: 130px;\r\n    float: left;\r\n}\r\n.btn-client {\r\n    width: 130px;\r\n    float: right;\r\n}\r\n</style>\r\n<div class=\"home-links\">\r\n<a href=\"http://c3.jiusite.com/admin\" class=\"btn btn-primary btn-admin\">Admin</a>\r\n<a href=\"http://c3.jiusite.com/client\" class=\"btn btn-primary btn-client\">Client</a>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `batch` varchar(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `type`, `product_id`, `location_id`, `batch`, `quantity`, `date_added`, `date_modified`) VALUES
(1, 0, 2, 2406, '', 100, '2018-06-21 22:56:03', '2018-06-21 22:56:03'),
(2, 0, 2, 2229, '', 200, '2018-06-22 01:28:18', '2018-06-22 01:28:18'),
(3, 0, 3, 2406, '', 500, '2018-06-22 01:28:39', '2018-06-22 01:28:39');

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

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `code`, `warehouse_id`, `date_added`, `date_modified`) VALUES
(2229, '111', '111000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2230, '11', '11000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2231, '34012', '34012000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2232, '34013', '34013000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2233, '27002', '27002000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2234, '27001', '27001000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2235, '27003', '27003000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2236, '27004', '27004000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2237, '45001', '45001000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2238, '45002', '45002000000', 4, '2018-03-09 07:31:05', '2018-03-09 07:31:05'),
(2239, '45003', '45003000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2240, '45004', '45004000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2241, '0227-2', '0227-2000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2242, '0227-3', '0227-3000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2243, '0227-4', '0227-4000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2244, '0227-1', '0227-1000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2245, '48012', '48012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2246, '48013', '48013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2247, '48014', '48014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2248, '44013', '44013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2249, '44014', '44014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2250, '44012', '44012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2251, '30002', '30002000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2252, '54001', '54001000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2253, '54002', '54002000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2254, '5001', '5001000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2255, '5002', '5002000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2256, '5003', '5003000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2257, '5004', '5004000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2258, '15013', '15013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2259, '15012', '15012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2260, '15011', '15011000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2261, '15014', '15014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2262, '15015', '15015000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2263, '15016', '15016000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2264, '23014', '23014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2265, '23012', '23012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2266, '23015', '23015000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2267, '23013', '23013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2268, '25013', '25013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2269, '25012', '25012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2270, '25011', '25011000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2271, '25014', '25014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2272, '49013', '49013000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2273, '49014', '49014000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2274, '49012', '49012000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2275, '49011', '49011000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2276, '29002', '29002000000', 4, '2018-03-09 07:31:06', '2018-03-09 07:31:06'),
(2277, '29003', '29003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2278, '3543', '3543000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2279, '109122', '109122000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2280, '29013', '29013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2281, '29012', '29012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2282, '29014', '29014000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2283, '49002', '49002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2284, '49003', '49003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2285, '49004', '49004000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2286, '0024013', '0024013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2287, '0024012', '0024012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2288, '0024011', '0024011000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2289, '0033003', '0033003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2290, '0033002', '0033002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2291, '0033001', '0033001000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2292, '0035003', '0035003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2293, '0035002', '0035002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2294, '0035001', '0035001000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2295, '0055011', '0055011000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2296, '0053003', '0053003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2297, '0053002', '0053002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2298, '0053001', '0053001000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2299, '0032013', '0032013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2300, '0032012', '0032012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2301, '0032011', '0032011000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2302, '0046013', '0046013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2303, '0046012', '0046012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2304, '0046011', '0046011000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2305, '0036004', '0036004000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2306, '0036003', '0036003000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2307, '0036002', '0036002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2308, '0047012', '0047012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2309, '0038013', '0038013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2310, '0038012', '0038012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2311, '0038011', '0038011000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2312, '0024001', '0024001000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2313, '0024002', '0024002000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2314, '0033014', '0033014000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2315, '0033013', '0033013000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2316, '0033012', '0033012000000', 4, '2018-03-09 07:31:07', '2018-03-09 07:31:07'),
(2317, '0033011', '0033011000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2318, '0035011', '0035011000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2319, '0035012', '0035012000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2320, '0035013', '0035013000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2321, '0055001', '0055001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2322, '0053011', '0053011000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2323, '0053012', '0053012000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2324, '0053013', '0053013000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2325, '0053014', '0053014000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2326, '0032001', '0032001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2327, '0032002', '0032002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2328, '0032003', '0032003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2329, '0046001', '0046001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2330, '0046002', '0046002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2331, '0046003', '0046003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2332, '0046004', '0046004000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2333, '0036011', '0036011000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2334, '0036012', '0036012000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2335, '0036013', '0036013000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2336, '0036014', '0036014000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2337, '0047002', '0047002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2338, '0047003', '0047003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2339, '0038001', '0038001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2340, '0038002', '0038002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2341, '0038003', '0038003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2342, '0025001', '0025001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2343, '0025002', '0025002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2344, '0025003', '0025003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2345, '0025004', '0025004000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2346, '0023001', '0023001000000', 4, '2018-03-09 07:31:08', '2018-05-07 19:05:49'),
(2347, '0023002', '0023002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2348, '0023003', '0023003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2349, '0023004', '0023004000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2351, '0015004', '0015004000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2352, '0015005', '0015005000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2353, '0015006', '0015006000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2357, '0005014', '0005014000000', 4, '2018-03-09 07:31:08', '2018-05-07 19:01:05'),
(2358, '0054011', '0054011000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2359, '0054012', '0054012000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2360, '0021001', '0021001000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2361, '0021002', '0021002000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2362, '0021003', '0021003000000', 4, '2018-03-09 07:31:08', '2018-03-09 07:31:08'),
(2363, '1033', '1033000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2364, '0057011', '0057011000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2365, '0057013', '0057013000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2366, '0058003', '0058003000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2367, '0058001', '0058001000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2368, '0114121', '0114121000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2369, '0058013', '0058013000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2370, '0034002', '0034002000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2371, '0034003', '0034003000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2372, '0027011', '0027011000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2373, '0027013', '0027013000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2374, '0045012', '0045012000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2375, '0045013', '0045013000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2376, '3512', '3512000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2377, '0048003', '0048003000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2378, '0048004', '0048004000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2379, '0061011', '0061011000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2380, '0061012', '0061012000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2381, '0044002', '0044002000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2382, '0044003', '0044003000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2383, '0044004', '0044004000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2384, '0044005', '0044005000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2385, '0030011', '0030011000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2386, '0030012', '0030012000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2387, '0030013', '0030013000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2388, '0036001', '0036001000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2389, '0047011', '0047011000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2390, '0061001', '0061001000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2391, '14', '14000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2392, '12', '12000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2393, '13', '13000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2394, '19', '19000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2395, '27', '27000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2396, '10096D', '10096D000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2397, '18', '18000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2398, '17', '17000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2399, '16', '16000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2400, '25', '25000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2401, '10099C', '10099C000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2402, '24', '24000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2403, '10092D', '10092D000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2404, '10094B', '10094B000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2405, 'B3', 'B3000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2406, '10001A', '10001A000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2407, '10002B', '10002B000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2408, '10003C', '10003C000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2409, '20', '20000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2410, '22', '22000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2411, '23', '23000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2412, '10004D', '10004D000000', 4, '2018-03-09 07:31:09', '2018-03-09 07:31:09'),
(2413, 'B4', 'B4000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2414, 'B5', 'B5000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2415, '10097A', '10097A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2416, '10091C', '10091C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2417, '10098B', '10098B000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2418, '1093A', '1093A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2419, '32', '32000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2420, '29', '29000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2421, '43', '43000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2422, '31', '31000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2423, '44', '44000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2424, '41', '41000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2425, '42', '42000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2426, '39', '39000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2427, 'B2', 'B2000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2428, 'B1', 'B1000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2429, '10007C', '10007C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2430, '10006B', '10006B000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2431, '10005A', '10005A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2432, '47', '47000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2433, '40', '40000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2434, '48', '48000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2435, '46', '46000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2436, '45', '45000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2437, '51', '51000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2438, '10021A', '10021A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2439, '10023C', '10023C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2440, '10022C', '10022C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2441, '10033A', '10033A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2442, '10020D', '10020D000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2443, '10038B', '10038B000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2444, '10034B', '10034B000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2445, '10035C', '10035C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2446, '10025A', '10025A000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2447, '10036D', '10036D000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2448, '60', '60000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2449, '10011C', '10011C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2450, '10031C', '10031C000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2451, '10008D', '10008D000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2452, '53', '53000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2453, '54', '54000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2454, '49', '49000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2455, '10010B', '10010B000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2456, '50', '50000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2457, '62', '62000000', 4, '2018-03-09 07:31:10', '2018-03-09 07:31:10'),
(2458, '0101-3-14', '0101-3-14000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2459, '0101-3-12', '0101-3-12000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2460, '0101-3-13', '0101-3-13000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2461, '0101-3-11', '0101-3-11000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2462, '0101-3-19', '0101-3-19000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2463, '0101-3-27', '0101-3-27000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2464, '0101-2-10096D', '0101-2-10096D000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2465, '0101-2-18', '0101-2-18000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2466, '0101-2-17', '0101-2-17000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2467, '0101-2-16', '0101-2-16000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2468, '0101-1-25', '0101-1-25000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2469, '0101-1-10099C', '0101-1-10099C000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2470, '0101-1-24', '0101-1-24000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2471, '0105-1-10092D', '0105-1-10092D000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2472, '0105-1-10094B', '0105-1-10094B000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2473, '0105-1-B3', '0105-1-B3000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2474, '0105-1-10001A', '0105-1-10001A000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2475, '0105-1-10002B', '0105-1-10002B000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2476, '0105-1-10003C', '0105-1-10003C000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2477, '107-2-20', '107-2-20000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2478, '0107-1-22', '0107-1-22000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2479, '0107-1-23', '0107-1-23000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2480, '0107-1-10004D', '0107-1-10004D000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2481, '0107-1-B4', '0107-1-B4000000', 4, '2018-03-09 07:42:47', '2018-03-09 07:42:47'),
(2482, '0107-1-B5', '0107-1-B5000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2483, '0107-1-10097A', '0107-1-10097A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2484, '0107-1-10091C', '0107-1-10091C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2485, '0107-1-10098B', '0107-1-10098B000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2486, '0107-1-1093A', '0107-1-1093A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2487, '0109-3-32', '0109-3-32000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2488, '0109-3-29', '0109-3-29000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2489, '0109-3-43', '0109-3-43000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2490, '0109-3-31', '0109-3-31000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2491, '0109-2-44', '0109-2-44000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2492, '0109-2-41', '0109-2-41000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2493, '0109-2-42', '0109-2-42000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2494, '0109-2-39', '0109-2-39000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2495, '0109-1-B2', '0109-1-B2000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2496, '0109-1-B1', '0109-1-B1000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2497, '0109-1-10007C', '0109-1-10007C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2498, '0109-1-10006B', '0109-1-10006B000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2499, '0109-1-10005A', '0109-1-10005A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2500, '0113-3-47', '0113-3-47000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2501, '0113-3-40', '0113-3-40000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2502, '0115-3-48', '0115-3-48000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2503, '0115-3-46', '0115-3-46000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2504, '0115-3-45', '0115-3-45000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2505, '0115-3-51', '0115-3-51000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2506, '0121-2-10021A', '0121-2-10021A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2507, '0121-2-10023C', '0121-2-10023C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2508, '0121-2-10022C', '0121-2-10022C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2509, '0121-2-10033A', '0121-2-10033A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2510, '0121-2-10020D', '0121-2-10020D000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2511, '0121-2-10038B', '0121-2-10038B000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2512, '0123-2-10034B', '0123-2-10034B000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2513, '0123-2-10035C', '0123-2-10035C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2514, '0123-2-10025A', '0123-2-10025A000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2515, '0123-2-10036D', '0123-2-10036D000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2516, '0123-2-60', '0123-2-60000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2517, '0132-2-10011C', '0132-2-10011C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2518, '0132-2-10031C', '0132-2-10031C000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2519, '0132-1-10008D', '0132-1-10008D000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2520, '0130-1-53', '0130-1-53000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2521, '0130-1-54', '0130-1-54000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2522, '0126-2-49', '0126-2-49000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2523, '0126-2-10010B', '0126-2-10010B000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2524, '0126-1-50', '0126-1-50000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2525, '0122-2-62', '0122-2-62000000', 4, '2018-03-09 07:42:48', '2018-03-09 07:42:48'),
(2526, '666', '666', 4, '2018-03-09 19:19:03', '2018-03-09 19:19:03');

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

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `upc`, `sku`, `asin`, `name`, `price`, `image`, `description`, `weight`, `weight_class_id`, `length_class_id`, `length`, `width`, `height`, `alert_quantity`, `shipping_provider`, `shipping_service`, `client_id`, `date_added`, `date_modified`) VALUES
(2, 'C0000S', 'C-0000-S', '', 'C-0000-S', '5.00', 'no_image.jpg', NULL, '11.50', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:29:40', '2018-06-18 07:41:12'),
(3, 'C0000M', 'C-0000-M', '', 'C-0000-M', '5.00', 'no_image.jpg', NULL, '11.80', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:30:54', '2018-06-18 07:42:03'),
(4, 'C0000L', 'C-0000-L', '', 'C-0000-L', '5.00', 'no_image.jpg', NULL, '12.50', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:31:49', '2018-06-18 07:42:42'),
(5, 'C0000XL', 'C-0000-XL', '', 'C-0000-XL', '5.00', 'no_image.jpg', NULL, '12.90', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:33:05', '2018-06-18 07:42:49'),
(6, 'C00002XL', 'C-0000-2XL', '', 'C-0000-2XL', '5.00', 'no_image.jpg', NULL, '13.70', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:34:04', '2018-06-18 07:42:57'),
(7, 'C00003XL', 'C-0000-3XL', '', 'C-0000-3XL', '5.00', 'no_image.jpg', NULL, '11.15', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:35:16', '2018-06-18 07:43:03'),
(8, 'C00003XL', 'C-0000-3XL', '', 'C-0000-3XL', '3.00', 'no_image.jpg', NULL, '11.15', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:35:48', '2018-06-18 07:35:48'),
(9, 'C00004XL', 'C-0000-4XL', '', 'C-0000-4XL', '5.00', 'no_image.jpg', NULL, '15.00', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:38:50', '2018-06-18 07:43:10'),
(10, 'C00005XL', 'C-0000-5XL', '', 'C-0000-5XL', '5.00', 'no_image.jpg', NULL, '15.40', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:39:41', '2018-06-18 07:43:17'),
(11, 'C00006XL', 'C-0000-6XL', '', 'C-0000-6XL', '5.00', 'no_image.jpg', NULL, '15.90', 6, 1, '9.00', '15.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:40:27', '2018-06-18 07:40:27'),
(12, 'C9991S', 'C-9991-S', '', 'C-9991-S', '5.00', 'no_image.jpg', NULL, '10.60', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:44:00', '2018-06-18 07:44:00'),
(13, 'C9991M', 'C-9991-M', '', 'C-9991-M', '5.00', 'no_image.jpg', NULL, '9.60', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:44:55', '2018-06-18 07:44:55'),
(14, 'C9991L', 'C-9991-L', '', 'C-9991-L', '5.00', 'no_image.jpg', NULL, '11.20', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:45:46', '2018-06-18 07:45:46'),
(15, 'C9991XL', 'C-9991-XL', '', 'C-9991-XL', '5.00', 'no_image.jpg', NULL, '11.90', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:46:36', '2018-06-18 07:46:36'),
(16, 'C99912XL', 'C-9991-2XL', '', 'C-9991-2XL', '5.00', 'no_image.jpg', NULL, '11.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:47:20', '2018-06-18 07:47:20'),
(17, 'C99913XL', 'C-9991-3XL', '', 'C-9991-3XL', '5.00', 'no_image.jpg', NULL, '12.20', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:48:03', '2018-06-18 07:48:03'),
(18, 'C99914XL', 'C-9991-4XL', '', 'C-9991-4XL', '5.00', 'no_image.jpg', NULL, '12.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:48:44', '2018-06-18 07:48:44'),
(19, 'C99915XL', 'C-9991-5XL', '', 'C-9991-5XL', '5.00', 'no_image.jpg', NULL, '12.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:49:29', '2018-06-18 07:49:29'),
(20, 'C99916XL', 'C-9991-6XL', '', 'C-9991-6XL', '5.00', 'no_image.jpg', NULL, '13.50', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:50:22', '2018-06-18 07:50:22'),
(21, 'C8881S', 'C-8881-S', '', 'C-8881-S', '5.00', 'no_image.jpg', NULL, '10.30', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 07:58:47', '2018-06-18 07:58:47'),
(22, 'C88812XL', 'C-8881-2XL', '', 'C-8881-2XL', '5.00', 'no_image.jpg', NULL, '11.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:01:35', '2018-06-18 08:01:35'),
(23, 'C88814XL', 'C-8881-4XL', '', 'C-8881-4XL', '5.00', 'no_image.jpg', NULL, '12.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:04:27', '2018-06-18 08:04:27'),
(24, 'C88815XL', 'C-8881-5XL', '', 'C-8881-5XL', '5.00', 'no_image.jpg', NULL, '13.40', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:05:16', '2018-06-18 08:05:16'),
(25, 'C88816XL', 'C-8881-6XL', '', 'C-8881-6XL', '5.00', 'no_image.jpg', NULL, '13.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:06:15', '2018-06-18 08:06:15'),
(26, 'C8882M', 'C-8882-M', '', 'C-8882-M', '5.00', 'no_image.jpg', NULL, '12.00', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:08:38', '2018-06-18 08:08:38'),
(27, 'C88825XL', 'C-8882-5XL', '', 'C-8882-5XL', '5.00', 'no_image.jpg', NULL, '13.40', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:11:04', '2018-06-18 08:11:04'),
(28, 'C88823XL', 'C-8882-3XL', '', 'C-8882-3XL', '5.00', 'no_image.jpg', NULL, '12.50', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:12:06', '2018-06-18 08:12:06'),
(29, 'C8884XL', 'C-8884-XL', '', 'C-8884-XL', '5.00', 'no_image.jpg', NULL, '11.60', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:18:47', '2018-06-18 08:18:47'),
(30, 'C88842XL', 'C-8884-2XL', '', 'C-8884-2XL', '5.00', 'no_image.jpg', NULL, '11.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:19:30', '2018-06-18 08:20:39'),
(31, 'C88843XL', 'C-8884-3XL', '', 'C-8884-3XL', '5.00', 'no_image.jpg', NULL, '12.50', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:21:31', '2018-06-18 08:21:31'),
(32, 'C88844XL', 'C-8884-4XL', '', 'C-8884-4XL', '5.00', 'no_image.jpg', NULL, '12.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:22:14', '2018-06-18 08:22:14'),
(33, 'C88852XL', 'C-8885-2XL', '', 'C-8885-2XL', '5.00', 'no_image.jpg', NULL, '11.80', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:23:01', '2018-06-18 08:23:01'),
(34, 'C88853XL', 'C-8885-3XL', '', 'C-8885-3XL', '5.00', 'no_image.jpg', NULL, '12.50', 6, 1, '10.00', '16.00', '2.00', 1, 'usps', 'fc', 2, '2018-06-18 08:23:40', '2018-06-18 08:23:40'),
(35, 'C7771S', 'C-7771-S', '', 'C-7771-S', '3.00', 'no_image.jpg', NULL, '7.86', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 0, '2018-06-18 08:36:06', '2018-06-18 08:36:06'),
(36, 'C7771M', 'C-7771-M', '', 'C-7771-M', '3.00', 'no_image.jpg', NULL, '7.90', 6, 1, '12.00', '8.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 08:37:23', '2018-06-18 08:37:23'),
(37, 'C7771L', 'C-7771-L', '', 'C-7771-L', '3.00', 'no_image.jpg', NULL, '8.90', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:47:26', '2018-06-18 08:47:26'),
(38, 'C7771XL', 'C-7771-XL', '', 'C-7771-XL', '3.00', 'no_image.jpg', NULL, '9.20', 6, 1, '12.00', '8.00', '0.30', 1, 'usps', 'fc', 2, '2018-06-18 08:48:12', '2018-06-18 08:48:12'),
(39, 'C77712XL', 'C-7771-2XL', '', 'C-7771-2XL', '3.00', 'no_image.jpg', NULL, '9.85', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:48:58', '2018-06-18 08:48:58'),
(40, 'C77713XL', 'C-7771-3XL', '', 'C-7771-3XL', '3.00', 'no_image.jpg', NULL, '10.50', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:50:39', '2018-06-18 08:50:39'),
(41, 'C7772S', 'C-7772-S', '', 'C-7772-S', '3.00', 'no_image.jpg', NULL, '7.80', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:51:49', '2018-06-18 08:51:49'),
(42, 'C7772M', 'C-7772-M', '', 'C-7772-M', '3.00', 'no_image.jpg', NULL, '8.81', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:52:33', '2018-06-18 08:52:33'),
(43, 'C7772L', 'C-7772-L', '', 'C-7772-L', '3.00', 'no_image.jpg', NULL, '8.50', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:53:17', '2018-06-18 08:53:17'),
(44, 'C7772XL', 'C-7772-XL', '', 'C-7772-XL', '3.00', 'no_image.jpg', NULL, '9.80', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:55:14', '2018-06-18 08:55:14'),
(45, 'C7773M', 'C-7773-M', '', 'C-7773-M', '3.00', 'no_image.jpg', NULL, '8.81', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 08:56:01', '2018-06-18 08:56:01'),
(46, 'C7773L', 'C-7773-L', '', 'C-7773-L', '3.00', 'no_image.jpg', NULL, '8.30', 6, 1, '10.00', '7.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 08:57:02', '2018-06-18 08:57:02'),
(47, 'C7773XL', 'C-7773-XL', '', 'C-7773-XL', '3.00', 'no_image.jpg', NULL, '8.90', 6, 1, '11.00', '7.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 08:57:44', '2018-06-18 08:57:44'),
(48, 'C7774S', 'C-7774-S', '', 'C-7774-S', '3.00', 'no_image.jpg', NULL, '7.70', 6, 1, '11.00', '7.00', '0.30', 1, 'usps', 'fc', 2, '2018-06-18 08:58:23', '2018-06-18 08:58:23'),
(49, 'C7774M', 'C-7774-M', '', 'C-7774-M', '3.00', 'no_image.jpg', NULL, '7.80', 6, 1, '11.00', '7.00', '0.10', 1, 'usps', 'fc', 2, '2018-06-18 08:59:02', '2018-06-18 08:59:02'),
(50, 'C7774L', 'C-7774-L', '', 'C-7774-L', '3.00', 'no_image.jpg', NULL, '8.50', 6, 1, '11.00', '7.00', '0.30', 1, 'usps', 'fc', 2, '2018-06-18 08:59:46', '2018-06-18 08:59:46'),
(51, 'C7774XL', 'C-7774-XL', '', 'C-7774-XL', '3.00', 'no_image.jpg', NULL, '9.87', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:01:28', '2018-06-18 09:01:28'),
(52, 'C66665XL', 'C-6666-5XL', '', 'C-6666-5XL', '5.00', 'no_image.jpg', NULL, '13.50', 6, 1, '8.00', '10.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 09:02:59', '2018-06-18 09:02:59'),
(53, 'C6666XL', 'C-6666-XL', '', 'C-6666-XL', '5.00', 'no_image.jpg', NULL, '9.80', 6, 1, '8.00', '10.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 09:04:52', '2018-06-18 09:04:52'),
(54, 'C66675XL', 'C-6667-5XL', '', 'C-6667-5XL', '5.00', 'no_image.jpg', NULL, '13.50', 6, 1, '8.00', '10.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 09:05:58', '2018-06-18 09:05:58'),
(55, 'C66674XL', 'C-6667-4XL', '', 'C-6667-4XL', '5.00', 'no_image.jpg', NULL, '12.40', 6, 1, '8.00', '10.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 09:07:25', '2018-06-18 09:07:25'),
(56, 'C66676XL', 'C-6667-6XL', '', 'C-6667-6XL', '5.00', 'no_image.jpg', NULL, '11.20', 6, 1, '8.00', '10.00', '0.20', 1, 'usps', 'fc', 2, '2018-06-18 09:08:34', '2018-06-18 09:08:34'),
(57, 'C9843S', 'C-9843-S', '', 'C-9843-S', '10.00', 'no_image.jpg', NULL, '13.40', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:09:34', '2018-06-18 09:09:34'),
(58, 'C9843M', 'C-9843-M', '', 'C-9843-M', '10.00', 'no_image.jpg', NULL, '13.20', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:10:23', '2018-06-18 09:10:23'),
(59, 'C9843L', 'C-9843-L', '', 'C-9843-L', '10.00', 'no_image.jpg', NULL, '13.50', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:11:02', '2018-06-18 09:11:02'),
(60, 'C9843XL', 'C-9843-XL', '', 'C-9843-XL', '10.00', 'no_image.jpg', NULL, '14.80', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:11:47', '2018-06-18 09:11:47'),
(61, 'C98432XL', 'C-9843-2XL', '', 'C-9843-2XL', '10.00', 'no_image.jpg', NULL, '14.90', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:12:26', '2018-06-18 09:12:26'),
(62, 'C1025S', 'C-1025-S', '', 'C-1025-S', '5.00', 'no_image.jpg', NULL, '9.87', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:13:21', '2018-06-18 09:13:21'),
(63, 'C1025XL', 'C-1025-XL', '', 'C-1025-XL', '5.00', 'no_image.jpg', NULL, '11.27', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:14:11', '2018-06-18 09:14:11'),
(64, 'C10252XL', 'C-1025-2XL', '', 'C-1025-2XL', '5.00', 'no_image.jpg', NULL, '11.99', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:14:55', '2018-06-18 09:14:55'),
(65, 'C10253XL', 'C-1025-3XL', '', 'C-1025-3XL', '5.00', 'no_image.jpg', NULL, '12.34', 6, 1, '12.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:15:31', '2018-06-18 09:15:31'),
(66, 'C10254XL', 'C-1025-4XL', '', 'C-1025-4XL', '5.00', 'no_image.jpg', NULL, '11.99', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:16:31', '2018-06-18 09:16:31'),
(67, 'C10255XL', 'C-1025-5XL', '', 'C-1025-5XL', '5.00', 'no_image.jpg', NULL, '11.90', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:18:22', '2018-06-18 09:18:22'),
(68, 'C10256XL', 'C-1025-6XL', '', 'C-1025-6XL', '5.00', 'no_image.jpg', NULL, '11.92', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:18:58', '2018-06-18 09:18:58'),
(69, 'C5551S', 'C-5551-S', '', 'C-5551-S', '5.00', 'no_image.jpg', NULL, '7.76', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:19:52', '2018-06-18 09:19:52'),
(70, 'C5552S', 'C-5552-S', '', 'C-5552-S', '5.00', 'no_image.jpg', NULL, '7.76', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:20:47', '2018-06-18 09:20:47'),
(71, 'C5552M', 'C-5552-M', '', 'C-5552-M', '5.00', 'no_image.jpg', NULL, '7.93', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:21:23', '2018-06-18 09:21:23'),
(72, 'C5551L', 'C-5551-L', '', 'C-5551-L', '5.00', 'no_image.jpg', NULL, '8.00', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:22:15', '2018-06-18 09:22:15'),
(73, 'C5552L', 'C-5552-L', '', 'C-5552-L', '5.00', 'no_image.jpg', NULL, '8.00', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:22:52', '2018-06-18 09:22:52'),
(74, 'C5552XL', 'C-5552-XL', '', 'C-5552-XL', '5.00', 'no_image.jpg', NULL, '8.74', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:23:31', '2018-06-18 09:23:31'),
(75, 'C55512XL', 'C-5551-2XL', '', 'C-5551-2XL', '5.00', 'no_image.jpg', NULL, '8.82', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:24:20', '2018-06-18 09:24:20'),
(76, 'C55522XL', 'C-5552-2XL', '', 'C-5552-2XL', '5.00', 'no_image.jpg', NULL, '8.82', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:24:57', '2018-06-18 09:24:57'),
(77, 'C55523XL', 'C-5552-3XL', '', 'C-5552-3XL', '5.00', 'no_image.jpg', NULL, '9.38', 6, 1, '10.00', '8.00', '0.40', 1, 'usps', 'fc', 2, '2018-06-18 09:25:38', '2018-06-18 09:25:38'),
(78, 'WUCFJ0088809', 'WU-CFJ008-8809', '', 'WUCFJ0088809', '5.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'fc', 1, '2018-06-20 20:29:13', '2018-06-20 20:29:13'),
(79, 'txdqizhihang0001', 'txdqizhihang0001', '', 'txdqizhihang0001', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '6.00', 0, 'usps', 'fc', 1, '2018-06-20 20:29:48', '2018-06-20 20:29:48'),
(80, 'TXD002-W-0', 'TXD002-W-0', '', 'TXD002-W-0', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 1, '2018-06-20 20:30:15', '2018-06-20 20:30:15'),
(81, 'TXD002-W1-Grey', 'TXD002-W1-Grey', '', 'TXD002-W1-Grey', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 0, '2018-06-20 20:31:02', '2018-06-20 20:31:02'),
(82, 'TXD002-W-5', 'TXD002-W-5', '', 'TXD002-W-5', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 1, '2018-06-20 20:31:49', '2018-06-20 20:31:49'),
(83, 'CFJ-1-BLACK', 'CFJ-1-BLACK', '', 'CFJ-1-BLACK', '5.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'pr', 1, '2018-06-20 20:32:26', '2018-06-20 20:32:26'),
(84, 'CFJ-1-Black', 'CFJ-1-Black', '', 'CFJ-1-Black', '5.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'fc', 1, '2018-06-20 20:32:58', '2018-06-20 20:32:58'),
(85, 'CFJ-1', 'CFJ-1', '', 'CFJ-1', '5.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'pr', 1, '2018-06-20 20:33:29', '2018-06-20 20:33:29'),
(86, 'WUCFJ0088809', 'WUCFJ0088809', '', 'WUCFJ0088809', '14.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'pr', 1, '2018-06-20 20:34:02', '2018-06-20 20:34:02'),
(87, 'CFJ-55-Black', 'CFJ-55-Black', '', 'CFJ-55-Black', '14.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'pr', 1, '2018-06-20 20:34:34', '2018-06-20 20:34:34'),
(88, 'TXD002-W-2', 'TXD002-W-2', '', 'TXD002-W-2', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 1, '2018-06-20 20:35:05', '2018-06-20 20:35:05'),
(89, 'TXD002-W-0', 'TXD002-W-0', '', 'TXD002-W-0', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 1, '2018-06-20 20:35:38', '2018-06-20 20:35:38'),
(90, 'txdqizhihang0001', 'txdqizhihang0001', '', 'txdqizhihang0001', '5.00', 'no_image.jpg', NULL, '10.00', 6, 1, '8.00', '6.00', '2.00', 0, 'usps', 'fc', 1, '2018-06-20 20:36:10', '2018-06-20 20:36:10'),
(91, 'WUCFJ0088809', 'WUCFJ0088809', '', 'WUCFJ0088809', '3.00', 'no_image.jpg', NULL, '1.56', 5, 1, '11.00', '11.00', '4.00', 0, 'usps', 'fc', 1, '2018-06-20 20:36:37', '2018-06-20 20:36:37');

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
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
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

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`) VALUES
(6, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '4.00', '4.00', '2.00', '0.20', 1, 5, 'usps', 'fc', '200.00', '', 1, '', '2018-06-22 01:24:57', '2018-06-25 19:17:21'),
(7, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '9.00', '15.00', '2.00', '0.77', 1, 5, 'postpony', 'pfg', '450.00', '', 1, '', '2018-06-25 19:17:41', '2018-06-25 19:23:23');

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

--
-- Dumping data for table `sale_product`
--

INSERT INTO `sale_product` (`id`, `sale_id`, `product_id`, `quantity`, `store_sale_product_id`) VALUES
(13, 6, 3, 1, ''),
(15, 7, 4, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `sale_to_checkout`
--

CREATE TABLE `sale_to_checkout` (
  `sale_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_to_checkout`
--

INSERT INTO `sale_to_checkout` (`sale_id`, `checkout_id`) VALUES
(6, 83);

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
(23816, 'usps', 'usps_client_fee', 'a:2:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"1\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(23787, 'config', 'config_smtp_hostname', '', 0),
(23815, 'usps', 'usps_fee_value', '3', 0),
(23814, 'usps', 'usps_fee_type', '0', 0),
(15438, 'system', 'system_google_map_api_key', 'AIzaSyAc05thWPUV50Wuz-ain57oVv4NU5sme_Y', 0),
(16740, 'alipay', 'alipay_sort_order', '0', 0),
(16472, 'authorize', 'authorize_id', '744fRQNwM', 0),
(16470, 'paypal', 'paypal_email', 'freeshopping.us@gmail.com', 0),
(23811, 'usps', 'usps_stamps_integration_id', 'e13dde83-59b9-4b45-9a51-3f83016fd883', 0),
(23812, 'usps', 'usps_stamps_wsdl_file', 'assets/file/stamps/stamps.prod.xml', 0),
(23813, 'usps', 'usps_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:11:\"First Class\";s:4:\"code\";s:2:\"fc\";s:6:\"method\";s:5:\"US-FC\";s:7:\"package\";s:7:\"Package\";}i:1;a:4:{s:4:\"name\";s:8:\"Priority\";s:4:\"code\";s:2:\"pr\";s:6:\"method\";s:5:\"US-PM\";s:7:\"package\";s:7:\"Package\";}}', 1),
(23685, 'ups', 'ups_client_fee', 'a:2:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"1\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(16475, 'finance', 'finance_fee_type', 'a:4:{i:0;a:4:{s:4:\"code\";s:9:\"label_fee\";s:4:\"text\";s:13:\"Label Fee($2)\";s:6:\"static\";s:1:\"1\";s:6:\"amount\";s:3:\"0.5\";}i:1;a:4:{s:4:\"code\";s:12:\"shipping_fee\";s:4:\"text\";s:12:\"Shipping Fee\";s:6:\"static\";s:1:\"0\";s:6:\"amount\";s:0:\"\";}i:2;a:4:{s:4:\"code\";s:12:\"location_fee\";s:4:\"text\";s:12:\"Location Fee\";s:6:\"static\";s:1:\"0\";s:6:\"amount\";s:0:\"\";}i:3;a:4:{s:4:\"code\";s:10:\"handle_fee\";s:4:\"text\";s:14:\"Label Fee($10)\";s:6:\"static\";s:1:\"1\";s:6:\"amount\";s:2:\"10\";}}', 1),
(16471, 'paypal', 'paypal_payment_name', 'Shipping Charge', 0),
(17123, 'wish', 'wish_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(16484, 'filter', 'filter_state', 'a:50:{i:0;a:2:{s:5:\"input\";s:7:\"alabama\";s:6:\"output\";s:2:\"AL\";}i:1;a:2:{s:5:\"input\";s:6:\"alaska\";s:6:\"output\";s:2:\"AK\";}i:2;a:2:{s:5:\"input\";s:7:\"arizona\";s:6:\"output\";s:2:\"AZ\";}i:3;a:2:{s:5:\"input\";s:8:\"arkansas\";s:6:\"output\";s:2:\"AR\";}i:4;a:2:{s:5:\"input\";s:10:\"california\";s:6:\"output\";s:2:\"CA\";}i:5;a:2:{s:5:\"input\";s:8:\"colorado\";s:6:\"output\";s:2:\"CO\";}i:6;a:2:{s:5:\"input\";s:11:\"connecticut\";s:6:\"output\";s:2:\"CT\";}i:7;a:2:{s:5:\"input\";s:8:\"delaware\";s:6:\"output\";s:2:\"DE\";}i:8;a:2:{s:5:\"input\";s:7:\"florida\";s:6:\"output\";s:2:\"FL\";}i:9;a:2:{s:5:\"input\";s:7:\"georgia\";s:6:\"output\";s:2:\"GA\";}i:10;a:2:{s:5:\"input\";s:6:\"hawaii\";s:6:\"output\";s:2:\"HI\";}i:11;a:2:{s:5:\"input\";s:5:\"idaho\";s:6:\"output\";s:2:\"ID\";}i:12;a:2:{s:5:\"input\";s:8:\"illinois\";s:6:\"output\";s:2:\"IL\";}i:13;a:2:{s:5:\"input\";s:7:\"indiana\";s:6:\"output\";s:2:\"IN\";}i:14;a:2:{s:5:\"input\";s:4:\"iowa\";s:6:\"output\";s:2:\"IA\";}i:15;a:2:{s:5:\"input\";s:6:\"kansas\";s:6:\"output\";s:2:\"KS\";}i:16;a:2:{s:5:\"input\";s:8:\"kentucky\";s:6:\"output\";s:2:\"KY\";}i:17;a:2:{s:5:\"input\";s:9:\"louisiana\";s:6:\"output\";s:2:\"LA\";}i:18;a:2:{s:5:\"input\";s:5:\"maine\";s:6:\"output\";s:2:\"ME\";}i:19;a:2:{s:5:\"input\";s:8:\"maryland\";s:6:\"output\";s:2:\"MD\";}i:20;a:2:{s:5:\"input\";s:13:\"massachusetts\";s:6:\"output\";s:2:\"MA\";}i:21;a:2:{s:5:\"input\";s:8:\"michigan\";s:6:\"output\";s:2:\"MI\";}i:22;a:2:{s:5:\"input\";s:9:\"minnesota\";s:6:\"output\";s:2:\"MN\";}i:23;a:2:{s:5:\"input\";s:12:\"mississippi \";s:6:\"output\";s:2:\"MS\";}i:24;a:2:{s:5:\"input\";s:8:\"missouri\";s:6:\"output\";s:2:\"MO\";}i:25;a:2:{s:5:\"input\";s:7:\"montana\";s:6:\"output\";s:2:\"MT\";}i:26;a:2:{s:5:\"input\";s:8:\"nebraska\";s:6:\"output\";s:2:\"NE\";}i:27;a:2:{s:5:\"input\";s:6:\"nevada\";s:6:\"output\";s:2:\"NV\";}i:28;a:2:{s:5:\"input\";s:13:\"new hampshire\";s:6:\"output\";s:2:\"NH\";}i:29;a:2:{s:5:\"input\";s:10:\"new jersey\";s:6:\"output\";s:2:\"NJ\";}i:30;a:2:{s:5:\"input\";s:10:\"new mexico\";s:6:\"output\";s:2:\"NM\";}i:31;a:2:{s:5:\"input\";s:8:\"new york\";s:6:\"output\";s:2:\"NY\";}i:32;a:2:{s:5:\"input\";s:14:\"north carolina\";s:6:\"output\";s:2:\"NC\";}i:33;a:2:{s:5:\"input\";s:12:\"north dakota\";s:6:\"output\";s:2:\"ND\";}i:34;a:2:{s:5:\"input\";s:4:\"ohio\";s:6:\"output\";s:2:\"OH\";}i:35;a:2:{s:5:\"input\";s:8:\"oklahoma\";s:6:\"output\";s:2:\"OK\";}i:36;a:2:{s:5:\"input\";s:6:\"oregon\";s:6:\"output\";s:2:\"OR\";}i:37;a:2:{s:5:\"input\";s:12:\"pennsylvania\";s:6:\"output\";s:2:\"PA\";}i:38;a:2:{s:5:\"input\";s:12:\"rhode island\";s:6:\"output\";s:2:\"RI\";}i:39;a:2:{s:5:\"input\";s:14:\"south carolina\";s:6:\"output\";s:2:\"SC\";}i:40;a:2:{s:5:\"input\";s:12:\"south dakota\";s:6:\"output\";s:2:\"SD\";}i:41;a:2:{s:5:\"input\";s:9:\"tennessee\";s:6:\"output\";s:2:\"TN\";}i:42;a:2:{s:5:\"input\";s:5:\"texas\";s:6:\"output\";s:2:\"TX\";}i:43;a:2:{s:5:\"input\";s:4:\"utah\";s:6:\"output\";s:2:\"UT\";}i:44;a:2:{s:5:\"input\";s:7:\"vermont\";s:6:\"output\";s:2:\"VT\";}i:45;a:2:{s:5:\"input\";s:8:\"virginia\";s:6:\"output\";s:2:\"VA\";}i:46;a:2:{s:5:\"input\";s:10:\"washington\";s:6:\"output\";s:2:\"WA\";}i:47;a:2:{s:5:\"input\";s:13:\"west virginia\";s:6:\"output\";s:2:\"WV\";}i:48;a:2:{s:5:\"input\";s:9:\"wisconsin\";s:6:\"output\";s:2:\"WI\";}i:49;a:2:{s:5:\"input\";s:7:\"wyoming\";s:6:\"output\";s:2:\"WY\";}}', 1),
(17126, 'ebay', 'ebay_field', 'a:6:{i:0;s:6:\"Dev Id\";i:1;s:6:\"App Id\";i:2;s:7:\"Cert Id\";i:3;s:8:\"Username\";i:4;s:7:\"Site Id\";i:5;s:5:\"Token\";}', 1),
(17128, 'ebay', 'ebay_status', '1', 0),
(16739, 'alipay', 'alipay_key', 'dffvsdmmmdilxzawil22206', 0),
(16738, 'alipay', 'alipay_seller_id', '850025472000772009660', 0),
(17215, 'square', 'square_sort_order', '5', 0),
(17121, 'opencart', 'opencart_sort_order', '1', 0),
(17120, 'opencart', 'opencart_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(23808, 'usps', 'usps_sort_order', '0', 0),
(23809, 'usps', 'usps_stamps_username', 'FSUS', 0),
(23810, 'usps', 'usps_stamps_password', 'John316', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(17216, 'square', 'square_status', '1', 0),
(23807, 'usps', 'usps_status', '1', 0),
(23675, 'ups', 'ups_length_unit', 'INCH', 0),
(23676, 'ups', 'ups_weight_unit', 'OZ', 0),
(23677, 'ups', 'ups_image_type', 'PNG', 0),
(23678, 'ups', 'ups_debug_mode', '1', 0),
(23679, 'ups', 'ups_status', '1', 0),
(23680, 'ups', 'ups_sort_order', '0', 0),
(23681, 'ups', 'ups_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:10:\"UPS Ground\";s:4:\"code\";s:2:\"gr\";s:6:\"method\";s:2:\"03\";s:7:\"package\";s:2:\"04\";}i:1;a:4:{s:4:\"name\";s:15:\"UPS 2nd Day Air\";s:4:\"code\";s:4:\"2nda\";s:6:\"method\";s:2:\"02\";s:7:\"package\";s:2:\"04\";}}', 1),
(23682, 'ups', 'ups_state_mapping', 'a:48:{i:0;a:2:{s:10:\"state_long\";s:7:\"alabama\";s:11:\"state_short\";s:2:\"AL\";}i:1;a:2:{s:10:\"state_long\";s:6:\"alaska\";s:11:\"state_short\";s:2:\"AK\";}i:2;a:2:{s:10:\"state_long\";s:7:\"arizona\";s:11:\"state_short\";s:2:\"AZ\";}i:3;a:2:{s:10:\"state_long\";s:8:\"arkansas\";s:11:\"state_short\";s:2:\"AR\";}i:4;a:2:{s:10:\"state_long\";s:10:\"california\";s:11:\"state_short\";s:2:\"CA\";}i:5;a:2:{s:10:\"state_long\";s:8:\"colorado\";s:11:\"state_short\";s:2:\"CO\";}i:6;a:2:{s:10:\"state_long\";s:11:\"connecticut\";s:11:\"state_short\";s:2:\"CT\";}i:7;a:2:{s:10:\"state_long\";s:8:\"delaware\";s:11:\"state_short\";s:2:\"DE\";}i:8;a:2:{s:10:\"state_long\";s:7:\"florida\";s:11:\"state_short\";s:2:\"FL\";}i:9;a:2:{s:10:\"state_long\";s:7:\"georgia\";s:11:\"state_short\";s:2:\"GA\";}i:10;a:2:{s:10:\"state_long\";s:6:\"hawaii\";s:11:\"state_short\";s:2:\"HI\";}i:11;a:2:{s:10:\"state_long\";s:5:\"idaho\";s:11:\"state_short\";s:2:\"ID\";}i:12;a:2:{s:10:\"state_long\";s:8:\"illinois\";s:11:\"state_short\";s:2:\"IN\";}i:13;a:2:{s:10:\"state_long\";s:4:\"iowa\";s:11:\"state_short\";s:2:\"IA\";}i:14;a:2:{s:10:\"state_long\";s:6:\"kansas\";s:11:\"state_short\";s:2:\"KS\";}i:15;a:2:{s:10:\"state_long\";s:8:\"kentucky\";s:11:\"state_short\";s:2:\"KY\";}i:16;a:2:{s:10:\"state_long\";s:9:\"louisiana\";s:11:\"state_short\";s:2:\"LA\";}i:17;a:2:{s:10:\"state_long\";s:5:\"maine\";s:11:\"state_short\";s:2:\"ME\";}i:18;a:2:{s:10:\"state_long\";s:8:\"maryland\";s:11:\"state_short\";s:2:\"MD\";}i:19;a:2:{s:10:\"state_long\";s:13:\"massachusetts\";s:11:\"state_short\";s:2:\"MA\";}i:20;a:2:{s:10:\"state_long\";s:8:\"michigan\";s:11:\"state_short\";s:2:\"MI\";}i:21;a:2:{s:10:\"state_long\";s:9:\"minnesota\";s:11:\"state_short\";s:2:\"MN\";}i:22;a:2:{s:10:\"state_long\";s:12:\"mississippi \";s:11:\"state_short\";s:2:\"MS\";}i:23;a:2:{s:10:\"state_long\";s:8:\"missouri\";s:11:\"state_short\";s:2:\"MO\";}i:24;a:2:{s:10:\"state_long\";s:7:\"montana\";s:11:\"state_short\";s:2:\"NE\";}i:25;a:2:{s:10:\"state_long\";s:6:\"nevada\";s:11:\"state_short\";s:2:\"NV\";}i:26;a:2:{s:10:\"state_long\";s:13:\"new hampshire\";s:11:\"state_short\";s:2:\"NH\";}i:27;a:2:{s:10:\"state_long\";s:10:\"new jersey\";s:11:\"state_short\";s:2:\"NJ\";}i:28;a:2:{s:10:\"state_long\";s:10:\"new mexico\";s:11:\"state_short\";s:2:\"NM\";}i:29;a:2:{s:10:\"state_long\";s:8:\"new york\";s:11:\"state_short\";s:2:\"NY\";}i:30;a:2:{s:10:\"state_long\";s:14:\"north carolina\";s:11:\"state_short\";s:2:\"NC\";}i:31;a:2:{s:10:\"state_long\";s:12:\"north dakota\";s:11:\"state_short\";s:2:\"ND\";}i:32;a:2:{s:10:\"state_long\";s:4:\"ohio\";s:11:\"state_short\";s:2:\"OH\";}i:33;a:2:{s:10:\"state_long\";s:8:\"oklahoma\";s:11:\"state_short\";s:2:\"OK\";}i:34;a:2:{s:10:\"state_long\";s:6:\"oregon\";s:11:\"state_short\";s:2:\"OR\";}i:35;a:2:{s:10:\"state_long\";s:12:\"pennsylvania\";s:11:\"state_short\";s:2:\"PA\";}i:36;a:2:{s:10:\"state_long\";s:12:\"rhode island\";s:11:\"state_short\";s:2:\"RI\";}i:37;a:2:{s:10:\"state_long\";s:14:\"south carolina\";s:11:\"state_short\";s:2:\"SC\";}i:38;a:2:{s:10:\"state_long\";s:12:\"south dakota\";s:11:\"state_short\";s:2:\"SD\";}i:39;a:2:{s:10:\"state_long\";s:9:\"tennessee\";s:11:\"state_short\";s:2:\"TN\";}i:40;a:2:{s:10:\"state_long\";s:5:\"texas\";s:11:\"state_short\";s:2:\"TX\";}i:41;a:2:{s:10:\"state_long\";s:4:\"utah\";s:11:\"state_short\";s:2:\"UT\";}i:42;a:2:{s:10:\"state_long\";s:7:\"vermont\";s:11:\"state_short\";s:2:\"VT\";}i:43;a:2:{s:10:\"state_long\";s:8:\"virginia\";s:11:\"state_short\";s:2:\"VA\";}i:44;a:2:{s:10:\"state_long\";s:10:\"washington\";s:11:\"state_short\";s:2:\"WA\";}i:45;a:2:{s:10:\"state_long\";s:13:\"west virginia\";s:11:\"state_short\";s:2:\"WV\";}i:46;a:2:{s:10:\"state_long\";s:9:\"wisconsin\";s:11:\"state_short\";s:2:\"WI\";}i:47;a:2:{s:10:\"state_long\";s:7:\"wyoming\";s:11:\"state_short\";s:2:\"WY\";}}', 1),
(23683, 'ups', 'ups_fee_type', '0', 0),
(23674, 'ups', 'ups_phone', '6263008400', 0),
(23806, 'usps', 'usps_debug_mode', '0', 0),
(23805, 'usps', 'usps_postcode', '91789', 0),
(23804, 'usps', 'usps_country', 'US', 0),
(17647, 'amazon', 'amazon_field', 'a:6:{i:0;s:6:\"Dev Id\";i:1;s:6:\"App Id\";i:2;s:7:\"Cert Id\";i:3;s:8:\"Username\";i:4;s:7:\"Site Id\";i:5;s:5:\"Token\";}', 1),
(17648, 'amazon', 'amazon_status', '0', 0),
(17649, 'amazon', 'amazon_sort_order', '0', 0),
(18696, 'offline', 'offline_status', '1', 0),
(18695, 'offline', 'offline_sort_order', '0', 0),
(23785, 'config', 'config_default_order_shipping_provider', 'postpony', 0),
(23784, 'config', 'config_weight_class_id', '5', 0),
(23783, 'config', 'config_length_class_id', '1', 0),
(23782, 'config', 'config_information_front_id', '5', 0),
(23673, 'ups', 'ups_description', 'Prolineshipping', 0),
(23842, 'fedex', 'fedex_client_fee', 'a:2:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"1\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(23827, 'fedex', 'fedex_state', 'CA', 0),
(23828, 'fedex', 'fedex_postcode', '91731', 0),
(23829, 'fedex', 'fedex_country', 'US', 0),
(23830, 'fedex', 'fedex_owner', 'Tony', 0),
(23831, 'fedex', 'fedex_phone', '6263008400', 0),
(23832, 'fedex', 'fedex_length_unit', 'IN', 0),
(23833, 'fedex', 'fedex_weight_unit', 'LB', 0),
(23834, 'fedex', 'fedex_image_type', 'PNG', 0),
(23835, 'fedex', 'fedex_debug_mode', '1', 0),
(23836, 'fedex', 'fedex_status', '1', 0),
(23837, 'fedex', 'fedex_sort_order', '0', 0),
(23838, 'fedex', 'fedex_service', 'a:1:{i:0;a:4:{s:4:\"name\";s:19:\"Fedex Home Delivery\";s:4:\"code\";s:3:\"ghd\";s:6:\"method\";s:20:\"GROUND_HOME_DELIVERY\";s:7:\"package\";s:14:\"YOUR_PACKAGING\";}}', 1),
(23839, 'fedex', 'fedex_state_mapping', 'a:47:{i:0;a:2:{s:10:\"state_long\";s:7:\"alabama\";s:11:\"state_short\";s:2:\"AL\";}i:1;a:2:{s:10:\"state_long\";s:6:\"alaska\";s:11:\"state_short\";s:2:\"AK\";}i:2;a:2:{s:10:\"state_long\";s:7:\"arizona\";s:11:\"state_short\";s:2:\"AZ\";}i:3;a:2:{s:10:\"state_long\";s:8:\"arkansas\";s:11:\"state_short\";s:2:\"AR\";}i:4;a:2:{s:10:\"state_long\";s:10:\"california\";s:11:\"state_short\";s:2:\"CA\";}i:5;a:2:{s:10:\"state_long\";s:8:\"colorado\";s:11:\"state_short\";s:2:\"CO\";}i:6;a:2:{s:10:\"state_long\";s:11:\"connecticut\";s:11:\"state_short\";s:2:\"CT\";}i:7;a:2:{s:10:\"state_long\";s:8:\"delaware\";s:11:\"state_short\";s:2:\"DE\";}i:8;a:2:{s:10:\"state_long\";s:7:\"florida\";s:11:\"state_short\";s:2:\"FL\";}i:9;a:2:{s:10:\"state_long\";s:7:\"georgia\";s:11:\"state_short\";s:2:\"GA\";}i:10;a:2:{s:10:\"state_long\";s:6:\"hawaii\";s:11:\"state_short\";s:2:\"HI\";}i:11;a:2:{s:10:\"state_long\";s:5:\"idaho\";s:11:\"state_short\";s:2:\"ID\";}i:12;a:2:{s:10:\"state_long\";s:8:\"illinois\";s:11:\"state_short\";s:2:\"IN\";}i:13;a:2:{s:10:\"state_long\";s:4:\"iowa\";s:11:\"state_short\";s:2:\"IA\";}i:14;a:2:{s:10:\"state_long\";s:6:\"kansas\";s:11:\"state_short\";s:2:\"KS\";}i:15;a:2:{s:10:\"state_long\";s:8:\"kentucky\";s:11:\"state_short\";s:2:\"KY\";}i:16;a:2:{s:10:\"state_long\";s:9:\"louisiana\";s:11:\"state_short\";s:2:\"LA\";}i:17;a:2:{s:10:\"state_long\";s:5:\"maine\";s:11:\"state_short\";s:2:\"ME\";}i:18;a:2:{s:10:\"state_long\";s:8:\"maryland\";s:11:\"state_short\";s:2:\"MD\";}i:19;a:2:{s:10:\"state_long\";s:13:\"massachusetts\";s:11:\"state_short\";s:2:\"MA\";}i:20;a:2:{s:10:\"state_long\";s:8:\"michigan\";s:11:\"state_short\";s:2:\"MI\";}i:21;a:2:{s:10:\"state_long\";s:9:\"minnesota\";s:11:\"state_short\";s:2:\"MN\";}i:22;a:2:{s:10:\"state_long\";s:11:\"mississippi\";s:11:\"state_short\";s:2:\"MS\";}i:23;a:2:{s:10:\"state_long\";s:8:\"missouri\";s:11:\"state_short\";s:2:\"MO\";}i:24;a:2:{s:10:\"state_long\";s:7:\"montana\";s:11:\"state_short\";s:2:\"NE\";}i:25;a:2:{s:10:\"state_long\";s:6:\"nevada\";s:11:\"state_short\";s:2:\"NV\";}i:26;a:2:{s:10:\"state_long\";s:13:\"new hampshire\";s:11:\"state_short\";s:2:\"NH\";}i:27;a:2:{s:10:\"state_long\";s:10:\"new mexico\";s:11:\"state_short\";s:2:\"NM\";}i:28;a:2:{s:10:\"state_long\";s:8:\"new york\";s:11:\"state_short\";s:2:\"NY\";}i:29;a:2:{s:10:\"state_long\";s:14:\"north carolina\";s:11:\"state_short\";s:2:\"NC\";}i:30;a:2:{s:10:\"state_long\";s:12:\"north dakota\";s:11:\"state_short\";s:2:\"ND\";}i:31;a:2:{s:10:\"state_long\";s:4:\"ohio\";s:11:\"state_short\";s:2:\"OH\";}i:32;a:2:{s:10:\"state_long\";s:8:\"oklahoma\";s:11:\"state_short\";s:2:\"OK\";}i:33;a:2:{s:10:\"state_long\";s:6:\"oregon\";s:11:\"state_short\";s:2:\"OR\";}i:34;a:2:{s:10:\"state_long\";s:12:\"pennsylvania\";s:11:\"state_short\";s:2:\"PA\";}i:35;a:2:{s:10:\"state_long\";s:12:\"rhode island\";s:11:\"state_short\";s:2:\"RI\";}i:36;a:2:{s:10:\"state_long\";s:14:\"south carolina\";s:11:\"state_short\";s:2:\"SC\";}i:37;a:2:{s:10:\"state_long\";s:12:\"south dakota\";s:11:\"state_short\";s:2:\"SD\";}i:38;a:2:{s:10:\"state_long\";s:9:\"tennessee\";s:11:\"state_short\";s:2:\"TN\";}i:39;a:2:{s:10:\"state_long\";s:5:\"texas\";s:11:\"state_short\";s:2:\"TX\";}i:40;a:2:{s:10:\"state_long\";s:4:\"utah\";s:11:\"state_short\";s:2:\"UT\";}i:41;a:2:{s:10:\"state_long\";s:7:\"vermont\";s:11:\"state_short\";s:2:\"VT\";}i:42;a:2:{s:10:\"state_long\";s:8:\"virginia\";s:11:\"state_short\";s:2:\"VA\";}i:43;a:2:{s:10:\"state_long\";s:10:\"washington\";s:11:\"state_short\";s:2:\"WA\";}i:44;a:2:{s:10:\"state_long\";s:13:\"west virginia\";s:11:\"state_short\";s:2:\"WV\";}i:45;a:2:{s:10:\"state_long\";s:9:\"wisconsin\";s:11:\"state_short\";s:2:\"WI\";}i:46;a:2:{s:10:\"state_long\";s:7:\"wyoming\";s:11:\"state_short\";s:2:\"WY\";}}', 1),
(23672, 'ups', 'ups_owner', 'Prolineshipping', 0),
(23803, 'usps', 'usps_state', 'CA', 0),
(23802, 'usps', 'usps_city', 'Walnut', 0),
(23841, 'fedex', 'fedex_fee_value', '3', 0),
(23840, 'fedex', 'fedex_fee_type', '0', 0),
(23801, 'usps', 'usps_street2', 'STE 108', 0),
(23800, 'usps', 'usps_street', '20803 Valley Blvd', 0),
(23799, 'usps', 'usps_phone', '9098699466', 0),
(23793, 'usps', 'usps_user_id', '609FREES0002', 0),
(23794, 'usps', 'usps_time_zone', 'America/Los_Angeles', 0),
(23795, 'usps', 'usps_owner', 'FSUS', 0),
(23796, 'usps', 'usps_first_name', 'Tim', 0),
(23797, 'usps', 'usps_last_name', 'Lee', 0),
(23671, 'ups', 'ups_quote_type', 'commercial', 0),
(23670, 'ups', 'ups_country', 'US', 0),
(23669, 'ups', 'ups_postcode', '91731', 0),
(23668, 'ups', 'ups_state', 'CA', 0),
(23667, 'ups', 'ups_city', 'EL Monte', 0),
(23781, 'config', 'config_language_id', '5', 0),
(23780, 'config', 'config_printnode_general_printer_id', '431808', 0),
(23823, 'fedex', 'fedex_origin', 'US', 0),
(23824, 'fedex', 'fedex_street', '9910 Baldwin Place', 0),
(23825, 'fedex', 'fedex_street2', '', 0),
(23826, 'fedex', 'fedex_city', 'El Monte', 0),
(23666, 'ups', 'ups_street2', 'B', 0),
(23665, 'ups', 'ups_street', '9852 Baldwin Place', 0),
(23664, 'ups', 'ups_origin', 'US', 0),
(23663, 'ups', 'ups_time_zone', 'America/Los_Angeles', 0),
(23662, 'ups', 'ups_classification_code', '01', 0),
(23661, 'ups', 'ups_pickup_method', '03', 0),
(23658, 'ups', 'ups_username', 'proline18', 0),
(23659, 'ups', 'ups_password', 'Proline2017', 0),
(23779, 'config', 'config_printnode_label_printer_id', '431808', 0),
(23602, 'postpony', 'postpony_fee_type', '0', 0),
(23603, 'postpony', 'postpony_fee_value', '0', 0),
(23604, 'postpony', 'postpony_client_fee', 'a:2:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"1\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(23600, 'postpony', 'postpony_service', 'a:4:{i:0;a:4:{s:4:\"name\";s:21:\"Postpony Fedex Ground\";s:4:\"code\";s:3:\"pfg\";s:6:\"method\";s:11:\"FedExGround\";s:7:\"package\";s:12:\"YOUR_PACKAGE\";}i:1;a:4:{s:4:\"name\";s:19:\"Postpony UPS Ground\";s:4:\"code\";s:3:\"pug\";s:6:\"method\";s:9:\"UpsGround\";s:7:\"package\";s:7:\"PACKAGE\";}i:2;a:4:{s:4:\"name\";s:25:\"Postpony USPS First Class\";s:4:\"code\";s:5:\"pusfc\";s:6:\"method\";s:18:\"UspsFirstClassMail\";s:7:\"package\";s:7:\"PACKAGE\";}i:3;a:4:{s:4:\"name\";s:22:\"Postpony USPS Priority\";s:4:\"code\";s:4:\"pusp\";s:6:\"method\";s:16:\"UspsPriorityMail\";s:7:\"package\";s:7:\"PACKAGE\";}}', 1),
(23601, 'postpony', 'postpony_state_mapping', 'a:1:{i:0;a:2:{s:10:\"state_long\";s:0:\"\";s:11:\"state_short\";s:0:\"\";}}', 1),
(23599, 'postpony', 'postpony_sort_order', '0', 0),
(23598, 'postpony', 'postpony_status', '1', 0),
(23597, 'postpony', 'postpony_debug_mode', '1', 0),
(23596, 'postpony', 'postpony_weight_unit', 'LB', 0),
(23595, 'postpony', 'postpony_length_unit', 'IN', 0),
(23778, 'config', 'config_printnode_api_key', 'ecc393aa3ff30e0dd3b27f40ce0a033dc9a7b948', 0),
(23777, 'config', 'config_printnode_width', '180', 0),
(23594, 'postpony', 'postpony_phone', '9098956073', 0),
(23593, 'postpony', 'postpony_owner', 'SHAN SUN', 0),
(23592, 'postpony', 'postpony_country', 'US', 0),
(23776, 'config', 'config_printnode_position_y', '20', 0),
(23775, 'config', 'config_printnode_position_x', '14', 0),
(23774, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(23773, 'config', 'config_location_barcode_batch_margin', '200', 0),
(23772, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(23771, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(23770, 'config', 'config_location_barcode_batch_posy', '20', 0),
(23769, 'config', 'config_location_barcode_batch_posx', '10', 0),
(22875, 'flat', 'flat_amount', '20', 0),
(22876, 'flat', 'flat_status', '1', 0),
(23768, 'config', 'config_location_barcode_batch_height', '300', 0),
(23767, 'config', 'config_location_barcode_batch_width', '630', 0),
(23766, 'config', 'config_location_barcode_code_size', '80', 0),
(23765, 'config', 'config_location_barcode_name_size', '200', 0),
(23764, 'config', 'config_location_barcode_posy', '200', 0),
(23763, 'config', 'config_location_barcode_posx', '1', 0),
(23762, 'config', 'config_location_barcode_height', '400', 0),
(23761, 'config', 'config_location_barcode_width', '6', 0),
(23759, 'config', 'config_label_width', '60', 0),
(23760, 'config', 'config_label_posy', '0', 0),
(23757, 'config', 'config_autocomplete_limit', '5', 0),
(23758, 'config', 'config_label_width_type', '0', 0),
(23756, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(23755, 'config', 'config_dashboard_order_limit', '7', 0),
(23754, 'config', 'config_dashboard_activity_limit', '8', 0),
(23798, 'usps', 'usps_company', 'Free Shopping Inc', 0),
(23660, 'ups', 'ups_account_number', '3FR703', 0),
(23657, 'ups', 'ups_access_key', '7D3678D352FE879D', 0),
(23589, 'postpony', 'postpony_city', 'South El Monte', 0),
(23591, 'postpony', 'postpony_postcode', '91733', 0),
(23586, 'postpony', 'postpony_company', 'intadat Inc', 0),
(23587, 'postpony', 'postpony_street', '1467 Lidcombe Ave', 0),
(23590, 'postpony', 'postpony_state', 'CA', 0),
(23820, 'fedex', 'fedex_password', 'GYuOzp9a0uGbUcw25uLnJ4vD7', 0),
(23822, 'fedex', 'fedex_time_zone', 'America/Los_Angeles', 0),
(23821, 'fedex', 'fedex_company', 'Prolineshipping Inc', 0),
(23819, 'fedex', 'fedex_key', 'UOLSEeKVrlJSMEKb', 0),
(23818, 'fedex', 'fedex_meter_number', '119000362', 0),
(23817, 'fedex', 'fedex_account_number', '510087720', 0),
(23588, 'postpony', 'postpony_street2', '', 0),
(23583, 'postpony', 'postpony_key', 'PY', 0),
(23584, 'postpony', 'postpony_pwd', 'pypypypypy', 0),
(23585, 'postpony', 'postpony_authorized_key', 'TESTTOKEN-ske39De3mkC39d', 0),
(23684, 'ups', 'ups_fee_value', '3', 0),
(23786, 'config', 'config_default_order_shipping_service', 'pfg', 0),
(23753, 'config', 'config_sale_product_page_limit', '15', 0),
(23752, 'config', 'config_page_limit', '10', 0),
(23751, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(23788, 'config', 'config_smtp_username', '', 0),
(23789, 'config', 'config_smtp_password', '', 0),
(23790, 'config', 'config_smtp_port', '', 0),
(23791, 'config', 'config_smtp_timeout', '', 0),
(23792, 'config', 'config_google_key', '', 0);

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

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `client_id`, `name`, `platform`, `setting`, `default_sale_status_id`, `default_sale_shipping_provider`, `default_sale_shipping_service`, `active_download`, `active_upload`, `sync_inventory`, `sync_single_warehouse`, `sync_warehouse_id`) VALUES
(1, 1, 'Arron 2894355100', 'wish', 'a:5:{s:5:\"token\";s:32:\"70bcc38ae06d431a997f6a14046e6fdc\";s:14:\"download_limit\";s:2:\"20\";s:12:\"upload_limit\";s:2:\"20\";s:11:\"recent_days\";s:2:\"10\";s:5:\"order\";s:1:\"0\";}', 1, 'usps', 'fc', 0, 0, 1, 0, NULL),
(2, 1, 'Arron 312988716', 'wish', 'a:5:{s:5:\"token\";s:32:\"f9a6caed681b426abb24a8c1197f18a7\";s:14:\"download_limit\";s:3:\"100\";s:12:\"upload_limit\";s:3:\"100\";s:11:\"recent_days\";s:2:\"10\";s:5:\"order\";s:1:\"1\";}', 1, 'usps', 'fc', 0, 0, 1, 0, NULL),
(3, 2, 'Huang Offine', 'offline', 's:0:\"\";', 1, 'usps', 'fc', 0, 0, 1, 0, NULL);

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

--
-- Dumping data for table `store_sync`
--

INSERT INTO `store_sync` (`id`, `store_id`, `enabled`, `type`, `active`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 0, 1, 0),
(3, 2, 1, 0, 1),
(4, 2, 0, 1, 0),
(5, 3, 0, 0, 0),
(6, 3, 0, 1, 0);

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

--
-- Dumping data for table `store_sync_history`
--

INSERT INTO `store_sync_history` (`id`, `store_id`, `type`, `status`, `date_added`, `messages`) VALUES
(13, 1, 0, 2, '2018-06-23 03:00:06', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(14, 1, 0, 2, '2018-06-23 03:10:24', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(15, 1, 0, 2, '2018-06-23 03:18:19', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(16, 2, 0, 2, '2018-06-23 03:18:23', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(17, 1, 0, 2, '2018-06-23 03:18:28', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(18, 2, 0, 2, '2018-06-23 03:18:32', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(19, 1, 0, 2, '2018-06-23 03:27:57', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}'),
(20, 2, 0, 2, '2018-06-23 03:28:07', 'a:2:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:30:\"Your access token has expired.\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:58:\"<strong>Not importing anything due to sync errors</strong>\";}}');
INSERT INTO `store_sync_history` (`id`, `store_id`, `type`, `status`, `date_added`, `messages`) VALUES
(21, 1, 0, 3, '2018-06-23 03:29:56', 'a:192:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:59:\"order <strong>#5b2c8f410249506b40f92990</strong> is invalid\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5ae8b28e5d6d38146a671797\"><strong>order #5ae8b28e5d6d38146a671797</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:2;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d1efae394c516c0041c73\"><strong>order #5b2d1efae394c516c0041c73</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:3;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d1efae394c516c0041c73\"><strong>order #5b2d1efae394c516c0041c73</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:4;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5ad9563bc028f47f2967c72b\"><strong>order #5ad9563bc028f47f2967c72b</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:5;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5ad9563bc028f47f2967c72b\"><strong>order #5ad9563bc028f47f2967c72b</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:6;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5ad9563bc028f47f2967c72b\"><strong>order #5ad9563bc028f47f2967c72b</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:7;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5adb442e8254ed7e430d5b10\"><strong>order #5adb442e8254ed7e430d5b10</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:8;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5adb442e8254ed7e430d5b10\"><strong>order #5adb442e8254ed7e430d5b10</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:9;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5adb442e8254ed7e430d5b10\"><strong>order #5adb442e8254ed7e430d5b10</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:10;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5adb442e8254ed7e430d5b10\"><strong>order #5adb442e8254ed7e430d5b10</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:11;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17eb\"><strong>order #5b2d0fcf3ae46316c65c17eb</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:12;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17eb\"><strong>order #5b2d0fcf3ae46316c65c17eb</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:13;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17eb\"><strong>order #5b2d0fcf3ae46316c65c17eb</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:14;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17eb\"><strong>order #5b2d0fcf3ae46316c65c17eb</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:15;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17eb\"><strong>order #5b2d0fcf3ae46316c65c17eb</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:16;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:17;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:18;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:19;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:20;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:21;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2d0fcf3ae46316c65c17ea\"><strong>order #5b2d0fcf3ae46316c65c17ea</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:22;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:23;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:24;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:25;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:26;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:27;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:28;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1884e26386a15174f8488\"><strong>order #5af1884e26386a15174f8488</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:29;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:30;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:31;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:32;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:33;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:34;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:35;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:36;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68da\"><strong>order #5af2afcfbe3aca14cd0b68da</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:37;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:38;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:39;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:40;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:41;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:42;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:43;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:44;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:45;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af2afcfbe3aca14cd0b68d9\"><strong>order #5af2afcfbe3aca14cd0b68d9</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:46;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:47;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:48;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:49;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:50;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:51;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:52;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:53;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:54;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:55;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2ceaeb72ac0e16c65c13ff\"><strong>order #5b2ceaeb72ac0e16c65c13ff</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:56;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:57;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:58;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:59;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:60;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:61;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:62;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:63;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:64;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:65;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:66;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af1367a57cb7730ee274fe5\"><strong>order #5af1367a57cb7730ee274fe5</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:67;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:68;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:69;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:70;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:71;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:72;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:73;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:74;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:75;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:76;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:77;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:78;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d4\"><strong>order #5af0c92fc530573f308571d4</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:79;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:80;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:81;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:82;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:83;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:84;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:85;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:86;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:87;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:88;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:89;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:90;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:91;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d3\"><strong>order #5af0c92fc530573f308571d3</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:92;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:93;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:94;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:95;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:96;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:97;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:98;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:99;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:100;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:101;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:102;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:103;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:104;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:105;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af0c92fc530573f308571d2\"><strong>order #5af0c92fc530573f308571d2</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:106;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:107;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:108;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:109;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:110;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:111;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:112;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:113;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:114;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:115;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:116;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:117;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:118;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:119;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:120;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cddb286679c41ffd11ccd\"><strong>order #5b2cddb286679c41ffd11ccd</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:121;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:122;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:123;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:124;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:125;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:126;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:127;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:128;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:129;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:130;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:131;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:132;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:133;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:134;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:135;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:136;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af07f7b52d9cd1859b37ec0\"><strong>order #5af07f7b52d9cd1859b37ec0</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:137;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:138;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:139;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:140;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:141;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:142;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:143;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:144;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:145;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:146;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:147;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:148;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:149;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:150;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:151;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:152;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:153;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5af064cfabced31486524785\"><strong>order #5af064cfabced31486524785</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:154;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:155;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:156;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:157;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:158;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:159;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:160;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:161;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:162;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:163;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:164;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:165;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:166;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:167;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:168;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:169;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:170;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:171;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:240:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2cd1d0b886080bfe6ba333\"><strong>order #5b2cd1d0b886080bfe6ba333</strong> has sku <strong>20342-Black</strong> that is not found in system</a>\";}i:172;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:173;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:247:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>WD076MA-1 Pair Big</strong> that is not found in system</a>\";}i:174;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:175;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:176;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:177;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:178;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:179;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:180;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:181;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:236:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>套装3</strong> that is not found in system</a>\";}i:182;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:183;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:184;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:185;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:256:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-Large leaves 1 pc</strong> that is not found in system</a>\";}i:186;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:187;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:238:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff</strong> that is not found in system</a>\";}i:188;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:250:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>vfvfvffff-2 pcs seeds</strong> that is not found in system</a>\";}i:189;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:240:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>20342-Black</strong> that is not found in system</a>\";}i:190;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:248:\"<a target=\"_blank\" href=\"http://localhost/c3/api/store/store_sale_sync/sale_detail?store_sale_id=5b2a479e7743e716d7be7e0f\"><strong>order #5b2a479e7743e716d7be7e0f</strong> has sku <strong>cdvfrewgv-90X1000CM</strong> that is not found in system</a>\";}i:191;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:60:\"<strong>Total: 19; Success: 0; Warning: 0; Fail: 19</strong>\";}}');

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
  `user_id` int(11) NOT NULL,
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

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '2302bea86bcf5825b20864c5a1cd79dd5b08b605', '173', 'Sarah', 'Yu', 'sarah@intlgo.com', '', '', '::1', 1, '2017-02-13 11:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `description`, `permission`) VALUES
(1, 'Administrator', 'The administrator user group', '{\"access\":[\"check\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\"],\"modify\":[\"check\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\"]}'),
(12, 'Clerk', 'The clerk user group', '{\"access\":[\"inventory\"]}'),
(13, 'Client', '', '{\"access\":[\"check\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"platform\",\"shipping\",\"payment\",\"report\",\"setting\"]}');

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

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `street`, `city`, `state`, `country`, `zipcode`, `date_added`, `date_modified`) VALUES
(4, 'Intadat Warehouse', '19097 Colima Road', 'Rowland Heights', 'CA', 'US', '91748', '0000-00-00 00:00:00', '2018-05-08 19:12:05');

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
  ADD KEY `product_id` (`product_id`),
  ADD KEY `id` (`refund_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1281;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkin_fee`
--
ALTER TABLE `checkin_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `checkin_file`
--
ALTER TABLE `checkin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkin_product`
--
ALTER TABLE `checkin_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_file`
--
ALTER TABLE `checkout_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_product`
--
ALTER TABLE `checkout_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `damage`
--
ALTER TABLE `damage`
  MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `product_fee`
--
ALTER TABLE `product_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23843;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
