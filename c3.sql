-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 07:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

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
(10163, 1, '::1', 'log/activity_log', 'view the activity log page', 'GET', '2019-07-11 21:08:05'),
(10164, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-11 21:11:36'),
(10165, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-11 21:11:36'),
(10166, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-11 21:11:39'),
(10167, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2019-07-11 21:11:54'),
(10168, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2019-07-11 21:11:58'),
(10169, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-11 21:11:58'),
(10170, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-11 21:11:58'),
(10171, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-11 21:21:16'),
(10172, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-11 21:21:36'),
(10173, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-11 21:21:38'),
(10174, NULL, '::1', '', 'view the dashboard', 'GET', '2019-07-12 20:15:14'),
(10175, NULL, '127.0.0.1', 'common/login', 'view the login page', 'POST', '2019-07-12 20:15:19'),
(10176, 1, '127.0.0.1', 'common/dashboard', 'view the dashboard', 'GET', '2019-07-12 20:15:19'),
(10177, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2019-07-12 20:15:51'),
(10178, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-12 20:15:52'),
(10179, 1, '::1', 'setting/language', 'view the language page', 'GET', '2019-07-12 20:15:58'),
(10180, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:15:59'),
(10181, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:16:00'),
(10182, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:17:23'),
(10183, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:17:24'),
(10184, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 20:30:42'),
(10185, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 20:30:43'),
(10186, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 20:30:45'),
(10187, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 20:32:24'),
(10188, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-12 20:32:25'),
(10189, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 20:32:29'),
(10190, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 20:32:30'),
(10191, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 20:32:31'),
(10192, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 20:32:43'),
(10193, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 20:32:47'),
(10194, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 20:32:49'),
(10195, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 20:32:49'),
(10196, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:33:17'),
(10197, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:33:17'),
(10198, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-12 20:35:38'),
(10199, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:41:45'),
(10200, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:41:45'),
(10201, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:42:34'),
(10202, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:42:34'),
(10203, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:56:25'),
(10204, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:56:46'),
(10205, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:56:46'),
(10206, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 20:57:50'),
(10207, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 20:57:50'),
(10208, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 21:00:19'),
(10209, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 21:00:19'),
(10210, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2019-07-12 21:00:32'),
(10211, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-12 21:00:32'),
(10212, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-12 21:00:32'),
(10213, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-12 21:00:32'),
(10214, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 21:00:50'),
(10215, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 21:00:54'),
(10216, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 21:00:54'),
(10217, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 21:06:54'),
(10218, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 21:06:55'),
(10219, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 21:16:20'),
(10220, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 21:16:21'),
(10221, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 21:16:28'),
(10222, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-12 21:16:29'),
(10223, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-12 21:16:44'),
(10224, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2019-07-12 21:17:08'),
(10225, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-07-12 21:17:10'),
(10226, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 21:17:27'),
(10227, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-12 21:17:29'),
(10228, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-12 21:17:29'),
(10229, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 21:17:57'),
(10230, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-12 21:17:58'),
(10231, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-12 21:18:08'),
(10232, NULL, '::1', 'common/login', 'view the login page', 'GET', '2019-07-15 18:23:56'),
(10233, NULL, '::1', 'common/login', 'view the login page', 'POST', '2019-07-15 18:24:24'),
(10234, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:24:24'),
(10235, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 18:24:33'),
(10236, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 18:24:34'),
(10237, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 18:24:36'),
(10238, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-15 18:24:51'),
(10239, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-15 18:24:52'),
(10240, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 18:25:35'),
(10241, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 18:25:48'),
(10242, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 18:25:50'),
(10243, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:26:42'),
(10244, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2019-07-15 18:26:44'),
(10245, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:27:13'),
(10246, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:29:58'),
(10247, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:30:49'),
(10248, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:30:51'),
(10249, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:30:51'),
(10250, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:30:52'),
(10251, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:30:52'),
(10252, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:39:44'),
(10253, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:39:46'),
(10254, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:39:46'),
(10255, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:40:24'),
(10256, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:40:24'),
(10257, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:40:40'),
(10258, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:40:43'),
(10259, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:40:45'),
(10260, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:40:54'),
(10261, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:40:56'),
(10262, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:41:05'),
(10263, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:41:29'),
(10264, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-15 18:41:36'),
(10265, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-15 18:41:39'),
(10266, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-15 18:42:28'),
(10267, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 18:42:40'),
(10268, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 18:42:42'),
(10269, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 18:42:42'),
(10270, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 18:57:27'),
(10271, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 18:57:28'),
(10272, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 18:57:38'),
(10273, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 18:57:38'),
(10274, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:02:55'),
(10275, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:02:56'),
(10276, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:03:10'),
(10277, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:03:10'),
(10278, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:03:12'),
(10279, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:03:13'),
(10280, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2019-07-15 19:03:34'),
(10281, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-15 19:03:38'),
(10282, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:16:40'),
(10283, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-15 19:16:42'),
(10284, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-15 19:16:51'),
(10285, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:16:52'),
(10286, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:16:55'),
(10287, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:16:57'),
(10288, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:16:58'),
(10289, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:17:06'),
(10290, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:17:08'),
(10291, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:17:08'),
(10292, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:24:12'),
(10293, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:24:17'),
(10294, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:24:18'),
(10295, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-15 19:24:21'),
(10296, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:24:21'),
(10297, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:24:21'),
(10298, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-15 19:24:24'),
(10299, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:24:36'),
(10300, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:24:40'),
(10301, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:24:41'),
(10302, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-15 19:24:44'),
(10303, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:24:44'),
(10304, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:24:44'),
(10305, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-15 19:24:55'),
(10306, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:25:01'),
(10307, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:25:01'),
(10308, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-15 19:25:04'),
(10309, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:25:04'),
(10310, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:25:04'),
(10311, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-15 19:25:05'),
(10312, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-07-15 19:25:11'),
(10313, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-07-15 19:25:12'),
(10314, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-15 19:25:13'),
(10315, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:25:19'),
(10316, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:25:19'),
(10317, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:25:22'),
(10318, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:25:22'),
(10319, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:25:27'),
(10320, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:25:27'),
(10321, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-15 19:25:36'),
(10322, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:25:36'),
(10323, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:25:36'),
(10324, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-15 19:25:38'),
(10325, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:25:48'),
(10326, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:25:48'),
(10327, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:25:51'),
(10328, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:25:53'),
(10329, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:25:53'),
(10330, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:26:21'),
(10331, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:26:22'),
(10332, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-15 19:26:32'),
(10333, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-15 19:26:32'),
(10334, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:26:32'),
(10335, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:26:35'),
(10336, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:26:36'),
(10337, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:27:28'),
(10338, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:27:29'),
(10339, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:27:47'),
(10340, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:27:49'),
(10341, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:27:50'),
(10342, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:27:52'),
(10343, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:27:54'),
(10344, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:27:54'),
(10345, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:27:56'),
(10346, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:27:57'),
(10347, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:27:58'),
(10348, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-15 19:28:05'),
(10349, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-15 19:28:07'),
(10350, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-15 19:28:07'),
(10351, NULL, '::1', 'common/login', 'view the login page', 'GET', '2019-07-15 23:20:46'),
(10352, NULL, '::1', '', 'view the dashboard', 'GET', '2019-07-16 17:37:34'),
(10353, NULL, '::1', 'common/login', 'view the login page', 'POST', '2019-07-16 17:37:38'),
(10354, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2019-07-16 17:37:38'),
(10355, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2019-07-16 17:37:49'),
(10356, 1, '::1', 'client/client', 'view the client page', 'GET', '2019-07-16 17:37:55'),
(10357, 1, '::1', 'client/client/view', '0', 'GET', '2019-07-16 17:37:57'),
(10358, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:38:02'),
(10359, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 17:38:04'),
(10360, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 17:38:06'),
(10361, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:38:22'),
(10362, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:44:48'),
(10363, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 17:44:50'),
(10364, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 17:44:50'),
(10365, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2019-07-16 17:45:12'),
(10366, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 17:45:15'),
(10367, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 17:47:12'),
(10368, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 17:47:15'),
(10369, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 17:47:16'),
(10370, 1, '::1', 'extension/platform', 'view the platform page', 'GET', '2019-07-16 17:47:21'),
(10371, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:48:02'),
(10372, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:49:15'),
(10373, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:49:16'),
(10374, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2019-07-16 17:49:17'),
(10375, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:49:22'),
(10376, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 17:49:24'),
(10377, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 17:49:25'),
(10378, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-16 17:49:32'),
(10379, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 17:49:32'),
(10380, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 17:49:34'),
(10381, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 17:49:34'),
(10382, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:08:49'),
(10383, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:08:57'),
(10384, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:09:00'),
(10385, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:07'),
(10386, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:07'),
(10387, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:09'),
(10388, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:09'),
(10389, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:10'),
(10390, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:10'),
(10391, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:09:12'),
(10392, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:15'),
(10393, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:15'),
(10394, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:18'),
(10395, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:18'),
(10396, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:20'),
(10397, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:20'),
(10398, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:22'),
(10399, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:22'),
(10400, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:24'),
(10401, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:24'),
(10402, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:26'),
(10403, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:26'),
(10404, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:09:27'),
(10405, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:38'),
(10406, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:38'),
(10407, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:40'),
(10408, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:40'),
(10409, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:42'),
(10410, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:42'),
(10411, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:43'),
(10412, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:43'),
(10413, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:45'),
(10414, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:45'),
(10415, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:09:47'),
(10416, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:09:47'),
(10417, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:09:48'),
(10418, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:09:50'),
(10419, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:09:55'),
(10420, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:09:55'),
(10421, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:10:00'),
(10422, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:10:45'),
(10423, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:10:49'),
(10424, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:10:51'),
(10425, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:10:58'),
(10426, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:16:11'),
(10427, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:16:14'),
(10428, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:16:20'),
(10429, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:16:26'),
(10430, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:16:37'),
(10431, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:16:40'),
(10432, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:16:42'),
(10433, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:16:43'),
(10434, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-16 18:16:46'),
(10435, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-16 18:16:46'),
(10436, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:16:47'),
(10437, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:16:48'),
(10438, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:16:51'),
(10439, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:16:52'),
(10440, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-16 18:16:54'),
(10441, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:16:54'),
(10442, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:16:55'),
(10443, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:16:58'),
(10444, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:16:59'),
(10445, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:17:07'),
(10446, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:17:08'),
(10447, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:09'),
(10448, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:17:16'),
(10449, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:17:16'),
(10450, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2019-07-16 18:17:31'),
(10451, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:33'),
(10452, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2019-07-16 18:17:35'),
(10453, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:35'),
(10454, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:17:38'),
(10455, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:17:38'),
(10456, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:39'),
(10457, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:40'),
(10458, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:17:43'),
(10459, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:17:45'),
(10460, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:17:47'),
(10461, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:17:48'),
(10462, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:17:49'),
(10463, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:17:51'),
(10464, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:17:52'),
(10465, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:17:54'),
(10466, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:17:56'),
(10467, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:17:57'),
(10468, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:17:59'),
(10469, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:18:00'),
(10470, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:18:02'),
(10471, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:18:03'),
(10472, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-16 18:18:06'),
(10473, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:18:07'),
(10474, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:18:13'),
(10475, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:18:13'),
(10476, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-07-16 18:18:15'),
(10477, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:18:15'),
(10478, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:18:17'),
(10479, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:18:44'),
(10480, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:18:52'),
(10481, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:18:52'),
(10482, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2019-07-16 18:18:56'),
(10483, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:19:03'),
(10484, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:19:04'),
(10485, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:19:04'),
(10486, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:19:04'),
(10487, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:19:07'),
(10488, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:19:07'),
(10489, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:19:09'),
(10490, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:19:09'),
(10491, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:20:01'),
(10492, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:20:10'),
(10493, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:20:10'),
(10494, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:20:10'),
(10495, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:20:11'),
(10496, 1, '::1', 'search/search', 'try to search something', 'GET', '2019-07-16 18:20:14'),
(10497, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2019-07-16 18:20:14'),
(10498, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:20:46'),
(10499, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-16 18:22:10'),
(10500, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-16 18:22:11'),
(10501, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:22:38'),
(10502, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:22:40'),
(10503, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:22:42'),
(10504, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:22:44'),
(10505, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:22:45'),
(10506, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:22:45'),
(10507, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:22:45'),
(10508, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:22:54'),
(10509, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:22:55'),
(10510, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2019-07-16 18:23:10'),
(10511, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2019-07-16 18:23:10'),
(10512, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:23:34'),
(10513, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:23:38'),
(10514, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2019-07-16 18:23:41'),
(10515, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:23:42'),
(10516, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:23:51'),
(10517, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:23:52'),
(10518, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:24:05'),
(10519, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:24:06'),
(10520, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:24:06'),
(10521, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:24:06'),
(10522, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:13'),
(10523, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:24:15'),
(10524, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:24:15'),
(10525, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2019-07-16 18:24:18'),
(10526, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:24:18'),
(10527, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:19'),
(10528, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-07-16 18:24:22'),
(10529, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2019-07-16 18:24:28'),
(10530, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:24:29'),
(10531, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2019-07-16 18:24:29'),
(10532, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2019-07-16 18:24:29'),
(10533, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2019-07-16 18:24:34'),
(10534, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:24:34'),
(10535, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:35'),
(10536, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:24:44'),
(10537, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:45'),
(10538, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:24:52'),
(10539, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:53'),
(10540, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:24:55'),
(10541, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:25:04'),
(10542, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:25:04'),
(10543, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:25:18'),
(10544, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:25:18'),
(10545, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2019-07-16 18:25:47'),
(10546, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-07-16 18:25:49'),
(10547, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2019-07-16 18:25:51'),
(10548, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:26:04'),
(10549, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:26:05'),
(10550, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:26:06'),
(10551, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:43:26'),
(10552, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:43:27'),
(10553, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:43:27'),
(10554, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:43:34'),
(10555, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:44:23'),
(10556, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:44:42'),
(10557, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:44:46'),
(10558, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:44:53'),
(10559, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:44:59'),
(10560, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:45:00'),
(10561, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2019-07-16 18:45:02'),
(10562, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2019-07-16 18:45:02'),
(10563, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2019-07-16 18:45:15'),
(10564, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 18:45:17'),
(10565, 1, '::1', 'fee/checkout_weight', '0', 'POST', '2019-07-16 18:45:48'),
(10566, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2019-07-16 18:45:48'),
(10567, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2019-07-16 18:45:51'),
(10568, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:45:56'),
(10569, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:46:00'),
(10570, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:46:02'),
(10571, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:46:06'),
(10572, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2019-07-16 18:46:09'),
(10573, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2019-07-16 18:46:11'),
(10574, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:48:38'),
(10575, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:48:39'),
(10576, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:48:51'),
(10577, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-07-16 18:48:54'),
(10578, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-07-16 18:48:55'),
(10579, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-16 18:48:57'),
(10580, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2019-07-16 18:49:12'),
(10581, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2019-07-16 18:49:13'),
(10582, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2019-07-16 18:49:18'),
(10583, 1, '::1', 'setting/about', 'view about', 'GET', '2019-07-16 18:49:54'),
(10584, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-10-15 17:29:33'),
(10585, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-10-15 17:29:38'),
(10586, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-15 17:29:38'),
(10587, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-15 17:29:42'),
(10588, NULL, '150.109.109.160', '', 'view the dashboard', 'GET', '2019-10-15 17:30:33'),
(10589, NULL, '101.227.139.194', '', 'view the dashboard', 'GET', '2019-10-15 17:31:33'),
(10590, NULL, '61.129.6.251', '', 'view the dashboard', 'GET', '2019-10-15 17:31:53'),
(10591, NULL, '47.148.147.208', '', 'view the dashboard', 'GET', '2019-10-15 17:32:13'),
(10592, NULL, '47.148.147.208', 'common/login', 'view the login page', 'POST', '2019-10-15 17:32:24'),
(10593, 1, '47.148.147.208', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-15 17:32:25'),
(10594, NULL, '42.236.10.106', '', 'view the dashboard', 'GET', '2019-10-15 17:32:38'),
(10595, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:38'),
(10596, NULL, '42.236.10.75', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:41'),
(10597, 1, '47.148.147.208', 'sale/sale', 'view the order page', 'GET', '2019-10-15 17:32:42'),
(10598, NULL, '42.236.10.125', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:47'),
(10599, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:50'),
(10600, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:52'),
(10601, NULL, '42.236.10.75', 'common/login', 'view the login page', 'GET', '2019-10-15 17:32:59'),
(10602, NULL, '42.236.10.114', '', 'view the dashboard', 'GET', '2019-10-15 17:33:02'),
(10603, NULL, '92.249.191.221', '', 'view the dashboard', 'GET', '2019-10-15 17:37:59'),
(10604, NULL, '150.109.53.202', '', 'view the dashboard', 'GET', '2019-10-15 18:16:02'),
(10605, NULL, '157.55.39.253', '', 'view the dashboard', 'GET', '2019-10-16 01:59:26'),
(10606, NULL, '35.165.51.125', '', 'view the dashboard', 'GET', '2019-10-16 03:01:46'),
(10607, NULL, '203.205.219.188', '', 'view the dashboard', 'GET', '2019-10-16 09:14:57'),
(10608, NULL, '12.31.21.54', '', 'view the dashboard', 'GET', '2019-10-16 10:30:04'),
(10609, NULL, '5.188.62.5', '', 'view the dashboard', 'GET', '2019-10-16 18:35:14'),
(10610, NULL, '172.114.186.112', '', 'view the dashboard', 'GET', '2019-10-16 21:13:23'),
(10611, NULL, '172.114.186.112', 'common/login', 'view the login page', 'POST', '2019-10-16 21:13:29'),
(10612, 1, '172.114.186.112', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-16 21:13:30'),
(10613, 1, '172.114.186.112', 'sale/sale', 'view the order page', 'GET', '2019-10-16 21:13:37'),
(10614, 1, '172.114.186.112', 'finance/balance', 'view the balance page', 'GET', '2019-10-16 21:13:55'),
(10615, 1, '172.114.186.112', 'finance/recharge', 'view the recharge page', 'GET', '2019-10-16 21:14:00'),
(10616, 1, '172.114.186.112', 'finance/transaction', 'view the transaction page', 'GET', '2019-10-16 21:14:02'),
(10617, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-10-16 21:28:14'),
(10618, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-10-16 21:28:18'),
(10619, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-16 21:28:18'),
(10620, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-10-16 21:28:20'),
(10621, 1, '104.33.58.117', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-10-16 21:28:23'),
(10622, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-10-16 21:28:26'),
(10623, NULL, '34.208.168.15', '', 'view the dashboard', 'GET', '2019-10-17 03:01:57'),
(10624, NULL, '220.249.245.114', '', 'view the dashboard', 'GET', '2019-10-17 07:46:40'),
(10625, NULL, '62.165.226.17', '', 'view the dashboard', 'GET', '2019-10-17 13:10:02'),
(10626, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-10-18 05:03:12'),
(10627, NULL, '209.17.96.154', '', 'view the dashboard', 'GET', '2019-10-18 12:13:42'),
(10628, NULL, '207.46.13.191', '', 'view the dashboard', 'GET', '2019-10-18 13:24:01'),
(10629, NULL, '54.200.77.214', '', 'view the dashboard', 'GET', '2019-10-19 06:04:21'),
(10630, NULL, '100.43.81.121', '', 'view the dashboard', 'GET', '2019-10-19 08:05:08'),
(10631, NULL, '40.77.167.122', '', 'view the dashboard', 'GET', '2019-10-19 17:24:56'),
(10632, NULL, '82.202.161.133', '', 'view the dashboard', 'GET', '2019-10-19 22:33:53'),
(10633, NULL, '109.102.111.63', '', 'view the dashboard', 'GET', '2019-10-20 10:26:29'),
(10634, NULL, '109.102.111.63', 'common/login', 'view the login page', 'GET', '2019-10-20 10:26:29'),
(10635, NULL, '109.102.111.63', '', 'view the dashboard', 'GET', '2019-10-20 10:26:35'),
(10636, NULL, '40.77.167.133', '', 'view the dashboard', 'GET', '2019-10-21 03:28:24'),
(10637, NULL, '54.188.86.29', '', 'view the dashboard', 'GET', '2019-10-21 03:53:09'),
(10638, NULL, '66.249.73.15', '', 'view the dashboard', 'GET', '2019-10-21 05:13:12'),
(10639, NULL, '77.234.68.49', '', 'view the dashboard', 'GET', '2019-10-21 05:28:19'),
(10640, NULL, '52.34.212.109', '', 'view the dashboard', 'GET', '2019-10-22 01:08:44'),
(10641, NULL, '167.71.161.130', '', 'view the dashboard', 'GET', '2019-10-22 12:51:01'),
(10642, NULL, '34.70.9.102', '', 'view the dashboard', 'GET', '2019-10-22 14:22:22'),
(10643, NULL, '209.17.96.130', '', 'view the dashboard', 'GET', '2019-10-22 14:41:27'),
(10644, NULL, '158.69.241.227', '', 'view the dashboard', 'GET', '2019-10-22 19:41:24'),
(10645, NULL, '158.69.241.227', '', 'view the dashboard', 'GET', '2019-10-22 19:41:25'),
(10646, NULL, '89.108.99.6', '', 'view the dashboard', 'GET', '2019-10-23 04:34:39'),
(10647, NULL, '34.222.239.249', '', 'view the dashboard', 'GET', '2019-10-24 01:05:01'),
(10648, NULL, '178.62.82.141', '', 'view the dashboard', 'GET', '2019-10-24 17:28:51'),
(10649, NULL, '37.1.218.99', '', 'view the dashboard', 'GET', '2019-10-25 02:45:55'),
(10650, NULL, '34.219.14.243', '', 'view the dashboard', 'GET', '2019-10-25 03:19:41'),
(10651, NULL, '34.215.59.84', '', 'view the dashboard', 'GET', '2019-10-25 10:45:44'),
(10652, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-10-26 19:12:23'),
(10653, NULL, '64.233.172.219', '', 'view the dashboard', 'GET', '2019-10-26 19:12:27'),
(10654, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-10-26 19:12:29'),
(10655, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-26 19:12:29'),
(10656, NULL, '52.8.185.89', '', 'view the dashboard', 'HEAD', '2019-10-26 19:12:47'),
(10657, NULL, '52.8.185.89', '', 'view the dashboard', 'HEAD', '2019-10-26 19:15:32'),
(10658, NULL, '157.55.39.107', '', 'view the dashboard', 'GET', '2019-10-27 05:03:08');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(10659, NULL, '163.172.182.111', '', 'view the dashboard', 'GET', '2019-10-27 13:20:30'),
(10660, NULL, '40.77.167.204', '', 'view the dashboard', 'GET', '2019-10-28 07:05:40'),
(10661, NULL, '198.211.113.156', '', 'view the dashboard', 'HEAD', '2019-10-28 13:05:40'),
(10662, NULL, '198.211.113.156', '', 'view the dashboard', 'GET', '2019-10-28 13:05:40'),
(10663, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-10-28 14:30:29'),
(10664, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-10-28 14:30:36'),
(10665, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-10-28 14:30:36'),
(10666, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 14:55:41'),
(10667, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-10-28 14:55:46'),
(10668, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:49'),
(10669, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:49'),
(10670, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:50'),
(10671, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:51'),
(10672, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:52'),
(10673, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:53'),
(10674, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:54'),
(10675, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:55'),
(10676, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:55'),
(10677, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:56'),
(10678, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:57'),
(10679, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:57'),
(10680, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:55:59'),
(10681, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:55:59'),
(10682, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:56:01'),
(10683, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:56:01'),
(10684, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:56:02'),
(10685, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:56:03'),
(10686, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:56:04'),
(10687, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:56:04'),
(10688, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-10-28 14:56:06'),
(10689, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2019-10-28 14:56:06'),
(10690, 1, '142.129.145.149', 'check/checkout', 'view the checkout page', 'GET', '2019-10-28 14:56:09'),
(10691, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:11'),
(10692, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:11'),
(10693, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:13'),
(10694, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:13'),
(10695, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:14'),
(10696, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:14'),
(10697, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:16'),
(10698, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:16'),
(10699, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:18'),
(10700, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:18'),
(10701, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:20'),
(10702, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:20'),
(10703, 1, '142.129.145.149', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2019-10-28 14:56:21'),
(10704, 1, '142.129.145.149', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2019-10-28 14:56:22'),
(10705, 1, '142.129.145.149', 'check/checkout', 'view the checkout page', 'GET', '2019-10-28 14:56:23'),
(10706, 1, '142.129.145.149', 'check/checkout_sale', 'view the order checkout page', 'GET', '2019-10-28 14:56:25'),
(10707, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-28 14:56:28'),
(10708, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:56:31'),
(10709, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:56:31'),
(10710, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:56:33'),
(10711, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:56:33'),
(10712, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:56:34'),
(10713, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:56:34'),
(10714, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:56:36'),
(10715, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:56:36'),
(10716, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:59:23'),
(10717, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:59:23'),
(10718, 1, '142.129.145.149', 'sale/sale/delete', 'try to delete an order', 'GET', '2019-10-28 14:59:25'),
(10719, 1, '142.129.145.149', 'sale/sale/reload', 'try to reload order page', 'GET', '2019-10-28 14:59:25'),
(10720, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:04:08'),
(10721, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:04:13'),
(10722, 1, '142.129.145.149', 'store/store', 'view the store page', 'GET', '2019-10-28 15:04:16'),
(10723, 1, '142.129.145.149', 'store/store/delete', '0', 'GET', '2019-10-28 15:04:21'),
(10724, 1, '142.129.145.149', 'store/store/reload', '0', 'GET', '2019-10-28 15:04:21'),
(10725, 1, '142.129.145.149', 'finance/transaction', 'view the transaction page', 'GET', '2019-10-28 15:04:24'),
(10726, 1, '142.129.145.149', 'finance/recharge', 'view the recharge page', 'GET', '2019-10-28 15:04:26'),
(10727, 1, '142.129.145.149', 'check/checkout', 'view the checkout page', 'GET', '2019-10-28 15:04:29'),
(10728, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-10-28 15:04:34'),
(10729, 1, '142.129.145.149', 'check/checkout', 'view the checkout page', 'GET', '2019-10-28 15:04:38'),
(10730, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-28 15:04:41'),
(10731, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2019-10-28 15:04:43'),
(10732, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:04:46'),
(10733, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:04:50'),
(10734, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:04:51'),
(10735, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:04:52'),
(10736, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:04:52'),
(10737, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:04:54'),
(10738, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:04:54'),
(10739, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:04:55'),
(10740, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:04:55'),
(10741, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:04:57'),
(10742, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:04:58'),
(10743, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:03'),
(10744, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:04'),
(10745, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:05'),
(10746, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:05'),
(10747, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:07'),
(10748, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:07'),
(10749, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:09'),
(10750, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:09'),
(10751, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:11'),
(10752, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:11'),
(10753, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:13'),
(10754, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:13'),
(10755, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:14'),
(10756, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:15'),
(10757, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:16'),
(10758, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:16'),
(10759, 1, '142.129.145.149', 'catalog/product/delete', 'try to delete a product', 'GET', '2019-10-28 15:06:18'),
(10760, 1, '142.129.145.149', 'catalog/product/reload', 'reload the product page', 'GET', '2019-10-28 15:06:18'),
(10761, 1, '142.129.145.149', 'client/client', 'view the client page', 'GET', '2019-10-28 15:06:23'),
(10762, 1, '142.129.145.149', 'client/client/delete', 'try to delete a client', 'GET', '2019-10-28 15:06:26'),
(10763, 1, '142.129.145.149', 'client/client/reload', 'try to reload client page', 'GET', '2019-10-28 15:06:26'),
(10764, 1, '142.129.145.149', 'client/client/delete', 'try to delete a client', 'GET', '2019-10-28 15:06:28'),
(10765, 1, '142.129.145.149', 'client/client/delete', 'try to delete a client', 'GET', '2019-10-28 15:06:31'),
(10766, 1, '142.129.145.149', 'client/client/reload', 'try to reload client page', 'GET', '2019-10-28 15:06:31'),
(10767, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:09:52'),
(10768, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-10-28 15:09:55'),
(10769, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'POST', '2019-10-28 15:13:30'),
(10770, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:13:30'),
(10771, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-10-28 15:13:37'),
(10772, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'POST', '2019-10-28 15:13:58'),
(10773, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:13:58'),
(10774, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-10-28 15:14:00'),
(10775, 1, '142.129.145.149', 'catalog/product/edit', 'view the product edit page', 'POST', '2019-10-28 15:14:18'),
(10776, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2019-10-28 15:14:18'),
(10777, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:14:28'),
(10778, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-10-28 15:14:31'),
(10779, 1, '142.129.145.149', 'catalog/product_ajax/update_value', '0', 'POST', '2019-10-28 15:14:34'),
(10780, 1, '142.129.145.149', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-10-28 15:14:37'),
(10781, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:14:41'),
(10782, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:14:56'),
(10783, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:14:56'),
(10784, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-10-28 15:14:58'),
(10785, 1, '142.129.145.149', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-10-28 15:15:02'),
(10786, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:15:05'),
(10787, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:15:06'),
(10788, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:15:10'),
(10789, 1, '142.129.145.149', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-10-28 15:15:23'),
(10790, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:15:26'),
(10791, 1, '142.129.145.149', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-10-28 15:15:30'),
(10792, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:15:32'),
(10793, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-10-28 15:15:39'),
(10794, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:15:41'),
(10795, 1, '142.129.145.149', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2019-10-28 15:15:48'),
(10796, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:15:52'),
(10797, 1, '142.129.145.149', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2019-10-28 15:15:57'),
(10798, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:16:00'),
(10799, 1, '142.129.145.149', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2019-10-28 15:16:13'),
(10800, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:16:15'),
(10801, 1, '142.129.145.149', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2019-10-28 15:16:30'),
(10802, 1, '142.129.145.149', 'catalog/product_ajax/update_value', '0', 'POST', '2019-10-28 15:16:37'),
(10803, 1, '142.129.145.149', 'inventory/inventory', 'view the inventory page', 'GET', '2019-10-28 15:16:37'),
(10804, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:16:46'),
(10805, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-10-28 15:16:48'),
(10806, 1, '142.129.145.149', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-10-28 15:16:50'),
(10807, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:16:53'),
(10808, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:16:56'),
(10809, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:17:06'),
(10810, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:17:07'),
(10811, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-10-28 15:17:08'),
(10812, 1, '142.129.145.149', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-10-28 15:17:10'),
(10813, 1, '142.129.145.149', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-10-28 15:17:14'),
(10814, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-28 15:17:59'),
(10815, 1, '142.129.145.149', 'sale/sale/add', 'view the order add page', 'GET', '2019-10-28 15:18:01'),
(10816, 1, '142.129.145.149', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-10-28 15:18:04'),
(10817, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-28 15:18:12'),
(10818, 1, '142.129.145.149', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2019-10-28 15:18:15'),
(10819, 1, '142.129.145.149', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2019-10-28 15:18:16'),
(10820, 1, '142.129.145.149', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2019-10-28 15:18:16'),
(10821, 1, '142.129.145.149', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2019-10-28 15:18:18'),
(10822, 1, '142.129.145.149', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2019-10-28 15:18:18'),
(10823, 1, '142.129.145.149', 'sale/sale/add', 'view the order add page', 'POST', '2019-10-28 15:18:21'),
(10824, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-10-28 15:18:21'),
(10825, 1, '142.129.145.149', 'sale/sale_ajax/change_status', '0', 'GET', '2019-10-28 15:18:22'),
(10826, 1, '142.129.145.149', 'sale/sale_ajax/change_status', '0', 'GET', '2019-10-28 15:18:24'),
(10827, 1, '142.129.145.149', 'check/checkout', 'view the checkout page', 'GET', '2019-10-28 15:18:27'),
(10828, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-10-28 15:18:31'),
(10829, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-10-28 15:18:33'),
(10830, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-10-28 15:18:41'),
(10831, NULL, '150.109.53.202', '', 'view the dashboard', 'GET', '2019-10-28 15:18:55'),
(10832, NULL, '101.89.29.86', '', 'view the dashboard', 'GET', '2019-10-28 15:19:55'),
(10833, NULL, '52.237.38.163', '', 'view the dashboard', 'GET', '2019-10-28 19:54:07'),
(10834, NULL, '157.230.218.128', '', 'view the dashboard', 'GET', '2019-10-28 22:48:20'),
(10835, NULL, '69.28.93.25', '', 'view the dashboard', 'GET', '2019-10-29 04:59:53'),
(10836, NULL, '213.159.213.236', '', 'view the dashboard', 'GET', '2019-10-29 08:48:02'),
(10837, NULL, '198.1.67.59', '', 'view the dashboard', 'GET', '2019-10-29 15:12:48'),
(10838, NULL, '198.1.67.59', '', 'view the dashboard', 'GET', '2019-10-29 15:12:48'),
(10839, NULL, '5.153.222.41', '', 'view the dashboard', 'GET', '2019-10-29 17:08:06'),
(10840, NULL, '150.109.62.77', '', 'view the dashboard', 'GET', '2019-10-29 19:08:50'),
(10841, NULL, '180.97.118.219', '', 'view the dashboard', 'GET', '2019-10-29 19:09:49'),
(10842, NULL, '209.17.96.74', '', 'view the dashboard', 'GET', '2019-10-29 19:22:32'),
(10843, NULL, '207.46.13.165', '', 'view the dashboard', 'GET', '2019-10-30 00:17:32'),
(10844, NULL, '69.171.251.23', '', 'view the dashboard', 'GET', '2019-10-30 02:41:28'),
(10845, NULL, '5.153.222.41', '', 'view the dashboard', 'GET', '2019-10-30 20:43:17'),
(10846, NULL, '34.221.185.74', '', 'view the dashboard', 'GET', '2019-10-31 03:40:46'),
(10847, NULL, '18.191.72.252', '', 'view the dashboard', 'GET', '2019-10-31 05:57:53'),
(10848, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-10-31 14:27:58'),
(10849, NULL, '5.153.222.41', '', 'view the dashboard', 'GET', '2019-10-31 17:18:19'),
(10850, NULL, '157.55.39.108', '', 'view the dashboard', 'GET', '2019-10-31 19:06:05'),
(10851, NULL, '150.109.53.202', '', 'view the dashboard', 'GET', '2019-10-31 19:09:00'),
(10852, NULL, '199.244.88.124', '', 'view the dashboard', 'GET', '2019-10-31 22:18:18'),
(10853, NULL, '31.13.115.11', '', 'view the dashboard', 'GET', '2019-11-01 00:19:50'),
(10854, NULL, '79.191.169.242', '', 'view the dashboard', 'GET', '2019-11-01 00:43:11'),
(10855, NULL, '5.153.222.41', '', 'view the dashboard', 'GET', '2019-11-01 10:59:07'),
(10856, NULL, '213.159.213.137', '', 'view the dashboard', 'GET', '2019-11-01 11:09:48'),
(10857, NULL, '18.236.102.121', '', 'view the dashboard', 'GET', '2019-11-02 01:01:19'),
(10858, NULL, '5.153.222.41', '', 'view the dashboard', 'GET', '2019-11-02 03:37:08'),
(10859, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-02 20:28:42'),
(10860, NULL, '35.167.14.224', '', 'view the dashboard', 'GET', '2019-11-05 02:05:34'),
(10861, NULL, '162.213.37.248', '', 'view the dashboard', 'GET', '2019-11-05 10:23:11'),
(10862, NULL, '163.172.182.111', '', 'view the dashboard', 'GET', '2019-11-05 17:27:16'),
(10863, NULL, '34.219.111.118', '', 'view the dashboard', 'GET', '2019-11-06 00:03:50'),
(10864, NULL, '213.159.213.137', '', 'view the dashboard', 'GET', '2019-11-06 03:28:56'),
(10865, NULL, '157.55.39.169', '', 'view the dashboard', 'GET', '2019-11-06 05:08:02'),
(10866, NULL, '207.46.13.55', '', 'view the dashboard', 'GET', '2019-11-06 14:31:35'),
(10867, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-07 21:52:36'),
(10868, NULL, '5.188.62.5', '', 'view the dashboard', 'GET', '2019-11-08 03:00:42'),
(10869, NULL, '77.234.68.219', '', 'view the dashboard', 'GET', '2019-11-08 04:30:55'),
(10870, NULL, '40.77.167.18', '', 'view the dashboard', 'GET', '2019-11-08 14:47:34'),
(10871, NULL, '104.168.84.164', '', 'view the dashboard', 'GET', '2019-11-08 18:46:58'),
(10872, NULL, '104.168.84.164', 'common/login', 'view the login page', 'GET', '2019-11-08 18:46:59'),
(10873, NULL, '104.168.84.164', '', 'view the dashboard', 'GET', '2019-11-08 18:47:00'),
(10874, NULL, '209.17.97.42', '', 'view the dashboard', 'GET', '2019-11-09 02:03:59'),
(10875, NULL, '34.208.61.158', '', 'view the dashboard', 'GET', '2019-11-09 05:24:00'),
(10876, NULL, '66.249.73.17', '', 'view the dashboard', 'GET', '2019-11-09 05:38:37'),
(10877, NULL, '77.234.68.219', '', 'view the dashboard', 'GET', '2019-11-09 21:04:18'),
(10878, NULL, '35.161.40.82', '', 'view the dashboard', 'GET', '2019-11-10 05:18:53'),
(10879, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-11 21:35:49'),
(10880, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-11 21:36:02'),
(10881, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-11 21:36:02'),
(10882, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-11 21:36:09'),
(10883, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-11-11 21:36:47'),
(10884, 1, '104.33.58.117', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-11-11 21:36:49'),
(10885, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-11-11 21:37:00'),
(10886, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-11 21:37:03'),
(10887, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:37:13'),
(10888, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-11 21:55:22'),
(10889, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-11 21:55:31'),
(10890, 1, '104.33.58.117', 'client/client/add', 'view the client add page', 'GET', '2019-11-11 21:55:33'),
(10891, 1, '104.33.58.117', 'client/client/add', 'view the client add page', 'GET', '2019-11-11 21:55:40'),
(10892, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-11 21:55:43'),
(10893, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:55:44'),
(10894, 1, '104.33.58.117', 'catalog/product/add', 'view the product add page', 'GET', '2019-11-11 21:55:46'),
(10895, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-11 21:56:35'),
(10896, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-11 21:56:39'),
(10897, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:57:06'),
(10898, 1, '104.33.58.117', 'catalog/product_import', 'view the product import page', 'GET', '2019-11-11 21:58:12'),
(10899, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:58:23'),
(10900, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:58:34'),
(10901, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-11 21:58:46'),
(10902, 1, '104.33.58.117', 'catalog/product/add', 'view the product add page', 'GET', '2019-11-11 21:58:48'),
(10903, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-11-11 22:00:28'),
(10904, 1, '104.33.58.117', 'finance/transaction', 'view the transaction page', 'GET', '2019-11-11 22:02:35'),
(10905, 1, '104.33.58.117', 'finance/transaction/add', 'view the transaction add page', 'GET', '2019-11-11 22:02:36'),
(10906, 1, '104.33.58.117', 'finance/transaction', 'view the transaction page', 'GET', '2019-11-11 22:03:16'),
(10907, NULL, '207.46.13.140', '', 'view the dashboard', 'GET', '2019-11-11 22:15:08'),
(10908, NULL, '35.164.235.236', '', 'view the dashboard', 'GET', '2019-11-12 02:42:10'),
(10909, NULL, '209.208.109.73', '', 'view the dashboard', 'GET', '2019-11-12 06:36:28'),
(10910, NULL, '207.46.13.156', '', 'view the dashboard', 'GET', '2019-11-12 16:02:31'),
(10911, NULL, '172.58.43.209', '', 'view the dashboard', 'GET', '2019-11-12 17:46:06'),
(10912, NULL, '172.58.43.209', 'common/login', 'view the login page', 'POST', '2019-11-12 17:46:11'),
(10913, 1, '172.58.43.209', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-12 17:46:11'),
(10914, 1, '172.58.43.209', 'check/checkin', 'view the checkin page', 'GET', '2019-11-12 17:46:25'),
(10915, 1, '172.58.43.209', 'check/checkin', 'view the checkin page', 'GET', '2019-11-12 18:01:52'),
(10916, NULL, '34.212.130.54', '', 'view the dashboard', 'GET', '2019-11-13 03:14:24'),
(10917, NULL, '94.21.92.86', '', 'view the dashboard', 'GET', '2019-11-13 05:08:20'),
(10918, NULL, '209.17.96.250', '', 'view the dashboard', 'GET', '2019-11-13 09:57:32'),
(10919, NULL, '192.162.102.230', '', 'view the dashboard', 'GET', '2019-11-13 15:06:48'),
(10920, NULL, '203.205.219.188', '', 'view the dashboard', 'GET', '2019-11-13 19:27:05'),
(10921, NULL, '54.188.87.1', '', 'view the dashboard', 'GET', '2019-11-14 03:00:15'),
(10922, NULL, '173.211.79.120', '', 'view the dashboard', 'GET', '2019-11-14 03:30:05'),
(10923, NULL, '157.55.39.200', '', 'view the dashboard', 'GET', '2019-11-14 10:20:21'),
(10924, NULL, '184.250.156.49', '', 'view the dashboard', 'GET', '2019-11-14 12:20:57'),
(10925, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-11-14 16:42:09'),
(10926, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-11-14 16:42:17'),
(10927, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-14 16:42:17'),
(10928, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-11-14 16:42:21'),
(10929, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-11-14 16:42:23'),
(10930, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-11-14 16:49:23'),
(10931, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-11-14 16:51:21'),
(10932, 1, '142.129.145.149', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-14 16:51:26'),
(10933, 1, '142.129.145.149', 'extension/shipping/install', 'try to install shipping extension', 'GET', '2019-11-14 16:51:29'),
(10934, 1, '142.129.145.149', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-14 16:51:30'),
(10935, 1, '142.129.145.149', 'shipping/jd', '0', 'GET', '2019-11-14 16:51:31'),
(10936, 1, '142.129.145.149', 'shipping/jd', '0', 'POST', '2019-11-14 16:53:35'),
(10937, 1, '142.129.145.149', 'shipping/jd', '0', 'POST', '2019-11-14 16:53:54'),
(10938, 1, '142.129.145.149', 'shipping/jd', '0', 'POST', '2019-11-14 16:54:05'),
(10939, 1, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-11-14 17:03:45'),
(10940, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-14 17:03:45'),
(10941, 1, '142.129.145.149', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-14 17:03:53'),
(10942, 1, '142.129.145.149', 'shipping/jd', '0', 'GET', '2019-11-14 17:03:55'),
(10943, NULL, '220.249.245.114', '', 'view the dashboard', 'GET', '2019-11-14 17:09:29'),
(10944, NULL, '209.17.97.122', '', 'view the dashboard', 'GET', '2019-11-14 19:36:49'),
(10945, NULL, '54.187.231.100', '', 'view the dashboard', 'GET', '2019-11-15 00:10:55'),
(10946, NULL, '132.148.41.212', '', 'view the dashboard', 'GET', '2019-11-15 04:42:35'),
(10947, NULL, '132.148.41.212', '', 'view the dashboard', 'GET', '2019-11-15 04:42:37'),
(10948, NULL, '100.25.150.71', '', 'view the dashboard', 'GET', '2019-11-15 09:30:22'),
(10949, NULL, '185.154.21.150', '', 'view the dashboard', 'GET', '2019-11-15 16:30:58'),
(10950, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:32:40'),
(10951, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:13'),
(10952, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:13'),
(10953, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:14'),
(10954, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:15'),
(10955, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:15'),
(10956, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:16'),
(10957, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:17'),
(10958, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:17'),
(10959, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:17'),
(10960, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:17'),
(10961, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:18'),
(10962, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:19'),
(10963, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:19'),
(10964, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:20'),
(10965, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:20'),
(10966, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:20'),
(10967, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:21'),
(10968, NULL, '139.129.60.64', '', 'view the dashboard', 'GET', '2019-11-15 18:36:21'),
(10969, NULL, '35.239.243.107', '', 'view the dashboard', 'GET', '2019-11-15 21:19:40'),
(10970, NULL, '52.89.26.108', '', 'view the dashboard', 'GET', '2019-11-16 02:27:10'),
(10971, NULL, '5.188.62.5', '', 'view the dashboard', 'GET', '2019-11-16 05:50:23'),
(10972, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-16 21:03:31'),
(10973, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-16 21:03:37'),
(10974, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-16 21:03:37'),
(10975, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-11-16 21:03:39'),
(10976, 1, '104.33.58.117', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-11-16 21:03:41'),
(10977, 1, '104.33.58.117', 'check/checkin', 'view the checkin page', 'GET', '2019-11-16 21:03:44'),
(10978, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-16 21:03:48'),
(10979, 1, '104.33.58.117', 'shipping/fedex', '0', 'GET', '2019-11-16 21:03:50'),
(10980, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:03:59'),
(10981, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:04:26'),
(10982, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:12:31'),
(10983, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:23:29'),
(10984, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-16 21:23:47'),
(10985, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:23:47'),
(10986, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:23:54'),
(10987, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-16 21:24:58'),
(10988, 1, '104.33.58.117', 'shipping/fedex', '0', 'GET', '2019-11-16 21:25:00'),
(10989, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-16 21:25:31'),
(10990, 1, '104.33.58.117', 'shipping/jd', '0', 'GET', '2019-11-16 21:25:33'),
(10991, 1, '104.33.58.117', 'shipping/jd', '0', 'POST', '2019-11-16 21:27:13'),
(10992, 1, '104.33.58.117', 'extension/shipping', 'view the shipping page', 'GET', '2019-11-16 21:27:13'),
(10993, 1, '104.33.58.117', 'shipping/jd', '0', 'GET', '2019-11-16 21:27:16'),
(10994, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:27:37'),
(10995, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:27:42'),
(10996, 1, '104.33.58.117', 'extension/shipping/get_shipping_services', '0', 'GET', '2019-11-16 21:27:48'),
(10997, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-16 21:27:50'),
(10998, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:27:50'),
(10999, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:27:52'),
(11000, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:27:57'),
(11001, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:28:03'),
(11002, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:28:31'),
(11003, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:28:37'),
(11004, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:28:42'),
(11005, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-16 21:29:32'),
(11006, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-16 21:29:32'),
(11007, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:31:09'),
(11008, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-16 21:31:12'),
(11009, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-16 21:31:12'),
(11010, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-16 21:31:23'),
(11011, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-16 21:31:34'),
(11012, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-16 21:31:37'),
(11013, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-16 21:35:27'),
(11014, NULL, '113.35.251.98', '', 'view the dashboard', 'GET', '2019-11-17 09:46:15'),
(11015, NULL, '94.21.92.86', '', 'view the dashboard', 'GET', '2019-11-17 19:17:37'),
(11016, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-17 20:50:26'),
(11017, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-17 20:50:32'),
(11018, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-17 20:50:32'),
(11019, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 20:50:35'),
(11020, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-17 20:50:42'),
(11021, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-17 20:50:42'),
(11022, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-17 20:50:53'),
(11023, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:05:03'),
(11024, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'POST', '2019-11-17 21:05:40'),
(11025, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:06:11'),
(11026, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:06:14'),
(11027, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:06:27'),
(11028, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:06:45'),
(11029, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'POST', '2019-11-17 21:07:20'),
(11030, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-17 21:07:20'),
(11031, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:08:06'),
(11032, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:08:10'),
(11033, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-17 21:08:36'),
(11034, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-17 21:08:36'),
(11035, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-17 21:08:45'),
(11036, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:08:47'),
(11037, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:09:00'),
(11038, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2019-11-17 21:09:03'),
(11039, 1, '104.33.58.117', 'store/store/edit', 'view the store edit page', 'GET', '2019-11-17 21:09:05'),
(11040, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-17 21:09:13'),
(11041, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'GET', '2019-11-17 21:09:15'),
(11042, 1, '104.33.58.117', 'client/client/edit', 'view the client edit page', 'POST', '2019-11-17 21:09:22'),
(11043, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-17 21:09:23'),
(11044, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2019-11-17 21:09:25'),
(11045, 1, '104.33.58.117', 'store/store/edit', 'view the store edit page', 'GET', '2019-11-17 21:09:26'),
(11046, 1, '104.33.58.117', 'store/store/edit', 'view the store edit page', 'POST', '2019-11-17 21:09:39'),
(11047, 1, '104.33.58.117', 'store/store', 'view the store page', 'GET', '2019-11-17 21:09:39'),
(11048, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:09:42'),
(11049, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:09:59'),
(11050, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-17 21:10:02'),
(11051, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-17 21:10:02'),
(11052, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-17 21:10:12'),
(11053, 1, '104.33.58.117', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-11-17 21:10:19'),
(11054, 1, '104.33.58.117', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-11-17 21:10:21'),
(11055, 1, '104.33.58.117', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-11-17 21:10:23'),
(11056, 1, '104.33.58.117', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2019-11-17 21:10:50'),
(11057, 1, '104.33.58.117', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2019-11-17 21:10:50'),
(11058, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-17 21:10:59'),
(11059, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:10:59'),
(11060, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-17 21:11:05'),
(11061, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-17 21:11:05'),
(11062, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:16:18'),
(11063, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-17 21:16:22'),
(11064, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-17 21:16:22'),
(11065, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-17 21:17:01'),
(11066, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-11-18 13:36:15'),
(11067, NULL, '34.77.141.50', '', 'view the dashboard', 'GET', '2019-11-18 15:59:17'),
(11068, NULL, '207.46.13.90', '', 'view the dashboard', 'GET', '2019-11-18 20:45:11'),
(11069, NULL, '5.62.49.32', '', 'view the dashboard', 'GET', '2019-11-18 23:05:10'),
(11070, NULL, '162.213.36.248', '', 'view the dashboard', 'GET', '2019-11-19 00:32:18'),
(11071, NULL, '209.17.96.90', '', 'view the dashboard', 'GET', '2019-11-19 00:35:12'),
(11072, NULL, '34.212.192.132', '', 'view the dashboard', 'GET', '2019-11-19 02:13:21'),
(11073, NULL, '64.157.240.250', '', 'view the dashboard', 'GET', '2019-11-19 14:45:57'),
(11074, NULL, '54.191.13.116', '', 'view the dashboard', 'GET', '2019-11-20 03:36:55'),
(11075, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-11-20 20:32:18'),
(11076, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-11-20 20:32:23'),
(11077, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-20 20:32:23'),
(11078, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 20:32:26'),
(11079, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-20 21:12:16'),
(11080, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-20 21:12:18'),
(11081, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:12:19'),
(11082, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:20:02'),
(11083, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:21:37'),
(11084, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:22:54'),
(11085, 1, '142.129.145.149', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-20 21:22:57'),
(11086, 1, '142.129.145.149', 'sale/label/execute_d', '0', 'POST', '2019-11-20 21:22:57'),
(11087, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:25:46'),
(11088, 1, '142.129.145.149', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-20 21:25:49'),
(11089, 1, '142.129.145.149', 'sale/label/execute_d', '0', 'POST', '2019-11-20 21:25:49'),
(11090, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:26:38'),
(11091, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-20 21:26:40'),
(11092, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-20 21:26:42'),
(11093, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:26:42'),
(11094, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:27:05'),
(11095, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-20 21:27:38'),
(11096, 1, '142.129.145.149', 'sale/sale/edit', 'view the order edit page', 'POST', '2019-11-20 21:27:40'),
(11097, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:27:41'),
(11098, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:29:36'),
(11099, 1, '142.129.145.149', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-20 21:29:38'),
(11100, 1, '142.129.145.149', 'sale/label/execute_d', '0', 'POST', '2019-11-20 21:29:38'),
(11101, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-11-20 21:31:18'),
(11102, 1, '142.129.145.149', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-20 21:31:24'),
(11103, 1, '142.129.145.149', 'sale/label/execute_d', '0', 'POST', '2019-11-20 21:31:24'),
(11104, NULL, '220.249.245.114', '', 'view the dashboard', 'GET', '2019-11-20 22:39:04'),
(11105, NULL, '54.188.242.87', '', 'view the dashboard', 'GET', '2019-11-20 23:52:27'),
(11106, NULL, '173.44.222.187', '', 'view the dashboard', 'GET', '2019-11-21 05:39:48'),
(11107, NULL, '173.44.222.187', 'common/login', 'view the login page', 'GET', '2019-11-21 05:39:48'),
(11108, NULL, '173.44.222.187', '', 'view the dashboard', 'GET', '2019-11-21 05:39:52'),
(11109, NULL, '178.164.164.19', '', 'view the dashboard', 'GET', '2019-11-21 11:13:34'),
(11110, NULL, '178.136.75.51', '', 'view the dashboard', 'GET', '2019-11-21 17:30:56'),
(11111, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-21 20:34:17'),
(11112, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-21 20:34:21'),
(11113, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-21 20:34:21'),
(11114, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-21 20:34:24'),
(11115, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:47:35'),
(11116, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:47:35'),
(11117, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:47:52'),
(11118, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:47:52'),
(11119, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-21 20:53:05'),
(11120, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-21 20:54:07'),
(11121, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:54:09'),
(11122, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:54:09'),
(11123, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:54:19'),
(11124, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:54:19'),
(11125, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-21 20:54:47'),
(11126, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-21 20:54:50'),
(11127, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:54:52'),
(11128, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:54:52'),
(11129, 1, '104.33.58.117', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-11-21 20:55:06'),
(11130, 1, '104.33.58.117', 'sale/label/execute_d', '0', 'POST', '2019-11-21 20:55:06'),
(11131, 1, '104.33.58.117', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-11-21 20:55:18'),
(11132, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-21 20:55:27'),
(11133, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-21 21:04:50'),
(11134, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:04:55'),
(11135, 1, '104.33.58.117', 'catalog/product/add', 'view the product add page', 'GET', '2019-11-21 21:07:09'),
(11136, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:07:10'),
(11137, 1, '104.33.58.117', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-11-21 21:07:29'),
(11138, 1, '104.33.58.117', 'check/checkout', 'view the checkout page', 'GET', '2019-11-21 21:08:18'),
(11139, 1, '104.33.58.117', 'client/client', 'view the client page', 'GET', '2019-11-21 21:08:21'),
(11140, 1, '104.33.58.117', 'finance/transaction', 'view the transaction page', 'GET', '2019-11-21 21:09:08'),
(11141, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:09:55'),
(11142, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:10:00'),
(11143, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:10:19'),
(11144, 1, '104.33.58.117', 'catalog/product/add', 'view the product add page', 'GET', '2019-11-21 21:10:34'),
(11145, NULL, '104.32.223.221', '', 'view the dashboard', 'GET', '2019-11-21 21:14:57'),
(11146, NULL, '104.32.223.221', 'common/login', 'view the login page', 'POST', '2019-11-21 21:15:04'),
(11147, 1, '104.32.223.221', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-21 21:15:04'),
(11148, 1, '104.32.223.221', 'catalog/product/add', 'view the product add page', 'GET', '2019-11-21 21:15:47'),
(11149, 1, '104.32.223.221', 'catalog/product/add', 'view the product add page', 'POST', '2019-11-21 21:16:29'),
(11150, 1, '104.32.223.221', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:16:29'),
(11151, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:16:50'),
(11152, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:16:56'),
(11153, 1, '104.32.223.221', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:17:01');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(11154, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:17:09'),
(11155, 1, '104.32.223.221', 'inventory/inventory', 'view the inventory page', 'GET', '2019-11-21 21:17:15'),
(11156, 1, '104.32.223.221', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:17:25'),
(11157, 1, '104.32.223.221', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:17:25'),
(11158, 1, '104.32.223.221', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:17:25'),
(11159, 1, '104.32.223.221', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:17:25'),
(11160, 1, '104.32.223.221', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:17:25'),
(11161, 1, '104.32.223.221', 'warehouse/location/add', 'view the location add page', 'GET', '2019-11-21 21:17:30'),
(11162, 1, '104.32.223.221', 'warehouse/warehouse', 'view the warehouse page', 'GET', '2019-11-21 21:18:17'),
(11163, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:18:31'),
(11164, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:18:33'),
(11165, 1, '104.32.223.221', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:18:37'),
(11166, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:18:41'),
(11167, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:18:42'),
(11168, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:18:50'),
(11169, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:19:06'),
(11170, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:19:11'),
(11171, 1, '104.32.223.221', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2019-11-21 21:19:15'),
(11172, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:19:17'),
(11173, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:19:25'),
(11174, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:19:30'),
(11175, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:19:33'),
(11176, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:19:34'),
(11177, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:19:37'),
(11178, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:19:40'),
(11179, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:19:49'),
(11180, 1, '104.33.58.117', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:19:51'),
(11181, 1, '104.33.58.117', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:19:53'),
(11182, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:19:57'),
(11183, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:19:59'),
(11184, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:20:01'),
(11185, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:20:10'),
(11186, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:20:12'),
(11187, 1, '104.33.58.117', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:20:14'),
(11188, 1, '104.33.58.117', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:20:17'),
(11189, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:20:22'),
(11190, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:20:29'),
(11191, 1, '104.33.58.117', 'inventory/inventory_batch/filter', '0', 'GET', '2019-11-21 21:20:43'),
(11192, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:20:49'),
(11193, 1, '104.33.58.117', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:20:53'),
(11194, 1, '104.33.58.117', 'warehouse/location/add', 'view the location add page', 'GET', '2019-11-21 21:21:00'),
(11195, 1, '104.33.58.117', 'warehouse/location/add', 'view the location add page', 'POST', '2019-11-21 21:21:06'),
(11196, 1, '104.33.58.117', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:21:06'),
(11197, 1, '104.33.58.117', 'warehouse/location', 'view the location page', 'GET', '2019-11-21 21:21:09'),
(11198, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:21:11'),
(11199, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-11-21 21:21:12'),
(11200, 1, '104.33.58.117', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:21:14'),
(11201, 1, '104.33.58.117', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:21:16'),
(11202, 1, '104.33.58.117', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:21:21'),
(11203, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-21 21:21:21'),
(11204, 1, '104.32.223.221', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-11-21 21:21:41'),
(11205, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:21:45'),
(11206, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:21:45'),
(11207, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:21:51'),
(11208, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-11-21 21:22:29'),
(11209, 1, '104.32.223.221', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-11-21 21:22:33'),
(11210, 1, '104.32.223.221', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2019-11-21 21:22:39'),
(11211, 1, '104.32.223.221', 'inventory/refund', 'view the refund page', 'GET', '2019-11-21 21:22:41'),
(11212, 1, '104.32.223.221', 'catalog/product', 'view the product page', 'GET', '2019-11-21 21:22:45'),
(11213, 1, '104.32.223.221', 'sale/sale', 'view the order page', 'GET', '2019-11-21 21:22:58'),
(11214, NULL, '34.221.160.107', '', 'view the dashboard', 'GET', '2019-11-22 03:42:19'),
(11215, NULL, '64.157.240.250', '', 'view the dashboard', 'GET', '2019-11-22 12:05:39'),
(11216, NULL, '157.55.39.210', '', 'view the dashboard', 'GET', '2019-11-22 15:52:00'),
(11217, NULL, '203.205.219.188', '', 'view the dashboard', 'GET', '2019-11-22 16:35:25'),
(11218, NULL, '180.97.118.219', '', 'view the dashboard', 'GET', '2019-11-22 16:36:21'),
(11219, NULL, '178.164.164.19', '', 'view the dashboard', 'GET', '2019-11-22 21:10:59'),
(11220, NULL, '220.249.245.114', '', 'view the dashboard', 'GET', '2019-11-23 01:39:42'),
(11221, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-23 03:06:53'),
(11222, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-23 20:35:00'),
(11223, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-23 20:35:05'),
(11224, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-23 20:35:05'),
(11225, 1, '104.33.58.117', 'sale/sale', 'view the order page', 'GET', '2019-11-23 20:35:09'),
(11226, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-23 20:35:14'),
(11227, 1, '104.33.58.117', 'warehouse/location', 'view the location page', 'GET', '2019-11-23 20:36:26'),
(11228, 1, '104.33.58.117', 'warehouse/location', 'view the location page', 'GET', '2019-11-23 20:40:25'),
(11229, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-23 20:40:28'),
(11230, 1, '104.33.58.117', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2019-11-23 20:40:32'),
(11231, 1, '104.33.58.117', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2019-11-23 20:40:32'),
(11232, 1, '104.33.58.117', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2019-11-23 20:40:34'),
(11233, 1, '104.33.58.117', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2019-11-23 20:40:35'),
(11234, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-23 20:45:21'),
(11235, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-23 20:46:48'),
(11236, 1, '104.33.58.117', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-11-23 20:46:51'),
(11237, NULL, '54.202.141.149', '', 'view the dashboard', 'GET', '2019-11-24 05:29:10'),
(11238, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-24 08:05:22'),
(11239, NULL, '207.46.13.141', '', 'view the dashboard', 'GET', '2019-11-24 11:10:48'),
(11240, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-11-24 11:11:46'),
(11241, NULL, '104.33.58.117', 'common/login', 'view the login page', 'POST', '2019-11-24 11:11:51'),
(11242, 1, '104.33.58.117', 'common/dashboard', 'view the dashboard', 'GET', '2019-11-24 11:11:51'),
(11243, 1, '104.33.58.117', 'check/checkout', 'view the checkout page', 'GET', '2019-11-24 11:11:54'),
(11244, 1, '104.33.58.117', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-11-24 11:11:56'),
(11245, 1, '104.33.58.117', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-11-24 11:11:56'),
(11246, 1, '104.33.58.117', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2019-11-24 11:11:58'),
(11247, 1, '104.33.58.117', 'search/search', 'try to search something', 'GET', '2019-11-24 11:11:58'),
(11248, 1, '104.33.58.117', 'check/checkout', 'view the checkout page', 'GET', '2019-11-24 11:11:58'),
(11249, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-24 11:12:02'),
(11250, 1, '104.33.58.117', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-11-24 11:12:03'),
(11251, 1, '104.33.58.117', 'catalog/product/edit', 'view the product edit page', 'POST', '2019-11-24 11:12:04'),
(11252, 1, '104.33.58.117', 'catalog/product', 'view the product page', 'GET', '2019-11-24 11:12:05'),
(11253, NULL, '104.32.223.221', 'common/login', 'view the login page', 'GET', '2019-11-24 19:35:46'),
(11254, NULL, '54.245.214.47', '', 'view the dashboard', 'GET', '2019-11-25 08:36:27'),
(11255, NULL, '100.24.18.117', '', 'view the dashboard', 'GET', '2019-11-25 11:42:30'),
(11256, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-25 11:53:50'),
(11257, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:39'),
(11258, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:40'),
(11259, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:41'),
(11260, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:42'),
(11261, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:43'),
(11262, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:45'),
(11263, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:46'),
(11264, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:47'),
(11265, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:48'),
(11266, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:50'),
(11267, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:51'),
(11268, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:52'),
(11269, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:53'),
(11270, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:54'),
(11271, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:55'),
(11272, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:57'),
(11273, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:53:58'),
(11274, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:54:00'),
(11275, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:54:01'),
(11276, NULL, '118.123.11.175', '', 'view the dashboard', 'GET', '2019-11-26 00:54:02'),
(11277, NULL, '34.221.2.11', '', 'view the dashboard', 'GET', '2019-11-26 04:03:08'),
(11278, NULL, '207.46.13.134', '', 'view the dashboard', 'GET', '2019-11-26 13:15:56'),
(11279, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-26 15:29:17'),
(11280, NULL, '85.204.246.193', '', 'view the dashboard', 'GET', '2019-11-26 20:45:31'),
(11281, NULL, '150.109.109.160', '', 'view the dashboard', 'GET', '2019-11-27 22:24:02'),
(11282, NULL, '157.55.39.22', '', 'view the dashboard', 'GET', '2019-11-28 12:08:33'),
(11283, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-11-28 22:50:11'),
(11284, NULL, '207.46.13.220', '', 'view the dashboard', 'GET', '2019-11-29 08:24:28'),
(11285, NULL, '18.223.160.202', '', 'view the dashboard', 'GET', '2019-11-30 19:31:52'),
(11286, NULL, '31.13.127.20', '', 'view the dashboard', 'GET', '2019-12-01 05:32:50'),
(11287, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-01 06:31:28'),
(11288, NULL, '92.249.158.9', '', 'view the dashboard', 'GET', '2019-12-01 20:32:46'),
(11289, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-12-01 21:11:41'),
(11290, NULL, '185.136.159.26', '', 'view the dashboard', 'GET', '2019-12-02 01:32:47'),
(11291, NULL, '52.11.171.18', '', 'view the dashboard', 'GET', '2019-12-02 04:22:35'),
(11292, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-02 10:07:59'),
(11293, NULL, '92.63.111.27', '', 'view the dashboard', 'GET', '2019-12-02 12:53:50'),
(11294, NULL, '209.17.96.66', '', 'view the dashboard', 'GET', '2019-12-02 17:55:33'),
(11295, NULL, '101.91.62.11', '', 'view the dashboard', 'GET', '2019-12-02 19:50:30'),
(11296, NULL, '101.91.60.105', '', 'view the dashboard', 'GET', '2019-12-02 19:51:31'),
(11297, NULL, '40.77.167.29', '', 'view the dashboard', 'GET', '2019-12-02 20:04:48'),
(11298, NULL, '89.147.68.120', '', 'view the dashboard', 'GET', '2019-12-03 09:41:27'),
(11299, NULL, '68.183.148.148', '', 'view the dashboard', 'GET', '2019-12-03 12:39:01'),
(11300, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-03 13:44:07'),
(11301, NULL, '101.91.60.115', '', 'view the dashboard', 'GET', '2019-12-03 16:25:20'),
(11302, NULL, '40.77.167.78', '', 'view the dashboard', 'GET', '2019-12-03 19:06:29'),
(11303, NULL, '104.227.246.106', '', 'view the dashboard', 'GET', '2019-12-04 03:10:18'),
(11304, NULL, '207.46.13.99', '', 'view the dashboard', 'GET', '2019-12-04 09:40:22'),
(11305, NULL, '207.46.13.99', '', 'view the dashboard', 'GET', '2019-12-04 12:12:33'),
(11306, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-04 17:38:06'),
(11307, NULL, '207.46.13.188', '', 'view the dashboard', 'GET', '2019-12-05 11:06:18'),
(11308, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-05 21:36:05'),
(11309, NULL, '40.77.167.41', '', 'view the dashboard', 'GET', '2019-12-06 12:39:38'),
(11310, NULL, '67.203.6.155', '', 'view the dashboard', 'GET', '2019-12-06 16:15:59'),
(11311, NULL, '34.207.188.147', '', 'view the dashboard', 'GET', '2019-12-06 16:52:24'),
(11312, NULL, '209.17.97.10', '', 'view the dashboard', 'GET', '2019-12-07 00:50:05'),
(11313, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-07 01:49:25'),
(11314, NULL, '77.51.133.248', '', 'view the dashboard', 'GET', '2019-12-08 00:14:48'),
(11315, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-08 05:52:02'),
(11316, NULL, '75.149.221.170', '', 'view the dashboard', 'GET', '2019-12-08 07:48:59'),
(11317, NULL, '157.55.39.155', '', 'view the dashboard', 'GET', '2019-12-08 13:04:42'),
(11318, NULL, '144.168.162.250', '', 'view the dashboard', 'GET', '2019-12-09 06:43:37'),
(11319, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-09 09:46:26'),
(11320, NULL, '206.189.124.115', '', 'view the dashboard', 'GET', '2019-12-09 12:13:48'),
(11321, NULL, '162.253.68.208', '', 'view the dashboard', 'GET', '2019-12-09 12:18:08'),
(11322, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-12-09 17:04:00'),
(11323, NULL, '220.249.245.114', '', 'view the dashboard', 'GET', '2019-12-10 03:59:54'),
(11324, NULL, '185.189.115.26', '', 'view the dashboard', 'GET', '2019-12-10 07:26:49'),
(11325, NULL, '40.77.167.171', '', 'view the dashboard', 'GET', '2019-12-10 12:14:56'),
(11326, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-10 13:50:22'),
(11327, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-12-10 13:51:34'),
(11328, NULL, '40.77.167.171', '', 'view the dashboard', 'GET', '2019-12-10 14:03:08'),
(11329, NULL, '101.227.139.194', '', 'view the dashboard', 'GET', '2019-12-10 18:12:57'),
(11330, NULL, '101.91.62.99', '', 'view the dashboard', 'GET', '2019-12-10 22:11:04'),
(11331, NULL, '84.236.87.171', '', 'view the dashboard', 'GET', '2019-12-10 22:13:00'),
(11332, NULL, '84.236.87.171', '', 'view the dashboard', 'GET', '2019-12-10 22:13:00'),
(11333, NULL, '188.213.49.242', '', 'view the dashboard', 'GET', '2019-12-11 04:25:07'),
(11334, NULL, '188.213.49.242', '', 'view the dashboard', 'GET', '2019-12-11 04:25:08'),
(11335, NULL, '188.213.49.242', '', 'view the dashboard', 'POST', '2019-12-11 04:25:09'),
(11336, NULL, '185.136.159.26', '', 'view the dashboard', 'GET', '2019-12-11 14:19:32'),
(11337, NULL, '157.55.39.255', '', 'view the dashboard', 'GET', '2019-12-11 14:22:36'),
(11338, NULL, '144.217.171.229', '', 'view the dashboard', 'GET', '2019-12-11 16:51:36'),
(11339, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-11 17:55:20'),
(11340, NULL, '89.108.99.6', '', 'view the dashboard', 'GET', '2019-12-12 09:55:49'),
(11341, NULL, '157.55.39.252', '', 'view the dashboard', 'GET', '2019-12-12 13:09:47'),
(11342, NULL, '104.248.90.54', '', 'view the dashboard', 'GET', '2019-12-12 21:03:40'),
(11343, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-13 02:32:58'),
(11344, NULL, '5.188.62.5', '', 'view the dashboard', 'GET', '2019-12-13 05:57:58'),
(11345, NULL, '75.149.221.170', '', 'view the dashboard', 'GET', '2019-12-13 06:10:24'),
(11346, NULL, '209.17.97.58', '', 'view the dashboard', 'GET', '2019-12-13 12:22:03'),
(11347, NULL, '77.222.96.144', '', 'view the dashboard', 'GET', '2019-12-13 20:06:13'),
(11348, NULL, '172.58.27.226', '', 'view the dashboard', 'GET', '2019-12-15 14:27:06'),
(11349, NULL, '104.32.219.250', '', 'view the dashboard', 'GET', '2019-12-15 14:29:37'),
(11350, NULL, '104.32.219.250', 'common/login', 'view the login page', 'POST', '2019-12-15 14:29:52'),
(11351, 1, '104.32.219.250', 'common/login', 'view the login page', 'POST', '2019-12-15 14:29:53'),
(11352, 1, '104.32.219.250', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-15 14:29:53'),
(11353, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:30:13'),
(11354, 1, '104.32.219.250', 'catalog/product', 'view the product page', 'GET', '2019-12-15 14:30:20'),
(11355, 1, '104.32.219.250', 'check/checkout', 'view the checkout page', 'GET', '2019-12-15 14:30:24'),
(11356, 1, '104.32.219.250', 'client/client', 'view the client page', 'GET', '2019-12-15 14:30:31'),
(11357, 1, '104.32.219.250', 'client/client', 'view the client page', 'GET', '2019-12-15 14:30:31'),
(11358, 1, '104.32.219.250', 'catalog/product/add', 'view the product add page', 'GET', '2019-12-15 14:30:42'),
(11359, 1, '104.32.219.250', 'catalog/product/add', 'view the product add page', 'POST', '2019-12-15 14:32:22'),
(11360, 1, '104.32.219.250', 'catalog/product', 'view the product page', 'GET', '2019-12-15 14:32:24'),
(11361, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:32:49'),
(11362, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-15 14:32:55'),
(11363, 1, '104.32.219.250', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-15 14:33:09'),
(11364, 1, '104.32.219.250', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-15 14:33:10'),
(11365, 1, '104.32.219.250', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-15 14:33:13'),
(11366, 1, '104.32.219.250', 'warehouse/location', 'view the location page', 'GET', '2019-12-15 14:33:28'),
(11367, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:33:50'),
(11368, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-15 14:33:58'),
(11369, 1, '104.32.219.250', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-15 14:34:03'),
(11370, 1, '104.32.219.250', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-15 14:34:04'),
(11371, 1, '104.32.219.250', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-15 14:34:09'),
(11372, 1, '104.32.219.250', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-15 14:34:19'),
(11373, 1, '104.32.219.250', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-15 14:34:20'),
(11374, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'POST', '2019-12-15 14:36:08'),
(11375, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-15 14:36:18'),
(11376, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'POST', '2019-12-15 14:36:31'),
(11377, 1, '104.32.219.250', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-15 14:36:38'),
(11378, 1, '104.32.219.250', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-12-15 14:36:51'),
(11379, 1, '104.32.219.250', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2019-12-15 14:37:11'),
(11380, 1, '104.32.219.250', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-12-15 14:37:18'),
(11381, 1, '104.32.219.250', 'catalog/product_ajax/autocomplete', '0', 'GET', '2019-12-15 14:37:18'),
(11382, 1, '104.32.219.250', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-15 14:37:23'),
(11383, 1, '104.32.219.250', 'inventory/inventory_batch/add', 'view the inventory add page', 'POST', '2019-12-15 14:37:31'),
(11384, 1, '104.32.219.250', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2019-12-15 14:37:32'),
(11385, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:38:01'),
(11386, 1, '104.32.219.250', 'catalog/product', 'view the product page', 'GET', '2019-12-15 14:38:06'),
(11387, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:38:19'),
(11388, 1, '104.32.219.250', 'check/checkin', 'view the checkin page', 'GET', '2019-12-15 14:38:41'),
(11389, 1, '104.32.219.250', 'finance/transaction', 'view the transaction page', 'GET', '2019-12-15 14:39:19'),
(11390, 1, '104.32.219.250', 'finance/transaction/add', 'view the transaction add page', 'GET', '2019-12-15 14:39:26'),
(11391, 1, '104.32.219.250', 'finance/transaction/add', 'view the transaction add page', 'POST', '2019-12-15 14:40:05'),
(11392, 1, '104.32.219.250', 'finance/transaction', 'view the transaction page', 'GET', '2019-12-15 14:40:06'),
(11393, 1, '104.32.219.250', 'finance/transaction/filter', '0', 'GET', '2019-12-15 14:40:33'),
(11394, 1, '104.32.219.250', 'sale/sale', 'view the order page', 'GET', '2019-12-15 14:41:51'),
(11395, 1, '104.32.219.250', 'sale/sale/add', 'view the order add page', 'GET', '2019-12-15 14:41:55'),
(11396, 1, '104.32.219.250', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-12-15 14:42:04'),
(11397, 1, '104.32.219.250', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-12-15 14:42:05'),
(11398, 1, '104.32.219.250', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2019-12-15 14:42:10'),
(11399, 1, '104.32.219.250', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2019-12-15 14:42:19'),
(11400, 1, '104.32.219.250', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2019-12-15 14:42:19'),
(11401, 1, '104.32.219.250', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2019-12-15 14:42:22'),
(11402, 1, '104.32.219.250', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2019-12-15 14:42:22'),
(11403, 1, '104.32.219.250', 'sale/sale/add', 'view the order add page', 'POST', '2019-12-15 14:42:37'),
(11404, 1, '104.32.219.250', 'sale/sale', 'view the order page', 'GET', '2019-12-15 14:42:38'),
(11405, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:04'),
(11406, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:04'),
(11407, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:05'),
(11408, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:07'),
(11409, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:08'),
(11410, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:09'),
(11411, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:10'),
(11412, 1, '104.32.219.250', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-12-15 14:43:29'),
(11413, 1, '104.32.219.250', 'sale/label/execute_d', '0', 'POST', '2019-12-15 14:43:29'),
(11414, 1, '104.32.219.250', 'sale/sale_ajax/change_status', '0', 'GET', '2019-12-15 14:43:56'),
(11415, 1, '104.32.219.250', 'check/checkout', 'view the checkout page', 'GET', '2019-12-15 14:44:17'),
(11416, 1, '104.32.219.250', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-12-15 14:44:27'),
(11417, 1, '104.32.219.250', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-12-15 14:44:28'),
(11418, 1, '104.32.219.250', 'check/checkout', 'view the checkout page', 'GET', '2019-12-15 14:44:30'),
(11419, 1, '104.32.219.250', 'check/checkout/add', 'view the checkout add page', 'GET', '2019-12-15 14:44:53'),
(11420, 1, '104.32.219.250', 'sale/sale', 'view the order page', 'GET', '2019-12-15 14:50:17'),
(11421, 1, '104.32.219.250', 'sale/sale/edit', 'view the order edit page', 'GET', '2019-12-15 14:50:26'),
(11422, 1, '104.32.219.250', 'sale/sale', 'view the order page', 'GET', '2019-12-15 14:50:37'),
(11423, 1, '104.32.219.250', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-12-15 14:51:22'),
(11424, 1, '104.32.219.250', 'sale/label/check', 'check if shipping label is printable', 'POST', '2019-12-15 14:51:22'),
(11425, 1, '104.32.219.250', 'sale/label/execute_d', '0', 'POST', '2019-12-15 14:51:22'),
(11426, 1, '104.32.219.250', 'sale/label/execute_d', '0', 'POST', '2019-12-15 14:51:29'),
(11427, NULL, '184.250.56.183', '', 'view the dashboard', 'GET', '2019-12-15 16:38:11'),
(11428, NULL, '184.250.56.183', 'common/login', 'view the login page', 'POST', '2019-12-15 16:38:37'),
(11429, NULL, '184.250.56.183', 'common/login', 'view the login page', 'POST', '2019-12-15 16:38:59'),
(11430, NULL, '184.250.56.183', '', 'view the dashboard', 'GET', '2019-12-15 17:30:18'),
(11431, NULL, '184.250.56.183', '', 'view the dashboard', 'GET', '2019-12-15 17:31:57'),
(11432, NULL, '184.250.56.183', 'common/login', 'view the login page', 'POST', '2019-12-15 17:33:28'),
(11433, NULL, '184.250.56.183', 'common/login', 'view the login page', 'GET', '2019-12-15 17:36:39'),
(11434, NULL, '184.250.56.183', 'common/login', 'view the login page', 'POST', '2019-12-15 17:36:59'),
(11435, NULL, '104.32.223.221', 'common/login', 'view the login page', 'GET', '2019-12-15 19:03:12'),
(11436, NULL, '184.250.56.183', '', 'view the dashboard', 'GET', '2019-12-15 19:05:51'),
(11437, NULL, '184.250.56.183', 'common/login', 'view the login page', 'POST', '2019-12-15 19:06:26'),
(11438, NULL, '184.250.56.183', '', 'view the dashboard', 'GET', '2019-12-15 19:06:30'),
(11439, NULL, '101.89.239.230', '', 'view the dashboard', 'GET', '2019-12-15 19:06:53'),
(11440, NULL, '101.89.19.197', 'common/login', 'view the login page', 'GET', '2019-12-15 19:07:28'),
(11441, NULL, '104.33.58.117', '', 'view the dashboard', 'GET', '2019-12-16 11:34:12'),
(11442, NULL, '46.101.251.228', '', 'view the dashboard', 'GET', '2019-12-16 12:53:05'),
(11443, NULL, '40.77.167.29', '', 'view the dashboard', 'GET', '2019-12-16 15:07:09'),
(11444, NULL, '37.9.87.188', '', 'view the dashboard', 'GET', '2019-12-16 16:20:47'),
(11445, NULL, '209.17.96.122', '', 'view the dashboard', 'GET', '2019-12-17 07:13:17'),
(11446, NULL, '150.109.53.202', '', 'view the dashboard', 'GET', '2019-12-17 13:56:17'),
(11447, NULL, '101.89.29.97', '', 'view the dashboard', 'GET', '2019-12-17 13:57:17'),
(11448, NULL, '3.8.131.45', '', 'view the dashboard', 'GET', '2019-12-17 18:42:40'),
(11449, NULL, '54.186.120.179', '', 'view the dashboard', 'GET', '2019-12-18 02:09:58'),
(11450, NULL, '82.202.161.133', '', 'view the dashboard', 'GET', '2019-12-18 21:52:47'),
(11451, NULL, '188.143.1.114', '', 'view the dashboard', 'GET', '2019-12-19 05:09:11'),
(11452, NULL, '188.143.1.114', '', 'view the dashboard', 'GET', '2019-12-19 05:09:11'),
(11453, NULL, '175.44.32.251', '', 'view the dashboard', 'GET', '2019-12-19 10:28:03'),
(11454, NULL, '175.44.32.251', '', 'view the dashboard', 'GET', '2019-12-19 10:28:03'),
(11455, NULL, '175.44.32.251', '', 'view the dashboard', 'GET', '2019-12-19 10:28:05'),
(11456, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-12-19 16:59:16'),
(11457, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-12-19 17:00:49'),
(11458, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-19 17:00:49'),
(11459, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-19 17:14:43'),
(11460, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-19 17:14:45'),
(11461, 1, '142.129.145.149', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-19 17:22:59'),
(11462, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:23:00'),
(11463, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'POST', '2019-12-19 17:23:11'),
(11464, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-19 17:32:19'),
(11465, 1, '142.129.145.149', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-19 17:32:22'),
(11466, 1, '142.129.145.149', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-19 17:32:23'),
(11467, 1, '142.129.145.149', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-19 17:32:24'),
(11468, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:32:25'),
(11469, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-19 17:32:27'),
(11470, 1, '142.129.145.149', 'warehouse/location', 'view the location page', 'GET', '2019-12-19 17:32:38'),
(11471, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-19 17:32:50'),
(11472, 1, '142.129.145.149', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-19 17:32:52'),
(11473, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:32:53'),
(11474, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-19 17:32:54'),
(11475, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:33:02'),
(11476, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:33:02'),
(11477, 1, '142.129.145.149', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-19 17:33:02'),
(11478, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'POST', '2019-12-19 17:33:03'),
(11479, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-19 17:33:04'),
(11480, NULL, '34.212.43.152', '', 'view the dashboard', 'GET', '2019-12-19 23:53:47'),
(11481, NULL, '40.77.167.114', '', 'view the dashboard', 'GET', '2019-12-20 15:32:18'),
(11482, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-12-20 16:31:54'),
(11483, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-12-20 16:32:01'),
(11484, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-20 16:32:01'),
(11485, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 16:32:03'),
(11486, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-20 16:32:05'),
(11487, NULL, '52.23.172.127', '', 'view the dashboard', 'GET', '2019-12-20 16:40:27'),
(11488, 1, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-12-20 17:04:33'),
(11489, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-20 17:04:33'),
(11490, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:04:35'),
(11491, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:08:14'),
(11492, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:08:50'),
(11493, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:08:54'),
(11494, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2019-12-20 17:08:58'),
(11495, 1, '142.129.145.149', 'sale/customer', 'view the customer page', 'GET', '2019-12-20 17:09:00'),
(11496, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2019-12-20 17:09:04'),
(11497, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:19:59'),
(11498, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:20:34'),
(11499, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:20:35'),
(11500, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:20:45'),
(11501, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-20 17:20:47'),
(11502, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:21:06'),
(11503, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:21:29'),
(11504, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-20 17:21:31'),
(11505, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:21:33'),
(11506, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-20 17:25:30'),
(11507, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:25:31'),
(11508, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:25:40'),
(11509, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:25:59'),
(11510, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2019-12-20 17:26:48'),
(11511, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2019-12-20 17:26:50'),
(11512, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2019-12-20 17:27:32'),
(11513, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:27:35'),
(11514, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:29:52'),
(11515, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:31:55'),
(11516, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-20 17:33:51'),
(11517, NULL, '66.249.66.136', '', 'view the dashboard', 'GET', '2019-12-20 20:58:52'),
(11518, NULL, '66.249.66.132', '', 'view the dashboard', 'GET', '2019-12-20 23:39:24'),
(11519, NULL, '209.17.96.98', '', 'view the dashboard', 'GET', '2019-12-23 23:47:13'),
(11520, NULL, '34.220.6.91', '', 'view the dashboard', 'GET', '2019-12-25 08:12:44'),
(11521, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2019-12-31 04:56:25'),
(11522, NULL, '66.102.6.202', '', 'view the dashboard', 'GET', '2019-12-31 04:56:27'),
(11523, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2019-12-31 04:57:48'),
(11524, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-31 04:57:48'),
(11525, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 04:58:12'),
(11526, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 04:58:18'),
(11527, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:00:14'),
(11528, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:00:17'),
(11529, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:00:22'),
(11530, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 05:00:25'),
(11531, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:01:52'),
(11532, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 05:02:31'),
(11533, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:02:31'),
(11534, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:02:35'),
(11535, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 05:02:41'),
(11536, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:02:41'),
(11537, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:02:44'),
(11538, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-31 05:03:11'),
(11539, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2019-12-31 05:03:15'),
(11540, NULL, '66.102.6.206', '', 'view the dashboard', 'GET', '2019-12-31 05:04:02'),
(11541, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2019-12-31 05:06:48'),
(11542, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2019-12-31 05:06:50'),
(11543, 1, '104.33.51.55', 'catalog/product/add', 'view the product add page', 'GET', '2019-12-31 05:06:58'),
(11544, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:07:00'),
(11545, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-31 05:07:03'),
(11546, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-31 05:07:05'),
(11547, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2019-12-31 05:07:07'),
(11548, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 05:07:09'),
(11549, 1, '104.33.51.55', 'search/search', 'try to search something', 'GET', '2019-12-31 05:07:13'),
(11550, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2019-12-31 05:07:13'),
(11551, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:07:14'),
(11552, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:07:26'),
(11553, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:08:43'),
(11554, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-31 05:08:48'),
(11555, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2019-12-31 05:08:49'),
(11556, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 05:08:51'),
(11557, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 05:08:57'),
(11558, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 05:09:08'),
(11559, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:09:09'),
(11560, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:09:14'),
(11561, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:09:20'),
(11562, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:09:27'),
(11563, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:09:31'),
(11564, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:10:29'),
(11565, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:12:19'),
(11566, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:12:35'),
(11567, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2019-12-31 05:14:40'),
(11568, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:15:38'),
(11569, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:15:49'),
(11570, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:15:50'),
(11571, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:15:51'),
(11572, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 05:15:52'),
(11573, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:16:34'),
(11574, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:17:17'),
(11575, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:17:23'),
(11576, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:18:37'),
(11577, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:19:08'),
(11578, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:19:27'),
(11579, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:19:32'),
(11580, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:19:58'),
(11581, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:20:26'),
(11582, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:20:53'),
(11583, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:20:58'),
(11584, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:21:01'),
(11585, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:21:24'),
(11586, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:21:32'),
(11587, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:21:40'),
(11588, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-31 05:21:47'),
(11589, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:23:18'),
(11590, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:23:21'),
(11591, 1, '104.33.51.55', 'check/checkin_print', '0', 'GET', '2019-12-31 05:23:34'),
(11592, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:30:30'),
(11593, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2019-12-31 05:34:13'),
(11594, 1, '104.33.51.55', 'client/client/edit', 'view the client edit page', 'GET', '2019-12-31 05:34:16'),
(11595, 1, '104.33.51.55', 'client/client/edit', 'view the client edit page', 'POST', '2019-12-31 05:34:22'),
(11596, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2019-12-31 05:34:22'),
(11597, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2019-12-31 05:45:33'),
(11598, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:48:36'),
(11599, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:48:38'),
(11600, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 05:48:54'),
(11601, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:48:57'),
(11602, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:51:40'),
(11603, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:56:01'),
(11604, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:56:57'),
(11605, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:57:39'),
(11606, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:58:22'),
(11607, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:59:02'),
(11608, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 05:59:35'),
(11609, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:00:39'),
(11610, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:05:59'),
(11611, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:06:02'),
(11612, 1, '104.33.51.55', 'check/checkin/delete', 'delete a checkout', 'GET', '2019-12-31 06:06:07'),
(11613, 1, '104.33.51.55', 'check/checkin/reload', '0', 'GET', '2019-12-31 06:06:07'),
(11614, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:06:08'),
(11615, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:11:04'),
(11616, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:16:30'),
(11617, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:16:38'),
(11618, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:16:39'),
(11619, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:18:45'),
(11620, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:23:22'),
(11621, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 06:23:27'),
(11622, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:24:34'),
(11623, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:24:39'),
(11624, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:24:51'),
(11625, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:25:03'),
(11626, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 06:25:08'),
(11627, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:25:11'),
(11628, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:25:11'),
(11629, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:25:13'),
(11630, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 06:25:15'),
(11631, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:25:19'),
(11632, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:25:29'),
(11633, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 06:25:30'),
(11634, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 06:25:31'),
(11635, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:25:40'),
(11636, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:25:42'),
(11637, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:32:21'),
(11638, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:33:32'),
(11639, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:39:14'),
(11640, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:39:24'),
(11641, 1, '104.33.51.55', 'check/checkin_print', '0', 'GET', '2019-12-31 06:39:30'),
(11642, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 06:39:39'),
(11643, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:39:46'),
(11644, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:39:46'),
(11645, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:39:50'),
(11646, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:39:53');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(11647, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 06:39:55'),
(11648, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:39:57'),
(11649, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:40:07'),
(11650, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:40:40'),
(11651, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:40:41'),
(11652, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:40:42'),
(11653, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:40:48'),
(11654, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:40:49'),
(11655, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:40:50'),
(11656, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:43:51'),
(11657, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:43:53'),
(11658, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:43:55'),
(11659, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:44:14'),
(11660, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:44:15'),
(11661, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:48:50'),
(11662, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:50:34'),
(11663, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:50:55'),
(11664, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:51:20'),
(11665, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:51:35'),
(11666, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:51:52'),
(11667, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:51:53'),
(11668, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:51:55'),
(11669, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:55:06'),
(11670, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:55:21'),
(11671, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:55:26'),
(11672, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:55:26'),
(11673, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:55:28'),
(11674, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 06:55:36'),
(11675, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 06:55:38'),
(11676, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 06:55:38'),
(11677, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:55:39'),
(11678, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:59:15'),
(11679, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 06:59:59'),
(11680, 1, '104.33.51.55', 'catalog/product/add', 'view the product add page', 'GET', '2019-12-31 07:00:06'),
(11681, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2019-12-31 07:00:06'),
(11682, 1, '104.33.51.55', 'catalog/product/edit', 'view the product edit page', 'GET', '2019-12-31 07:00:48'),
(11683, 1, '104.33.51.55', 'common/filemanager', 'view the filemanager', 'GET', '2019-12-31 07:00:51'),
(11684, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-31 07:00:55'),
(11685, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2019-12-31 07:01:02'),
(11686, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:01:06'),
(11687, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:01:07'),
(11688, 1, '104.33.51.55', 'check/checkin_print', '0', 'GET', '2019-12-31 07:01:10'),
(11689, 1, '104.33.51.55', 'check/checkin_print', '0', 'GET', '2019-12-31 07:03:59'),
(11690, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:04:04'),
(11691, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2019-12-31 07:04:09'),
(11692, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2019-12-31 07:11:03'),
(11693, 1, '104.33.51.55', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-12-31 07:11:09'),
(11694, 1, '104.33.51.55', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-12-31 07:11:10'),
(11695, 1, '104.33.51.55', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-12-31 07:11:23'),
(11696, 1, '104.33.51.55', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-12-31 07:11:23'),
(11697, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2019-12-31 07:11:25'),
(11698, 1, '104.33.51.55', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2019-12-31 07:11:27'),
(11699, 1, '104.33.51.55', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2019-12-31 07:11:28'),
(11700, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:11:32'),
(11701, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:11:35'),
(11702, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:11:49'),
(11703, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:12:53'),
(11704, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:12:56'),
(11705, 1, '104.33.51.55', 'check/checkin_import', '0', 'GET', '2019-12-31 07:12:59'),
(11706, 1, '104.33.51.55', 'check/checkin_import', '0', 'GET', '2019-12-31 07:13:05'),
(11707, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:13:36'),
(11708, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:15:05'),
(11709, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:15:27'),
(11710, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:15:31'),
(11711, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:15:34'),
(11712, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 07:15:47'),
(11713, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 07:15:51'),
(11714, NULL, '142.4.218.156', '', 'view the dashboard', 'GET', '2019-12-31 11:00:19'),
(11715, NULL, '142.4.218.156', '', 'view the dashboard', 'GET', '2019-12-31 11:00:20'),
(11716, NULL, '142.4.218.156', '', 'view the dashboard', 'GET', '2019-12-31 11:00:21'),
(11717, NULL, '51.77.246.205', '', 'view the dashboard', 'GET', '2019-12-31 11:00:34'),
(11718, NULL, '3.134.93.113', '', 'view the dashboard', 'GET', '2019-12-31 13:26:54'),
(11719, NULL, '3.134.93.113', '', 'view the dashboard', 'GET', '2019-12-31 13:26:54'),
(11720, NULL, '3.134.93.113', '', 'view the dashboard', 'GET', '2019-12-31 13:26:55'),
(11721, NULL, '186.179.17.41', '', 'view the dashboard', 'GET', '2019-12-31 19:13:46'),
(11722, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2019-12-31 23:45:32'),
(11723, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2019-12-31 23:45:45'),
(11724, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2019-12-31 23:45:46'),
(11725, 1, '142.129.145.149', 'client/client', 'view the client page', 'GET', '2019-12-31 23:46:58'),
(11726, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:47:30'),
(11727, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2019-12-31 23:47:35'),
(11728, NULL, '42.236.10.117', '', 'view the dashboard', 'GET', '2019-12-31 23:47:35'),
(11729, NULL, '180.163.220.67', 'common/login', 'view the login page', 'GET', '2019-12-31 23:47:40'),
(11730, NULL, '42.236.10.114', '', 'view the dashboard', 'GET', '2019-12-31 23:47:41'),
(11731, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 23:47:43'),
(11732, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 23:47:48'),
(11733, 1, '142.129.145.149', 'search/search', 'try to search something', 'GET', '2019-12-31 23:47:48'),
(11734, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:47:48'),
(11735, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 23:47:50'),
(11736, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 23:47:55'),
(11737, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:47:55'),
(11738, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 23:47:58'),
(11739, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 23:48:05'),
(11740, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 23:48:08'),
(11741, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:48:13'),
(11742, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2019-12-31 23:48:15'),
(11743, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2019-12-31 23:48:22'),
(11744, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2019-12-31 23:48:24'),
(11745, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:48:24'),
(11746, 1, '142.129.145.149', 'check/checkin_ajax/change_status', '0', 'GET', '2019-12-31 23:48:27'),
(11747, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-31 23:48:31'),
(11748, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2019-12-31 23:48:38'),
(11749, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2019-12-31 23:50:58'),
(11750, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2019-12-31 23:51:02'),
(11751, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2020-01-01 00:10:27'),
(11752, 1, '142.129.145.149', 'check/checkin_import', '0', 'GET', '2020-01-01 00:10:29'),
(11753, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 00:10:31'),
(11754, 1, '142.129.145.149', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 00:23:29'),
(11755, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 00:23:30'),
(11756, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2020-01-01 00:40:40'),
(11757, 1, '142.129.145.149', 'sale/import', 'view the order import page', 'GET', '2020-01-01 00:57:37'),
(11758, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:09:46'),
(11759, 1, '142.129.145.149', 'catalog/product_ajax/update_value', '0', 'POST', '2020-01-01 01:09:51'),
(11760, 1, '142.129.145.149', 'catalog/product_ajax/update_value', '0', 'POST', '2020-01-01 01:09:54'),
(11761, 1, '142.129.145.149', 'catalog/product_ajax/update_value', '0', 'POST', '2020-01-01 01:10:00'),
(11762, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:13:10'),
(11763, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:16:38'),
(11764, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:28:17'),
(11765, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:28:18'),
(11766, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:28:20'),
(11767, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:28:27'),
(11768, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:28:28'),
(11769, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:28:32'),
(11770, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:28:43'),
(11771, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:28:46'),
(11772, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:29:12'),
(11773, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:29:14'),
(11774, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:29:33'),
(11775, 1, '142.129.145.149', 'catalog/product', 'view the product page', 'GET', '2020-01-01 01:29:36'),
(11776, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:29:39'),
(11777, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:29:42'),
(11778, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:29:44'),
(11779, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:29:50'),
(11780, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:29:55'),
(11781, 1, '142.129.145.149', 'catalog/product/filter', 'filter the product page', 'GET', '2020-01-01 01:30:03'),
(11782, 1, '142.129.145.149', 'client/client', 'view the client page', 'GET', '2020-01-01 01:30:07'),
(11783, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:30:10'),
(11784, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:30:58'),
(11785, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:31:00'),
(11786, 1, '142.129.145.149', 'search/search', 'try to search something', 'GET', '2020-01-01 01:31:02'),
(11787, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:31:02'),
(11788, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:33:53'),
(11789, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:33:58'),
(11790, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:33:59'),
(11791, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:34:01'),
(11792, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:34:49'),
(11793, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:35:09'),
(11794, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:36:24'),
(11795, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:36:25'),
(11796, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:36:27'),
(11797, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:38:05'),
(11798, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:38:06'),
(11799, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:38:08'),
(11800, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:38:19'),
(11801, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:38:21'),
(11802, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:38:29'),
(11803, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:39:09'),
(11804, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:40:13'),
(11805, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:40:14'),
(11806, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:40:19'),
(11807, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:40:19'),
(11808, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:40:26'),
(11809, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:40:30'),
(11810, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-01-01 01:40:37'),
(11811, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-01-01 01:40:50'),
(11812, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:41:39'),
(11813, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:41:43'),
(11814, 1, '142.129.145.149', 'search/search', 'try to search something', 'GET', '2020-01-01 01:41:43'),
(11815, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:41:43'),
(11816, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:41:45'),
(11817, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:42:38'),
(11818, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:41'),
(11819, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:41'),
(11820, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:43'),
(11821, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:43'),
(11822, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:45'),
(11823, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:45'),
(11824, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:46'),
(11825, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:47'),
(11826, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:48'),
(11827, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:48'),
(11828, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:50'),
(11829, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:50'),
(11830, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:51'),
(11831, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:52'),
(11832, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:53'),
(11833, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:53'),
(11834, 1, '142.129.145.149', 'check/checkin/delete', 'delete a checkout', 'GET', '2020-01-01 01:42:55'),
(11835, 1, '142.129.145.149', 'check/checkin/reload', '0', 'GET', '2020-01-01 01:42:55'),
(11836, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:42:57'),
(11837, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:43:20'),
(11838, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 01:43:23'),
(11839, 1, '142.129.145.149', 'check/checkin_print', '0', 'GET', '2020-01-01 01:43:25'),
(11840, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:43:33'),
(11841, 1, '142.129.145.149', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 01:43:34'),
(11842, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 01:43:37'),
(11843, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 01:43:38'),
(11844, NULL, '5.196.87.135', '', 'view the dashboard', 'GET', '2020-01-01 04:19:49'),
(11845, NULL, '5.196.87.119', '', 'view the dashboard', 'GET', '2020-01-01 04:20:49'),
(11846, NULL, '151.80.39.91', '', 'view the dashboard', 'GET', '2020-01-01 04:21:42'),
(11847, NULL, '151.80.39.232', '', 'view the dashboard', 'GET', '2020-01-01 04:22:29'),
(11848, NULL, '104.32.223.221', '', 'view the dashboard', 'GET', '2020-01-01 04:33:55'),
(11849, NULL, '104.32.223.221', 'common/login', 'view the login page', 'POST', '2020-01-01 04:34:31'),
(11850, 1, '104.32.223.221', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-01 04:34:32'),
(11851, 1, '104.32.223.221', 'client/client', 'view the client page', 'GET', '2020-01-01 04:35:25'),
(11852, 1, '104.32.223.221', 'client/client/edit', 'view the client edit page', 'GET', '2020-01-01 04:36:36'),
(11853, 1, '104.32.223.221', 'client/client/edit', 'view the client edit page', 'POST', '2020-01-01 04:36:56'),
(11854, 1, '104.32.223.221', 'client/client', 'view the client page', 'GET', '2020-01-01 04:36:57'),
(11855, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:39:08'),
(11856, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:39:16'),
(11857, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 04:39:40'),
(11858, 1, '104.32.223.221', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 04:39:41'),
(11859, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 04:39:48'),
(11860, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:39:48'),
(11861, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:39:57'),
(11862, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:40:12'),
(11863, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:40:19'),
(11864, 1, '104.32.223.221', 'check/checkin_print', '0', 'GET', '2020-01-01 04:40:25'),
(11865, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:43:09'),
(11866, 1, '104.32.223.221', 'check/checkin_ajax/change_status', '0', 'GET', '2020-01-01 04:43:23'),
(11867, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:44:53'),
(11868, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 04:45:00'),
(11869, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:45:01'),
(11870, 1, '104.32.223.221', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 04:49:47'),
(11871, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:50:10'),
(11872, 1, '104.32.223.221', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 04:50:14'),
(11873, 1, '104.32.223.221', 'check/checkin_print', '0', 'GET', '2020-01-01 04:50:21'),
(11874, 1, '104.32.223.221', 'catalog/product', 'view the product page', 'GET', '2020-01-01 04:51:19'),
(11875, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2020-01-01 04:56:54'),
(11876, 1, '104.32.223.221', 'finance/transaction', 'view the transaction page', 'GET', '2020-01-01 04:57:30'),
(11877, 1, '104.32.223.221', 'finance/transaction', 'view the transaction page', 'GET', '2020-01-01 04:57:31'),
(11878, 1, '104.32.223.221', 'finance/transaction', 'view the transaction page', 'GET', '2020-01-01 04:57:31'),
(11879, 1, '104.32.223.221', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2020-01-01 04:58:37'),
(11880, 1, '104.32.223.221', 'finance/recharge', 'view the recharge page', 'GET', '2020-01-01 04:59:46'),
(11881, NULL, '66.249.69.40', '', 'view the dashboard', 'GET', '2020-01-01 18:49:37'),
(11882, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-01-01 21:16:13'),
(11883, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-01-01 21:16:18'),
(11884, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-01 21:16:19'),
(11885, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-01-01 21:16:21'),
(11886, 1, '104.33.51.55', 'client/client/edit', 'view the client edit page', 'GET', '2020-01-01 21:16:23'),
(11887, 1, '104.33.51.55', 'client/client/edit', 'view the client edit page', 'POST', '2020-01-01 21:16:42'),
(11888, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-01-01 21:16:42'),
(11889, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-01-01 21:19:53'),
(11890, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-01 21:19:53'),
(11891, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-01 21:20:10'),
(11892, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 21:20:29'),
(11893, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 21:20:31'),
(11894, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 21:26:10'),
(11895, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 21:30:46'),
(11896, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 21:33:04'),
(11897, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 21:33:05'),
(11898, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:02:32'),
(11899, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:13:29'),
(11900, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:16:38'),
(11901, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:16:41'),
(11902, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:16:43'),
(11903, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:18:36'),
(11904, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:18:42'),
(11905, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 22:18:51'),
(11906, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 22:18:58'),
(11907, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:19:10'),
(11908, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 22:19:14'),
(11909, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:19:16'),
(11910, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:19:19'),
(11911, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:19:28'),
(11912, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:19:31'),
(11913, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:19:34'),
(11914, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:19:38'),
(11915, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:30:12'),
(11916, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:30:15'),
(11917, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:30:52'),
(11918, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:31:00'),
(11919, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:31:59'),
(11920, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2020-01-01 22:32:05'),
(11921, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2020-01-01 22:32:08'),
(11922, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2020-01-01 22:32:09'),
(11923, 1, '104.33.51.55', 'check/checkin_ajax/change_status', '0', 'GET', '2020-01-01 22:32:11'),
(11924, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:32:13'),
(11925, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:33:28'),
(11926, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:33:31'),
(11927, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:33:52'),
(11928, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:34:30'),
(11929, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:34:40'),
(11930, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 22:35:11'),
(11931, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:35:34'),
(11932, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:36:30'),
(11933, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:36:34'),
(11934, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2020-01-01 22:36:39'),
(11935, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:36:45'),
(11936, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:36:47'),
(11937, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:36:49'),
(11938, 1, '104.33.51.55', 'catalog/product', 'view the product page', 'GET', '2020-01-01 22:38:22'),
(11939, 1, '104.33.51.55', 'catalog/product/add', 'view the product add page', 'GET', '2020-01-01 22:38:24'),
(11940, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:38:27'),
(11941, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:38:28'),
(11942, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:38:30'),
(11943, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:31'),
(11944, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:49'),
(11945, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:50'),
(11946, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:50'),
(11947, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:51'),
(11948, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:38:52'),
(11949, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:38:56'),
(11950, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:57'),
(11951, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:59'),
(11952, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:38:59'),
(11953, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:39:01'),
(11954, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:39:03'),
(11955, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:39:38'),
(11956, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:39:39'),
(11957, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:39:46'),
(11958, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:39:55'),
(11959, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-01-01 22:40:03'),
(11960, 1, '104.33.51.55', 'sale/sale/add', 'view the order add page', 'GET', '2020-01-01 22:40:05'),
(11961, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-01-01 22:40:07'),
(11962, 1, '104.33.51.55', 'sale/sale/add', 'view the order add page', 'GET', '2020-01-01 22:41:37'),
(11963, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:41:39'),
(11964, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:41:42'),
(11965, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:41:44'),
(11966, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:41:45'),
(11967, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:41:46'),
(11968, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:41:47'),
(11969, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:41:49'),
(11970, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:41:51'),
(11971, 1, '104.33.51.55', 'search/search', 'try to search something', 'GET', '2020-01-01 22:41:53'),
(11972, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:41:53'),
(11973, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:45:10'),
(11974, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:45:11'),
(11975, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:45:12'),
(11976, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:45:13'),
(11977, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:45:14'),
(11978, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:45:15'),
(11979, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:45:17'),
(11980, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:45:18'),
(11981, 1, '104.33.51.55', 'search/search', 'try to search something', 'GET', '2020-01-01 22:45:21'),
(11982, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:45:21'),
(11983, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:48:28'),
(11984, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:48:30'),
(11985, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:48:31'),
(11986, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:48:32'),
(11987, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:48:33'),
(11988, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:48:35'),
(11989, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:48:36'),
(11990, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:48:39'),
(11991, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:48:41'),
(11992, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:49:57'),
(11993, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:50:01'),
(11994, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:50:04'),
(11995, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:50:04'),
(11996, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:50:06'),
(11997, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:50:07'),
(11998, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:50:08'),
(11999, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:50:10'),
(12000, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:50:12'),
(12001, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:51:22'),
(12002, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:51:23'),
(12003, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-01 22:51:25'),
(12004, 1, '104.33.51.55', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-01 22:51:30'),
(12005, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:51:30'),
(12006, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'GET', '2020-01-01 22:51:32'),
(12007, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:51:35'),
(12008, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:51:35'),
(12009, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:51:37'),
(12010, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:51:39'),
(12011, 1, '104.33.51.55', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2020-01-01 22:51:40'),
(12012, 1, '104.33.51.55', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2020-01-01 22:51:41'),
(12013, 1, '104.33.51.55', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-01 22:51:42'),
(12014, 1, '104.33.51.55', 'search/search', 'try to search something', 'GET', '2020-01-01 22:51:46'),
(12015, 1, '104.33.51.55', 'check/checkin/add', 'view the checkin add page', 'POST', '2020-01-01 22:51:46'),
(12016, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-01-01 22:51:46'),
(12017, NULL, '66.249.75.138', '', 'view the dashboard', 'GET', '2020-01-02 05:48:24'),
(12018, NULL, '35.164.102.3', '', 'view the dashboard', 'GET', '2020-01-02 11:33:01'),
(12019, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2020-01-02 18:46:07'),
(12020, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2020-01-02 18:46:13'),
(12021, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-02 18:46:14'),
(12022, 1, '142.129.145.149', 'sale/sale', 'view the order page', 'GET', '2020-01-02 18:46:17'),
(12023, NULL, '151.80.39.194', '', 'view the dashboard', 'GET', '2020-01-02 18:56:31'),
(12024, NULL, '5.196.87.119', '', 'view the dashboard', 'GET', '2020-01-02 18:57:19'),
(12025, NULL, '151.80.39.91', '', 'view the dashboard', 'GET', '2020-01-02 18:57:58'),
(12026, NULL, '151.80.39.40', '', 'view the dashboard', 'GET', '2020-01-02 18:58:38'),
(12027, NULL, '172.58.30.231', '', 'view the dashboard', 'GET', '2020-01-02 19:11:27'),
(12028, NULL, '172.58.30.231', 'common/login', 'view the login page', 'POST', '2020-01-02 19:11:41'),
(12029, 1, '172.58.30.231', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-02 19:11:41'),
(12030, 1, '172.58.30.231', 'client/client', 'view the client page', 'GET', '2020-01-02 19:11:48'),
(12031, 1, '172.58.30.231', 'client/client/add', 'view the client add page', 'GET', '2020-01-02 19:11:49'),
(12032, 1, '172.58.30.231', 'client/client', 'view the client page', 'GET', '2020-01-02 19:11:51'),
(12033, 1, '172.58.30.231', 'client/client/edit', 'view the client edit page', 'GET', '2020-01-02 19:12:09'),
(12034, 1, '172.58.30.231', 'client/client', 'view the client page', 'GET', '2020-01-02 19:12:17'),
(12035, 1, '172.58.30.231', 'client/client/view', '0', 'GET', '2020-01-02 19:12:26'),
(12036, 1, '172.58.30.231', 'client/client/edit', 'view the client edit page', 'GET', '2020-01-02 19:12:31'),
(12037, 1, '172.58.30.231', 'client/client/edit', 'view the client edit page', 'POST', '2020-01-02 19:12:37'),
(12038, 1, '172.58.30.231', 'client/client', 'view the client page', 'GET', '2020-01-02 19:12:38'),
(12039, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:14:08'),
(12040, 1, '172.58.30.231', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-02 19:14:18'),
(12041, 1, '172.58.30.231', 'check/checkin_print', '0', 'GET', '2020-01-02 19:14:24'),
(12042, 1, '172.58.30.231', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-02 19:15:11'),
(12043, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:15:11'),
(12044, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:15:22'),
(12045, 1, '172.58.30.231', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-02 19:15:26'),
(12046, 1, '172.58.30.231', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2020-01-02 19:15:30'),
(12047, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:15:30'),
(12048, 1, '172.58.30.231', 'check/checkout', 'view the checkout page', 'GET', '2020-01-02 19:15:42'),
(12049, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:15:45'),
(12050, 1, '172.58.30.231', 'check/checkin', 'view the checkin page', 'GET', '2020-01-02 19:26:45'),
(12051, NULL, '66.102.6.170', 'common/login', 'view the login page', 'GET', '2020-01-02 20:35:24'),
(12052, NULL, '66.102.6.166', '', 'view the dashboard', 'GET', '2020-01-02 20:35:47'),
(12053, NULL, '34.217.89.89', '', 'view the dashboard', 'GET', '2020-01-02 23:34:42'),
(12054, NULL, '60.250.46.30', '', 'view the dashboard', 'GET', '2020-01-02 23:34:48'),
(12055, NULL, '172.58.30.231', 'common/login', 'view the login page', 'GET', '2020-01-03 00:07:35'),
(12056, NULL, '3.87.65.70', '', 'view the dashboard', 'GET', '2020-01-03 00:50:01'),
(12057, NULL, '34.248.48.182', '', 'view the dashboard', 'GET', '2020-01-03 07:03:23'),
(12058, NULL, '5.255.250.90', '', 'view the dashboard', 'GET', '2020-01-03 08:30:03'),
(12059, NULL, '188.163.104.131', '', 'view the dashboard', 'GET', '2020-01-03 12:40:49'),
(12060, NULL, '81.169.136.222', '', 'view the dashboard', 'GET', '2020-01-03 17:48:50'),
(12061, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2020-01-04 03:11:43'),
(12062, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2020-01-04 03:11:48'),
(12063, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-04 03:11:48'),
(12064, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-04 03:11:57'),
(12065, 1, '142.129.145.149', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-04 03:11:59'),
(12066, 1, '142.129.145.149', 'check/checkin', 'view the checkin page', 'GET', '2020-01-04 03:12:03'),
(12067, NULL, '66.249.69.40', '', 'view the dashboard', 'GET', '2020-01-04 03:30:01'),
(12068, NULL, '66.249.69.38', '', 'view the dashboard', 'GET', '2020-01-04 06:31:51'),
(12069, NULL, '137.226.113.34', '', 'view the dashboard', 'GET', '2020-01-04 08:00:32'),
(12070, NULL, '151.80.39.194', '', 'view the dashboard', 'GET', '2020-01-04 09:53:24'),
(12071, NULL, '5.196.87.159', '', 'view the dashboard', 'GET', '2020-01-04 09:54:56'),
(12072, NULL, '5.196.87.159', '', 'view the dashboard', 'GET', '2020-01-04 09:55:59'),
(12073, NULL, '151.80.39.194', '', 'view the dashboard', 'GET', '2020-01-04 09:57:02'),
(12074, NULL, '89.238.167.46', '', 'view the dashboard', 'GET', '2020-01-04 12:33:41'),
(12075, NULL, '107.175.13.34', '', 'view the dashboard', 'GET', '2020-01-04 17:14:21'),
(12076, NULL, '107.175.13.34', 'common/login', 'view the login page', 'GET', '2020-01-04 17:14:21'),
(12077, NULL, '107.175.13.34', '', 'view the dashboard', 'GET', '2020-01-04 17:14:22'),
(12078, NULL, '66.249.69.40', '', 'view the dashboard', 'GET', '2020-01-04 19:08:32'),
(12079, NULL, '64.225.70.150', '', 'view the dashboard', 'GET', '2020-01-04 19:22:21'),
(12080, NULL, '66.249.69.42', '', 'view the dashboard', 'GET', '2020-01-04 19:48:27'),
(12081, NULL, '157.55.39.127', '', 'view the dashboard', 'GET', '2020-01-05 01:44:11'),
(12082, NULL, '66.249.75.140', '', 'view the dashboard', 'GET', '2020-01-05 05:48:25'),
(12083, NULL, '66.249.69.38', '', 'view the dashboard', 'GET', '2020-01-05 06:52:59'),
(12084, NULL, '85.204.246.193', '', 'view the dashboard', 'GET', '2020-01-05 11:10:39'),
(12085, NULL, '137.226.113.27', '', 'view the dashboard', 'GET', '2020-01-05 11:15:06'),
(12086, NULL, '185.234.218.50', '', 'view the dashboard', 'GET', '2020-01-06 02:27:51'),
(12087, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-06 03:41:28'),
(12088, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-06 03:47:22'),
(12089, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-06 03:51:38'),
(12090, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-06 03:56:22'),
(12091, NULL, '138.246.253.5', '', 'view the dashboard', 'HEAD', '2020-01-06 05:19:07'),
(12092, NULL, '137.226.113.26', '', 'view the dashboard', 'GET', '2020-01-06 09:47:04'),
(12093, NULL, '66.249.69.40', '', 'view the dashboard', 'GET', '2020-01-06 15:46:02'),
(12094, NULL, '66.249.69.40', '', 'view the dashboard', 'GET', '2020-01-06 16:36:02'),
(12095, NULL, '31.171.244.127', '', 'view the dashboard', 'GET', '2020-01-06 20:19:26'),
(12096, NULL, '66.249.69.42', '', 'view the dashboard', 'GET', '2020-01-07 00:19:24'),
(12097, NULL, '137.226.113.26', '', 'view the dashboard', 'GET', '2020-01-07 11:01:58'),
(12098, NULL, '181.177.93.35', '', 'view the dashboard', 'GET', '2020-01-07 18:01:10'),
(12099, NULL, '66.249.69.38', '', 'view the dashboard', 'GET', '2020-01-07 18:49:38'),
(12100, NULL, '66.102.6.166', 'common/login', 'view the login page', 'GET', '2020-01-07 18:50:49'),
(12101, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-07 19:01:53'),
(12102, NULL, '151.80.39.91', '', 'view the dashboard', 'GET', '2020-01-07 19:02:24'),
(12103, NULL, '151.80.39.91', '', 'view the dashboard', 'GET', '2020-01-07 19:02:40'),
(12104, NULL, '151.80.39.64', '', 'view the dashboard', 'GET', '2020-01-07 19:03:12'),
(12105, NULL, '66.249.75.138', '', 'view the dashboard', 'GET', '2020-01-08 05:48:26'),
(12106, NULL, '66.249.69.42', '', 'view the dashboard', 'GET', '2020-01-08 06:01:00'),
(12107, NULL, '69.58.178.57', '', 'view the dashboard', 'GET', '2020-01-08 16:35:03'),
(12108, NULL, '64.157.240.250', '', 'view the dashboard', 'GET', '2020-01-08 17:59:35'),
(12109, NULL, '66.249.73.48', '', 'view the dashboard', 'GET', '2020-01-08 19:52:34'),
(12110, NULL, '66.249.73.44', '', 'view the dashboard', 'GET', '2020-01-08 19:56:06'),
(12111, NULL, '142.129.145.149', '', 'view the dashboard', 'GET', '2020-01-08 23:48:58'),
(12112, NULL, '142.129.145.149', 'common/login', 'view the login page', 'POST', '2020-01-08 23:49:08'),
(12113, 1, '142.129.145.149', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-08 23:49:08'),
(12114, 1, '142.129.145.149', 'client/client', 'view the client page', 'GET', '2020-01-08 23:49:13'),
(12115, 1, '142.129.145.149', 'client/client/edit', 'view the client edit page', 'GET', '2020-01-08 23:49:16'),
(12116, 1, '142.129.145.149', 'extension/shipping', 'view the shipping page', 'GET', '2020-01-08 23:49:47'),
(12117, 1, '142.129.145.149', 'shipping/postpony', '0', 'GET', '2020-01-08 23:49:50'),
(12118, 1, '::1', '', 'view the dashboard', 'GET', '2020-01-12 06:36:49'),
(12119, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-12 06:36:49'),
(12120, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-01-12 06:36:53'),
(12121, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-01-12 06:39:29'),
(12122, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-01-12 06:41:48'),
(12123, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-01-12 06:44:24'),
(12124, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-12 06:44:34'),
(12125, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-01-12 06:58:57'),
(12126, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-12 06:59:08'),
(12127, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-01-12 07:01:18'),
(12128, 1, '::1', 'error/permission', 'view the permission error page', 'GET', '2020-01-12 07:01:22'),
(12129, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-01-12 07:02:38'),
(12130, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-01-12 07:02:39'),
(12131, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2020-01-12 07:02:41'),
(12132, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-12 07:02:42');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(12133, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-12 07:09:52'),
(12134, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'POST', '2020-01-12 07:09:57'),
(12135, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2020-01-12 07:09:57'),
(12136, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2020-01-12 07:09:59'),
(12137, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-12 07:10:00'),
(12138, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-12 07:10:04'),
(12139, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-12 07:10:08'),
(12140, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2020-01-12 07:10:11'),
(12141, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-12 07:10:12'),
(12142, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-01-12 07:10:20'),
(12143, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-01-12 07:10:22'),
(12144, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2020-01-12 07:10:23');

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
(4, 4, '-34.18');

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

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`id`, `client_id`, `tracking`, `note`, `status`, `date_added`, `date_modified`) VALUES
(2, 0, '', '', 2, '2019-12-31 05:07:13', '2019-12-31 05:07:13'),
(6, 4, '8878855522410', '', 2, '2019-12-31 06:38:08', '2019-12-31 06:38:08'),
(14, 4, '', '', 1, '2020-01-01 01:42:30', '2020-01-01 01:42:30'),
(15, 4, '58662220000', '', 2, '2020-01-01 01:43:06', '2020-01-01 01:43:06'),
(16, 4, '880-12345678', '', 2, '2020-01-01 04:38:42', '2020-01-01 04:38:42'),
(17, 4, '', '', 1, '2020-01-01 04:48:31', '2020-01-01 04:48:31'),
(18, 4, '', '', 1, '2020-01-01 21:44:42', '2020-01-01 21:44:42'),
(19, 4, '', '', 1, '2020-01-01 22:10:32', '2020-01-01 22:10:32'),
(20, 0, '', '', 1, '2020-01-01 22:51:22', '2020-01-01 22:51:22'),
(21, 0, '', '', 1, '2020-01-01 22:51:46', '2020-01-01 22:51:46'),
(22, 4, '880-23456789', '', 1, '2020-01-02 19:13:36', '2020-01-02 19:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `checkin_fee`
--

CREATE TABLE `checkin_fee` (
  `id` int(11) NOT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkin_fee`
--

INSERT INTO `checkin_fee` (`id`, `checkin_id`, `name`, `amount`) VALUES
(37, 3, '拣货', '10.00'),
(40, 5, 'test', '10.00'),
(43, 6, 'Test', '500.00'),
(45, 8, 'handling fee', '5.00'),
(46, 9, 'handling fee', '50.00'),
(50, 10, 'handling fee', '17.00'),
(53, 14, 'checkin fee by weight', '6.42'),
(54, 11, 'checkin fee by weight', '7.09'),
(55, 15, 'checkin fee by weight', '5.50'),
(57, 16, 'checkin fee by weight', '7.58'),
(58, 17, 'checkin fee by weight', '6.88'),
(59, 7, 'checkin fee by weight', '8.00'),
(60, 18, 'checkin fee by weight', '10.83'),
(61, 19, 'checkin fee by weight', '19.93'),
(63, 20, 'checkin fee by weight', '109.97'),
(64, 21, 'checkin fee by weight', '200.00'),
(65, 22, 'checkin fee by weight', '120.00'),
(66, 29, 'checkin fee by weight', '3.00');

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
  `quantity_draft` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkin_product`
--

INSERT INTO `checkin_product` (`id`, `checkin_id`, `product_id`, `batch`, `quantity`, `quantity_draft`, `location_id`) VALUES
(5, 2, 133, '', 10, 0, 2527),
(11, 6, 129, '', 48, 0, 2527),
(41, 14, 129, '', 0, 5, 0),
(42, 14, 130, '', 0, 8, 0),
(47, 15, 129, '', 4, 5, 2527),
(48, 15, 130, '', 7, 8, 2528),
(51, 16, 132, '', 5, 1, 2527),
(54, 17, 129, '', 0, 10, 0),
(55, 17, 130, '', 0, 8, 0),
(56, 18, 132, '', 0, 5, 0),
(58, 19, 132, '', 0, 25, 0),
(61, 20, 132, '', 1, 0, 2527),
(62, 20, 129, '', 1, 0, 2527),
(63, 21, 132, '', 1, 0, 2527),
(64, 21, 129, '', 1, 0, 2528),
(71, 22, 129, '', 49, 50, 0),
(72, 22, 130, '', 81, 80, 0);

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
  `shipping_service` varchar(16) DEFAULT NULL,
  `checkout_fee_code` varchar(64) NOT NULL,
  `label` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `description` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `code`, `location_id`, `tracking`, `status`, `width`, `length`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `checkout_fee_code`, `label`, `note`, `description`, `date_added`, `date_modified`) VALUES
(182, '10000000000000182', 0, '', 2, '10.00', '20.00', '10.00', '10.00', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-10-28 15:18:22', '2019-10-28 15:18:22'),
(183, '10000000000000183', 0, '', 2, '14.00', '13.00', '12.00', '27.00', 1, 5, 'jd', 'FEDEX_GRD', 'checkout_weight', '', '', '', '2019-12-15 14:43:04', '2019-12-15 14:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_fee`
--

CREATE TABLE `checkout_fee` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `amount` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_file`
--

CREATE TABLE `checkout_file` (
  `checkout_file_id` int(11) NOT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_label`
--

CREATE TABLE `checkout_label` (
  `checkout_label_id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `tracking` varchar(64) DEFAULT NULL
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
(336, 182, 40, 2),
(337, 183, 42, 1);

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
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `ip_address`, `password`, `salt`, `email`, `status`, `firstname`, `lastname`, `company`, `street`, `city`, `state`, `country`, `zipcode`, `phone`, `data`) VALUES
(4, '', '90ff6451731755d40e7c7235ea9ea27f87c8b5d5', '909', 'quedinge2019@gmail.com', 1, 'Sam', 'Shao', 'SamintheBox Inc', '12012 Lambert Ave', 'El Monte', 'California', 'United States', '91732', '6265518446', '');

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
(2, 2, 'Emily Taggart', '', '', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', 'US', '54981', ''),
(3, 1, 'Ashley Azzarella', '', '', '5147 Cadagan court', '', 'Bensalem', 'Pennsylvania', 'US', '19020', '8433317201'),
(4, 1, 'Daniela Montalvo', '', '', '4725 Randall dr', '', 'Las Vegas', 'Nevada', 'US', '89122', '7024095967'),
(6, NULL, 'Karen Parsons', '', '', '13 Hathaway Ave', '', 'Peabody', 'MA', 'US', '09160', ''),
(7, NULL, 'Joshua Flaugh', '', '', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', 'US', '16635', ''),
(8, NULL, 'Joshua Flaugh', '', '', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', 'US', '16635', '8143814184'),
(9, NULL, 'Karen Parsons', '', '', '13 Hathaway Ave', '', 'Peabody', 'MA', 'US', '09160', '9789779971'),
(11, 2, 'Jonathan Michael Dixon', '', '', '5110 AZALEA TRACE DR APT 2603', '', 'HOUSTON', 'TX', 'US', '77066-4349 ', ''),
(12, 2, 'Harry Conover', '', '', '77 Steiner Ave', '', 'Neptune', 'NJ', 'US', '07753', ''),
(13, 2, 'gene black', '', '', '401 W School St', '', 'Hamilton', 'MO', 'US', '64644-8225', ''),
(14, 2, 'gene black', '', '', '401 W School St', '', 'Hamilton', 'MO', 'US', '64644-82', ''),
(15, 2, 'Jonathan Michael Dixon', '', '', '5110 AZALEA TRACE DR APT 2603', '', 'HOUSTON', 'TX', 'US', '77066-43', ''),
(16, 2, 'Paul Trevino', '', '', '8606 SAMSEL FLS', '', 'SAN ANTONIO', 'TX', 'US', '78254-4525', '2103166518'),
(17, 2, 'Casey T Austin', '', '', '2030 Via Vina', '', 'San Clemente', 'CA', 'US', '92673', '949-412-2643'),
(18, 2, 'John Hippard', 'hippardcompany@gmail.com', '', '1396 County Highway 16', '', 'Tower Hill', 'IL', 'US', '62571', '(618) 292-0025'),
(19, 2, 'Jonathan lea ', '', '', '1221 E EASTWOOD ST', '', 'MARSHALL', 'MO', 'US', '65340', '6606313946'),
(20, 2, 'Dan Mountjoy ', '', '', '2 GOOSE CREEK DR APT 1123', '', 'BLOOMINGTON', 'IL', 'US', '61701', '3092129132'),
(21, 2, 'Paul Trevino', '', '', '8606 SAMSEL FLS', '', 'SAN ANTONIO', 'TX', 'US', '78254-45', '2103166518'),
(22, 2, 'Dan Mountjoy ', '', '', '2 GOOSE CREEK DR APT 1123', '', 'BLOOMINGTON', 'IL', 'United States', '61701', '3092129132'),
(23, 2, 'Jonathan lea ', '', '', '1221 E EASTWOOD ST', '', 'MARSHALL', 'MO', 'United States', '65340', '6606313946'),
(24, 2, 'John Hippard', 'hippardcompany@gmail.com', '', '1396 County Highway 16', '', 'Tower Hill', 'IL', 'United States', '62571', '(618) 292-0025'),
(25, 2, 'Casey T Austin', '', '', '2030 Via Vina', '', 'San Clemente', 'CA', 'United States', '92673', '949-412-2643'),
(26, 2, 'Paul Trevino', '', '', '8606 SAMSEL FLS', '', 'SAN ANTONIO', 'TX', 'United States', '78254-45', '2103166518'),
(27, 2, 'Jonathan lea ', '', '', '1221 E EASTWOOD ST', '', 'MARSHALL', 'Missouri', 'United States', '65340', '6606313946'),
(28, 2, 'Dan Mountjoy ', '', '', '2 GOOSE CREEK DR APT 1123', '', 'BLOOMINGTON', 'Illinois', 'United States', '61701', '3092129132'),
(31, 2, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'California', 'US', '91732', ''),
(32, 2, 'John Hippard', 'hippardcompany@gmail.com', '', '1396 County Highway 16', '', 'Tower Hill', 'IL', 'United States', '62571-4196', '(618) 292-0025'),
(33, 2, 'Gregory S Shepherd ', '', '', '6030 WHITEGATE XING', '', 'EAST AMHERST', 'NY', 'US', '14051', '716-428-1033 '),
(34, 2, 'Raymond kreusch ', '', '', '40 GAFFNEY WAY', '', 'PORT READING', 'NJ', 'US', '07064', '9083098599'),
(35, 2, 'Jacob M. Kunkel', '', '', '953 750N AVE', '', 'MT STERLING', 'IL', 'US', '62353', '2174400564'),
(36, NULL, 'Frank Campbell', '', '', '1790 WINDY LN', '', 'SOUTHAVEN', 'MS', 'US', '38671-9421', ''),
(37, NULL, 'RANDY CONNER', '', '', '15762 JIM CT', '', 'JACKSONVILLE', 'FL', 'US', '32218-6878', ''),
(38, NULL, 'Luis Acosta', '', '', '6451 S DESERT BLVD', '', 'EL PASO', 'TX', 'US', '79932-8515', ''),
(39, 4, 'Luis Acosta', '', '', '6451 S DESERT BLVD', '', 'EL PASO', 'TX', 'US', '79932-85', ''),
(41, 4, 'Frank Campbell', '', '', '1790 WINDY LN', '', 'SOUTHAVEN', 'MS', 'US', '38671-94', ''),
(42, 4, 'ANTHONY MCDONALD', '', '', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', '美国', '30115-8517', ''),
(43, 4, 'ANTHONY MCDONALD', '', '', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', 'United States', '30115-85', ''),
(45, 4, 'hardy mosley', '', '', '5166 W 134TH PL', '', 'HAWTHORNE', 'CA ', 'US', '90250-5622', '6269642930'),
(46, 4, 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '', '', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', 'US', '33172-2772', ''),
(47, 4, 'JESSIE WILSON', '', '', '4404 S ELMS RD', '', 'SWARTZ CREEK', 'MI', 'US', '48473-1565', '(810) 630-6102'),
(48, 4, 'EDWARD L DUNN', '', '', '30498 N 73RD ST', '', 'SCOTTSDALE', 'AZ', 'US', '85266-1820', '(480) 206-1413'),
(49, 4, 'RICKY OLIVARES', '', '', '1961 NEHEMIAH CT', '', 'LAS CRUCES', 'NM', 'US', '88001-1993', '(575) 644-2036'),
(50, 4, 'charles mallalieu', '', '', '142 W LESLIE LN', '', 'PANAMA CITY BEACH', 'FL', 'US', '32407-3969', '8503333997'),
(51, 4, 'Dawn R Miller', '', '', '4128 MOUNT VIEW RD', '', 'DANVILLE', 'VA ', 'US', '24540-9018', '540-314-4891'),
(52, 4, 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '', '', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', 'US', '33172-27', ''),
(53, NULL, 'Sam Shao', 'quedinge2012@gmail.com', '', '750 Green Ave', '', 'Pasadena', 'California', 'United States', '91750', '6265518446'),
(54, 4, 'Jame Lin', '', '', '19097 Colima Road', '', 'Rowland Heights', 'California', 'United States', '91748', '6265568975'),
(55, 4, 'Weihao Chen', 'weihaochenalbert@gmail.com', '', '542 S Fairfax Ave', '', 'Los Angeles', 'CA', 'United States', '90036', '4083290509');

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
(122, 'fee', 'flat'),
(121, 'fee', 'volume'),
(119, 'fee', 'checkin_weight'),
(123, 'fee', 'checkout_weight'),
(124, 'shipping', 'ltl'),
(125, 'shipping', 'jd');

-- --------------------------------------------------------

--
-- Table structure for table `fba`
--

CREATE TABLE `fba` (
  `fba_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fba_product`
--

CREATE TABLE `fba_product` (
  `fba_product_id` int(11) NOT NULL,
  `fba_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch` varchar(32) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_draft` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(27, 0, 122, 2527, '', 0, '2018-12-13 17:03:13', '2019-10-28 14:56:21'),
(33, 0, 132, 2527, '', 5, '2019-05-07 12:26:13', '2020-01-01 22:32:11'),
(34, 0, 130, 2527, '', 0, '2019-05-07 12:26:22', '2019-10-28 14:55:57'),
(35, 0, 131, 2527, '', 0, '2019-05-07 12:26:28', '2019-10-28 14:55:59'),
(40, 0, 129, 2527, '', 79, '2019-10-28 15:14:56', '2020-01-01 01:43:37'),
(41, 0, 132, 2528, '', 21, '2019-11-21 21:21:21', '2019-12-31 06:06:07'),
(42, 0, 133, 2527, '', 29, '2019-12-15 14:37:31', '2019-12-31 06:25:30'),
(43, 0, 130, 2528, '', 7, '2020-01-01 01:41:43', '2020-01-01 01:43:37');

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
(2527, 'A0', 'A0', 4, '2018-12-13 16:57:36', '2018-12-13 16:57:36'),
(2528, 'A1', 'A1', 4, '2019-11-21 21:21:06', '2019-11-21 21:21:06');

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
(129, '742271416370', '742271416370', '742271416370', 'Chandelier Snak', '0.00', 'no_image.jpg', NULL, '5.00', 5, 1, '10.00', '10.00', '10.00', 0, 'ups', 'gr', 4, '2019-05-01 20:37:09', '2019-11-24 11:12:04'),
(130, '742271417056', '742271417056', '742271417056', 'Trampoline Green', '0.00', 'no_image.jpg', NULL, '15.00', 5, 1, '50.00', '20.00', '30.00', 0, 'ups', 'gr', 4, '2019-05-01 20:37:55', '2019-10-28 15:13:58'),
(131, '742271416356', '742271416356', '742271416356', '粗三环', '0.00', 'no_image.jpg', NULL, '40.00', 5, 1, '6.00', '20.00', '15.00', 0, 'ups', 'gr', 4, '2019-05-01 20:38:34', '2019-10-28 15:14:18'),
(132, 'BHL001', 'BHL001', '', 'BHL001', '0.00', 'no_image.jpg', NULL, '15.00', 5, 1, '12.00', '10.00', '1.00', 20, 'jd', 'FEDEX_GRD', 4, '2019-11-21 21:16:29', '2019-11-21 21:16:29'),
(133, '001', '001', '001', 'Table', '0.00', 'no_image.jpg', NULL, '27.00', 5, 1, '13.00', '14.00', '12.00', 20, 'jd', 'FEDEX_GRD', 4, '2019-12-15 14:32:22', '2019-12-15 14:32:22');

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
  `date_modified` datetime NOT NULL,
  `jd_delivery_id` varchar(255) NOT NULL,
  `jd_order_date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`, `jd_delivery_id`, `jd_order_date_added`) VALUES
(16, 4, '526655412368', 'Jame Lin', '19097 Colima Road', '', 'Rowland Heights', 'California', '91748', 'United States', '', '6265568975', '10.00', '10.00', '10.00', '5.00', 1, 5, 'jd', 'FEDEX_GRD', '0.00', '778223076074', 1, '', '2019-10-28 15:18:21', '2019-11-20 21:27:40', 'V000030349756', '2019-11-21 20:54:55'),
(17, 4, '', 'Weihao Chen', '542 S Fairfax Ave', '', 'Los Angeles', 'CA', '90036', 'United States', 'weihaochenalbert@gmail.com', '4083290509', '13.00', '14.00', '12.00', '27.00', 1, 5, 'jd', 'FEDEX_GRD', '0.00', '778942070839', 1, '', '2019-12-15 14:42:38', '0000-00-00 00:00:00', 'V000030690520', '2019-12-15 14:43:31');

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

--
-- Dumping data for table `sale_label`
--

INSERT INTO `sale_label` (`id`, `sale_id`, `path`, `tracking`) VALUES
(1, 16, '778223076074.jpg', '778223076074'),
(2, 17, '778942070839.jpg', '778942070839');

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
(53, 16, 129, 1, ''),
(54, 17, 133, 1, '');

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
(16, 182),
(17, 183);

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
(25668, 'usps', 'usps_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:11:\"First Class\";s:4:\"code\";s:2:\"fc\";s:6:\"method\";s:5:\"US-FC\";s:7:\"package\";s:7:\"Package\";}i:1;a:4:{s:4:\"name\";s:8:\"Priority\";s:4:\"code\";s:2:\"pr\";s:6:\"method\";s:5:\"US-PM\";s:7:\"package\";s:7:\"Package\";}}', 1),
(25669, 'usps', 'usps_fee_type', '0', 0),
(25670, 'usps', 'usps_fee_value', '0.5', 0),
(25671, 'usps', 'usps_client_fee', 'a:1:{i:0;a:2:{s:3:\"fee\";s:3:\"0.5\";s:9:\"client_id\";s:1:\"1\";}}', 1),
(25667, 'usps', 'usps_stamps_wsdl_file', 'assets/file/stamps/stamps.prod.xml', 0),
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
(25666, 'usps', 'usps_stamps_integration_id', 'e13dde83-59b9-4b45-9a51-3f83016fd883', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(17216, 'square', 'square_status', '1', 0),
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
(25665, 'usps', 'usps_stamps_password', 'gse77777', 0),
(17647, 'amazon', 'amazon_field', 'a:6:{i:0;s:6:\"Dev Id\";i:1;s:6:\"App Id\";i:2;s:7:\"Cert Id\";i:3;s:8:\"Username\";i:4;s:7:\"Site Id\";i:5;s:5:\"Token\";}', 1),
(17648, 'amazon', 'amazon_status', '0', 0),
(17649, 'amazon', 'amazon_sort_order', '0', 0),
(18696, 'offline', 'offline_status', '1', 0),
(18695, 'offline', 'offline_sort_order', '0', 0),
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
(25663, 'usps', 'usps_sort_order', '0', 0),
(23841, 'fedex', 'fedex_fee_value', '3', 0),
(23840, 'fedex', 'fedex_fee_type', '0', 0),
(25664, 'usps', 'usps_stamps_username', 'GSE777', 0),
(25662, 'usps', 'usps_status', '1', 0),
(25661, 'usps', 'usps_debug_mode', '0', 0),
(25660, 'usps', 'usps_postcode', '91748', 0),
(25659, 'usps', 'usps_country', 'US', 0),
(23671, 'ups', 'ups_quote_type', 'commercial', 0),
(23670, 'ups', 'ups_country', 'US', 0),
(23669, 'ups', 'ups_postcode', '91731', 0),
(23668, 'ups', 'ups_state', 'CA', 0),
(23667, 'ups', 'ups_city', 'EL Monte', 0),
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
(25082, 'postpony', 'postpony_fee_type', '0', 0),
(25083, 'postpony', 'postpony_fee_value', '0', 0),
(25084, 'postpony', 'postpony_client_fee', 'a:3:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"3\";}i:2;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"4\";}}', 1),
(25081, 'postpony', 'postpony_service', 'a:4:{i:0;a:4:{s:4:\"name\";s:21:\"Postpony Fedex Ground\";s:4:\"code\";s:3:\"pfg\";s:6:\"method\";s:11:\"FedExGround\";s:7:\"package\";s:12:\"YOUR_PACKAGE\";}i:1;a:4:{s:4:\"name\";s:19:\"Postpony UPS Ground\";s:4:\"code\";s:3:\"pug\";s:6:\"method\";s:9:\"UpsGround\";s:7:\"package\";s:7:\"PACKAGE\";}i:2;a:4:{s:4:\"name\";s:25:\"Postpony USPS First Class\";s:4:\"code\";s:5:\"pusfc\";s:6:\"method\";s:18:\"UspsFirstClassMail\";s:7:\"package\";s:7:\"PACKAGE\";}i:3;a:4:{s:4:\"name\";s:22:\"Postpony USPS Priority\";s:4:\"code\";s:4:\"pusp\";s:6:\"method\";s:16:\"UspsPriorityMail\";s:7:\"package\";s:7:\"PACKAGE\";}}', 1),
(25079, 'postpony', 'postpony_status', '1', 0),
(25080, 'postpony', 'postpony_sort_order', '0', 0),
(25078, 'postpony', 'postpony_debug_mode', '1', 0),
(28461, 'jd', 'jd_fedex_two_day_price_table', '/var/www/html/bhl/media/file/fedex_2_day.xlsx', 0),
(28338, 'config', 'config_smtp_timeout', '30', 0),
(23660, 'ups', 'ups_account_number', '3FR703', 0),
(23657, 'ups', 'ups_access_key', '7D3678D352FE879D', 0),
(25077, 'postpony', 'postpony_signature', '0', 0),
(25075, 'postpony', 'postpony_length_unit', 'IN', 0),
(25076, 'postpony', 'postpony_weight_unit', 'LB', 0),
(23820, 'fedex', 'fedex_password', 'GYuOzp9a0uGbUcw25uLnJ4vD7', 0),
(23822, 'fedex', 'fedex_time_zone', 'America/Los_Angeles', 0),
(23821, 'fedex', 'fedex_company', 'Prolineshipping Inc', 0),
(23819, 'fedex', 'fedex_key', 'UOLSEeKVrlJSMEKb', 0),
(23818, 'fedex', 'fedex_meter_number', '119000362', 0),
(23817, 'fedex', 'fedex_account_number', '510087720', 0),
(25074, 'postpony', 'postpony_phone', '6262033872', 0),
(23684, 'ups', 'ups_fee_value', '3', 0),
(28337, 'config', 'config_smtp_sender', 'BHL', 0),
(28336, 'config', 'config_smtp_port', '465', 0),
(24215, 'volume', 'volume_level_end', '10', 0),
(24227, 'flat', 'flat_sort_order', '0', 0),
(24214, 'volume', 'volume_level', 'a:1:{i:0;a:2:{s:6:\"volume\";s:4:\"1000\";s:6:\"amount\";s:2:\"20\";}}', 1),
(24226, 'flat', 'flat_status', '1', 0),
(24225, 'flat', 'flat_amount', '2000', 0),
(24224, 'flat', 'flat_type', 'inventory', 0),
(24213, 'volume', 'volume_sort_order', '0', 0),
(24212, 'volume', 'volume_status', '1', 0),
(24211, 'volume', 'volume_type', 'inventory', 0),
(24366, 'checkin_weight', 'checkin_weight_level_end', '0.1', 0),
(24365, 'checkin_weight', 'checkin_weight_level', 'a:1:{i:0;a:2:{s:6:\"weight\";s:2:\"50\";s:6:\"amount\";s:1:\"0\";}}', 1),
(24364, 'checkin_weight', 'checkin_weight_sort_order', '0', 0),
(24363, 'checkin_weight', 'checkin_weight_status', '1', 0),
(24362, 'checkin_weight', 'checkin_weight_type', 'checkin', 0),
(25675, 'checkout_weight', 'checkout_weight_level', 'a:1:{i:3;a:2:{s:6:\"weight\";s:1:\"1\";s:6:\"amount\";s:3:\"1.5\";}}', 1),
(25676, 'checkout_weight', 'checkout_weight_level_end', '1.5', 0),
(25674, 'checkout_weight', 'checkout_weight_sort_order', '1', 0),
(25673, 'checkout_weight', 'checkout_weight_status', '1', 0),
(28333, 'config', 'config_smtp_hostname', 'ssl://hwimap.exmail.qq.com', 0),
(28334, 'config', 'config_smtp_username', 'sam@hualongus.com', 0),
(28335, 'config', 'config_smtp_password', 'Que2019@', 0),
(28332, 'config', 'config_smtp_enabled', '0', 0),
(28331, 'config', 'config_default_checkout_fee', 'checkout_weight', 0),
(25073, 'postpony', 'postpony_owner', 'Jerry Cong', 0),
(25070, 'postpony', 'postpony_state', 'CA', 0),
(25071, 'postpony', 'postpony_postcode', '91748', 0),
(25072, 'postpony', 'postpony_country', 'United States', 0),
(28330, 'config', 'config_default_order_shipping_service', 'FEDEX_GRD', 0),
(28329, 'config', 'config_default_order_shipping_provider', 'jd', 0),
(28328, 'config', 'config_logo', '', 0),
(28326, 'config', 'config_length_class_id', '1', 0),
(25658, 'usps', 'usps_state', 'CA', 0),
(25657, 'usps', 'usps_city', 'Rowland Heights', 0),
(25656, 'usps', 'usps_street2', '.', 0),
(25655, 'usps', 'usps_street', '19097 Colima Road', 0),
(25654, 'usps', 'usps_phone', '6262033872', 0),
(28327, 'config', 'config_weight_class_id', '5', 0),
(25653, 'usps', 'usps_company', 'HUALONGUSA INC', 0),
(28324, 'config', 'config_client_language_id', '5', 0),
(24793, 'ltl', 'ltl_sort_order', '0', 0),
(24792, 'ltl', 'ltl_status', '1', 0),
(24794, 'ltl', 'ltl_service', 'a:1:{i:0;a:4:{s:4:\"name\";s:10:\"BOADRUNNER\";s:4:\"code\";s:10:\"boadrunner\";s:6:\"method\";s:0:\"\";s:7:\"package\";s:0:\"\";}}', 1),
(28325, 'config', 'config_information_front_id', '5', 0),
(28320, 'config', 'config_printnode_api_key', 'cUK4r4gEKmqFVBmXuEefVU2FWsOU_WWjPZ-f2MoVbpM', 0),
(28323, 'config', 'config_admin_language_id', '5', 0),
(28322, 'config', 'config_printnode_general_printer_id', '69088293', 0),
(28321, 'config', 'config_printnode_label_printer_id', '69088293', 0),
(28311, 'config', 'config_location_barcode_batch_posx', '10', 0),
(28312, 'config', 'config_location_barcode_batch_posy', '20', 0),
(25069, 'postpony', 'postpony_city', 'Rowland Heights', 0),
(25068, 'postpony', 'postpony_street2', '', 0),
(25067, 'postpony', 'postpony_street', '19097 Colima Road', 0),
(25066, 'postpony', 'postpony_company', 'hualongusa inc', 0),
(25063, 'postpony', 'postpony_key', '6b9f4c78', 0),
(25064, 'postpony', 'postpony_pwd', 'pypypypypy', 0),
(25065, 'postpony', 'postpony_authorized_key', 'TESTTOKEN-ske39De3mkC39d', 0),
(25672, 'checkout_weight', 'checkout_weight_type', 'checkout', 0),
(28460, 'jd', 'jd_fedex_ground_price_table', '/var/www/html/bhl/media/file/jd_ground.xlsx', 0),
(28459, 'jd', 'jd_gas_fee', '7.25', 0),
(28458, 'jd', 'jd_client_fee', 'a:1:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"4\";}}', 1),
(28457, 'jd', 'jd_fee_value', '0', 0),
(28456, 'jd', 'jd_fee_type', '1', 0),
(25652, 'usps', 'usps_last_name', 'Cong', 0),
(25650, 'usps', 'usps_owner', 'FSUS', 0),
(25651, 'usps', 'usps_first_name', 'Jerry', 0),
(25648, 'usps', 'usps_user_id', '609FREES0002', 0),
(25649, 'usps', 'usps_time_zone', 'America/Los_Angeles', 0),
(28319, 'config', 'config_printnode_width', '180', 0),
(28318, 'config', 'config_printnode_position_y', '20', 0),
(28316, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(28317, 'config', 'config_printnode_position_x', '14', 0),
(28315, 'config', 'config_location_barcode_batch_margin', '200', 0),
(28314, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(28313, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(28309, 'config', 'config_location_barcode_batch_width', '630', 0),
(28310, 'config', 'config_location_barcode_batch_height', '300', 0),
(28308, 'config', 'config_location_barcode_code_size', '80', 0),
(28307, 'config', 'config_location_barcode_name_size', '200', 0),
(28306, 'config', 'config_location_barcode_posy', '200', 0),
(28305, 'config', 'config_location_barcode_posx', '1', 0),
(28304, 'config', 'config_location_barcode_height', '400', 0),
(28303, 'config', 'config_location_barcode_width', '6', 0),
(28302, 'config', 'config_label_posy', '0', 0),
(28301, 'config', 'config_label_width', '60', 0),
(28300, 'config', 'config_label_width_type', '0', 0),
(28299, 'config', 'config_autocomplete_limit', '5', 0),
(28298, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(28297, 'config', 'config_dashboard_order_limit', '7', 0),
(28296, 'config', 'config_dashboard_activity_limit', '8', 0),
(28294, 'config', 'config_page_limit', '10', 0),
(28295, 'config', 'config_sale_product_page_limit', '15', 0),
(28293, 'config', 'config_google_map_key', 'AIzaSyBzDNfBC85bEbeJzDH1Atam0omILPxdPsE', 0),
(28454, 'jd', 'jd_fedex_zone_mapping_addi', 'a:47:{i:0;a:4:{s:12:\"zipcode_from\";s:5:\"96700\";s:10:\"zipcode_to\";s:5:\"96700\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:1;a:4:{s:12:\"zipcode_from\";s:5:\"96701\";s:10:\"zipcode_to\";s:5:\"96701\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:2;a:4:{s:12:\"zipcode_from\";s:5:\"96702\";s:10:\"zipcode_to\";s:5:\"96705\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:3;a:4:{s:12:\"zipcode_from\";s:5:\"96706\";s:10:\"zipcode_to\";s:5:\"96707\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:4;a:4:{s:12:\"zipcode_from\";s:5:\"96708\";s:10:\"zipcode_to\";s:5:\"96708\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:5;a:4:{s:12:\"zipcode_from\";s:5:\"96709\";s:10:\"zipcode_to\";s:5:\"96709\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:6;a:4:{s:12:\"zipcode_from\";s:5:\"96710\";s:10:\"zipcode_to\";s:5:\"96710\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:7;a:4:{s:12:\"zipcode_from\";s:5:\"96711\";s:10:\"zipcode_to\";s:5:\"96712\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:8;a:4:{s:12:\"zipcode_from\";s:5:\"96713\";s:10:\"zipcode_to\";s:5:\"96716\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:9;a:4:{s:12:\"zipcode_from\";s:5:\"96717\";s:10:\"zipcode_to\";s:5:\"96717\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:10;a:4:{s:12:\"zipcode_from\";s:5:\"96718\";s:10:\"zipcode_to\";s:5:\"96729\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:11;a:4:{s:12:\"zipcode_from\";s:5:\"96730\";s:10:\"zipcode_to\";s:5:\"96731\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:12;a:4:{s:12:\"zipcode_from\";s:5:\"96732\";s:10:\"zipcode_to\";s:5:\"96733\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:13;a:4:{s:12:\"zipcode_from\";s:5:\"96734\";s:10:\"zipcode_to\";s:5:\"96734\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:14;a:4:{s:12:\"zipcode_from\";s:5:\"96735\";s:10:\"zipcode_to\";s:5:\"96743\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:15;a:4:{s:12:\"zipcode_from\";s:5:\"96744\";s:10:\"zipcode_to\";s:5:\"96744\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:16;a:4:{s:12:\"zipcode_from\";s:5:\"96745\";s:10:\"zipcode_to\";s:5:\"96757\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:17;a:4:{s:12:\"zipcode_from\";s:5:\"96758\";s:10:\"zipcode_to\";s:5:\"96759\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:18;a:4:{s:12:\"zipcode_from\";s:5:\"96760\";s:10:\"zipcode_to\";s:5:\"96761\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:19;a:4:{s:12:\"zipcode_from\";s:5:\"96762\";s:10:\"zipcode_to\";s:5:\"96762\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:20;a:4:{s:12:\"zipcode_from\";s:5:\"96763\";s:10:\"zipcode_to\";s:5:\"96774\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:21;a:4:{s:12:\"zipcode_from\";s:5:\"96775\";s:10:\"zipcode_to\";s:5:\"96775\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:22;a:4:{s:12:\"zipcode_from\";s:5:\"96776\";s:10:\"zipcode_to\";s:5:\"96781\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:23;a:4:{s:12:\"zipcode_from\";s:5:\"96782\";s:10:\"zipcode_to\";s:5:\"96782\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:24;a:4:{s:12:\"zipcode_from\";s:5:\"96783\";s:10:\"zipcode_to\";s:5:\"96788\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:25;a:4:{s:12:\"zipcode_from\";s:5:\"96789\";s:10:\"zipcode_to\";s:5:\"96789\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:26;a:4:{s:12:\"zipcode_from\";s:5:\"96790\";s:10:\"zipcode_to\";s:5:\"96790\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:27;a:4:{s:12:\"zipcode_from\";s:5:\"96791\";s:10:\"zipcode_to\";s:5:\"96792\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:28;a:4:{s:12:\"zipcode_from\";s:5:\"96793\";s:10:\"zipcode_to\";s:5:\"96793\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:29;a:4:{s:12:\"zipcode_from\";s:5:\"96794\";s:10:\"zipcode_to\";s:5:\"96795\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:30;a:4:{s:12:\"zipcode_from\";s:5:\"96796\";s:10:\"zipcode_to\";s:5:\"96796\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:31;a:4:{s:12:\"zipcode_from\";s:5:\"96797\";s:10:\"zipcode_to\";s:5:\"96797\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:32;a:4:{s:12:\"zipcode_from\";s:5:\"96798\";s:10:\"zipcode_to\";s:5:\"96798\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:33;a:4:{s:12:\"zipcode_from\";s:5:\"96800\";s:10:\"zipcode_to\";s:5:\"96800\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:34;a:4:{s:12:\"zipcode_from\";s:5:\"96801\";s:10:\"zipcode_to\";s:5:\"96863\";s:12:\"express_zone\";s:2:\"10\";s:11:\"ground_zone\";s:1:\"9\";}i:35;a:4:{s:12:\"zipcode_from\";s:5:\"96964\";s:10:\"zipcode_to\";s:5:\"96899\";s:12:\"express_zone\";s:2:\"12\";s:11:\"ground_zone\";s:1:\"9\";}i:36;a:4:{s:12:\"zipcode_from\";s:5:\"99500\";s:10:\"zipcode_to\";s:5:\"99500\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:37;a:4:{s:12:\"zipcode_from\";s:5:\"99501\";s:10:\"zipcode_to\";s:5:\"99524\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:38;a:4:{s:12:\"zipcode_from\";s:5:\"99525\";s:10:\"zipcode_to\";s:5:\"99528\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:39;a:4:{s:12:\"zipcode_from\";s:5:\"99529\";s:10:\"zipcode_to\";s:5:\"99530\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:2:\"17\";}i:40;a:4:{s:12:\"zipcode_from\";s:5:\"99531\";s:10:\"zipcode_to\";s:5:\"99539\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:41;a:4:{s:12:\"zipcode_from\";s:5:\"99540\";s:10:\"zipcode_to\";s:5:\"99540\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:42;a:4:{s:12:\"zipcode_from\";s:5:\"99541\";s:10:\"zipcode_to\";s:5:\"99566\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:43;a:4:{s:12:\"zipcode_from\";s:5:\"99567\";s:10:\"zipcode_to\";s:5:\"99567\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:2:\"17\";}i:44;a:4:{s:12:\"zipcode_from\";s:5:\"99568\";s:10:\"zipcode_to\";s:5:\"99576\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:1:\"9\";}i:45;a:4:{s:12:\"zipcode_from\";s:5:\"99577\";s:10:\"zipcode_to\";s:5:\"99577\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:2:\"17\";}i:46;a:4:{s:12:\"zipcode_from\";s:5:\"99578\";s:10:\"zipcode_to\";s:5:\"99999\";s:12:\"express_zone\";s:1:\"9\";s:11:\"ground_zone\";s:2:\"17\";}}', 1),
(28455, 'jd', 'jd_state_mapping', 'a:50:{i:0;a:2:{s:11:\"state_short\";s:2:\"CA\";s:10:\"state_long\";s:10:\"California\";}i:1;a:2:{s:11:\"state_short\";s:2:\"AR\";s:10:\"state_long\";s:8:\"Arkansas\";}i:2;a:2:{s:11:\"state_short\";s:2:\"AZ\";s:10:\"state_long\";s:7:\"Arizona\";}i:3;a:2:{s:11:\"state_short\";s:2:\"AK\";s:10:\"state_long\";s:6:\"Alaska\";}i:4;a:2:{s:11:\"state_short\";s:2:\"AL\";s:10:\"state_long\";s:7:\"Alabama\";}i:5;a:2:{s:11:\"state_short\";s:2:\"CO\";s:10:\"state_long\";s:8:\"Colorado\";}i:6;a:2:{s:11:\"state_short\";s:2:\"CT\";s:10:\"state_long\";s:11:\"Connecticut\";}i:7;a:2:{s:11:\"state_short\";s:2:\"DE\";s:10:\"state_long\";s:8:\"Delaware\";}i:8;a:2:{s:11:\"state_short\";s:2:\"FL\";s:10:\"state_long\";s:7:\"Florida\";}i:9;a:2:{s:11:\"state_short\";s:2:\"GA\";s:10:\"state_long\";s:7:\"Georgia\";}i:10;a:2:{s:11:\"state_short\";s:2:\"HI\";s:10:\"state_long\";s:6:\"Hawaii\";}i:11;a:2:{s:11:\"state_short\";s:2:\"ID\";s:10:\"state_long\";s:5:\"Idaho\";}i:12;a:2:{s:11:\"state_short\";s:2:\"IL\";s:10:\"state_long\";s:8:\"Illinois\";}i:13;a:2:{s:11:\"state_short\";s:2:\"IN\";s:10:\"state_long\";s:7:\"Indiana\";}i:14;a:2:{s:11:\"state_short\";s:2:\"IA\";s:10:\"state_long\";s:4:\"Iowa\";}i:15;a:2:{s:11:\"state_short\";s:2:\"KS\";s:10:\"state_long\";s:6:\"Kansas\";}i:16;a:2:{s:11:\"state_short\";s:2:\"KY\";s:10:\"state_long\";s:8:\"Kentucky\";}i:17;a:2:{s:11:\"state_short\";s:2:\"LA\";s:10:\"state_long\";s:9:\"Louisiana\";}i:18;a:2:{s:11:\"state_short\";s:2:\"ME\";s:10:\"state_long\";s:5:\"Maine\";}i:19;a:2:{s:11:\"state_short\";s:2:\"MD\";s:10:\"state_long\";s:8:\"Maryland\";}i:20;a:2:{s:11:\"state_short\";s:2:\"MA\";s:10:\"state_long\";s:13:\"Massachusetts\";}i:21;a:2:{s:11:\"state_short\";s:2:\"MI\";s:10:\"state_long\";s:8:\"Michigan\";}i:22;a:2:{s:11:\"state_short\";s:2:\"MN\";s:10:\"state_long\";s:9:\"Minnesota\";}i:23;a:2:{s:11:\"state_short\";s:2:\"MS\";s:10:\"state_long\";s:11:\"Mississippi\";}i:24;a:2:{s:11:\"state_short\";s:2:\"MO\";s:10:\"state_long\";s:8:\"Missouri\";}i:25;a:2:{s:11:\"state_short\";s:2:\"MT\";s:10:\"state_long\";s:7:\"Montana\";}i:26;a:2:{s:11:\"state_short\";s:2:\"NE\";s:10:\"state_long\";s:8:\"Nebraska\";}i:27;a:2:{s:11:\"state_short\";s:2:\"NV\";s:10:\"state_long\";s:6:\"Nevada\";}i:28;a:2:{s:11:\"state_short\";s:2:\"NH\";s:10:\"state_long\";s:13:\"New Hampshire\";}i:29;a:2:{s:11:\"state_short\";s:2:\"NJ\";s:10:\"state_long\";s:10:\"New Jersey\";}i:30;a:2:{s:11:\"state_short\";s:2:\"NM\";s:10:\"state_long\";s:10:\"New Mexico\";}i:31;a:2:{s:11:\"state_short\";s:2:\"NY\";s:10:\"state_long\";s:8:\"New York\";}i:32;a:2:{s:11:\"state_short\";s:2:\"NC\";s:10:\"state_long\";s:14:\"North Carolina\";}i:33;a:2:{s:11:\"state_short\";s:2:\"ND\";s:10:\"state_long\";s:12:\"North Dakota\";}i:34;a:2:{s:11:\"state_short\";s:2:\"OH\";s:10:\"state_long\";s:4:\"Ohio\";}i:35;a:2:{s:11:\"state_short\";s:2:\"OK\";s:10:\"state_long\";s:8:\"Oklahoma\";}i:36;a:2:{s:11:\"state_short\";s:2:\"OR\";s:10:\"state_long\";s:6:\"Oregon\";}i:37;a:2:{s:11:\"state_short\";s:2:\"PA\";s:10:\"state_long\";s:12:\"Pennsylvania\";}i:38;a:2:{s:11:\"state_short\";s:2:\"RI\";s:10:\"state_long\";s:12:\"Rhode Island\";}i:39;a:2:{s:11:\"state_short\";s:2:\"SC\";s:10:\"state_long\";s:14:\"South Carolina\";}i:40;a:2:{s:11:\"state_short\";s:2:\"SD\";s:10:\"state_long\";s:12:\"South Dakota\";}i:41;a:2:{s:11:\"state_short\";s:2:\"TN\";s:10:\"state_long\";s:9:\"Tennessee\";}i:42;a:2:{s:11:\"state_short\";s:2:\"TX\";s:10:\"state_long\";s:5:\"Texas\";}i:43;a:2:{s:11:\"state_short\";s:2:\"UT\";s:10:\"state_long\";s:4:\"Utah\";}i:44;a:2:{s:11:\"state_short\";s:2:\"VT\";s:10:\"state_long\";s:7:\"Vermont\";}i:45;a:2:{s:11:\"state_short\";s:2:\"VA\";s:10:\"state_long\";s:8:\"Virginia\";}i:46;a:2:{s:11:\"state_short\";s:2:\"WA\";s:10:\"state_long\";s:10:\"Washington\";}i:47;a:2:{s:11:\"state_short\";s:2:\"WV\";s:10:\"state_long\";s:13:\"West Virginia\";}i:48;a:2:{s:11:\"state_short\";s:2:\"WI\";s:10:\"state_long\";s:9:\"Wisconsin\";}i:49;a:2:{s:11:\"state_short\";s:2:\"WY\";s:10:\"state_long\";s:7:\"Wyoming\";}}', 1),
(28444, 'jd', 'jd_sender_postcode', '91748', 0),
(28445, 'jd', 'jd_order_type', '0', 0),
(28446, 'jd', 'jd_sale_plat', '0010001', 0),
(28447, 'jd', 'jd_weight_unit', 'pound', 0),
(28448, 'jd', 'jd_service_pickup_method', '1', 0),
(28449, 'jd', 'jd_collection_value', '0', 0),
(28450, 'jd', 'jd_sort_order', '1', 0),
(28451, 'jd', 'jd_status', '1', 0),
(28452, 'jd', 'jd_service', 'a:3:{i:0;a:3:{s:4:\"name\";s:15:\"JD Fedex Ground\";s:4:\"code\";s:9:\"FEDEX_GRD\";s:6:\"method\";s:15:\"JD Fedex Ground\";}i:1;a:3:{s:4:\"name\";s:14:\"JD Fedex 2 Day\";s:4:\"code\";s:8:\"FEDEX_2D\";s:6:\"method\";s:14:\"JD Fedex 2 Day\";}i:2;a:3:{s:4:\"name\";s:11:\"JD DHL Expm\";s:4:\"code\";s:8:\"DHL_EXPM\";s:6:\"method\";s:11:\"JD DHL Expm\";}}', 1);
INSERT INTO `setting` (`setting_id`, `code`, `key`, `value`, `serialized`) VALUES
(28453, 'jd', 'jd_fedex_zone_mapping', 'a:117:{i:0;a:4:{s:12:\"zipcode_from\";s:3:\"005\";s:10:\"zipcode_to\";s:3:\"005\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:1;a:4:{s:12:\"zipcode_from\";s:3:\"010\";s:10:\"zipcode_to\";s:3:\"212\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:2;a:4:{s:12:\"zipcode_from\";s:3:\"214\";s:10:\"zipcode_to\";s:3:\"268\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:3;a:4:{s:12:\"zipcode_from\";s:3:\"270\";s:10:\"zipcode_to\";s:3:\"342\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:4;a:4:{s:12:\"zipcode_from\";s:3:\"344\";s:10:\"zipcode_to\";s:3:\"344\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:5;a:4:{s:12:\"zipcode_from\";s:3:\"346\";s:10:\"zipcode_to\";s:3:\"347\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:6;a:4:{s:12:\"zipcode_from\";s:3:\"349\";s:10:\"zipcode_to\";s:3:\"349\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:7;a:4:{s:12:\"zipcode_from\";s:3:\"350\";s:10:\"zipcode_to\";s:3:\"352\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:8;a:4:{s:12:\"zipcode_from\";s:3:\"354\";s:10:\"zipcode_to\";s:3:\"358\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:9;a:4:{s:12:\"zipcode_from\";s:3:\"359\";s:10:\"zipcode_to\";s:3:\"364\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:10;a:4:{s:12:\"zipcode_from\";s:3:\"365\";s:10:\"zipcode_to\";s:3:\"367\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:11;a:4:{s:12:\"zipcode_from\";s:3:\"368\";s:10:\"zipcode_to\";s:3:\"368\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:12;a:4:{s:12:\"zipcode_from\";s:3:\"369\";s:10:\"zipcode_to\";s:3:\"372\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:13;a:4:{s:12:\"zipcode_from\";s:3:\"373\";s:10:\"zipcode_to\";s:3:\"374\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:14;a:4:{s:12:\"zipcode_from\";s:3:\"375\";s:10:\"zipcode_to\";s:3:\"375\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:15;a:4:{s:12:\"zipcode_from\";s:3:\"376\";s:10:\"zipcode_to\";s:3:\"379\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:16;a:4:{s:12:\"zipcode_from\";s:3:\"380\";s:10:\"zipcode_to\";s:3:\"384\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:17;a:4:{s:12:\"zipcode_from\";s:3:\"385\";s:10:\"zipcode_to\";s:3:\"385\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:18;a:4:{s:12:\"zipcode_from\";s:3:\"386\";s:10:\"zipcode_to\";s:3:\"397\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:19;a:4:{s:12:\"zipcode_from\";s:3:\"398\";s:10:\"zipcode_to\";s:3:\"418\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:20;a:4:{s:12:\"zipcode_from\";s:3:\"420\";s:10:\"zipcode_to\";s:3:\"424\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:21;a:4:{s:12:\"zipcode_from\";s:3:\"425\";s:10:\"zipcode_to\";s:3:\"427\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:22;a:4:{s:12:\"zipcode_from\";s:3:\"430\";s:10:\"zipcode_to\";s:3:\"459\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:23;a:4:{s:12:\"zipcode_from\";s:3:\"460\";s:10:\"zipcode_to\";s:3:\"466\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:24;a:4:{s:12:\"zipcode_from\";s:3:\"467\";s:10:\"zipcode_to\";s:3:\"468\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:25;a:4:{s:12:\"zipcode_from\";s:3:\"469\";s:10:\"zipcode_to\";s:3:\"469\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:26;a:4:{s:12:\"zipcode_from\";s:3:\"470\";s:10:\"zipcode_to\";s:3:\"473\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:27;a:4:{s:12:\"zipcode_from\";s:3:\"474\";s:10:\"zipcode_to\";s:3:\"479\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:28;a:4:{s:12:\"zipcode_from\";s:3:\"480\";s:10:\"zipcode_to\";s:3:\"497\";s:12:\"express_zone\";s:1:\"8\";s:11:\"ground_zone\";s:1:\"8\";}i:29;a:4:{s:12:\"zipcode_from\";s:3:\"498\";s:10:\"zipcode_to\";s:3:\"504\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:30;a:4:{s:12:\"zipcode_from\";s:3:\"505\";s:10:\"zipcode_to\";s:3:\"505\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:31;a:4:{s:12:\"zipcode_from\";s:3:\"506\";s:10:\"zipcode_to\";s:3:\"507\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:32;a:4:{s:12:\"zipcode_from\";s:3:\"508\";s:10:\"zipcode_to\";s:3:\"508\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:33;a:4:{s:12:\"zipcode_from\";s:3:\"509\";s:10:\"zipcode_to\";s:3:\"509\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:34;a:4:{s:12:\"zipcode_from\";s:3:\"510\";s:10:\"zipcode_to\";s:3:\"516\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:35;a:4:{s:12:\"zipcode_from\";s:3:\"520\";s:10:\"zipcode_to\";s:3:\"528\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:36;a:4:{s:12:\"zipcode_from\";s:3:\"530\";s:10:\"zipcode_to\";s:3:\"532\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:37;a:4:{s:12:\"zipcode_from\";s:3:\"534\";s:10:\"zipcode_to\";s:3:\"535\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:38;a:4:{s:12:\"zipcode_from\";s:3:\"537\";s:10:\"zipcode_to\";s:3:\"551\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:39;a:4:{s:12:\"zipcode_from\";s:3:\"553\";s:10:\"zipcode_to\";s:3:\"560\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:40;a:4:{s:12:\"zipcode_from\";s:3:\"561\";s:10:\"zipcode_to\";s:3:\"561\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:41;a:4:{s:12:\"zipcode_from\";s:3:\"562\";s:10:\"zipcode_to\";s:3:\"567\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:42;a:4:{s:12:\"zipcode_from\";s:3:\"570\";s:10:\"zipcode_to\";s:3:\"577\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:43;a:4:{s:12:\"zipcode_from\";s:3:\"580\";s:10:\"zipcode_to\";s:3:\"581\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:44;a:4:{s:12:\"zipcode_from\";s:3:\"582\";s:10:\"zipcode_to\";s:3:\"582\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:45;a:4:{s:12:\"zipcode_from\";s:3:\"583\";s:10:\"zipcode_to\";s:3:\"588\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:46;a:4:{s:12:\"zipcode_from\";s:3:\"590\";s:10:\"zipcode_to\";s:3:\"591\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:47;a:4:{s:12:\"zipcode_from\";s:3:\"592\";s:10:\"zipcode_to\";s:3:\"593\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:48;a:4:{s:12:\"zipcode_from\";s:3:\"594\";s:10:\"zipcode_to\";s:3:\"594\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:49;a:4:{s:12:\"zipcode_from\";s:3:\"595\";s:10:\"zipcode_to\";s:3:\"595\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:50;a:4:{s:12:\"zipcode_from\";s:3:\"596\";s:10:\"zipcode_to\";s:3:\"599\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:51;a:4:{s:12:\"zipcode_from\";s:3:\"600\";s:10:\"zipcode_to\";s:3:\"620\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:52;a:4:{s:12:\"zipcode_from\";s:3:\"622\";s:10:\"zipcode_to\";s:3:\"631\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:53;a:4:{s:12:\"zipcode_from\";s:3:\"633\";s:10:\"zipcode_to\";s:3:\"639\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:54;a:4:{s:12:\"zipcode_from\";s:3:\"640\";s:10:\"zipcode_to\";s:3:\"641\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:55;a:4:{s:12:\"zipcode_from\";s:3:\"644\";s:10:\"zipcode_to\";s:3:\"649\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:56;a:4:{s:12:\"zipcode_from\";s:3:\"650\";s:10:\"zipcode_to\";s:3:\"655\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:57;a:4:{s:12:\"zipcode_from\";s:3:\"656\";s:10:\"zipcode_to\";s:3:\"658\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:58;a:4:{s:12:\"zipcode_from\";s:3:\"660\";s:10:\"zipcode_to\";s:3:\"662\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:59;a:4:{s:12:\"zipcode_from\";s:3:\"664\";s:10:\"zipcode_to\";s:3:\"676\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:60;a:4:{s:12:\"zipcode_from\";s:3:\"677\";s:10:\"zipcode_to\";s:3:\"677\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:61;a:4:{s:12:\"zipcode_from\";s:3:\"678\";s:10:\"zipcode_to\";s:3:\"678\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:62;a:4:{s:12:\"zipcode_from\";s:3:\"679\";s:10:\"zipcode_to\";s:3:\"679\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:63;a:4:{s:12:\"zipcode_from\";s:3:\"680\";s:10:\"zipcode_to\";s:3:\"681\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:64;a:4:{s:12:\"zipcode_from\";s:3:\"683\";s:10:\"zipcode_to\";s:3:\"692\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:65;a:4:{s:12:\"zipcode_from\";s:3:\"693\";s:10:\"zipcode_to\";s:3:\"693\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:66;a:4:{s:12:\"zipcode_from\";s:3:\"700\";s:10:\"zipcode_to\";s:3:\"701\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:67;a:4:{s:12:\"zipcode_from\";s:3:\"703\";s:10:\"zipcode_to\";s:3:\"708\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:68;a:4:{s:12:\"zipcode_from\";s:3:\"710\";s:10:\"zipcode_to\";s:3:\"711\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:69;a:4:{s:12:\"zipcode_from\";s:3:\"712\";s:10:\"zipcode_to\";s:3:\"714\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:70;a:4:{s:12:\"zipcode_from\";s:3:\"716\";s:10:\"zipcode_to\";s:3:\"717\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:71;a:4:{s:12:\"zipcode_from\";s:3:\"718\";s:10:\"zipcode_to\";s:3:\"718\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:72;a:4:{s:12:\"zipcode_from\";s:3:\"719\";s:10:\"zipcode_to\";s:3:\"725\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:73;a:4:{s:12:\"zipcode_from\";s:3:\"726\";s:10:\"zipcode_to\";s:3:\"727\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:74;a:4:{s:12:\"zipcode_from\";s:3:\"728\";s:10:\"zipcode_to\";s:3:\"728\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:75;a:4:{s:12:\"zipcode_from\";s:3:\"729\";s:10:\"zipcode_to\";s:3:\"731\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:76;a:4:{s:12:\"zipcode_from\";s:3:\"733\";s:10:\"zipcode_to\";s:3:\"738\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:77;a:4:{s:12:\"zipcode_from\";s:3:\"739\";s:10:\"zipcode_to\";s:3:\"739\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:78;a:4:{s:12:\"zipcode_from\";s:3:\"740\";s:10:\"zipcode_to\";s:3:\"741\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:79;a:4:{s:12:\"zipcode_from\";s:3:\"743\";s:10:\"zipcode_to\";s:3:\"775\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:80;a:4:{s:12:\"zipcode_from\";s:3:\"776\";s:10:\"zipcode_to\";s:3:\"777\";s:12:\"express_zone\";s:1:\"7\";s:11:\"ground_zone\";s:1:\"7\";}i:81;a:4:{s:12:\"zipcode_from\";s:3:\"778\";s:10:\"zipcode_to\";s:3:\"789\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:82;a:4:{s:12:\"zipcode_from\";s:3:\"790\";s:10:\"zipcode_to\";s:3:\"791\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:83;a:4:{s:12:\"zipcode_from\";s:3:\"792\";s:10:\"zipcode_to\";s:3:\"792\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:84;a:4:{s:12:\"zipcode_from\";s:3:\"793\";s:10:\"zipcode_to\";s:3:\"794\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:85;a:4:{s:12:\"zipcode_from\";s:3:\"795\";s:10:\"zipcode_to\";s:3:\"796\";s:12:\"express_zone\";s:1:\"6\";s:11:\"ground_zone\";s:1:\"6\";}i:86;a:4:{s:12:\"zipcode_from\";s:3:\"797\";s:10:\"zipcode_to\";s:3:\"816\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:87;a:4:{s:12:\"zipcode_from\";s:3:\"820\";s:10:\"zipcode_to\";s:3:\"838\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:88;a:4:{s:12:\"zipcode_from\";s:3:\"840\";s:10:\"zipcode_to\";s:3:\"847\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:89;a:4:{s:12:\"zipcode_from\";s:3:\"850\";s:10:\"zipcode_to\";s:3:\"850\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:90;a:4:{s:12:\"zipcode_from\";s:3:\"851\";s:10:\"zipcode_to\";s:3:\"851\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:91;a:4:{s:12:\"zipcode_from\";s:3:\"852\";s:10:\"zipcode_to\";s:3:\"853\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:92;a:4:{s:12:\"zipcode_from\";s:3:\"855\";s:10:\"zipcode_to\";s:3:\"857\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:93;a:4:{s:12:\"zipcode_from\";s:3:\"859\";s:10:\"zipcode_to\";s:3:\"860\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:94;a:4:{s:12:\"zipcode_from\";s:3:\"863\";s:10:\"zipcode_to\";s:3:\"863\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:95;a:4:{s:12:\"zipcode_from\";s:3:\"864\";s:10:\"zipcode_to\";s:3:\"864\";s:12:\"express_zone\";s:1:\"3\";s:11:\"ground_zone\";s:1:\"3\";}i:96;a:4:{s:12:\"zipcode_from\";s:3:\"865\";s:10:\"zipcode_to\";s:3:\"865\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:97;a:4:{s:12:\"zipcode_from\";s:3:\"870\";s:10:\"zipcode_to\";s:3:\"872\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:98;a:4:{s:12:\"zipcode_from\";s:3:\"873\";s:10:\"zipcode_to\";s:3:\"874\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:99;a:4:{s:12:\"zipcode_from\";s:3:\"875\";s:10:\"zipcode_to\";s:3:\"875\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:100;a:4:{s:12:\"zipcode_from\";s:3:\"877\";s:10:\"zipcode_to\";s:3:\"885\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:101;a:4:{s:12:\"zipcode_from\";s:3:\"889\";s:10:\"zipcode_to\";s:3:\"891\";s:12:\"express_zone\";s:1:\"3\";s:11:\"ground_zone\";s:1:\"3\";}i:102;a:4:{s:12:\"zipcode_from\";s:3:\"893\";s:10:\"zipcode_to\";s:3:\"895\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:103;a:4:{s:12:\"zipcode_from\";s:3:\"897\";s:10:\"zipcode_to\";s:3:\"898\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:104;a:4:{s:12:\"zipcode_from\";s:3:\"900\";s:10:\"zipcode_to\";s:3:\"908\";s:12:\"express_zone\";s:1:\"2\";s:11:\"ground_zone\";s:1:\"2\";}i:105;a:4:{s:12:\"zipcode_from\";s:3:\"910\";s:10:\"zipcode_to\";s:3:\"928\";s:12:\"express_zone\";s:1:\"2\";s:11:\"ground_zone\";s:1:\"2\";}i:106;a:4:{s:12:\"zipcode_from\";s:3:\"930\";s:10:\"zipcode_to\";s:3:\"935\";s:12:\"express_zone\";s:1:\"2\";s:11:\"ground_zone\";s:1:\"2\";}i:107;a:4:{s:12:\"zipcode_from\";s:3:\"936\";s:10:\"zipcode_to\";s:3:\"939\";s:12:\"express_zone\";s:1:\"3\";s:11:\"ground_zone\";s:1:\"3\";}i:108;a:4:{s:12:\"zipcode_from\";s:3:\"940\";s:10:\"zipcode_to\";s:3:\"942\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:109;a:4:{s:12:\"zipcode_from\";s:3:\"943\";s:10:\"zipcode_to\";s:3:\"943\";s:12:\"express_zone\";s:1:\"3\";s:11:\"ground_zone\";s:1:\"3\";}i:110;a:4:{s:12:\"zipcode_from\";s:3:\"944\";s:10:\"zipcode_to\";s:3:\"949\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:111;a:4:{s:12:\"zipcode_from\";s:3:\"950\";s:10:\"zipcode_to\";s:3:\"953\";s:12:\"express_zone\";s:1:\"3\";s:11:\"ground_zone\";s:1:\"3\";}i:112;a:4:{s:12:\"zipcode_from\";s:3:\"954\";s:10:\"zipcode_to\";s:3:\"966\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:113;a:4:{s:12:\"zipcode_from\";s:3:\"970\";s:10:\"zipcode_to\";s:3:\"974\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:114;a:4:{s:12:\"zipcode_from\";s:3:\"975\";s:10:\"zipcode_to\";s:3:\"976\";s:12:\"express_zone\";s:1:\"4\";s:11:\"ground_zone\";s:1:\"4\";}i:115;a:4:{s:12:\"zipcode_from\";s:3:\"977\";s:10:\"zipcode_to\";s:3:\"986\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}i:116;a:4:{s:12:\"zipcode_from\";s:3:\"988\";s:10:\"zipcode_to\";s:3:\"994\";s:12:\"express_zone\";s:1:\"5\";s:11:\"ground_zone\";s:1:\"5\";}}', 1),
(28443, 'jd', 'jd_sender_country', 'US', 0),
(28442, 'jd', 'jd_sender_province', 'California', 0),
(28441, 'jd', 'jd_sender_city', 'City of Industry', 0),
(28440, 'jd', 'jd_sender_address', '17559 Rowland St', 0),
(28439, 'jd', 'jd_sender_mobile', '6265518446', 0),
(28438, 'jd', 'jd_sender_name', 'Sam Shao', 0),
(28437, 'jd', 'jd_customer_code', '010K41', 0),
(28436, 'jd', 'jd_customer_id', '41', 0),
(28435, 'jd', 'jd_source', 'ISV', 0),
(28434, 'jd', 'jd_url_args', 'ONTARIO', 0),
(28433, 'jd', 'jd_secret_key', '913207D511D02A9E18', 0),
(28432, 'jd', 'jd_user', 'TRANSOLOGY-ONTARIO', 0),
(28292, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(28462, 'jd', 'jd_dhl_express_price_table', '/var/www/html/bhl/media/file/dhl_express.xlsx', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
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

INSERT INTO `store` (`store_id`, `client_id`, `name`, `platform`, `setting`, `default_sale_status_id`, `default_sale_shipping_provider`, `default_sale_shipping_service`, `active_download`, `active_upload`, `sync_inventory`, `sync_single_warehouse`, `sync_warehouse_id`) VALUES
(4, 4, 'Saminthebox Offline', 'offline', 's:0:\"\";', 1, 'postpony', 'pfg', 0, 0, 1, 0, NULL);

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
(7, 4, 0, 0, 0),
(8, 4, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_sync_history`
--

CREATE TABLE `store_sync_history` (
  `store_sync_history_id` int(11) NOT NULL,
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

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `client_id`, `type`, `type_id`, `cost`, `markup`, `amount`, `comment`, `date_added`, `date_modified`) VALUES
(98, 4, 'sale', 16, '7.90', '0.00', '7.90', 'label fee for order - ID: 16  store order ID: 526655412368', '2019-11-21 20:55:10', '2019-11-21 20:55:10'),
(99, 4, 'sale', 16, '0.49', '0.00', '0.49', 'label fee additional for order - ID: 16', '2019-11-21 20:55:10', '2019-11-21 20:55:10'),
(100, 4, 'checkout', 182, '0.00', '0.00', '0.00', 'transaction for checkout - ID: 182', '2019-11-24 11:11:58', '2019-11-24 11:11:58'),
(101, 4, NULL, NULL, '0.00', '15.00', '15.00', 'Pallet storage 12/01/2019', '2019-12-15 14:40:05', '2019-12-15 14:40:05'),
(105, 4, 'checkout', 183, '0.00', '0.00', '0.00', 'transaction for checkout - ID: 183', '2019-12-15 14:43:56', '2019-12-15 14:43:56'),
(106, 4, 'sale', 17, '10.09', '0.00', '10.09', 'label fee for order - ID: 17', '2019-12-15 14:51:26', '2019-12-15 14:51:26'),
(107, 4, 'sale', 17, '0.70', '0.00', '0.70', 'label fee additional for order - ID: 17', '2019-12-15 14:51:26', '2019-12-15 14:51:26');

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
(1, 1, 'admin', '7fb998c9c27935375105a423701fd55e8b5b1908', '433', 'Sam', 'Shao', 'sam@goodbox.com', '', '', '::1', 1, '2017-02-13 11:42:29');

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
(1, 'Administrator', 'The administrator user group', '{\"access\":[\"check\",\"fba\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\",\"log\"],\"modify\":[\"check\",\"fba\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\",\"log\"]}'),
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
(4, 'HuaLongUSA Main', '19097 Colima Road', 'Rowland Heights', 'CA', 'US', '91748', '0000-00-00 00:00:00', '2019-05-07 12:28:06');

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
  ADD PRIMARY KEY (`checkout_file_id`);

--
-- Indexes for table `checkout_label`
--
ALTER TABLE `checkout_label`
  ADD PRIMARY KEY (`checkout_label_id`);

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
-- Indexes for table `fba`
--
ALTER TABLE `fba`
  ADD PRIMARY KEY (`fba_id`),
  ADD KEY `id` (`fba_id`);

--
-- Indexes for table `fba_product`
--
ALTER TABLE `fba_product`
  ADD PRIMARY KEY (`fba_product_id`),
  ADD KEY `purchase_id` (`fba_id`),
  ADD KEY `product_id` (`product_id`);

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
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `store_sync`
--
ALTER TABLE `store_sync`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  ADD PRIMARY KEY (`store_sync_history_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12145;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `checkin_fee`
--
ALTER TABLE `checkin_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `checkin_file`
--
ALTER TABLE `checkin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkin_product`
--
ALTER TABLE `checkin_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_file`
--
ALTER TABLE `checkout_file`
  MODIFY `checkout_file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_label`
--
ALTER TABLE `checkout_label`
  MODIFY `checkout_label_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_product`
--
ALTER TABLE `checkout_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `fba`
--
ALTER TABLE `fba`
  MODIFY `fba_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fba_product`
--
ALTER TABLE `fba_product`
  MODIFY `fba_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2529;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28463;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `store_sync_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

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
