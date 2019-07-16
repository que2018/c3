-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 06:51 PM
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
(10583, 1, '::1', 'setting/about', 'view about', 'GET', '2019-07-16 18:49:54');

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
(2, 2, '-256.00'),
(3, 3, '0.00'),
(4, 4, '0.00');

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
(20, 0, '', '', 2, '2018-12-13 17:01:14', '2018-12-13 17:01:14'),
(21, 0, '', '', 2, '2019-01-24 21:17:30', '2019-01-24 21:17:30'),
(22, 0, '', '', 2, '2019-01-24 21:18:59', '2019-01-24 21:18:59'),
(23, 4, '', '', 2, '2019-05-03 21:05:40', '2019-05-03 21:05:40'),
(24, 4, '', '', 2, '2019-05-03 21:05:59', '2019-05-03 21:05:59'),
(25, 4, '', '', 2, '2019-05-05 18:09:00', '2019-05-05 18:09:00'),
(26, 4, '', '', 2, '2019-05-05 18:09:31', '2019-05-05 18:09:31'),
(27, 4, '', '', 2, '2019-05-05 18:09:47', '2019-05-05 18:09:47'),
(28, 4, '', '', 2, '2019-05-05 18:10:13', '2019-05-05 18:10:13'),
(29, 0, '', '', 1, '2019-07-02 19:04:55', '2019-07-02 19:04:55');

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
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkin_product`
--

INSERT INTO `checkin_product` (`id`, `checkin_id`, `product_id`, `batch`, `quantity`, `location_id`) VALUES
(60, 20, 119, '', 2, 2527),
(61, 20, 120, '', 4, 2527),
(62, 20, 121, '', 4, 2527),
(63, 20, 122, '', 15, 2527),
(64, 20, 123, '', 9, 2527),
(65, 20, 118, '', 4, 2527),
(66, 20, 124, '', 8, 2527),
(67, 21, 125, '', 1000, 2527),
(68, 22, 126, '', 600, 2527),
(77, 28, 134, '', 20, 2527),
(78, 27, 133, '', 40, 2527),
(79, 26, 132, '', 51, 2527),
(80, 25, 130, '', 40, 2527),
(81, 24, 131, '', 18, 2527),
(82, 23, 129, '', 55, 2527),
(83, 29, 133, '', 1000, 2527);

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
(174, '10000000000000174', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2019-07-03 19:23:14', '2019-07-03 19:23:14'),
(175, '10000000000000175', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2019-07-03 19:23:17', '2019-07-03 19:23:17'),
(176, '10000000000000176', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2019-07-03 19:23:18', '2019-07-03 19:23:18'),
(178, '10000000000000178', 0, '', 2, '13.00', '62.20', '10.60', '67.54', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-07-08 17:57:56', '2019-07-08 17:57:56'),
(179, '10000000000000179', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-07-10 19:32:42', '2019-07-10 19:32:42'),
(180, '10000000000000180', 0, '', 2, '3.50', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-07-16 18:24:18', '2019-07-16 18:24:18'),
(181, '10000000000000181', 0, '', 2, '3.50', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-07-16 18:24:34', '2019-07-16 18:24:34');

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

--
-- Dumping data for table `checkout_fee`
--

INSERT INTO `checkout_fee` (`id`, `checkout_id`, `name`, `amount`) VALUES
(2, 178, 'checkout fee by weight', 6.00);

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
(316, 174, 27, 1),
(317, 175, 27, 1),
(318, 176, 27, 1),
(331, 179, 27, 1),
(332, 178, 33, 1),
(333, 180, 27, 1),
(334, 181, 27, 1);

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
  `phone` varchar(20) DEFAULT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `ip_address`, `password`, `salt`, `email`, `status`, `firstname`, `lastname`, `company`, `address`, `city`, `state`, `country`, `postal_code`, `phone`, `data`) VALUES
(2, '', 'e686b66a986c58b6c8b49b03abcbeeabf2c58ae9', '820', 'quedinge2012@gmail.com', 1, 'Vee', 'Trading', 'Vee Trading Inc', '', '', '', '', '', '6265928459', ''),
(3, '', '647dd7cd5f4a5996d8263f93886ec311bb39d06d', '614', '2573661972@qq.com', 1, 'Amy', 'Huang', '广州容宇生物科技有限公司', '', '', '', '', '', '18565316449', ''),
(4, '', 'e4e469d7182042f9906774e1ad691e5860ecf2d5', '837', 'quedinge2019@gmail.com', 1, 'Todd', 'Zhou', '广州鸿泰进出口贸易有限公司', '', '', '', '', '', '', '');

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
(52, 4, 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '', '', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', 'US', '33172-27', '');

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
(124, 'shipping', 'ltl');

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
(27, 0, 122, 2527, '', 9, '2018-12-13 17:03:13', '2019-07-16 18:46:10'),
(33, 0, 132, 2527, '', 50, '2019-05-07 12:26:13', '2019-07-16 18:18:15'),
(34, 0, 130, 2527, '', 40, '2019-05-07 12:26:22', '2019-05-07 12:26:22'),
(35, 0, 131, 2527, '', 18, '2019-05-07 12:26:28', '2019-07-01 21:54:40'),
(38, 0, 134, 2527, '', 5, '2019-07-03 19:18:40', '2019-07-08 17:55:55'),
(39, 0, 133, 2527, '', 0, '2019-07-03 19:21:33', '2019-07-03 19:21:34');

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
(2527, 'A0', 'A0', 4, '2018-12-13 16:57:36', '2018-12-13 16:57:36');

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
(118, 'X001W2CU5J', 'X001W2CU5J', '', 'LJX-22D8WY-BOX', '0.00', 'no_image.jpg', NULL, '49.68', 5, 1, '40.00', '12.60', '13.40', 0, 'usps', 'fc', 2, '2018-12-12 22:01:57', '2018-12-18 17:35:44'),
(119, 'X00155OJ57', 'X00155OJ57', '', 'BL-22D8WY-BOX', '0.00', 'no_image.jpg', NULL, '49.68', 5, 1, '40.60', '13.00', '16.20', 0, 'usps', 'fc', 2, '2018-12-12 22:02:42', '2018-12-18 17:36:12'),
(120, 'X001643CZ5', 'X001643CZ5', '', 'BL-22D8Y-BOX', '0.00', 'no_image.jpg', NULL, '49.68', 5, 1, '40.60', '13.00', '16.20', 0, 'usps', 'fc', 2, '2018-12-12 22:03:27', '2018-12-18 17:36:41'),
(121, 'X0015BOJMJ', 'X0015BOJMJ', '', 'BL-22D6WY-BOX', '0.00', 'no_image.jpg', NULL, '45.42', 5, 1, '28.00', '13.00', '16.20', 0, 'usps', 'fc', 2, '2018-12-12 22:04:08', '2018-12-18 17:37:08'),
(122, '23D7WB', '23D7WB', '', '23D7WB', '0.00', 'no_image.jpg', NULL, '2.00', 5, 1, '33.00', '3.50', '3.00', 0, 'usps', 'pr', 2, '2018-12-12 22:04:41', '2018-12-27 13:57:43'),
(123, 'X001QM0TWV', 'X001QM0TWV', '', 'Chevy Equinox cargo cover-BOX', '0.00', 'no_image.jpg', NULL, '48.50', 5, 1, '59.30', '15.00', '7.90', 0, 'usps', 'fc', 2, '2018-12-12 22:05:05', '2018-12-18 17:38:13'),
(124, 'X001OL66RB', 'X001OL66RB', '', 'jeep grand cherokee cargo cover-BOX', '0.00', 'no_image.jpg', NULL, '48.50', 5, 1, '59.30', '15.00', '7.90', 0, 'usps', 'fc', 2, '2018-12-12 22:05:33', '2018-12-18 17:38:42'),
(125, 'FlapBagG', 'FlapBagG', 'B0769DL97V', 'backpackGray', '23.49', 'no_image.jpg', NULL, '1.75', 5, 1, '14.65', '8.82', '3.46', 0, '', '', 3, '2019-01-24 21:13:43', '2019-01-24 21:18:36'),
(126, 'FlapBagB', 'FlapBagB', 'B07699RYCB', 'backpackBlack', '23.49', 'no_image.jpg', NULL, '1.75', 5, 1, '14.65', '8.82', '3.46', 0, '', '', 3, '2019-01-24 21:16:09', '2019-01-24 21:18:28'),
(127, 'SkateboardbackpackBlack', 'SkateboardbackpackBlack', 'B07797V5YY', 'SkateboardbackpackBlack', '34.99', 'no_image.jpg', NULL, '1.90', 5, 1, '14.00', '11.50', '3.20', 500, '', '', 3, '2019-03-03 16:59:22', '2019-03-03 16:59:22'),
(128, 'backpackwithraincover', 'backpackwithraincover', 'B072JJLMKH', 'backpackwithraincover', '47.49', 'no_image.jpg', NULL, '3.40', 5, 1, '15.00', '9.00', '5.00', 350, '', '', 3, '2019-03-03 17:02:20', '2019-03-03 17:02:20'),
(129, 'OA2', 'OA2', 'OA2', 'OA2', '0.00', 'no_image.jpg', NULL, '50.82', 5, 1, '56.70', '15.70', '10.60', 0, 'ups', 'gr', 4, '2019-05-01 20:37:09', '2019-05-01 20:37:09'),
(130, 'OA3', 'OA3', 'OA3', 'OA3', '0.00', 'no_image.jpg', NULL, '61.16', 5, 1, '48.80', '15.00', '11.80', 0, 'ups', 'gr', 4, '2019-05-01 20:37:55', '2019-05-01 20:37:55'),
(131, 'OA4', 'OA4', 'OA4', 'OA4', '0.00', 'no_image.jpg', NULL, '82.50', 5, 1, '66.50', '19.70', '11.80', 0, 'ups', 'gr', 4, '2019-05-01 20:38:34', '2019-05-01 20:38:34'),
(132, 'OA9', 'OA9', 'OA9', 'OA9', '0.00', 'no_image.jpg', NULL, '67.54', 5, 1, '62.20', '13.00', '10.60', 0, 'ups', 'gr', 4, '2019-05-01 20:39:12', '2019-05-01 20:39:12'),
(133, 'OA13', 'OA13', 'OA13', 'OA13', '0.00', 'no_image.jpg', NULL, '36.52', 5, 1, '42.00', '26.00', '9.80', 40, 'ups', 'gr', 4, '2019-05-01 20:44:02', '2019-05-01 20:44:02'),
(134, 'OA6', 'OA6', 'OA6', 'OA6', '0.00', 'no_image.jpg', NULL, '99.00', 5, 1, '65.00', '17.70', '13.80', 20, 'ups', 'gr', 4, '2019-05-01 20:44:52', '2019-05-01 20:44:52');

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
(10, 4, '', 'TJ', '11615 E YATES CENTER RD', '', 'LYNDONVILLE', 'NY', '14098', 'US', '', '5853535341', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0312364458', 2, '', '2018-12-18 17:22:55', '2018-12-18 17:47:28'),
(11, 4, '', 'Karen Parsons', '13 Hathaway Ave', '', 'Peabody', 'MA', '09160', 'US', '', '9789779971', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0312366321', 2, '', '2018-12-18 17:31:03', '2018-12-18 17:47:23'),
(12, 4, '', 'Joshua Flaugh', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', '16635', 'US', '', '8143814184', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0345729574', 2, '', '2018-12-18 17:32:09', '2018-12-18 17:47:17'),
(13, 4, '', 'Jonathan Michael Dixon', '5110 AZALEA TRACE DR APT 2603', '', 'HOUSTON', 'TX', '77066-43', 'US', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236776', 2, '', '2018-12-20 11:28:44', '2018-12-20 12:51:10'),
(14, 4, '', 'Harry Conover', '77 Steiner Ave', '', 'Neptune', 'NJ', '07753', 'US', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236769', 2, '', '2018-12-20 11:29:37', '2018-12-20 12:51:02'),
(15, 4, '', 'gene black', '401 W School St', '', 'Hamilton', 'MO', '64644-82', 'US', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236752', 2, '', '2018-12-20 11:30:26', '2018-12-20 12:50:57');

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
(32, 12, 122, 1, ''),
(33, 11, 122, 1, ''),
(34, 10, 122, 1, ''),
(44, 15, 122, 1, ''),
(45, 14, 122, 1, ''),
(46, 13, 122, 1, '');

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
(12, 174),
(11, 175),
(10, 176);

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
(24695, 'usps', 'usps_stamps_password', 'FSUS777', 0),
(24696, 'usps', 'usps_stamps_integration_id', 'e13dde83-59b9-4b45-9a51-3f83016fd883', 0),
(24698, 'usps', 'usps_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:11:\"First Class\";s:4:\"code\";s:2:\"fc\";s:6:\"method\";s:5:\"US-FC\";s:7:\"package\";s:7:\"Package\";}i:1;a:4:{s:4:\"name\";s:8:\"Priority\";s:4:\"code\";s:2:\"pr\";s:6:\"method\";s:5:\"US-PM\";s:7:\"package\";s:7:\"Package\";}}', 1),
(24697, 'usps', 'usps_stamps_wsdl_file', 'assets/file/stamps/stamps.prod.xml', 0),
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
(24694, 'usps', 'usps_stamps_username', 'FSUS', 0),
(24693, 'usps', 'usps_sort_order', '0', 0),
(24692, 'usps', 'usps_status', '1', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(17216, 'square', 'square_status', '1', 0),
(24691, 'usps', 'usps_debug_mode', '0', 0),
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
(24690, 'usps', 'usps_postcode', '91748', 0),
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
(24689, 'usps', 'usps_country', 'US', 0),
(23841, 'fedex', 'fedex_fee_value', '3', 0),
(23840, 'fedex', 'fedex_fee_type', '0', 0),
(24688, 'usps', 'usps_state', 'CA', 0),
(24687, 'usps', 'usps_city', 'Rowland Heights', 0),
(24686, 'usps', 'usps_street2', '.', 0),
(24685, 'usps', 'usps_street', '19097 Colima Road', 0),
(24684, 'usps', 'usps_phone', '6262033872', 0),
(23671, 'ups', 'ups_quote_type', 'commercial', 0),
(23670, 'ups', 'ups_country', 'US', 0),
(23669, 'ups', 'ups_postcode', '91731', 0),
(23668, 'ups', 'ups_state', 'CA', 0),
(23667, 'ups', 'ups_city', 'EL Monte', 0),
(25174, 'config', 'config_smtp_sender', '华龙USA', 0),
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
(25173, 'config', 'config_smtp_port', '465', 0),
(25082, 'postpony', 'postpony_fee_type', '0', 0),
(25083, 'postpony', 'postpony_fee_value', '0', 0),
(25084, 'postpony', 'postpony_client_fee', 'a:3:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"3\";}i:2;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"4\";}}', 1),
(25081, 'postpony', 'postpony_service', 'a:4:{i:0;a:4:{s:4:\"name\";s:21:\"Postpony Fedex Ground\";s:4:\"code\";s:3:\"pfg\";s:6:\"method\";s:11:\"FedExGround\";s:7:\"package\";s:12:\"YOUR_PACKAGE\";}i:1;a:4:{s:4:\"name\";s:19:\"Postpony UPS Ground\";s:4:\"code\";s:3:\"pug\";s:6:\"method\";s:9:\"UpsGround\";s:7:\"package\";s:7:\"PACKAGE\";}i:2;a:4:{s:4:\"name\";s:25:\"Postpony USPS First Class\";s:4:\"code\";s:5:\"pusfc\";s:6:\"method\";s:18:\"UspsFirstClassMail\";s:7:\"package\";s:7:\"PACKAGE\";}i:3;a:4:{s:4:\"name\";s:22:\"Postpony USPS Priority\";s:4:\"code\";s:4:\"pusp\";s:6:\"method\";s:16:\"UspsPriorityMail\";s:7:\"package\";s:7:\"PACKAGE\";}}', 1),
(25079, 'postpony', 'postpony_status', '1', 0),
(25080, 'postpony', 'postpony_sort_order', '0', 0),
(25078, 'postpony', 'postpony_debug_mode', '1', 0),
(25170, 'config', 'config_smtp_hostname', 'ssl://hwimap.exmail.qq.com', 0),
(25172, 'config', 'config_smtp_password', 'Que2019@', 0),
(25171, 'config', 'config_smtp_username', 'sam@hualongus.com', 0),
(25168, 'config', 'config_default_checkout_fee', 'checkout_weight', 0),
(25169, 'config', 'config_smtp_enabled', '0', 0),
(25167, 'config', 'config_default_order_shipping_service', 'pr', 0),
(25166, 'config', 'config_default_order_shipping_provider', 'usps', 0),
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
(25165, 'config', 'config_logo', '', 0),
(25164, 'config', 'config_weight_class_id', '5', 0),
(25163, 'config', 'config_length_class_id', '1', 0),
(25162, 'config', 'config_information_front_id', '5', 0),
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
(25178, 'checkout_weight', 'checkout_weight_sort_order', '1', 0),
(25179, 'checkout_weight', 'checkout_weight_level', 'a:3:{i:0;a:2:{s:6:\"weight\";s:1:\"1\";s:6:\"amount\";s:1:\"3\";}i:1;a:2:{s:6:\"weight\";s:1:\"3\";s:6:\"amount\";s:1:\"2\";}i:2;a:2:{s:6:\"weight\";s:1:\"5\";s:6:\"amount\";s:1:\"1\";}}', 1),
(25177, 'checkout_weight', 'checkout_weight_status', '1', 0),
(25176, 'checkout_weight', 'checkout_weight_type', 'checkout', 0),
(25161, 'config', 'config_client_language_id', '5', 0),
(25160, 'config', 'config_admin_language_id', '5', 0),
(25159, 'config', 'config_printnode_general_printer_id', '542649', 0),
(25157, 'config', 'config_printnode_api_key', '6656a258fd1c776ed1f3f8098f842a34bfea906c', 0),
(25158, 'config', 'config_printnode_label_printer_id', '542649', 0),
(25155, 'config', 'config_printnode_position_y', '20', 0),
(25156, 'config', 'config_printnode_width', '180', 0),
(25153, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(25154, 'config', 'config_printnode_position_x', '14', 0),
(25073, 'postpony', 'postpony_owner', 'Jerry Cong', 0),
(25070, 'postpony', 'postpony_state', 'CA', 0),
(25071, 'postpony', 'postpony_postcode', '91748', 0),
(25072, 'postpony', 'postpony_country', 'United States', 0),
(25152, 'config', 'config_location_barcode_batch_margin', '200', 0),
(25151, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(25150, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(25149, 'config', 'config_location_barcode_batch_posy', '20', 0),
(25147, 'config', 'config_location_barcode_batch_height', '300', 0),
(25148, 'config', 'config_location_barcode_batch_posx', '10', 0),
(24699, 'usps', 'usps_fee_type', '0', 0),
(24700, 'usps', 'usps_fee_value', '3', 0),
(24683, 'usps', 'usps_company', 'HUALONGUSA INC', 0),
(24681, 'usps', 'usps_first_name', 'Jerry', 0),
(24682, 'usps', 'usps_last_name', 'Cong', 0),
(24680, 'usps', 'usps_owner', 'FSUS', 0),
(24678, 'usps', 'usps_user_id', '609FREES0002', 0),
(24679, 'usps', 'usps_time_zone', 'America/Los_Angeles', 0),
(25146, 'config', 'config_location_barcode_batch_width', '630', 0),
(24701, 'usps', 'usps_client_fee', 'a:1:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(25145, 'config', 'config_location_barcode_code_size', '80', 0),
(24793, 'ltl', 'ltl_sort_order', '0', 0),
(24792, 'ltl', 'ltl_status', '1', 0),
(24794, 'ltl', 'ltl_service', 'a:1:{i:0;a:4:{s:4:\"name\";s:10:\"BOADRUNNER\";s:4:\"code\";s:10:\"boadrunner\";s:6:\"method\";s:0:\"\";s:7:\"package\";s:0:\"\";}}', 1),
(25144, 'config', 'config_location_barcode_name_size', '200', 0),
(25143, 'config', 'config_location_barcode_posy', '200', 0),
(25142, 'config', 'config_location_barcode_posx', '1', 0),
(25141, 'config', 'config_location_barcode_height', '400', 0),
(25139, 'config', 'config_label_posy', '0', 0),
(25140, 'config', 'config_location_barcode_width', '6', 0),
(25138, 'config', 'config_label_width', '60', 0),
(25136, 'config', 'config_autocomplete_limit', '5', 0),
(25137, 'config', 'config_label_width_type', '0', 0),
(25135, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(25134, 'config', 'config_dashboard_order_limit', '7', 0),
(25133, 'config', 'config_dashboard_activity_limit', '8', 0),
(25130, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(25131, 'config', 'config_page_limit', '10', 0),
(25132, 'config', 'config_sale_product_page_limit', '15', 0),
(25175, 'config', 'config_smtp_timeout', '', 0),
(25069, 'postpony', 'postpony_city', 'Rowland Heights', 0),
(25068, 'postpony', 'postpony_street2', '', 0),
(25067, 'postpony', 'postpony_street', '19097 Colima Road', 0),
(25066, 'postpony', 'postpony_company', 'hualongusa inc', 0),
(25063, 'postpony', 'postpony_key', '6b9f4c78', 0),
(25064, 'postpony', 'postpony_pwd', 'pypypypypy', 0),
(25065, 'postpony', 'postpony_authorized_key', 'TESTTOKEN-ske39De3mkC39d', 0),
(25180, 'checkout_weight', 'checkout_weight_level_end', '0.5', 0);

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
(4, 2, 'Veen Offline', 'offline', 's:0:\"\";', 1, 'postpony', 'pfg', 0, 0, 1, 0, NULL),
(5, 4, 'Todd Offline', 'offline', 's:0:\"\";', 1, 'usps', 'pr', 0, 0, 1, 0, NULL);

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
(8, 4, 0, 1, 0),
(9, 5, 0, 0, 0),
(10, 5, 0, 1, 0);

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
(96, 2, 'checkout', 181, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 181', '2019-07-16 18:46:10', '2019-07-16 18:46:10');

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
(1, 'Administrator', 'The administrator user group', '{\"access\":[\"check\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\",\"log\"],\"modify\":[\"check\",\"catalog\",\"inventory\",\"warehouse\",\"sale\",\"store\",\"extension\",\"finance\",\"fee\",\"platform\",\"shipping\",\"payment\",\"report\",\"client\",\"user\",\"setting\",\"log\"]}'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10584;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2528;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25181;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `store_sync_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
