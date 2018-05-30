-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 08:05 PM
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
(51160, 1, '::1', 'setting/activity_log', 'view the activity log page', 'GET', '2018-05-22 18:28:58'),
(51161, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-22 18:31:18'),
(51162, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:35:19'),
(51163, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:35:44'),
(51164, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:39:59'),
(51165, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:40:03'),
(51166, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:40:13'),
(51167, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:40:24'),
(51168, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:41:19'),
(51169, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:41:24'),
(51170, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:41:27'),
(51171, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:42:09'),
(51172, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:42:14'),
(51173, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:42:19'),
(51174, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:43:13'),
(51175, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:43:15'),
(51176, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:43:19'),
(51177, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:43:24'),
(51178, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:43:27'),
(51179, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:44:22'),
(51180, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:44:26'),
(51181, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:44:32'),
(51182, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:44:34'),
(51183, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:45:10'),
(51184, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:45:14'),
(51185, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:45:19'),
(51186, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:45:22'),
(51187, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:47:54'),
(51188, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:47:59'),
(51189, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:48:04'),
(51190, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:48:12'),
(51191, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:48:15'),
(51192, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:48:21'),
(51193, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:48:30'),
(51194, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:49:19'),
(51195, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:50:06'),
(51196, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:50:10'),
(51197, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:50:16'),
(51198, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:50:45'),
(51199, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:50:50'),
(51200, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:50:56'),
(51201, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:51:10'),
(51202, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:51:14'),
(51203, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:51:20'),
(51204, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:52:58'),
(51205, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:53:02'),
(51206, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:53:08'),
(51207, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:53:11'),
(51208, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:54:46'),
(51209, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:55:04'),
(51210, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:55:22'),
(51211, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:55:33'),
(51212, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-05-22 18:55:39'),
(51213, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-22 18:55:41'),
(51214, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-22 18:57:19'),
(51215, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:57:24'),
(51216, 1, '::1', 'common/filemanager/upload', '0', 'POST', '2018-05-22 18:57:29'),
(51217, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-22 18:57:32'),
(51218, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-23 18:36:39'),
(51219, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-23 18:36:44'),
(51220, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-23 18:36:45'),
(51221, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:37:00'),
(51222, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:37:12'),
(51223, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 18:37:17'),
(51224, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:37:24'),
(51225, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:39:52'),
(51226, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2018-05-23 18:39:56'),
(51227, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:40:00'),
(51228, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-05-23 18:40:42'),
(51229, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:40:51'),
(51230, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-23 18:41:44'),
(51231, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-05-23 18:41:44'),
(51232, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-05-23 18:41:47'),
(51233, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-05-23 18:43:58'),
(51234, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-05-23 18:45:34'),
(51235, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-05-23 18:45:38'),
(51236, 1, '::1', 'user/user/edit', 'view the user edit page', 'POST', '2018-05-23 18:45:42'),
(51237, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-05-23 18:45:48'),
(51238, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-05-23 18:46:32'),
(51239, 1, '::1', 'user/user/delete', '0', 'GET', '2018-05-23 18:46:43'),
(51240, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:47:29'),
(51241, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:52:07'),
(51242, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:53:01'),
(51243, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:55:33'),
(51244, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:56:22'),
(51245, 1, '::1', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2018-05-23 18:56:33'),
(51246, 1, '::1', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2018-05-23 18:56:35'),
(51247, 1, '::1', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2018-05-23 18:56:41'),
(51248, 1, '::1', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2018-05-23 18:56:42'),
(51249, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:57:04'),
(51250, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:58:01'),
(51251, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:58:17'),
(51252, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:59:05'),
(51253, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:59:10'),
(51254, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:59:14'),
(51255, 1, '::1', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2018-05-23 18:59:25'),
(51256, 1, '::1', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2018-05-23 18:59:26'),
(51257, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:59:41'),
(51258, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 18:59:47'),
(51259, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:11'),
(51260, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:16'),
(51261, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-05-23 19:00:24'),
(51262, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:30'),
(51263, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:45'),
(51264, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:50'),
(51265, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:00:54'),
(51266, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:00:58'),
(51267, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:04'),
(51268, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:01:11'),
(51269, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-05-23 19:01:17'),
(51270, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:19'),
(51271, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:01:19'),
(51272, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:25'),
(51273, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:38'),
(51274, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:01:43'),
(51275, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-05-23 19:01:50'),
(51276, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:53'),
(51277, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:01:58'),
(51278, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:02:05'),
(51279, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-05-23 19:02:17'),
(51280, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:02:19'),
(51281, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:02:22'),
(51282, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:02:27'),
(51283, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:02:58'),
(51284, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:04:29'),
(51285, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:05:03'),
(51286, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:05:42'),
(51287, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:06:17'),
(51288, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:06:23'),
(51289, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:06:26'),
(51290, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:06:35'),
(51291, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:06:41'),
(51292, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:07:06'),
(51293, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:07:42'),
(51294, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-05-23 19:07:46'),
(51295, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:07:51'),
(51296, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:08:04'),
(51297, 1, '::1', 'inventory/inventory_ajax/update_quantity', 'update inventory quantity', 'POST', '2018-05-23 19:08:08'),
(51298, 1, '::1', 'inventory/inventory_ajax/update_quantity', 'update inventory quantity', 'POST', '2018-05-23 19:08:10'),
(51299, 1, '::1', 'inventory/inventory_batch/bulk_delete', '0', 'POST', '2018-05-23 19:10:30'),
(51300, 1, '::1', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2018-05-23 19:10:31'),
(51301, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:13:53'),
(51302, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-05-23 19:13:57'),
(51303, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-23 19:14:02'),
(51304, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:14:05'),
(51305, 1, '::1', 'inventory/inventory_batch/delete', 'try to delete the inventory page', 'GET', '2018-05-23 19:14:09'),
(51306, 1, '::1', 'inventory/inventory_batch/reload', 'reload the inventory batch page', 'GET', '2018-05-23 19:14:10'),
(51307, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-23 19:14:37'),
(51308, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:14:43'),
(51309, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:14:45'),
(51310, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:14:56'),
(51311, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:15:37'),
(51312, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:15:41'),
(51313, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:15:46'),
(51314, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:17:21'),
(51315, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:18:23'),
(51316, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:19:15'),
(51317, 1, '::1', 'catalog/product/delete', '0', 'GET', '2018-05-23 19:19:21'),
(51318, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:19:26'),
(51319, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:19:29'),
(51320, 1, '::1', 'catalog/product/delete', '0', 'GET', '2018-05-23 19:19:36'),
(51321, 1, '::1', 'catalog/product/reload', '0', 'GET', '2018-05-23 19:19:37'),
(51322, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:19:59'),
(51323, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:20:32'),
(51324, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-23 19:20:35'),
(51325, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'POST', '2018-05-23 19:20:41'),
(51326, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:20:43'),
(51327, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-23 19:22:02'),
(51328, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-05-23 19:22:08'),
(51329, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:22:12'),
(51330, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:22:12'),
(51331, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:22:16'),
(51332, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:22:18'),
(51333, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:22:40'),
(51334, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-05-23 19:22:43'),
(51335, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-05-23 19:22:43'),
(51336, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-05-23 19:22:45'),
(51337, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-05-23 19:22:45'),
(51338, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2018-05-23 19:22:47'),
(51339, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-23 19:22:48'),
(51340, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-05-23 19:22:56'),
(51341, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-05-23 19:23:00'),
(51342, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-05-23 19:23:02'),
(51343, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-05-23 19:23:02'),
(51344, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-05-23 19:23:08'),
(51345, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-23 19:23:10'),
(51346, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-23 19:23:33'),
(51347, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-23 19:23:36'),
(51348, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-23 19:23:39'),
(51349, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-23 19:23:42'),
(51350, 1, '::1', 'common/filemanager', '0', 'GET', '2018-05-23 19:23:45'),
(51351, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-24 19:27:29'),
(51352, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-24 19:27:36'),
(51353, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-24 19:27:40'),
(51354, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 19:27:42'),
(51355, 1, '::1', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-05-24 19:27:59'),
(51356, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-24 19:28:12'),
(51357, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-24 19:28:14'),
(51358, 1, '::1', 'setting/activity_log', 'view the activity log page', 'GET', '2018-05-24 19:28:18'),
(51359, 1, '::1', 'setting/information', '0', 'GET', '2018-05-24 19:28:45'),
(51360, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-24 19:29:04'),
(51361, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-24 19:29:06'),
(51362, 1, '::1', 'setting/language', 'view the language page', 'GET', '2018-05-24 19:29:09'),
(51363, 1, '::1', 'refund/refund', 'view the refund page', 'GET', '2018-05-24 19:29:26'),
(51364, 1, '::1', 'inventory/damage', 'view the damage page', 'GET', '2018-05-24 19:29:31'),
(51365, 1, '::1', 'inventory/damage/add', 'view the damage add page', 'GET', '2018-05-24 19:29:35'),
(51366, 1, '::1', 'refund/refund', 'view the refund page', 'GET', '2018-05-24 19:30:04'),
(51367, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 19:31:27'),
(51368, 1, '::1', 'inventory/damage', 'view the damage page', 'GET', '2018-05-24 19:32:12'),
(51369, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 19:45:08'),
(51370, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-24 19:45:13'),
(51371, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 19:45:29'),
(51372, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 19:52:59'),
(51373, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-24 19:53:27'),
(51374, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-24 19:53:31'),
(51375, 1, '::1', 'common/filemanager', 'view the filemanager', 'GET', '2018-05-24 19:53:35'),
(51376, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-24 19:53:49'),
(51377, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-24 19:56:47'),
(51378, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-24 20:21:04'),
(51379, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-24 20:21:11'),
(51380, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 20:21:13'),
(51381, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-24 20:21:19'),
(51382, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 20:21:26'),
(51383, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-24 21:20:56'),
(51384, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 21:20:58'),
(51385, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-24 21:21:02'),
(51386, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-24 21:21:06'),
(51387, 1, '::1', 'common/filemanager', 'view the filemanager', 'GET', '2018-05-24 21:21:09'),
(51388, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-24 21:21:26'),
(51389, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-24 21:21:31'),
(51390, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-24 21:32:03'),
(51391, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-29 22:08:53'),
(51392, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-29 22:09:00'),
(51393, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 22:09:00'),
(51394, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 22:17:29'),
(51395, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 22:22:27'),
(51396, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-05-29 22:22:43'),
(51397, 1, '::1', 'warehouse/location_import', 'try to import locations', 'GET', '2018-05-29 22:22:48'),
(51398, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-29 22:22:51'),
(51399, 1, '::1', 'inventory/inventory_alert', 'view the alert inventory page', 'GET', '2018-05-29 22:22:56'),
(51400, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-29 22:22:58'),
(51401, 1, '::1', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-05-29 22:22:59'),
(51402, 1, '::1', 'inventory/transfer', 'view the transfer page', 'GET', '2018-05-29 22:23:01'),
(51403, 1, '::1', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-05-29 22:23:04'),
(51404, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:23:07'),
(51405, 1, '::1', 'inventory/transfer', 'view the transfer page', 'GET', '2018-05-29 22:23:21'),
(51406, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:23:23'),
(51407, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:25:17'),
(51408, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:38:46'),
(51409, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-05-29 22:38:52'),
(51410, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:38:54'),
(51411, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-29 22:38:56'),
(51412, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:38:57'),
(51413, 1, '::1', 'inventory/transfer', 'view the transfer page', 'GET', '2018-05-29 22:39:56'),
(51414, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:39:57'),
(51415, 1, '::1', 'inventory/transfer', 'view the transfer page', 'GET', '2018-05-29 22:50:54'),
(51416, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-29 22:51:12'),
(51417, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-29 22:51:15'),
(51418, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2018-05-29 22:51:32'),
(51419, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:51:33'),
(51420, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-29 22:51:36'),
(51421, 1, '::1', 'common/filemanager', 'view the filemanager', 'GET', '2018-05-29 22:52:12'),
(51422, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:52:15'),
(51423, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:52:25'),
(51424, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2018-05-29 22:52:27'),
(51425, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-05-29 22:52:30'),
(51426, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 22:53:20'),
(51427, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2018-05-29 22:53:29'),
(51428, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-29 22:54:56'),
(51429, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-29 22:55:12'),
(51430, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:55:13'),
(51431, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-29 22:55:16'),
(51432, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:55:18'),
(51433, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-29 22:55:20'),
(51434, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-29 22:55:26'),
(51435, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 22:55:43'),
(51436, 1, '::1', 'setting/information/add', 'view the information add page', 'GET', '2018-05-29 22:55:45'),
(51437, 1, '::1', 'setting/information/add', 'view the information add page', 'POST', '2018-05-29 22:56:05'),
(51438, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 22:56:05'),
(51439, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 22:56:18'),
(51440, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 22:56:22'),
(51441, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 22:56:22'),
(51442, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-29 22:57:25'),
(51443, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 22:57:25'),
(51444, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-29 22:57:29'),
(51445, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-29 22:57:29'),
(51446, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 22:57:34'),
(51447, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 22:57:37'),
(51448, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 22:57:40'),
(51449, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 22:57:41'),
(51450, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 22:57:48'),
(51451, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-29 23:01:28'),
(51452, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-29 23:01:28'),
(51453, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2018-05-29 23:02:07'),
(51454, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-29 23:02:07'),
(51455, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-29 23:02:07'),
(51456, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:02:38'),
(51457, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:02:40'),
(51458, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:02:45'),
(51459, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:02:46'),
(51460, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:03:04'),
(51461, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:12:35'),
(51462, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:12:35'),
(51463, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:12:45'),
(51464, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:13:02'),
(51465, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:13:04'),
(51466, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:13:33'),
(51467, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:13:33'),
(51468, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:15:46'),
(51469, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:16:15'),
(51470, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:16:15'),
(51471, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:17:38'),
(51472, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:18:14'),
(51473, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:18:14'),
(51474, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:19:01'),
(51475, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:19:38'),
(51476, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:19:38'),
(51477, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:20:15'),
(51478, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:20:32'),
(51479, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:20:32'),
(51480, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:20:44'),
(51481, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:21:22'),
(51482, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:21:22'),
(51483, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-29 23:21:48'),
(51484, 1, '::1', 'setting/information/edit', 'view the information edit page', 'POST', '2018-05-29 23:22:08'),
(51485, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-29 23:22:08'),
(51486, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-29 23:22:11'),
(51487, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 23:22:11'),
(51488, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-29 23:22:17'),
(51489, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 23:22:17'),
(51490, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-05-29 23:22:18'),
(51491, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-29 23:22:18'),
(51492, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-29 23:22:23'),
(51493, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-29 23:22:28'),
(51494, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-29 23:22:28'),
(51495, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-30 18:42:31'),
(51496, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 18:42:35'),
(51497, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 18:42:35'),
(51498, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 18:42:47'),
(51499, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-30 18:43:01'),
(51500, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 18:43:03'),
(51501, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:43:33'),
(51502, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-30 18:43:36'),
(51503, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:43:38'),
(51504, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-05-30 18:43:45'),
(51505, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:43:47'),
(51506, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-05-30 18:43:49'),
(51507, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 18:43:50'),
(51508, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 18:43:55'),
(51509, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-30 18:45:58'),
(51510, 1, '::1', 'setting/information/edit', 'view the information edit page', 'GET', '2018-05-30 18:46:00'),
(51511, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-30 18:46:04'),
(51512, 1, '::1', 'setting/information', 'view the information page', 'GET', '2018-05-30 18:48:36'),
(51513, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-30 18:49:27'),
(51514, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 18:49:27'),
(51515, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 18:49:47'),
(51516, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 18:49:56'),
(51517, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-05-30 18:50:01'),
(51518, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:06'),
(51519, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:06'),
(51520, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:08'),
(51521, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:09'),
(51522, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:11'),
(51523, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:11'),
(51524, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:13'),
(51525, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:13'),
(51526, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:15'),
(51527, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:15'),
(51528, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:18'),
(51529, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:18'),
(51530, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:19'),
(51531, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:20'),
(51532, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:21'),
(51533, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:21'),
(51534, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:23'),
(51535, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:23'),
(51536, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:24'),
(51537, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:24'),
(51538, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:26'),
(51539, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:26'),
(51540, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-05-30 18:50:28'),
(51541, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-05-30 18:50:28'),
(51542, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-30 18:50:31'),
(51543, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-30 18:50:31'),
(51544, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2018-05-30 18:50:46'),
(51545, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-30 18:50:46'),
(51546, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-30 18:50:46'),
(51547, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 18:50:56'),
(51548, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2018-05-30 18:50:59'),
(51549, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2018-05-30 18:51:04'),
(51550, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 18:51:04'),
(51551, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-05-30 18:51:12'),
(51552, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-05-30 18:51:21'),
(51553, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-05-30 18:51:21'),
(51554, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:51:31'),
(51555, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:51:35'),
(51556, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:51:37'),
(51557, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:51:39'),
(51558, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:51:44'),
(51559, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-05-30 18:51:46'),
(51560, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-05-30 18:51:48'),
(51561, 1, '::1', 'catalog/product_ajax/autocomplete', '0', 'GET', '2018-05-30 18:51:52'),
(51562, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:51:56'),
(51563, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:52:02'),
(51564, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:52:05'),
(51565, 1, '::1', 'check/checkout_sale/add_checkout_ajax', 'try to add checkout for order', 'GET', '2018-05-30 18:52:10'),
(51566, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2018-05-30 18:52:10'),
(51567, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 18:52:26'),
(51568, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 18:52:28'),
(51569, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-05-30 18:52:31'),
(51570, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-05-30 18:54:04'),
(51571, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-05-30 18:55:47'),
(51572, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:03:58'),
(51573, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:04:03'),
(51574, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:04:03'),
(51575, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:04:08'),
(51576, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:04:08'),
(51577, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:05:27'),
(51578, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:05:27'),
(51579, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:07:21'),
(51580, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:07:26'),
(51581, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:07:26'),
(51582, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:08:23'),
(51583, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:08:28'),
(51584, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:08:28'),
(51585, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:10:13'),
(51586, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:10:17'),
(51587, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:10:18'),
(51588, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:10:38'),
(51589, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:10:45'),
(51590, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:10:45'),
(51591, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:11:08'),
(51592, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:12:08'),
(51593, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:12:08'),
(51594, NULL, '::1', '', 'view the dashboard', 'GET', '2018-05-30 19:12:30'),
(51595, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:12:38'),
(51596, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:12:38'),
(51597, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:14:20'),
(51598, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:14:25'),
(51599, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:14:25'),
(51600, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:14:30'),
(51601, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:14:34'),
(51602, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:14:34'),
(51603, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:15:19'),
(51604, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:15:23'),
(51605, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:15:23'),
(51606, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:15:48'),
(51607, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:16:40'),
(51608, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:16:46'),
(51609, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:16:46'),
(51610, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:17:46'),
(51611, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:17:50'),
(51612, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:17:51'),
(51613, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:21:10'),
(51614, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:21:15'),
(51615, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:21:15'),
(51616, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:23:20'),
(51617, NULL, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:23:20'),
(51618, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:25:35'),
(51619, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:25:39'),
(51620, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:25:40'),
(51621, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:29:08'),
(51622, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:29:12'),
(51623, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:29:13'),
(51624, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:32:33'),
(51625, NULL, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:32:33'),
(51626, NULL, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:32:35'),
(51627, NULL, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:33:37'),
(51628, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:34:27'),
(51629, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:34:31'),
(51630, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:34:31'),
(51631, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:35:38'),
(51632, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:35:42'),
(51633, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:35:42'),
(51634, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:36:15'),
(51635, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:36:20'),
(51636, 0, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:36:22'),
(51637, 1, '::1', 'common/login', 'view the login page', 'POST', '2018-05-30 19:36:55'),
(51638, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:36:55'),
(51639, 1, '::1', 'common/login', 'view the login page', 'GET', '2018-05-30 19:37:02'),
(51640, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:02'),
(51641, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-30 19:37:10'),
(51642, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:10'),
(51643, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:27'),
(51644, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:29'),
(51645, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:30'),
(51646, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:30'),
(51647, 1, '::1', '', 'view the dashboard', 'GET', '2018-05-30 19:37:37'),
(51648, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:37:37'),
(51649, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 19:38:09'),
(51650, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:38:12'),
(51651, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:44:47'),
(51652, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:46:32'),
(51653, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:46:49'),
(51654, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-05-30 19:47:34'),
(51655, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-05-30 19:48:26'),
(51656, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-05-30 19:48:28'),
(51657, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-05-30 19:48:30'),
(51658, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-05-30 19:49:34'),
(51659, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-05-30 19:49:35'),
(51660, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-05-30 19:52:04'),
(51661, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 19:52:22'),
(51662, 1, '::1', 'inventory/inventory_batch/edit', 'view the inventory edit page', 'GET', '2018-05-30 19:53:08'),
(51663, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-30 19:53:12'),
(51664, 1, '::1', 'inventory/inventory_batch/add', 'view the inventory add page', 'GET', '2018-05-30 19:53:17'),
(51665, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-05-30 19:54:05'),
(51666, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 19:55:10'),
(51667, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-05-30 19:57:35'),
(51668, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-30 19:57:41'),
(51669, 1, '::1', 'inventory/inventory', 'view the inventory page', 'GET', '2018-05-30 20:04:39');

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
(16, 19, '980.00'),
(17, 20, '-20.00'),
(18, 21, '-20.00'),
(19, 22, '-20.00'),
(20, 23, '4240.00');

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
(2, 0, '54552552052011', '', 2, '2018-03-09 19:19:30', '2018-03-09 19:19:30'),
(4, 0, '54552552052000', '', 2, '2018-03-27 22:02:14', '2018-03-27 22:02:14'),
(5, 0, '54552552052099', '', 2, '2018-03-27 22:19:56', '2018-03-27 22:19:56'),
(6, 0, '552211226302200', '', 2, '2018-03-31 00:10:36', '2018-03-31 00:10:36'),
(7, 0, '', '', 2, '2018-03-31 00:14:52', '2018-03-31 00:14:52'),
(9, 0, '', '', 2, '2018-04-04 02:08:32', '2018-04-04 02:08:32'),
(10, 0, '', '', 1, '2018-05-07 19:13:29', '2018-05-07 19:13:29');

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

--
-- Dumping data for table `checkin_product`
--

INSERT INTO `checkin_product` (`id`, `checkin_id`, `product_id`, `batch`, `quantity`, `location_id`) VALUES
(31, 4, 93322, '', 1, 2406),
(32, 2, 93885, '', 20, 2526),
(34, 5, 93336, '', 1, 2415),
(36, 6, 93324, 'GP2002201', 1, 2406),
(38, 7, 93322, 'POC25600200', 1, 2401),
(41, 9, 93542, '', 1, 2406),
(43, 10, 93326, '', 1, 2406);

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

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `ip_address`, `password`, `salt`, `email`, `status`, `firstname`, `lastname`, `company`, `address`, `city`, `state`, `country`, `postal_code`, `phone`) VALUES
(19, '', '88b9ce5ba7f69e7f995fc337fffa67e1a7683d4f', '266', 'wwtradingcorpus@outlook.com', 1, 'W', 'w', 'Haowei', '', '', '', '', '', ''),
(20, '', '89ca578e373e349b74d0a30776d43ce7f867b73c', '780', 'easyshop_sport5@hotmail.com', 1, 'zoyo', 'zoyo', 'zoyo company', '', '', '', '', '', '6265510230'),
(21, '', 'cd86ecd5fca5b4a39a75a8d6f590be2aac8a0be6', '727', 'zero@compassparts.cn', 1, 'compassparts', 'compassparts', 'compassparts', '', '', '', '', '', ''),
(22, '', 'f4f5769f679caae2d308cb5ffb53ea10e434adf8', '98', 'zejieliu@eozy.net', 1, 'zejie', 'L', 'Jm', '', '', '', '', '', ''),
(23, '', '813253cc3067c579f3559658d66fc8139c1641b1', '255', 'info@intadat.com', 1, 'Tio', 'Tang', 'Intadat Inc', '', '', '', '', '', '(626)-520-5360');

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
(1031, NULL, 'Sam Shao', 'sam@jiusite.com', '', '12012 Lambert Ave', '', 'El Monte', 'CA', 'US', '91732', '626-202-8975');

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
(5, 4, '首页', '<style>\r\n.home-links {\r\n    width: 400px;\r\n    margin: 0 auto;\r\n    margin-top: 240px;\r\n}\r\n.btn-admin {\r\n    width: 130px;\r\n    float: left;\r\n}\r\n.btn-client {\r\n    width: 130px;\r\n    float: right;\r\n}\r\n</style>\r\n<div class=\"home-links\">\r\n<a href=\"http://localhost/c3/admin\" class=\"btn btn-primary btn-admin\">管理者</a>\r\n<a href=\"http://localhost/c3/client\" class=\"btn btn-primary btn-client\">用户</a>\r\n</div>'),
(5, 5, 'Home', '<style>\r\n.home-links {\r\n    width: 400px;\r\n    margin: 0 auto;\r\n    margin-top: 240px;\r\n}\r\n.btn-admin {\r\n    width: 130px;\r\n    float: left;\r\n}\r\n.btn-client {\r\n    width: 130px;\r\n    float: right;\r\n}\r\n</style>\r\n<div class=\"home-links\">\r\n<a href=\"http://localhost/c3/admin\" class=\"btn btn-primary btn-admin\">Admin</a>\r\n<a href=\"http://localhost/c3/client\" class=\"btn btn-primary btn-client\">Client</a>\r\n</div>');

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

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `location_id`, `batch`, `quantity`, `date_added`, `date_modified`) VALUES
(5450, 93542, 2232, 'GP500', 120, '2018-04-04 01:31:45', '2018-05-30 18:50:18'),
(5454, 93542, 2360, '', 72, '2018-04-04 01:34:54', '2018-04-04 02:08:08'),
(5455, 93542, 2406, '', 11, '2018-04-04 02:08:32', '2018-04-04 02:26:30'),
(5456, 93542, 2396, 'IPP2003', 0, '2018-04-04 02:12:02', '2018-04-04 02:14:53'),
(5457, 93542, 2406, 'MOP52600', 100, '2018-04-04 02:12:27', '2018-04-13 22:26:22'),
(5458, 93322, 2401, 'POC25600200', 200, '2018-04-04 02:14:16', '2018-05-30 18:50:28'),
(5462, 93324, 2406, 'GP2002201', 1, '2018-04-13 22:00:43', '2018-04-13 22:00:43'),
(5463, 93322, 2406, '', 1, '2018-04-13 22:00:46', '2018-04-13 22:00:46');

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
(93320, '107308200112', 'GD-63', '', '107308200112', '1.00', 'catalog/sdfvcc.jpg', NULL, '12.30', 5, 1, '23.00', '13.50', '7.00', 0, 'postpony', 'pfg', 21, '2018-03-09 08:35:20', '2018-05-22 18:55:40'),
(93321, '048237070700', 'KKM_7070_3455', '', 'KKM_7070_3455', '1.00', 'catalog/summer-01.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 21, '2018-03-09 08:35:20', '2018-05-23 19:20:42'),
(93322, '639036819807', 'GD-62', '', 'ACK-81980-2', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '2.00', '3.00', '6.00', 0, 'postpony', 'pfg', 23, '2018-03-09 08:35:20', '2018-05-04 19:38:43'),
(93323, '37724', '37724', '', '37724', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93324, '768189911967', 'OKT_OK_3890_2', '', 'OKT_OK_3890_2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93325, '35298', '35298', '', '35298', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93326, '768189916160', 'OKT_OK_2542_D1', '', 'OKT_OK_2542_D1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93329, '107308200111', '107308200111', '', '107308200111', '1.00', 'no_image.jpg', NULL, '11.70', 5, 1, '23.00', '13.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93332, '107308200979', '107308200979', '', '107308200979', '1.00', 'no_image.jpg', NULL, '3.40', 5, 1, '7.75', '5.25', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93334, '768189916122', 'OK-2542-B2', '', 'OK-2542-B2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93335, '768189916337', 'OK-4237D', '', 'OK-4237D', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93336, '020193342305', '11588_CAL_BO-342-AB', '', '11588_CAL_BO-342-AB', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93337, '37723', '37723', '', '37723', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93338, '107308200307', '107308200307', '', '107308200307', '1.00', 'no_image.jpg', NULL, '2.65', 5, 1, '7.50', '5.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93339, '7681899168946', 'OK-2547-C2', '', 'OK-2547-C2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93340, '107308200006', '107308200006', '', '107308200006', '1.00', 'no_image.jpg', NULL, '4.95', 5, 1, '10.00', '6.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93341, '107308200556', '107308200556', '', '107308200556', '1.00', 'no_image.jpg', NULL, '5.22', 5, 1, '25.00', '18.50', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93342, '107308200557', '107308200557', '', '107308200557', '1.00', 'no_image.jpg', NULL, '3.47', 5, 1, '21.50', '11.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93343, '768189917495', 'OK-4248-V3', '', 'OK-4248-V3', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93344, '768189917501', 'OK-4248-V4', '', 'OK-4248-V4', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93345, '107308200845', '107308200845', '', '107308200845', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '15.25', '6.00', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93346, '107308200854', '107308200854', '', '107308200854', '1.00', 'no_image.jpg', NULL, '1.60', 5, 1, '15.00', '6.00', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93347, '768189915408', 'okk-4227', '', 'okk-4227', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93348, '768189911219', 'LG-5701-21', '', 'LG-5701-21', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:20', '2018-03-09 08:35:20'),
(93349, '107308200569', '107308200569', '', '107308200569', '1.00', 'no_image.jpg', NULL, '3.12', 5, 1, '21.50', '11.50', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93350, '107308200576', '107308200576', '', '107308200576', '1.00', 'no_image.jpg', NULL, '3.50', 5, 1, '22.50', '9.75', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93351, '107308208635', '107308208635', '', '107308208635', '1.00', 'no_image.jpg', NULL, '6.95', 5, 1, '15.50', '15.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93352, '107308204429', '107308204429', '', '107308204429', '1.00', 'no_image.jpg', NULL, '4.22', 5, 1, '7.25', '7.25', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93353, '107308208413', '107308208413', '', '107308208413', '1.00', 'no_image.jpg', NULL, '4.07', 5, 1, '6.50', '6.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93354, '107308200262', '107308200262', '', '107308200262', '1.00', 'no_image.jpg', NULL, '2.20', 5, 1, '7.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93355, '107308202105', '107308202105', '', '107308202105', '1.00', 'no_image.jpg', NULL, '4.97', 5, 1, '7.25', '4.25', '4.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93356, '107308200577', '107308200577', '', '107308200577', '1.00', 'no_image.jpg', NULL, '3.45', 5, 1, '23.00', '9.75', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93357, '107308200562', '107308200562', '', '107308200562', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '25.00', '10.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93358, '107308203200', '107308203200', '', '107308203200', '1.00', 'no_image.jpg', NULL, '1.72', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93359, '107308206673', '107308206673', '', '107308206673', '1.00', 'no_image.jpg', NULL, '6.92', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93360, '768189015801', 'ok-5106SD', '', 'ok-5106SD', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93361, '768189916450', 'ok-4239', '', 'ok-4239', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93362, '730384261147', 'CER_26114_3945', '', 'CER_26114_3945', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93363, '107308200044', '107308200044', '', '107308200044', '1.00', 'no_image.jpg', NULL, '2.90', 5, 1, '10.00', '9.00', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93364, '107308200412', '107308200412', '', '107308200412', '1.00', 'no_image.jpg', NULL, '5.72', 5, 1, '7.50', '9.50', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93365, '107308200007', '107308200007', '', '107308200007', '1.00', 'no_image.jpg', NULL, '4.80', 5, 1, '11.00', '7.00', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93366, '107308208400', '107308208400', '', '107308208400', '1.00', 'no_image.jpg', NULL, '5.45', 5, 1, '8.90', '7.50', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93367, '107308208419', '107308208419', '', '107308208419', '1.00', 'no_image.jpg', NULL, '4.70', 5, 1, '9.00', '7.50', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93368, '107308208405', '107308208405', '', '107308208405', '1.00', 'no_image.jpg', NULL, '5.70', 5, 1, '8.90', '7.50', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93369, '107308200975', '107308200975', '', '107308200975', '1.00', 'no_image.jpg', NULL, '1.02', 5, 1, '5.25', '5.25', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93370, '107308203197', '107308203197', '', '107308203197', '1.00', 'no_image.jpg', NULL, '1.37', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93371, '107308200474', '107308200474', '', '107308200474', '1.00', 'no_image.jpg', NULL, '1.85', 5, 1, '10.00', '7.00', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93372, '639036884676', 'ACK_88467', '', 'ACK_88467', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93373, '085081150394', 'GIB_91858.01_11043', '', 'GIB_91858.01_11043', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93374, '107308200078', '107308200078', '', '107308200078', '1.00', 'no_image.jpg', NULL, '4.20', 5, 1, '13.00', '11.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93375, '107308204476', '107308204476', '', '107308204476', '1.00', 'no_image.jpg', NULL, '1.82', 5, 1, '10.50', '10.25', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93376, '107308200103', '107308200103', '', '107308200103', '1.00', 'no_image.jpg', NULL, '5.85', 5, 1, '14.50', '12.00', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93377, '107308200426', '107308200426', '', '107308200426', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '10.00', '9.50', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93378, '107308200049', '107308200049', '', '107308200049', '1.00', 'no_image.jpg', NULL, '3.30', 5, 1, '10.00', '9.00', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93379, '7681899168632', 'OKTOK-2547JX-1', '', 'OKTOK-2547JX-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93380, '107308200346', '107308200346', '', '107308200346', '1.00', 'no_image.jpg', NULL, '2.40', 5, 1, '9.50', '5.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93381, '107308200483', '107308200483', '', '107308200483', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '9.25', '5.00', '4.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93382, '107308200849', '107308200849', '', '107308200849', '1.00', 'no_image.jpg', NULL, '1.80', 5, 1, '9.25', '4.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93383, '107308200153', '107308200153', '', '107308200153', '1.00', 'no_image.jpg', NULL, '9.25', 5, 1, '23.00', '13.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93384, '730384414109', 'CER_41410_4007', '', 'CER_41410_4007', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93385, '107308200109', '107308200109', '', '107308200109', '1.00', 'no_image.jpg', NULL, '8.75', 5, 1, '18.00', '10.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93386, '7681899168878', 'OK-2547-C1', '', 'OK-2547-C1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93387, '639036819777', 'ACK-81977-2', '', 'ACK-81977-2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93388, '7681899168564', 'OK-2547B', '', 'OK-2547B', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93389, '085081046093', '085081046093', '', '085081046093', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93390, '820988146985', 'KDB_105870_4575', '', 'KDB_105870_4575', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93391, '048237070724', 'KKM_7072_3457', '', 'KKM_7072_3457', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:21', '2018-03-09 08:35:21'),
(93394, '054382139193', 'NJC-MU919N-1', '', 'NJC-MU919N-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93396, '730384414161', 'CER_41416', '', 'CER_41416', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93397, '7681899169172', 'OK-2548-D2', '', 'OK-2548-D2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93398, '7681899169004', 'OK-2548-D1', '', 'OK-2548-D1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93400, '048237071790', 'KKM_7179_3471', '', 'KKM_7179_3471', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93401, '730384261598', 'CER_26159_3962', '', 'CER_26159_3962', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93403, '048237072742', 'KKM_7274_3472', '', 'KKM_7274_3472', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93404, '085081926586', 'GIB_69478.07', '', 'GIB_69478.07', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93405, '639036819326', 'ACK-81932-1', '', 'ACK-81932-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93406, '730384415724', 'CER_41572_4023', '', 'CER_41572_4023', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93407, '608463338625', 'ARC-33862-1', '', 'ARC-33862-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93408, '608463596766', '11451_ART_59676', '', '11451_ART_59676', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93409, '048237033811', 'KKM-3381-1', '', 'KKM-3381-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93410, '107308200150', '107308200150', '', '107308200150', '1.00', 'no_image.jpg', NULL, '3.95', 5, 1, '15.00', '6.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93411, '107308200149', '107308200149', '', '107308200149', '1.00', 'no_image.jpg', NULL, '3.85', 5, 1, '15.00', '6.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93412, '107308204093', '107308204093', '', '107308204093', '1.00', 'no_image.jpg', NULL, '2.97', 5, 1, '15.00', '11.25', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93413, '107308200104', '107308200104', '', '107308200104', '1.00', 'no_image.jpg', NULL, '5.65', 5, 1, '14.50', '12.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93414, '107308200166', '107308200166', '', '107308200166', '1.00', 'no_image.jpg', NULL, '3.70', 5, 1, '13.00', '11.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93415, '107308200041', '107308200041', '', '107308200041', '1.00', 'no_image.jpg', NULL, '3.20', 5, 1, '18.00', '10.00', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93416, '107308200083', '107308200083', '', '107308200083', '1.00', 'no_image.jpg', NULL, '5.95', 5, 1, '16.00', '6.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93417, '020193128800', 'CAL_BO-2323FL-DB_11150', '', 'CAL_BO-2323FL-DB_11150', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93418, '805845372066', 'ABH_37206', '', 'ABH_37206', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93419, '107308208384', '107308208384', '', '107308208384', '1.00', 'no_image.jpg', NULL, '17.65', 5, 1, '31.00', '24.00', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93420, '41566', '41566', '', '41566', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93421, '730384261826', 'CER_26182_3978', '', 'CER_26182_3978', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93422, '730384261628', 'CER_26162_3965', '', 'CER_26162_3965', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93423, '107308208377', '107308208377', '', '107308208377', '1.00', 'no_image.jpg', NULL, '9.10', 5, 1, '21.50', '19.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93424, '730384261765', 'CER_26176_3972', '', 'CER_26176_3972', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93425, '085081150479', '11633_GIB_91866.05', '', '11633_GIB_91866.05', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93426, '085081159458', '59764_GIB_92764.16', '', '59764_GIB_92764.16', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93427, '805845698111', '33427_ABH_AV69811', '', '33427_ABH_AV69811', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93428, '768189911165', 'OKT_LG_5803_31', '', 'OKT_LG_5803_31', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93429, '048237053222', 'KKM-5322-1', '', 'KKM-5322-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93430, '048237053260', 'KKM-5326-2', '', 'KKM-5326-2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93431, '048237071554', 'KKM-7155-1', '', 'KKM-7155-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93432, '048237050269', 'KKM_5026_19321', '', 'KKM_5026_19321', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93433, '048237073589', 'KKM_7358', '', 'KKM_7358', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93434, '768189915262', 'OK-4226-JX2', '', 'OK-4226-JX2', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93435, '730384261734', 'CER_26173_3969', '', 'CER_26173_3969', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93436, '107308200608', '107308200608', '', '107308200608', '1.00', 'no_image.jpg', NULL, '0.92', 5, 1, '10.00', '7.50', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:22', '2018-03-09 08:35:22'),
(93437, '107308200554', '107308200554', '', '107308200554', '1.00', 'no_image.jpg', NULL, '3.00', 5, 1, '21.25', '11.25', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93438, '107308200863', '107308200863', '', '107308200863', '1.00', 'no_image.jpg', NULL, '1.25', 5, 1, '6.00', '5.75', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93439, '107308201017', '107308201017', '', '107308201017', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '6.00', '5.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93440, '085081067289', 'GIB_83547.07_11023', '', 'GIB_83547.07_11023', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93441, '107308200829', '107308200829', '', '107308200829', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '16.75', '4.75', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93442, '107308204548', '107308202549', '', '107308202549', '1.00', 'no_image.jpg', NULL, '6.50', 5, 1, '15.00', '15.25', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93443, '107308200339', '107308200339', '', '107308200339', '1.00', 'no_image.jpg', NULL, '1.90', 5, 1, '11.50', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93444, '768189044986', 'OKT_OK-5123H_3082', '', 'OKT_OK-5123H_3082', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93445, '107308201297', '107308201297', '', '107308201297', '1.00', 'no_image.jpg', NULL, '4.47', 5, 1, '7.00', '7.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93446, '107308200871', '107308200871', '', '107308200871', '1.00', 'no_image.jpg', NULL, '3.35', 5, 1, '16.50', '5.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93447, '768189900213', 'OK_3301_1', '', 'OK_3301_1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93448, '7681899168700', 'OKTOK-2547V-1', '', 'OKTOK-2547V-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93449, '730384261123', 'CER_26112_3943', '', 'CER_26112_3943', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93450, '107308200154', '107308200154', '', '107308200154', '1.00', 'no_image.jpg', NULL, '8.95', 5, 1, '23.00', '13.00', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93451, '107308200091', '107308200091', '', '107308200091', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '17.00', '6.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93452, '107308200548', '107308200548', '', '107308200548', '1.00', 'no_image.jpg', NULL, '5.75', 5, 1, '24.50', '10.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93453, '107308200470', '107308200470', '', '107308200470', '1.00', 'no_image.jpg', NULL, '3.97', 5, 1, '17.00', '7.00', '10.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93454, '107308200430', '107308200430', '', '107308200430', '1.00', 'no_image.jpg', NULL, '2.60', 5, 1, '10.50', '9.50', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93455, '020193127421', 'CAL_BO-2306TB_11249', '', 'CAL_BO-2306TB_11249', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93456, '020193103043', 'CAL_BO-2165TB-DB_11096', '', 'CAL_BO-2165TB-DB_11096', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93457, '107308200338', '107308200338', '', '107308200338', '1.00', 'no_image.jpg', NULL, '3.85', 5, 1, '10.00', '6.00', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93458, '107308200324', '107308200324', '', '107308200324', '1.00', 'no_image.jpg', NULL, '3.40', 5, 1, '7.00', '5.00', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93459, '085081122254', 'GIB_89044.05', '', 'GIB_89044.05', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93460, '730384261772', 'CER_26177_3973', '', 'CER_26177_3973', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93461, '085081973627', 'GIB-74182.16-722', '', 'GIB-74182.16-722', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93462, '805845752806', '33348_ABH_75280', '', '33348_ABH_75280', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93463, '639036827796', 'ACK-82799-1', '', 'ACK-82799-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93464, '768189042500', 'OKT_OK-504C-TI5_5988', '', 'OKT_OK-504C-TI5_5988', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93465, '768189015818', 'OK-5106SR-1', '', 'OK-5106SR-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93466, '730384261741', 'CER_26174_3970', '', 'CER_26174_3970', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93467, '730384261574', 'CER_26157_3960', '', 'CER_26157_3960', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93468, '308200209', 'KR108209', '', 'KR108209', '1.00', 'no_image.jpg', NULL, '1.45', 5, 1, '16.00', '5.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93469, '730384415694', 'CER_41569_4022', '', 'CER_41569_4022', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93470, '805845380153', 'ABH_38014-BROW', '', 'ABH_38014-BROW', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93471, '107308209264', '107308209264', '', '107308209264', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93472, '730384261581', 'CER_26158_3961', '', 'CER_26158_3961', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93473, '730384261789', 'CER_26178_3974', '', 'CER_26178_3974', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93474, '308200234D', '308200234D', '', '308200234D', '1.00', 'no_image.jpg', NULL, '2.75', 5, 1, '10.00', '5.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93475, '308200191D', '308200191D', '', '308200191D', '1.00', 'no_image.jpg', NULL, '1.35', 5, 1, '9.00', '5.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93476, '308200260', '308200260', '', '308200260', '1.00', 'no_image.jpg', NULL, '3.20', 5, 1, '8.00', '8.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93477, '107308200486', '107308200486', '', '107308200486', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '20.25', '6.25', '8.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93478, '308200143D', 'KR108143D', '', 'KR108143D', '1.00', 'no_image.jpg', NULL, '4.45', 5, 1, '18.00', '6.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93479, '308200085', 'KR108085', '', 'KR108085', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '18.00', '6.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93480, '308200204', 'KR108204', '', 'KR108204', '1.00', 'no_image.jpg', NULL, '1.78', 5, 1, '19.50', '5.50', '6.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93481, '308200215', 'KR108215', '', 'KR108215', '1.00', 'no_image.jpg', NULL, '3.20', 5, 1, '20.00', '7.00', '5.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:23', '2018-03-09 08:35:23'),
(93482, '805845378051', '805845378051', '', '805845378051', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93483, '768189911455', 'OKT_LG_5302JX_3384', '', 'OKT_LG_5302JX_3384', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93484, '768189916146', 'OK-2542-C1', '', 'OK-2542-C1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93485, '768189910649', 'OKT_OK-2952-21_4109', '', 'OKT_OK-2952-21_4109', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93486, '085081150400', 'GIB_91859.01_11046', '', 'GIB_91859.01_11046', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93487, '730384261796', 'CER_26179_3975', '', 'CER_26179_3975', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93488, '805845370185', 'ABH_37018', '', 'ABH_37018', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93489, '308200297', 'KR108297', '', 'KR108297', '1.00', 'no_image.jpg', NULL, '1.20', 5, 1, '7.00', '7.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93490, '308200236D', 'KR108236D', '', 'KR108236D', '1.00', 'no_image.jpg', NULL, '4.30', 5, 1, '12.00', '7.00', '7.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93491, '107308200828', '107308200828', '', '107308200828', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '19.50', '6.25', '5.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93492, '730384261154', 'CER_26115_3946', '', 'CER_26115_3946', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93493, '048237070755', 'KKM_7075_3460', '', 'KKM_7075_3460', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93494, '048237070717', 'KKM_7071_3456', '', 'KKM_7071_3456', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93495, '730384261833', 'CER_26183_3979', '', 'CER_26183_3979', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93496, '768189916443', 'OK_4239P', '', 'OK_4239P', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93497, '768189911196', 'OKT_LG_5902_21_3362', '', 'OKT_LG_5902_21_3362', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93498, '7681899168250', 'OKTOK-2546-V3-1', '', 'OKTOK-2546-V3-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93499, '107308200629', '107308200629', '', '107308200629', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '8.25', '4.00', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93500, '730384261178', 'CER_26117_3948', '', 'CER_26117_3948', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93501, '107308208637', '107308208637', '', '107308208637', '1.00', 'no_image.jpg', NULL, '2.32', 5, 1, '7.25', '7.25', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93502, '085081931245', 'GIB_69944.01', '', 'GIB_69944.01', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93503, '639036818794', 'ACK-81879-1', '', 'ACK-81879-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93504, '107308200268', '107308200268', '', '107308200268', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '12.75', '11.00', '5.90', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93505, '730384261505', 'CER_26150', '', 'CER_26150', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93506, '639036866153', 'ACK_86615_3328', '', 'ACK_86615_3328', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93507, '639036875049', 'ACK-87504-1', '', 'ACK-87504-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93508, '730384261208', 'CER_26120_3951', '', 'CER_26120_3951', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93509, '805845736394', 'ABH_73639', '', 'ABH_73639', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93510, '768189916214', 'OKT_OK_2545_D1_5546', '', 'OKT_OK_2545_D1_5546', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93511, '107308200469', '107308200469', '', '107308200469', '1.00', 'no_image.jpg', NULL, '3.57', 5, 1, '17.00', '10.50', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93512, '805845360728', '33189_ABH_36072', '', '33189_ABH_36072', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93513, '805845697770', '33415_ABH_AV69777', '', '33415_ABH_AV69777', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93514, '107308200050', '107308200050', '', '107308200050', '1.00', 'no_image.jpg', NULL, '2.85', 5, 1, '10.00', '9.50', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93515, '107308200081', '107308200081', '', '107308200081', '1.00', 'no_image.jpg', NULL, '6.20', 5, 1, '20.50', '6.00', '8.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93516, '107308200928', '107308200928', '', '107308200928', '1.00', 'no_image.jpg', NULL, '3.30', 5, 1, '7.25', '5.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93517, '805845698104', '33426_ABH_AV69810', '', '33426_ABH_AV69810', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93518, '051141906676', 'TD2157S', '', 'TD2157S', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93519, '107308201026', '107308201026', '', '107308201026', '1.00', 'no_image.jpg', NULL, '5.05', 5, 1, '7.50', '8.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93520, '107308200003', '107308200003', '', '107308200003', '1.00', 'no_image.jpg', NULL, '2.42', 5, 1, '5.50', '4.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93521, '107308200026', '107308200026', '', '107308200026', '1.00', 'no_image.jpg', NULL, '3.37', 5, 1, '10.00', '6.00', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93522, '107308200416', '107308200416', '', '107308200416', '1.00', 'no_image.jpg', NULL, '3.90', 5, 1, '7.00', '5.75', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93523, '020193047880', 'CAL_BO_231FL', '', 'CAL_BO_231FL', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93524, '107308200399', '107308200399', '', '107308200399', '1.00', 'no_image.jpg', NULL, '5.00', 5, 1, '9.00', '7.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93525, '639036825044', '82504', '', '82504', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93526, '639036846407', '639036846407', '', '639036846407', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93527, '107308200413', '107308200413', '', '107308200413', '1.00', 'no_image.jpg', NULL, '4.45', 5, 1, '6.50', '6.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93528, '048237070793', 'KKM_7079_3464', '', 'KKM_7079_3464', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93529, '7681899167406', 'OKT_OK-2545-B2_4428', '', 'OKT_OK-2545-B2_4428', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93530, '107308200982', '107308200982', '', '107308200982', '1.00', 'no_image.jpg', NULL, '3.00', 5, 1, '7.75', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93531, '107308200488', '107308200488', '', '107308200488', '1.00', 'no_image.jpg', NULL, '2.32', 5, 1, '11.50', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93532, '730384261819', 'CER_26181_3977', '', 'CER_26181_3977', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93533, '730384261611', 'CER_26161_3964', '', 'CER_26161_3964', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93534, '768189911233', 'OKT_LG_5805_21_3374', '', 'OKT_LG_5805_21_3374', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93535, '805845352990', 'ABH_35299', '', 'ABH_35299', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93536, '308200021', 'KR108021', '', 'KR108021', '1.00', 'no_image.jpg', NULL, '4.35', 5, 1, '10.00', '7.00', '7.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93537, '107308200431', '107308200431', '', '107308200431', '1.00', 'no_image.jpg', NULL, '3.55', 5, 1, '10.00', '9.50', '9.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93538, '107308200352', '107308200352', '', '107308200352', '1.00', 'no_image.jpg', NULL, '2.70', 5, 1, '7.50', '7.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93539, '107308200607', '107308200607', '', '107308200607', '1.00', 'no_image.jpg', NULL, '1.52', 5, 1, '14.50', '9.75', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93540, '730384414024', 'CER_41402_3999', '', 'CER_41402_3999', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93541, '678634283696', '8714458001', '', '8714458001', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93542, '678634282286', 'UPD-GLSILK-1', '', 'UPD-GLSILK-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 21, '2018-03-09 08:35:24', '2018-05-23 19:02:17'),
(93543, '308200009', 'KR108009', '', 'KR108009', '1.00', 'no_image.jpg', NULL, '6.00', 5, 1, '11.00', '11.00', '7.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93544, '107308206010', '107308206010', '', '107308206010', '1.00', 'no_image.jpg', NULL, '26.67', 5, 1, '17.50', '12.25', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93545, '020193127735', 'CAL_FX-3504/6_11099', '', 'CAL_FX-3504/6_11099', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93546, '107308208633', '107308208633', '', '107308208633', '1.00', 'no_image.jpg', NULL, '5.85', 5, 1, '13.50', '13.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93547, '107308201025', '107308201025', '', '107308201025', '1.00', 'no_image.jpg', NULL, '3.95', 5, 1, '6.00', '5.50', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93548, '085081151247', '11626_GIB_91943.07', '', '11626_GIB_91943.07', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93549, '768189911448', 'OKT_LG_5301C_3378', '', 'OKT_LG_5301C_3378', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93550, '107308204641', '107308204641', '', '107308204641', '1.00', 'no_image.jpg', NULL, '1.72', 5, 1, '5.25', '4.00', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93551, '107308200019', '107308200019', '', '107308200019', '1.00', 'no_image.jpg', NULL, '2.70', 5, 1, '7.00', '5.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93552, '107308203914', '107308203914', '', '107308203914', '1.00', 'no_image.jpg', NULL, '5.12', 5, 1, '9.75', '9.75', '8.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93553, '107308200524', '107308200524', '', '107308200524', '1.00', 'no_image.jpg', NULL, '2.55', 5, 1, '9.50', '7.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93554, '107308201027', '107308201027', '', '107308201027', '1.00', 'no_image.jpg', NULL, '3.80', 5, 1, '6.10', '4.75', '4.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:24', '2018-03-09 08:35:24'),
(93555, '730384415656', 'CER_41565_4019', '', 'CER_41565_4019', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93556, '107308200933', '107308200933', '', '107308200933', '1.00', 'no_image.jpg', NULL, '5.70', 5, 1, '19.50', '7.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93557, '107308200820', '107308200820', '', '107308200820', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '15.00', '5.80', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93558, '107308200819', '107308200819', '', '107308200819', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '15.00', '5.80', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93559, '107308200850', '107308200850', '', '107308200850', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '15.00', '5.80', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93560, '107308200260', '107308200260', '', '107308200260', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '6.75', '6.75', '2.30', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93561, '048237070779', 'KKM_7077_3462', '', 'KKM_7077_3462', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93562, '107308200261', '107308200261', '', '107308200261', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '6.75', '6.75', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93563, '639036818374', 'ACK-81837-1', '', 'ACK-81837-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93564, '308200193', 'KR108193', '', 'KR108193', '1.00', 'no_image.jpg', NULL, '0.45', 5, 1, '7.00', '4.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93565, '805845365990', '33204_ABH_36599', '', '33204_ABH_36599', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93566, '768189911318', 'OKT_LG_5810_21_3367', '', 'OKT_LG_5810_21_3367', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93567, '308200316', 'KR108316', '', 'KR108316', '1.00', 'no_image.jpg', NULL, '2.25', 5, 1, '5.50', '5.50', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93568, '107308207727', '107308207727', '', '107308207727', '1.00', 'no_image.jpg', NULL, '2.82', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93569, '107308202107', '107308202107', '', '107308202107', '1.00', 'no_image.jpg', NULL, '5.30', 5, 1, '7.00', '4.25', '4.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93570, '107308200460', '107308200460', '', '107308200460', '1.00', 'no_image.jpg', NULL, '1.06', 5, 1, '9.50', '5.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25');
INSERT INTO `product` (`id`, `upc`, `sku`, `asin`, `name`, `price`, `image`, `description`, `weight`, `weight_class_id`, `length_class_id`, `length`, `width`, `height`, `alert_quantity`, `shipping_provider`, `shipping_service`, `client_id`, `date_added`, `date_modified`) VALUES
(93571, '107308200848', '107308200848', '', '107308200848', '1.00', 'no_image.jpg', NULL, '1.60', 5, 1, '9.25', '5.00', '4.20', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93572, '730384414062', 'CER_41406_4003', '', 'CER_41406_4003', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93573, '639036866320', 'ACK_86632_3340', '', 'ACK_86632_3340', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93574, '107308200547', '107308200547', '', '107308200547', '1.00', 'no_image.jpg', NULL, '5.40', 5, 1, '24.75', '10.25', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93575, '768189905348', 'OK-FT-1136/1L -1', '', 'OK-FT-1136/1L -1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93576, '768189917907', 'OKT_OK-4253JX_4467', '', 'OKT_OK-4253JX_4467', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93577, '768189912001', 'OKT-FT-1164/1L-1', '', 'OKT-FT-1164/1L-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93578, '107308201072', '107308201072', '', '107308201072', '1.00', 'no_image.jpg', NULL, '1.58', 5, 1, '4.25', '3.75', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93579, '107308200862', '107308200862', '', '107308200862', '1.00', 'no_image.jpg', NULL, '0.95', 5, 1, '6.00', '5.75', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93580, '107308200916', '107308200916', '', '107308200916', '1.00', 'no_image.jpg', NULL, '2.75', 5, 1, '11.00', '5.76', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93581, '107308200659', '107308200659', '', '107308200659', '1.00', 'no_image.jpg', NULL, '3.10', 5, 1, '6.00', '5.75', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93582, '085081864499', 'GIB_63306.16_7164', '', 'GIB_63306.16_7164', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93583, '308200188', 'KR108188', '', 'KR108188', '1.00', 'no_image.jpg', NULL, '1.30', 5, 1, '16.00', '5.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93584, '085081018830', 'GIB_78702.16_10652', '', 'GIB_78702.16_10652', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93585, '085081146762', '19325_GIB_91495.16', '', '19325_GIB_91495.16', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93586, '107308200836', '107308200836', '', '107308200836', '1.00', 'no_image.jpg', NULL, '1.90', 5, 1, '16.75', '5.50', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93587, '107308200563', '107308200563', '', '107308200563', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '21.50', '6.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93588, '048237073718', 'KKM_7371_3474', '', 'KKM_7371_3474', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93589, '608463567919', '56792', '', '56792', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93590, '639036839287', 'ACK_83928_3406', '', 'ACK_83928_3406', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93591, '730384261727', 'CER_26172_3968', '', 'CER_26172_3968', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93592, '730384261543', 'CER_26154_3957', '', 'CER_26154_3957', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93593, '82515s', 'ACK-82515-1', '', 'ACK-82515-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93594, '085081758255', 'GIB_2853.24', '', 'GIB_2853.24', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93595, '085081032409', 'GIB_80059.02_5606', '', 'GIB_80059.02_5606', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93596, '730384261710', 'CER_26171_3967', '', 'CER_26171_3967', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93597, '107308200073', '107308200073', '', '107308200073', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '9.50', '5.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93598, '639036818282', 'ACK-81828-1', '', 'ACK-81828-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93599, '730384261567', 'CER_26156_3959', '', 'CER_26156_3959', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93600, '048237071752', 'KKM_7175_3468', '', 'KKM_7175_3468', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93601, '020193056851', 'CAL_954-77L-RU/AMS_11074', '', 'CAL_954-77L-RU/AMS_11074', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93602, '085081151735', '13895_GIB_91992.03', '', '13895_GIB_91992.03', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93603, '107308200606', '107308200606', '', '107308200606', '1.00', 'no_image.jpg', NULL, '1.52', 5, 1, '14.50', '9.75', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93604, '805845379447', 'ABH_37944', '', 'ABH_37944', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93605, '107308200022', '107308200022', '', '107308200022', '1.00', 'no_image.jpg', NULL, '4.12', 5, 1, '10.25', '10.75', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93606, '107308200410', '107308200410', '', '107308200410', '1.00', 'no_image.jpg', NULL, '4.10', 5, 1, '6.50', '6.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93607, '107308200419', '107308200419', '', '107308200419', '1.00', 'no_image.jpg', NULL, '4.85', 5, 1, '9.00', '8.00', '6.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93608, '107308200451', '107308200451', '', '107308200451', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '10.00', '9.00', '9.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93609, '730384414086', 'CER_41408_4005', '', 'CER_41408_4005', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93610, '730384261130', 'CER_26113_3944', '', 'CER_26113_3944', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93611, '639036889954', 'ACK_88995_3359', '', 'ACK_88995_3359', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93612, '107308290049', '107308290049', '', '107308290049', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93613, '085081151018', 'GIB_91920.08_11030', '', 'GIB_91920.08_11030', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93614, '107308200827', '107308200827', '', '107308200827', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '20.00', '6.50', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93615, '048237030445', 'KKM-3043-1', '', 'KKM-3043-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93616, '308200239', '308200239', '', '308200239', '1.00', 'no_image.jpg', NULL, '15.45', 5, 1, '32.50', '22.00', '6.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93617, '768189913138', '768189913138', '', '768189913138', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:25', '2018-03-09 08:35:25'),
(93618, '768189911202', '768189911202', '', '768189911202', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93619, '768189911172', '768189911172', '', '768189911172', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93620, '730384261604', '730384261604', '', '730384261604', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93621, '308200360', 'KR108360', '', 'KR108360', '1.00', 'no_image.jpg', NULL, '3.40', 5, 1, '8.00', '8.00', '5.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93622, '107308208398', '107308208398', '', '107308208398', '1.00', 'no_image.jpg', NULL, '3.86', 5, 1, '7.00', '6.00', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93623, '308200320', '308200320', '', '308200320', '1.00', 'no_image.jpg', NULL, '2.90', 5, 1, '10.00', '6.00', '6.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93624, '107308200381', '107308200381', '', '107308200381', '1.00', 'no_image.jpg', NULL, '1.97', 5, 1, '7.00', '6.75', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93625, '768189911332', 'OK_5704_1', '', 'OK_5704_1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93626, '768189911363', 'OK_5705_21', '', 'OK_5705_21', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93627, '768189911127', 'OKT_LG_5801_31_3358', '', 'OKT_LG_5801_31_3358', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93628, '768189911288', 'OKT_LG_5809_21_3364', '', 'OKT_LG_5809_21_3364', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93629, '107308200154d', '107308200154d', '', '107308200154d', '1.00', 'no_image.jpg', NULL, '14.85', 5, 1, '23.00', '13.00', '7.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93630, '768189911028', 'OKT-OK-2527-1', '', 'OKT-OK-2527-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93631, '085081890689', '65888.01', '', '65888.01', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93632, '723886517782', 'KAY_R1778_1', '', 'KAY_R1778_1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93633, '730384414116', 'CER_41411', '', 'CER_41411', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93634, '9731816899359', 'ACK-89935', '', 'ACK-89935', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93635, '805845698135', '33428_ABH_AV69813', '', '33428_ABH_AV69813', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93636, '107308201109', '107308201109', '', '107308201109', '1.00', 'no_image.jpg', NULL, '4.55', 5, 1, '7.70', '6.75', '7.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93637, '308200043', 'KR108043', '', 'KR108043', '1.00', 'no_image.jpg', NULL, '1.25', 5, 1, '12.00', '6.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93638, '7681899167888', 'OK-2546-B1', '', 'OK-2546-B1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93639, '768189911240', 'OKT_LG_5806_21_3371', '', 'OKT_LG_5806_21_3371', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93640, '085081052735', 'GIB_82092.01_11002', '', 'GIB_82092.01_11002', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93641, '107308200837', '107308200837', '', '107308200837', '1.00', 'no_image.jpg', NULL, '2.35', 5, 1, '18.50', '5.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93642, '730384414178', 'CER_41417_4014', '', 'CER_41417_4014', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93643, '085081068583', 'GIB_83677.08_11017', '', 'GIB_83677.08_11017', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93644, '020193103081', 'CAL_BO-2169TB_11142', '', 'CAL_BO-2169TB_11142', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93645, '308200019', 'KR108019', '', 'KR108019', '1.00', 'no_image.jpg', NULL, '2.65', 5, 1, '6.00', '5.00', '5.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93646, '107308200485', '107308200485', '', '107308200485', '1.00', 'no_image.jpg', NULL, '2.10', 5, 1, '20.50', '8.60', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93647, '805845697992', '33422_ABH_AV69799', '', '33422_ABH_AV69799', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93648, '805845697985', '33421_ABH_AV69798', '', '33421_ABH_AV69798', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93649, '107308200846', '107308200846', '', '107308200846', '1.00', 'no_image.jpg', NULL, '1.80', 5, 1, '15.00', '6.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93650, '768189916092', 'OKTOK-2542P-1', '', 'OKTOK-2542P-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93651, '768189915644', 'OKTOK4229D-1', '', 'OKTOK4229D-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93652, '768189045648', 'OKT_OK-5501T', '', 'OKT_OK-5501T', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93653, '768189000678', 'OKT-OK-4101BK-1', '', 'OKT-OK-4101BK-1', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93654, '107308208625', '107308208625', '', '107308208625', '1.00', 'no_image.jpg', NULL, '2.62', 5, 1, '7.25', '5.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93655, '730384261116', 'CER_26111_3942', '', 'CER_26111_3942', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93656, '730384261802', 'CER_26180_3976', '', 'CER_26180_3976', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:26', '2018-03-09 08:35:26'),
(93657, '107308200807', '107308200807', '', '107308200807', '1.00', 'no_image.jpg', NULL, '7.50', 5, 1, '21.75', '6.50', '5.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93658, '085081213907', '32942_GIB_98209.16', '', '32942_GIB_98209.16', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93659, '730384261215', 'CER_26121_3952', '', 'CER_26121_3952', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93660, '107308200565', '107308200565', '', '107308200565', '1.00', 'no_image.jpg', NULL, '4.70', 5, 1, '25.75', '11.25', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93661, '768189911226', 'OKT_LG_5702_21_3369', '', 'OKT_LG_5702_21_3369', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93662, '768189905126', '768189905126', '', '768189905126', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93663, '020193127490', 'CAL_BO-2313TB', '', 'CAL_BO-2313TB', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93664, '308200254', 'KR108290', '', 'KR108290', '1.00', 'no_image.jpg', NULL, '0.75', 5, 1, '5.00', '4.00', '3.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93665, '308200025', 'KR108025', '', 'KR108025', '1.00', 'no_image.jpg', NULL, '1.85', 5, 1, '7.00', '6.00', '6.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93666, '308200356', 'KR108356', '', 'KR108356', '1.00', 'no_image.jpg', NULL, '1.65', 5, 1, '5.00', '5.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93667, '308200335', 'KR108335', '', 'KR108335', '1.00', 'no_image.jpg', NULL, '1.75', 5, 1, '6.00', '6.00', '5.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93668, '768189911301', 'OKT_LG_5710_3368', '', 'OKT_LG_5710_3368', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93669, '805845351306', 'ABH_35130', '', 'ABH_35130', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93670, '085081052179', 'GIB_82036.01_11011', '', 'GIB_82036.01_11011', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93671, '805845352976', '33167_ABH_35297', '', '33167_ABH_35297', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93672, '107308203713', '107308203713', '', '107308203713', '1.00', 'no_image.jpg', NULL, '5.27', 5, 1, '7.50', '7.75', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93673, '639036829448', 'ACK_82944_3402', '', 'ACK_82944_3402', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93674, '768189045075', 'OKT_OK-5133F_1881', '', 'OKT_OK-5133F_1881', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93675, '107308201053', '107308201053', '', '107308201053', '1.00', 'no_image.jpg', NULL, '0.70', 5, 1, '7.00', '9.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93676, '107308200780', '107308200780', '', '107308200780', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93677, '107308200585', '107308200585', '', '107308200585', '1.00', 'no_image.jpg', NULL, '0.15', 5, 1, '10.00', '8.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93678, '107308200758', '107308200758', '', '107308200758', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93679, '107308207427', '107308207427', '', '107308207427', '1.00', 'no_image.jpg', NULL, '1.35', 5, 1, '9.00', '7.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93680, '107308200601', '107308200601', '', '107308200601', '1.00', 'no_image.jpg', NULL, '0.10', 5, 1, '7.50', '4.50', '1.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93681, '107308201075', '107308201075', '', '107308201075', '1.00', 'no_image.jpg', NULL, '1.14', 5, 1, '10.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93682, '107308200781', '107308200781', '', '107308200781', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93683, '107308200784', '107308200784', '', '107308200784', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93684, '107308200681', '107308200681', '', '107308200681', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93685, '107308200593', '107308200593', '', '107308200593', '1.00', 'no_image.jpg', NULL, '0.10', 5, 1, '14.50', '11.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93686, '107308200787', '107308200787', '', '107308200787', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '4.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93687, '107308200682', '107308200682', '', '107308200682', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93688, '107308200755', '107308200755', '', '107308200755', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93689, '107308204255', '107308204255', '', '107308204255', '1.00', 'no_image.jpg', NULL, '0.60', 5, 1, '9.00', '6.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93690, '107308201054', '107308201054', '', '107308201054', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '9.50', '6.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93691, '107308200658', '107308200658', '', '107308200658', '1.00', 'no_image.jpg', NULL, '3.15', 5, 1, '6.50', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93692, '107308200773', '107308200773', '', '107308200773', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '8.00', '5.00', '1.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93693, '107308200496', '107308200496', '', '107308200496', '1.00', 'no_image.jpg', NULL, '1.10', 5, 1, '10.00', '7.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93694, '107308200505', '107308200505', '', '107308200505', '1.00', 'no_image.jpg', NULL, '3.75', 5, 1, '6.00', '4.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93695, '107308200981', '107308200981', '', '107308200981', '1.00', 'no_image.jpg', NULL, '2.17', 5, 1, '5.25', '4.00', '5.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93696, '107308201018', '107308201018', '', '107308201018', '1.00', 'no_image.jpg', NULL, '3.65', 5, 1, '6.25', '5.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93697, '107308200977', '107308200977', '', '107308200977', '1.00', 'no_image.jpg', NULL, '1.67', 5, 1, '5.25', '4.00', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93698, '107308203431', '107308203431', '', '107308203431', '1.00', 'no_image.jpg', NULL, '1.47', 5, 1, '7.50', '7.50', '7.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93699, '107308207833', '107308207833', '', '107308207833', '1.00', 'no_image.jpg', NULL, '2.77', 5, 1, '7.50', '7.00', '6.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93700, '308200176', '308200176', '', '308200176', '1.00', 'no_image.jpg', NULL, '0.70', 5, 1, '11.00', '6.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93701, '308200290', '308200290', '', '308200290', '1.00', 'no_image.jpg', NULL, '1.20', 5, 1, '5.00', '4.00', '4.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93702, '107308201098', '107308201098', '', '107308201098', '1.00', 'no_image.jpg', NULL, '2.45', 5, 1, '10.00', '7.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:27', '2018-03-09 08:35:27'),
(93703, '107308208624', '107308208624', '', '107308208624', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '10.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93704, '107308207464', '107308207464', '', '107308207464', '1.00', 'no_image.jpg', NULL, '0.95', 5, 1, '10.00', '5.50', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93705, '107308201043', '107308201043', '', '107308201043', '1.00', 'no_image.jpg', NULL, '0.62', 5, 1, '7.75', '2.50', '5.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93706, '107308201092', '107308201092', '', '107308201092', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '10.00', '5.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93707, '107308200889', '107308200889', '', '107308200889', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '19.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93708, '107308200893', '107308200893', '', '107308200893', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '18.00', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93709, '107308204436', '107308204436', '', '107308204436', '1.00', 'no_image.jpg', NULL, '2.45', 5, 1, '18.00', '5.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93710, '107308203747', '107308203747', '', '107308203747', '1.00', 'no_image.jpg', NULL, '0.55', 5, 1, '10.00', '6.00', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93711, '107308200605', '107308200605', '', '107308200605', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93712, '107308200878', '107308200878', '', '107308200878', '1.00', 'no_image.jpg', NULL, '1.14', 5, 1, '15.00', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93713, '107308200484', '107308200484', '', '107308200484', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '9.25', '5.00', '4.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93714, '107308200891', '107308200891', '', '107308200891', '1.00', 'no_image.jpg', NULL, '1.36', 5, 1, '17.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93715, '107308204486', '107308204486', '', '107308204486', '1.00', 'no_image.jpg', NULL, '2.45', 5, 1, '18.50', '6.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93716, '107308207500', '107308207500', '', '107308207500', '1.00', 'no_image.jpg', NULL, '3.45', 5, 1, '3.45', '8.00', '8.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93717, '107308200883', '107308200883', '', '107308200883', '1.00', 'no_image.jpg', NULL, '1.00', 5, 1, '15.00', '5.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93718, '107308200614', '107308200614', '', '107308200614', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '13.50', '7.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93719, '107308200874', '107308200874', '', '107308200874', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '14.50', '4.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93720, '107308200721', '107308200721', '', '107308200721', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '7.50', '8.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93721, '107308200700', '107308200700', '', '107308200700', '1.00', 'no_image.jpg', NULL, '0.15', 5, 1, '9.00', '4.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93722, '107308200183', '107308200183', '', '107308200183', '1.00', 'no_image.jpg', NULL, '1.05', 5, 1, '15.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93723, '107308200290', '107308200290', '', '107308200290', '1.00', 'no_image.jpg', NULL, '0.60', 5, 1, '9.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93724, '107308200186', '107308200186', '', '107308200186', '1.00', 'no_image.jpg', NULL, '1.35', 5, 1, '14.00', '5.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93725, '107308203454', '107308203454', '', '107308203454', '1.00', 'no_image.jpg', NULL, '3.45', 5, 1, '11.00', '6.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93726, '107308200294', '107308200294', '', '107308200294', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '15.00', '6.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93727, '107308200840', '107308200840', '', '107308200840', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '19.50', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93728, '107308206309', '107308206309', '', '107308206309', '1.00', 'no_image.jpg', NULL, '1.65', 5, 1, '14.50', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93729, '107308200350', '107308200350', '', '107308200350', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '14.50', '9.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93730, '107308203688', '107308203688', '', '107308203688', '1.00', 'no_image.jpg', NULL, '1.15', 5, 1, '15.50', '6.25', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93731, '107308201088', '107308201088', '', '107308201088', '1.00', 'no_image.jpg', NULL, '0.76', 5, 1, '10.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93732, '107308200086', '107308200086', '', '107308200086', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '11.25', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93733, '107308200736', '107308200736', '', '107308200736', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '10.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93734, '107308200651', '107308200651', '', '107308200651', '1.00', 'no_image.jpg', NULL, '1.00', 5, 1, '18.00', '5.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93735, '107308200726', '107308200726', '', '107308200726', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '8.00', '8.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93736, '107308200743', '107308200743', '', '107308200743', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '9.50', '5.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93737, '107308200498', '107308200498', '', '107308200498', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '10.00', '7.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93738, '107308201099', '107308201099', '', '107308201099', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '10.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93739, '107308201100', '107308201100', '', '107308201100', '1.00', 'no_image.jpg', NULL, '0.90', 5, 1, '10.00', '6.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93740, '107308200610', '107308200610', '', '107308200610', '1.00', 'no_image.jpg', NULL, '0.95', 5, 1, '8.00', '4.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93741, '107308201038', '107308201038', '', '107308201038', '1.00', 'no_image.jpg', NULL, '1.25', 5, 1, '9.50', '4.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:28', '2018-03-09 08:35:28'),
(93742, '107308201041', '107308201041', '', '107308201041', '1.00', 'no_image.jpg', NULL, '0.65', 5, 1, '7.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93743, '107308201035', '107308201035', '', '107308201035', '1.00', 'no_image.jpg', NULL, '0.95', 5, 1, '7.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93744, '107308201052', '107308201052', '', '107308201052', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '8.50', '4.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93745, '107308200914', '107308200914', '', '107308200914', '1.00', 'no_image.jpg', NULL, '3.04', 5, 1, '16.00', '5.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93746, '107308200901', '107308200901', '', '107308200901', '1.00', 'no_image.jpg', NULL, '2.20', 5, 1, '19.00', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93747, '107308200895', '107308200895', '', '107308200895', '1.00', 'no_image.jpg', NULL, '1.20', 5, 1, '17.00', '4.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93748, '107308200949', '107308200949', '', '107308200949', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '17.00', '5.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93749, '107308201013', '107308201013', '', '107308201013', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '4.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93750, '107308200596', '107308200596', '', '107308200596', '1.00', 'no_image.jpg', NULL, '0.15', 5, 1, '8.50', '7.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93751, '107308200710', '107308200710', '', '107308200710', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '10.00', '5.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93752, '107308200993', '107308200993', '', '107308200993', '1.00', 'no_image.jpg', NULL, '2.22', 5, 1, '5.25', '4.00', '5.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93753, '107308201063', '107308201063', '', '107308201063', '1.00', 'no_image.jpg', NULL, '1.90', 5, 1, '10.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93754, '107308200679', '107308200679', '', '107308200679', '1.00', 'no_image.jpg', NULL, '3.77', 5, 1, '5.00', '5.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93755, '107308200619', '107308200619', '', '107308200619', '1.00', 'no_image.jpg', NULL, '1.42', 5, 1, '8.50', '4.00', '3.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93756, '107308200323', '107308200323', '', '107308200323', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '9.50', '7.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93757, '107308200917', '107308200917', '', '107308200917', '1.00', 'no_image.jpg', NULL, '2.70', 5, 1, '11.25', '6.00', '3.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93758, '107308200786', '107308200786', '', '107308200786', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93759, '107308200903', '107308200903', '', '107308200903', '1.00', 'no_image.jpg', NULL, '1.30', 5, 1, '15.00', '5.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93760, '107308207868', '107308207868', '', '107308207868', '1.00', 'no_image.jpg', NULL, '1.30', 5, 1, '15.00', '6.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93761, '107308200913', '107308200913', '', '107308200913', '1.00', 'no_image.jpg', NULL, '2.30', 5, 1, '16.00', '4.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93762, '107308207726', '107308207726', '', '107308207726', '1.00', 'no_image.jpg', NULL, '3.52', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93763, '107308201081', '107308201081', '', '107308201081', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '7.00', '7.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93764, '107308200951', '107308200951', '', '107308200951', '1.00', 'no_image.jpg', NULL, '1.55', 5, 1, '19.00', '4.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93765, '107308200250', '107308200250', '', '107308200250', '1.00', 'no_image.jpg', NULL, '2.50', 5, 1, '9.50', '5.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93766, '107308207293', '107308207293', '', '107308207293', '1.00', 'no_image.jpg', NULL, '2.40', 5, 1, '23.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93767, '107308401088', '107308401088', '', '107308401088', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93768, '107308200796', '107308200796', '', '107308200796', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93769, '107308200950', '107308200950', '', '107308200950', '1.00', 'no_image.jpg', NULL, '1.58', 5, 1, '19.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93770, '107308200944', '107308200944', '', '107308200944', '1.00', 'no_image.jpg', NULL, '2.45', 5, 1, '18.50', '5.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93771, '107308207416', '107308207416', '', '107308207416', '1.00', 'no_image.jpg', NULL, '3.40', 5, 1, '8.00', '7.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93772, '107308200926', '107308200926', '', '107308200926', '1.00', 'no_image.jpg', NULL, '0.74', 5, 1, '10.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93773, '107308200499', '107308200499', '', '107308200499', '1.00', 'no_image.jpg', NULL, '1.25', 5, 1, '10.00', '7.25', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93774, '107308200831', '107308200831', '', '107308200831', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93775, '107308200701', '107308200701', '', '107308200701', '1.00', 'no_image.jpg', NULL, '0.15', 5, 1, '7.75', '4.50', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93776, '107308200335', '107308200335', '', '107308200335', '1.00', 'no_image.jpg', NULL, '1.75', 5, 1, '9.50', '8.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93777, '107308201087', '107308201087', '', '107308201087', '1.00', 'no_image.jpg', NULL, '0.94', 5, 1, '10.00', '6.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93778, '107308200609', '107308200609', '', '107308200609', '1.00', 'no_image.jpg', NULL, '0.92', 5, 1, '10.00', '7.50', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93779, '107308200946', '107308200946', '', '107308200946', '1.00', 'no_image.jpg', NULL, '2.50', 5, 1, '15.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93780, '107308200892', '107308200892', '', '107308200892', '1.00', 'no_image.jpg', NULL, '2.25', 5, 1, '17.00', '4.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93781, '107308204265', '107308204265', '', '107308204265', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '9.50', '5.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:29', '2018-03-09 08:35:29'),
(93782, '107308200578', '107308200578', '', '107308200578', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '22.00', '8.75', '2.75', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93783, '107308200896', '107308200896', '', '107308200896', '1.00', 'no_image.jpg', NULL, '1.38', 5, 1, '15.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93784, '107308200915', '107308200915', '', '107308200915', '1.00', 'no_image.jpg', NULL, '3.04', 5, 1, '14.00', '5.50', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93785, '107308200941', '107308200941', '', '107308200941', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '17.00', '4.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93786, '107308200204', '107308200204', '', '107308200204', '1.00', 'no_image.jpg', NULL, '1.10', 5, 1, '15.00', '4.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93787, '107308200529', '107308200529', '', '107308200529', '1.00', 'no_image.jpg', NULL, '1.15', 5, 1, '12.50', '4.25', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93788, '107308200600', '107308200600', '', '107308200600', '1.00', 'no_image.jpg', NULL, '0.08', 5, 1, '14.00', '11.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93789, '107308200789', '107308200789', '', '107308200789', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '5.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93790, '107308200919', '107308200919', '', '107308200919', '1.00', 'no_image.jpg', NULL, '1.14', 5, 1, '13.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93791, '107308200187', '107308200187', '', '107308200187', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '14.50', '4.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93792, '107308200359', '107308200359', '', '107308200359', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '14.50', '4.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93793, '107308200464', '107308200464', '', '107308200464', '1.00', 'no_image.jpg', NULL, '1.70', 5, 1, '15.50', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93794, '107308201015', '107308201015', '', '107308201015', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '9.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93795, '107308200711', '107308200711', '', '107308200711', '1.00', 'no_image.jpg', NULL, '0.15', 5, 1, '9.00', '4.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93796, '107308200107', '107308200107', '', '107308200107', '1.00', 'no_image.jpg', NULL, '5.45', 5, 1, '18.00', '12.25', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93797, '107308200806', '107308200806', '', '107308200806', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '14.50', '15.50', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93798, '107308200616', '107308200616', '', '107308200616', '1.00', 'no_image.jpg', NULL, '2.85', 5, 1, '13.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93799, '107308200900', '107308200900', '', '107308200900', '1.00', 'no_image.jpg', NULL, '3.10', 5, 1, '24.50', '5.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93800, '107308202747', '107308202747', '', '107308202747', '1.00', 'no_image.jpg', NULL, '4.80', 5, 1, '23.00', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93801, '107308200075', '107308200075', '', '107308200075', '1.00', 'no_image.jpg', NULL, '4.20', 5, 1, '22.00', '9.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93802, '107308200841', '107308200841', '', '107308200841', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '18.00', '4.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93803, '107308200932', '107308200932', '', '107308200932', '1.00', 'no_image.jpg', NULL, '8.15', 5, 1, '12.00', '7.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93804, '107308200306', '107308200306', '', '107308200306', '1.00', 'no_image.jpg', NULL, '2.15', 5, 1, '8.00', '9.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93805, '107308202111', '107308202111', '', '107308202111', '1.00', 'no_image.jpg', NULL, '2.65', 5, 1, '12.50', '14.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93806, '107308207869', '107308207869', '', '107308207869', '1.00', 'no_image.jpg', NULL, '3.45', 5, 1, '19.00', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93807, '107308207505', '107308207505', '', '107308207505', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '19.50', '7.25', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93808, '107308204688', '107308204688', '', '107308204688', '1.00', 'no_image.jpg', NULL, '4.20', 5, 1, '23.25', '7.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93809, '107308203203', '107308203203', '', '107308203203', '1.00', 'no_image.jpg', NULL, '1.07', 5, 1, '5.25', '5.25', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93810, '107308200604', '107308200604', '', '107308200604', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93811, '107308203775', '107308203775', '', '107308203775', '1.00', 'no_image.jpg', NULL, '2.50', 5, 1, '7.00', '8.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30');
INSERT INTO `product` (`id`, `upc`, `sku`, `asin`, `name`, `price`, `image`, `description`, `weight`, `weight_class_id`, `length_class_id`, `length`, `width`, `height`, `alert_quantity`, `shipping_provider`, `shipping_service`, `client_id`, `date_added`, `date_modified`) VALUES
(93812, '107308200778', '107308200778', '', '107308200778', '1.00', 'no_image.jpg', NULL, '0.30', 5, 1, '8.00', '5.00', '1.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93813, '107308200860', '107308200860', '', '107308200860', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '8.00', '4.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93814, '107308200795', '107308200795', '', '107308200795', '1.00', 'no_image.jpg', NULL, '0.25', 5, 1, '8.00', '4.00', '1.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93815, '107308201300', '107308201300', '', '107308201300', '1.00', 'no_image.jpg', NULL, '0.80', 5, 1, '8.50', '7.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93816, '107308200809', '107308200809', '', '107308200809', '1.00', 'no_image.jpg', NULL, '4.05', 5, 1, '21.50', '6.50', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93817, '107308200061', '107308200061', '', '107308200061', '1.00', 'no_image.jpg', NULL, '0.85', 5, 1, '9.00', '5.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93818, '107398200889', '107398200889', '', '107398200889', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93819, '107308204239', '107308204239', '', '107308204239', '1.00', 'no_image.jpg', NULL, '3.50', 5, 1, '24.00', '6.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93820, '107308200213', '107308200213', '', '107308200213', '1.00', 'no_image.jpg', NULL, '2.10', 5, 1, '16.00', '6.50', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93821, '107308205733', '107308205733', '', '107308205733', '1.00', 'no_image.jpg', NULL, '0.45', 5, 1, '5.50', '3.00', '10.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93822, '107308201105', '107308201105', '', '107308201105', '1.00', 'no_image.jpg', NULL, '0.75', 5, 1, '11.00', '8.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93823, '107308204192', '107308204192', '', '107308204192', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '8.00', '5.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93824, '107308201001', '107308201001', '', '107308201001', '1.00', 'no_image.jpg', NULL, '0.55', 5, 1, '9.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93825, '107308204252', '107308204252', '', '107308204252', '1.00', 'no_image.jpg', NULL, '0.35', 5, 1, '9.50', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93826, '107308200531', '107308200531', '', '107308200531', '1.00', 'no_image.jpg', NULL, '1.18', 5, 1, '13.00', '6.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:30', '2018-03-09 08:35:30'),
(93827, '107308200929', '107308200929', '', '107308200929', '1.00', 'no_image.jpg', NULL, '0.90', 5, 1, '10.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93828, '107308201012', '107308201012', '', '107308201012', '1.00', 'no_image.jpg', NULL, '0.60', 5, 1, '10.00', '3.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93829, '107308201003', '107308201003', '', '107308201003', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '9.00', '6.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93830, '107308200316', '107308200316', '', '107308200316', '1.00', 'no_image.jpg', NULL, '2.20', 5, 1, '10.00', '7.00', '5.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93831, '107308200985', '107308200985', '', '107308200985', '1.00', 'no_image.jpg', NULL, '1.75', 5, 1, '13.50', '5.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93832, '107308200882', '107308200882', '', '107308200882', '1.00', 'no_image.jpg', NULL, '1.08', 5, 1, '15.00', '6.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93833, '107308200085', '107308200085', '', '107308200085', '1.00', 'no_image.jpg', NULL, '1.76', 5, 1, '20.00', '7.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93834, '107308203749', '107308203749', '', '107308203749', '1.00', 'no_image.jpg', NULL, '2.45', 5, 1, '16.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93835, '107308207328', '107308207328', '', '107308207328', '1.00', 'no_image.jpg', NULL, '2.35', 5, 1, '19.50', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93836, '308200231', '308200231', '', '308200231', '1.00', 'no_image.jpg', NULL, '1.82', 5, 1, '15.00', '8.00', '1.50', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93837, '107308203687', '107308203687', '', '107308203687', '1.00', 'no_image.jpg', NULL, '1.15', 5, 1, '14.50', '6.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93838, '107308200724', '107308200724', '', '107308200724', '1.00', 'no_image.jpg', NULL, '0.20', 5, 1, '10.00', '4.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93839, '107308200179', '107308200179', '', '107308200179', '1.00', 'no_image.jpg', NULL, '0.80', 5, 1, '12.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93840, '107308203597', '107308203597', '', '107308203597', '1.00', 'no_image.jpg', NULL, '1.40', 5, 1, '13.00', '4.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93841, '107308200603', '107308200603', '', '107308200603', '1.00', 'no_image.jpg', NULL, '0.10', 5, 1, '9.25', '4.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93842, '107308200066', '107308200066', '', '107308200066', '1.00', 'no_image.jpg', NULL, '1.05', 5, 1, '9.00', '4.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93843, '107308200978', '107308200978', '', '107308200978', '1.00', 'no_image.jpg', NULL, '1.65', 5, 1, '10.00', '4.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93844, '107308203748', '107308203748', '', '107308203748', '1.00', 'no_image.jpg', NULL, '0.55', 5, 1, '9.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93845, '107308200966', '107308200966', '', '107308200966', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '10.00', '7.00', '2.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93846, '107308206345', '107308206345', '', '107308206345', '1.00', 'no_image.jpg', NULL, '0.80', 5, 1, '9.50', '8.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93847, '107308200177', '107308200177', '', '107308200177', '1.00', 'no_image.jpg', NULL, '0.75', 5, 1, '12.50', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93848, '107308206305', '107308206305', '', '107308206305', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '14.00', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93849, '107308207447', '107308207447', '', '107308207447', '1.00', 'no_image.jpg', NULL, '2.65', 5, 1, '9.00', '6.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93850, '107308206306', '107308206306', '', '107308206306', '1.00', 'no_image.jpg', NULL, '1.55', 5, 1, '14.50', '6.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93851, '107308207503', '107308207503', '', '107308207503', '1.00', 'no_image.jpg', NULL, '1.15', 5, 1, '14.50', '4.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93852, '107308200530', '107308200530', '', '107308200530', '1.00', 'no_image.jpg', NULL, '1.12', 5, 1, '12.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93853, '107308206118', '107308206118', '', '107308206118', '1.00', 'no_image.jpg', NULL, '0.90', 5, 1, '11.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93854, '107308206308', '107308206308', '', '107308206308', '1.00', 'no_image.jpg', NULL, '1.85', 5, 1, '15.00', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93855, '107308206413', '107308206413', '', '107308206413', '1.00', 'no_image.jpg', NULL, '1.45', 5, 1, '9.50', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93856, '107308200467', '107308200467', '', '107308200467', '1.00', 'no_image.jpg', NULL, '2.58', 5, 1, '13.00', '6.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93857, '107308203740', '107308203740', '', '107308203740', '1.00', 'no_image.jpg', NULL, '1.90', 5, 1, '11.50', '5.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93858, '107308201008', '107308201008', '', '107308201008', '1.00', 'no_image.jpg', NULL, '0.56', 5, 1, '10.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93859, '107308200987', '107308200987', '', '107308200987', '1.00', 'no_image.jpg', NULL, '0.45', 5, 1, '10.00', '8.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93860, '107308207867', '107308207867', '', '107308207867', '1.00', 'no_image.jpg', NULL, '1.25', 5, 1, '14.00', '5.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93861, '107308208631', '107308208631', '', '107308208631', '1.00', 'no_image.jpg', NULL, '1.15', 5, 1, '12.50', '5.00', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93862, '107308200652', '107308200652', '', '107308200652', '1.00', 'no_image.jpg', NULL, '1.20', 5, 1, '13.00', '6.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93863, '107308205729', '107308205729', '', '107308205729', '1.00', 'no_image.jpg', NULL, '1.50', 5, 1, '12.00', '5.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93864, '107308200525', '107308200525', '', '107308200525', '1.00', 'no_image.jpg', NULL, '1.95', 5, 1, '14.00', '7.50', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93865, '107308208641', '107308208641', '', '107308208641', '1.00', 'no_image.jpg', NULL, '4.25', 5, 1, '22.00', '6.00', '4.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93866, '107308203746', '107308203746', '', '107308203746', '1.00', 'no_image.jpg', NULL, '2.90', 5, 1, '22.00', '7.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93867, '107308207651', '107308207651', '', '107308207651', '1.00', 'no_image.jpg', NULL, '0.70', 5, 1, '10.00', '5.50', '2.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93868, '107308200976', '107308200976', '', '107308200976', '1.00', 'no_image.jpg', NULL, '1.60', 5, 1, '10.00', '6.50', '3.60', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93869, '107308203741', '107308203741', '', '107308203741', '1.00', 'no_image.jpg', NULL, '5.80', 5, 1, '21.00', '9.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93870, '107308203745', '107308203745', '', '107308203745', '1.00', 'no_image.jpg', NULL, '3.10', 5, 1, '23.50', '3.50', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93871, '107308203743', '107308203743', '', '107308203743', '1.00', 'no_image.jpg', NULL, '5.85', 5, 1, '22.00', '9.00', '5.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:31', '2018-03-09 08:35:31'),
(93872, '107308205864', '107308205864', '', '107308205864', '1.00', 'no_image.jpg', NULL, '0.85', 5, 1, '22.50', '4.50', '4.25', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93873, '107308201065', '107308201065', '', '107308201065', '1.00', 'no_image.jpg', NULL, '0.55', 5, 1, '10.00', '7.00', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93874, '107308200968', '107308200968', '', '107308200968', '1.00', 'no_image.jpg', NULL, '0.70', 5, 1, '11.00', '10.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93875, '107308200249', '107308200249', '', '107308200249', '1.00', 'no_image.jpg', NULL, '0.55', 5, 1, '8.00', '5.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93876, '107308200971', '107308200971', '', '107308200971', '1.00', 'no_image.jpg', NULL, '2.00', 5, 1, '8.00', '6.00', '4.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93877, '107308200970', '107308200970', '', '107308200970', '1.00', 'no_image.jpg', NULL, '0.60', 5, 1, '12.25', '4.00', '2.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93878, '107308207232', '107308207232', '', '107308207232', '1.00', 'no_image.jpg', NULL, '0.50', 5, 1, '12.50', '5.25', '3.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93879, '107308204238', '107308204238', '', '107308204238', '1.00', 'no_image.jpg', NULL, '3.95', 5, 1, '22.50', '7.00', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93880, '107308208638', '107308208638', '', '107308208638', '1.00', 'no_image.jpg', NULL, '4.25', 5, 1, '22.00', '6.50', '3.50', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93881, '107308200805', '107308200805', '', '107308200805', '1.00', 'no_image.jpg', NULL, '3.60', 5, 1, '17.50', '11.50', '6.00', 0, 'postpony', 'undefined', 21, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93882, 'm07308200294', 'm07308200294', '', 'm07308200294', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'undefined', 23, '2018-03-09 08:35:32', '2018-03-09 08:35:32'),
(93883, 'KR108260', 'KR108260', '', 'KR108260', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 23, '2018-03-09 09:34:51', '2018-03-09 09:34:51'),
(93884, '768189911127', '768189911127', '', '768189911127', '1.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 23, '2018-03-09 09:35:18', '2018-03-09 09:35:18'),
(93885, '30100010', '30100010', '', '椅子', '0.00', 'no_image.jpg', NULL, '20.00', 5, 1, '21.00', '19.00', '19.00', 0, 'postpony', 'pug', 23, '2018-03-09 19:11:18', '2018-03-09 19:11:18'),
(93898, '70111020', '70111020_B_D', '', '27.5-21速铝合金山地碟刹黑', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '38.00', '56.00', '8.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93899, '70111020', '70111020_W_D', '', '27.5-21速铝合金山地碟刹白', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '50.00', '56.00', '8.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93900, '70111030', '70111030_B_V', '', '27.5-21速铝合金山地v刹黑', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '30.00', '54.00', '8.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93901, '70111030', '70111030_W_V', '', '27.5-21速铝合金山地v刹白', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '20.00', '54.00', '8.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93902, '70111010', '70111010', '', '26-21速铝合金山地碟刹', '0.00', 'no_image.jpg', NULL, '28.00', 5, 1, '30.00', '54.00', '8.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93903, '70121010', '70121010_Y_6', '', '26-6速铝合金女车Y', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '20.00', '53.00', '9.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93904, '70121010', '70121010_W_6', '', '26-7速铝合金女车w', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '20.00', '53.00', '9.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93905, '70112020', '70112020_B_21', '', '26-21速直管折叠黑', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '40.00', '38.00', '13.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93906, '70112020', '70112020_W_21', '', '26-21速直管折叠白', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '10.00', '38.00', '13.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93907, '70112030', '70112030_B_21', '', '26-21速折叠-Y', '0.00', 'no_image.jpg', NULL, '30.00', 5, 1, '10.00', '38.00', '13.00', 0, 'postpony', 'pfg', 20, '2018-03-20 17:42:10', '2018-03-20 17:42:10'),
(93908, '10100012', '10100012', '', '10100012', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:22:18', '2018-03-21 07:22:18'),
(93909, '10100011', '10100011', '', '10100011', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:22:39', '2018-03-21 07:22:39'),
(93910, '10100040', '10100040', '', '10100040', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:23:01', '2018-03-21 07:23:01'),
(93911, '10100030', '10100030', '', '10100030', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:23:17', '2018-03-21 07:23:17'),
(93912, '10100021', '10100021', '', '10100021', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:23:32', '2018-03-21 07:23:32'),
(93913, '10100022', '10100022', '', '10100022', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, '', '', 19, '2018-03-21 07:23:46', '2018-03-21 07:23:46');

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

--
-- Dumping data for table `product_fee`
--

INSERT INTO `product_fee` (`id`, `product_id`, `name`, `type`, `amount`) VALUES
(1, 93885, 'Handling', 2, '4.20');

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

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `client_id`, `payment_method`, `amount`, `status`, `date_paid`, `date_added`, `date_modified`) VALUES
(3, 23, 'offline', '5000.00', 2, '0000-00-00 00:00:00', '2018-04-04 02:27:18', '2018-04-24 02:14:33'),
(4, 19, 'alipay', '1000.00', 2, '0000-00-00 00:00:00', '2018-04-26 00:56:21', '2018-05-08 19:28:39');

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

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`) VALUES
(952, 8, 'Ling#184750', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '2.00', '3.00', '12.00', '4.00', 1, 5, 'postpony', 'pfg', '0.00', '', 2, '', '2018-04-03 20:06:12', '2018-04-04 18:50:40'),
(954, 8, '5523322200335020', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-04 18:43:19', '2018-04-05 22:40:43'),
(955, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '2.00', '3.00', '30.00', '10.00', 1, 5, 'postpony', 'pfg', '250.00', '', 2, '', '2018-04-13 22:02:49', '0000-00-00 00:00:00'),
(956, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-13 22:04:12', '0000-00-00 00:00:00'),
(957, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-13 22:08:52', '0000-00-00 00:00:00'),
(958, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-13 22:10:56', '0000-00-00 00:00:00'),
(959, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-13 22:12:04', '0000-00-00 00:00:00'),
(960, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '120.00', '', 2, '', '2018-04-13 22:13:36', '0000-00-00 00:00:00'),
(961, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 2, '', '2018-04-13 22:14:51', '0000-00-00 00:00:00'),
(962, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '500.00', '', 2, '', '2018-04-13 22:18:31', '0000-00-00 00:00:00'),
(963, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '0.00', '0.00', '0.00', '0.00', 1, 5, 'postpony', 'pfg', '100.00', '', 1, '', '2018-04-13 22:25:29', '2018-05-03 03:23:15'),
(964, 0, '', 'Sam Shao', '12012 Lambert Ave', '', 'El Monte', 'CA', '91732', 'US', 'sam@jiusite.com', '626-202-8975', '23.00', '13.50', '7.00', '12.30', 1, 5, 'postpony', 'pfg', '200.00', '', 1, '', '2018-05-03 03:26:13', '2018-05-30 18:51:04');

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

--
-- Dumping data for table `sale_product`
--

INSERT INTO `sale_product` (`id`, `sale_id`, `product_id`, `quantity`, `store_sale_product_id`) VALUES
(1238, 952, 93322, 2, ''),
(1240, 954, 93348, 1, ''),
(1241, 955, 93322, 5, ''),
(1242, 956, 93336, 3, ''),
(1243, 957, 93336, 2, ''),
(1244, 958, 93336, 3, ''),
(1245, 959, 93542, 2, ''),
(1246, 960, 93542, 100, ''),
(1247, 961, 93542, 120, ''),
(1248, 962, 93348, 5, ''),
(1252, 963, 93542, 2, ''),
(1254, 964, 93320, 1, '');

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
(21475, 'usps', 'usps_fee_type', '0', 0),
(21476, 'usps', 'usps_fee_value', '3', 0),
(21477, 'usps', 'usps_client_fee', 'a:9:{i:0;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"10\";}i:1;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"11\";}i:2;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"12\";}i:3;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"13\";}i:4;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"14\";}i:5;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"15\";}i:6;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"16\";}i:7;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"17\";}i:8;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"18\";}}', 1),
(15438, 'system', 'system_google_map_api_key', 'AIzaSyAc05thWPUV50Wuz-ain57oVv4NU5sme_Y', 0),
(16740, 'alipay', 'alipay_sort_order', '0', 0),
(16472, 'authorize', 'authorize_id', '744fRQNwM', 0),
(16470, 'paypal', 'paypal_email', 'freeshopping.us@gmail.com', 0),
(21474, 'usps', 'usps_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:11:\"First Class\";s:4:\"code\";s:2:\"fc\";s:6:\"method\";s:5:\"US-FC\";s:7:\"package\";s:7:\"Package\";}i:1;a:4:{s:4:\"name\";s:8:\"Priority\";s:4:\"code\";s:2:\"pr\";s:6:\"method\";s:5:\"US-PM\";s:7:\"package\";s:7:\"Package\";}}', 1),
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
(21473, 'usps', 'usps_stamps_wsdl_file', 'assets/file/stamps/stamps.prod.xml', 0),
(21472, 'usps', 'usps_stamps_integration_id', 'e13dde83-59b9-4b45-9a51-3f83016fd883', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(17214, 'square', 'square_field', 'a:1:{i:0;s:5:\"token\";}', 1),
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
(21985, 'ups', 'ups_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:10:\"UPS Ground\";s:4:\"code\";s:2:\"gr\";s:6:\"method\";s:2:\"03\";s:7:\"package\";s:2:\"04\";}i:1;a:4:{s:4:\"name\";s:15:\"UPS 2nd Day Air\";s:4:\"code\";s:4:\"2nda\";s:6:\"method\";s:2:\"02\";s:7:\"package\";s:2:\"04\";}}', 1),
(21986, 'ups', 'ups_state_mapping', 'a:48:{i:0;a:2:{s:10:\"state_long\";s:7:\"alabama\";s:11:\"state_short\";s:2:\"AL\";}i:1;a:2:{s:10:\"state_long\";s:6:\"alaska\";s:11:\"state_short\";s:2:\"AK\";}i:2;a:2:{s:10:\"state_long\";s:7:\"arizona\";s:11:\"state_short\";s:2:\"AZ\";}i:3;a:2:{s:10:\"state_long\";s:8:\"arkansas\";s:11:\"state_short\";s:2:\"AR\";}i:4;a:2:{s:10:\"state_long\";s:10:\"california\";s:11:\"state_short\";s:2:\"CA\";}i:5;a:2:{s:10:\"state_long\";s:8:\"colorado\";s:11:\"state_short\";s:2:\"CO\";}i:6;a:2:{s:10:\"state_long\";s:11:\"connecticut\";s:11:\"state_short\";s:2:\"CT\";}i:7;a:2:{s:10:\"state_long\";s:8:\"delaware\";s:11:\"state_short\";s:2:\"DE\";}i:8;a:2:{s:10:\"state_long\";s:7:\"florida\";s:11:\"state_short\";s:2:\"FL\";}i:9;a:2:{s:10:\"state_long\";s:7:\"georgia\";s:11:\"state_short\";s:2:\"GA\";}i:10;a:2:{s:10:\"state_long\";s:6:\"hawaii\";s:11:\"state_short\";s:2:\"HI\";}i:11;a:2:{s:10:\"state_long\";s:5:\"idaho\";s:11:\"state_short\";s:2:\"ID\";}i:12;a:2:{s:10:\"state_long\";s:8:\"illinois\";s:11:\"state_short\";s:2:\"IN\";}i:13;a:2:{s:10:\"state_long\";s:4:\"iowa\";s:11:\"state_short\";s:2:\"IA\";}i:14;a:2:{s:10:\"state_long\";s:6:\"kansas\";s:11:\"state_short\";s:2:\"KS\";}i:15;a:2:{s:10:\"state_long\";s:8:\"kentucky\";s:11:\"state_short\";s:2:\"KY\";}i:16;a:2:{s:10:\"state_long\";s:9:\"louisiana\";s:11:\"state_short\";s:2:\"LA\";}i:17;a:2:{s:10:\"state_long\";s:5:\"maine\";s:11:\"state_short\";s:2:\"ME\";}i:18;a:2:{s:10:\"state_long\";s:8:\"maryland\";s:11:\"state_short\";s:2:\"MD\";}i:19;a:2:{s:10:\"state_long\";s:13:\"massachusetts\";s:11:\"state_short\";s:2:\"MA\";}i:20;a:2:{s:10:\"state_long\";s:8:\"michigan\";s:11:\"state_short\";s:2:\"MI\";}i:21;a:2:{s:10:\"state_long\";s:9:\"minnesota\";s:11:\"state_short\";s:2:\"MN\";}i:22;a:2:{s:10:\"state_long\";s:12:\"mississippi \";s:11:\"state_short\";s:2:\"MS\";}i:23;a:2:{s:10:\"state_long\";s:8:\"missouri\";s:11:\"state_short\";s:2:\"MO\";}i:24;a:2:{s:10:\"state_long\";s:7:\"montana\";s:11:\"state_short\";s:2:\"NE\";}i:25;a:2:{s:10:\"state_long\";s:6:\"nevada\";s:11:\"state_short\";s:2:\"NV\";}i:26;a:2:{s:10:\"state_long\";s:13:\"new hampshire\";s:11:\"state_short\";s:2:\"NH\";}i:27;a:2:{s:10:\"state_long\";s:10:\"new jersey\";s:11:\"state_short\";s:2:\"NJ\";}i:28;a:2:{s:10:\"state_long\";s:10:\"new mexico\";s:11:\"state_short\";s:2:\"NM\";}i:29;a:2:{s:10:\"state_long\";s:8:\"new york\";s:11:\"state_short\";s:2:\"NY\";}i:30;a:2:{s:10:\"state_long\";s:14:\"north carolina\";s:11:\"state_short\";s:2:\"NC\";}i:31;a:2:{s:10:\"state_long\";s:12:\"north dakota\";s:11:\"state_short\";s:2:\"ND\";}i:32;a:2:{s:10:\"state_long\";s:4:\"ohio\";s:11:\"state_short\";s:2:\"OH\";}i:33;a:2:{s:10:\"state_long\";s:8:\"oklahoma\";s:11:\"state_short\";s:2:\"OK\";}i:34;a:2:{s:10:\"state_long\";s:6:\"oregon\";s:11:\"state_short\";s:2:\"OR\";}i:35;a:2:{s:10:\"state_long\";s:12:\"pennsylvania\";s:11:\"state_short\";s:2:\"PA\";}i:36;a:2:{s:10:\"state_long\";s:12:\"rhode island\";s:11:\"state_short\";s:2:\"RI\";}i:37;a:2:{s:10:\"state_long\";s:14:\"south carolina\";s:11:\"state_short\";s:2:\"SC\";}i:38;a:2:{s:10:\"state_long\";s:12:\"south dakota\";s:11:\"state_short\";s:2:\"SD\";}i:39;a:2:{s:10:\"state_long\";s:9:\"tennessee\";s:11:\"state_short\";s:2:\"TN\";}i:40;a:2:{s:10:\"state_long\";s:5:\"texas\";s:11:\"state_short\";s:2:\"TX\";}i:41;a:2:{s:10:\"state_long\";s:4:\"utah\";s:11:\"state_short\";s:2:\"UT\";}i:42;a:2:{s:10:\"state_long\";s:7:\"vermont\";s:11:\"state_short\";s:2:\"VT\";}i:43;a:2:{s:10:\"state_long\";s:8:\"virginia\";s:11:\"state_short\";s:2:\"VA\";}i:44;a:2:{s:10:\"state_long\";s:10:\"washington\";s:11:\"state_short\";s:2:\"WA\";}i:45;a:2:{s:10:\"state_long\";s:13:\"west virginia\";s:11:\"state_short\";s:2:\"WV\";}i:46;a:2:{s:10:\"state_long\";s:9:\"wisconsin\";s:11:\"state_short\";s:2:\"WI\";}i:47;a:2:{s:10:\"state_long\";s:7:\"wyoming\";s:11:\"state_short\";s:2:\"WY\";}}', 1),
(21470, 'usps', 'usps_stamps_username', 'prolineds', 0),
(21469, 'usps', 'usps_sort_order', '0', 0),
(21468, 'usps', 'usps_status', '1', 0),
(21467, 'usps', 'usps_postcode', '91731', 0),
(17647, 'amazon', 'amazon_field', 'a:6:{i:0;s:6:\"Dev Id\";i:1;s:6:\"App Id\";i:2;s:7:\"Cert Id\";i:3;s:8:\"Username\";i:4;s:7:\"Site Id\";i:5;s:5:\"Token\";}', 1),
(17648, 'amazon', 'amazon_status', '0', 0),
(17649, 'amazon', 'amazon_sort_order', '0', 0),
(23037, 'config', 'config_smtp_hostname', '', 0),
(18696, 'offline', 'offline_status', '1', 0),
(18695, 'offline', 'offline_sort_order', '0', 0),
(23035, 'config', 'config_default_order_shipping_provider', 'postpony', 0),
(23036, 'config', 'config_default_order_shipping_service', 'pfg', 0),
(23034, 'config', 'config_weight_class_id', '5', 0),
(23033, 'config', 'config_length_class_id', '1', 0),
(22091, 'fedex', 'fedex_fee_type', '0', 0),
(22092, 'fedex', 'fedex_fee_value', '3', 0),
(22093, 'fedex', 'fedex_client_fee', 'a:9:{i:0;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"10\";}i:1;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"11\";}i:2;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"12\";}i:3;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"13\";}i:4;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"14\";}i:5;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"15\";}i:6;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"16\";}i:7;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"17\";}i:8;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"18\";}}', 1),
(22084, 'fedex', 'fedex_weight_unit', 'LB', 0),
(22085, 'fedex', 'fedex_image_type', 'PNG', 0),
(22086, 'fedex', 'fedex_debug_mode', '1', 0),
(22087, 'fedex', 'fedex_status', '1', 0),
(22088, 'fedex', 'fedex_sort_order', '0', 0),
(22089, 'fedex', 'fedex_service', 'a:1:{i:0;a:4:{s:4:\"name\";s:19:\"Fedex Home Delivery\";s:4:\"code\";s:3:\"ghd\";s:6:\"method\";s:20:\"GROUND_HOME_DELIVERY\";s:7:\"package\";s:14:\"YOUR_PACKAGING\";}}', 1),
(22090, 'fedex', 'fedex_state_mapping', 'a:47:{i:0;a:2:{s:10:\"state_long\";s:7:\"alabama\";s:11:\"state_short\";s:2:\"AL\";}i:1;a:2:{s:10:\"state_long\";s:6:\"alaska\";s:11:\"state_short\";s:2:\"AK\";}i:2;a:2:{s:10:\"state_long\";s:7:\"arizona\";s:11:\"state_short\";s:2:\"AZ\";}i:3;a:2:{s:10:\"state_long\";s:8:\"arkansas\";s:11:\"state_short\";s:2:\"AR\";}i:4;a:2:{s:10:\"state_long\";s:10:\"california\";s:11:\"state_short\";s:2:\"CA\";}i:5;a:2:{s:10:\"state_long\";s:8:\"colorado\";s:11:\"state_short\";s:2:\"CO\";}i:6;a:2:{s:10:\"state_long\";s:11:\"connecticut\";s:11:\"state_short\";s:2:\"CT\";}i:7;a:2:{s:10:\"state_long\";s:8:\"delaware\";s:11:\"state_short\";s:2:\"DE\";}i:8;a:2:{s:10:\"state_long\";s:7:\"florida\";s:11:\"state_short\";s:2:\"FL\";}i:9;a:2:{s:10:\"state_long\";s:7:\"georgia\";s:11:\"state_short\";s:2:\"GA\";}i:10;a:2:{s:10:\"state_long\";s:6:\"hawaii\";s:11:\"state_short\";s:2:\"HI\";}i:11;a:2:{s:10:\"state_long\";s:5:\"idaho\";s:11:\"state_short\";s:2:\"ID\";}i:12;a:2:{s:10:\"state_long\";s:8:\"illinois\";s:11:\"state_short\";s:2:\"IN\";}i:13;a:2:{s:10:\"state_long\";s:4:\"iowa\";s:11:\"state_short\";s:2:\"IA\";}i:14;a:2:{s:10:\"state_long\";s:6:\"kansas\";s:11:\"state_short\";s:2:\"KS\";}i:15;a:2:{s:10:\"state_long\";s:8:\"kentucky\";s:11:\"state_short\";s:2:\"KY\";}i:16;a:2:{s:10:\"state_long\";s:9:\"louisiana\";s:11:\"state_short\";s:2:\"LA\";}i:17;a:2:{s:10:\"state_long\";s:5:\"maine\";s:11:\"state_short\";s:2:\"ME\";}i:18;a:2:{s:10:\"state_long\";s:8:\"maryland\";s:11:\"state_short\";s:2:\"MD\";}i:19;a:2:{s:10:\"state_long\";s:13:\"massachusetts\";s:11:\"state_short\";s:2:\"MA\";}i:20;a:2:{s:10:\"state_long\";s:8:\"michigan\";s:11:\"state_short\";s:2:\"MI\";}i:21;a:2:{s:10:\"state_long\";s:9:\"minnesota\";s:11:\"state_short\";s:2:\"MN\";}i:22;a:2:{s:10:\"state_long\";s:11:\"mississippi\";s:11:\"state_short\";s:2:\"MS\";}i:23;a:2:{s:10:\"state_long\";s:8:\"missouri\";s:11:\"state_short\";s:2:\"MO\";}i:24;a:2:{s:10:\"state_long\";s:7:\"montana\";s:11:\"state_short\";s:2:\"NE\";}i:25;a:2:{s:10:\"state_long\";s:6:\"nevada\";s:11:\"state_short\";s:2:\"NV\";}i:26;a:2:{s:10:\"state_long\";s:13:\"new hampshire\";s:11:\"state_short\";s:2:\"NH\";}i:27;a:2:{s:10:\"state_long\";s:10:\"new mexico\";s:11:\"state_short\";s:2:\"NM\";}i:28;a:2:{s:10:\"state_long\";s:8:\"new york\";s:11:\"state_short\";s:2:\"NY\";}i:29;a:2:{s:10:\"state_long\";s:14:\"north carolina\";s:11:\"state_short\";s:2:\"NC\";}i:30;a:2:{s:10:\"state_long\";s:12:\"north dakota\";s:11:\"state_short\";s:2:\"ND\";}i:31;a:2:{s:10:\"state_long\";s:4:\"ohio\";s:11:\"state_short\";s:2:\"OH\";}i:32;a:2:{s:10:\"state_long\";s:8:\"oklahoma\";s:11:\"state_short\";s:2:\"OK\";}i:33;a:2:{s:10:\"state_long\";s:6:\"oregon\";s:11:\"state_short\";s:2:\"OR\";}i:34;a:2:{s:10:\"state_long\";s:12:\"pennsylvania\";s:11:\"state_short\";s:2:\"PA\";}i:35;a:2:{s:10:\"state_long\";s:12:\"rhode island\";s:11:\"state_short\";s:2:\"RI\";}i:36;a:2:{s:10:\"state_long\";s:14:\"south carolina\";s:11:\"state_short\";s:2:\"SC\";}i:37;a:2:{s:10:\"state_long\";s:12:\"south dakota\";s:11:\"state_short\";s:2:\"SD\";}i:38;a:2:{s:10:\"state_long\";s:9:\"tennessee\";s:11:\"state_short\";s:2:\"TN\";}i:39;a:2:{s:10:\"state_long\";s:5:\"texas\";s:11:\"state_short\";s:2:\"TX\";}i:40;a:2:{s:10:\"state_long\";s:4:\"utah\";s:11:\"state_short\";s:2:\"UT\";}i:41;a:2:{s:10:\"state_long\";s:7:\"vermont\";s:11:\"state_short\";s:2:\"VT\";}i:42;a:2:{s:10:\"state_long\";s:8:\"virginia\";s:11:\"state_short\";s:2:\"VA\";}i:43;a:2:{s:10:\"state_long\";s:10:\"washington\";s:11:\"state_short\";s:2:\"WA\";}i:44;a:2:{s:10:\"state_long\";s:13:\"west virginia\";s:11:\"state_short\";s:2:\"WV\";}i:45;a:2:{s:10:\"state_long\";s:9:\"wisconsin\";s:11:\"state_short\";s:2:\"WI\";}i:46;a:2:{s:10:\"state_long\";s:7:\"wyoming\";s:11:\"state_short\";s:2:\"WY\";}}', 1),
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
(23031, 'config', 'config_language_id', '5', 0),
(23032, 'config', 'config_information_front_id', '5', 0),
(23030, 'config', 'config_printnode_general_printer_id', '356900', 0),
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
(21989, 'ups', 'ups_client_fee', 'a:9:{i:0;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"10\";}i:1;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"11\";}i:2;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"12\";}i:3;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"13\";}i:4;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"14\";}i:5;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"15\";}i:6;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"16\";}i:7;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"17\";}i:8;a:2:{s:3:\"fee\";s:1:\"3\";s:9:\"client_id\";s:2:\"18\";}}', 1),
(23029, 'config', 'config_printnode_label_printer_id', '376767', 0),
(22788, 'postpony', 'postpony_state_mapping', 'a:1:{i:0;a:2:{s:10:\"state_long\";s:0:\"\";s:11:\"state_short\";s:0:\"\";}}', 1),
(22789, 'postpony', 'postpony_fee_type', '0', 0),
(22787, 'postpony', 'postpony_service', 'a:4:{i:0;a:4:{s:4:\"name\";s:21:\"Postpony Fedex Ground\";s:4:\"code\";s:3:\"pfg\";s:6:\"method\";s:11:\"FedExGround\";s:7:\"package\";s:12:\"YOUR_PACKAGE\";}i:1;a:4:{s:4:\"name\";s:19:\"Postpony UPS Ground\";s:4:\"code\";s:3:\"pug\";s:6:\"method\";s:9:\"UpsGround\";s:7:\"package\";s:7:\"PACKAGE\";}i:2;a:4:{s:4:\"name\";s:25:\"Postpony USPS First Class\";s:4:\"code\";s:5:\"pusfc\";s:6:\"method\";s:18:\"UspsFirstClassMail\";s:7:\"package\";s:7:\"PACKAGE\";}i:3;a:4:{s:4:\"name\";s:22:\"Postpony USPS Priority\";s:4:\"code\";s:4:\"pusp\";s:6:\"method\";s:16:\"UspsPriorityMail\";s:7:\"package\";s:7:\"PACKAGE\";}}', 1),
(22786, 'postpony', 'postpony_sort_order', '0', 0),
(22785, 'postpony', 'postpony_status', '1', 0),
(22784, 'postpony', 'postpony_debug_mode', '1', 0),
(22783, 'postpony', 'postpony_weight_unit', 'LB', 0),
(22782, 'postpony', 'postpony_length_unit', 'IN', 0),
(22781, 'postpony', 'postpony_phone', '9098956073', 0),
(22779, 'postpony', 'postpony_country', 'US', 0),
(22780, 'postpony', 'postpony_owner', 'SHAN SUN', 0),
(22777, 'postpony', 'postpony_state', 'CA', 0),
(22778, 'postpony', 'postpony_postcode', '91733', 0),
(22776, 'postpony', 'postpony_city', 'South El Monte', 0),
(22775, 'postpony', 'postpony_street2', '', 0),
(22774, 'postpony', 'postpony_street', '1467 Lidcombe Ave', 0),
(22773, 'postpony', 'postpony_company', 'intadat Inc', 0),
(23028, 'config', 'config_printnode_api_key', '042f4d55c23fbc64ea98b5bb6d0a85a4caae5cbc', 0),
(23027, 'config', 'config_printnode_width', '180', 0),
(22772, 'postpony', 'postpony_authorized_key', 'TESTTOKEN-ske39De3mkC39d', 0),
(22771, 'postpony', 'postpony_pwd', 'pypypypypy', 0),
(22770, 'postpony', 'postpony_key', 'PY', 0),
(22790, 'postpony', 'postpony_fee_value', '0', 0),
(23025, 'config', 'config_printnode_position_x', '14', 0),
(23026, 'config', 'config_printnode_position_y', '20', 0),
(23024, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(23022, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(23023, 'config', 'config_location_barcode_batch_margin', '200', 0),
(23021, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(23020, 'config', 'config_location_barcode_batch_posy', '20', 0),
(23019, 'config', 'config_location_barcode_batch_posx', '10', 0),
(23018, 'config', 'config_location_barcode_batch_height', '300', 0),
(22875, 'flat', 'flat_amount', '20', 0),
(22876, 'flat', 'flat_status', '1', 0),
(23017, 'config', 'config_location_barcode_batch_width', '630', 0),
(23016, 'config', 'config_location_barcode_code_size', '80', 0),
(23015, 'config', 'config_location_barcode_name_size', '200', 0),
(23014, 'config', 'config_location_barcode_posy', '200', 0),
(23013, 'config', 'config_location_barcode_posx', '1', 0),
(23012, 'config', 'config_location_barcode_height', '400', 0),
(23011, 'config', 'config_location_barcode_width', '6', 0),
(23010, 'config', 'config_label_posy', '0', 0),
(23009, 'config', 'config_label_width', '60', 0),
(23008, 'config', 'config_label_width_type', '0', 0),
(23007, 'config', 'config_autocomplete_limit', '5', 0),
(23006, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(23005, 'config', 'config_dashboard_order_limit', '7', 0),
(23004, 'config', 'config_dashboard_activity_limit', '8', 0),
(23003, 'config', 'config_sale_product_page_limit', '15', 0),
(23002, 'config', 'config_page_limit', '10', 0),
(23001, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(23038, 'config', 'config_smtp_username', '', 0),
(23039, 'config', 'config_smtp_password', '', 0),
(23040, 'config', 'config_smtp_port', '', 0),
(23041, 'config', 'config_smtp_timeout', '', 0),
(23042, 'config', 'config_google_key', '', 0);

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
(8, 23, 'Tio Amazon', 'amazon', 'a:7:{s:11:\"merchant_id\";s:14:\"A2K7YHOK94BRZK\";s:14:\"marketplace_id\";s:13:\"ATVPDKIKX0DER\";s:13:\"access_key_id\";s:20:\"AKIAI5PGYB3KTKEQHZDQ\";s:17:\"secret_access_key\";s:40:\"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\";s:14:\"application_id\";s:1:\"0\";s:19:\"application_version\";s:1:\"2\";s:5:\"hours\";s:2:\"24\";}', 1, 'ups', 'gr', 0, 0, 1, 0, NULL);

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
(15, 8, 0, 0, 0),
(16, 8, 0, 1, 0);

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
(7940, 7, 0, 1, '2018-02-23 20:31:01', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7941, 7, 0, 1, '2018-02-23 20:31:27', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7942, 7, 0, 1, '2018-02-23 20:31:55', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7943, 7, 0, 1, '2018-02-23 20:32:47', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7944, 7, 0, 1, '2018-02-23 20:37:51', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7945, 7, 0, 1, '2018-02-23 20:37:53', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7946, 7, 0, 1, '2018-02-23 20:53:18', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7947, 7, 0, 1, '2018-02-23 20:53:20', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7948, 7, 0, 3, '2018-02-23 20:54:14', 'a:53:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-0181662-9357810\"><strong>order #114-0181662-9357810</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-2971655-7934617\"><strong>order #112-2971655-7934617</strong> has sku <strong>RC-02</strong> that is not found in system</a>\";}i:2;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4246831-8235458\"><strong>order #112-4246831-8235458</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:3;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-8312391-1669002\"><strong>order #114-8312391-1669002</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:4;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-9137746-1574642\"><strong>order #114-9137746-1574642</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:5;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6824140-5936245\"><strong>order #111-6824140-5936245</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:6;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-1180404-0892237\"><strong>order #111-1180404-0892237</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:7;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1183090-6562651\"><strong>order #112-1183090-6562651</strong> has sku <strong>RC-03</strong> that is not found in system</a>\";}i:8;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9303347-2641045\"><strong>order #113-9303347-2641045</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:9;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-0034442-4652220\"><strong>order #112-0034442-4652220</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:10;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-6831212-3234613\"><strong>order #114-6831212-3234613</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:11;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0132915-3307450\"><strong>order #113-0132915-3307450</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:12;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-3107604-0209022\"><strong>order #113-3107604-0209022</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:13;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-0166974-0109050\"><strong>order #111-0166974-0109050</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:14;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-3822949-9031418\"><strong>order #112-3822949-9031418</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:15;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-6824546-8041009\"><strong>order #113-6824546-8041009</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:16;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-1145529-8164250\"><strong>order #113-1145529-8164250</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:17;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-7781420-8549056\"><strong>order #113-7781420-8549056</strong> has sku <strong>GRC-99</strong> that is not found in system</a>\";}i:18;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-7538891-8273860\"><strong>order #112-7538891-8273860</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:19;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-7991801-8102612\"><strong>order #111-7991801-8102612</strong> has sku <strong>NRC-06</strong> that is not found in system</a>\";}i:20;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-8254114-5190649\"><strong>order #112-8254114-5190649</strong> has sku <strong>RC-02</strong> that is not found in system</a>\";}i:21;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-4673299-4990609\"><strong>order #113-4673299-4990609</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:22;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-4239757-0957069\"><strong>order #114-4239757-0957069</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:23;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-8695306-6360228\"><strong>order #111-8695306-6360228</strong> has sku <strong>RC-19</strong> that is not found in system</a>\";}i:24;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4791875-0845802\"><strong>order #112-4791875-0845802</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:25;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6641302-7879425\"><strong>order #111-6641302-7879425</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:26;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-2986497-6093022\"><strong>order #114-2986497-6093022</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:27;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-7717258-2130611\"><strong>order #112-7717258-2130611</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:28;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-1858343-8253016\"><strong>order #114-1858343-8253016</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:29;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-5348109-1690618\"><strong>order #111-5348109-1690618</strong> has sku <strong>RC-23</strong> that is not found in system</a>\";}i:30;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-0787298-1929824\"><strong>order #114-0787298-1929824</strong> has sku <strong>RC-06</strong> that is not found in system</a>\";}i:31;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-7567025-5730614\"><strong>order #114-7567025-5730614</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:32;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0356588-9887422\"><strong>order #113-0356588-9887422</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:33;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0356588-9887422\"><strong>order #113-0356588-9887422</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:34;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-5880867-7978623\"><strong>order #112-5880867-7978623</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:35;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-2995254-2728246\"><strong>order #113-2995254-2728246</strong> has sku <strong>NRC-91</strong> that is not found in system</a>\";}i:36;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9426200-4095432\"><strong>order #113-9426200-4095432</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:37;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:233:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4803444-2869042\"><strong>order #112-4803444-2869042</strong> has sku <strong>GNRC-91</strong> that is not found in system</a>\";}i:38;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-9036888-6450623\"><strong>order #112-9036888-6450623</strong> has sku <strong>RC-03</strong> that is not found in system</a>\";}i:39;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0987495-2197811\"><strong>order #113-0987495-2197811</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:40;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-7887162-8311433\"><strong>order #114-7887162-8311433</strong> has sku <strong>GRC-18</strong> that is not found in system</a>\";}i:41;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-7602260-2249860\"><strong>order #113-7602260-2249860</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:42;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-2777449-1163447\"><strong>order #114-2777449-1163447</strong> has sku <strong>RC-13</strong> that is not found in system</a>\";}i:43;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-8758558-3955431\"><strong>order #113-8758558-3955431</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:44;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9279934-4372210\"><strong>order #113-9279934-4372210</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:45;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-9564440-1368229\"><strong>order #112-9564440-1368229</strong> has sku <strong>RC-99</strong> that is not found in system</a>\";}i:46;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:233:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6891439-1595431\"><strong>order #111-6891439-1595431</strong> has sku <strong>GNRC-91</strong> that is not found in system</a>\";}i:47;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-8458075-8369012\"><strong>order #111-8458075-8369012</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:48;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-8213951-1156227\"><strong>order #114-8213951-1156227</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:49;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1691001-3489054\"><strong>order #112-1691001-3489054</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:50;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1691001-3489054\"><strong>order #112-1691001-3489054</strong> has sku <strong>GRC-02</strong> that is not found in system</a>\";}i:51;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-3342593-9232202\"><strong>order #113-3342593-9232202</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:52;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:60:\"<strong>Total: 50; Success: 0; Warning: 0; Fail: 50</strong>\";}}'),
(7949, 7, 0, 1, '2018-02-23 20:55:07', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7950, 7, 0, 1, '2018-02-23 21:23:36', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7951, 7, 0, 1, '2018-02-23 21:24:36', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7952, 7, 0, 1, '2018-02-23 21:28:58', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7953, 7, 0, 1, '2018-02-23 21:29:02', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7954, 7, 0, 1, '2018-02-23 21:29:04', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7955, 7, 0, 1, '2018-02-23 21:29:07', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7956, 7, 0, 1, '2018-02-23 21:32:14', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7957, 7, 0, 1, '2018-02-23 21:32:45', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7958, 7, 0, 1, '2018-02-23 21:32:47', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7959, 7, 0, 1, '2018-02-23 21:32:48', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7960, 7, 0, 1, '2018-02-23 21:32:51', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7961, 7, 0, 1, '2018-02-23 21:32:53', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7962, 7, 0, 1, '2018-02-23 21:33:01', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7963, 7, 0, 1, '2018-02-23 21:34:03', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7964, 7, 0, 3, '2018-02-23 21:35:25', 'a:53:{i:0;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-0181662-9357810\"><strong>order #114-0181662-9357810</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:1;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-2971655-7934617\"><strong>order #112-2971655-7934617</strong> has sku <strong>RC-02</strong> that is not found in system</a>\";}i:2;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4246831-8235458\"><strong>order #112-4246831-8235458</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:3;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-8312391-1669002\"><strong>order #114-8312391-1669002</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:4;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-9137746-1574642\"><strong>order #114-9137746-1574642</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:5;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6824140-5936245\"><strong>order #111-6824140-5936245</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:6;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-1180404-0892237\"><strong>order #111-1180404-0892237</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:7;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1183090-6562651\"><strong>order #112-1183090-6562651</strong> has sku <strong>RC-03</strong> that is not found in system</a>\";}i:8;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9303347-2641045\"><strong>order #113-9303347-2641045</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:9;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-0034442-4652220\"><strong>order #112-0034442-4652220</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:10;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-6831212-3234613\"><strong>order #114-6831212-3234613</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:11;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0132915-3307450\"><strong>order #113-0132915-3307450</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:12;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-3107604-0209022\"><strong>order #113-3107604-0209022</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:13;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-0166974-0109050\"><strong>order #111-0166974-0109050</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:14;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-3822949-9031418\"><strong>order #112-3822949-9031418</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:15;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-6824546-8041009\"><strong>order #113-6824546-8041009</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:16;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-1145529-8164250\"><strong>order #113-1145529-8164250</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:17;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-7781420-8549056\"><strong>order #113-7781420-8549056</strong> has sku <strong>GRC-99</strong> that is not found in system</a>\";}i:18;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-7538891-8273860\"><strong>order #112-7538891-8273860</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:19;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-7991801-8102612\"><strong>order #111-7991801-8102612</strong> has sku <strong>NRC-06</strong> that is not found in system</a>\";}i:20;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-8254114-5190649\"><strong>order #112-8254114-5190649</strong> has sku <strong>RC-02</strong> that is not found in system</a>\";}i:21;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-4673299-4990609\"><strong>order #113-4673299-4990609</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:22;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-4239757-0957069\"><strong>order #114-4239757-0957069</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:23;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-8695306-6360228\"><strong>order #111-8695306-6360228</strong> has sku <strong>RC-19</strong> that is not found in system</a>\";}i:24;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4791875-0845802\"><strong>order #112-4791875-0845802</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:25;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6641302-7879425\"><strong>order #111-6641302-7879425</strong> has sku <strong>RC-12</strong> that is not found in system</a>\";}i:26;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-2986497-6093022\"><strong>order #114-2986497-6093022</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:27;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-7717258-2130611\"><strong>order #112-7717258-2130611</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:28;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-1858343-8253016\"><strong>order #114-1858343-8253016</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:29;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-5348109-1690618\"><strong>order #111-5348109-1690618</strong> has sku <strong>RC-23</strong> that is not found in system</a>\";}i:30;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-0787298-1929824\"><strong>order #114-0787298-1929824</strong> has sku <strong>RC-06</strong> that is not found in system</a>\";}i:31;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-7567025-5730614\"><strong>order #114-7567025-5730614</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:32;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0356588-9887422\"><strong>order #113-0356588-9887422</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:33;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0356588-9887422\"><strong>order #113-0356588-9887422</strong> has sku <strong>RC-18</strong> that is not found in system</a>\";}i:34;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-5880867-7978623\"><strong>order #112-5880867-7978623</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:35;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-2995254-2728246\"><strong>order #113-2995254-2728246</strong> has sku <strong>NRC-91</strong> that is not found in system</a>\";}i:36;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9426200-4095432\"><strong>order #113-9426200-4095432</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:37;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:233:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-4803444-2869042\"><strong>order #112-4803444-2869042</strong> has sku <strong>GNRC-91</strong> that is not found in system</a>\";}i:38;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-9036888-6450623\"><strong>order #112-9036888-6450623</strong> has sku <strong>RC-03</strong> that is not found in system</a>\";}i:39;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-0987495-2197811\"><strong>order #113-0987495-2197811</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:40;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-7887162-8311433\"><strong>order #114-7887162-8311433</strong> has sku <strong>GRC-18</strong> that is not found in system</a>\";}i:41;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-7602260-2249860\"><strong>order #113-7602260-2249860</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:42;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-2777449-1163447\"><strong>order #114-2777449-1163447</strong> has sku <strong>RC-13</strong> that is not found in system</a>\";}i:43;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-8758558-3955431\"><strong>order #113-8758558-3955431</strong> has sku <strong>RC-28</strong> that is not found in system</a>\";}i:44;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-9279934-4372210\"><strong>order #113-9279934-4372210</strong> has sku <strong>GD-61</strong> that is not found in system</a>\";}i:45;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-9564440-1368229\"><strong>order #112-9564440-1368229</strong> has sku <strong>RC-99</strong> that is not found in system</a>\";}i:46;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:233:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-6891439-1595431\"><strong>order #111-6891439-1595431</strong> has sku <strong>GNRC-91</strong> that is not found in system</a>\";}i:47;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=111-8458075-8369012\"><strong>order #111-8458075-8369012</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:48;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=114-8213951-1156227\"><strong>order #114-8213951-1156227</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:49;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:231:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=113-3342593-9232202\"><strong>order #113-3342593-9232202</strong> has sku <strong>GD-62</strong> that is not found in system</a>\";}i:50;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1691001-3489054\"><strong>order #112-1691001-3489054</strong> has sku <strong>GRC-16</strong> that is not found in system</a>\";}i:51;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:232:\"<a target=\"_blank\" href=\"http://intawarehouse.com/admin/store/store_sale_sync/sale_detail?store_sale_id=112-1691001-3489054\"><strong>order #112-1691001-3489054</strong> has sku <strong>GRC-02</strong> that is not found in system</a>\";}i:52;a:2:{s:5:\"level\";i:2;s:7:\"content\";s:60:\"<strong>Total: 50; Success: 0; Warning: 0; Fail: 50</strong>\";}}'),
(7965, 7, 0, 1, '2018-02-23 21:39:53', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7966, 7, 0, 1, '2018-02-23 21:41:01', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7967, 7, 0, 1, '2018-02-23 21:45:05', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7968, 7, 0, 1, '2018-02-23 21:45:06', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7969, 7, 0, 1, '2018-02-23 21:45:07', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7970, 7, 0, 1, '2018-02-23 21:45:19', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7971, 7, 0, 1, '2018-02-23 21:45:21', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7972, 7, 0, 1, '2018-02-23 21:45:23', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7974, 7, 0, 1, '2018-02-23 21:50:45', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7975, 7, 0, 1, '2018-02-23 21:51:28', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7976, 7, 0, 1, '2018-02-23 21:53:23', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7977, 7, 0, 1, '2018-02-23 21:53:56', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7978, 7, 0, 1, '2018-02-23 21:58:01', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7979, 7, 0, 1, '2018-02-23 21:58:02', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7980, 7, 0, 1, '2018-02-23 21:58:06', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7981, 7, 0, 1, '2018-02-23 21:59:18', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}'),
(7982, 7, 0, 1, '2018-02-23 22:00:02', 'a:2:{i:0;a:2:{s:5:\"level\";i:1;s:7:\"content\";s:76:\"<i class=\"fa fa-exclamation-triangle\"></i>&nbsp;no order fetched from amazon\";}i:1;a:2:{s:5:\"level\";i:0;s:7:\"content\";s:58:\"<strong>Total: 0; Success: 0; Warning: 0; Fail: 0</strong>\";}}');

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
(711, 23, NULL, NULL, '500.00', '200.00', '700.00', '', '2018-04-04 01:48:03', '2018-04-04 01:48:03'),
(712, 19, 'location', 0, '20.00', '0.00', '20.00', '', '2018-04-20 01:56:48', '2018-04-20 01:56:48'),
(713, 20, 'location', 0, '20.00', '0.00', '20.00', '', '2018-04-20 01:56:49', '2018-04-20 01:56:49'),
(714, 21, 'location', 0, '20.00', '0.00', '20.00', '', '2018-04-20 01:56:49', '2018-04-20 01:56:49'),
(715, 22, 'location', 0, '20.00', '0.00', '20.00', '', '2018-04-20 01:56:49', '2018-04-20 01:56:49'),
(716, 23, NULL, NULL, '20.00', '0.00', '20.00', '', '2018-04-20 01:56:49', '2018-04-24 02:09:35');

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
(1, 1, 'admin', '30163f76fa883e3e3d8f0d13f413af99a4d8a02c', '323', 'Tio', 'Cong', 'admin@intawarehouse.com', '', '', '::1', 1, '2017-02-13 11:42:29');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51670;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5464;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `sale_fee`
--
ALTER TABLE `sale_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1255;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23043;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7983;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=717;

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
