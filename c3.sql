-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2018 at 07:03 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

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
(4378, 1, '::1', 'setting/activity_log', 'view the activity log page', 'GET', '2018-09-06 20:12:27'),
(4379, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:12:33'),
(4380, 1, '::1', 'setting/activity_log', 'view the activity log page', 'GET', '2018-09-06 20:12:36'),
(4381, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-09-06 20:12:49'),
(4382, 1, '::1', 'warehouse/warehouse', 'view the warehouse page', 'GET', '2018-09-06 20:12:50'),
(4383, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:13:19'),
(4384, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:13:21'),
(4385, 1, '::1', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-09-06 20:13:21'),
(4386, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:13:23'),
(4387, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:13:24'),
(4388, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:21:42'),
(4389, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:22:02'),
(4390, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:22:04'),
(4391, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:22:05'),
(4392, 1, '::1', 'extension/fee/get_checkin_fees', '0', 'POST', '2018-09-06 20:22:06'),
(4393, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:22:11'),
(4394, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-09-06 20:22:12'),
(4395, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 20:22:14'),
(4396, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:22:15'),
(4397, 1, '::1', 'extension/fee/get_checkout_fees', '0', 'POST', '2018-09-06 20:22:15'),
(4398, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 20:22:15'),
(4399, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 20:22:15'),
(4400, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 20:22:16'),
(4401, 1, '::1', 'extension/fee/get_checkout_fees', '0', 'POST', '2018-09-06 20:22:17'),
(4402, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 20:22:17'),
(4403, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:22:17'),
(4404, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 20:22:17'),
(4405, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-09-06 20:24:15'),
(4406, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 20:24:17'),
(4407, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 20:24:19'),
(4408, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 20:24:20'),
(4409, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 20:24:20'),
(4410, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 20:24:20'),
(4411, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:24:20'),
(4412, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:24:21'),
(4413, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:24:41'),
(4414, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:24:46'),
(4415, 1, '::1', 'fee/checkin_weight', '0', 'GET', '2018-09-06 20:24:48'),
(4416, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:24:53'),
(4417, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:24:54'),
(4418, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:24:56'),
(4419, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:24:57'),
(4420, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:24:59'),
(4421, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:24:59'),
(4422, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:25:03'),
(4423, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:25:04'),
(4424, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 20:25:05'),
(4425, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:25:19'),
(4426, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 20:25:26'),
(4427, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:25:26'),
(4428, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:25:27'),
(4429, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:25:30'),
(4430, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:25:33'),
(4431, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:25:35'),
(4432, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:25:37'),
(4433, 1, '::1', 'finance/transaction/edit', 'view the transaction edit page', 'GET', '2018-09-06 20:26:01'),
(4434, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:26:02'),
(4435, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:06'),
(4436, 1, '::1', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-09-06 20:26:08'),
(4437, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:09'),
(4438, 1, '::1', 'check/checkin_scan', 'view the scan checkin page', 'GET', '2018-09-06 20:26:26'),
(4439, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:26'),
(4440, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:26:28'),
(4441, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:29'),
(4442, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-09-06 20:26:31'),
(4443, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:33'),
(4444, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:26:36'),
(4445, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:38'),
(4446, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 20:26:41'),
(4447, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 20:26:41'),
(4448, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:26:43'),
(4449, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:26:46'),
(4450, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:26:48'),
(4451, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 20:26:51'),
(4452, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 20:26:51'),
(4453, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:27:17'),
(4454, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 20:27:19'),
(4455, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 20:27:19'),
(4456, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:27:22'),
(4457, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:27:23'),
(4458, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:27:25'),
(4459, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:27:34'),
(4460, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:27:36'),
(4461, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:27:37'),
(4462, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:27:41'),
(4463, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:27:44'),
(4464, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:27:46'),
(4465, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:27:48'),
(4466, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:27:50'),
(4467, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:27:52'),
(4468, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:27:53'),
(4469, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:27:56'),
(4470, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:27:59'),
(4471, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:28:04'),
(4472, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:28:05'),
(4473, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 20:28:06'),
(4474, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:29:09'),
(4475, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:29:12'),
(4476, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:29:16'),
(4477, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:29:18'),
(4478, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:29:31'),
(4479, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:29:31'),
(4480, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:29:34'),
(4481, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:29:35'),
(4482, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:29:36'),
(4483, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:29:39'),
(4484, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:29:40'),
(4485, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:29:44'),
(4486, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:29:44'),
(4487, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2018-09-06 20:29:46'),
(4488, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 20:29:49'),
(4489, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2018-09-06 20:29:51'),
(4490, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:29:51'),
(4491, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:29:54'),
(4492, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:29:58'),
(4493, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:30:07'),
(4494, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:31:09'),
(4495, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:31:10'),
(4496, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:31:26'),
(4497, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:31:27'),
(4498, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:31:28'),
(4499, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:31:30'),
(4500, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:31:35'),
(4501, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:31:37'),
(4502, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:31:41'),
(4503, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:31:44'),
(4504, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:31:45'),
(4505, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:31:47'),
(4506, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 20:31:51'),
(4507, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 20:31:54'),
(4508, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 20:31:55'),
(4509, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:31:59'),
(4510, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:32:02'),
(4511, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 20:32:07'),
(4512, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:32:07'),
(4513, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2018-09-06 20:32:16'),
(4514, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:32:16'),
(4515, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:32:18'),
(4516, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:32:22'),
(4517, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2018-09-06 20:32:25'),
(4518, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:32:26'),
(4519, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2018-09-06 20:32:30'),
(4520, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:32:32'),
(4521, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 20:32:35'),
(4522, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:32:35'),
(4523, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:32:38'),
(4524, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2018-09-06 20:32:40'),
(4525, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:32:41'),
(4526, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2018-09-06 20:32:43'),
(4527, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:32:44'),
(4528, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 20:32:47'),
(4529, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:32:47'),
(4530, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:32:49'),
(4531, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:32:57'),
(4532, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 20:32:59'),
(4533, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 20:32:59'),
(4534, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:33:02'),
(4535, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 20:33:22'),
(4536, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:33:22'),
(4537, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:33:26'),
(4538, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:33:27'),
(4539, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:33:31'),
(4540, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:33:42'),
(4541, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:33:43'),
(4542, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:33:49'),
(4543, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:34:43'),
(4544, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:35:16'),
(4545, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 20:35:21'),
(4546, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 20:35:21'),
(4547, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 20:35:23'),
(4548, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 20:35:23'),
(4549, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:35:32'),
(4550, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 20:35:48'),
(4551, 1, '::1', 'finance/recharge', 'view the recharge page', 'GET', '2018-09-06 20:35:49'),
(4552, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-09-06 20:35:51'),
(4553, 1, '::1', 'finance/fee', 'view the fee page', 'GET', '2018-09-06 20:35:55'),
(4554, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 20:36:08'),
(4555, 1, '::1', 'finance/recharge', 'view the recharge page', 'GET', '2018-09-06 20:36:09'),
(4556, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 20:36:10'),
(4557, 1, '::1', 'warehouse/location', 'view the location page', 'GET', '2018-09-06 20:36:11'),
(4558, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-09-06 20:36:18'),
(4559, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:36:23'),
(4560, 1, '::1', 'client/client', 'view the client page', 'GET', '2018-09-06 20:36:27'),
(4561, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:36:53'),
(4562, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-09-06 20:36:56'),
(4563, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:37:06'),
(4564, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:37:43'),
(4565, 1, '::1', 'fee/volume', '0', 'GET', '2018-09-06 20:37:47'),
(4566, 1, '::1', 'setting/about', 'view about', 'GET', '2018-09-06 20:38:07'),
(4567, 1, '::1', 'setting/about', 'view about', 'GET', '2018-09-06 20:38:37'),
(4568, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-06 20:38:50'),
(4569, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-06 20:38:50'),
(4570, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-06 20:40:15'),
(4571, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-06 20:40:15'),
(4572, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-06 20:40:38'),
(4573, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-06 20:40:38'),
(4574, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2018-09-06 20:40:41'),
(4575, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:40:54'),
(4576, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:43:00'),
(4577, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:43:05'),
(4578, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:44:26'),
(4579, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:44:29'),
(4580, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:45:24'),
(4581, 1, '::1', 'store/store_sync_history/clear', 'try to clear store sync history', 'GET', '2018-09-06 20:45:29'),
(4582, 1, '::1', 'store/store_sync_history', 'view the store sync history page', 'GET', '2018-09-06 20:45:29'),
(4583, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-06 20:46:33'),
(4584, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-09-06 20:46:34'),
(4585, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:47:53'),
(4586, 1, '::1', 'fee/checkin_weight', '0', 'GET', '2018-09-06 20:48:03'),
(4587, 1, '::1', 'fee/checkin_weight', '0', 'POST', '2018-09-06 20:48:07'),
(4588, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:48:07'),
(4589, 1, '::1', 'fee/checkin_weight', '0', 'GET', '2018-09-06 20:48:09'),
(4590, 1, '::1', 'fee/checkin_weight', '0', 'POST', '2018-09-06 20:48:13'),
(4591, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:48:13'),
(4592, 1, '::1', 'fee/checkin_weight', '0', 'GET', '2018-09-06 20:48:15'),
(4593, 1, '::1', 'fee/checkin_weight', '0', 'GET', '2018-09-06 20:49:48'),
(4594, 1, '::1', 'fee/checkin_weight', '0', 'POST', '2018-09-06 20:49:53'),
(4595, 1, '::1', 'fee/checkin_weight', '0', 'POST', '2018-09-06 20:49:57'),
(4596, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:49:57'),
(4597, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:50:22'),
(4598, 1, '::1', 'fee/checkout_weight', '0', 'GET', '2018-09-06 20:50:24'),
(4599, 1, '::1', 'fee/checkout_weight', '0', 'POST', '2018-09-06 20:50:27'),
(4600, 1, '::1', 'fee/checkout_weight', '0', 'POST', '2018-09-06 20:50:33'),
(4601, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:50:33'),
(4602, 1, '::1', 'extension/fee', 'view the extension fee page', 'GET', '2018-09-06 20:50:46'),
(4603, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-06 20:50:51'),
(4604, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-06 20:50:51'),
(4605, 1, '::1', 'setting/setting', 'view the setting page', 'POST', '2018-09-06 20:50:57'),
(4606, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-06 20:50:58'),
(4607, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-06 20:50:58'),
(4608, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2018-09-06 20:51:57'),
(4609, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-09-06 20:51:57'),
(4610, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-09-06 20:52:40'),
(4611, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-09-06 20:52:53'),
(4612, NULL, '::1', 'common/login', 'view the login page', 'GET', '2018-09-06 20:53:08'),
(4613, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-09-06 20:53:09'),
(4614, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2018-09-06 20:53:09'),
(4615, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2018-09-06 20:53:12'),
(4616, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:53:14'),
(4617, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:53:19'),
(4618, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:54:24'),
(4619, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:54:27'),
(4620, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:54:28'),
(4621, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:54:30'),
(4622, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:54:30'),
(4623, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 20:54:34'),
(4624, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 20:54:36'),
(4625, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 20:54:41'),
(4626, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:54:41'),
(4627, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:54:44'),
(4628, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-06 20:54:54'),
(4629, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:55:03'),
(4630, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 20:55:06'),
(4631, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 20:55:08'),
(4632, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 20:55:08'),
(4633, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:55:14'),
(4634, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 20:55:15'),
(4635, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:55:20'),
(4636, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:55:24'),
(4637, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 20:55:27'),
(4638, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 20:55:27'),
(4639, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:55:28'),
(4640, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 20:55:33'),
(4641, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:55:37'),
(4642, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:55:38'),
(4643, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 20:55:40'),
(4644, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 20:55:40'),
(4645, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:55:41'),
(4646, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 20:55:43'),
(4647, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:55:44'),
(4648, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:55:46'),
(4649, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:55:46'),
(4650, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:55:50'),
(4651, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 20:55:50'),
(4652, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 20:55:55'),
(4653, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 20:55:58'),
(4654, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 20:56:00'),
(4655, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 20:56:00'),
(4656, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:56:02'),
(4657, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:56:02'),
(4658, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 20:56:05'),
(4659, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 20:56:05'),
(4660, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:56:07'),
(4661, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 20:56:08'),
(4662, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:01:24'),
(4663, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 21:01:28'),
(4664, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:01:32'),
(4665, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 21:01:34'),
(4666, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:01:35'),
(4667, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:40'),
(4668, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:40'),
(4669, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:41'),
(4670, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:41'),
(4671, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:43'),
(4672, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:43'),
(4673, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:44'),
(4674, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:44'),
(4675, 1, '::1', 'finance/transaction/edit', 'view the transaction edit page', 'GET', '2018-09-06 21:01:45'),
(4676, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:01:47'),
(4677, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:49'),
(4678, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:50'),
(4679, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:51'),
(4680, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:51'),
(4681, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:54'),
(4682, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:54'),
(4683, 1, '::1', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2018-09-06 21:01:55'),
(4684, 1, '::1', 'finance/transaction/reload', 'reload transaction page', 'GET', '2018-09-06 21:01:55'),
(4685, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:01:57'),
(4686, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 21:01:58'),
(4687, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:01:59'),
(4688, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:02:05'),
(4689, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:02:14'),
(4690, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:02:14'),
(4691, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:02:19'),
(4692, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:02:42'),
(4693, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:02:44'),
(4694, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:02:54'),
(4695, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 21:02:59'),
(4696, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:03:01'),
(4697, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:03'),
(4698, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:04'),
(4699, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:05'),
(4700, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:05'),
(4701, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:07'),
(4702, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:07'),
(4703, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:09'),
(4704, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:09'),
(4705, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:10'),
(4706, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:10'),
(4707, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:12'),
(4708, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:12'),
(4709, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:03:13'),
(4710, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:03:13'),
(4711, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:03:15'),
(4712, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 21:03:16'),
(4713, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:23'),
(4714, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:23'),
(4715, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:27'),
(4716, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:27'),
(4717, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:28'),
(4718, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:31'),
(4719, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 21:03:32'),
(4720, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:33'),
(4721, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:35'),
(4722, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:03:35'),
(4723, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2018-09-06 21:03:40'),
(4724, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 21:03:42'),
(4725, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'POST', '2018-09-06 21:03:44'),
(4726, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:03:44'),
(4727, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 21:03:48'),
(4728, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:03:50'),
(4729, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:03:53'),
(4730, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:03:54'),
(4731, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 21:03:57'),
(4732, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:03:58'),
(4733, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:04:02'),
(4734, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:04:06'),
(4735, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:04:06'),
(4736, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:04:09'),
(4737, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:04:11'),
(4738, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'GET', '2018-09-06 21:04:14'),
(4739, 1, '::1', 'check/checkin_ajax/get_product', 'try to get checkin product', 'POST', '2018-09-06 21:04:16'),
(4740, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:04:17'),
(4741, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:04:19'),
(4742, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:04:19'),
(4743, 1, '::1', 'extension/fee/get_checkin_fees', 'try to get checkin fee', 'POST', '2018-09-06 21:04:19'),
(4744, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 21:04:20'),
(4745, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2018-09-06 21:04:22'),
(4746, 1, '::1', 'check/checkin/add', 'view the checkin add page', 'POST', '2018-09-06 21:04:24'),
(4747, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:04:24'),
(4748, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2018-09-06 21:04:26'),
(4749, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-06 21:04:29'),
(4750, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:04:31'),
(4751, 1, '::1', 'check/checkin_ajax/change_status', '0', 'GET', '2018-09-06 21:04:33'),
(4752, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:04:34'),
(4753, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:04:38'),
(4754, 1, '::1', 'check/checkin/delete', 'delete a checkout', 'GET', '2018-09-06 21:04:42'),
(4755, 1, '::1', 'check/checkin/reload', '0', 'GET', '2018-09-06 21:04:42'),
(4756, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:04:44'),
(4757, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:04:48'),
(4758, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:04:52'),
(4759, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:04:52'),
(4760, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:04:54'),
(4761, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:04:54'),
(4762, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:04:56'),
(4763, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:04:56'),
(4764, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:04:58'),
(4765, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:04:58'),
(4766, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:00'),
(4767, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:00'),
(4768, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:04'),
(4769, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:04'),
(4770, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:06'),
(4771, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:06'),
(4772, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:07'),
(4773, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:07'),
(4774, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:09'),
(4775, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:10'),
(4776, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:11'),
(4777, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:11'),
(4778, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:13'),
(4779, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:13'),
(4780, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 21:05:16'),
(4781, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:05:17'),
(4782, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:05:21'),
(4783, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:05:21'),
(4784, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:05:21'),
(4785, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 21:05:23'),
(4786, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:05:24'),
(4787, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:05:24'),
(4788, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:05:24'),
(4789, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:05:24'),
(4790, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:05:27'),
(4791, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:05:27'),
(4792, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:05:27'),
(4793, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:05:27'),
(4794, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:05:27'),
(4795, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:05:27'),
(4796, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:05:27'),
(4797, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:05:27'),
(4798, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:05:27'),
(4799, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2018-09-06 21:05:31'),
(4800, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:05:31'),
(4801, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:05:41'),
(4802, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:05:41'),
(4803, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:06:03'),
(4804, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-09-06 21:06:05'),
(4805, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 21:06:06'),
(4806, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:06:07'),
(4807, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:07'),
(4808, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:07'),
(4809, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:07'),
(4810, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:11'),
(4811, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:11'),
(4812, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:11'),
(4813, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:11'),
(4814, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:11'),
(4815, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:11'),
(4816, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-09-06 21:06:12'),
(4817, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:06:12'),
(4818, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-09-06 21:06:20'),
(4819, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:06:20'),
(4820, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:06:23'),
(4821, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:06:23'),
(4822, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:06:24'),
(4823, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:06:24'),
(4824, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'GET', '2018-09-06 21:06:25'),
(4825, 1, '::1', 'check/checkout_ajax/get_product', 'get checkout product', 'POST', '2018-09-06 21:06:27'),
(4826, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:06:28'),
(4827, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:28'),
(4828, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:28'),
(4829, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:28'),
(4830, 1, '::1', 'check/checkout/add', 'view the checkout add page', 'POST', '2018-09-06 21:06:30'),
(4831, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:06:31'),
(4832, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 21:06:33'),
(4833, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:06:34'),
(4834, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:35'),
(4835, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:35'),
(4836, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:35'),
(4837, 1, '::1', 'catalog/product_ajax/get_products_weight', 'try to get product weight', 'POST', '2018-09-06 21:06:36'),
(4838, 1, '::1', 'catalog/product_ajax/get_products_volume', 'try to get product volume', 'POST', '2018-09-06 21:06:36'),
(4839, 1, '::1', 'extension/fee/get_checkout_fees', 'try to get checkout fee', 'POST', '2018-09-06 21:06:36'),
(4840, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'POST', '2018-09-06 21:06:37'),
(4841, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:06:37'),
(4842, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2018-09-06 21:06:39'),
(4843, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2018-09-06 21:06:39'),
(4844, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:06:44'),
(4845, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2018-09-06 21:06:49'),
(4846, 1, '::1', 'check/checkout_ajax/change_status', 'try to change checkout status', 'GET', '2018-09-06 21:06:52'),
(4847, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2018-09-06 21:06:54'),
(4848, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:06:56'),
(4849, 1, '::1', 'check/checkout/delete', 'try to delete a checkout', 'GET', '2018-09-06 21:06:59'),
(4850, 1, '::1', 'check/checkout/reload', 'reload checkout listing page', 'GET', '2018-09-06 21:06:59'),
(4851, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2018-09-06 21:07:00'),
(4852, NULL, '::1', '', 'view the dashboard', 'GET', '2018-09-09 06:52:36'),
(4853, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-09-09 06:52:41'),
(4854, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-09-09 06:52:49'),
(4855, NULL, '::1', 'common/login', 'view the login page', 'POST', '2018-09-09 06:52:52'),
(4856, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2018-09-09 06:52:52'),
(4857, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2018-09-09 06:53:04'),
(4858, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2018-09-09 06:53:05'),
(4859, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-09-09 06:53:07'),
(4860, 1, '::1', 'user/user/edit', 'view the user edit page', 'GET', '2018-09-09 06:53:09'),
(4861, 1, '::1', 'user/user/edit', 'view the user edit page', 'POST', '2018-09-09 06:53:26'),
(4862, 1, '::1', 'user/user', 'view the user page', 'GET', '2018-09-09 06:53:26'),
(4863, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2018-09-09 06:53:33'),
(4864, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-09 06:53:51'),
(4865, 1, '::1', 'catalog/product_import', 'view the product import page', 'GET', '2018-09-09 06:57:51'),
(4866, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-09-09 06:59:56'),
(4867, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2018-09-09 07:00:41'),
(4868, 1, '::1', 'inventory/inventory_import', 'view the inventory import page', 'GET', '2018-09-09 07:00:43'),
(4869, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2018-09-09 07:00:44'),
(4870, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-09 07:00:47'),
(4871, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2018-09-09 07:00:48'),
(4872, 1, '::1', 'catalog/product_import', 'view the product import page', 'GET', '2018-09-09 07:00:48'),
(4873, 1, '::1', 'catalog/product_import/upload', '0', 'POST', '2018-09-09 07:00:55'),
(4874, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-09 07:00:58'),
(4875, 1, '::1', 'catalog/product/edit', 'view the product edit page', 'GET', '2018-09-09 07:01:06'),
(4876, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2018-09-09 07:01:11');

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
(2, 2, '-252.00');

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
(60, 18, 'checkin fee by weight', '10.83');

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
  `name` varchar(255) NOT NULL,
  `amount` double(15,2) NOT NULL
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
(1, '', 'a64e29f468e9948a4877866c661fd58f84d9933f', '34', '649790223@qq.com', 1, 'Arron', 'Dong', 'Arron Inc', '', '', '', '', '', '1386523650'),
(2, '', '0d752cdeba0a851675afde29aadd715a8cdcce16', '957', 'd15875325129@outlook.com', 1, 'Huang', 'Xiaojian', 'Huang Inc', '', '', '', '', '', '1386203696');

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
(2, 2, 'Emily Taggart', '', '', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', 'US', '54981', ''),
(3, 1, 'Ashley Azzarella', '', '', '5147 Cadagan court', '', 'Bensalem', 'Pennsylvania', 'US', '19020', '8433317201'),
(4, 1, 'Daniela Montalvo', '', '', '4725 Randall dr', '', 'Las Vegas', 'Nevada', 'US', '89122', '7024095967');

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
(123, 'fee', 'checkout_weight');

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
(92, 'X001D08AXL', 'NRC-91', '', 'NRC-91', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '8.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:55', '2018-09-09 07:00:55'),
(93, 'X000Y005WP', 'RC-02', '', 'RC-02', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:55', '2018-09-09 07:00:55'),
(94, 'X000Y005XJ', 'RC-03', '', 'RC-03', '0.00', 'no_image.jpg', NULL, '3.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:55', '2018-09-09 07:00:55'),
(95, 'X000Y005X9', 'RC-06', '', 'RC-06', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(96, 'X0016B6TV7', 'RC-10', '', 'RC-10', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '1.00', '1.00', '5.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(97, 'X00169XD95', 'RC-11', '', 'RC-11', '0.00', 'no_image.jpg', NULL, '10.00', 5, 1, '0.00', '0.00', '3.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(98, 'X00169OB87', 'RC-12', '', 'RC-12', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(99, 'X001CPSMEJ', 'RC-15', '', 'RC-15', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(100, 'X001CPMDPX', 'RC-16', '', 'RC-16', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(101, 'X001CQE0FD', 'RC-17', '', 'RC-17', '0.00', 'no_image.jpg', NULL, '10.00', 5, 1, '4.00', '9.00', '6.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(102, 'X001CQE0FX', 'RC-18', '', 'RC-18', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(103, 'X001CNW52B', 'RC-19', '', 'RC-19', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(104, 'X00177V42T', 'RC-21', '', 'RC-21', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(105, 'X001DNSXKD', 'RC-22', '', 'RC-22', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(106, 'X001DNSN67', 'RC-23', '', 'RC-23', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(107, 'X001DNSI67', 'RC-27', '', 'RC-27', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(108, 'X001DNP11H', 'RC-28', '', 'RC-28', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(109, 'X001DNSXK3', 'RC-31', '', 'RC-31', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(110, 'X001DNSW31', 'RC-32', '', 'RC-32', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(111, 'X001DNP1C1', 'RC-33', '', 'RC-33', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(112, 'X001DNT1H7', 'RC-34', '', 'RC-34', '0.00', 'no_image.jpg', NULL, '3.00', 5, 1, '5.00', '7.00', '10.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(113, 'X001GQIPSR', 'NRC-41', '', 'NRC-41', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '8.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(114, 'X001GQHV19', 'NRC-43', '', 'NRC-43', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(115, 'X001DTZDIR', 'RC-45', '', 'RC-45', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '1.00', '4.00', '2.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(116, 'X001E3MQ23', 'RC-47', '', 'RC-47', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56'),
(117, 'X001DOG9WL', 'RC-48', '', 'RC-48', '0.00', 'no_image.jpg', NULL, '0.00', 5, 1, '0.00', '0.00', '0.00', 0, 'postpony', 'pfg', 2, '2018-09-09 07:00:56', '2018-09-09 07:00:56');

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
(6, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '4.00', '4.00', '2.00', '0.20', 1, 5, 'usps', 'fc', '200.00', '', 2, '', '2018-06-22 01:24:57', '2018-06-25 19:17:21'),
(7, 0, '', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'US', '', '', '3.00', '4.00', '2.00', '0.20', 1, 5, 'usps', 'fc', '450.00', '', 1, '', '2018-06-25 19:17:41', '2018-07-21 20:02:55'),
(8, 2, '5b578d08ac658917522297ab', 'Ashley Azzarella', '5147 Cadagan court', '', 'Bensalem', 'Pennsylvania', '19020', 'US', '', '8433317201', '11.00', '11.00', '4.00', '1.56', 1, 5, '', '', '17.83', '', 1, '', '2018-07-24 20:33:12', '0000-00-00 00:00:00'),
(9, 2, '5b5bd689b1f52b56128cf1e3', 'Daniela Montalvo', '4725 Randall dr', '', 'Las Vegas', 'Nevada', '89122', 'US', '', '7024095967', '11.00', '11.00', '4.00', '1.56', 1, 5, '', '', '17.83', '', 1, '', '2018-07-28 02:35:53', '0000-00-00 00:00:00');

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
(16, 7, 4, 1, ''),
(17, 8, 83, 1, ''),
(18, 9, 83, 1, ''),
(19, 9, 83, 1, '');

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
(23816, 'usps', 'usps_client_fee', 'a:2:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"1\";}i:1;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(24401, 'config', 'config_printnode_general_printer_id', '431808', 0),
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
(24400, 'config', 'config_printnode_label_printer_id', '431808', 0),
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
(24399, 'config', 'config_printnode_api_key', 'ecc393aa3ff30e0dd3b27f40ce0a033dc9a7b948', 0),
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
(24398, 'config', 'config_printnode_width', '180', 0),
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
(23594, 'postpony', 'postpony_phone', '9098956073', 0),
(23593, 'postpony', 'postpony_owner', 'SHAN SUN', 0),
(23592, 'postpony', 'postpony_country', 'US', 0),
(24397, 'config', 'config_printnode_position_y', '20', 0),
(24396, 'config', 'config_printnode_position_x', '14', 0),
(24395, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(24394, 'config', 'config_location_barcode_batch_margin', '200', 0),
(24393, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(24392, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(24391, 'config', 'config_location_barcode_batch_posy', '20', 0),
(24390, 'config', 'config_location_barcode_batch_posx', '10', 0),
(24389, 'config', 'config_location_barcode_batch_height', '300', 0),
(24388, 'config', 'config_location_barcode_batch_width', '630', 0),
(24387, 'config', 'config_location_barcode_code_size', '80', 0),
(24386, 'config', 'config_location_barcode_name_size', '200', 0),
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
(24385, 'config', 'config_location_barcode_posy', '200', 0),
(24384, 'config', 'config_location_barcode_posx', '1', 0),
(24383, 'config', 'config_location_barcode_height', '400', 0),
(24382, 'config', 'config_location_barcode_width', '6', 0),
(24381, 'config', 'config_label_posy', '0', 0),
(24380, 'config', 'config_label_width', '60', 0),
(24379, 'config', 'config_label_width_type', '0', 0),
(24378, 'config', 'config_autocomplete_limit', '5', 0),
(24377, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(24376, 'config', 'config_dashboard_order_limit', '7', 0),
(24375, 'config', 'config_dashboard_activity_limit', '8', 0),
(24374, 'config', 'config_sale_product_page_limit', '15', 0),
(24373, 'config', 'config_page_limit', '10', 0),
(24372, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(24371, 'checkout_weight', 'checkout_weight_level_end', '2', 0),
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
(24369, 'checkout_weight', 'checkout_weight_sort_order', '1', 0),
(24365, 'checkin_weight', 'checkin_weight_level', 'a:1:{i:0;a:2:{s:6:\"weight\";s:2:\"50\";s:6:\"amount\";s:1:\"0\";}}', 1),
(24364, 'checkin_weight', 'checkin_weight_sort_order', '0', 0),
(24363, 'checkin_weight', 'checkin_weight_status', '1', 0),
(24362, 'checkin_weight', 'checkin_weight_type', 'checkin', 0),
(24370, 'checkout_weight', 'checkout_weight_level', 'a:1:{i:0;a:2:{s:6:\"weight\";s:2:\"20\";s:6:\"amount\";s:1:\"0\";}}', 1),
(24368, 'checkout_weight', 'checkout_weight_status', '1', 0),
(24367, 'checkout_weight', 'checkout_weight_type', 'checkout', 0),
(24402, 'config', 'config_language_id', '5', 0),
(24403, 'config', 'config_information_front_id', '5', 0),
(24404, 'config', 'config_length_class_id', '1', 0),
(24405, 'config', 'config_weight_class_id', '5', 0),
(24406, 'config', 'config_logo', '', 0),
(24407, 'config', 'config_default_order_shipping_provider', 'postpony', 0),
(24408, 'config', 'config_default_order_shipping_service', 'pfg', 0),
(24409, 'config', 'config_smtp_hostname', '', 0),
(24410, 'config', 'config_smtp_username', '', 0),
(24411, 'config', 'config_smtp_password', '', 0),
(24412, 'config', 'config_smtp_port', '', 0),
(24413, 'config', 'config_smtp_timeout', '', 0);

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
(1, 1, 'Arron 2894355100', 'wish', 'a:5:{s:5:\"token\";s:32:\"70bcc38ae06d431a997f6a14046e6fdc\";s:14:\"download_limit\";s:2:\"20\";s:12:\"upload_limit\";s:2:\"20\";s:11:\"recent_days\";s:2:\"10\";s:5:\"order\";s:1:\"0\";}', 1, 'usps', 'fc', 0, 0, 1, 0, NULL),
(2, 1, 'Arron 312988716', 'wish', 'a:5:{s:5:\"token\";s:32:\"ba554f0963624b7e9ca084a621cc5d9f\";s:14:\"download_limit\";s:2:\"10\";s:12:\"upload_limit\";s:3:\"100\";s:11:\"recent_days\";s:1:\"5\";s:5:\"order\";s:1:\"1\";}', 1, 'usps', 'fc', 0, 0, 1, 0, NULL),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4877;
--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `checkin_fee`
--
ALTER TABLE `checkin_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `checkin_file`
--
ALTER TABLE `checkin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkin_product`
--
ALTER TABLE `checkin_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `checkout_fee`
--
ALTER TABLE `checkout_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `checkout_file`
--
ALTER TABLE `checkout_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkout_product`
--
ALTER TABLE `checkout_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24414;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `store_sync_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
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
