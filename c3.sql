-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 08:27 PM
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
(21607, 1, '104.33.51.55', 'log/activity_log', 'view the activity log page', 'GET', '2020-04-17 11:08:31'),
(21608, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-17 11:08:33'),
(21609, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-04-17 11:08:38'),
(21610, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2020-04-17 11:08:40'),
(21611, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:08:41'),
(21612, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:10:08'),
(21613, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:10:10'),
(21614, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:14:43'),
(21615, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:15:09'),
(21616, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-17 11:15:26'),
(21617, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:16:40'),
(21618, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:46'),
(21619, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:46'),
(21620, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:47'),
(21621, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:47'),
(21622, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:47'),
(21623, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:47'),
(21624, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:49'),
(21625, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:49'),
(21626, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:50'),
(21627, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:50'),
(21628, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:51'),
(21629, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:51'),
(21630, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:52'),
(21631, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21632, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21633, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21634, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21635, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21636, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21637, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21638, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21639, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21640, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21641, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:53'),
(21642, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:54'),
(21643, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:54'),
(21644, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:55'),
(21645, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:55'),
(21646, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:56'),
(21647, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:56'),
(21648, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:56'),
(21649, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:56'),
(21650, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:16:57'),
(21651, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-17 11:17:06'),
(21652, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:17:35'),
(21653, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:17:45'),
(21654, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 11:17:54'),
(21655, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:17:57'),
(21656, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:17:58'),
(21657, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:02'),
(21658, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:02'),
(21659, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:02'),
(21660, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:02'),
(21661, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:03'),
(21662, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:03'),
(21663, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:03'),
(21664, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:04'),
(21665, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:04'),
(21666, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:04'),
(21667, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:04'),
(21668, 1, '104.33.51.55', 'sale/sale/filter', '0', 'GET', '2020-04-17 11:18:04'),
(21669, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:18:14'),
(21670, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:18:24'),
(21671, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:18:36'),
(21672, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:18:44'),
(21673, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:18:46'),
(21674, 1, '104.33.51.55', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2020-04-17 11:19:03'),
(21675, 1, '104.33.51.55', 'finance/transaction/reload', 'reload transaction page', 'GET', '2020-04-17 11:19:03'),
(21676, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-17 11:19:13'),
(21677, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-17 13:05:08'),
(21678, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-17 13:05:08'),
(21679, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-17 13:07:27'),
(21680, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-17 13:07:30'),
(21681, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-17 13:07:39'),
(21682, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-17 13:07:51'),
(21683, NULL, '223.104.175.179', '', 'view the dashboard', 'GET', '2020-04-17 21:43:26'),
(21684, NULL, '223.104.175.179', 'common/login', 'view the login page', 'POST', '2020-04-17 21:44:11'),
(21685, 1, '223.104.175.179', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-17 21:44:24'),
(21686, NULL, '23.250.122.2', '', 'view the dashboard', 'GET', '2020-04-17 21:49:07'),
(21687, NULL, '42.236.10.125', 'common/login', 'view the login page', 'GET', '2020-04-17 23:14:36'),
(21688, NULL, '223.104.175.179', 'common/login', 'view the login page', 'GET', '2020-04-17 23:14:43'),
(21689, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-17 23:14:44'),
(21690, NULL, '42.236.10.84', '', 'view the dashboard', 'GET', '2020-04-17 23:14:54'),
(21691, NULL, '27.115.124.6', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:14'),
(21692, NULL, '42.236.10.75', '', 'view the dashboard', 'GET', '2020-04-17 23:15:15'),
(21693, NULL, '27.115.124.6', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:18'),
(21694, NULL, '223.104.175.179', 'common/login', 'view the login page', 'POST', '2020-04-17 23:15:20'),
(21695, 1, '223.104.175.179', 'sale/sale', 'view the order page', 'GET', '2020-04-17 23:15:20'),
(21696, NULL, '42.236.10.75', '', 'view the dashboard', 'GET', '2020-04-17 23:15:24'),
(21697, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:37'),
(21698, NULL, '27.115.124.70', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:37'),
(21699, 1, '223.104.175.179', 'sale/sale', 'view the order page', 'GET', '2020-04-17 23:15:41'),
(21700, NULL, '42.236.10.125', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:56'),
(21701, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2020-04-17 23:15:57'),
(21702, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-04-17 23:16:06'),
(21703, 1, '223.104.175.179', 'finance/balance', 'view the balance page', 'GET', '2020-04-17 23:16:15'),
(21704, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-17 23:16:21'),
(21705, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2020-04-17 23:16:35'),
(21706, 1, '223.104.175.179', 'finance/balance', 'view the balance page', 'GET', '2020-04-17 23:19:09'),
(21707, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-18 03:20:55'),
(21708, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-18 03:21:03'),
(21709, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-18 03:21:04'),
(21710, NULL, '27.115.124.6', 'common/login', 'view the login page', 'GET', '2020-04-18 03:21:35'),
(21711, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 03:21:40'),
(21712, NULL, '27.115.124.70', 'common/login', 'view the login page', 'GET', '2020-04-18 03:21:42'),
(21713, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-18 03:23:09'),
(21714, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-04-18 03:23:21'),
(21715, NULL, '42.236.10.75', 'common/login', 'view the login page', 'GET', '2020-04-18 03:23:36'),
(21716, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-18 11:29:30'),
(21717, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-18 11:29:30'),
(21718, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-18 11:29:40'),
(21719, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-18 11:29:45'),
(21720, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 11:30:01'),
(21721, NULL, '117.132.183.17', '', 'view the dashboard', 'GET', '2020-04-18 12:26:43'),
(21722, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-18 20:09:12'),
(21723, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-18 20:09:42'),
(21724, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 20:09:44'),
(21725, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-18 20:11:14'),
(21726, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-18 20:11:36'),
(21727, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 20:11:47'),
(21728, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-18 20:13:55'),
(21729, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-18 20:14:01'),
(21730, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-18 20:14:05'),
(21731, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-18 20:14:59'),
(21732, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-18 20:15:44'),
(21733, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 20:16:33'),
(21734, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 21:17:17'),
(21735, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 21:17:27'),
(21736, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 21:18:08'),
(21737, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 22:21:12'),
(21738, NULL, '27.115.124.70', '', 'view the dashboard', 'GET', '2020-04-18 22:21:12'),
(21739, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-18 22:21:15'),
(21740, NULL, '27.115.124.70', '', 'view the dashboard', 'GET', '2020-04-18 22:21:21'),
(21741, NULL, '180.163.220.68', 'common/login', 'view the login page', 'GET', '2020-04-18 22:21:21'),
(21742, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-18 22:30:40'),
(21743, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-19 03:56:19'),
(21744, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-19 03:56:32'),
(21745, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-19 03:56:37'),
(21746, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-19 03:56:58'),
(21747, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 03:56:59'),
(21748, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-19 03:57:05'),
(21749, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-19 03:57:07'),
(21750, NULL, '180.163.220.5', 'common/login', 'view the login page', 'GET', '2020-04-19 03:57:12'),
(21751, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-19 03:57:14'),
(21752, NULL, '180.163.220.67', 'common/login', 'view the login page', 'GET', '2020-04-19 03:57:19'),
(21753, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 03:57:38'),
(21754, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 03:58:51'),
(21755, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 03:59:03'),
(21756, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 03:59:56'),
(21757, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 03:59:57'),
(21758, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 04:00:02'),
(21759, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-04-19 04:00:24'),
(21760, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:00:25'),
(21761, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-19 04:00:28'),
(21762, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:00:58'),
(21763, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-19 04:01:02'),
(21764, NULL, '180.163.220.68', 'common/login', 'view the login page', 'GET', '2020-04-19 04:01:08'),
(21765, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 04:01:27'),
(21766, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 04:17:10'),
(21767, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:17:15'),
(21768, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:17:29'),
(21769, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:18:07'),
(21770, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 04:18:24'),
(21771, 1, '112.39.199.245', 'finance/transaction/filter', '0', 'GET', '2020-04-19 04:18:32'),
(21772, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 04:18:36'),
(21773, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 04:19:00'),
(21774, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 05:02:17'),
(21775, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 05:02:17'),
(21776, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 05:03:01'),
(21777, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 05:03:24'),
(21778, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 10:40:41'),
(21779, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 10:40:43'),
(21780, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-19 10:40:57'),
(21781, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 10:41:10'),
(21782, 1, '112.39.199.245', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2020-04-19 10:41:25'),
(21783, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-19 10:41:37'),
(21784, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-19 10:41:43'),
(21785, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-19 12:42:24'),
(21786, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-19 20:40:49'),
(21787, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-19 20:40:55'),
(21788, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 20:40:56'),
(21789, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-04-19 20:41:01'),
(21790, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:41:34'),
(21791, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:41:36'),
(21792, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:41:36'),
(21793, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-19 20:42:35'),
(21794, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-19 20:42:50'),
(21795, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:42:50'),
(21796, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:42:52'),
(21797, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:42:52'),
(21798, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:43:54'),
(21799, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:43:56'),
(21800, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:43:56'),
(21801, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:45:20'),
(21802, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:45:21'),
(21803, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:45:21'),
(21804, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-19 20:45:47'),
(21805, 1, '104.33.51.55', 'shipping/postpony', '0', 'GET', '2020-04-19 20:45:49'),
(21806, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:46:14'),
(21807, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:46:15'),
(21808, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-19 20:47:12'),
(21809, 1, '104.33.51.55', 'shipping/postpony', '0', 'GET', '2020-04-19 20:47:15'),
(21810, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-19 20:47:44'),
(21811, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:47:48'),
(21812, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:47:49'),
(21813, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:47:49'),
(21814, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-19 20:51:51'),
(21815, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-19 20:53:53'),
(21816, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:53:54'),
(21817, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 20:53:56'),
(21818, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 20:53:56'),
(21819, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 20:55:36'),
(21820, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 23:02:41'),
(21821, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 23:03:08'),
(21822, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-19 23:04:56'),
(21823, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 23:04:58'),
(21824, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:05:16'),
(21825, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:05:26'),
(21826, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 23:25:52'),
(21827, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-19 23:25:53'),
(21828, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 23:26:05'),
(21829, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:27:00'),
(21830, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:27:29'),
(21831, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:28:19'),
(21832, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:29:25'),
(21833, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-19 23:29:45'),
(21834, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-19 23:29:50'),
(21835, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 23:29:50'),
(21836, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:29:53'),
(21837, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:29:55'),
(21838, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:29:55'),
(21839, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:01'),
(21840, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:02'),
(21841, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:05'),
(21842, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:05'),
(21843, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:05'),
(21844, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:05'),
(21845, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:05'),
(21846, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:09'),
(21847, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:09'),
(21848, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:12'),
(21849, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:18'),
(21850, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:22'),
(21851, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:22'),
(21852, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:22'),
(21853, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:26'),
(21854, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:26'),
(21855, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:29'),
(21856, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:33'),
(21857, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:30:40'),
(21858, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:42'),
(21859, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:43'),
(21860, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:46'),
(21861, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:46'),
(21862, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:30:46'),
(21863, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:46'),
(21864, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:30:55'),
(21865, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:31:06'),
(21866, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:31:13'),
(21867, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:31:16'),
(21868, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:31:16'),
(21869, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:31:19'),
(21870, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:31:19'),
(21871, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:31:28'),
(21872, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:31:28'),
(21873, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:32:54'),
(21874, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:38:39'),
(21875, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 23:39:08'),
(21876, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:39:25'),
(21877, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-19 23:39:47'),
(21878, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:40:52'),
(21879, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:41:01'),
(21880, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-19 23:41:38'),
(21881, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 23:42:11'),
(21882, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-19 23:42:26'),
(21883, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-19 23:42:26'),
(21884, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:42:29'),
(21885, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:42:33'),
(21886, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:42:36'),
(21887, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:42:36'),
(21888, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:42:52'),
(21889, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:42:54'),
(21890, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:42:54'),
(21891, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-19 23:43:11'),
(21892, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-19 23:43:14'),
(21893, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:43:44'),
(21894, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:44:31'),
(21895, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-19 23:44:39'),
(21896, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:44:39'),
(21897, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-19 23:44:42'),
(21898, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-19 23:44:42'),
(21899, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:45:10'),
(21900, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:45:26'),
(21901, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:45:40'),
(21902, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:45:57'),
(21903, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:46:22'),
(21904, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-19 23:48:39'),
(21905, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2020-04-19 23:48:56'),
(21906, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-19 23:49:02'),
(21907, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-19 23:50:14'),
(21908, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-19 23:50:43'),
(21909, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:51:03'),
(21910, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-19 23:52:43'),
(21911, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 23:55:03'),
(21912, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 23:55:44'),
(21913, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-19 23:56:25'),
(21914, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 00:06:40'),
(21915, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 00:09:32'),
(21916, NULL, '180.163.220.67', '', 'view the dashboard', 'GET', '2020-04-20 00:09:35'),
(21917, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-20 00:09:37'),
(21918, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-20 00:09:48'),
(21919, NULL, '180.163.220.4', '', 'view the dashboard', 'GET', '2020-04-20 00:09:50'),
(21920, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-20 00:09:52'),
(21921, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-20 00:10:01'),
(21922, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 02:25:41'),
(21923, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 02:25:42'),
(21924, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-20 02:25:53'),
(21925, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 02:25:56'),
(21926, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:26:00'),
(21927, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:26:05'),
(21928, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-20 02:26:05'),
(21929, NULL, '42.236.10.125', 'common/login', 'view the login page', 'GET', '2020-04-20 02:26:06'),
(21930, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-20 02:26:10'),
(21931, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-20 02:26:14'),
(21932, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:26:33'),
(21933, 1, '112.39.199.245', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 02:26:47'),
(21934, 1, '112.39.199.245', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-04-20 02:27:07'),
(21935, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-04-20 02:27:20'),
(21936, NULL, '180.163.220.5', 'common/login', 'view the login page', 'GET', '2020-04-20 02:27:20'),
(21937, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-20 02:27:31'),
(21938, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-20 02:27:48'),
(21939, 1, '112.39.199.245', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-20 02:28:10'),
(21940, 1, '112.39.199.245', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-20 02:28:12'),
(21941, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:28:29'),
(21942, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:28:43'),
(21943, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 02:28:59'),
(21944, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-20 02:29:04'),
(21945, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:29:11'),
(21946, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-20 02:29:14'),
(21947, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:32:06'),
(21948, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:34:29'),
(21949, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 02:35:12'),
(21950, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 08:09:35'),
(21951, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 08:09:35'),
(21952, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-20 08:09:53'),
(21953, 1, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-20 08:10:20'),
(21954, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 08:10:20'),
(21955, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 08:10:24'),
(21956, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 08:14:04'),
(21957, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 09:32:21'),
(21958, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-20 09:32:31'),
(21959, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 09:32:31'),
(21960, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:32:47'),
(21961, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:32:53'),
(21962, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:32:53'),
(21963, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:33:08'),
(21964, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:33:10'),
(21965, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:33:10'),
(21966, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 09:33:18'),
(21967, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 09:34:08'),
(21968, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:34:08'),
(21969, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:34:12'),
(21970, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:34:12'),
(21971, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:34:26'),
(21972, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:34:27'),
(21973, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:34:27'),
(21974, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 09:34:44'),
(21975, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 09:35:00'),
(21976, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:35:00'),
(21977, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:35:02'),
(21978, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:35:02'),
(21979, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:35:09'),
(21980, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 09:35:11'),
(21981, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 09:35:11'),
(21982, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:35:19'),
(21983, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:37:46'),
(21984, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:37:48'),
(21985, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:37:50'),
(21986, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 09:37:52'),
(21987, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:02'),
(21988, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 09:38:04'),
(21989, 1, '104.33.51.55', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2020-04-20 09:38:12'),
(21990, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:12'),
(21991, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:51'),
(21992, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:53'),
(21993, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:55'),
(21994, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 09:38:57'),
(21995, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 10:10:20'),
(21996, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 10:10:20'),
(21997, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-20 10:10:25'),
(21998, 1, '104.33.51.55', 'shipping/postpony', '0', 'GET', '2020-04-20 10:10:29'),
(21999, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 10:38:39'),
(22000, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 10:38:39'),
(22001, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:38:42'),
(22002, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-20 10:38:44'),
(22003, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-20 10:39:36'),
(22004, 1, '104.33.51.55', 'shipping/postpony', '0', 'GET', '2020-04-20 10:39:38'),
(22005, 1, '104.33.51.55', 'shipping/postpony', '0', 'POST', '2020-04-20 10:40:23'),
(22006, 1, '104.33.51.55', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-20 10:40:23'),
(22007, 1, '104.33.51.55', 'shipping/postpony', '0', 'GET', '2020-04-20 10:41:46'),
(22008, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:41:50'),
(22009, 1, '104.33.51.55', 'sale/sale/add', 'view the order add page', 'GET', '2020-04-20 10:41:52'),
(22010, 1, '104.33.51.55', 'sale/customer/autocomplete', 'try to add customer to order', 'POST', '2020-04-20 10:41:57'),
(22011, 1, '104.33.51.55', 'sale/sale_ajax/get_product', 'try to get order product', 'POST', '2020-04-20 10:42:00'),
(22012, 1, '104.33.51.55', 'sale/sale_ajax/get_sale_products_volume', 'try to get sale product volume', 'POST', '2020-04-20 10:42:01'),
(22013, 1, '104.33.51.55', 'sale/sale_ajax/get_sale_products_weight', 'try to get sale product weight', 'POST', '2020-04-20 10:42:01'),
(22014, 1, '104.33.51.55', 'sale/sale/add', 'view the order add page', 'POST', '2020-04-20 10:42:17'),
(22015, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:42:17'),
(22016, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 10:42:20'),
(22017, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:42:32'),
(22018, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:42:34'),
(22019, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:42:34'),
(22020, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 10:42:50'),
(22021, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 10:43:19'),
(22022, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:43:19'),
(22023, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:43:21'),
(22024, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:43:21'),
(22025, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 10:43:36'),
(22026, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:43:49'),
(22027, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:43:50'),
(22028, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:43:50'),
(22029, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:44:04'),
(22030, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:44:04'),
(22031, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 10:45:24'),
(22032, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 10:45:38'),
(22033, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:45:39'),
(22034, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:45:40'),
(22035, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:45:40'),
(22036, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 10:49:58'),
(22037, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:50:04'),
(22038, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:50:04'),
(22039, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:50:19'),
(22040, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:50:19'),
(22041, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:50:33'),
(22042, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:50:33'),
(22043, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 10:50:48'),
(22044, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 10:50:48'),
(22045, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 11:04:22'),
(22046, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 11:04:22'),
(22047, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-04-20 11:04:48'),
(22048, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 11:05:14'),
(22049, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 11:05:17'),
(22050, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 11:41:03'),
(22051, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 11:41:03'),
(22052, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 11:41:07'),
(22053, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 11:41:09'),
(22054, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 11:41:09'),
(22055, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 11:42:33'),
(22056, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 11:42:35'),
(22057, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 11:42:35'),
(22058, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 15:57:48'),
(22059, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-20 15:57:54'),
(22060, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 15:57:54'),
(22061, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:57:56'),
(22062, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 15:57:58'),
(22063, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 15:57:58'),
(22064, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 15:58:32'),
(22065, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 15:58:32'),
(22066, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 15:58:43'),
(22067, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:58:54'),
(22068, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:58:55'),
(22069, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:59:00'),
(22070, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:59:02'),
(22071, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 15:59:04'),
(22072, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 18:02:09'),
(22073, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 18:02:09'),
(22074, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-20 18:02:17'),
(22075, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 18:02:18'),
(22076, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 18:02:24'),
(22077, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 18:03:17'),
(22078, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 19:02:43'),
(22079, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 19:02:46'),
(22080, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:02:50'),
(22081, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 19:03:00'),
(22082, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:04:55'),
(22083, 1, '112.39.199.245', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-20 19:05:19'),
(22084, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-20 19:05:49'),
(22085, NULL, '180.163.220.68', 'common/login', 'view the login page', 'GET', '2020-04-20 19:05:54'),
(22086, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-20 19:05:58'),
(22087, NULL, '180.163.220.67', 'common/login', 'view the login page', 'GET', '2020-04-20 19:06:15'),
(22088, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-20 19:53:06'),
(22089, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-20 19:53:11'),
(22090, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 19:53:11'),
(22091, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:53:17'),
(22092, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 19:53:24'),
(22093, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 19:53:24'),
(22094, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:54:16'),
(22095, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 19:55:12'),
(22096, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:55:12'),
(22097, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 19:55:22'),
(22098, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 19:55:22'),
(22099, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:55:57'),
(22100, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 19:56:03'),
(22101, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 19:56:03'),
(22102, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:56:46'),
(22103, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 19:56:48'),
(22104, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 19:56:48'),
(22105, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:57:47'),
(22106, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:57:51'),
(22107, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:57:53'),
(22108, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-20 19:58:00'),
(22109, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:58:00'),
(22110, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:58:15'),
(22111, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:58:19'),
(22112, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-20 19:58:24'),
(22113, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-20 19:58:24'),
(22114, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-20 19:58:38'),
(22115, 1, '104.33.51.55', 'finance/transaction/delete', 'try to delete a transaction record', 'GET', '2020-04-20 19:58:42'),
(22116, 1, '104.33.51.55', 'finance/transaction/reload', 'reload transaction page', 'GET', '2020-04-20 19:58:42'),
(22117, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:59:36'),
(22118, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:59:38'),
(22119, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-20 19:59:54'),
(22120, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-20 19:59:55'),
(22121, 1, '104.33.51.55', 'sale/sale/delete', 'try to delete an order', 'GET', '2020-04-20 20:00:07');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(22122, 1, '104.33.51.55', 'sale/sale/reload', 'try to reload order page', 'GET', '2020-04-20 20:00:07'),
(22123, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 23:18:55'),
(22124, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-20 23:18:58'),
(22125, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-20 23:19:10'),
(22126, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-20 23:19:11'),
(22127, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 23:19:15'),
(22128, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-20 23:21:02'),
(22129, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 23:21:42'),
(22130, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-20 23:53:39'),
(22131, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-20 23:54:01'),
(22132, 1, '112.39.199.245', 'finance/recharge/add', 'view the recharge add page', 'GET', '2020-04-20 23:54:06'),
(22133, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-20 23:54:10'),
(22134, 1, '112.39.199.245', 'finance/recharge/add', 'view the recharge add page', 'POST', '2020-04-20 23:54:27'),
(22135, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-20 23:54:28'),
(22136, NULL, '180.163.220.5', 'common/login', 'view the login page', 'GET', '2020-04-20 23:54:31'),
(22137, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-20 23:54:44'),
(22138, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 23:54:46'),
(22139, NULL, '42.236.10.75', 'common/login', 'view the login page', 'GET', '2020-04-20 23:55:12'),
(22140, 1, '112.39.199.245', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-20 23:55:28'),
(22141, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 23:55:42'),
(22142, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-20 23:56:21'),
(22143, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-21 10:13:31'),
(22144, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-21 10:13:31'),
(22145, NULL, '180.163.220.67', '', 'view the dashboard', 'GET', '2020-04-21 10:13:38'),
(22146, NULL, '180.163.220.3', '', 'view the dashboard', 'GET', '2020-04-21 10:13:51'),
(22147, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-21 10:14:07'),
(22148, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-21 10:14:07'),
(22149, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:14:11'),
(22150, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:14:15'),
(22151, NULL, '180.163.220.5', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:15'),
(22152, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:19'),
(22153, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:21'),
(22154, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:14:23'),
(22155, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:26'),
(22156, NULL, '42.236.10.125', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:27'),
(22157, NULL, '180.163.220.5', 'common/login', 'view the login page', 'GET', '2020-04-21 10:14:30'),
(22158, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:14:40'),
(22159, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:14:44'),
(22160, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 10:15:39'),
(22161, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-21 17:41:05'),
(22162, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-21 17:41:09'),
(22163, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-21 17:41:09'),
(22164, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-21 17:41:12'),
(22165, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-21 20:39:55'),
(22166, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-21 20:40:05'),
(22167, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 20:40:09'),
(22168, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-21 20:40:21'),
(22169, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-21 20:40:24'),
(22170, NULL, '180.163.220.67', 'common/login', 'view the login page', 'GET', '2020-04-21 20:40:35'),
(22171, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-21 20:41:01'),
(22172, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-21 20:44:29'),
(22173, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-22 02:18:13'),
(22174, NULL, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-22 02:18:17'),
(22175, NULL, '112.39.199.245', 'common/login', 'view the login page', 'POST', '2020-04-22 02:18:31'),
(22176, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 02:18:33'),
(22177, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-22 02:21:47'),
(22178, 1, '112.39.199.245', '', 'view the dashboard', 'GET', '2020-04-22 02:21:48'),
(22179, 1, '112.39.199.245', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 02:21:48'),
(22180, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-22 02:22:11'),
(22181, 1, '112.39.199.245', 'sale/sale', 'view the order page', 'GET', '2020-04-22 02:23:03'),
(22182, 1, '112.39.199.245', 'finance/balance', 'view the balance page', 'GET', '2020-04-22 02:25:19'),
(22183, NULL, '112.39.199.245', 'common/login', 'view the login page', 'GET', '2020-04-22 06:08:43'),
(22184, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-22 13:28:31'),
(22185, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-22 13:28:37'),
(22186, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 13:28:37'),
(22187, 1, '104.33.51.55', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-22 13:28:41'),
(22188, NULL, '42.236.10.75', '', 'view the dashboard', 'GET', '2020-04-22 13:58:30'),
(22189, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-22 13:58:31'),
(22190, NULL, '42.236.10.93', '', 'view the dashboard', 'GET', '2020-04-22 13:58:35'),
(22191, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-22 13:58:37'),
(22192, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-22 19:55:56'),
(22193, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-22 19:56:02'),
(22194, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 19:56:02'),
(22195, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 19:56:05'),
(22196, NULL, '180.163.220.3', 'common/login', 'view the login page', 'GET', '2020-04-22 19:56:10'),
(22197, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-22 19:56:10'),
(22198, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-22 19:56:19'),
(22199, NULL, '180.163.220.4', 'common/login', 'view the login page', 'GET', '2020-04-22 19:56:24'),
(22200, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2020-04-22 19:56:44'),
(22201, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-22 20:24:22'),
(22202, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 20:24:22'),
(22203, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 20:24:24'),
(22204, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 20:24:27'),
(22205, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 20:24:38'),
(22206, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 20:24:47'),
(22207, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-22 20:24:50'),
(22208, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-22 21:59:57'),
(22209, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 21:59:58'),
(22210, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:00:03'),
(22211, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:00:18'),
(22212, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:00:18'),
(22213, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-22 22:00:47'),
(22214, NULL, '117.136.1.250', '', 'view the dashboard', 'GET', '2020-04-22 22:00:51'),
(22215, NULL, '117.136.1.250', 'common/login', 'view the login page', 'POST', '2020-04-22 22:01:32'),
(22216, 1, '117.136.1.250', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 22:01:33'),
(22217, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:03:18'),
(22218, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-22 22:03:22'),
(22219, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:03:27'),
(22220, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-22 22:03:30'),
(22221, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-22 22:03:34'),
(22222, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-22 22:04:33'),
(22223, 1, '117.136.1.250', 'sale/sale', 'view the order page', 'GET', '2020-04-22 22:06:52'),
(22224, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-22 23:04:33'),
(22225, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-22 23:04:33'),
(22226, NULL, '119.251.94.219', 'common/login', 'view the login page', 'POST', '2020-04-23 02:41:10'),
(22227, 1, '119.251.94.219', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 02:41:10'),
(22228, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:41:13'),
(22229, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:41:29'),
(22230, 1, '119.251.94.219', 'sale/sale/delete', 'try to delete an order', 'GET', '2020-04-23 02:41:37'),
(22231, 1, '119.251.94.219', 'sale/sale/reload', 'try to reload order page', 'GET', '2020-04-23 02:41:37'),
(22232, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:41:40'),
(22233, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:41:49'),
(22234, 1, '119.251.94.219', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 02:41:59'),
(22235, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:42:04'),
(22236, 1, '119.251.94.219', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:42:08'),
(22237, NULL, '42.236.10.84', 'common/login', 'view the login page', 'GET', '2020-04-23 02:42:16'),
(22238, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:42:20'),
(22239, NULL, '42.236.10.75', 'common/login', 'view the login page', 'GET', '2020-04-23 02:42:28'),
(22240, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:42:29'),
(22241, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:42:37'),
(22242, 1, '119.251.94.219', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:42:46'),
(22243, 1, '119.251.94.219', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:43:01'),
(22244, 1, '119.251.94.219', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:43:07'),
(22245, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:48:07'),
(22246, 1, '101.20.90.61', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:48:10'),
(22247, 1, '101.20.90.61', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:48:16'),
(22248, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:48:44'),
(22249, 1, '101.20.90.61', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 02:48:47'),
(22250, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:48:55'),
(22251, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:01'),
(22252, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:04'),
(22253, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:06'),
(22254, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:10'),
(22255, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:16'),
(22256, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:20'),
(22257, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:23'),
(22258, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:28'),
(22259, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:30'),
(22260, 1, '101.20.90.61', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 02:49:39'),
(22261, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:49:46'),
(22262, 1, '101.20.90.61', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-23 02:49:57'),
(22263, 1, '101.20.90.61', 'sale/label/execute_d', '0', 'POST', '2020-04-23 02:49:57'),
(22264, 1, '101.20.90.61', '', 'view the dashboard', 'GET', '2020-04-23 02:57:16'),
(22265, 1, '101.20.90.61', '', 'view the dashboard', 'GET', '2020-04-23 02:57:19'),
(22266, 1, '101.20.90.61', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 02:57:20'),
(22267, 1, '101.20.90.61', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:57:24'),
(22268, 1, '101.20.90.61', 'sale/label/execute_c', '0', 'POST', '2020-04-23 02:57:30'),
(22269, 1, '101.20.90.61', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-23 02:57:34'),
(22270, 1, '101.20.90.61', 'sale/label/execute_d', '0', 'POST', '2020-04-23 02:57:34'),
(22271, 1, '101.20.90.61', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 02:57:41'),
(22272, 1, '101.20.90.61', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-04-23 02:57:49'),
(22273, 1, '101.20.90.61', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:57:52'),
(22274, 1, '101.20.90.61', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:57:54'),
(22275, 1, '101.20.90.61', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:57:56'),
(22276, NULL, '42.236.10.117', 'common/login', 'view the login page', 'GET', '2020-04-23 02:57:57'),
(22277, 1, '101.20.90.61', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:03'),
(22278, 1, '101.20.90.61', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:04'),
(22279, NULL, '42.236.10.114', 'common/login', 'view the login page', 'GET', '2020-04-23 02:58:07'),
(22280, 1, '119.250.53.9', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:58:33'),
(22281, 1, '119.250.53.9', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 02:58:38'),
(22282, 1, '119.250.53.9', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-04-23 02:58:41'),
(22283, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:43'),
(22284, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:44'),
(22285, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:47'),
(22286, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:48'),
(22287, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:49'),
(22288, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:49'),
(22289, 1, '119.250.53.9', 'check/checkout_sale/add_checkout', 'add checkout for order', 'POST', '2020-04-23 02:58:50'),
(22290, 1, '119.250.53.9', 'sale/sale', 'view the order page', 'GET', '2020-04-23 02:58:51'),
(22291, NULL, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-23 09:35:02'),
(22292, NULL, '104.33.51.55', 'common/login', 'view the login page', 'POST', '2020-04-23 09:35:07'),
(22293, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 09:35:07'),
(22294, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:35:09'),
(22295, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-23 09:35:17'),
(22296, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-23 09:35:17'),
(22297, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-23 09:35:22'),
(22298, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-23 09:35:22'),
(22299, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 09:35:29'),
(22300, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-04-23 09:35:38'),
(22301, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:35:38'),
(22302, 1, '104.33.51.55', 'sale/label/check', 'check if shipping label is printable', 'POST', '2020-04-23 09:35:40'),
(22303, 1, '104.33.51.55', 'sale/label/execute_d', '0', 'POST', '2020-04-23 09:35:40'),
(22304, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 09:35:48'),
(22305, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 09:35:55'),
(22306, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:35:57'),
(22307, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 09:36:01'),
(22308, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 09:36:37'),
(22309, 1, '104.33.51.55', '', 'view the dashboard', 'GET', '2020-04-23 09:52:04'),
(22310, 1, '104.33.51.55', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 09:52:05'),
(22311, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:52:20'),
(22312, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:57:41'),
(22313, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:57:42'),
(22314, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 09:57:43'),
(22315, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:01:53'),
(22316, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:01:57'),
(22317, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:02:23'),
(22318, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:02:39'),
(22319, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:02:43'),
(22320, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:13:30'),
(22321, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:13:36'),
(22322, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-04-23 10:17:21'),
(22323, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:17:25'),
(22324, 1, '104.33.51.55', 'check/checkin', 'view the checkin page', 'GET', '2020-04-23 10:17:26'),
(22325, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:17:31'),
(22326, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2020-04-23 10:17:33'),
(22327, 1, '104.33.51.55', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-04-23 10:17:35'),
(22328, 1, '104.33.51.55', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2020-04-23 10:17:35'),
(22329, 1, '104.33.51.55', 'check/checkout', 'view the checkout page', 'GET', '2020-04-23 10:17:40'),
(22330, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:17:41'),
(22331, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-04-23 10:17:43'),
(22332, 1, '104.33.51.55', 'client/client/add', 'view the client add page', 'GET', '2020-04-23 10:21:05'),
(22333, 1, '104.33.51.55', 'client/client', 'view the client page', 'GET', '2020-04-23 10:21:06'),
(22334, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:22:08'),
(22335, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:22:09'),
(22336, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:22:13'),
(22337, NULL, '121.23.56.236', '', 'view the dashboard', 'GET', '2020-04-23 10:25:38'),
(22338, NULL, '121.23.56.236', '', 'view the dashboard', 'GET', '2020-04-23 10:25:39'),
(22339, NULL, '121.23.56.236', 'common/login', 'view the login page', 'POST', '2020-04-23 10:25:46'),
(22340, 1, '121.23.56.236', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 10:25:46'),
(22341, 1, '121.23.56.236', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:25:51'),
(22342, 1, '121.23.56.236', 'finance/balance', 'view the balance page', 'GET', '2020-04-23 10:26:01'),
(22343, NULL, '42.236.10.78', 'common/login', 'view the login page', 'GET', '2020-04-23 10:26:08'),
(22344, NULL, '42.236.10.93', 'common/login', 'view the login page', 'GET', '2020-04-23 10:26:18'),
(22345, 1, '104.33.51.55', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 10:26:23'),
(22346, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:26:23'),
(22347, 1, '121.23.56.236', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-23 10:26:48'),
(22348, 1, '121.23.56.236', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-23 10:26:53'),
(22349, 1, '121.23.56.236', 'finance/recharge', 'view the recharge page', 'GET', '2020-04-23 10:26:57'),
(22350, NULL, '180.163.220.66', 'common/login', 'view the login page', 'GET', '2020-04-23 10:27:00'),
(22351, NULL, '180.163.220.68', 'common/login', 'view the login page', 'GET', '2020-04-23 10:27:15'),
(22352, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:27:24'),
(22353, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:27:31'),
(22354, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:27:43'),
(22355, 1, '121.23.56.236', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:28:24'),
(22356, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:28:27'),
(22357, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:28:27'),
(22358, 1, '121.23.56.236', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 10:28:27'),
(22359, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:28:30'),
(22360, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:28:32'),
(22361, 1, '121.23.56.236', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 10:28:33'),
(22362, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:28:38'),
(22363, 1, '121.23.56.236', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:28:54'),
(22364, 1, '121.23.56.236', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 10:28:57'),
(22365, 1, '121.23.56.236', 'sale/sale_ajax/change_status', '0', 'GET', '2020-04-23 10:29:03'),
(22366, 1, '121.23.56.236', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 10:29:08'),
(22367, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:29:22'),
(22368, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:29:25'),
(22369, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:30:01'),
(22370, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:30:04'),
(22371, 1, '121.23.56.236', 'finance/transaction', 'view the transaction page', 'GET', '2020-04-23 10:30:19'),
(22372, 1, '121.23.56.236', 'finance/balance', 'view the balance page', 'GET', '2020-04-23 10:30:25'),
(22373, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:31:00'),
(22374, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:31:05'),
(22375, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:31:08'),
(22376, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:39:19'),
(22377, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:39:24'),
(22378, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:39:27'),
(22379, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:39:51'),
(22380, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:39:52'),
(22381, 1, '104.33.51.55', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 10:39:56'),
(22382, 1, '104.33.51.55', 'sale/sale', 'view the order page', 'GET', '2020-04-23 10:46:45'),
(22383, 1, '::1', '', 'view the dashboard', 'GET', '2020-04-23 19:50:28'),
(22384, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 19:50:28'),
(22385, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 19:50:41'),
(22386, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 19:50:43'),
(22387, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 19:50:58'),
(22388, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 20:01:53'),
(22389, 1, '::1', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 20:01:55'),
(22390, 1, '::1', 'sale/sale_ajax/export_label', '0', 'GET', '2020-04-23 20:02:03'),
(22391, 1, '::1', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 20:02:10'),
(22392, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 20:02:58'),
(22393, 1, '::1', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-23 20:03:01'),
(22394, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 20:03:16'),
(22395, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-23 20:05:22'),
(22396, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-23 20:11:30'),
(22397, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-23 20:11:32'),
(22398, 1, '::1', '', 'view the dashboard', 'GET', '2020-04-23 21:36:05'),
(22399, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-23 21:36:05'),
(22400, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 21:36:21'),
(22401, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 21:36:22'),
(22402, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 21:41:05'),
(22403, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 21:43:51'),
(22404, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-04-23 22:12:37'),
(22405, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-04-23 22:12:38'),
(22406, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-04-23 22:12:38'),
(22407, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-04-23 22:12:39'),
(22408, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:26:47'),
(22409, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:32:15'),
(22410, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:33:00'),
(22411, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:33:40'),
(22412, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:34:54'),
(22413, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:35:28'),
(22414, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:35:59'),
(22415, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:36:11'),
(22416, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:36:23'),
(22417, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:36:36'),
(22418, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:37:02'),
(22419, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:37:36'),
(22420, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:37:47'),
(22421, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:38:20'),
(22422, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:38:32'),
(22423, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:39:54'),
(22424, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:40:11'),
(22425, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:40:46'),
(22426, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:40:47'),
(22427, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:41:06'),
(22428, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:41:18'),
(22429, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-04-23 22:44:25'),
(22430, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-04-23 22:44:25'),
(22431, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-04-23 22:45:05'),
(22432, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-04-23 22:45:06'),
(22433, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:45:07'),
(22434, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:47:26'),
(22435, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:49:40'),
(22436, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:50:25'),
(22437, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:51:25'),
(22438, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:51:48'),
(22439, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 22:51:51'),
(22440, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 22:51:54'),
(22441, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:58:34'),
(22442, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 22:58:36'),
(22443, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 22:58:51'),
(22444, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 22:59:36'),
(22445, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 22:59:39'),
(22446, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 22:59:52'),
(22447, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 22:59:55'),
(22448, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:00:54'),
(22449, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:00:57'),
(22450, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:01:00'),
(22451, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:01:01'),
(22452, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:01:45'),
(22453, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:01:48'),
(22454, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:04:05'),
(22455, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:04:08'),
(22456, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:04:10'),
(22457, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:05:00'),
(22458, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:05:02'),
(22459, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:05:05'),
(22460, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:05:17'),
(22461, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:05:19'),
(22462, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:05:24'),
(22463, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:07:53'),
(22464, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:07:56'),
(22465, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:07:57'),
(22466, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:25'),
(22467, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:29'),
(22468, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:32'),
(22469, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:37'),
(22470, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:40'),
(22471, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:42'),
(22472, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:45'),
(22473, 1, '::1', 'catalog/product/delete', 'try to delete a product', 'GET', '2020-04-23 23:08:50'),
(22474, 1, '::1', 'catalog/product/reload', 'reload the product page', 'GET', '2020-04-23 23:08:50'),
(22475, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-04-23 23:08:52'),
(22476, 1, '::1', 'catalog/product/delete', 'try to delete a product', 'GET', '2020-04-23 23:08:56'),
(22477, 1, '::1', 'catalog/product/reload', 'reload the product page', 'GET', '2020-04-23 23:08:56'),
(22478, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:10:07'),
(22479, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:10:10'),
(22480, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:10:14'),
(22481, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:13:56'),
(22482, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:13:59'),
(22483, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:14:00'),
(22484, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:14:20'),
(22485, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:14:24'),
(22486, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:14:26'),
(22487, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:14:31'),
(22488, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:14:33'),
(22489, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:14:35'),
(22490, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:14:41'),
(22491, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:14:45'),
(22492, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:14:47'),
(22493, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:17:14'),
(22494, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:17:18'),
(22495, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:17:27'),
(22496, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:18:07'),
(22497, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:18:09'),
(22498, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:18:11'),
(22499, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:18:43'),
(22500, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:18:46'),
(22501, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:18:48'),
(22502, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:18:50'),
(22503, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:20:24'),
(22504, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:20:26'),
(22505, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:20:28'),
(22506, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:22:46'),
(22507, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:22:48'),
(22508, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:22:51'),
(22509, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:26:28'),
(22510, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:26:32'),
(22511, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:26:33'),
(22512, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:26:59'),
(22513, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:27:02'),
(22514, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:27:03'),
(22515, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:27:12'),
(22516, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:27:14'),
(22517, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:27:16'),
(22518, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:28:28'),
(22519, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:28:31'),
(22520, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:28:34'),
(22521, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:28:38'),
(22522, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-23 23:29:40'),
(22523, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-23 23:29:42'),
(22524, 1, '::1', 'sale/import/upload', 'try to import orders', 'POST', '2020-04-23 23:29:44'),
(22525, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 23:29:46'),
(22526, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-04-23 23:29:49'),
(22527, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-23 23:29:55'),
(22528, 1, '::1', 'inventory/inventory_batch', 'view the inventory batch page', 'GET', '2020-04-23 23:34:22'),
(22529, NULL, '::1', '', 'view the dashboard', 'GET', '2020-04-25 03:34:35'),
(22530, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-25 03:34:47'),
(22531, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-25 03:34:53'),
(22532, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-25 03:34:59'),
(22533, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 03:34:59'),
(22534, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-25 03:35:19'),
(22535, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-25 03:46:41'),
(22536, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-25 04:28:42'),
(22537, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2020-04-25 04:29:12'),
(22538, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 04:48:09'),
(22539, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-25 04:48:10'),
(22540, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 04:52:20'),
(22541, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 04:52:30'),
(22542, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-04-25 04:52:33'),
(22543, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-04-25 04:52:45'),
(22544, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 04:52:47'),
(22545, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 04:52:52'),
(22546, NULL, '::1', '', 'view the dashboard', 'GET', '2020-04-25 16:52:38'),
(22547, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-25 16:52:43'),
(22548, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 16:52:43'),
(22549, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 16:52:46'),
(22550, 1, '::1', '', 'view the dashboard', 'GET', '2020-04-25 17:01:50'),
(22551, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 17:01:50'),
(22552, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:01:52'),
(22553, 1, '::1', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-25 17:01:55'),
(22554, 1, '::1', '', 'view the dashboard', 'GET', '2020-04-25 17:09:45'),
(22555, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 17:09:45'),
(22556, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:09:49'),
(22557, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-25 17:10:02'),
(22558, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:11:35'),
(22559, 1, '::1', 'sale/sale_ajax/export_label', '0', 'POST', '2020-04-25 17:11:37'),
(22560, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:11:42'),
(22561, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-25 17:11:44'),
(22562, NULL, '::1', '', 'view the dashboard', 'GET', '2020-04-25 17:14:23'),
(22563, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-25 17:14:27'),
(22564, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-25 17:14:28'),
(22565, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:14:30'),
(22566, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-25 17:14:42'),
(22567, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-25 17:16:12'),
(22568, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-25 17:16:15'),
(22569, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-04-25 17:16:25'),
(22570, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-04-25 17:16:28'),
(22571, NULL, '::1', '', 'view the dashboard', 'GET', '2020-04-28 00:28:21'),
(22572, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-04-28 00:28:25'),
(22573, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-04-28 00:28:25'),
(22574, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 00:28:29'),
(22575, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 00:28:31'),
(22576, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 00:40:55'),
(22577, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 00:54:57'),
(22578, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 00:55:58'),
(22579, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 00:56:18'),
(22580, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 00:56:19'),
(22581, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:01:45'),
(22582, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-04-28 01:02:11'),
(22583, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-04-28 01:02:17'),
(22584, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-04-28 01:02:20'),
(22585, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-04-28 01:02:22'),
(22586, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2020-04-28 01:02:22'),
(22587, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-04-28 01:06:36'),
(22588, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2020-04-28 01:06:37'),
(22589, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:06:40'),
(22590, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:06:42'),
(22591, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:06:45'),
(22592, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:06:46'),
(22593, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:08:03'),
(22594, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:08:30'),
(22595, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:08:44'),
(22596, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:09:40'),
(22597, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:10:37'),
(22598, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:10:39'),
(22599, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:10:40'),
(22600, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:10:53'),
(22601, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:10:58'),
(22602, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:11:19'),
(22603, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:12:05'),
(22604, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:12:05'),
(22605, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:12:07'),
(22606, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:16:16'),
(22607, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:16:17'),
(22608, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:16:19'),
(22609, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:16:25'),
(22610, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:16:26'),
(22611, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:16:28'),
(22612, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:16:35'),
(22613, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:16:35'),
(22614, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:16:37'),
(22615, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-04-28 01:16:45'),
(22616, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:16:45'),
(22617, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:16:48'),
(22618, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:16:58'),
(22619, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-04-28 01:17:00'),
(22620, 1, '::1', 'client/client/add', 'view the client add page', 'POST', '2020-04-28 01:17:21'),
(22621, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-04-28 01:17:21'),
(22622, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:17:45'),
(22623, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-04-28 01:18:51'),
(22624, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-04-28 01:18:57'),
(22625, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-04-28 01:19:00'),
(22626, NULL, '::1', '', 'view the dashboard', 'GET', '2020-05-03 22:27:34'),
(22627, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-05-03 22:27:39'),
(22628, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-03 22:27:39'),
(22629, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 22:27:42'),
(22630, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-03 22:27:54'),
(22631, 1, '::1', 'catalog/product/add', 'view the product add page', 'GET', '2020-05-03 22:27:58'),
(22632, 1, '::1', 'catalog/product', 'view the product page', 'GET', '2020-05-03 22:27:59'),
(22633, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:28:07'),
(22634, 1, '::1', 'common/logout', 'view the logout page', 'GET', '2020-05-03 22:28:19'),
(22635, NULL, '::1', 'common/login', 'view the login page', 'GET', '2020-05-03 22:28:19'),
(22636, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-05-03 22:28:25'),
(22637, 1, '::1', 'common/dashboard', '?????', 'GET', '2020-05-03 22:28:26'),
(22638, 1, '::1', 'sale/import', '????????', 'GET', '2020-05-03 22:28:44'),
(22639, 1, '::1', 'client/client', '??????', 'GET', '2020-05-03 22:29:09'),
(22640, 1, '::1', 'client/client/edit', '???????', 'GET', '2020-05-03 22:29:52'),
(22641, 1, '::1', 'client/client/edit', '???????', 'POST', '2020-05-03 22:29:58'),
(22642, 1, '::1', 'search/search', '????', 'GET', '2020-05-03 22:29:58'),
(22643, 1, '::1', 'client/client', '??????', 'GET', '2020-05-03 22:29:58'),
(22644, 1, '::1', 'client/client/edit', '???????', 'GET', '2020-05-03 22:30:14'),
(22645, 1, '::1', 'client/client/edit', '???????', 'POST', '2020-05-03 22:30:17'),
(22646, 1, '::1', 'client/client', '??????', 'GET', '2020-05-03 22:30:17'),
(22647, 1, '::1', 'common/logout', '??????', 'GET', '2020-05-03 22:35:30'),
(22648, NULL, '::1', 'common/login', '??????', 'GET', '2020-05-03 22:35:30'),
(22649, NULL, '::1', 'common/login', '??????', 'POST', '2020-05-03 22:35:35'),
(22650, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-03 22:35:36'),
(22651, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:36:02');
INSERT INTO `activity_log` (`id`, `user_id`, `ip_address`, `uri`, `description`, `method`, `date_added`) VALUES
(22652, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:36:32'),
(22653, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-03 22:38:02'),
(22654, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-05-03 22:38:04'),
(22655, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:38:07'),
(22656, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:38:36'),
(22657, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 22:39:22'),
(22658, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-05-03 22:39:57'),
(22659, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-05-03 22:44:39'),
(22660, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 22:50:41'),
(22661, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 22:59:51'),
(22662, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:01:14'),
(22663, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:02:54'),
(22664, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:02:59'),
(22665, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:03:18'),
(22666, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:05:49'),
(22667, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:05:52'),
(22668, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:05:54'),
(22669, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:05:56'),
(22670, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:05:57'),
(22671, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:05:59'),
(22672, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:06:01'),
(22673, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:06:02'),
(22674, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:08:23'),
(22675, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:08:25'),
(22676, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:08:27'),
(22677, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:08:28'),
(22678, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:08:30'),
(22679, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:14:28'),
(22680, 1, '::1', 'sale/sale/filter', '0', 'GET', '2020-05-03 23:14:30'),
(22681, 1, '::1', 'sale/import', 'view the order import page', 'GET', '2020-05-03 23:24:11'),
(22682, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2020-05-03 23:24:12'),
(22683, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:24:15'),
(22684, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 23:24:20'),
(22685, 1, '::1', 'check/checkin/edit', 'view the checkin edit page', 'GET', '2020-05-03 23:24:21'),
(22686, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 23:24:24'),
(22687, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-05-03 23:47:41'),
(22688, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:47:44'),
(22689, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-03 23:47:44'),
(22690, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-03 23:47:55'),
(22691, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-03 23:47:55'),
(22692, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:08:30'),
(22693, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:08:31'),
(22694, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:08:44'),
(22695, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:08:45'),
(22696, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:08:50'),
(22697, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:08:51'),
(22698, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:09:41'),
(22699, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:09:41'),
(22700, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:10:07'),
(22701, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:10:07'),
(22702, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:10:37'),
(22703, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:10:37'),
(22704, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:11:07'),
(22705, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:11:08'),
(22706, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:12:19'),
(22707, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:12:19'),
(22708, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:17:33'),
(22709, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:17:33'),
(22710, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:17:49'),
(22711, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:17:50'),
(22712, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:18:13'),
(22713, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:18:14'),
(22714, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:19:10'),
(22715, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:19:10'),
(22716, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:26:23'),
(22717, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:26:23'),
(22718, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:26:30'),
(22719, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:26:31'),
(22720, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:26:45'),
(22721, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:26:45'),
(22722, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:27:52'),
(22723, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:27:53'),
(22724, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:27:54'),
(22725, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:27:54'),
(22726, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:28:21'),
(22727, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:28:22'),
(22728, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:28:28'),
(22729, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:28:28'),
(22730, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:29:44'),
(22731, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:29:45'),
(22732, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:32:12'),
(22733, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:34:40'),
(22734, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:34:40'),
(22735, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:35:07'),
(22736, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:35:08'),
(22737, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:36:10'),
(22738, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:36:10'),
(22739, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:36:17'),
(22740, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'GET', '2020-05-04 00:36:17'),
(22741, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:36:48'),
(22742, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-04 00:36:48'),
(22743, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-04 00:36:53'),
(22744, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-04 00:36:54'),
(22745, NULL, '127.0.0.1', '', 'view the dashboard', 'GET', '2020-05-20 20:59:53'),
(22746, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-05-20 20:59:59'),
(22747, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-20 20:59:59'),
(22748, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:00:02'),
(22749, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:00:03'),
(22750, 1, '::1', '', 'view the dashboard', 'GET', '2020-05-20 21:00:15'),
(22751, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-20 21:00:15'),
(22752, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-20 21:00:28'),
(22753, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-20 21:36:48'),
(22754, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:36:58'),
(22755, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:36:58'),
(22756, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:37:00'),
(22757, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:37:01'),
(22758, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:37:04'),
(22759, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:37:06'),
(22760, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:37:06'),
(22761, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:37:08'),
(22762, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:37:09'),
(22763, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:34'),
(22764, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:37'),
(22765, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:38:39'),
(22766, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:41'),
(22767, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:38:42'),
(22768, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:38:43'),
(22769, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:44'),
(22770, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:38:46'),
(22771, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:48'),
(22772, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:38:51'),
(22773, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:38:51'),
(22774, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-05-20 21:38:53'),
(22775, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:38:55'),
(22776, 1, '::1', 'sale/sale/return', '0', 'GET', '2020-05-20 21:39:47'),
(22777, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-20 21:39:49'),
(22778, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-20 21:39:50'),
(22779, NULL, '::1', '', 'view the dashboard', 'GET', '2020-05-28 22:34:55'),
(22780, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-05-28 22:34:59'),
(22781, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-28 22:35:00'),
(22782, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-28 22:35:03'),
(22783, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-28 22:35:04'),
(22784, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 22:35:06'),
(22785, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 22:35:08'),
(22786, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 22:40:19'),
(22787, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 22:40:21'),
(22788, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 22:49:08'),
(22789, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 22:49:40'),
(22790, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:01:13'),
(22791, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:02:26'),
(22792, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:02:32'),
(22793, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:02:36'),
(22794, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:02:37'),
(22795, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:15:19'),
(22796, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:15:48'),
(22797, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:15:48'),
(22798, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:15:50'),
(22799, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:30:51'),
(22800, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:31:20'),
(22801, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:31:22'),
(22802, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:31:24'),
(22803, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:31:25'),
(22804, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:31:26'),
(22805, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:31:27'),
(22806, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:31:27'),
(22807, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:31:30'),
(22808, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:31:30'),
(22809, 1, '::1', '', 'view the dashboard', 'GET', '2020-05-28 23:31:34'),
(22810, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-05-28 23:31:34'),
(22811, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:31:36'),
(22812, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:31:52'),
(22813, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:31:55'),
(22814, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:34:07'),
(22815, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:34:10'),
(22816, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:34:11'),
(22817, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:34:13'),
(22818, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-05-28 23:34:19'),
(22819, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:34:19'),
(22820, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:34:21'),
(22821, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:36:16'),
(22822, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-28 23:36:27'),
(22823, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-28 23:36:27'),
(22824, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:36:29'),
(22825, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-05-28 23:39:41'),
(22826, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-05-28 23:39:42'),
(22827, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:40:07'),
(22828, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-05-28 23:49:14'),
(22829, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-05-28 23:58:48'),
(22830, NULL, '::1', '', 'view the dashboard', 'GET', '2020-06-04 04:22:55'),
(22831, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-04 04:23:00'),
(22832, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-06-04 04:23:00'),
(22833, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:23:03'),
(22834, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:23:05'),
(22835, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:33:45'),
(22836, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:35:39'),
(22837, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:36:04'),
(22838, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:36:05'),
(22839, 1, '::1', 'client/client/add', 'view the client add page', 'GET', '2020-06-04 04:36:06'),
(22840, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:36:09'),
(22841, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:36:14'),
(22842, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-06-04 04:36:18'),
(22843, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-04 04:36:18'),
(22844, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:36:18'),
(22845, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:36:20'),
(22846, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-06-04 04:36:53'),
(22847, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-04 04:36:53'),
(22848, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:36:53'),
(22849, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:36:54'),
(22850, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:37:26'),
(22851, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:38:04'),
(22852, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-04 04:56:29'),
(22853, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-04 04:56:34'),
(22854, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:56:34'),
(22855, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 04:57:03'),
(22856, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-04 05:07:33'),
(22857, 1, '::1', 'client/client/view', '0', 'GET', '2020-06-04 05:07:35'),
(22858, 1, '::1', 'finance/balance', 'view the balance page', 'GET', '2020-06-04 05:07:42'),
(22859, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2020-06-04 05:07:59'),
(22860, 1, '::1', 'finance/transaction/add', 'view the transaction add page', 'GET', '2020-06-04 05:08:03'),
(22861, 1, '::1', 'finance/transaction/add', 'view the transaction add page', 'POST', '2020-06-04 05:08:14'),
(22862, 1, '::1', 'finance/transaction', 'view the transaction page', 'GET', '2020-06-04 05:08:14'),
(22863, NULL, '::1', '', 'view the dashboard', 'GET', '2020-06-16 03:27:16'),
(22864, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-16 03:27:21'),
(22865, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-06-16 03:27:21'),
(22866, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-16 03:27:24'),
(22867, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-16 03:27:26'),
(22868, NULL, '::1', '', 'view the dashboard', 'GET', '2020-06-18 05:13:17'),
(22869, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-18 05:15:20'),
(22870, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-06-18 05:15:20'),
(22871, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:15:27'),
(22872, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:15:30'),
(22873, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-06-18 05:15:38'),
(22874, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:15:38'),
(22875, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:15:38'),
(22876, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:15:40'),
(22877, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:15:57'),
(22878, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:15:57'),
(22879, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:16:00'),
(22880, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 05:16:09'),
(22881, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 05:16:09'),
(22882, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:16:11'),
(22883, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:16:32'),
(22884, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:16:35'),
(22885, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 05:17:02'),
(22886, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 05:17:03'),
(22887, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:17:04'),
(22888, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:19:13'),
(22889, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:19:15'),
(22890, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 05:19:22'),
(22891, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 05:19:23'),
(22892, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:19:24'),
(22893, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:32:14'),
(22894, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:32:16'),
(22895, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:33:02'),
(22896, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:33:40'),
(22897, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:33:50'),
(22898, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:35:13'),
(22899, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:35:13'),
(22900, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:35:15'),
(22901, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:35:26'),
(22902, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:35:26'),
(22903, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:35:28'),
(22904, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:36:55'),
(22905, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:37:11'),
(22906, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:37:13'),
(22907, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:37:22'),
(22908, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:37:22'),
(22909, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:37:24'),
(22910, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 05:37:34'),
(22911, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 05:37:34'),
(22912, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 05:37:40'),
(22913, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 05:39:16'),
(22914, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 05:39:16'),
(22915, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:40:38'),
(22916, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:54:09'),
(22917, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:55:38'),
(22918, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 05:57:21'),
(22919, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 06:00:04'),
(22920, NULL, '::1', 'common/login', 'view the login page', 'GET', '2020-06-18 21:37:09'),
(22921, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-18 21:37:14'),
(22922, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 21:37:14'),
(22923, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 21:37:17'),
(22924, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 21:37:19'),
(22925, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 21:37:28'),
(22926, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 21:37:28'),
(22927, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 21:37:29'),
(22928, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 21:40:08'),
(22929, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 22:01:57'),
(22930, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 22:01:59'),
(22931, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 22:07:02'),
(22932, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 22:07:05'),
(22933, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 22:07:06'),
(22934, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:07:07'),
(22935, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 22:07:16'),
(22936, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 22:07:24'),
(22937, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 22:07:28'),
(22938, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 22:07:33'),
(22939, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 22:07:33'),
(22940, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:07:34'),
(22941, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:09:11'),
(22942, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:09:36'),
(22943, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:10:08'),
(22944, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:17:33'),
(22945, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:18:16'),
(22946, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:20:26'),
(22947, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 22:20:34'),
(22948, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 22:20:35'),
(22949, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 22:22:00'),
(22950, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 22:22:01'),
(22951, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 22:22:02'),
(22952, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:22:03'),
(22953, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:27:39'),
(22954, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:28:44'),
(22955, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:28:48'),
(22956, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:29:42'),
(22957, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:32:37'),
(22958, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:33:04'),
(22959, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:33:23'),
(22960, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:34:01'),
(22961, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:34:46'),
(22962, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:34:51'),
(22963, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:35:22'),
(22964, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:35:50'),
(22965, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:53:11'),
(22966, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 22:53:13'),
(22967, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:55:10'),
(22968, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 22:55:12'),
(22969, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 22:55:31'),
(22970, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 22:55:33'),
(22971, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 22:55:50'),
(22972, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:13:01'),
(22973, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:13:04'),
(22974, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:13:23'),
(22975, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:13:23'),
(22976, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:13:27'),
(22977, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:14:20'),
(22978, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:14:24'),
(22979, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:14:39'),
(22980, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:14:42'),
(22981, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:15:16'),
(22982, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:15:19'),
(22983, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:15:23'),
(22984, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:15:26'),
(22985, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:15:33'),
(22986, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 23:15:41'),
(22987, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-18 23:16:11'),
(22988, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-18 23:16:39'),
(22989, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-18 23:16:39'),
(22990, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 23:16:41'),
(22991, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 23:16:41'),
(22992, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:16:43'),
(22993, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:16:46'),
(22994, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:16:48'),
(22995, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:16:50'),
(22996, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:16:52'),
(22997, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:17:24'),
(22998, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:17:27'),
(22999, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:17:52'),
(23000, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:17:53'),
(23001, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:17:55'),
(23002, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:29:26'),
(23003, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:29:31'),
(23004, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:29:46'),
(23005, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:30:06'),
(23006, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:30:10'),
(23007, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:30:15'),
(23008, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:31:44'),
(23009, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:31:47'),
(23010, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:31:48'),
(23011, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:32:16'),
(23012, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:32:19'),
(23013, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:32:20'),
(23014, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:32:26'),
(23015, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:32:30'),
(23016, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:32:31'),
(23017, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:32:33'),
(23018, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:36:41'),
(23019, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:36:43'),
(23020, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:36:45'),
(23021, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:36:47'),
(23022, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:36:48'),
(23023, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:36:51'),
(23024, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:36:55'),
(23025, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-18 23:37:05'),
(23026, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:52:39'),
(23027, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:52:42'),
(23028, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:54:18'),
(23029, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-18 23:54:22'),
(23030, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:54:22'),
(23031, 1, '::1', 'extension/shipping', 'view the shipping page', 'GET', '2020-06-18 23:54:59'),
(23032, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2020-06-18 23:55:01'),
(23033, 1, '::1', 'shipping/usps', 'view the usps setting page', 'GET', '2020-06-18 23:55:29'),
(23034, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-18 23:55:34'),
(23035, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-18 23:55:34'),
(23036, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:55:36'),
(23037, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-18 23:55:39'),
(23038, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:55:39'),
(23039, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-18 23:55:40'),
(23040, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:55:40'),
(23041, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-18 23:55:46'),
(23042, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:55:46'),
(23043, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:57:34'),
(23044, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:57:43'),
(23045, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:57:50'),
(23046, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:57:53'),
(23047, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:57:56'),
(23048, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:58:46'),
(23049, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:58:50'),
(23050, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:59:21'),
(23051, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-18 23:59:27'),
(23052, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:59:38'),
(23053, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:59:43'),
(23054, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-18 23:59:48'),
(23055, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-18 23:59:53'),
(23056, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 00:00:04'),
(23057, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:01:14'),
(23058, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:01:16'),
(23059, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:01:16'),
(23060, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:01:32'),
(23061, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:01:34'),
(23062, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-19 00:01:43'),
(23063, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 00:01:43'),
(23064, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:01:47'),
(23065, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:01:55'),
(23066, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-19 00:01:59'),
(23067, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:04:51'),
(23068, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:04:55'),
(23069, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 00:04:58'),
(23070, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:05:01'),
(23071, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:05:04'),
(23072, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 00:05:09'),
(23073, NULL, '::1', '', 'view the dashboard', 'GET', '2020-06-19 21:32:39'),
(23074, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-19 21:32:45'),
(23075, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-06-19 21:32:45'),
(23076, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 21:32:49'),
(23077, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 21:32:50'),
(23078, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 21:35:53'),
(23079, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-19 21:35:59'),
(23080, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:36:01'),
(23081, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 21:36:01'),
(23082, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 21:36:01'),
(23083, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 21:37:05'),
(23084, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:37:07'),
(23085, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:37:56'),
(23086, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:39:07'),
(23087, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:39:24'),
(23088, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 21:39:24'),
(23089, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 21:39:24'),
(23090, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 21:39:26'),
(23091, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-19 21:56:09'),
(23092, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:56:11'),
(23093, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 21:56:11'),
(23094, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 21:56:11'),
(23095, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 21:56:13'),
(23096, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 21:56:36'),
(23097, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'POST', '2020-06-19 21:56:46'),
(23098, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 21:56:46'),
(23099, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 21:56:46'),
(23100, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-19 21:56:48'),
(23101, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 21:57:41'),
(23102, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 21:57:46'),
(23103, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-19 21:57:55'),
(23104, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 21:57:55'),
(23105, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-19 21:58:03'),
(23106, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 22:01:24'),
(23107, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 22:01:24'),
(23108, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:01:25'),
(23109, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:02:48'),
(23110, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:03:29'),
(23111, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 22:03:36'),
(23112, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:03:43'),
(23113, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 22:03:48'),
(23114, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:06:36'),
(23115, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-19 22:06:43'),
(23116, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 22:06:43'),
(23117, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 22:06:48'),
(23118, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 22:06:52'),
(23119, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:11:05'),
(23120, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 22:11:23'),
(23121, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 22:11:24'),
(23122, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:11:25'),
(23123, 1, '::1', 'extension/shipping/get_shipping_provider', '0', 'GET', '2020-06-19 22:11:35'),
(23124, 1, '::1', 'extension/shipping/get_shipping_services', '0', 'GET', '2020-06-19 22:11:35'),
(23125, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-19 22:11:38'),
(23126, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:11:44'),
(23127, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:12:36'),
(23128, 1, '::1', 'sale/sale/add', 'view the order add page', 'GET', '2020-06-19 22:12:38'),
(23129, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-19 22:12:40'),
(23130, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-19 22:12:40'),
(23131, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-19 22:35:43'),
(23132, NULL, '::1', '', 'view the dashboard', 'GET', '2020-06-20 19:53:21'),
(23133, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-06-20 19:53:26'),
(23134, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-06-20 19:53:26'),
(23135, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:00:10'),
(23136, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:12'),
(23137, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:26'),
(23138, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:38'),
(23139, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:51'),
(23140, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:51'),
(23141, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:00:51'),
(23142, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:01:27'),
(23143, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:01:33'),
(23144, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:01:36'),
(23145, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-20 20:02:06'),
(23146, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:02:06'),
(23147, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:02:08'),
(23148, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:02:09'),
(23149, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:02:11'),
(23150, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:03:37'),
(23151, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:03:49'),
(23152, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:03:53'),
(23153, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-20 20:04:01'),
(23154, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:04:01'),
(23155, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:04:06'),
(23156, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:05:49'),
(23157, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-20 20:06:01'),
(23158, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:06:01'),
(23159, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:06:04'),
(23160, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-20 20:07:04'),
(23161, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:07:04'),
(23162, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:07:06'),
(23163, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-20 20:07:14'),
(23164, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-20 20:07:14'),
(23165, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-20 20:07:15'),
(23166, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-20 20:11:39'),
(23167, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:12:05'),
(23168, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:12:10'),
(23169, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:12:16'),
(23170, 1, '::1', 'store/store', 'view the store page', 'GET', '2020-06-20 20:12:28'),
(23171, 1, '::1', 'store/store/edit', 'view the store edit page', 'GET', '2020-06-20 20:12:31'),
(23172, 1, '::1', 'store/store', 'view the store page', 'GET', '2020-06-20 20:12:34'),
(23173, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:12:36'),
(23174, 1, '::1', 'client/client/edit', 'view the client edit page', 'GET', '2020-06-20 20:12:39'),
(23175, 1, '::1', 'client/client/edit', 'view the client edit page', 'POST', '2020-06-20 20:13:07'),
(23176, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:13:08'),
(23177, 1, '::1', 'sale/sale_unsolved', 'view the unsolved order list', 'GET', '2020-06-20 20:13:09'),
(23178, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-06-20 20:13:11'),
(23179, 1, '::1', 'sale/sale_ajax/get_shippings', '0', 'POST', '2020-06-20 20:13:11'),
(23180, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-20 20:13:12'),
(23181, 1, '::1', 'sale/sale/edit', 'view the order edit page', 'GET', '2020-06-20 20:13:49'),
(23182, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-20 20:14:01'),
(23183, 1, '::1', 'client/client/get_client_addresses', '0', 'GET', '2020-06-20 20:14:07'),
(23184, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:24'),
(23185, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:28'),
(23186, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:33'),
(23187, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:39'),
(23188, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:46'),
(23189, 1, '::1', 'client/client/get_client_address', '0', 'GET', '2020-06-20 20:14:50'),
(23190, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:18:24'),
(23191, 1, '::1', 'client/client', 'view the client page', 'GET', '2020-06-20 20:23:33');

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
(2, 2, '-470.01'),
(3, 3, '-320.00'),
(4, 4, '-1014.79'),
(5, 5, '0.00'),
(6, 6, '410.40'),
(7, 7, '0.00'),
(8, 8, '-4998733.28'),
(9, 9, '0.00'),
(10, 10, '0.00');

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
(29, 5, '', '', 2, '2019-05-14 20:46:53', '2019-05-14 20:46:53'),
(30, 0, '', '', 2, '2019-06-04 10:34:11', '2019-06-04 10:34:11'),
(32, 6, '', '', 1, '2019-07-08 14:20:40', '2019-07-08 14:20:40'),
(33, 6, '', '', 1, '2019-07-08 14:20:52', '2019-07-08 14:20:52'),
(34, 8, '', '', 1, '2020-03-25 20:50:46', '2020-03-25 20:50:46'),
(35, 8, '', '', 1, '2020-03-25 20:51:04', '2020-03-25 20:51:04');

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
(66, 30, 'checkin fee by weight', '236.75');

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
  `carton` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_draft` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkin_product`
--

INSERT INTO `checkin_product` (`id`, `checkin_id`, `product_id`, `batch`, `carton`, `quantity`, `quantity_draft`, `location_id`) VALUES
(60, 20, 119, '', 0, 2, 0, 2527),
(61, 20, 120, '', 0, 4, 0, 2527),
(62, 20, 121, '', 0, 4, 0, 2527),
(63, 20, 122, '', 0, 15, 0, 2527),
(64, 20, 123, '', 0, 9, 0, 2527),
(65, 20, 118, '', 0, 4, 0, 2527),
(66, 20, 124, '', 0, 8, 0, 2527),
(67, 21, 125, '', 0, 1000, 0, 2527),
(68, 22, 126, '', 0, 600, 0, 2527),
(77, 28, 134, '', 0, 20, 0, 2527),
(78, 27, 133, '', 0, 40, 0, 2527),
(79, 26, 132, '', 0, 51, 0, 2527),
(80, 25, 130, '', 0, 40, 0, 2527),
(81, 24, 131, '', 0, 18, 0, 2527),
(82, 23, 129, '', 0, 55, 0, 2527),
(85, 29, 135, '', 0, 250, 0, 2527),
(86, 29, 136, '', 0, 250, 0, 2527),
(87, 30, 139, '', 0, 30, 0, 2527),
(89, 32, 141, '', 0, 50, 0, 0),
(90, 33, 142, '', 0, 50, 0, 0),
(91, 34, 144, '', 0, 0, 50, 0),
(92, 35, 145, '', 0, 0, 50, 0);

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
(123, '10000000000000123', 0, '', 2, '0.29', '2.42', '0.25', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2018-12-18 17:38:57', '2018-12-18 17:38:57'),
(124, '10000000000000124', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2018-12-18 17:41:04', '2018-12-18 17:41:04'),
(125, '10000000000000125', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'ups', 'gr', '', '', '', '', '2018-12-18 17:41:05', '2018-12-18 17:41:05'),
(126, '10000000000000126', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'usps', 'fc', '', '', '', '', '2018-12-20 12:50:06', '2018-12-20 12:50:06'),
(127, '10000000000000127', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'usps', 'fc', '', '', '', '', '2018-12-20 12:50:07', '2018-12-20 12:50:07'),
(128, '10000000000000128', 0, '', 2, '3.48', '29.00', '3.00', '2.00', 1, 5, 'usps', 'fc', '', '', '', '', '2018-12-20 12:50:08', '2018-12-20 12:50:08'),
(129, '10000000000000129', 0, '', 2, '3.48', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-21 14:28:15', '2018-12-21 14:28:15'),
(130, '10000000000000130', 0, '', 2, '3.48', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-21 14:28:16', '2018-12-21 14:28:16'),
(131, '10000000000000131', 0, '', 2, '3.48', '87.00', '3.00', '6.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-21 14:28:17', '2018-12-21 14:28:17'),
(132, '10000000000000132', 0, '', 2, '3.48', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-21 14:29:27', '2018-12-21 14:29:27'),
(133, '10000000000000133', 0, '', 2, '3.48', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-21 14:29:27', '2018-12-21 14:29:27'),
(136, '10000000000000136', 0, '', 2, '3.50', '35.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-26 17:49:11', '2018-12-26 17:49:11'),
(137, '10000000000000137', 0, '', 2, '3.50', '33.00', '3.00', '2.00', 1, 5, 'usps', 'pr', '', '', '', '', '2018-12-27 13:10:58', '2018-12-27 13:10:58'),
(138, '10000000000000138', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', NULL, '', '', '', '', '2019-05-08 17:12:50', '2019-05-08 17:12:50'),
(139, '10000000000000139', 0, '', 2, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', NULL, '', '', '', '', '2019-05-08 17:12:52', '2019-05-08 17:12:52'),
(140, '10000000000000140', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', NULL, '', '', '', '', '2019-05-08 17:12:52', '2019-05-08 17:12:52'),
(141, '10000000000000141', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'ltl', NULL, '', '', '', '', '2019-05-08 17:12:53', '2019-05-08 17:12:53'),
(142, '10000000000000142', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:11', '2019-05-09 15:58:11'),
(143, '10000000000000143', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:12', '2019-05-09 15:58:12'),
(144, '10000000000000144', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:12', '2019-05-09 15:58:12'),
(145, '10000000000000145', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:13', '2019-05-09 15:58:13'),
(146, '10000000000000146', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:14', '2019-05-09 15:58:14'),
(147, '10000000000000147', 0, '', 2, '26.00', '56.70', '20.40', '87.34', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:14', '2019-05-09 15:58:14'),
(148, '10000000000000148', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-09 15:58:15', '2019-05-09 15:58:15'),
(149, '10000000000000149', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', '', '', '', '', '', '2019-05-13 17:33:40', '2019-05-13 17:33:40'),
(150, '10000000000000150', 0, '', 2, '26.00', '56.70', '20.40', '87.34', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-13 17:33:41', '2019-05-13 17:33:41'),
(151, '10000000000000151', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'ltl', '', '', '', '', '', '2019-05-13 17:33:42', '2019-05-13 17:33:42'),
(152, '10000000000000152', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', '', '', '', '', '', '2019-05-13 17:33:42', '2019-05-13 17:33:42'),
(153, '10000000000000153', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'ltl', '', '', '', '', '', '2019-05-13 17:33:43', '2019-05-13 17:33:43'),
(154, '10000000000000154', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', '', '', '', '', '', '2019-05-13 17:33:44', '2019-05-13 17:33:44'),
(155, '10000000000000155', 0, '', 2, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-13 17:33:48', '2019-05-13 17:33:48'),
(156, '10000000000000156', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'usps', 'pr', '', '', '', '', '2019-05-13 17:36:34', '2019-05-13 17:36:34'),
(157, '10000000000000157', 0, '', 2, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-13 17:47:37', '2019-05-13 17:47:37'),
(158, '10000000000000158', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-15 16:39:45', '2019-05-15 16:39:45'),
(159, '10000000000000159', 0, '', 2, '13.00', '62.20', '10.60', '67.54', 1, 5, 'ltl', '', '', '', '', '', '2019-05-15 16:40:35', '2019-05-15 16:40:35'),
(160, '10000000000000160', 0, '', 1, '17.70', '65.00', '25.60', '160.16', 1, 5, 'ltl', '', '', '', '', '', '2019-05-15 16:41:17', '2019-05-15 16:41:17'),
(161, '10000000000000161', 0, '', 2, '17.70', '65.00', '25.60', '160.16', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-15 16:41:53', '2019-05-15 16:41:53'),
(162, '10000000000000162', 0, '', 2, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', '', '', '', '', '', '2019-05-17 13:05:47', '2019-05-17 13:05:47'),
(163, '10000000000000163', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-20 09:25:31', '2019-05-20 09:25:31'),
(164, '10000000000000164', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'ltl', 'roadrunner', '', '', '', '', '2019-05-20 09:26:51', '2019-05-20 09:26:51'),
(165, '10000000000000165', 0, '', 2, '26.00', '42.00', '9.80', '36.52', 1, 5, 'fedex', 'ghd', '', '', '', '', '2019-05-22 13:19:56', '2019-05-22 13:19:56'),
(166, '10000000000000166', 0, '', 2, '19.70', '66.50', '25.60', '181.50', 1, 5, 'fedex', 'ghd', '', '', '', '', '2019-05-22 13:19:57', '2019-05-22 13:19:57'),
(167, '10000000000000167', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'fedex', 'ghd', '', '', '', '', '2019-05-22 13:19:58', '2019-05-22 13:19:58'),
(168, '10000000000000168', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'fedex', 'ghd', '', '', '', '', '2019-05-22 13:19:59', '2019-05-22 13:19:59'),
(169, '10000000000000169', 0, '', 2, '19.70', '66.50', '25.60', '181.50', 1, 5, 'postpony', 'pfg', '', '', '', '', '2019-05-23 21:27:30', '2019-05-23 21:27:30'),
(170, '10000000000000170', 0, '', 2, '15.70', '62.20', '21.20', '118.36', 1, 5, 'fedex', 'ghd', '', '', '', '', '2019-05-26 23:06:30', '2019-05-26 23:06:30'),
(171, '10000000000000171', 0, '', 2, '17.70', '65.00', '13.80', '99.00', 1, 5, 'postpony', 'pfg', '', '', '', '', '2019-05-29 18:05:50', '2019-05-29 18:05:50'),
(172, '10000000000000172', 0, '', 2, '19.70', '66.50', '25.60', '181.50', 1, 5, 'postpony', 'pfg', '', '', '', '', '2019-05-29 18:05:51', '2019-05-29 18:05:51'),
(175, '10000000000000175', 0, '', 2, '15.70', '62.20', '21.20', '118.36', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:48', '2019-06-04 10:24:48'),
(176, '10000000000000176', 0, '', 1, '17.70', '65.00', '13.80', '99.00', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:50', '2019-06-04 10:24:50'),
(177, '10000000000000177', 0, '', 2, '17.70', '65.00', '25.60', '160.16', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:51', '2019-06-04 10:24:51'),
(178, '10000000000000178', 0, '', 2, '15.70', '62.20', '21.20', '118.36', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:51', '2019-06-04 10:24:51'),
(179, '10000000000000179', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:52', '2019-06-04 10:24:52'),
(180, '10000000000000180', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:52', '2019-06-04 10:24:52'),
(181, '10000000000000181', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:53', '2019-06-04 10:24:53'),
(182, '10000000000000182', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:53', '2019-06-04 10:24:53'),
(183, '10000000000000183', 0, '', 2, '23.60', '51.20', '4.00', '39.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-04 10:24:54', '2019-06-04 10:24:54'),
(184, '10000000000000184', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:20', '2019-06-07 17:01:20'),
(185, '10000000000000185', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:21', '2019-06-07 17:01:21'),
(186, '10000000000000186', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:22', '2019-06-07 17:01:22'),
(187, '10000000000000187', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:22', '2019-06-07 17:01:22'),
(188, '10000000000000188', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:25', '2019-06-07 17:01:25'),
(189, '10000000000000189', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:26', '2019-06-07 17:01:26'),
(190, '10000000000000190', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:27', '2019-06-07 17:01:27'),
(191, '10000000000000191', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-07 17:01:29', '2019-06-07 17:01:29'),
(192, '10000000000000192', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:53', '2019-06-10 17:35:53'),
(193, '10000000000000193', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:54', '2019-06-10 17:35:54'),
(194, '10000000000000194', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:55', '2019-06-10 17:35:55'),
(195, '10000000000000195', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:55', '2019-06-10 17:35:55'),
(196, '10000000000000196', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:56', '2019-06-10 17:35:56'),
(197, '10000000000000197', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-10 17:35:57', '2019-06-10 17:35:57'),
(198, '10000000000000198', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:17', '2019-06-12 16:35:17'),
(199, '10000000000000199', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:18', '2019-06-12 16:35:18'),
(200, '10000000000000200', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:19', '2019-06-12 16:35:19'),
(201, '10000000000000201', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:19', '2019-06-12 16:35:19'),
(202, '10000000000000202', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:20', '2019-06-12 16:35:20'),
(203, '10000000000000203', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:20', '2019-06-12 16:35:20'),
(204, '10000000000000204', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:21', '2019-06-12 16:35:21'),
(205, '10000000000000205', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '', '', '', '', '2019-06-12 16:35:22', '2019-06-12 16:35:22'),
(207, '10000000000000207', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-17 19:26:20', '2019-06-17 19:26:20'),
(208, '10000000000000208', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-17 19:26:21', '2019-06-17 19:26:21'),
(209, '10000000000000209', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-17 19:26:22', '2019-06-17 19:26:22'),
(210, '10000000000000210', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-20 11:51:22', '2019-06-20 11:51:22'),
(211, '10000000000000211', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-20 11:51:23', '2019-06-20 11:51:23'),
(212, '10000000000000212', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-20 11:51:23', '2019-06-20 11:51:23'),
(213, '10000000000000213', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-21 10:14:43', '2019-06-21 10:14:43'),
(214, '10000000000000214', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-24 11:04:32', '2019-06-24 11:04:32'),
(215, '10000000000000215', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-24 11:04:33', '2019-06-24 11:04:33'),
(216, '10000000000000216', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-24 11:04:34', '2019-06-24 11:04:34'),
(217, '10000000000000217', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-06-25 14:14:13', '2019-06-25 14:14:13'),
(218, '10000000000000218', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-03 09:05:13', '2019-07-03 09:05:13'),
(219, '10000000000000219', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-03 09:05:14', '2019-07-03 09:05:14'),
(220, '10000000000000220', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-04 10:00:01', '2019-07-04 10:00:01'),
(221, '10000000000000221', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-04 10:00:02', '2019-07-04 10:00:02'),
(222, '10000000000000222', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-04 10:00:03', '2019-07-04 10:00:03'),
(223, '10000000000000223', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-04 10:00:04', '2019-07-04 10:00:04'),
(224, '10000000000000224', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-04 17:14:01', '2019-07-04 17:14:01'),
(225, '10000000000000225', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-06 13:20:39', '2019-07-06 13:20:39'),
(226, '10000000000000226', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-06 13:20:47', '2019-07-06 13:20:47'),
(227, '10000000000000227', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-06 13:20:48', '2019-07-06 13:20:48'),
(228, '10000000000000228', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-06 13:20:49', '2019-07-06 13:20:49'),
(229, '10000000000000229', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-06 13:20:50', '2019-07-06 13:20:50'),
(230, '10000000000000230', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 11:56:48', '2019-07-09 11:56:48'),
(231, '10000000000000231', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 11:56:58', '2019-07-09 11:56:58'),
(232, '10000000000000232', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 11:57:04', '2019-07-09 11:57:04'),
(233, '10000000000000233', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 11:57:09', '2019-07-09 11:57:09'),
(234, '10000000000000234', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 12:22:37', '2019-07-09 12:22:37'),
(235, '10000000000000235', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 12:22:42', '2019-07-09 12:22:42'),
(236, '10000000000000236', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 12:22:48', '2019-07-09 12:22:48'),
(237, '10000000000000237', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-09 12:22:54', '2019-07-09 12:22:54'),
(238, '10000000000000238', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-10 18:52:27', '2019-07-10 18:52:27'),
(239, '10000000000000239', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-10 18:52:33', '2019-07-10 18:52:33'),
(240, '10000000000000240', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-10 18:52:39', '2019-07-10 18:52:39'),
(241, '10000000000000241', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-10 18:52:45', '2019-07-10 18:52:45'),
(242, '10000000000000242', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-10 18:52:51', '2019-07-10 18:52:51'),
(243, '10000000000000243', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:23', '2019-07-11 23:44:23'),
(244, '10000000000000244', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:30', '2019-07-11 23:44:30'),
(245, '10000000000000245', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:37', '2019-07-11 23:44:37'),
(246, '10000000000000246', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:43', '2019-07-11 23:44:43'),
(247, '10000000000000247', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:49', '2019-07-11 23:44:49'),
(248, '10000000000000248', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-11 23:44:55', '2019-07-11 23:44:55'),
(249, '10000000000000249', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:38:41', '2019-07-16 13:38:41'),
(250, '10000000000000250', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:38:47', '2019-07-16 13:38:47'),
(251, '10000000000000251', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:38:52', '2019-07-16 13:38:52'),
(252, '10000000000000252', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:38:58', '2019-07-16 13:38:58'),
(253, '10000000000000253', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:04', '2019-07-16 13:39:04'),
(254, '10000000000000254', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:10', '2019-07-16 13:39:10'),
(255, '10000000000000255', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:15', '2019-07-16 13:39:15'),
(256, '10000000000000256', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:21', '2019-07-16 13:39:21'),
(257, '10000000000000257', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:38', '2019-07-16 13:39:38'),
(258, '10000000000000258', 0, '', 2, '13.00', '65.00', '13.00', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:39:48', '2019-07-16 13:39:48'),
(259, '10000000000000259', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:30', '2019-07-16 13:40:30'),
(260, '10000000000000260', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:36', '2019-07-16 13:40:36'),
(261, '10000000000000261', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:41', '2019-07-16 13:40:41'),
(262, '10000000000000262', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:47', '2019-07-16 13:40:47'),
(263, '10000000000000263', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:52', '2019-07-16 13:40:52'),
(264, '10000000000000264', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:40:58', '2019-07-16 13:40:58'),
(265, '10000000000000265', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:41:03', '2019-07-16 13:41:03'),
(266, '10000000000000266', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '', '', '', '', '2019-07-16 13:41:09', '2019-07-16 13:41:09'),
(267, '10000000000000267', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-17 10:43:54', '2019-07-17 10:43:54'),
(268, '10000000000000268', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-17 20:28:43', '2019-07-17 20:28:43'),
(269, '10000000000000269', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:21', '2019-07-19 13:25:21'),
(270, '10000000000000270', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:27', '2019-07-19 13:25:27'),
(271, '10000000000000271', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:32', '2019-07-19 13:25:32'),
(272, '10000000000000272', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:38', '2019-07-19 13:25:38'),
(273, '10000000000000273', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:44', '2019-07-19 13:25:44'),
(274, '10000000000000274', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:49', '2019-07-19 13:25:49'),
(275, '10000000000000275', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:25:55', '2019-07-19 13:25:55'),
(276, '10000000000000276', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-19 13:26:12', '2019-07-19 13:26:12'),
(277, '10000000000000277', 0, '', 2, '15.70', '62.20', '21.20', '118.36', 1, 5, 'fedex', 'ghd', 'checkout_weight', '', '', '', '2019-07-19 13:59:03', '2019-07-19 13:59:03'),
(278, '10000000000000278', 0, '', 2, '13.00', '62.20', '10.60', '67.54', 1, 5, 'ltl', 'roadrunner', 'checkout_weight', '', '', '', '2019-07-19 13:59:31', '2019-07-19 13:59:31'),
(279, '10000000000000279', 0, '', 1, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', 'checkout_weight', '', '', '', '2019-07-19 13:59:37', '2019-07-19 13:59:37'),
(280, '10000000000000280', 0, '', 1, '19.70', '66.50', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', 'checkout_weight', '', '', '', '2019-07-19 13:59:43', '2019-07-19 13:59:43'),
(281, '10000000000000281', 0, '', 1, '26.00', '42.00', '9.80', '36.52', 1, 5, 'ltl', 'central_freight_', 'checkout_weight', '', '', '', '2019-07-19 13:59:48', '2019-07-19 13:59:48'),
(282, '10000000000000282', 0, '', 1, '19.70', '66.50', '11.80', '82.50', 1, 5, 'fedex', 'ghd', 'checkout_weight', '', '', '', '2019-07-19 13:59:54', '2019-07-19 13:59:54'),
(283, '10000000000000283', 0, '', 2, '26.00', '56.70', '20.40', '87.34', 1, 5, 'ltl', 'roadrunner', 'checkout_weight', '', '', '', '2019-07-19 14:00:00', '2019-07-19 14:00:00'),
(284, '10000000000000284', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:12', '2019-07-23 17:42:12'),
(285, '10000000000000285', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:17', '2019-07-23 17:42:17'),
(286, '10000000000000286', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:23', '2019-07-23 17:42:23'),
(287, '10000000000000287', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:30', '2019-07-23 17:42:30'),
(288, '10000000000000288', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:35', '2019-07-23 17:42:35'),
(289, '10000000000000289', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:41', '2019-07-23 17:42:41'),
(290, '10000000000000290', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:47', '2019-07-23 17:42:47'),
(291, '10000000000000291', 0, '', 2, '13.00', '62.20', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:52', '2019-07-23 17:42:52'),
(292, '10000000000000292', 0, '', 1, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:42:58', '2019-07-23 17:42:58'),
(293, '10000000000000293', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:03', '2019-07-23 17:43:03'),
(294, '10000000000000294', 0, '', 2, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:10', '2019-07-23 17:43:10'),
(295, '10000000000000295', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:15', '2019-07-23 17:43:15'),
(296, '10000000000000296', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:21', '2019-07-23 17:43:21'),
(297, '10000000000000297', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:26', '2019-07-23 17:43:26'),
(298, '10000000000000298', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:31', '2019-07-23 17:43:31'),
(299, '10000000000000299', 0, '', 1, '15.75', '56.70', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-23 17:43:37', '2019-07-23 17:43:37'),
(300, '10000000000000300', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-25 13:25:35', '2019-07-25 13:25:35'),
(301, '10000000000000301', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-07-25 13:25:40', '2019-07-25 13:25:40'),
(302, '10000000000000302', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:22:00', '2019-08-08 13:22:00'),
(303, '10000000000000303', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:22:23', '2019-08-08 13:22:23'),
(304, '10000000000000304', 0, '', 2, '19.70', '66.50', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:22:35', '2019-08-08 13:22:35'),
(305, '10000000000000305', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:23:12', '2019-08-08 13:23:12'),
(306, '10000000000000306', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:23:40', '2019-08-08 13:23:40'),
(307, '10000000000000307', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-08 13:24:04', '2019-08-08 13:24:04'),
(308, '10000000000000308', 0, '', 2, '19.70', '66.50', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-13 10:54:20', '2019-08-13 10:54:20'),
(309, '10000000000000309', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-15 15:38:46', '2019-08-15 15:38:46'),
(310, '10000000000000310', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-15 15:38:51', '2019-08-15 15:38:51'),
(311, '10000000000000311', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-15 15:38:57', '2019-08-15 15:38:57'),
(312, '10000000000000312', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-15 15:39:03', '2019-08-15 15:39:03'),
(313, '10000000000000313', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-17 14:56:06', '2019-08-17 14:56:06'),
(314, '10000000000000314', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-17 14:56:12', '2019-08-17 14:56:12'),
(315, '10000000000000315', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-20 19:07:34', '2019-08-20 19:07:34'),
(316, '10000000000000316', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-20 19:07:40', '2019-08-20 19:07:40'),
(317, '10000000000000317', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-20 19:07:46', '2019-08-20 19:07:46'),
(318, '10000000000000318', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-20 19:07:51', '2019-08-20 19:07:51'),
(319, '10000000000000319', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:41:36', '2019-08-25 20:41:36'),
(320, '10000000000000320', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:41:42', '2019-08-25 20:41:42'),
(321, '10000000000000321', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:41:48', '2019-08-25 20:41:48'),
(322, '10000000000000322', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:41:54', '2019-08-25 20:41:54'),
(323, '10000000000000323', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:42:00', '2019-08-25 20:42:00'),
(324, '10000000000000324', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:42:06', '2019-08-25 20:42:06'),
(325, '10000000000000325', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:42:30', '2019-08-25 20:42:30'),
(326, '10000000000000326', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-25 20:42:35', '2019-08-25 20:42:35'),
(327, '10000000000000327', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:25:58', '2019-08-27 20:25:58'),
(328, '10000000000000328', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:04', '2019-08-27 20:26:04'),
(329, '10000000000000329', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:09', '2019-08-27 20:26:09'),
(330, '10000000000000330', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:15', '2019-08-27 20:26:15'),
(331, '10000000000000331', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:21', '2019-08-27 20:26:21'),
(332, '10000000000000332', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:27', '2019-08-27 20:26:27'),
(333, '10000000000000333', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:33', '2019-08-27 20:26:33'),
(334, '10000000000000334', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-08-27 20:26:39', '2019-08-27 20:26:39'),
(335, '10000000000000335', 0, '', 1, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-01 05:51:11', '2019-09-01 05:51:11'),
(336, '10000000000000336', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-01 05:51:17', '2019-09-01 05:51:17'),
(337, '10000000000000337', 0, '', 2, '12.50', '62.50', '10.50', '39.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:06:34', '2019-09-07 11:06:34'),
(338, '10000000000000338', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:06:39', '2019-09-07 11:06:39'),
(339, '10000000000000339', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:06:46', '2019-09-07 11:06:46'),
(340, '10000000000000340', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:06:51', '2019-09-07 11:06:51'),
(341, '10000000000000341', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:06:57', '2019-09-07 11:06:57'),
(342, '10000000000000342', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:07:02', '2019-09-07 11:07:02'),
(343, '10000000000000343', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:07:08', '2019-09-07 11:07:08'),
(344, '10000000000000344', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:07:14', '2019-09-07 11:07:14'),
(345, '10000000000000345', 0, '', 2, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:07:20', '2019-09-07 11:07:20'),
(346, '10000000000000346', 0, '', 2, '26.00', '42.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:07:26', '2019-09-07 11:07:26'),
(347, '10000000000000347', 0, '', 1, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:20:19', '2019-09-07 11:20:19'),
(348, '10000000000000348', 0, '', 1, '12.50', '62.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:20:24', '2019-09-07 11:20:24'),
(349, '10000000000000349', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-07 11:20:36', '2019-09-07 11:20:36'),
(351, '10000000000000351', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-17 18:16:39', '2019-09-17 18:16:39'),
(352, '10000000000000352', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-09-27 00:33:31', '2019-09-27 00:33:31'),
(353, '10000000000000353', 0, '', 2, '19.70', '66.50', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-10-01 15:32:19', '2019-10-01 15:32:19'),
(354, '10000000000000354', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-10-11 18:36:42', '2019-10-11 18:36:42'),
(355, '10000000000000355', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-10-16 20:51:33', '2019-10-16 20:51:33'),
(356, '10000000000000356', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-10-19 03:06:34', '2019-10-19 03:06:34'),
(358, '10000000000000358', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-12-03 15:58:13', '2019-12-03 15:58:13'),
(359, '10000000000000359', 0, '', 2, '19.70', '66.50', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-12-03 15:58:18', '2019-12-03 15:58:18'),
(360, '10000000000000360', 0, '', 2, '19.70', '66.50', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-12-22 15:04:41', '2019-12-22 15:04:41'),
(361, '10000000000000361', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2019-12-22 15:04:47', '2019-12-22 15:04:47'),
(362, '10000000000000362', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-01 03:12:46', '2020-04-01 03:12:46'),
(363, '10000000000000363', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-01 03:16:22', '2020-04-01 03:16:22'),
(364, '10000000000000364', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-01 03:16:28', '2020-04-01 03:16:28'),
(365, '10000000000000365', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:23:38', '2020-04-08 20:23:38'),
(366, '10000000000000366', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:23:44', '2020-04-08 20:23:44'),
(367, '10000000000000367', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:24:45', '2020-04-08 20:24:45'),
(368, '10000000000000368', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:24:51', '2020-04-08 20:24:51'),
(369, '10000000000000369', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:25:33', '2020-04-08 20:25:33'),
(370, '10000000000000370', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-08 20:25:39', '2020-04-08 20:25:39'),
(371, '10000000000000371', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-23 02:42:08', '2020-04-23 02:42:08'),
(372, '10000000000000372', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-23 02:43:01', '2020-04-23 02:43:01'),
(373, '10000000000000373', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-23 02:43:07', '2020-04-23 02:43:07'),
(374, '10000000000000374', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-23 10:28:27', '2020-04-23 10:28:27'),
(375, '10000000000000375', 0, '', 2, '15.00', '48.80', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', 'checkout_weight', '', '', '', '2020-04-23 10:28:33', '2020-04-23 10:28:33');

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
(258, 123, 27, 1),
(259, 124, 27, 1),
(260, 125, 27, 1),
(261, 126, 27, 1),
(262, 127, 27, 1),
(263, 128, 27, 1),
(264, 129, 27, 1),
(265, 130, 27, 1),
(266, 131, 27, 3),
(267, 132, 27, 1),
(268, 133, 27, 1),
(271, 136, 27, 1),
(272, 137, 27, 1),
(273, 138, 31, 1),
(274, 139, 35, 1),
(275, 140, 31, 1),
(276, 141, 32, 1),
(285, 148, 31, 1),
(286, 146, 32, 1),
(287, 145, 31, 1),
(288, 144, 32, 1),
(289, 143, 31, 1),
(290, 147, 36, 1),
(291, 147, 32, 1),
(300, 155, 35, 1),
(301, 149, 31, 1),
(302, 150, 36, 1),
(303, 150, 32, 1),
(304, 151, 32, 1),
(305, 152, 31, 1),
(306, 153, 32, 1),
(307, 154, 31, 1),
(308, 142, 32, 1),
(310, 156, 32, 1),
(312, 157, 35, 1),
(314, 158, 31, 1),
(316, 159, 33, 1),
(321, 160, 34, 1),
(322, 160, 31, 1),
(325, 161, 34, 1),
(326, 161, 31, 1),
(328, 162, 35, 1),
(331, 163, 31, 1),
(332, 164, 31, 1),
(333, 165, 32, 1),
(334, 166, 35, 1),
(335, 166, 31, 1),
(336, 167, 31, 1),
(337, 168, 31, 1),
(340, 169, 35, 1),
(341, 169, 31, 1),
(344, 170, 36, 1),
(345, 170, 33, 1),
(357, 172, 35, 1),
(358, 172, 31, 1),
(359, 171, 31, 1),
(360, 175, 36, 1),
(361, 175, 33, 1),
(362, 176, 31, 1),
(363, 177, 34, 1),
(364, 177, 31, 1),
(365, 178, 36, 1),
(366, 178, 33, 1),
(367, 179, 36, 1),
(368, 180, 33, 1),
(369, 181, 36, 1),
(370, 182, 33, 1),
(371, 183, 31, 1),
(372, 184, 36, 1),
(373, 185, 33, 1),
(374, 186, 36, 1),
(375, 187, 33, 1),
(376, 188, 36, 1),
(377, 189, 33, 1),
(378, 190, 36, 1),
(379, 191, 33, 1),
(380, 192, 33, 1),
(381, 193, 36, 1),
(382, 194, 33, 1),
(383, 195, 36, 1),
(384, 196, 33, 1),
(385, 197, 36, 1),
(386, 198, 33, 1),
(387, 199, 36, 1),
(388, 200, 33, 1),
(389, 201, 36, 1),
(390, 202, 33, 1),
(391, 203, 36, 1),
(392, 204, 33, 1),
(393, 205, 36, 1),
(395, 207, 36, 1),
(396, 208, 33, 1),
(397, 209, 33, 1),
(398, 210, 36, 1),
(399, 211, 36, 1),
(400, 212, 33, 1),
(401, 213, 33, 1),
(402, 214, 36, 1),
(403, 215, 33, 1),
(404, 216, 36, 1),
(405, 217, 34, 1),
(406, 218, 32, 1),
(407, 219, 40, 1),
(408, 220, 36, 1),
(409, 221, 33, 1),
(410, 222, 36, 1),
(411, 223, 33, 1),
(412, 224, 36, 1),
(413, 225, 33, 1),
(414, 226, 36, 1),
(415, 227, 33, 1),
(416, 228, 36, 1),
(417, 229, 33, 1),
(418, 230, 33, 1),
(419, 231, 36, 1),
(420, 232, 36, 1),
(421, 233, 33, 1),
(422, 234, 36, 1),
(423, 235, 33, 1),
(424, 236, 36, 1),
(425, 237, 33, 1),
(426, 238, 36, 1),
(427, 239, 32, 1),
(428, 240, 33, 1),
(429, 241, 40, 1),
(430, 242, 36, 1),
(431, 243, 36, 1),
(432, 244, 36, 1),
(433, 245, 40, 1),
(434, 246, 40, 1),
(435, 247, 32, 1),
(436, 248, 32, 1),
(437, 249, 40, 1),
(438, 250, 32, 1),
(439, 251, 36, 1),
(440, 252, 36, 1),
(441, 253, 36, 1),
(442, 254, 33, 1),
(443, 255, 33, 1),
(444, 256, 33, 1),
(445, 257, 36, 1),
(446, 258, 33, 1),
(447, 259, 36, 1),
(448, 260, 36, 1),
(449, 261, 36, 1),
(450, 262, 33, 1),
(451, 263, 33, 1),
(452, 264, 33, 1),
(453, 265, 36, 1),
(454, 266, 36, 1),
(456, 267, 33, 1),
(457, 268, 36, 1),
(458, 269, 33, 1),
(459, 270, 36, 1),
(460, 271, 33, 1),
(461, 272, 33, 1),
(462, 273, 33, 1),
(463, 274, 36, 1),
(464, 275, 36, 1),
(465, 276, 36, 1),
(466, 277, 36, 1),
(467, 277, 33, 1),
(468, 278, 33, 1),
(469, 279, 35, 1),
(470, 280, 35, 1),
(471, 281, 32, 1),
(472, 282, 35, 1),
(473, 283, 36, 1),
(474, 283, 32, 1),
(475, 284, 33, 1),
(476, 285, 33, 1),
(477, 286, 36, 1),
(478, 287, 36, 1),
(479, 288, 33, 1),
(480, 289, 40, 1),
(481, 290, 33, 1),
(482, 291, 33, 1),
(483, 292, 36, 1),
(484, 293, 40, 1),
(485, 294, 36, 1),
(486, 295, 32, 1),
(487, 296, 32, 1),
(488, 297, 40, 1),
(489, 298, 32, 1),
(490, 299, 36, 1),
(491, 300, 32, 1),
(492, 301, 40, 1),
(493, 302, 32, 1),
(494, 303, 40, 1),
(495, 304, 35, 1),
(496, 305, 34, 1),
(497, 306, 32, 1),
(498, 307, 40, 1),
(499, 308, 35, 1),
(500, 309, 32, 1),
(501, 310, 40, 1),
(502, 311, 32, 1),
(503, 312, 40, 1),
(504, 313, 32, 1),
(505, 314, 40, 1),
(506, 315, 32, 1),
(507, 316, 40, 1),
(508, 317, 40, 1),
(509, 318, 32, 1),
(510, 319, 32, 1),
(511, 320, 40, 1),
(512, 321, 40, 1),
(513, 322, 32, 1),
(514, 323, 32, 1),
(515, 324, 40, 1),
(516, 325, 32, 1),
(517, 326, 40, 1),
(518, 327, 32, 1),
(519, 328, 40, 1),
(520, 329, 40, 1),
(521, 330, 32, 1),
(522, 331, 32, 1),
(523, 332, 40, 1),
(524, 333, 40, 1),
(525, 334, 32, 1),
(526, 335, 32, 1),
(527, 336, 40, 1),
(528, 337, 40, 1),
(529, 338, 32, 1),
(530, 339, 32, 1),
(531, 340, 40, 1),
(532, 341, 40, 1),
(533, 342, 32, 1),
(534, 343, 32, 1),
(535, 344, 40, 1),
(536, 345, 40, 1),
(537, 346, 32, 1),
(538, 347, 40, 1),
(539, 348, 40, 1),
(540, 349, 34, 1),
(542, 351, 34, 1),
(543, 352, 34, 1),
(544, 353, 35, 1),
(545, 354, 34, 1),
(546, 355, 34, 1),
(547, 356, 34, 1),
(549, 358, 34, 1),
(550, 359, 35, 1),
(551, 360, 35, 1),
(552, 361, 34, 1),
(553, 362, 34, 1),
(554, 363, 34, 1),
(555, 364, 34, 1),
(556, 365, 34, 1),
(557, 366, 34, 1),
(558, 367, 34, 1),
(559, 368, 34, 1),
(560, 369, 34, 1),
(561, 370, 34, 1),
(562, 371, 34, 1),
(563, 372, 34, 1),
(564, 373, 34, 1),
(565, 374, 34, 1),
(566, 375, 34, 1);

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
  `data` varchar(255) NOT NULL,
  `permission` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `ip_address`, `password`, `salt`, `email`, `status`, `firstname`, `lastname`, `company`, `street`, `city`, `state`, `country`, `zipcode`, `phone`, `data`, `permission`) VALUES
(2, '', '0b09d2289b38afe9a3a4cf50a9d9621892108f38', '826', 'veetrading2015@gmail.com', 1, 'Newman', 'Trading', 'Vee Trading Inc', '687 W Price Creek Rd', 'Talking Rock', 'GA', 'United States', '30175', '7066695143', '', ''),
(3, '', '647dd7cd5f4a5996d8263f93886ec311bb39d06d', '614', '2573661972@qq.com', 1, 'Amy', 'Huang', '广州容宇生物科技有限公司', '', '', '', '', '', '18565316449', '', ''),
(4, '', 'd2672e812e995f780e40627c78f9e07f65759092', '697', '1131748860@qq.com', 1, 'Todd', 'Zhou', 'TTX Lighting', '1135 Center Dr. Unit I', 'City of Industry', 'CA', 'United States', '91789', '6265508970', '', ''),
(5, '', 'f41491d738f3b390a3f33975a28fbd18a996e0ff', '763', '2414752130@qq.com', 1, 'Fancy', 'Lin', '广州容宇生物科技有限公司', '', '', '', '', '', '13971596369', '', ''),
(6, '', 'e967263b08bc082900332231c85829ef5822c99f', '243', 'kartonrepublic@gmail.com', 1, 'Cici', 'Zhan', ' Cartisan Design & Build Group, Inc', '', '', '', '', '', '626-333-2688', '', ''),
(7, '', 'e3cc4538e4a8729e2037a5d837de63fd149661d8', '404', '549930496@qq.com', 1, 'Justin', 'Yao', 'JUSTIN INC', '', '', '', '', '', '6265003460', '', ''),
(8, '', 'b2377fe317ca03bb25707c6ba8e8f8321c970e07', '303', 'sale@yjracing.com', 1, 'TTX ', 'Techonology', 'YJ Racing SPORTS INC', '1135 center dr unit IJ', 'City Of Industry', 'CA', 'US', '91789', '6268937741', '', 'a:1:{s:8:\"shipping\";a:2:{s:4:\"usps\";s:1:\"1\";s:8:\"postpony\";s:1:\"1\";}}'),
(9, '', '6c5ee5c8c23ec2ae8555afd1e1e9ec0defc9da86', '414', 'demo@hualongus.com', 1, 'Lucy', 'Lin', 'HUALONG DEMO', '750 Blue Ave', 'Pasadena', 'CA', 'United States', '91720', '6265509873', '', ''),
(10, '', 'b6e589ef6fee50fd764d36f3f1d60152da4553f9', '774', 'quedinge2012@gmail.com', 1, 'Sam', 'Parra', '', '11426 NEBRASKA CIR', 'OMAHA,', 'NE', 'United States', '68164', '3474483190', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `client_address`
--

CREATE TABLE `client_address` (
  `client_address_id` mediumint(8) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `company` varchar(128) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_address`
--

INSERT INTO `client_address` (`client_address_id`, `client_id`, `name`, `company`, `street`, `street2`, `city`, `state`, `country`, `zipcode`, `phone`) VALUES
(27, 8, 'Sam', 'TTX', '12012 Lambert Ave', '', 'El Monte', 'CA', 'US', '91732', '6265008555'),
(28, 8, 'Lucy', 'TTX', '750 Green Ave', '', 'Pasadena', 'CA', 'US', '91748', '6265009830'),
(29, 4, 'Sam', 'TTX', '12012 Lambert Ave', '', 'El Monte', 'CA', 'US', '91732', '6265008555'),
(30, 4, 'Lucy', 'TTX', '750 Green Ave', '', 'Pasadena', 'CA', 'US', '91750', '6268987842');

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
(4, 1, 'Daniela Montalvo', '', '', '4725 Randall dr', '', 'Las Vegas', 'Nevada', 'US', '89122', '7024095967'),
(5, NULL, 'TJ', '', '', '11615 E YATES CENTER RD', '', 'LYNDONVILLE', 'NY', 'US', '14098', ''),
(6, NULL, 'Karen Parsons', '', '', '13 Hathaway Ave', '', 'Peabody', 'MA', 'US', '09160', ''),
(7, NULL, 'Joshua Flaugh', '', '', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', 'US', '16635', ''),
(8, NULL, 'Joshua Flaugh', '', '', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', 'US', '16635', '8143814184'),
(9, NULL, 'Karen Parsons', '', '', '13 Hathaway Ave', '', 'Peabody', 'MA', 'US', '09160', '9789779971'),
(10, NULL, 'TJ', '', '', '11615 E YATES CENTER RD', '', 'LYNDONVILLE', 'NY', 'US', '14098', '5853535341'),
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
(29, 2, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'CA', 'United States', '91732', ''),
(30, 2, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'CA', 'US', '91732', ''),
(31, 2, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'California', 'US', '91732', ''),
(32, 2, 'John Hippard', 'hippardcompany@gmail.com', '', '1396 County Highway 16', '', 'Tower Hill', 'IL', 'United States', '62571-4196', '(618) 292-0025'),
(33, 2, 'Gregory S Shepherd ', '', '', '6030 WHITEGATE XING', '', 'EAST AMHERST', 'NY', 'US', '14051', '716-428-1033 '),
(34, 2, 'Raymond kreusch ', '', '', '40 GAFFNEY WAY', '', 'PORT READING', 'NJ', 'US', '07064', '9083098599'),
(35, 2, 'Jacob M. Kunkel', '', '', '953 750N AVE', '', 'MT STERLING', 'IL', 'US', '62353', '2174400564'),
(36, NULL, 'Frank Campbell', '', '', '1790 WINDY LN', '', 'SOUTHAVEN', 'MS', 'US', '38671-9421', ''),
(37, NULL, 'RANDY CONNER', '', '', '15762 JIM CT', '', 'JACKSONVILLE', 'FL', 'US', '32218-6878', ''),
(38, NULL, 'Luis Acosta', '', '', '6451 S DESERT BLVD', '', 'EL PASO', 'TX', 'US', '79932-8515', ''),
(39, 4, 'Luis Acosta', '', '', '6451 S DESERT BLVD', '', 'EL PASO', 'TX', 'US', '79932-85', ''),
(40, 4, 'RANDY CONNER', '', '', '15762 JIM CT', '', 'JACKSONVILLE', 'FL', 'US', '32218-68', ''),
(41, 4, 'Frank Campbell', '', '', '1790 WINDY LN', '', 'SOUTHAVEN', 'MS', 'US', '38671-94', ''),
(42, 4, 'ANTHONY MCDONALD', '', '', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', '美国', '30115-8517', ''),
(43, 4, 'ANTHONY MCDONALD', '', '', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', 'United States', '30115-85', ''),
(44, 4, 'ANTHONY MCDONALD', '', '', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', 'US', '30115-85', ''),
(45, 4, 'hardy mosley', '', '', '5166 W 134TH PL', '', 'HAWTHORNE', 'CA ', 'US', '90250-5622', '6269642930'),
(46, 4, 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '', '', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', 'US', '33172-2772', ''),
(47, 4, 'JESSIE WILSON', '', '', '4404 S ELMS RD', '', 'SWARTZ CREEK', 'MI', 'US', '48473-1565', '(810) 630-6102'),
(48, 4, 'EDWARD L DUNN', '', '', '30498 N 73RD ST', '', 'SCOTTSDALE', 'AZ', 'US', '85266-1820', '(480) 206-1413'),
(49, 4, 'RICKY OLIVARES', '', '', '1961 NEHEMIAH CT', '', 'LAS CRUCES', 'NM', 'US', '88001-1993', '(575) 644-2036'),
(50, 4, 'charles mallalieu', '', '', '142 W LESLIE LN', '', 'PANAMA CITY BEACH', 'FL', 'US', '32407-3969', '8503333997'),
(51, 4, 'Dawn R Miller', '', '', '4128 MOUNT VIEW RD', '', 'DANVILLE', 'VA ', 'US', '24540-9018', '540-314-4891'),
(52, 4, 'EDWARD L DUNN', '', '', '30498 N 73RD ST', '', 'SCOTTSDALE', 'AZ', 'US', '85266-18', '(480) 206-1413'),
(53, 4, 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '', '', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', 'US', '33172-27', ''),
(54, 4, 'RICKY OLIVARES', '', '', '1961 NEHEMIAH CT', '', 'LAS CRUCES', 'NM', 'US', '88001-19', '(575) 644-2036'),
(55, 4, 'JESSIE WILSON', '', '', '4404 S ELMS RD', '', 'SWARTZ CREEK', 'MI', 'US', '48473-15', '(810) 630-6102'),
(56, 4, 'Dawn R Miller', '', '', '4128 MOUNT VIEW RD', '', 'DANVILLE', 'VA ', 'US', '24540-90', '540-314-4891'),
(57, 4, 'RANDY CONNER', '', '', '15762 Jim Ct', '', 'JACKSONVILLE ', 'KL', 'US', '32218-6878', '904-210-6258'),
(58, 4, 'charles mallalieu', '', '', '142 W LESLIE LN', '', 'PANAMA CITY BEACH', 'FL', 'US', '32407-39', '8503333997'),
(59, 4, 'Christian M Antoniazzi', '', '', '101 MADISON AVE', '', 'QUINCY', 'MA', 'US', '02169-7810', '7813538594'),
(60, 4, 'Christian M Antoniazzi', '', '', '101 MADISON AVE', '', 'QUINCY', 'MA', 'US', '02169-78', '7813538594'),
(61, 4, 'hardy mosley', '', '', '5166 W 134TH PL', '', 'HAWTHORNE', 'CA ', 'US', '90250-56', '6269642930'),
(62, 4, 'RANDY CONNER', '', '', '15762 Jim Ct', '', 'JACKSONVILLE ', 'KL', 'US', '32218-68', '904-210-6258'),
(63, 4, 'Carla Barber', '', '', '9155 LUCY MOORE RD', '', 'NICHOLLS', 'GA ', 'US', '31554-4991', ''),
(64, 4, 'nathaniel newberger', '', '', '2075 WHITE OAK DR', '', 'STOW', 'OH', 'US', '44224-2646', '3308011156'),
(65, 4, 'Jose Alvarado', '', '', '3939 K ST', '', 'PHILADELPHIA', 'PA', 'US', '19124-5429', ''),
(66, 4, 'Jose Alvarado', '', '', '3939 K ST', '', 'PHILADELPHIA', 'PA', 'US', '19124-54', ''),
(67, 4, 'nathaniel newberger', '', '', '2075 WHITE OAK DR', '', 'STOW', 'OH', 'US', '44224-26', '3308011156'),
(68, 4, 'Carla Barber', '', '', '9155 LUCY MOORE RD', '', 'NICHOLLS', 'GA ', 'US', '31554-49', ''),
(69, 4, 'mark gadbois', '', '', '1104 HIGHLAND DR', '', 'DEL MAR', 'CA', 'US', '92014-3903', '7608159943'),
(70, 4, 'mark gadbois', '', '', '1104 HIGHLAND DR', '', 'DEL MAR', 'CA', 'US', '92014-39', '7608159943'),
(71, 4, 'Jeremy Parkins', '', '', '4506 PINE BREEZE DR', '', 'KINGWOOD', 'TX ', 'US', '77345-1242 ', '+1 415-851-9136 ext.'),
(72, 4, 'Roberto Navarro', '', '', '3520 BOWDEN CIR E', '', 'JACKSONVILLE', 'FL ', 'US', '32216-6244', '9048382250'),
(73, 4, 'Jeremy Parkins', '', '', '4506 PINE BREEZE DR', '', 'KINGWOOD', 'TX ', 'US', '77345-12', '+1 415-851-9136 ext.'),
(74, 4, 'Roberto Navarro', '', '', '3520 BOWDEN CIR E', '', 'JACKSONVILLE', 'FL ', 'US', '32216-62', '9048382250'),
(75, 4, 'Joseph Corbitt', '', '', '111 COOSA COUNTY ROAD 35', '', 'WEOGUFKA, ', 'AL ', 'US', '35183-2337', ''),
(76, 4, 'Rob Roussel', '', '', '4903 E 111TH PL', '', 'THORNTON', 'CO ', 'US', '80233-3815', ''),
(77, 4, 'Dustin - Maryville Auto Sales', '', '', '3019 E LAMAR ALEXANDER PKWY', '', 'MARYVILLE', 'TN', 'US', '37804-6038', ''),
(78, 4, 'jonathan c russell', '', '', '14103 DENNE ST', '', 'LIVONIA', 'MI', 'US', '48154-4305', ''),
(79, 4, 'Rob Roussel', '', '', '4903 E 111TH PL', '', 'THORNTON', 'CO ', 'US', '80233-38', '3035052095'),
(80, 4, 'Dustin - Maryville Auto Sales', '', '', '3019 E LAMAR ALEXANDER PKWY', '', 'MARYVILLE', 'TN', 'US', '37804-60', '8654140559'),
(81, 4, 'Joseph Corbitt', '', '', '111 COOSA COUNTY ROAD 35', '', 'WEOGUFKA, ', 'AL ', 'US', '35183-23', ''),
(82, 4, 'jonathan c russell', '', '', '14103 DENNE ST', '', 'LIVONIA', 'MI', 'US', '48154-43', ''),
(83, 4, 'Jose Fernandez', '', '', '1838 E PRESTWICK AVE', '', 'FRESNO', 'CA', 'US', '93730-3515', ''),
(84, 4, 'Jose Fernandez', '', '', '1838 E PRESTWICK AVE', '', 'FRESNO', 'CA', 'US', '93730-35', ''),
(85, 4, 'Kisner Welding Techniques, LLC', '', '', '400 N STATE ST', '', 'YORK', 'PA', 'US', '17403-1372', '7177473017'),
(86, 4, 'Kisner Welding Techniques, LLC', '', '', '400 N STATE ST', '', 'YORK', 'PA', 'US', '17403-13', '7177473017'),
(87, 4, 'Guillermo polanco', '', '', '6424 COLLINS AVE APT 202', '', 'MIAMI BEACH', 'FL', 'US', '33141-4655', '415-851-9136 ext. 72'),
(88, 4, 'K Moore', '', '', '1411 ETHERIDGE DR', '', 'AUBURN', 'GA', 'US', '30011-3368', '415-851-9136 ext. 28'),
(89, 4, 'Guillermo polanco', '', '', '6424 COLLINS AVE APT 202', '', 'MIAMI BEACH', 'FL', 'US', '33141-46', '415-851-9136 ext. 72'),
(90, 4, 'K Moore', '', '', '1411 ETHERIDGE DR', '', 'AUBURN', 'GA', 'US', '30011-33', '415-851-9136 ext. 28'),
(91, 4, 'Heather Scott', '', '', '203 KRISMARK TRL', '', 'ANDERSON', 'SC', 'US', '29621-7827', '8646176027'),
(92, 4, 'Steven J Richardson', '', '', '300 LASSO ST', '', 'ANGLETON', 'TX ', 'US', '77515-2772 ', '415-851-9136 ext. 99'),
(93, 4, 'Francisco valle', '', '', '452 PLAINFIELD ST', '', 'SPRINGFIELD', 'MA ', 'US', ' 01107-1032', '415-851-9136 ext. 14'),
(94, 4, 'RICHARD EDWARDS', '', '', '1364 E GREEN BAY ST', '', 'SHAWANO ', 'WI', 'US', '54166-2210', '(715) 526-1989'),
(95, 4, 'JOHN SNOW', '', '', '1834 N MARK ST', '', 'LAYTON', 'UT', 'US', '84041-4972', '415-851-9136 ext. 92'),
(96, 4, 'Lesley Boyster', '', '', '10132 RAINBOW SPRINGS RD', '', 'MINERAL POINT', 'MO', 'US', '63660-9496', '5734381488'),
(97, 4, 'Lesley Boyster', '', '', '10132 RAINBOW SPRINGS RD', '', 'MINERAL POINT', 'MO', 'US', '63660-94', '5734381488'),
(98, 4, 'JOHN SNOW', '', '', '1834 N MARK ST', '', 'LAYTON', 'UT', 'US', '84041-49', '415-851-9136 ext. 92'),
(99, 4, 'RICHARD EDWARDS', '', '', '1364 E GREEN BAY ST', '', 'SHAWANO ', 'WI', 'US', '54166-22', '(715) 526-1989'),
(100, 4, 'Francisco valle', '', '', '452 PLAINFIELD ST', '', 'SPRINGFIELD', 'MA ', 'US', ' 01107-1', '415-851-9136 ext. 14'),
(101, 4, 'Steven J Richardson', '', '', '300 LASSO ST', '', 'ANGLETON', 'TX ', 'US', '77515-27', '415-851-9136 ext. 99'),
(102, 4, 'Heather Scott', '', '', '203 KRISMARK TRL', '', 'ANDERSON', 'SC', 'US', '29621-78', '8646176027'),
(103, 4, 'Frank Pires', '', '', '866 MILLERS WAY', '', 'PORT ORANGE', 'FL', 'US', '32127-5890', '3865660997'),
(104, 4, 'derek smith', '', '', '3201 W MURIEL DR', '', 'PHOENIX', 'AZ', 'US', '85053-6616', '6025186598'),
(105, 4, 'Patty Zamudio', '', '', '82225 AIRPORT BLVD', '', 'THERMAL', 'CA', 'US', '92274-9714', '7608512300'),
(106, 4, 'Patty Zamudio', '', '', '82225 AIRPORT BLVD', '', 'THERMAL', 'CA', 'US', '92274-97', '7608512300'),
(107, 4, 'derek smith', '', '', '3201 W MURIEL DR', '', 'PHOENIX', 'AZ', 'US', '85053-66', '6025186598'),
(108, 4, 'Frank Pires', '', '', '866 MILLERS WAY', '', 'PORT ORANGE', 'FL', 'US', '32127-58', '3865660997'),
(109, 4, 'jeremy gay', '', '', '460 POOLE MELTON RD', '', 'BLYTHE', 'GA', 'US', '30805-3816', '8034650863'),
(110, 4, 'Jerald Vaughn', '', '', '306 MAPLE LN', '', 'CONROE', 'TX', 'US', '77304-2519', '8326476000'),
(111, 4, 'Lewis Rager', '', '', '16274 DEER MEADOW LN', '', 'MOUNDVILLE', 'AL', 'US', '35474-6227', '2052926254'),
(112, 4, 'Christian Schilling', '', '', '1241 GRANTS PL', '', 'DENVER', 'PA', 'US', '17517-8814', '7179176585'),
(113, 4, 'jeremy gay', '', '', '460 POOLE MELTON RD', '', 'BLYTHE', 'GA', 'US', '30805-38', '8034650863'),
(114, 4, 'Jerald Vaughn', '', '', '306 MAPLE LN', '', 'CONROE', 'TX', 'US', '77304-25', '8326476000'),
(115, 4, 'Lewis Rager', '', '', '16274 DEER MEADOW LN', '', 'MOUNDVILLE', 'AL', 'US', '35474-62', '2052926254'),
(116, 4, 'Christian Schilling', '', '', '1241 GRANTS PL', '', 'DENVER', 'PA', 'US', '17517-88', '7179176585'),
(117, 4, 'Alyssia Duplessis', '', '', '12798 CAMASSIA CT', '', 'RANCHO CUCAMONGA', 'CA', 'US', '91739-1580', '9093603175'),
(118, 4, 'shad meena', '', '', '13692 VECINIO DEL ESTE PL', '', 'LAKESIDE', 'CA', 'US', '92040-4826', '6196358488'),
(119, 4, 'Hector Vallejo', '', '', '1075 PALM ST', '', 'SAN JOSE', 'CA ', 'US', '95110-3324', ''),
(120, 4, 'Hector Vallejo', '', '', '1075 PALM ST', '', 'SAN JOSE', 'CA', 'US', '95110-3324', '415-851-9136 ext. 47'),
(121, 4, 'Hector Vallejo', '', '', '1075 PALM ST', '', 'SAN JOSE', 'CA', 'US', '95110-33', '415-851-9136 ext. 47'),
(122, 4, 'Hector Vallejo', '', '', '1075 PALM ST', '', 'SAN JOSE', 'CA ', 'US', '95110-33', ''),
(123, 4, 'shad meena', '', '', '13692 VECINIO DEL ESTE PL', '', 'LAKESIDE', 'CA', 'US', '92040-48', '6196358488'),
(124, 4, 'Alyssia Duplessis', '', '', '12798 CAMASSIA CT', '', 'RANCHO CUCAMONGA', 'CA', 'US', '91739-15', '9093603175'),
(125, 4, 'Guerrero’s Auto Repair', '', '', '16770 SW SHAW ST STE B', '', 'BEAVERTON', 'OR ', 'US', '97078-1900', '5033670517'),
(126, 4, 'Lucky Line Motors', '', '', '400 LANSDOWNE RD', '', 'FREDERICKSBRG', 'VA', 'US', '22401-7301', '5402875112'),
(127, NULL, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'CA', 'United States', '91732', '6265518446'),
(128, 4, 'hernan concepcion', '', '', '926 TRUSCOTT PL', '', 'ASPEN', 'CO', 'US', '81611-1269', '9703096787'),
(129, 4, 'michael maxim', '', '', '15965 SIMMONS AVE NE', '', 'CEDAR SPRINGS', 'MI', 'US', '49319-9605', '6164371822'),
(130, 4, 'Rory Gallo', '', '', '157 NETHERFIELD ST NW', '', 'COMSTOCK PARK', 'MI', 'US', '49321-9370', ''),
(131, 4, 'Steve Covey\'s cargo trailer store', '', '', '711 US HIGHWAY 301', '', 'PALMETTO', 'FL ', 'US', '34221-4036 ', '9413740528'),
(132, 4, 'robert bree', '', '', '11173 fascination dr', '', 'frederic', 'MI ', 'US', '49733', ''),
(133, 4, 'Lanel Buechler', '', '', '3627 I94 BUSINESS LOOP E', '', 'DICKINSON', 'ND', 'US', '58601-7503', ''),
(134, 4, 'Lanel Buechler', '', '', '3627 I94 BUSINESS LOOP E', '', 'DICKINSON', 'ND', 'US', '58601', '9544716958'),
(135, 4, 'Andy Ankenbrandt', '', '', '516 E JOHN ST', '', 'MAUMEE', 'OH', 'US', '43537-3425 ', ''),
(136, 4, 'Tim Clay', '', '', '465 E DIVISION ST', '', 'SPARTA', 'MI', 'US', '49345-1338', '6162921920'),
(137, 4, 'Matthew OConnor', '', '', '532 38TH AVE NE', '', 'COLUMBIA HEIGHTS', 'MN', 'US', '55421-3801', '7634968387'),
(138, 4, 'mike Henderson', '', '', '688 N 1260 W', '', 'CLINTON', 'UT', 'US', '84015-9303', '8018150578'),
(139, 4, 'Edwin Lee', '', '', '6798 LEWIS ST', '', 'ARVADA', 'CO', 'US', '80004-1530', '3038342860'),
(140, 4, 'Dustin - Maryville Auto Sales', '', '', '3019 e lamar alexander pkwy', '', 'maryville ', 'TN', 'US', '37804-60', ''),
(141, 4, 'Edwin Lee', '', '', '6798 LEWIS ST', '', 'ARVADA', 'CO', 'US', '80004-15', '3038342860'),
(142, 4, 'Keith Bledsoe', '', '', '2520 S CARVER RD', '', 'MARYVILLE', 'TN', 'US', '37801-8316', '8659888088'),
(143, 4, 'Keith Bledsoe', '', '', '2520 S CARVER RD', '', 'MARYVILLE', 'TN ', 'US ', ' 37801-8316', '8659888088'),
(144, 4, 'Fabio Silva', '', '', '694 SE CAMP ST', '', 'LAKE CITY', 'FL ', 'US', '32025-6071', '4384389706'),
(145, 4, 'Keith Bledsoe', '', '', '2520 S CARVER RD', '', 'MARYVILLE', 'TN', 'US', '37801-83', '8659888088'),
(146, 4, 'Keith Bledsoe', '', '', '2520 S CARVER RD', '', 'MARYVILLE', 'TN ', 'US ', ' 37801-8', '8659888088'),
(147, 4, 'Fabio Silva', '', '', '694 SE CAMP ST', '', 'LAKE CITY', 'FL ', 'US', '32025-60', '4384389706'),
(148, 4, 'troy wilcox', '', '', '547 NW AVENUE D', '', 'HAMLIN', 'TX', 'US', '79520-2219 ', '2562943744'),
(149, 4, 'Darrell schneider', '', '', '6529 HIGHWAY 105 W', '', 'CONROE', 'TX', 'US', '77304-4782', '5618438421'),
(150, 4, 'Hector Vallejo', '', '', '1075 palm st', '', 'San Jose', 'CA', 'US', '95110', ''),
(151, 4, 'Hector Vallejo', '', '', '1075 palm st', '', 'San Jose', 'CA', 'US', '95110', '9544716958'),
(152, 4, 'Hector Vallejo', '', '', '1075 palm st', '', 'San Jose', 'CA', 'United States', '95110', '9544716958'),
(153, 4, 'wayne walker', '', '', '200 SHAWNEE AVE', '', 'DOVER', 'PA', 'US', '17315-3767 ', '7176932992'),
(154, 4, 'ray fluhr', '', '', '654 G TAYLOR RD', '', 'COLUMBIA', 'KY', 'US', '42728-9431', '2708051426'),
(155, 6, 'Sylvia Jeongmin Kim', 'Kartonrepublic@gmail.com', '', '760 Lake Dornoch, ', '', 'Pinehurs', 'NC', 'United States', '28374', '(404) 713-8959'),
(156, 6, 'Claire McConnell', 'Kartonrepublic@gmail.com', '', '3308 West Crockett Street', '', 'Seattle', 'WA', 'United States', '98199', '(206) 419-9198'),
(157, 6, 'Lazer Katz', '', '', '75 North Main St Store #10', '', 'Spring Valley', 'New York', 'US', '10977', '6263332688'),
(158, 6, 'Nick J Interiors ', '', '', '461 Country Club Dr Unit 106', '', 'Simi Valley', 'CA', 'US', '93062', '6263332688'),
(159, 6, 'Emily Ritter', '', '', '3105 Brentwood Rd', '', 'Raleigh', 'NC', 'US', '27604', '6263332688'),
(160, 4, 'Mario Reyes', '', '', '6070 BUFORD HWY', '', 'NORCROSS', 'GA', 'US', '30071-2407', '4044334879'),
(161, 4, 'Natalia Jauregui', '', '', '304 Davis Street', '', 'Bagdad', 'AZ', 'US', '86321 ', '9286334228'),
(162, 4, 'Scott Yount', '', '', '1208 W MARKET ST', '', 'SAVANNAH', 'MO', 'US', '64485-1533', ''),
(163, 4, 'kent barrus', '', '', '1451 N SHUTT HILL RD', '', 'HUNTINGTON', 'IN', 'US', '46750-8140', '2603586336'),
(164, 4, 'Scott Yount', '', '', '1208 W MARKET ST', '', 'SAVANNAH', 'MO', 'US', '64485-15', '9544716958'),
(165, 4, 'Sagi zukerman', '', '', '376 OWEN AVE', '', 'FAIR LAWN', 'NJ', 'US', '07410-3617', '2016744772'),
(166, 4, 'Jennie Timmons', '', '', '8574 HERITAGE RD', '', 'CLINTON', 'IL', 'US', '61727-2831', '415-419-8616 ext. 62'),
(167, 4, 'Jennie Timmons', '', '', '8574 HERITAGE RD', '', 'CLINTON', 'IL', 'US', '61727-2831', '415-419-8616 ext. 62'),
(168, 4, 'Jennie Timmons', '', '', '8574 HERITAGE RD', '', 'CLINTON', 'IL', 'US', '61727-2831', '415-419-8616 ext. 62'),
(169, 4, 'Paul Sorel', '', '', '45 RAYMOND AVE', '', 'PAWTUCKET', 'RI', 'US', '02860-6228', '4013233814'),
(170, 4, 'Brent Baron', '', '', '175 VIDERMAN DR PAN HANDLE HOMES', '', 'WELLSBURG', 'WV', 'US', '26070-2862 ', '415-851-9136 ext. 92'),
(171, 4, 'Brent Baron', '', '', '175 VIDERMAN DR PAN HANDLE HOMES', '', 'WELLSBURG', 'WV', 'US', '26070-2862', '415-851-9136 ext. 92'),
(172, 4, 'Alex Pimentel', '', '', '615 LINDEN MANOR CT', '', 'SPRING', 'TX', 'US', '77373-8582', '415-419-8616 ext. 72'),
(173, 4, 'Jason Williamson', '', '', '7190 UPHILL DR', '', 'PINSON', 'AL', 'US', '35126-2446 ', '415-851-9136 ext. 58'),
(174, 4, 'Jason Williamson', '', '', '7190 UPHILL DR', '', 'PINSON', 'AL', 'US', '35126-2446', '415-851-9136 ext. 58'),
(175, 4, 'Rebecca J. Keith', '', '', '2149 E BOBO NEWSOM HWY', '', 'HARTSVILLE', 'SC', 'US', '29550-7219', '415-851-9136 ext. 44'),
(176, 4, 'Rebecca J. Keith', '', '', '2149 E BOBO NEWSOM HWY', '', 'HARTSVILLE', 'SC', 'US', '29550-7219', '415-851-9136 ext. 44'),
(177, 4, 'jason blue', '', '', '610 SWENSON AVE', '', 'SPRINGVILLE', 'UT', 'US', '84663-2542', '8018858318'),
(178, 4, 'jason blue', '', '', '610 SWENSON AVE', '', 'SPRINGVILLE', 'UT', 'US', ' 84663-2542', '8018858318'),
(179, 4, 'jason blue', '', '', '610 SWENSON AVE', '', 'SPRINGVILLE', 'UT', 'US', ' 84663-2', '8018858318'),
(180, 4, 'Stacy ray blankenship', '', '', '902 E 3RD ST', '', 'METROPOLIS', 'IL', 'US', '62960-2302', '415-419-8616 ext. 94'),
(181, 4, 'Stacy ray blankenship', '', '', '902 E 3RD ST', '', 'METROPOLIS', 'IL', 'US', '62960-2302 ', '415-419-8616 ext. 94'),
(182, 4, 'Joey Smith', '', '', '3360 HIGHWAY 82 E', '', 'GREENVILLE', 'MS', 'US', '38703-8230', '6628208831'),
(183, 4, 'peter jipson', '', '', '686 N BEND RD', '', 'SURRY', 'ME', 'US', '04684-3323', '2072172232'),
(184, 4, 'peter jipson', '', '', '686 N BEND RD', '', 'SURRY', 'ME', '美国', '04684-3323', '2072172232'),
(185, 4, 'jason fuller', '', '', '3700 OSUNA RD NE STE 506', '', 'ALBUQUERQUE', 'NM', 'US', '87109-4444', '5056972757'),
(186, 4, 'jason fuller', '', '', '3700 OSUNA RD NE STE 506', '', 'ALBUQUERQUE', 'NM', '美国', '87109-4444', '5056972757'),
(187, 4, 'Sean Turner', '', '', '139 LONG BRANCH LN', '', 'CASEYVILLE', 'IL', 'US', '62232-2853', '6187813132'),
(188, 4, 'Sean Turner', '', '', '139 LONG BRANCH LN', '', 'CASEYVILLE', 'IL', '美国', '62232-2853', '6187813132'),
(189, 4, 'José Torres', '', '', '405 W PARK AVE', '', 'VINELAND', 'NJ', 'US', '08360-3529', '8564629745'),
(190, 4, 'José Torres', '', '', '405 W PARK AVE', '', 'VINELAND', 'NJ', '美国', '08360-3529', '8564629745'),
(191, 4, 'Darryl Goins', '', '', '2920 LAKELAND DR', '', 'NASHVILLE', 'TN', 'US', '37214-3504', '6155737424'),
(192, 4, 'Mark Theriault', '', '', '176 HILTON RD', '', 'WHITEFIELD', 'ME', 'US', '04353-3614 ', '2075575618'),
(193, 4, 'Luke Miller', '', '', '8440 HELENS WAY', '', 'FALLON', 'NV', 'US', '89406-5211', '415-419-8616 ext. 19'),
(194, 4, 'Luke Miller', '', '', '8440 HELENS WAY', '', 'FALLON', 'NV', 'US', '89406-5211', '415-419-8616 ext. 19'),
(195, 4, 'Luke Miller', '', '', '8440 HELENS WAY', '', 'FALLON', 'NV', 'US', '89406-5211', '415-419-8616 ext. 19'),
(196, 4, 'Alan neal', '', '', '9614 ROAD 5 1/2', '', 'FIREBAUGH', 'CA', 'US', '93622-9617', '5593174251'),
(197, 4, 'Alan neal', '', '', '9614 ROAD 5 1/2', '', 'FIREBAUGH', 'CA', '美国', '93622-9617', '5593174251'),
(198, 4, 'cheri longan', '', '', '18303 W CYPRESS HILL CIR', '', 'CYPRESS', 'TX', 'US', '77433-4354', '415-851-9136 ext. 60'),
(199, 4, 'cheri longan', '', '', '18303 W CYPRESS HILL CIR', '', 'CYPRESS', 'TX', 'US', '77433-4354 ', '415-851-9136 ext. 60'),
(200, 4, 'Susana Avalos', '', '', '8041 UVA DR', '', 'REDWOOD VALLEY', 'CA', 'US', '95470-6217', '415-419-8616 ext. 50'),
(201, 4, 'Susana Avalos', '', '', '8041 UVA DR', '', 'REDWOOD VALLEY', 'CA', '美国', '95470-6217', '415419861650927'),
(202, 4, 'brian rehburg', '', '', '615 GARLAND DR', '', 'NILES', 'OH', 'US', '44446-1110', '3307197942'),
(203, 4, 'brian rehburg', '', '', '615 GARLAND DR', '', 'NILES', 'OH', '美国', '44446-1110', '3307197942'),
(204, 4, 'Coleton j perine', '', '', '8585 MUSKINGUM RIVER RD', '', 'LOWELL', 'OH', 'US', '45744-7092', '415-419-8616 ext. 46'),
(205, 4, 'Coleton j perine', '', '', '8585 MUSKINGUM RIVER RD', '', 'LOWELL', 'OH', '美国', '45744-7092', '415419861646118'),
(206, 4, 'John Grilli', '', '', '17970 VIERRA CANYON RD', '', 'SALINAS', 'CA', 'US', '93907-1330', '415-851-9136 ext. 00'),
(207, 4, 'John Grilli', '', '', '17970 VIERRA CANYON RD', '', 'SALINAS', 'CA', '美国', '93907-1330', '415851913600674'),
(208, 4, 'David Joziak', '', '', '1611 CHOTA RD', '', 'MARYVILLE', 'TN', 'US', '37803-9417', '8657407970'),
(209, 4, 'David Joziak', '', '', '1611 CHOTA RD', '', 'MARYVILLE', 'TN', '美国', '37803-9417', '8657407970'),
(210, 4, 'HYUNHO CHOO', '', '', '432 E. Ayre St.', '#its7882', 'Wilmington ', 'DE', 'US', '19804', '646-206-8728'),
(211, 4, 'Angela M. Nelson', '', '', '950 W LINN RD', '', 'EAGLE POINT', 'OR', 'US', '97524-6597', '415-419-8616 ext. 48'),
(212, 4, 'Angela M. Nelson', '', '', '950 W LINN RD', '', 'EAGLE POINT', 'OR', 'US', '97524-6597 ', '415-419-8616 ext. 48'),
(213, 6, 'Kristina Chang', '', '', '81 Beacon st', '', 'Haworth', 'NJ', 'US', '07641', '2012134115 '),
(214, 4, 'nicholas neidenbach', '', '', '1711 W SLEEPY RANCH RD', '', 'PHOENIX', 'AZ', 'US', '85085-8069', '6023505882'),
(215, 4, 'Noah Thomas', '', '', '3515 GENEVA DR', '', 'MURFREESBORO', 'TN', 'US', '37128-5090', '6155423445'),
(216, 4, 'Randy', '', '', '404 SW BAY BLVD', '', 'NEWPORT', 'OR', 'US', '97365-4508', '415-419-8616 ext. 11'),
(217, 4, 'Randy', '', '', '404 SW BAY BLVD', '', 'NEWPORT', 'OR', 'US', '97365-4508', '415-419-8616 ext. 11'),
(218, 4, 'Steve e Fulton', '', '', '510 N ELIZABETH ST', '', 'PUEBLO', 'CO', 'US', '81003-2332', '7195422268'),
(219, 4, 'charles gentry', '', '', '23640 CONSER RD', '', 'HEAVENER', 'OK ', 'US', '74937-9012', '9186532297'),
(220, 4, 'Jon Rautio', '', '', '15245 WALSTROM RD', '', 'ATLANTIC MINE', 'MI', 'US', '49905-9220', '9063709206'),
(221, 4, 'Jon Rautio', '', '', '15245 WALSTROM RD', '', 'Atlantic Mine', 'Michigan', 'US', '49905', '9063709206'),
(222, 4, ' Edith Biro', '', '', '487 DAWNVIEW SQ', '', 'PORT ORANGE', ' FL', 'US', '32127-6706', '3863836695'),
(223, 4, ' Edith Biro', '', '', '487 DAWNVIEW SQ', '', 'PORT ORANGE', 'FL', 'US', '32127-6706', '3863836695'),
(224, 4, ' JIM KAHN', '', '', '8979 SEEGERT RD', '', 'RIGA', 'MI ', 'US', '49276-9606', '1 415-419-8616 ext. '),
(225, 4, ' JIM KAHN', '', '', '8979 SEEGERT RD', '', 'RIGA', 'MI', 'US', '49276-9606', '1 415-419-8616 ext. '),
(226, 4, ' Clint LeCroy', '', '', '736 PLEASANT VIEW DR', '', 'COLUMBIA', 'TN', 'US', '38401-6606', '1 415-419-8616 ext. '),
(227, 4, ' Clint LeCroy', '', '', '736 PLEASANT VIEW DR', '', 'COLUMBIA', 'TN', 'US', '38401-6606', '1 415-419-8616 ext. '),
(228, 4, ' Kelly S, Kinoff', '', '', '609 HARVEST MOON RD', '', 'FOUNTAIN', 'CO', 'US', '80817-3173', '1 415-419-8616 ext. '),
(229, 4, ' Kelly S, Kinoff', '', '', '609 HARVEST MOON RD', '', 'FOUNTAIN', 'CO', 'US', '80817-3173', '1 415-419-8616 ext. '),
(230, 4, 'Herbert Dickey', '', '', '3758 GASSAWAY RD', '', 'NORMANTOWN', 'WV', 'US', '25267-6728', '1 415-419-8616 ext. '),
(231, 4, 'Herbert Dickey', '', '', '3758 GASSAWAY RD', '', 'NORMANTOWN', 'WV', 'US', ' 25267-6728', '1 415-419-8616 ext. '),
(232, 4, 'Herbert Dickey', '', '', '3758 GASSAWAY RD', '', 'NORMANTOWN', 'WV', 'US', '25267-6', '1 415-419-8616 ext. '),
(233, 4, 'Ronie Murillo', '', '', 'DERSY BEAUTY SALON', '315 WASHINGTON AVE', 'ELIZABETH', 'NJ', 'US', '07202-3380', '1 415-419-8616 ext. '),
(234, 4, 'Ronie Murillo', '', '', 'DERSY BEAUTY SALON', '315 WASHINGTON AVE', 'ELIZABETH', 'NJ', 'US', '07202-3380', '1 415-419-8616 ext. '),
(235, 4, ' mark strasser', '', '', '273 W STATE ST', '', 'BURLINGTON', 'WI', 'US', '53105-1844', '1 415-419-8616 ext. '),
(236, 4, ' mark strasser', '', '', '273 W STATE ST', '', 'BURLINGTON', 'WI', 'US', '53105-1844', '1 415-419-8616 ext. '),
(237, 4, 'Ronie Murillo', '', '', '315 WASHINGTON AVE', '', 'ELIZABETH', 'NJ', 'US', '07202-33', '1 415-419-8616 ext. '),
(238, 4, 'Cindy James', '', '', '2653 COUNTY STREET 2960', '', 'ALEX', 'OK', 'US', '73002-2225', '+1 415-419-8616 ext.'),
(239, 4, 'Cindy James', '', '', '2653 COUNTY STREET 2960', '', 'ALEX', 'OK', 'US', '73002-2225', '+1 415-419-8616 ext.'),
(240, 4, 'Vanessa Vargas', '', '', '1114 8TH ST', '', 'SAN FERNANDO', 'CA', 'US', '91340-1210', '+1 415-419-8616 ext.'),
(241, 4, 'Vanessa Vargas', '', '', '1114 8TH ST', '', 'SAN FERNANDO', 'CA', 'US', '91340-1210', '+1 415-419-8616 ext.'),
(242, 4, 'Jessie Clements', '', '', '394 UNION CHAPEL RD E', '', 'NORTHPORT', 'AL', 'US', '35473-7610', '+1 415-419-8616 ext.'),
(243, 4, 'Jessie Clements', '', '', '394 UNION CHAPEL RD E', '', 'NORTHPORT', ' AL', 'US', '35473-7610', '+1 415-419-8616 ext.'),
(244, 4, 'JR HICKS', '', '', '3790 TROPHY CT', '', 'LENOIR', 'NC', 'US', '28645-6923', '+1 415-419-8616 ext.'),
(245, 4, 'JR HICKS', '', '', '3790 TROPHY CT', '', 'LENOIR', 'NC', 'US', '28645-6923', '+1 415-419-8616 ext.'),
(246, 4, 'Kirby Benton', '', '', '2219 KITTRELL RD', '', 'GREENVILLE', 'NC ', 'US', '27858-8202', '415-419-8616 ext. 33'),
(247, 4, 'Kirby Benton', '', '', '2219 KITTRELL RD', '', 'GREENVILLE', 'NC', 'US', '27858-8202', '415-419-8616'),
(248, 4, 'Michael JonesPOMJ', '', '', '896 FORK BIXBY RD', '', 'ADVANCE', 'NC', 'US', '27006-7224 ', '415-419-8616 ext. 70'),
(249, 4, 'Michael JonesPOMJ', '', '', '896 FORK BIXBY RD', '', 'ADVANCE', 'NC', 'US', '27006-7224', '415-419-8616 ext. 70'),
(250, 4, 'Duke Dunham', '', '', '1184 T RD', '', 'EUREKA', 'KS ', 'us', '67045-4529', '3162073006'),
(251, 4, 'Lea Marburger', '', '', '148 6TH ST SE', '', 'BREWSTER', 'OH', 'US', '44613-1460', '415-419-8616 ext. 48'),
(252, 4, 'Lea Marburger', '', '', '148 6TH ST SE', '', 'BREWSTER', 'OH', 'US', '44613-1460 ', '415-419-8616 ext. 48'),
(253, 4, 'Corey L. Smith', '', '', '166 HUNTERS BRANCH DR', '', 'ALLENHURST', 'GA', 'US', '31301-2654', '9123216224'),
(254, 4, 'Oscar galvis', '', '', '24 PEMBROKE DR', '', 'EAST HAMPTON', 'NY', 'US', '11937-1426 ', '415-419-8616 ext. 97'),
(255, 4, 'Oscar galvis', '', '', '24 PEMBROKE DR', '', 'EAST HAMPTON', 'NY', 'US', '11937-1426 ', '415-419-8616 ext. 97'),
(256, 4, 'Eddie', '', '', '3190 E ANIMAS VILLAGE DR APT 208', '', 'DURANGO', 'CO', 'US', '81301-7439', ''),
(257, 4, 'Richard Ridgill', '', '', '2600 HIGHWAY 11', '', 'TRAVELERS REST', 'SC', 'US', '29690-8687', '9412648292'),
(258, 4, 'David j franchuk', '', '', 'HOUSE 271 VICTOR RD', '', 'FAIRPORT', 'NY', 'US', '14450-9522', '5857942899'),
(259, 4, 'Eddie', '', '', '3190 E ANIMAS VILLAGE DR APT 208', '', 'DURANGO', 'CO', 'US', '81301-74', '9544716958'),
(260, 4, 'Peter Graham', '', '', '11700 FUQUA ST APT 1054', '', 'HOUSTON', 'TX', 'US', '77034-4418', '3462835190'),
(261, 4, 'Joshua miller', '', '', '490 JIM GRIZZLE RD', '', 'ROYSTON', 'GA', 'US', '30662-5319 ', '7065344170'),
(262, 4, 'Patricia G. Varner', '', '', '3025 S BUENA VISTA RD', '', 'SOUTH CHARLESTON', 'OH', 'US', '45368-9791', '412-532-4665 ext. 98'),
(263, 4, 'Patricia G. Varner', '', '', '3025 S BUENA VISTA RD', '', 'SOUTH CHARLESTON', 'OH', 'US', '45368-9791', ''),
(264, 4, 'Joshua miller', '', '', '490 JIM GRIZZLE RD', '', 'ROYSTON', 'GA', 'US', '30662-53', '7065344170'),
(265, 4, 'Patricia G. Varner', '', '', '3025 S BUENA VISTA RD', '', 'SOUTH CHARLESTON', 'OH', 'US', '45368-97', '9544716958'),
(266, 4, 'Peter Graham', '', '', '11700 Fuqua St', '', 'Houston ', 'TX', 'US', '77034-4418', '336-414-0838'),
(267, 4, 'CHRIS WHEAT', '', '', '109 DANIEL PAUL DR', '', 'ARCHDALE ', 'NC', 'US', '27263-3850', '(336) 707-2758'),
(268, 4, 'Anthony Capasso', '', '', '30033 ROBERT ST', '', 'WICKLIFFE', 'OH', 'US', '44092-1715', '4402314631'),
(269, 4, 'Rick JennigesPOJEEP', '', '', '1230 OAK ST', '', 'WABASSO', 'MN', 'US', '56293-1407 ', ''),
(270, 4, 'Rick JennigesPOJEEP', '', '', '1230 OAK ST', '', 'WABASSO', 'MN', 'US', '56293-14', '9544716958'),
(271, 4, 'DWIGHT FINNESTAD', '', '', '15406 N FERRALL ST', '', 'MEAD', 'WA', 'US', '99021-9363', '5094673703'),
(272, 4, 'DWIGHT FINNESTAD', '', '', '15406 N FERRALL ST', '', 'MEAD', 'WA', 'US', '99021-93', '5094673703'),
(273, 2, 'Sam Shao', 'quedinge2012@gmail.com', '', '12012 Lambert Ave', '', 'El Monte', 'California', 'United States', '91732', '6265518446'),
(274, 4, 'Lloyd Wilson', '', '', '125 E SCOTT ST', '', 'LONG BEACH', 'CA', 'US', '90805-2255', '5622343910'),
(275, 4, 'Eduardo Pasco', '', '', '8204 MALABAR TRL', '', 'FT WORTH', 'TX', 'US', '76123-4625 ', '+1 412-532-4665 ext.'),
(276, 4, 'Eduardo Pasco', '', '', '8204 MALABAR TRL', '', 'FT WORTH', 'TX', 'US', '76123-4625 ', '+1 412-532-4665 ext.'),
(277, 4, ' Rocky Fry', '', '', '57 FALLOW CT', '', 'ANGIER', 'NC', 'US', '27501-8274', '9198180550'),
(278, 4, 'Jodi Militzer', '', '', '3 MALLARD CT', '', 'EXPORT', 'PA', 'US', '15632-8929', '763-225-9463 ext. 74'),
(279, 4, 'Danny Hefner', '', '', '25306 FARMDALE LN', '', 'RICHMOND', 'TX', 'US', '77406-7886', '763-225-9463 ext. 45'),
(280, 4, 'Ashley Sliger', '', '', '1060 CUMBERLAND VALLEY RD', '', 'GAINESVILLE', 'GA', 'US', '30501-1805', '+1 412-532-4665 ext.'),
(281, 4, 'Woody Stone', '', '', '217 E ELM ST', '', 'MARION', 'KY', 'US', '42064-1622', '2709690009'),
(282, 4, ' Eric Allen Beer', '', '', '975 SE BLUEGRASS CIR', '', 'WAUKEE', 'IA', 'US', '50263-8369', '+1 763-225-9463 ext.'),
(283, 8, 'Sam Shao', '', '', '19097 Colima Road', '', 'Rowland Heights', 'CA', 'US', '91748', '6265518446'),
(284, 8, 'Sam Shao', '', '', '12012 Lambert Ave', '', 'El Monte', 'CA', 'US', '91732', '6265518446'),
(285, 4, 'Alwyn Stevens', '', '', '116 PINE ST', '', 'HERLONG', 'CA', 'US', '96113-7427', ''),
(286, 4, 'Wendy Panks', '', '', '1513 FLUSHING RD', '', 'FLUSHING', 'MI', 'US', '48433-2230', ''),
(287, 4, 'Alwyn Stevens', '', '', '116 PINE ST', '', 'HERLONG', 'CA', 'US', '96113-74', '6265518446'),
(288, 4, 'Wendy Panks', '', '', '1513 FLUSHING RD', '', 'FLUSHING', 'MI', 'US', '48433-22', '6265518446'),
(289, 4, 'THOMAS SHOULDERS', '', '', '549 GRAY ST', '', 'BRIDGEPORT', 'IL', 'US', '62417-1924', '347-448-3190 ext. 04'),
(290, 4, 'THOMAS SHOULDERS', '', '', '549 GRAY ST', '', 'BRIDGEPORT', 'IL', 'US', '62417-1924', '347-448-3190 ext. 04'),
(291, 4, 'Nicolas faranda', '', '', '41 WOODMERE RD', '', 'FRAMINGHAM', 'MA', 'US', '01701-2879', ''),
(292, 4, 'Nicolas faranda', '', '', '41 WOODMERE RD', '', 'FRAMINGHAM', 'MA', 'US', '01701-28', '6265518446'),
(293, 4, 'Dylan Case', '', '', '108 ROYAL CT', '', 'CLINTON', 'MS', 'US', '39056-5836', '+1 347-448-3190 ext.'),
(294, 8, 'Edgar Contreras', '', '', '307 river mountain ct', '', 'cedar hill', 'TX ', 'US', '75104-6423', '214-236-1362'),
(295, 8, 'kenny bellamy', '', '', '19295 Anna Rd', '', 'Anderson', 'CA', 'US', '96007', ''),
(296, 8, 'Raymond Germosen', '', '', '1719 Ardsley Ct', '', 'Teaneck', 'NJ', 'US', '7666', ''),
(297, 4, 'Randall Babcock', '', '', '19818 127TH STREET CT E', '', 'ONNEY LAKE', 'WA', 'US', '98391-5417', '+1 347-448-3190 ext.'),
(298, NULL, 'Randall Babcock', '', '', '19818 127TH STREET CT E', '', 'ONNEY LAKE', 'WA', 'US', '98391-54', '+1 347-448-3190 ext.'),
(299, 8, 'tracy richardson', '', '', '4030 County Road 200', '', 'Tiplersville', 'MS', 'United States', '38674-9430', '6627500191'),
(300, 8, 'Taha Qazi', '', '', '2139 Lake Hills Dr apt 701', '', 'Kingwood', 'TX', 'United States', '77339-2303', '2817714715'),
(301, 8, 'Taha Qazi', '', '', '2139 Lake Hills Dr apt 701', '', 'Kingwood', 'TX', 'United States', '77339-23', '2817714715'),
(302, 8, 'Dhanbahadur Chhetri ', '', '', '161 CHURCH ST 05401 , VT  ', '', 'BURLINGTON', 'VT', 'United States', '05401-4603', '3142829402 ext. 4351'),
(303, 8, 'Enrique Guzman ', '', '', '2406 Florence Ave    ', '', 'Pasadena', 'TX', 'United States', '77502', '8327314802'),
(304, 8, 'antonino gargano ', '', '', '364 GETTYSBURG ', '', 'COATESVILLE', 'IN ', 'UNITED STATES', '46121-8958', '3173839430'),
(305, 8, 'David Smith ', '', '', '503 N Orange St ', '', 'Perry ', 'FL ', 'United States', '32347-2730  ', '8508433139'),
(306, 8, 'travis peters', '', '', ' 810 E Main St ', '', 'marshalltown', ' IA  ', 'United States', '50158-2031 ', '6417510911'),
(307, 8, 'Michael Mihara', '', '', ' 10905 se 219th pl ', '', 'Kent', 'WA   ', 'United States', '98031', '2069139023'),
(308, 8, 'gustavo soto ', '', '', '1565 cliff rd Sarpino’s Pizzeria/ Suite 17 ', '', 'eagan ', 'MN   ', 'United States', '55122', '6124069796'),
(309, 8, 'honda2012 thomas ', '', '', '1181 n mason dr ', '', 'Chandler', 'AZ', 'United States', '85225', '4802084931'),
(310, 8, 'AUSTIN CURLESS', '', '', ' 8124 Limber Luke Dr ', '', 'Nampa ', 'ID  ', 'United States ', '83686-8614', '2089953451 '),
(311, 8, 'Yanelys ', '', '', '13265 SW 72ND TER', '', 'MIAMI, ', 'FL ', 'UNITED STATES', '33183-3215', '3474483190 ext. 0274'),
(312, 8, 'Julio Calderon ', '', '', '338 Sunnyside Ct ', '', 'Lawrenceville ', 'GA ', 'United States', '30044-3453  ', '6783437882  '),
(313, 4, 'Brad Lamprey', '', '', '216 TANGELO AVE', '', 'FERN PARK', 'FL', 'US', '32730-2812', '+1 210-728-4548 ext.'),
(314, 4, 'Carlos Giordano', '', '', '68550 RISUENO RD', '', 'CATHEDRAL CITY', 'CA', 'US', '92234-3862', '+1 210-728-4548 ext.'),
(315, 8, 'Mark Deboer ', '', '', ' 2240 HILLVIEW DR  ', '', 'LAGUNA BEACH', 'CA ', 'UNITED STATES', '92651-2259 ', ''),
(316, 8, 'Mark Deboer ', '', '', ' 2240 HILLVIEW DR  ', '', 'LAGUNA BEACH', 'CA ', 'UNITED STATES', '92651-22', ' 926512259 '),
(317, 8, 'Kyle Brown ', '', '', '26 Meadow Dr ', '', 'Newmanstown ', 'PA   ', 'United States', '17073-9066', '6105079099'),
(318, 8, 'william kline', '', '', '840 felspar st ', '', 'san diego ', 'CA   ', 'United States', '92109-2715', '5413990928'),
(319, 8, 'Pukhraj Gill ', '', '', '3941 PODOCARPUS DR ', '', 'CERES', 'CA ', 'UNITED STATES', '95307-7191 ', '95307-7191 '),
(320, 8, 'Damian Lopez ', '', '', '518 CORK ST ', '', 'WINDSOR', 'CA', 'UNITED STATES', '95492-6677 ', '347-448-3190 ext. 08'),
(321, 4, 'Kelly Wright', '', '', '3705 HUNTERS CREEK RD', '', 'EDMOND', 'OK', 'United States', '73003', '62658802323'),
(322, 4, 'Kelly Wright', '', '', '3705 HUNTERS CREEK RD', '', 'EDMOND', 'OK', 'United States', '73003', '6263005050'),
(323, 4, 'Todd Zhou', '', '', '1135 Center Dr. Unit I', '', 'City of Industry', 'CA', 'United States', '91789', '6265508970'),
(324, 8, 'Yuniel Casanova ', '', '', '10790 SW 7TH ST APT 206 ', '', 'MIAMI', 'FL   ', 'UNITED STATES', '33174-1501', '3474483190 ext. 8595'),
(325, 8, 'John Walters ', '', '', '1043 27TH AVE N SAINT', '', ' CLOUD', 'MN ', 'UNITED STATES', '56303-2442', '563032442'),
(326, 8, 'Debra M ', '', '', 'Lopez 435 LANIER BLVD ', '', 'SAN ANTONIO', 'TX ', 'UNITED STATES', '78221-4116', '782214116'),
(327, 8, 'Tony Lowenberg ', '', '', '18725 Farson Rd', '', 'Hedrick ', 'IA ', 'United States ', '52563-8109 ', '6417778528'),
(328, 8, 'ROBERT RICCIARDELLI ', '', '', '264 Burning Tree Dr ', '', 'Naples ', 'FL ', 'United States ', '34105-6306', '2397771445'),
(329, 8, 'Dixon Vallejo Rodriguez ', '', '', '1429 Gill St Apt 429A ', '', 'Watertown ', 'NY ', 'United States ', '13601-2976 ', '7875383241'),
(330, 8, 'Jeffrey hill ', '', '', '7701 windchime cir', '', 'knoxville ', 'TN ', 'United States ', '37918-9249 ', '8652160442 '),
(331, 8, 'Fred Catalani jr ', '', '', '15 GREYSTONE RD ', '', 'WATERBURY', 'CT ', 'UNITED STATES', '06704-1130  ', '314-282-9402 ext. 51'),
(332, 8, 'Amanda Dunbar ', '', '', '1304 6TH ST ', '', 'PAWNEE', 'OK ', 'UNITED STATES', '74058-4515', '740584515'),
(333, 8, 'Paige Stubbs', '', '', '2414 LAKE PARK RD APT 2303 ', '', 'LEXINGTON', 'KY ', 'UNITED STATES', '40502-1341', '40502-1341'),
(334, 8, 'Amanda Dunbar ', '', '', '1304 6TH ST ', '', 'PAWNEE', 'OK ', 'UNITED STATES', '74058-45', '+1 347-448-3190 ext.'),
(335, 8, 'Paige Stubbs', '', '', '2414 LAKE PARK RD APT 2303 ', '', 'LEXINGTON', 'KY ', 'UNITED STATES', '40502-13', '+1 314-282-9402 ext.'),
(336, 8, 'Fidencio Castaneda ', '', '', 'III 1620 Damasco Ave ', '', 'Edinburg ', 'TX   ', ' United States', '78541-1521 ', '+1 956-720-1972'),
(337, 8, 'jessica lemus ', '', '', '4933 Butterwick Ln ', '', 'Charlotte ', 'NC ', 'United States', '28212    ', '+1 704-569-4285'),
(338, 8, 'Wilbert Gordon ', '', '', '14722 Yellow Begonia Dr ', '', 'Cypress ', 'TX ', 'United States ', '77433-6712 ', '8327276480'),
(339, 8, 'Tony Gurganus ', '', '', '612 3RD ST ', '', 'CHIPLEY', 'FL   ', 'UNITED STATES', '32428-1440 ', '+1 347-448-3190 ext.'),
(340, 4, 'AIMEE PHILLIPS', '', '', '2926 GIRARD ST', '', 'LEAVENWORTH', 'KS', 'US', '66048', ''),
(341, 4, 'scott bagley', '', '', '932 weaver ln.', '', 'brookings', 'OR ', 'US', '97415', ''),
(342, 8, 'WENDY SNYDER ', '', '', '49 WILSON ST ', '', 'WEST LAWN, ', 'PA ', 'UNITED STATES', '19609 ', '314-282-9402 ext. 47'),
(343, 8, 'MFONOBONG IKPIM ', '', '', '13 LIBERTY PL APT 13 ', '', 'BALTIMORE, ', 'MD ', 'UNITED STATES', '21244-2760', '347-448-3190 ext. 74'),
(344, 8, 'Jose Cordova Zelaya ', '', '', '5504 ADAMS DR APT 907 ', '', 'HALTOM CITY ', 'TX  ', 'UNITED STATES', '76117-4505', '347-448-3190 ext. 83'),
(345, 4, 'scott bagley', '', '', '932 weaver ln.', '', 'brookings', 'OR ', 'US', '97415', '9544716958'),
(346, 4, 'AIMEE PHILLIPS', '', '', '2926 GIRARD ST', '', 'LEAVENWORTH', 'KS', 'US', '66048', '9544716958'),
(347, 8, 'Jacob Gale ', '', '', '913 RITCHIE RD ', '', 'GROVER BEACH, ', 'CA ', 'UNITED STATES', '93433-1117 ', '+1 347-448-3190 ext.'),
(348, 8, 'Josue Padilla ', '', '', '4333 Smoke Tree Rd. ', '', ' Phelan ', 'CA ', 'UNITED STATES', '92371-4010  ', '+1 661-874-9881'),
(349, 8, 'Cody Snyder ', '', '', '3001 FLORIDA AVE ', '', 'BALTIMORE,', 'MD ', 'UNITED STATES', '21227-3641  ', '347-448-3190 ext. 62'),
(350, 8, 'Frank orozco ', '', '', '6220 FOREST AVE ', '', 'RIDGEWOOD', 'NY ', 'UNITED STATES', '11385 ', '+1 210-728-4548 ext.'),
(351, 8, 'Robert Cech ', '', '', 'III 28818 LUND AVE ', '', 'WARREN ', ' MI ', 'UNITED STATES', '48093-7117', '48093-7117'),
(352, 8, 'Brett williams ', '', '', '21855 JEFFERS LN ', '', 'SANTA CLARITA ', 'CA ', 'UNITED STATES', '91350-3905 ', '+1 347-448-3190 ext.'),
(353, 8, 'Joanna Lumpay ', '', '', '15152 N VERBENA ST ', '', 'EL MIRAGE', 'AZ ', 'UNITED STATES', '85335-6936  ', '210-728-4548 ext. 07'),
(354, 8, 'adrian abella ', '', '', '31 burgh ave ', '', 'Clifton ', 'NJ ', 'UNITED STATES', '07011-2220  ', '+1 973-405-8359  '),
(355, 4, 'Jonathon Kinkle', '', '', '1410 N LBJ DR APT 2815', '', 'SAN MARCOS', 'TX', 'US', '78666-3235', '+1 210-728-4548 ext.'),
(356, 4, 'Patricia Glenzel', '', '', '54 BAYBERRY LN', '', 'WESTFIELD', 'MA', 'US', '01085-1068 ', '+1 347-448-3190 ext.'),
(357, 8, 'Jose Cuellar ', '', '', '1548 POND VIEW DR ', '', 'MARYSVILLE', 'CA ', 'UNITED STATES', '95901-8241 ', '+1 347-448-3190 ext.'),
(358, 8, 'Jessica Castillo ', '', '', '210 S NEWHOPE ST ', '', 'SANTA ANA ', 'CA ', 'UNITED STATES', '92704-1240 ', '+1 314-282-9402 ext.'),
(359, 8, 'James Cawthorne ', '', '', '642 N Vail Ave ', '', 'Montebello ', 'CA ', 'UNITED STATES', '90640 ', '+1 347-448-3190 ext.'),
(360, 8, 'Brian Ames ', '', '', '1484 STATE HIGHWAY 68 ', '', 'CANTON ', 'NY ', 'UNITED STATES', '13617-3430 ', '+1 314-282-9402 ext.'),
(361, 8, 'Logan Powers ', '', '', '6185 RALEIGH ST APT 104 ', '', 'ORLANDO  ', 'FL ', 'UNITED STATES', '32835-2256', '32835-2256'),
(362, 8, 'ursula gonzalez ', '', '', '15298 SW 37 Terr ', '', 'Miami', 'FL    ', 'UNITED STATES', '33185', '+1 210-728-4548 ext.'),
(363, 8, 'ursula gonzalez ', '', '', '15298 SW 37 Terr ', '', 'Miami', 'FL    ', 'UNITED STATES', '33185', '+1 210-728-4548 ext.'),
(364, 8, 'Brenda Liz ', '', '', 'Colon 434 GRANT ST ', '', 'ALLENTOWN', 'PA ', 'UNITED STATES', '18102-3114 ', ' +1 347-448-3190 ext'),
(365, 8, 'Kaylene Gruenberg ', '', '', '2857 EDGEWOOD ST ', '', 'PORTAGE  ', 'IN ', 'UNITED STATES', '46368-2772  ', '+1 347-448-3190 ext.'),
(366, 8, 'Kierron Drewery ', '', '', '2766 DREWERY LN ', '', 'SPRING HOPE ', 'NC ', 'UNITED STATES', '27882-8822  ', '+1 314-282-9402 ext.'),
(367, 8, 'Tonya Porter ', '', '', '3344 Hunt Street ', '', 'Jacksonville, ', 'FL ', 'UNITED STATES', '32254  ', '+1 347-448-3190 ext.'),
(368, 8, 'jessie gaspardo', '', '', ' 8245 PROSPECT DR ', '', 'KEWASKUM', 'WI ', 'UNITED STATES', '53040-9478     ', '+1 347-448-3190 ext.'),
(369, 8, 'Kailah Dejurnett ', '', '', '8485 E 22ND ST APT 108 ', '', 'TUCSON', 'AZ ', 'UNITED STATES', '85710-6539   ', '+1 347-448-3190 ext.'),
(370, 8, 'Kari Hansen ', '', '', '13002 ISLAND VIEW DR NW ', '', 'ELK RIVER, ', 'MN ', 'UNITED STATES', '55330-1121  ', '+1 952-649-1263  '),
(371, 8, 'GARRETT AVENT ', '', '', '6320 WOODCREEK DR ', '', 'CITRUS HEIGHTS, ', 'CA ', 'UNITED STATES', '95621-6122 ', '+1 210-501-5466'),
(372, 8, 'Luz Rosado ', '', '', '13217 astor ave cleveland ', '', 'cleveland ', 'OH ', 'UNITED STATES', '44135-5005 ', '+1 216-804-2698  '),
(373, 8, 'Abrar Ahmed ', '', '', '21 Cedar Ct Apt 10 ', '', 'Vernon Hills ', 'IL ', 'UNITED STATES', '60061-3032  ', '+1 773-540-5249'),
(374, 8, 'Lengocle ', '', '', '6819 COOK RD APT 1305 ', '', 'HOUSTON', 'TX ', 'UNITED STATES', '77072-2251', ' +1 210-728-4548 ext'),
(375, 8, 'Jose Cuellar ', '', '', '1548 POND VIEW DR ', '', 'MARYSVILLE', 'CA ', 'UNITED STATES', '95901-82', '+1 347-448-3190'),
(376, 8, 'Jessica Castillo ', '', '', '210 S NEWHOPE ST ', '', 'SANTA ANA ', 'CA ', 'UNITED STATES', '92704-12', '+1 314-282-9402 '),
(377, 8, 'Jessica Castillo ', '', '', '210 S NEWHOPE ST ', '', 'SANTA ANA ', 'CA ', 'UNITED STATES', '92704-12', '3142829402 '),
(378, 8, 'Kierron Drewery ', '', '', '2766 DREWERY LN ', '', 'SPRING HOPE ', 'NC ', 'UNITED STATES', '27882-88', '+1 314-282-9402 ext.'),
(379, 8, 'Breanna Lee ', '', '', '7338 Loncki St Unit 113 Hill ', '', 'Afb ', 'UT ', 'UNITED STATES', '84056-7303 ', '+1 618-202-8900 '),
(380, 8, 'Ronald Ramsey ', '', '', '4164 Belle Ave ', '', 'Youngstown ', 'OH ', 'UNITED STATES', '44515-1401 ', '+1 330-259-5140'),
(381, 8, 'Breanna Lee ', '', '', '7338 Loncki St Unit 113', '', 'Hill Afb ', 'UT ', 'UNITED STATES', '84056-73', '+1 618-202-8900 '),
(382, 8, 'Ronald Ramsey ', '', '', '4164 Belle Ave ', '', 'Youngstown ', 'OH ', 'UNITED STATES', '44515', '+1 330-259-5140'),
(383, 8, 'Breanna Lee ', '', '', '7338 Loncki St Unit 113', '', 'Hill Afb ', 'UT ', 'UNITED STATES', '84056-7303', '+1 618-202-8900 '),
(384, 8, 'Breanna Lee ', '', '', '7338 Loncki St Unit 113', '', 'Hill Afb ', 'UT ', 'UNITED STATES', '84056 ', '+1 618-202-8900 '),
(385, 8, 'Tom Doan ', '', '', '126 Gallivan Blvd ', '', 'Dorchester ', 'MA ', 'UNITED STATES', '02124-4504  ', '+1 617-905-1204  '),
(386, 8, 'Brandon Nguyen ', '', '', '2114 GWINN DR ', '', 'NORCROSS ', 'GEORGIA ', 'UNITED STATES', '30071-2257 ', '+1 347-448-3190'),
(387, 8, 'Madison Parker ', '', '', '3288 CPL JOHNSON RD UNIT 1398 ', '', 'JBSA FT SAM HOUSTON', 'TX ', 'UNITED STATES', '78234-2055 ', '+1 347-448-3190 ext.'),
(388, 8, 'Madison Parker ', '', '', '3288 CPL JOHNSON RD UNIT 1398 ', '', 'JBSA FT SAM HOUSTON', 'TX ', 'UNITED STATES', '78234', '+1 347-448-3190 ext.'),
(389, 8, 'Brandon Nguyen ', '', '', '2114 GWINN DR ', '', 'NORCROSS ', 'GEORGIA ', 'UNITED STATES', '30071', '+1 347-448-3190'),
(390, 8, 'Brandon Nguyen ', '', '', '2114 GWINN DR ', '', 'NORCROSS ', 'GA', 'UNITED STATES', '30071', '+1 347-448-3190'),
(391, 8, 'christian hernandez ', '', '', '2825 golden sun dr ', '', 'chaparral ', 'NM ', 'United States   ', '88081-7307 ', '+1 915-261-4561'),
(392, 8, 'Breanna McAbee ', '', '', '1667 OLD HILLS BRIDGE RD ', '', 'ENOREE, ', 'SC ', 'UNITED STATES', '29335-2409', '293352409'),
(393, 8, 'Muhammad suneel ', '', '', '8617 116TH ST 2FL ', '', 'RICHMOND HILL', 'NY  ', 'UNITED STATES', '11418-1747  ', '210-728-4548 ext. 62'),
(394, 8, 'Ariel Pena ', '', '', '4811 6th Ave Apt 3 ', '', 'Brooklyn ', 'NY ', 'United States ', '11220-2003', '+1 917-226-6753'),
(395, 8, 'Taslim Chaudhury ', '', '', '113 Lavender Ln ', '', 'Wylie ', 'TX  ', 'United States   ', '75098-4631', '+1 469-878-2687'),
(396, 8, 'Joe Proctor ', '', '', '5801 N 90th St ', '', 'Omaha ', 'NE ', 'UNITED STATES', '68134-1856 ', ' +1 402-578-9343'),
(397, 8, 'Joe Proctor ', '', '', '5801 N 90th St ', '', 'Omaha ', 'NE ', 'UNITED STATES', '68134-18', ' +1 402-578-9343'),
(398, 8, 'JOE NIEVES 18180 NW 18TH ST ', '', '', '18180 NW 18TH ST ', '', 'HOLLYWOOD FL  ', 'FL ', 'UNITED STATES', '33029', '(954) 635-8881 '),
(399, 8, 'JOE NIEVES  ', '', '', '18180 NW 18TH ST ', '', 'PEMBROKE PINES', 'FL ', 'UNITED STATES', '33029-3023', '(954) 635-8881 '),
(400, 8, 'Manuel Tobias ', '', '', '8019 Willis Ave ', '', 'Panorama City ', 'CA 91402-5805 United States +1 818-934-5413', 'United States ', '91402-5805 ', '+1 818-934-5413'),
(401, 8, 'Junior Cruz ', '', '', '8407 14th Ave ', '', 'Hyattsville ', 'MD ', 'UNITED STATES', '20783-2422  ', '+1 240-713-7029'),
(402, 8, 'Billy Smith ', '', '', '1090 N Mount Mariah Rd ', '', 'Montgomery ', 'TX   ', 'UNITED STATES', '77356-1986', '+1 281-686-0733'),
(403, 8, 'MICHEL AYALA ', '', '', '1807 Warfield Pl ', '', 'Sebring ', 'FL   ', 'UNITED STATES', '33870-4663', '+1 863-451-6783'),
(404, 8, 'Son Ngo ', '', '', '1435 NW 26TH ST ', '', 'OKLAHOMA CITY,', 'OK ', 'UNITED STATES', '73106-3421 ', ' +1 347-448-3190 ext'),
(405, 8, 'Son Ngo ', '', '', '1435 NW 26TH ST ', '', 'OKLAHOMA', 'OK ', 'UNITED STATES', '73106', ' +1 347-448-3190 '),
(406, 8, '  Michelle Taylor ', '', '', '2995 Hwy 66 ', '', 'Ashland ', 'Oregon ', 'UNITED STATES', '97520 ', '+1 347-448-3190'),
(407, 8, 'Rebecca Dorsey ', '', '', '16986 NW LYNCH LN ', '', 'PORTLAND, ', 'United States', 'OR   ', '97229-1221', '+1 314-282-9402'),
(408, 8, 'Rebecca Dorsey ', '', '', '16986 NW LYNCH LN ', '', 'PORTLAND, ', 'United States', 'OR   ', '97229 ', '+1 314-282-9402'),
(409, 8, 'Joshua Cuellar ', '', '', '9139 Mission Pass ', '', 'San Antonio ', 'TX   ', 'United States', '78223-3533', '+1 361-227-4068'),
(410, 4, 'Matthew Worth', '', '', '559 Boston Ave', '', 'Egg Harbor Cy', 'NJ ', 'US', '08215-2604', '609-992-3129'),
(411, 8, 'Rebecca Dorsey ', '', '', '16986 NW LYNCH LN ', '', 'PORTLAND, ', 'United States', 'Oregon', '97229 ', '+1 314-282-9402'),
(412, 8, 'Rebecca Dorsey ', '', '', '16986 NW LYNCH LN ', '', 'PORTLAND', 'United States', 'Oregon', '97229 ', '+1 314-282-9402'),
(413, 8, 'Rebecca Dorsey ', '', '', '16986 NW LYNCH LN ', '', 'PORTLAND', 'United States', 'Oregon', '97229 ', '3142829402'),
(414, 8, 'Randy Franke ', '', '', '2026 Havenwood Blvd ', '', 'New Braunfels ', 'TX   ', 'UNITED STATES', '78132-4142', '+1 512-922-8536'),
(415, 8, 'Maria Morales ', '', '', '118 N 4th st ', '', 'Allentown', 'PA ', 'UNITED STATES', '18102  ', '+1 484-597-5633'),
(416, 8, 'RODOLFO FRANCO ', '', '', '904 W B ST ', '', 'MISSION ', 'TX ', 'UNITED STATES', '78572-6177 ', ' (956) 280-0668'),
(417, 8, 'Melissa McGaughey ', '', '', '29313 AllStar ', '', 'Lake Elsinore', 'CA  ', 'UNITED STATES', '92530', '+1 314-282-9402 ext.'),
(418, 8, 'Michael Dominic Guerriero ', '', '', '1628 GREEN ST ', '', 'TALLAHASSEE, ', 'FL  ', 'UNITED STATES', '32303-5435', '+1 314-282-9402 ext.'),
(419, 8, 'Steve A Files ', '', '', '1119 ROBERT ST ', '', 'MINOT ', 'ND ', 'UNITED STATES', '58703-1417 ', '+1 412-532-4665 ext.'),
(420, 8, 'Bailey tijerina ', '', '', '20305 CRESTED CARACARA LN ', '', 'PFLUGERVILLE, ', 'TX  ', 'UNITED STATES', '78660-1912', '+1 210-728-4548 ext.'),
(421, 8, 'Hannah Barrow ', '', '', '5195D FOUNTAIN CEMETARY RD ', '', 'STARKS, ', 'LA ', 'UNITED STATES', '70661-3023 ', '+1 347-448-3190 ext.');
INSERT INTO `customer` (`id`, `client_id`, `name`, `email`, `company`, `street`, `street2`, `city`, `state`, `country`, `zipcode`, `phone`) VALUES
(422, 8, 'Jason Law ', '', '', '869 Farm to Market Rd. 727 ', '', 'JEFFERSON', 'TX  ', 'UNITED STATES', '75657-5709', '+1 347-448-3190 ext.'),
(423, 8, 'LYDIMARI VILLAFANE ', '', '', '33B LINDSEY WAY ', '', 'GOFFSTOWN', 'NH ', 'UNITED STATES', '03045', ' +1 314-282-9402 ext'),
(424, 8, 'Matt Bovard ', '', '', '3786 SAN CLEMENTE CT ', '', 'NEWBURY PARK', 'CALIFORNIA ', 'UNITED STATES', '91320-3716 ', '+1 314-282-9402 ext.'),
(425, 8, 'Tiffany Daniels ', '', '', '1918 LAURA ST ', '', 'ALLEGAN', 'MI ', 'UNITED STATES', '49010-8902 ', '+1 314-282-9402 ext.'),
(426, 8, 'Gianna Vulpis ', '', '', '2 Oakmont Ct ', '', 'Lincroft', 'NJ ', 'UNITED STATES', '07738-1218  ', '347-448-3190 ext. 98'),
(427, 8, 'Ranjit Kaur ', '', '', '142-20 franklin ave Apt # 3E ', '', 'Flushing,', 'NY ', 'UNITED STATES', '11355 ', '+1 210-728-4548 ext.'),
(428, 8, 'Rene Hidalgo ', '', '', '60 QUINCY ST APT3 ', '', 'PASSAIC', 'NJ ', 'UNITED STATES', '07055-6021  ', '+1 314-282-9402 ext.'),
(429, 8, 'Rene Hidalgo ', '', '', '60 QUINCY ST APT3 ', '', 'PASSAIC', 'NJ ', 'UNITED STATES', '07055', '314-282-9402'),
(430, 8, 'Rebecca Dorsey ', '', '', '16986 NW Lynch Ln', '', 'Portland', 'United States', 'OR', '97229', '3142829402'),
(431, 8, 'US TEKNO, LLC. ', '', '', '13731 Foothill Blvd ', '', 'Sylmar, ', 'CA  ', 'UNITED STATES', '91342', '+1 314-282-9402 ext.'),
(432, 8, 'Rebecca Dorsey ', '', '', '16986 NW Lynch Ln', '', 'Portland', 'OR', 'United States', '97229', '3142829402'),
(433, 8, 'US TEKNO, LLC. ', '', '', '13731 Foothill Blvd ', '', 'Sylmar, ', 'CA  ', 'UNITED STATES', '91342', '3142829402'),
(434, NULL, 'Sam Shao', 'quedinge2012@gmail.com', '', '750 Green Ave', '', 'Pasadena', 'California', 'United States', '91750', '6265518446'),
(435, 8, 'Jennifer Serio ', '', '', '901 W MISSISSIPPI ST ', '', 'BEEBE ', 'AR ', 'UNITED STATES', '72012-2647 ', '+1 314-282-9402 ext.'),
(436, 8, 'Fernando Ontiveroz ', '', '', '7136 STAFFORD AVE ', '', 'HUNTINGTON PARK', 'CA ', 'UNITED STATES', '90255-7408 ', '+1 314-282-9402 ext.'),
(437, 8, 'Chancy lester ', '', '', '10701 Black Jack Ridge Rd ', '', 'Oklahoma City ', 'OK ', 'UNITED STATES', '73150-4314 ', ' +1 405-306-3996'),
(438, 8, 'Margarito Hernandez ', '', '', '2630 trickling brook ct ', '', 'Richmond ', 'VA ', 'UNITED STATES', '23228-2926  ', '+1 804-687-7195'),
(439, 8, 'Luis Manuel Javier ', '', '', '1040 summit ave ', '', 'Greensboro ', 'NC ', 'UNITED STATES', '27405-7008  ', '+1 336-809-1825'),
(440, 8, 'Luis Manuel Javier ', '', '', '1040 summit ave ', '', 'Greensboro ', 'NC ', 'UNITED STATES', '27405-70', '+1 336-809-1825'),
(441, 4, 'gerardo salazar garcia', '', '', '9 HUNTER RD', '', 'NEW CASTLE', 'DE', 'US', '19720-1715', '3028245285'),
(442, 8, 'Mario Fernandez ', '', '', '226 e 109 th st ', '', 'Los angeles ', 'CA ', 'UNITED STATES', '90061-2512  ', '+1 323-327-1287'),
(443, 8, 'Justin Colt Osborne ', '', '', '1570 S Harriet St ', '', 'Martinsville ', 'IN ', 'UNITED STATES', '46151-2716   ', '+1 317-506-6605'),
(444, 8, 'Harold Bowles ', '', '', '3903 BAKER VALLEY RD ', '', 'FREDERICK', 'MD   ', 'UNITED STATES', '21704-7650', '314-282-9402 ext. 65'),
(445, 8, 'Don Ross ', '', '', '322 Tioga st. ', '', 'munhall', 'PA', 'UNITED STATES', '15120 ', '+1 210-728-4548 ext.'),
(446, 8, 'KENDRA ROBERSON ', '', '', '371 LOPER ST ', '', 'PHILADELPHIA', 'MS ', 'UNITED STATES', '39350-2717 ', '+1 314-282-9402 ext.'),
(447, 8, 'neia lima ', '', '', '21924 Savannah Hgts ', '', 'Von Ormi', 'TX ', 'UNITED STATES', '78073', '+1 347-448-3190 ext.'),
(448, 8, 'Marshall hulbert ', '', '', '105 GRAND AVE ', '', 'SWANTON', 'VT ', 'UNITED STATES', '05488-1428', ' +1 347-448-3190 ext'),
(449, 8, 'Joyce johnson ', '', '', '1355 ZMOLEK RD ', '', 'ENNIS', 'TX ', 'UNITED STATES', '75119-0556 ', '+1 314-282-9402 ext.'),
(450, 8, 'Lan ', '', '', '1105 owl st ', '', 'Decatur', 'Texas ', 'UNITED STATES', '76234 ', '+1 347-448-3190 ext.'),
(451, 8, 'Shawna Aguilar ', '', '', '2718 COAL BANK DR FORT ', '', 'COLLINS', 'CO ', 'UNITED STATES', '80525-6124 ', '+1 314-282-9402 ext.'),
(452, 8, 'Cyndi Vasile ', '', '', '35 SEYMOUR ST ', '', 'AUBURN', 'NY  ', 'UNITED STATES', '13021-2731', '+1 314-282-9402 ext.'),
(453, 8, ' Jacob S. Harman ', '', '', '9695 4 CORNERS LN ', '', 'SAINT JACOB', 'IL ', 'UNITED STATES', '62281-1041  ', '+1 314-282-9402 ext.'),
(454, 8, 'India Cordon ', '', '', '767 Starmist Ct ', '', 'Kennesaw, ', 'Ga   ', 'UNITED STATES', '30144', '30144'),
(455, 8, 'Juan Rodriguez ', '', '', '1402 W Houston Dr ', '', 'La Marque', 'TX ', 'UNITED STATES', '77568-4837  ', ' +1 409-933-4569'),
(456, 4, 'Tanisha Tramel', '', '', '5826 N 32ND ST', '', 'MILWAUKEE', 'WI', 'US', '53209-4117', ''),
(457, 4, 'Travis E Miller', '', '', '27 MOBILE DR', '', 'THOMASVILLE', 'PA', 'US', '17364-9741', '7176989163'),
(458, 4, 'Tanisha Tramel', '', '', '5826 N 32ND ST', '', 'MILWAUKEE', 'WI', 'US', '53209-41', '6265003030'),
(459, 2, 'Vanessa Hill', '', '', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', 'United States', '29461', ''),
(460, 2, 'Emily Taggart', '', '', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', 'United States', '54981', '6265023666'),
(461, 8, 'Emily Taggart', '', '', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', 'United States', '54981', ''),
(462, 8, 'TTX  Techonology', 'sale@yjracing.com', '', '1135 center dr unit IJ', '', 'City Of Industry', 'CA', 'US', '91789', '6268937741');

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
(127, 'platform', 'square'),
(90, 'platform', 'amazon'),
(100, 'shipping', 'fedex'),
(101, 'platform', 'offline'),
(125, 'shipping', 'postpony'),
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
(27, 0, 122, 2527, '', 0, '2018-12-13 17:03:13', '2018-12-27 13:11:07'),
(31, 0, 134, 2527, '', 0, '2019-05-07 12:25:59', '2019-06-04 10:25:27'),
(32, 0, 133, 2527, '', 0, '2019-05-07 12:26:06', '2019-09-07 11:08:29'),
(33, 0, 132, 2527, '', 0, '2019-05-07 12:26:13', '2019-07-23 17:44:43'),
(34, 0, 130, 2527, '', 14, '2019-05-07 12:26:22', '2020-04-23 10:29:03'),
(35, 0, 131, 2527, '', 6, '2019-05-07 12:26:28', '2019-12-26 15:24:21'),
(36, 0, 129, 2527, '', 0, '2019-05-07 12:26:34', '2019-07-23 17:44:54'),
(38, 0, 135, 2527, '', 250, '2019-05-15 09:43:54', '2019-05-15 09:43:54'),
(39, 0, 136, 2527, '', 250, '2019-05-15 09:43:54', '2019-05-15 09:43:54'),
(40, 0, 139, 2527, '', 0, '2019-06-04 10:34:27', '2019-09-07 11:20:30');

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
(127, 'SkateboardbackpackBlack', 'SkateboardbackpackBlack', 'B07797V5YY', 'SkateboardbackpackBlack', '34.99', 'no_image.jpg', NULL, '1.90', 5, 1, '14.00', '11.50', '3.20', 500, '', '', 3, '2019-03-03 16:59:22', '2019-03-03 16:59:22'),
(128, 'backpackwithraincover', 'backpackwithraincover', 'B072JJLMKH', 'backpackwithraincover', '47.49', 'no_image.jpg', NULL, '3.40', 5, 1, '15.00', '9.00', '5.00', 350, '', '', 3, '2019-03-03 17:02:20', '2019-03-03 17:02:20'),
(129, 'OA2', 'OA2', 'OA2', 'OA2', '0.00', 'no_image.jpg', NULL, '50.90', 5, 1, '56.70', '15.75', '10.60', 0, 'ups', 'gr', 4, '2019-05-01 20:37:09', '2019-05-30 20:21:52'),
(130, 'OA3', 'OA3', 'OA3', 'OA3', '0.00', 'no_image.jpg', NULL, '61.30', 5, 1, '48.80', '15.00', '11.80', 0, 'ups', 'gr', 4, '2019-05-01 20:37:55', '2019-05-30 20:22:45'),
(131, 'OA4', 'OA4', 'OA4', 'OA4', '0.00', 'no_image.jpg', NULL, '82.70', 5, 1, '66.50', '19.70', '11.80', 0, 'ups', 'gr', 4, '2019-05-01 20:38:34', '2019-05-30 20:24:06'),
(132, 'OA9', 'OA9', 'OA9', 'OA9', '0.00', 'no_image.jpg', NULL, '67.70', 5, 1, '62.20', '13.00', '10.60', 0, 'ups', 'gr', 4, '2019-05-01 20:39:12', '2019-05-30 22:40:06'),
(133, 'OA13-1', 'OA13-1', 'OA13-1', 'OA13-1', '0.00', 'no_image.jpg', NULL, '36.60', 5, 1, '42.00', '26.00', '9.80', 40, 'ups', 'gr', 4, '2019-05-01 20:44:02', '2019-05-30 22:44:44'),
(134, 'OA6-1', 'OA6-1', 'OA6-1', 'OA6-1', '0.00', 'no_image.jpg', NULL, '39.70', 5, 1, '51.20', '23.60', '4.00', 20, 'ups', 'gr', 4, '2019-05-01 20:44:52', '2019-05-30 22:42:15'),
(135, '4891028707844', 'bag-1', 'B07L2YKFK2 ', '4891028707844', '17.99', 'no_image.jpg', NULL, '0.10', 5, 1, '17.30', '5.90', '12.60', 250, '', '', 5, '2019-05-12 22:52:14', '2019-05-16 15:29:31'),
(136, '4891028707837', 'bag-4', 'B07L2XV1YJ ', '4891028707837', '18.99', 'no_image.jpg', NULL, '0.10', 5, 1, '17.30', '5.90', '12.60', 250, '', '', 5, '2019-05-12 22:55:00', '2019-05-16 15:29:42'),
(137, 'foaming bottles', 'foaming bottles', 'B07M97NMLT', 'foaming bottles', '0.00', 'no_image.jpg', NULL, '6.00', 6, 1, '8.00', '2.00', '1.00', 300, '', '', 3, '2019-05-26 18:13:42', '2019-05-26 18:13:42'),
(138, 'OA6-2', 'OA6-2', 'OA6-2', 'OA6-2', '0.00', 'no_image.jpg', NULL, '99.20', 5, 1, '65.00', '17.70', '13.80', 0, 'ups', 'gr', 4, '2019-05-30 22:43:31', '2019-05-30 22:43:31'),
(139, 'OA13-2', 'OA13-2', 'OA13-2', 'OA13-2', '0.00', 'no_image.jpg', NULL, '78.70', 5, 1, '62.50', '12.50', '10.50', 0, 'ups', 'gr', 4, '2019-05-30 22:45:36', '2019-05-30 22:45:36'),
(140, '123', '123', '123', '123', '0.00', 'no_image.jpg', NULL, '45.00', 5, 1, '45.00', '56.00', '20.00', 30, 'postpony', 'fedex_ground', 6, '2019-07-08 14:05:58', '2019-07-10 18:52:08'),
(141, 'portree 72 sink', 'portree 72 sink', 'portree 72 sink', 'portree 72 sink', '0.00', 'no_image.jpg', NULL, '35.00', 5, 1, '25.00', '19.00', '10.00', 30, 'postpony', 'fedex_ground', 6, '2019-07-08 14:18:52', '2019-07-08 14:18:52'),
(142, 'portree 30-48 sink', 'portree 30-48 sink', 'portree 30-48 sink', 'portree 30-48 sink', '0.00', 'no_image.jpg', NULL, '35.00', 5, 1, '25.00', '19.00', '10.00', 30, 'postpony', 'fedex_ground', 6, '2019-07-08 14:19:37', '2019-07-08 14:19:37'),
(144, 'TP111', 'TP111', 'TP111', 'F150 Floor Mat', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, 'postpony', 'fedex_ground', 8, '2020-01-08 17:53:09', '2020-03-25 20:49:19'),
(145, 'TP107', 'TP107', 'TP107', 'MUSTANG Floor Mat', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-03-25 20:50:09', '2020-03-25 20:50:09'),
(147, 'TP104', 'TP104', '', 'CRV FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-04-05 23:30:48', '2020-04-12 19:47:33'),
(148, 'TP113', 'TP113', '', 'MERCEDEZ BENZ G63 FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, 'fedex', 'ghd', 8, '2020-04-06 19:21:52', '2020-04-06 19:21:52'),
(149, 'TP105', 'TP105', '', 'CAMRY FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-07 23:26:13', '2020-04-07 23:26:13'),
(150, 'TP108', 'TP108', '', 'CHR FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-07 23:26:24', '2020-04-09 19:02:00'),
(151, 'SC', 'SC', '', 'SEAT COVER', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '29.52', '23.62', '5.90', 5, '', '', 8, '2020-04-07 23:26:29', '2020-04-07 23:27:14'),
(152, 'seat_cover', 'seat_cover', 'seat_cover', 'SEAT COVER', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '30.00', '24.00', '6.00', 10, 'postpony', 'fedex_ground', 4, '2020-04-08 16:48:17', '2020-04-08 16:51:08'),
(153, 'TP110', 'TP110', '', 'Jeep Cherokee Floor Mat', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-04-09 19:03:06', '2020-04-09 19:03:06'),
(154, 'TP103', 'TP103', '', 'ACCORD FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-09 19:39:43', '2020-04-09 19:39:43'),
(155, 'TP115', 'TP115', '', 'TP115 CIVIC FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-13 19:16:56', '2020-04-13 19:16:56'),
(156, 'TP112', 'TP112', 'TP112', 'TOYOTA TUNDRA FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-16 00:03:17', '2020-04-16 00:03:17'),
(157, 'SC-cherokee-B', 'SC-cherokee-B', 'SC-cherokee-B', 'JEEP CHEROKEE BLACK SEAT COVER', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '29.52', '23.62', '5.90', 0, '', '', 8, '2020-04-16 00:10:30', '2020-04-16 00:10:30'),
(158, 'SC-Highlander-W', 'SC-Highlander-W', 'SC-Highlander-W', 'Highlander white seat cover', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '29.52', '23.62', '5.90', 0, '', '', 8, '2020-04-16 00:11:21', '2020-04-16 00:11:21'),
(159, 'SC-15crv-B', 'SC-15crv-B', 'SC-15crv-B', '15 CRV BLACK SEAT COVER', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '29.52', '23.62', '5.90', 0, '', '', 8, '2020-04-16 00:11:57', '2020-04-16 00:11:57'),
(160, 'OB5 ', 'OB5 ', 'OB5 ', 'JK 07-13  FLOOR MAT', '0.00', 'no_image.jpg', NULL, '7.00', 5, 1, '23.00', '12.00', '9.00', 0, '', '', 8, '2020-04-16 23:52:17', '2020-04-16 23:52:17'),
(161, 'TP101-3', 'TP101-3', 'TP101-3', 'TP101-3 2ND ROW FLOOR MAT', '0.00', 'no_image.jpg', NULL, '5.00', 5, 1, '29.00', '19.00', '6.00', 5, '', '', 8, '2020-04-17 01:21:24', '2020-04-17 01:21:24'),
(162, 'TP116', 'TP116', 'TP116', 'X-TRAIL TPE FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-04-17 18:22:27', '2020-04-17 18:22:27'),
(163, 'TP120', 'TP120', 'TP120', 'ATIMA FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-04-18 00:18:17', '2020-04-18 00:18:17'),
(164, 'TP120', 'TP120', 'TP120', 'ATIMA FLOOR MAT', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 5, '', '', 8, '2020-04-18 00:18:20', '2020-04-18 00:18:20'),
(165, 'TP109', 'TP109', 'TP109', 'WRANGLER JL', '0.00', 'no_image.jpg', NULL, '16.00', 5, 1, '33.00', '25.00', '10.00', 0, '', '', 8, '2020-04-19 19:55:34', '2020-04-19 19:55:34'),
(166, 'SC-CHR-R  ', 'SC-CHR-R  ', 'SC-CHR-R  ', 'CHR SEAT COVER', '0.00', 'no_image.jpg', NULL, '12.00', 5, 1, '29.52', '23.62', '5.90', 0, '', '', 8, '2020-04-19 20:21:42', '2020-04-19 20:21:42');

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

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `client_id`, `payment_method`, `amount`, `status`, `date_paid`, `date_added`, `date_modified`) VALUES
(1, 4, 'offline', '5000.00', 2, '0000-00-00 00:00:00', '2019-05-16 17:15:57', '2019-05-16 17:15:57'),
(2, 6, 'offline', '500.00', 2, '0000-00-00 00:00:00', '2019-07-08 14:12:27', '2019-07-08 14:12:27'),
(3, 6, 'offline', '29.60', 2, '0000-00-00 00:00:00', '2019-07-08 14:36:26', '2019-07-08 14:36:26'),
(4, 4, 'offline', '3658.00', 2, '0000-00-00 00:00:00', '2019-07-13 17:29:00', '2019-07-13 17:29:00'),
(5, 4, 'offline', '4286.00', 2, '0000-00-00 00:00:00', '2019-08-20 19:17:52', '2019-08-20 19:17:52'),
(6, 4, 'offline', '7.90', 2, '0000-00-00 00:00:00', '2019-08-29 04:10:07', '2019-08-29 04:10:07'),
(7, 4, 'offline', '2650.00', 2, '0000-00-00 00:00:00', '2019-09-01 05:50:59', '2019-09-01 05:50:59'),
(8, 4, 'offline', '1450.00', 2, '0000-00-00 00:00:00', '2019-12-05 22:05:47', '2019-12-05 22:05:47'),
(9, 4, 'offline', '340.00', 2, '0000-00-00 00:00:00', '2019-12-12 16:47:55', '2019-12-12 16:47:55'),
(10, 8, 'offline', '1000.00', 2, '0000-00-00 00:00:00', '2020-03-29 11:07:33', '2020-03-29 11:07:33'),
(11, 4, 'offline', '640.00', 2, '0000-00-00 00:00:00', '2020-03-29 11:14:54', '2020-03-29 11:14:54'),
(12, 8, 'offline', '1500.00', 2, '0000-00-00 00:00:00', '2020-04-13 21:28:32', '2020-04-13 21:28:32'),
(13, 8, 'offline', '1420.00', 2, '0000-00-00 00:00:00', '2020-04-20 23:54:27', '2020-04-20 23:54:27');

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
  `alter_shipper` int(11) NOT NULL DEFAULT '0',
  `shipper_name` varchar(255) NOT NULL,
  `shipper_company` varchar(255) NOT NULL,
  `shipper_street` varchar(255) NOT NULL,
  `shipper_street2` varchar(255) NOT NULL,
  `shipper_city` varchar(55) NOT NULL,
  `shipper_state` varchar(55) NOT NULL,
  `shipper_zipcode` varchar(8) NOT NULL,
  `shipper_country` varchar(55) NOT NULL,
  `shipper_email` varchar(100) NOT NULL,
  `shipper_phone` varchar(20) NOT NULL,
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

INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `alter_shipper`, `shipper_name`, `shipper_company`, `shipper_street`, `shipper_street2`, `shipper_city`, `shipper_state`, `shipper_zipcode`, `shipper_country`, `shipper_email`, `shipper_phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`) VALUES
(10, 4, '', 'TJ', '11615 E YATES CENTER RD', '', 'LYNDONVILLE', 'NY', '14098', 'US', '', '5853535341', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0312364458', 2, '', '2018-12-18 17:22:55', '2018-12-18 17:47:28'),
(11, 4, '', 'Karen Parsons', '13 Hathaway Ave', '', 'Peabody', 'MA', '09160', 'US', '', '9789779971', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0312366321', 2, '', '2018-12-18 17:31:03', '2018-12-18 17:47:23'),
(12, 4, '', 'Joshua Flaugh', '120 MCDONALD RD', '', 'DUNCANSVILLE', 'PA', '16635', 'US', '', '8143814184', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'ups', 'gr', '0.00', '1Z9352XX0345729574', 2, '', '2018-12-18 17:32:09', '2018-12-18 17:47:17'),
(13, 4, '', 'Jonathan Michael Dixon', '5110 AZALEA TRACE DR APT 2603', '', 'HOUSTON', 'TX', '77066-43', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236776', 2, '', '2018-12-20 11:28:44', '2018-12-20 12:51:10'),
(14, 4, '', 'Harry Conover', '77 Steiner Ave', '', 'Neptune', 'NJ', '07753', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236769', 2, '', '2018-12-20 11:29:37', '2018-12-20 12:51:02'),
(15, 4, '', 'gene black', '401 W School St', '', 'Hamilton', 'MO', '64644-82', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012208354236752', 2, '', '2018-12-20 11:30:26', '2018-12-20 12:50:57'),
(16, 4, '112-5257922-0049842-WXP', 'Paul Trevino', '8606 SAMSEL FLS', '', 'SAN ANTONIO', 'TX', '78254-45', 'United States', '', '2103166518', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012168355278871', 2, '', '2018-12-20 22:38:07', '2018-12-21 14:22:55'),
(17, 4, '112-7500233-2673065-WXP', 'Casey T Austin', '2030 Via Vina', '', 'San Clemente', 'CA', '92673', 'United States', '', '949-412-2643', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012168355278857', 2, '', '2018-12-20 22:46:00', '2018-12-21 14:25:24'),
(18, 4, '70995', 'John Hippard', '1396 County Highway 16', '', 'Tower Hill', 'IL', '62571', 'US', 'hippardcompany@gmail.com', '(618) 292-0025', 0, '', '', '', '', '', '', '', '', '', '', '87.00', '3.48', '3.00', '6.00', 1, 5, 'usps', 'pr', '0.00', '9405511899223233526135', 2, '', '2018-12-21 01:05:52', '2018-12-25 14:12:07'),
(19, 4, '111-2540000-5518629-WXP', 'Jonathan lea ', '1221 E EASTWOOD ST', '', 'MARSHALL', 'Missouri', '65340', 'United States', '', '6606313946', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012168355278864', 2, '', '2018-12-21 01:29:08', '2018-12-25 14:12:25'),
(20, 4, '113-0577657-6827466-WXP', 'Dan Mountjoy ', '2 GOOSE CREEK DR APT 1123', '', 'BLOOMINGTON', 'Illinois', '61701', 'United States', '', '3092129132', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '3.48', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9505513012168355278840', 2, '', '2018-12-21 01:31:12', '2018-12-21 14:24:15'),
(25, 4, '112-0688369-0885063-WXP ', 'Raymond kreusch ', '40 GAFFNEY WAY', '', 'PORT READING', 'NJ', '07064', 'US', '', '9083098599', 0, '', '', '', '', '', '', '', '', '', '', '35.00', '3.50', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9405511899223024275747', 2, '', '2018-12-25 22:59:10', '2018-12-26 10:01:26'),
(26, 4, '114-4961477-8753864', 'Jacob M. Kunkel', '953 750N AVE', '', 'MT STERLING', 'IL', '62353', 'US', '', '2174400564', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '3.50', '3.00', '2.00', 1, 5, 'usps', 'pr', '0.00', '9405511899223020867502', 2, '', '2018-12-26 23:48:34', '2018-12-27 13:06:27'),
(27, 5, '', 'Frank Campbell', '1790 WINDY LN', '', 'SOUTHAVEN', 'MS', '38671-94', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'boadrunner', '0.00', '118270677', 2, '<p>Carrier: ROADRUNNER</p>', '2019-05-06 16:21:01', '2019-05-09 15:59:25'),
(28, 5, '', 'RANDY CONNER', '15762 JIM CT', '', 'JACKSONVILLE', 'FL', '32218-68', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.50', 1, 5, 'ltl', 'boadrunner', '0.00', '118275130', 2, '<p>Carrier: ROADRUNNER<br></p>', '2019-05-06 16:21:49', '2019-05-09 15:59:30'),
(29, 5, '', 'Luis Acosta', '6451 S DESERT BLVD', '', 'EL PASO', 'TX', '79932-85', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'boadrunner', '0.00', '118272459', 2, '<p>Carrier: ROADRUNNER<br></p>', '2019-05-06 16:22:39', '2019-05-09 15:59:34'),
(30, 5, '', 'ANTHONY MCDONALD', '507 WINTERGREEN WAY', '', 'CANTON', 'GA', '30115-85', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.52', 1, 5, 'ltl', 'boadrunner', '0.00', '118276385', 2, '<p>Carrier: ROADRUNNER<br></p>', '2019-05-06 20:49:23', '2019-05-09 15:59:39'),
(31, 5, '', 'hardy mosley', '5166 W 134TH PL', '', 'HAWTHORNE', 'CA ', '90250-56', 'US', '', '6269642930', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.52', 1, 5, 'usps', 'pr', '0.00', '-', 2, '', '2019-05-07 18:12:23', '2019-05-13 17:40:24'),
(32, 5, '', 'NUEVO HOGAR LTDA Y/O TITAN 4X4', '9990 NW 14TH ST STE 111', '', 'MIAMI', 'FL ', '33172-27', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'central_transport_llc', '0.00', '80295697', 2, '', '2019-05-07 19:01:13', '2019-05-09 16:16:54'),
(33, 5, '', 'JESSIE WILSON', '4404 S ELMS RD', '', 'SWARTZ CREEK', 'MI', '48473-15', 'US', '', '(810) 630-6102', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.52', 1, 5, 'ltl', 'boadrunner', '0.00', '454840992', 2, '', '2019-05-08 08:38:08', '2019-05-09 16:19:35'),
(34, 5, '', 'EDWARD L DUNN', '30498 N 73RD ST', '', 'SCOTTSDALE', 'AZ', '85266-18', 'US', '', '(480) 206-1413', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'central_freight_lines', '0.00', '454841008', 2, '', '2019-05-08 08:39:14', '2019-05-09 16:14:13'),
(35, 5, '', 'RICKY OLIVARES', '1961 NEHEMIAH CT', '', 'LAS CRUCES', 'NM', '88001-19', 'US', '', '(575) 644-2036', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.52', 1, 5, 'ltl', 'central_freight_lines', '0.00', '856982038', 2, '', '2019-05-08 18:58:08', '2019-05-09 20:38:02'),
(36, 5, '', 'charles mallalieu', '142 W LESLIE LN', '', 'PANAMA CITY BEACH', 'FL', '32407-39', 'US', '', '8503333997', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '26.00', '20.40', '87.34', 1, 5, 'ltl', 'roadrunner', '0.00', '454719501', 2, '', '2019-05-08 19:00:47', '2019-05-10 22:57:55'),
(37, 5, '', 'Dawn R Miller', '4128 MOUNT VIEW RD', '', 'DANVILLE', 'VA ', '24540-90', 'US', '', '540-314-4891', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'boadrunner', '0.00', '454840984', 2, '', '2019-05-08 19:01:52', '2019-05-09 16:20:08'),
(38, 5, '', 'RANDY CONNER', '15762 Jim Ct', '', 'JACKSONVILLE ', 'KL', '32218-68', 'US', '', '904-210-6258', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', '0.00', '454840224', 2, '', '2019-05-10 19:18:19', '2019-05-13 17:47:25'),
(39, 5, '', 'Christian M Antoniazzi', '101 MADISON AVE', '', 'QUINCY', 'MA', '02169-78', 'US', '', '7813538594', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.50', 1, 5, 'ltl', 'roadrunner', '0.00', '454840240', 2, '', '2019-05-12 19:18:04', '2019-05-13 17:33:24'),
(40, 5, '', 'Carla Barber', '9155 LUCY MOORE RD', '', 'NICHOLLS', 'GA ', '31554-49', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '25.60', '160.16', 1, 5, 'ltl', 'roadrunner', '0.00', '454837311', 2, '', '2019-05-14 01:08:10', '2019-05-15 16:41:47'),
(41, 5, '', 'nathaniel newberger', '2075 WHITE OAK DR', '', 'STOW', 'OH', '44224-26', 'US', '', '3308011156', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.54', 1, 5, 'ltl', 'roadrunner', '0.00', '454837329', 2, '', '2019-05-14 18:22:57', '2019-06-03 15:18:03'),
(42, 5, '', 'Jose Alvarado', '3939 K ST', '', 'PHILADELPHIA', 'PA', '19124-54', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'ltl', 'roadrunner', '0.00', '454837303', 2, '', '2019-05-14 18:23:56', '2019-06-03 15:18:00'),
(43, 5, '', 'mark gadbois', '1104 HIGHLAND DR', '', 'DEL MAR', 'CA', '92014-39', 'US', '', '7608159943', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.50', 1, 5, 'fedex', 'ghd', '0.00', '787325402750', 2, '', '2019-05-15 23:19:35', '2019-06-03 15:17:56'),
(44, 5, '', 'Jeremy Parkins', '4506 PINE BREEZE DR', '', 'KINGWOOD', 'TX ', '77345-12', 'US', '', '+1 415-851-9136 ext.', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '787356684435', 2, '', '2019-05-19 23:18:51', '2019-06-03 15:17:53'),
(45, 5, '', 'Roberto Navarro', '3520 BOWDEN CIR E', '', 'JACKSONVILLE', 'FL ', '32216-62', 'US', '', '9048382250', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '787356865332', 2, '', '2019-05-19 23:21:12', '2019-06-03 15:17:49'),
(46, 5, '', 'Joseph Corbitt', '111 COOSA COUNTY ROAD 35', '', 'WEOGUFKA, ', 'AL ', '35183-23', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'fedex', 'ghd', '0.00', '787393007490', 2, '', '2019-05-20 20:29:30', '2019-06-03 15:17:45'),
(47, 5, '', 'Rob Roussel', '4903 E 111TH PL', '', 'THORNTON', 'CO ', '80233-38', 'US', '', '3035052095', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'fedex', 'ghd', '0.00', '787393016576', 2, '', '2019-05-20 20:30:11', '2019-06-03 15:17:42'),
(48, 5, '', 'Dustin - Maryville Auto Sales', '3019 E LAMAR ALEXANDER PKWY', '', 'MARYVILLE', 'TN', '37804-60', 'US', '', '8654140559', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '25.60', '181.50', 1, 5, 'fedex', 'ghd', '0.00', '787393029418 ~ 787393058090', 2, '', '2019-05-20 20:31:26', '2019-06-03 15:17:38'),
(49, 5, '', 'jonathan c russell', '14103 DENNE ST', '', 'LIVONIA', 'MI', '48154-43', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.52', 1, 5, 'fedex', 'ghd', '0.00', '787393022402', 2, '', '2019-05-20 20:32:08', '2019-06-03 15:17:34'),
(50, 5, '', 'Jose Fernandez', '1838 E PRESTWICK AVE', '', 'FRESNO', 'CA', '93730-35', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '25.60', '181.50', 1, 5, 'postpony', 'pfg', '0.00', '787451889422 - 787451906944', 2, '', '2019-05-23 19:14:26', '2019-05-23 21:27:27'),
(51, 5, '', 'Kisner Welding Techniques, LLC', '400 N STATE ST', '', 'YORK', 'PA', '17403-13', 'US', '', '7177473017', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '15.70', '21.20', '118.36', 1, 5, 'fedex', 'ghd', '0.00', '787477485882 ~ 787477490149', 2, '', '2019-05-24 19:16:11', '2019-06-03 15:17:30'),
(52, 5, '', 'Guillermo polanco', '6424 COLLINS AVE APT 202', '', 'MIAMI BEACH', 'FL', '33141-46', 'US', '', '415-851-9136 ext. 72', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '787532222412', 2, '', '2019-05-26 18:17:51', '2019-06-03 15:17:26'),
(53, 5, '', 'K Moore', '1411 ETHERIDGE DR', '', 'AUBURN', 'GA', '30011-33', 'US', '', '415-851-9136 ext. 28', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '25.60', '181.50', 1, 5, 'postpony', 'fedex_ground', '0.00', '787532225503 ~ 787532227458', 2, '', '2019-05-26 18:18:48', '2019-06-03 15:17:23'),
(54, 5, '', 'Heather Scott', '203 KRISMARK TRL', '', 'ANDERSON', 'SC', '29621-78', 'US', '', '8646176027', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '23.60', '17.80', '138.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787605912887 - 787605918576', 1, '', '2019-05-28 23:06:24', '2019-06-03 15:17:18'),
(55, 5, '', 'Steven J Richardson', '300 LASSO ST', '', 'ANGLETON', 'TX ', '77515-27', 'US', '', '415-851-9136 ext. 99', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '25.60', '160.16', 1, 5, 'postpony', 'fedex_ground', '0.00', '787585351952 ~ 787585322555  ~ 787585319283', 1, '', '2019-05-29 18:16:50', '2019-06-03 15:14:56'),
(56, 5, '', 'Francisco valle', '452 PLAINFIELD ST', '', 'SPRINGFIELD', 'MA ', ' 01107-1', 'US', '', '415-851-9136 ext. 14', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '15.70', '21.20', '118.36', 1, 5, 'postpony', 'fedex_ground', '0.00', '787585316218 ~ 787585311617', 2, '', '2019-05-29 18:19:24', '2019-06-03 15:14:51'),
(57, 5, '', 'RICHARD EDWARDS', '1364 E GREEN BAY ST', '', 'SHAWANO ', 'WI', '54166-22', 'US', '', '(715) 526-1989', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '787585346552 ~ 787585349150', 1, '', '2019-05-29 18:26:21', '2019-06-03 15:14:48'),
(58, 5, '', 'JOHN SNOW', '1834 N MARK ST', '', 'LAYTON', 'UT', '84041-49', 'US', '', '415-851-9136 ext. 92', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '25.60', '160.16', 1, 5, 'postpony', 'fedex_ground', '0.00', '787585335110 ~ 787585343211 ~ 787585338977', 2, '', '2019-05-29 23:50:57', '2019-06-03 15:14:46'),
(59, 5, '', 'Lesley Boyster', '10132 RAINBOW SPRINGS RD', '', 'MINERAL POINT', 'MO', '63660-94', 'US', '', '5734381488', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '15.70', '21.20', '118.36', 1, 5, 'postpony', 'fedex_ground', '0.00', '787585329230 ~ 787585332177', 2, '', '2019-05-29 23:52:51', '2019-06-03 15:14:43'),
(60, 5, '', 'Frank Pires', '866 MILLERS WAY', '', 'PORT ORANGE', 'FL', '32127-58', 'US', '', '3865660997', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654130459', 2, '', '2019-06-02 19:48:39', '2019-06-03 15:14:38'),
(61, 5, '', 'Frank Pires', '866 MILLERS WAY', '', 'PORT ORANGE', 'FL', '32127-58', 'US', '', '3865660997', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654132495', 2, '', '2019-06-02 19:49:47', '2019-06-03 15:14:33'),
(62, 5, '', 'derek smith', '3201 W MURIEL DR', '', 'PHOENIX', 'AZ', '85053-66', 'US', '', '6025186598', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654125931', 2, '', '2019-06-02 19:50:44', '2019-06-03 15:14:22'),
(63, 5, '', 'derek smith', '3201 W MURIEL DR', '', 'PHOENIX', 'AZ', '85053-66', 'US', '', '6025186598', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654127691', 2, '', '2019-06-02 19:51:43', '2019-06-03 15:14:05'),
(64, 5, '', 'Patty Zamudio', '82225 AIRPORT BLVD', '', 'THERMAL', 'CA', '92274-97', 'US', '', '7608512300', 0, '', '', '', '', '', '', '', '', '', '', '51.20', '23.60', '4.00', '39.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654121443', 2, '', '2019-06-02 19:54:00', '2019-06-03 15:27:51'),
(65, 5, '', 'Patty Zamudio', '82225 AIRPORT BLVD', '', 'THERMAL', 'CA', '92274-97', 'US', '', '7608512300', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.20', 1, 5, 'postpony', 'fedex_ground', '0.00', '787654123619', 1, '', '2019-06-03 15:27:47', '0000-00-00 00:00:00'),
(66, 5, '', 'jeremy gay', '460 POOLE MELTON RD', '', 'BLYTHE', 'GA', '30805-38', 'US', '', '8034650863', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732290720', 2, '', '2019-06-04 18:24:55', '2019-06-06 17:43:21'),
(67, 5, '', 'jeremy gay', '460 POOLE MELTON RD', '', 'BLYTHE', 'GA', '30805-38', 'US', '', '8034650863', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732294277', 2, '', '2019-06-04 18:25:51', '2019-06-06 17:44:01'),
(68, 5, '', 'Jerald Vaughn', '306 MAPLE LN', '', 'CONROE', 'TX', '77304-25', 'US', '', '8326476000', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732299794', 2, '', '2019-06-04 19:36:41', '2019-06-06 17:44:31'),
(69, 5, '', 'Jerald Vaughn', '306 MAPLE LN', '', 'CONROE', 'TX', '77304-25', 'US', '', '8326476000', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732393389', 2, '', '2019-06-04 19:37:32', '2019-06-06 17:44:55'),
(70, 5, '', 'Lewis Rager', '16274 DEER MEADOW LN', '', 'MOUNDVILLE', 'AL', '35474-62', 'US', '', '2052926254', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732307167', 2, '', '2019-06-05 18:14:58', '2019-06-06 17:45:22'),
(71, 5, '', 'Lewis Rager', '16274 DEER MEADOW LN', '', 'MOUNDVILLE', 'AL', '35474-62', 'US', '', '2052926254', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732310748', 2, '', '2019-06-05 18:15:43', '2019-06-06 17:45:44'),
(72, 5, '', 'Christian Schilling', '1241 GRANTS PL', '', 'DENVER', 'PA', '17517-88', 'US', '', '7179176585', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732312707', 2, '', '2019-06-05 18:16:33', '2019-06-06 17:46:13'),
(73, 5, '', 'Christian Schilling', '1241 GRANTS PL', '', 'DENVER', 'PA', '17517-88', 'US', '', '7179176585', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787732316286', 2, '', '2019-06-05 18:17:20', '2019-06-06 17:46:35'),
(74, 5, '', 'Alyssia Duplessis', '12798 CAMASSIA CT', '', 'RANCHO CUCAMONGA', 'CA', '91739-15', 'US', '', '9093603175', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798192275', 2, '', '2019-06-07 06:16:55', '2019-06-10 17:18:48'),
(75, 5, '', 'Alyssia Duplessis', '12798 CAMASSIA CT', '', 'RANCHO CUCAMONGA', 'CA', '91739-15', 'US', '', '9093603175', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798194749', 2, '', '2019-06-07 06:17:42', '2019-06-10 17:18:45'),
(76, 5, '', 'shad meena', '13692 VECINIO DEL ESTE PL', '', 'LAKESIDE', 'CA', '92040-48', 'US', '', '6196358488', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798199810', 2, '', '2019-06-07 06:18:26', '2019-06-10 17:18:42'),
(77, 5, '', 'shad meena', '13692 VECINIO DEL ESTE PL', '', 'LAKESIDE', 'CA', '92040-48', 'US', '', '6196358488', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798196991', 2, '', '2019-06-07 06:19:07', '2019-06-10 17:18:38'),
(78, 5, '', 'Hector Vallejo', '1075 PALM ST', '', 'SAN JOSE', 'CA ', '95110-33', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798202718', 2, '', '2019-06-07 06:20:17', '2019-06-10 17:18:35'),
(79, 5, '', 'Hector Vallejo', '1075 PALM ST', '', 'SAN JOSE', 'CA', '95110-33', 'US', '', '415-851-9136 ext. 47', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787798201620', 2, '', '2019-06-07 06:21:12', '2019-06-10 17:18:25'),
(80, 5, '', 'Guerrero’s Auto Repair', '16770 SW SHAW ST STE B', '', 'BEAVERTON', 'OR ', '97078-19', 'US', '', '5033670517', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '0.00', '787839640724', 2, '', '2019-06-10 17:59:17', '0000-00-00 00:00:00'),
(81, 5, '', 'Guerrero’s Auto Repair', '16770 SW SHAW ST STE B', '', 'BEAVERTON', 'OR ', '97078-19', 'US', '', '5033670517', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '0.00', '787839650493', 2, '', '2019-06-10 18:00:05', '0000-00-00 00:00:00'),
(82, 5, '', 'Lucky Line Motors', '400 LANSDOWNE RD', '', 'FREDERICKSBRG', 'VA', '22401-73', 'US', '', '5402875112', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '0.00', '787839633538', 2, '', '2019-06-10 18:00:50', '0000-00-00 00:00:00'),
(83, 5, '', 'Lucky Line Motors', '400 LANSDOWNE RD', '', 'FREDERICKSBRG', 'VA', '22401-73', 'US', '', '5402875112', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '0.00', '787839626580', 2, '', '2019-06-10 18:01:36', '0000-00-00 00:00:00'),
(85, 5, '', 'hernan concepcion', '926 TRUSCOTT PL', '', 'ASPEN', 'CO', '81611-12', 'US', '', '9703096787', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '0.00', '787839618582', 2, '', '2019-06-11 18:01:47', '0000-00-00 00:00:00'),
(86, 5, '', 'hernan concepcion', '926 TRUSCOTT PL', '', 'ASPEN', 'CO', '81611-12', 'US', '', '9703096787', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '0.00', '787839612665', 2, '', '2019-06-11 18:02:43', '0000-00-00 00:00:00'),
(87, 5, '', 'michael maxim', '15965 SIMMONS AVE NE', '', 'CEDAR SPRINGS', 'MI', '49319-96', 'US', '', '6164371822', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'undefined', '0.00', '787841875264', 2, '', '2019-06-11 18:03:34', '0000-00-00 00:00:00'),
(88, 5, '', 'michael maxim', '15965 SIMMONS AVE NE', '', 'CEDAR SPRINGS', 'MI', '49319-96', 'US', '', '6164371822', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'undefined', '0.00', '787839604564', 2, '', '2019-06-11 18:04:39', '0000-00-00 00:00:00'),
(90, 5, '', 'Rory Gallo', '157 NETHERFIELD ST NW', '', 'COMSTOCK PARK', 'MI', '49321-93', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787941296019', 2, '', '2019-06-13 18:15:24', '0000-00-00 00:00:00'),
(91, 5, '', 'Rory Gallo', '157 NETHERFIELD ST NW', '', 'COMSTOCK PARK', 'MI', '49321-93', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787941291326', 2, '', '2019-06-13 18:16:05', '0000-00-00 00:00:00'),
(92, 5, '', 'Steve Covey\'s cargo trailer store', '711 US HIGHWAY 301', '', 'PALMETTO', 'FL ', '34221-40', 'US', '', '9413740528', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787941288043', 2, '', '2019-06-13 18:17:01', '0000-00-00 00:00:00'),
(93, 5, '', 'robert bree', '11173 fascination dr', '', 'frederic', 'MI ', '49733', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787945176476', 2, '', '2019-06-17 18:15:38', '2019-06-17 19:26:10'),
(94, 5, '', 'Lanel Buechler', '3627 I94 BUSINESS LOOP E', '', 'DICKINSON', 'ND', '58601', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '787992462543', 2, '', '2019-06-19 01:19:54', '2019-06-19 14:19:25'),
(95, 5, '', 'Lanel Buechler', '3627 I94 BUSINESS LOOP E', '', 'DICKINSON', 'ND', '58601', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '787992450653', 2, '', '2019-06-19 01:20:35', '2019-06-19 14:19:16'),
(98, 5, '', 'Tim Clay', '465 E DIVISION ST', '', 'SPARTA', 'MI', '49345-13', 'US', '', '6162921920', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788020554323', 2, '', '2019-06-19 18:24:03', '0000-00-00 00:00:00'),
(99, 5, '', 'Tim Clay', '465 E DIVISION ST', '', 'SPARTA', 'MI', '49345-13', 'US', '', '6162921920', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788020554003', 2, '', '2019-06-19 18:24:40', '0000-00-00 00:00:00'),
(100, 5, '', 'Matthew OConnor', '532 38TH AVE NE', '', 'COLUMBIA HEIGHTS', 'MN', '55421-38', 'US', '', '7634968387', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788020553382', 2, '', '2019-06-19 18:25:28', '0000-00-00 00:00:00'),
(101, 5, '', 'Matthew OConnor', '532 38TH AVE NE', '', 'COLUMBIA HEIGHTS', 'MN ', '55421-38', 'US', '', '7634968387', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788011580760', 2, '', '2019-06-19 18:26:14', '0000-00-00 00:00:00'),
(102, 5, '', 'mike Henderson', '688 N 1260 W', '', 'CLINTON', 'UT', '84015-93', 'US', '', '8018150578', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '788091732165', 2, '', '2019-06-23 18:34:38', '0000-00-00 00:00:00'),
(103, 5, '', 'Dustin - Maryville Auto Sales', '3019 e lamar alexander pkwy', '', 'maryville ', 'TN', '37804-60', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '17.70', '13.80', '99.20', 1, 5, 'postpony', 'fedex_ground', '0.00', '788227255402', 1, '', '2019-06-28 20:25:23', '2019-07-01 15:20:23'),
(104, 5, '', 'Edwin Lee', '6798 LEWIS ST', '', 'ARVADA', 'CO', '80004-15', 'US', '', '3038342860', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788227256660', 2, '', '2019-06-30 19:17:07', '2019-07-01 15:20:34'),
(105, 5, '', 'Edwin Lee', '6798 LEWIS ST', '', 'ARVADA', 'CO ', '80004-15', 'US', '', '3038342860', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788227257379', 2, '', '2019-06-30 19:18:02', '2019-07-01 15:20:42'),
(106, 5, '', 'Keith Bledsoe', '2520 S CARVER RD', '', 'MARYVILLE', 'TN', '37801-83', 'US', '', '8659888088', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788269624396', 2, '', '2019-07-01 19:53:40', '2019-07-03 10:24:22'),
(107, 5, '', 'Keith Bledsoe', '2520 S CARVER RD', '', 'MARYVILLE', 'TN ', ' 37801-8', 'US ', '', '8659888088', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788269628222', 2, '', '2019-07-01 19:54:29', '2019-07-03 10:24:33'),
(108, 5, '', 'Fabio Silva', '694 SE CAMP ST', '', 'LAKE CITY', 'FL ', '32025-60', 'US', '', '4384389706', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788269629825', 2, '', '2019-07-02 19:03:02', '2019-07-03 10:24:41'),
(109, 5, '', 'Fabio Silva', '694 SE CAMP ST', '', 'LAKE CITY', 'FL', '32025-60', 'US', '', '4384389706', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788269616229', 2, '', '2019-07-02 19:05:43', '2019-07-03 10:24:49'),
(110, 5, '', 'troy wilcox', '547 NW AVENUE D', '', 'HAMLIN', 'TX', '79520-22', 'US', '', '2562943744', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288170136', 2, '', '2019-07-03 18:22:33', '0000-00-00 00:00:00'),
(111, 5, '', 'troy wilcox', '547 NW AVENUE D', '', 'HAMLIN', 'TX', '79520-22', 'US', '', '2562943744', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288171728', 2, '', '2019-07-03 18:24:09', '0000-00-00 00:00:00'),
(112, 5, '', 'Darrell schneider', '6529 HIGHWAY 105 W', '', 'CONROE', 'TX', '77304-47', 'US', '', '5618438421', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288172139', 2, '', '2019-07-03 18:24:52', '0000-00-00 00:00:00'),
(113, 5, '', 'Darrell schneider', '6529 HIGHWAY 105 W', '', 'CONROE', 'TX', '77304-47', 'US', '', '5618438421', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288172920', 2, '', '2019-07-03 18:25:32', '0000-00-00 00:00:00'),
(114, 5, '', 'Hector Vallejo', '1075 palm st', '', 'San Jose', 'CA', '95110', 'United States', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288173396', 2, '', '2019-07-03 20:15:36', '2019-07-04 16:47:31'),
(115, 5, '', 'Hector Vallejo', '1075 palm st', '', 'San Jose', 'CA', '95110', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788288166854', 2, '', '2019-07-03 20:16:14', '2019-07-04 16:44:51'),
(116, 5, '', 'wayne walker', '200 SHAWNEE AVE', '', 'DOVER', 'PA', '17315-37', 'US', '', '7176932992', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788372344208', 2, '', '2019-07-05 19:05:27', '0000-00-00 00:00:00'),
(117, 5, '', 'wayne walker', '200 SHAWNEE AVE', '', 'DOVER', 'PA', '17315-37', 'US', '', '7176932992', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788322143290', 2, '', '2019-07-05 19:06:29', '0000-00-00 00:00:00'),
(118, 5, '', 'ray fluhr', '654 G TAYLOR RD', '', 'COLUMBIA', 'KY', '42728-94', 'US', '', '2708051426', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788309695786', 2, '', '2019-07-05 19:15:17', '0000-00-00 00:00:00'),
(119, 5, '', 'ray fluhr', '654 G TAYLOR RD', '', 'COLUMBIA', 'KY', '42728-94', 'US', '', '2708051426', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788309695205', 2, '', '2019-07-05 19:17:13', '0000-00-00 00:00:00'),
(120, 6, '', 'Sylvia Jeongmin Kim', '760 Lake Dornoch, ', '', 'Pinehurs', 'NC', '28374', 'United States', 'Kartonrepublic@gmail.com', '(404) 713-8959', 0, '', '', '', '', '', '', '', '', '', '', '25.00', '19.00', '10.00', '35.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788350300638', 1, '', '2019-07-08 14:24:41', '0000-00-00 00:00:00'),
(121, 6, '', 'Claire McConnell', '3308 West Crockett Street', '', 'Seattle', 'WA', '98199', 'United States', 'Kartonrepublic@gmail.com', '(206) 419-9198', 0, '', '', '', '', '', '', '', '', '', '', '25.00', '19.00', '10.00', '35.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788350312517', 1, '', '2019-07-08 14:26:54', '0000-00-00 00:00:00'),
(122, 6, '', 'Lazer Katz', '75 North Main St Store #10', '', 'Spring Valley', 'New York', '10977', 'US', '', '6263332688', 0, '', '', '', '', '', '', '', '', '', '', '16.00', '16.00', '4.00', '10.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788352691015', 1, '', '2019-07-08 15:54:30', '0000-00-00 00:00:00'),
(123, 6, '', 'Nick J Interiors ', '461 Country Club Dr Unit 106', '', 'Simi Valley', 'CA', '93062', 'US', '', '6263332688', 0, '', '', '', '', '', '', '', '', '', '', '12.00', '8.00', '1.00', '2.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788352861522', 1, '', '2019-07-08 16:01:00', '0000-00-00 00:00:00'),
(124, 6, '', 'Emily Ritter', '3105 Brentwood Rd', '', 'Raleigh', 'NC', '27604', 'US', '', '6263332688', 0, '', '', '', '', '', '', '', '', '', '', '12.00', '8.00', '2.00', '2.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788352855300', 1, '', '2019-07-08 16:03:04', '0000-00-00 00:00:00'),
(125, 5, '', 'Mario Reyes', '6070 BUFORD HWY', '', 'NORCROSS', 'GA', '30071-24', 'US', '', '4044334879', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788369890443', 2, '', '2019-07-08 18:58:04', '0000-00-00 00:00:00'),
(126, 5, '', 'Mario Reyes', '6070 BUFORD HWY', '', 'NORCROSS', 'GA', '30071-24', 'US', '', '4044334879', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788369902885', 2, '', '2019-07-08 18:59:20', '0000-00-00 00:00:00'),
(127, 5, '', 'Natalia Jauregui', '304 Davis Street', '', 'Bagdad', 'AZ', '86321 ', 'US', '', '9286334228', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788369908405', 2, '', '2019-07-08 19:02:58', '0000-00-00 00:00:00'),
(128, 5, '', 'Natalia Jauregui', '304 Davis Street', '', 'Bagdad', 'AZ', '86321 ', 'US', '', '9286334228', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788369880980', 2, '', '2019-07-08 19:03:44', '0000-00-00 00:00:00'),
(129, 5, '', 'Scott Yount', '1208 W MARKET ST', '', 'SAVANNAH', 'MO', '64485-15', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788408256729', 2, '', '2019-07-10 05:42:45', '2019-07-10 18:46:16'),
(130, 5, '', 'Scott Yount', '1208 W MARKET ST', '', 'SAVANNAH', 'MO', '64485-15', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788408259420', 2, '', '2019-07-10 05:43:51', '2019-07-10 18:46:36'),
(131, 5, '', 'kent barrus', '1451 N SHUTT HILL RD', '', 'HUNTINGTON', 'IN', '46750-81', 'US', '', '2603586336', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788408263890', 2, '', '2019-07-10 05:45:03', '0000-00-00 00:00:00'),
(132, 5, '', 'kent barrus', '1451 N SHUTT HILL RD', '', 'HUNTINGTON', 'IN', '46750-81', 'US', '', '2603586336', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788408265907', 2, '', '2019-07-10 05:45:52', '0000-00-00 00:00:00'),
(133, 5, '', 'kent barrus', '1451 N SHUTT HILL RD', '', 'HUNTINGTON', 'IN', '46750-81', 'US', '', '2603586336', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788408266903', 2, '', '2019-07-10 05:46:33', '0000-00-00 00:00:00'),
(134, 5, '', 'Sagi zukerman', '376 OWEN AVE', '', 'FAIR LAWN', 'NJ', '07410-36', 'US', '', '2016744772', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432786259', 2, '', '2019-07-11 18:28:56', '0000-00-00 00:00:00'),
(135, 5, '', 'Sagi zukerman', '376 OWEN AVE', '', 'FAIR LAWN', 'NJ', '07410-36', 'US', '', '2016744772', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432786671', 2, '', '2019-07-11 18:29:56', '0000-00-00 00:00:00'),
(136, 5, '', 'Sagi zukerman', '376 OWEN AVE', '', 'FAIR LAWN', 'NJ', '07410-36', 'US', '', '2016744772', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432787336', 2, '', '2019-07-11 18:30:47', '0000-00-00 00:00:00'),
(137, 5, '', 'Jennie Timmons', '8574 HERITAGE RD', '', 'CLINTON', 'IL', '61727-28', 'US', '', '415-419-8616 ext. 62', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432788273', 2, '', '2019-07-11 18:31:45', '0000-00-00 00:00:00'),
(138, 5, '', 'Jennie Timmons', '8574 HERITAGE RD', '', 'CLINTON', 'IL', '61727-28', 'US', '', '415-419-8616 ext. 62', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432788218', 2, '', '2019-07-11 18:32:30', '0000-00-00 00:00:00'),
(139, 5, '', 'Jennie Timmons', '8574 HERITAGE RD', '', 'CLINTON', 'IL', '61727-28', 'US', '', '415-419-8616 ext. 62', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788432789236', 2, '', '2019-07-11 18:33:48', '0000-00-00 00:00:00'),
(140, 5, '', 'Paul Sorel', '45 RAYMOND AVE', '', 'PAWTUCKET', 'RI', '02860-62', 'US', '', '4013233814', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '775727648184', 2, '', '2019-07-12 17:57:10', '0000-00-00 00:00:00'),
(141, 5, '', 'Paul Sorel', '45 RAYMOND AVE', '', 'PAWTUCKET', 'RI', '02860-62', 'US', '', '4013233814', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '775735546154', 2, '', '2019-07-12 17:57:55', '0000-00-00 00:00:00'),
(142, 5, '', 'Brent Baron', '175 VIDERMAN DR PAN HANDLE HOMES', '', 'WELLSBURG', 'WV', '26070-28', 'US', '', '415-851-9136 ext. 92', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '775735547264', 2, '', '2019-07-12 17:58:43', '0000-00-00 00:00:00'),
(143, 5, '', 'Brent Baron', '175 VIDERMAN DR PAN HANDLE HOMES', '', 'WELLSBURG', 'WV', '26070-28', 'US', '', '415-851-9136 ext. 92', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '775735547790', 2, '', '2019-07-12 18:00:00', '0000-00-00 00:00:00'),
(144, 5, '', 'Alex Pimentel', '615 LINDEN MANOR CT', '', 'SPRING', 'TX', '77373-85', 'US', '', '415-419-8616 ext. 72', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439171265', 2, '', '2019-07-14 18:36:20', '0000-00-00 00:00:00'),
(145, 5, '', 'Jason Williamson', '7190 UPHILL DR', '', 'PINSON', 'AL', '35126-24', 'US', '', '415-851-9136 ext. 58', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439172386', 2, '', '2019-07-14 18:37:15', '0000-00-00 00:00:00'),
(146, 5, '', 'Jason Williamson', '7190 UPHILL DR', '', 'PINSON', 'AL', '35126-24', 'US', '', '415-851-9136 ext. 58', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439172640', 2, '', '2019-07-14 18:37:55', '0000-00-00 00:00:00'),
(147, 5, '', 'Rebecca J. Keith', '2149 E BOBO NEWSOM HWY', '', 'HARTSVILLE', 'SC', '29550-72', 'US', '', '415-851-9136 ext. 44', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439173717', 2, '', '2019-07-14 18:38:45', '0000-00-00 00:00:00'),
(148, 5, '', 'Rebecca J. Keith', '2149 E BOBO NEWSOM HWY', '', 'HARTSVILLE', 'SC', '29550-72', 'US', '', '415-851-9136 ext. 44', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439177388', 2, '', '2019-07-14 18:41:49', '0000-00-00 00:00:00'),
(149, 5, '', 'jason blue', '610 SWENSON AVE', '', 'SPRINGVILLE', 'UT', '84663-25', 'US', '', '8018858318', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439178454', 2, '', '2019-07-14 18:43:35', '0000-00-00 00:00:00'),
(150, 5, '', 'jason blue', '610 SWENSON AVE', '', 'SPRINGVILLE', 'UT', ' 84663-2', 'US', '', '8018858318', 0, '', '', '', '', '', '', '', '', '', '', '65.00', '13.00', '13.00', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788439199636', 2, '', '2019-07-14 18:44:52', '2019-07-14 19:24:46'),
(151, 5, '', 'Stacy ray blankenship', '902 E 3RD ST', '', 'METROPOLIS', 'IL', '62960-23', 'US', '', '415-419-8616 ext. 94', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477479118', 2, '', '2019-07-15 19:07:40', '0000-00-00 00:00:00'),
(152, 5, '', 'Stacy ray blankenship', '902 E 3RD ST', '', 'METROPOLIS', 'IL', '62960-23', 'US', '', '415-419-8616 ext. 94', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477482239', 2, '', '2019-07-15 19:08:21', '0000-00-00 00:00:00'),
(153, 5, '', 'Joey Smith', '3360 HIGHWAY 82 E', '', 'GREENVILLE', 'MS', '38703-82', 'US', '', '6628208831', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477484356', 2, '', '2019-07-15 19:10:49', '0000-00-00 00:00:00'),
(154, 5, '', 'Joey Smith', '3360 HIGHWAY 82 E', '', 'GREENVILLE', 'MS', '38703-82', 'US', '', '6628208831', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477485960', 2, '', '2019-07-15 19:16:50', '0000-00-00 00:00:00'),
(155, 5, '', 'peter jipson', '686 N BEND RD', '', 'SURRY', 'ME', '04684-33', 'US', '', '2072172232', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477487918', 2, '', '2019-07-15 19:23:24', '0000-00-00 00:00:00'),
(156, 5, '', 'peter jipson', '686 N BEND RD', '', 'SURRY', 'ME', '04684-33', 'US', '', '2072172232', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477490855', 2, '', '2019-07-15 19:26:28', '0000-00-00 00:00:00'),
(157, 5, '', 'peter jipson', '686 N BEND RD', '', 'SURRY', 'ME', '04684-33', '美国', '', '2072172232', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788477492869', 2, '', '2019-07-15 19:28:26', '0000-00-00 00:00:00'),
(158, 5, '', 'jason fuller', '3700 OSUNA RD NE STE 506', '', 'ALBUQUERQUE', 'NM', '87109-44', 'US', '', '5056972757', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788502915192', 1, '', '2019-07-16 18:30:38', '0000-00-00 00:00:00'),
(159, 5, '', 'jason fuller', '3700 OSUNA RD NE STE 506', '', 'ALBUQUERQUE', 'NM', '87109-44', '美国', '', '5056972757', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788502915950', 1, '', '2019-07-16 18:31:02', '0000-00-00 00:00:00'),
(160, 5, '', 'Sean Turner', '139 LONG BRANCH LN', '', 'CASEYVILLE', 'IL', '62232-28', 'US', '', '6187813132', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788529853495', 1, '', '2019-07-17 18:49:14', '0000-00-00 00:00:00'),
(161, 5, '', 'Sean Turner', '139 LONG BRANCH LN', '', 'CASEYVILLE', 'IL', '62232-28', '美国', '', '6187813132', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788529851882', 1, '', '2019-07-17 18:49:44', '0000-00-00 00:00:00'),
(162, 5, '', 'José Torres', '405 W PARK AVE', '', 'VINELAND', 'NJ', '08360-35', 'US', '', '8564629745', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554773602', 1, '', '2019-07-18 19:11:32', '0000-00-00 00:00:00'),
(163, 5, '', 'José Torres', '405 W PARK AVE', '', 'VINELAND', 'NJ', '08360-35', '美国', '', '8564629745', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554773543', 1, '', '2019-07-18 19:11:51', '0000-00-00 00:00:00'),
(164, 5, '', 'Darryl Goins', '2920 LAKELAND DR', '', 'NASHVILLE', 'TN', '37214-35', 'US', '', '6155737424', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554775156', 1, '', '2019-07-18 19:12:41', '0000-00-00 00:00:00'),
(165, 5, '', 'Darryl Goins', '2920 LAKELAND DR', '', 'NASHVILLE', 'TN', '37214-35', 'US', '', '6155737424', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554776119', 1, '', '2019-07-18 19:13:31', '0000-00-00 00:00:00'),
(166, 5, '', 'Mark Theriault', '176 HILTON RD', '', 'WHITEFIELD', 'ME', '04353-36', 'US', '', '2075575618', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554776347', 1, '', '2019-07-18 19:14:29', '0000-00-00 00:00:00'),
(167, 5, '', 'Mark Theriault', '176 HILTON RD', '', 'WHITEFIELD', 'ME', '04353-36', 'US', '', '2075575618', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788554777674', 1, '', '2019-07-18 19:16:28', '0000-00-00 00:00:00'),
(168, 5, '', 'Luke Miller', '8440 HELENS WAY', '', 'FALLON', 'NV', '89406-52', 'US', '', '415-419-8616 ext. 19', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788584815042', 1, '', '2019-07-19 18:20:01', '0000-00-00 00:00:00'),
(169, 5, '', 'Luke Miller', '8440 HELENS WAY', '', 'FALLON', 'NV', '89406-52', 'US', '', '415-419-8616 ext. 19', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788584815800', 1, '', '2019-07-19 18:20:45', '0000-00-00 00:00:00'),
(170, 5, '', 'Luke Miller', '8440 HELENS WAY', '', 'FALLON', 'NV', '89406-52', 'US', '', '415-419-8616 ext. 19', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788584815855', 1, '', '2019-07-19 18:22:47', '0000-00-00 00:00:00'),
(171, 5, '', 'Alan neal', '9614 ROAD 5 1/2', '', 'FIREBAUGH', 'CA', '93622-96', 'US', '', '5593174251', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591963016', 1, '', '2019-07-19 18:25:56', '0000-00-00 00:00:00'),
(172, 5, '', 'Alan neal', '9614 ROAD 5 1/2', '', 'FIREBAUGH', 'CA', '93622-96', '美国', '', '5593174251', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591964825', 1, '', '2019-07-19 18:26:16', '0000-00-00 00:00:00'),
(173, 5, '', 'Alan neal', '9614 ROAD 5 1/2', '', 'FIREBAUGH', 'CA', '93622-96', '美国', '', '5593174251', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591965979', 1, '', '2019-07-19 18:26:32', '0000-00-00 00:00:00'),
(174, 5, '', 'cheri longan', '18303 W CYPRESS HILL CIR', '', 'CYPRESS', 'TX', '77433-43', 'US', '', '415-851-9136 ext. 60', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591966817', 1, '', '2019-07-19 22:59:23', '0000-00-00 00:00:00'),
(175, 5, '', 'cheri longan', '18303 W CYPRESS HILL CIR', '', 'CYPRESS', 'TX', '77433-43', 'US', '', '415-851-9136 ext. 60', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591968393', 1, '', '2019-07-19 23:00:18', '0000-00-00 00:00:00'),
(176, 5, '', 'Susana Avalos', '8041 UVA DR', '', 'REDWOOD VALLEY', 'CA', '95470-62', 'US', '', '415-419-8616 ext. 50', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591972926', 1, '', '2019-07-21 19:05:40', '0000-00-00 00:00:00'),
(177, 5, '', 'Susana Avalos', '8041 UVA DR', '', 'REDWOOD VALLEY', 'CA', '95470-62', '美国', '', '415419861650927', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591974686', 1, '', '2019-07-21 19:06:11', '0000-00-00 00:00:00'),
(178, 5, '', 'brian rehburg', '615 GARLAND DR', '', 'NILES', 'OH', '44446-11', 'US', '', '3307197942', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591976623', 1, '', '2019-07-21 19:07:10', '0000-00-00 00:00:00'),
(179, 5, '', 'brian rehburg', '615 GARLAND DR', '', 'NILES', 'OH', '44446-11', '美国', '', '3307197942', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591981482', 1, '', '2019-07-21 19:07:32', '0000-00-00 00:00:00'),
(180, 5, '', 'Coleton j perine', '8585 MUSKINGUM RIVER RD', '', 'LOWELL', 'OH', '45744-70', 'US', '', '415-419-8616 ext. 46', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591984518', 1, '', '2019-07-21 19:08:52', '0000-00-00 00:00:00'),
(181, 5, '', 'Coleton j perine', '8585 MUSKINGUM RIVER RD', '', 'LOWELL', 'OH', '45744-70', '美国', '', '415419861646118', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591986017', 1, '', '2019-07-21 19:09:14', '0000-00-00 00:00:00');
INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `alter_shipper`, `shipper_name`, `shipper_company`, `shipper_street`, `shipper_street2`, `shipper_city`, `shipper_state`, `shipper_zipcode`, `shipper_country`, `shipper_email`, `shipper_phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`) VALUES
(182, 5, '', 'John Grilli', '17970 VIERRA CANYON RD', '', 'SALINAS', 'CA', '93907-13', 'US', '', '415-851-9136 ext. 00', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2019-07-21 19:11:08', '0000-00-00 00:00:00'),
(183, 5, '', 'John Grilli', '17970 VIERRA CANYON RD', '', 'SALINAS', 'CA', '93907-13', '美国', '', '415851913600674', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591989152', 1, '', '2019-07-21 19:11:28', '0000-00-00 00:00:00'),
(184, 5, '', 'David Joziak', '1611 CHOTA RD', '', 'MARYVILLE', 'TN', '37803-94', 'US', '', '8657407970', 0, '', '', '', '', '', '', '', '', '', '', '56.70', '15.75', '10.60', '50.90', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2019-07-21 19:14:58', '0000-00-00 00:00:00'),
(185, 5, '', 'David Joziak', '1611 CHOTA RD', '', 'MARYVILLE', 'TN', '37803-94', '美国', '', '8657407970', 0, '', '', '', '', '', '', '', '', '', '', '62.20', '13.00', '10.60', '67.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788591991141', 1, '', '2019-07-21 19:16:44', '0000-00-00 00:00:00'),
(186, 5, '', 'HYUNHO CHOO', '432 E. Ayre St.', '#its7882', 'Wilmington ', 'DE', '19804', 'US', '', '646-206-8728', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788652758532', 1, '', '2019-07-23 18:38:14', '0000-00-00 00:00:00'),
(187, 5, '', 'HYUNHO CHOO', '432 E. Ayre St.', '#its7882', 'Wilmington ', 'DE', '19804', 'US', '', '646-206-8728', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788652759610', 1, '', '2019-07-23 18:38:58', '0000-00-00 00:00:00'),
(188, 5, '', 'Angela M. Nelson', '950 W LINN RD', '', 'EAGLE POINT', 'OR', '97524-65', 'US', '', '415-419-8616 ext. 48', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '788963997736', 1, '', '2019-08-05 18:16:07', '0000-00-00 00:00:00'),
(189, 5, '', 'Angela M. Nelson', '950 W LINN RD', '', 'EAGLE POINT', 'OR', '97524-65', 'US', '', '415-419-8616 ext. 48', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788963998088', 1, '', '2019-08-05 18:17:40', '0000-00-00 00:00:00'),
(190, 6, '', 'Kristina Chang', '81 Beacon st', '', 'Haworth', 'NJ', '07641', 'US', '', '2012134115 ', 0, '', '', '', '', '', '', '', '', '', '', '48.00', '19.00', '10.00', '25.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '788963983280', 1, '', '2019-08-06 17:02:43', '0000-00-00 00:00:00'),
(191, 5, '', 'nicholas neidenbach', '1711 W SLEEPY RANCH RD', '', 'PHOENIX', 'AZ', '85085-80', 'US', '', '6023505882', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '788967917712', 1, '', '2019-08-06 18:44:08', '0000-00-00 00:00:00'),
(192, 5, '', 'Noah Thomas', '3515 GENEVA DR', '', 'MURFREESBORO', 'TN', '37128-50', 'US', '', '6155423445', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '788968096244', 1, '', '2019-08-06 18:45:31', '0000-00-00 00:00:00'),
(193, 5, '', 'Randy', '404 SW BAY BLVD', '', 'NEWPORT', 'OR', '97365-45', 'US', '', '415-419-8616 ext. 11', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789011498468', 1, '', '2019-08-07 19:11:27', '0000-00-00 00:00:00'),
(194, 5, '', 'Randy', '404 SW BAY BLVD', '', 'NEWPORT', 'OR', '97365-45', 'US', '', '415-419-8616 ext. 11', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789011504802', 1, '', '2019-08-07 19:12:12', '0000-00-00 00:00:00'),
(195, 5, '', 'Steve e Fulton', '510 N ELIZABETH ST', '', 'PUEBLO', 'CO', '81003-23', 'US', '', '7195422268', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789040792692', 1, '', '2019-08-08 18:34:33', '0000-00-00 00:00:00'),
(196, 5, '', 'charles gentry', '23640 CONSER RD', '', 'HEAVENER', 'OK ', '74937-90', 'US', '', '9186532297', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789104406814', 1, '', '2019-08-12 18:07:45', '0000-00-00 00:00:00'),
(197, 5, '', 'charles gentry', '23640 CONSER RD', '', 'HEAVENER', 'OK', '74937-90', 'US', '', '9186532297', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789104416193', 1, '', '2019-08-12 18:09:13', '0000-00-00 00:00:00'),
(198, 5, '', 'Jon Rautio', '15245 WALSTROM RD', '', 'ATLANTIC MINE', 'MI', '49905-92', 'US', '', '9063709206', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789104423920', 1, '', '2019-08-12 18:09:52', '0000-00-00 00:00:00'),
(199, 5, '', 'Jon Rautio', '15245 WALSTROM RD', '', 'Atlantic Mine', 'Michigan', '49905', 'US', '', '9063709206', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789104430430', 1, '', '2019-08-12 18:10:58', '2019-08-12 23:11:01'),
(200, 5, '', ' Edith Biro', '487 DAWNVIEW SQ', '', 'PORT ORANGE', ' FL', '32127-67', 'US', '', '3863836695', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789190637763', 1, '', '2019-08-15 18:21:44', '0000-00-00 00:00:00'),
(201, 5, '', ' Edith Biro', '487 DAWNVIEW SQ', '', 'PORT ORANGE', 'FL', '32127-67', 'US', '', '3863836695', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789190639994', 1, '', '2019-08-15 18:22:55', '0000-00-00 00:00:00'),
(202, 5, '', ' JIM KAHN', '8979 SEEGERT RD', '', 'RIGA', 'MI ', '49276-96', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789207934132', 1, '', '2019-08-18 18:26:07', '0000-00-00 00:00:00'),
(203, 5, '', ' JIM KAHN', '8979 SEEGERT RD', '', 'RIGA', 'MI', '49276-96', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789207942998', 1, '', '2019-08-18 18:27:57', '0000-00-00 00:00:00'),
(204, 5, '', ' Clint LeCroy', '736 PLEASANT VIEW DR', '', 'COLUMBIA', 'TN', '38401-66', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789240661685', 1, '', '2019-08-19 18:27:13', '0000-00-00 00:00:00'),
(205, 5, '', ' Clint LeCroy', '736 PLEASANT VIEW DR', '', 'COLUMBIA', 'TN', '38401-66', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789240661413', 1, '', '2019-08-19 18:28:16', '0000-00-00 00:00:00'),
(206, 5, '', ' Kelly S, Kinoff', '609 HARVEST MOON RD', '', 'FOUNTAIN', 'CO', '80817-31', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789267998941', 1, '', '2019-08-20 18:55:16', '0000-00-00 00:00:00'),
(207, 5, '', ' Kelly S, Kinoff', '609 HARVEST MOON RD', '', 'FOUNTAIN', 'CO', '80817-31', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789268000131', 1, '', '2019-08-20 18:56:43', '0000-00-00 00:00:00'),
(208, 5, '', 'Herbert Dickey', '3758 GASSAWAY RD', '', 'NORMANTOWN', 'WV', '25267-67', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789268001116', 1, '', '2019-08-20 18:59:24', '0000-00-00 00:00:00'),
(209, 5, '', 'Herbert Dickey', '3758 GASSAWAY RD', '', 'NORMANTOWN', 'WV', '25267-6', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789268008728', 1, '', '2019-08-20 19:00:50', '2019-08-20 19:14:39'),
(210, 5, '', 'Ronie Murillo', '315 WASHINGTON AVE', '', 'ELIZABETH', 'NJ', '07202-33', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789315061419', 1, '', '2019-08-21 01:11:13', '2019-08-22 13:01:20'),
(211, 5, '', 'Ronie Murillo', '315 WASHINGTON AVE', '', 'ELIZABETH', 'NJ', '07202-33', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789315079307', 1, '', '2019-08-21 01:12:27', '2019-08-22 13:01:52'),
(212, 5, '', ' mark strasser', '273 W STATE ST', '', 'BURLINGTON', 'WI', '53105-18', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789315089308', 1, '', '2019-08-21 23:23:23', '0000-00-00 00:00:00'),
(213, 5, '', ' mark strasser', '273 W STATE ST', '', 'BURLINGTON', 'WI', '53105-18', 'US', '', '1 415-419-8616 ext. ', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789315097214', 1, '', '2019-08-21 23:24:32', '0000-00-00 00:00:00'),
(214, 5, '', 'Cindy James', '2653 COUNTY STREET 2960', '', 'ALEX', 'OK', '73002-22', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362697904', 1, '', '2019-08-22 19:40:50', '0000-00-00 00:00:00'),
(215, 5, '', 'Cindy James', '2653 COUNTY STREET 2960', '', 'ALEX', 'OK', '73002-22', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362697878', 1, '', '2019-08-22 19:42:33', '0000-00-00 00:00:00'),
(216, 5, '', 'Vanessa Vargas', '1114 8TH ST', '', 'SAN FERNANDO', 'CA', '91340-12', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362706887', 1, '', '2019-08-25 20:12:17', '0000-00-00 00:00:00'),
(217, 5, '', 'Vanessa Vargas', '1114 8TH ST', '', 'SAN FERNANDO', 'CA', '91340-12', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362707482', 1, '', '2019-08-25 20:13:20', '0000-00-00 00:00:00'),
(218, 5, '', 'Jessie Clements', '394 UNION CHAPEL RD E', '', 'NORTHPORT', 'AL', '35473-76', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362708283', 1, '', '2019-08-25 20:33:39', '0000-00-00 00:00:00'),
(219, 5, '', 'Jessie Clements', '394 UNION CHAPEL RD E', '', 'NORTHPORT', ' AL', '35473-76', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362708537', 1, '', '2019-08-25 20:34:47', '0000-00-00 00:00:00'),
(220, 5, '', 'JR HICKS', '3790 TROPHY CT', '', 'LENOIR', 'NC', '28645-69', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362709831', 1, '', '2019-08-25 20:37:29', '0000-00-00 00:00:00'),
(221, 5, '', 'JR HICKS', '3790 TROPHY CT', '', 'LENOIR', 'NC', '28645-69', 'US', '', '+1 415-419-8616 ext.', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789362710033', 1, '', '2019-08-25 20:38:39', '0000-00-00 00:00:00'),
(222, 5, '', 'Kirby Benton', '2219 KITTRELL RD', '', 'GREENVILLE', 'NC ', '27858-82', 'US', '', '415-419-8616 ext. 33', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789454564775', 1, '', '2019-08-28 03:19:00', '0000-00-00 00:00:00'),
(223, 5, '', 'Kirby Benton', '2219 KITTRELL RD', '', 'GREENVILLE', 'NC', '27858-82', 'US', '', '415-419-8616', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789454565922', 1, '', '2019-08-28 03:19:42', '0000-00-00 00:00:00'),
(224, 5, '', 'Michael JonesPOMJ', '896 FORK BIXBY RD', '', 'ADVANCE', 'NC', '27006-72', 'US', '', '415-419-8616 ext. 70', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789512988471', 1, '', '2019-08-29 23:47:44', '0000-00-00 00:00:00'),
(225, 5, '', 'Michael JonesPOMJ', '896 FORK BIXBY RD', '', 'ADVANCE', 'NC', '27006-72', 'US', '', '415-419-8616 ext. 70', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789512989310', 1, '', '2019-08-29 23:48:30', '0000-00-00 00:00:00'),
(226, 5, '', 'Duke Dunham', '1184 T RD', '', 'EUREKA', 'KS ', '67045-45', 'us', '', '3162073006', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '789512995554', 1, '', '2019-08-29 23:58:15', '0000-00-00 00:00:00'),
(227, 5, '', 'Lea Marburger', '148 6TH ST SE', '', 'BREWSTER', 'OH', '44613-14', 'US', '', '415-419-8616 ext. 48', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789512996697', 1, '', '2019-08-30 18:05:48', '0000-00-00 00:00:00'),
(228, 5, '', 'Lea Marburger', '148 6TH ST SE', '', 'BREWSTER', 'OH', '44613-14', 'US', '', '415-419-8616 ext. 48', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789513000751', 1, '', '2019-08-30 18:06:33', '0000-00-00 00:00:00'),
(229, 5, '', 'Corey L. Smith', '166 HUNTERS BRANCH DR', '', 'ALLENHURST', 'GA', '31301-26', 'US', '', '9123216224', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528567508', 1, '', '2019-09-02 02:47:29', '0000-00-00 00:00:00'),
(230, 5, '', 'Corey L. Smith', '166 HUNTERS BRANCH DR', '', 'ALLENHURST', 'GA ', '31301-26', 'US', '', '9123216224', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528567942', 1, '', '2019-09-02 02:48:04', '0000-00-00 00:00:00'),
(231, 5, '', 'Oscar galvis', '24 PEMBROKE DR', '', 'EAST HAMPTON', 'NY', '11937-14', 'US', '', '415-419-8616 ext. 97', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528568570', 1, '', '2019-09-02 18:09:52', '0000-00-00 00:00:00'),
(232, 5, '', 'Oscar galvis', '24 PEMBROKE DR', '', 'EAST HAMPTON', 'NY', '11937-14', 'US', '', '415-419-8616 ext. 97', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528569810', 1, '', '2019-09-02 18:10:40', '0000-00-00 00:00:00'),
(233, 5, '', 'Eddie', '3190 E ANIMAS VILLAGE DR APT 208', '', 'DURANGO', 'CO', '81301-74', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528573319', 1, '', '2019-09-02 18:11:24', '2019-09-02 19:30:34'),
(234, 5, '', 'Eddie', '3190 E ANIMAS VILLAGE DR APT 208', '', 'DURANGO', 'CO', '81301-74', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528577071', 1, '', '2019-09-02 18:11:57', '2019-09-02 19:31:22'),
(235, 5, '', 'Richard Ridgill', '2600 HIGHWAY 11', '', 'TRAVELERS REST', 'SC', '29690-86', 'US', '', '9412648292', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528582942', 1, '', '2019-09-02 18:13:02', '0000-00-00 00:00:00'),
(236, 5, '', 'Richard Ridgill', '2600 HIGHWAY 11', '', 'TRAVELERS REST', 'SC', '29690-86', 'US', '', '9412648292', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '78.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528584316', 1, '', '2019-09-02 18:13:46', '0000-00-00 00:00:00'),
(237, 5, '', 'David j franchuk', 'HOUSE 271 VICTOR RD', '', 'FAIRPORT', 'NY', '14450-95', 'US', '', '5857942899', 0, '', '', '', '', '', '', '', '', '', '', '42.00', '26.00', '9.80', '36.60', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528584625', 1, '', '2019-09-02 18:14:44', '0000-00-00 00:00:00'),
(238, 5, '', 'David j franchuk', 'HOUSE 271 VICTOR RD', '', 'FAIRPORT', 'NY', '14450-95', 'US', '', '5857942899', 0, '', '', '', '', '', '', '', '', '', '', '62.50', '12.50', '10.50', '39.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '789528585850', 1, '', '2019-09-02 18:16:03', '0000-00-00 00:00:00'),
(240, 5, '', 'Joshua miller', '490 JIM GRIZZLE RD', '', 'ROYSTON', 'GA', '30662-53', 'US', '', '7065344170', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '789755529609', 1, '', '2019-09-11 18:06:56', '2019-09-15 18:30:15'),
(243, 5, '', 'Peter Graham', '11700 Fuqua St', '', 'Houston ', 'TX', '77034-44', 'US', '', '336-414-0838', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '780091526439', 1, '', '2019-09-24 23:06:59', '0000-00-00 00:00:00'),
(244, 5, '', 'CHRIS WHEAT', '109 DANIEL PAUL DR', '', 'ARCHDALE ', 'NC', '27263-38', 'US', '', '(336) 707-2758', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '776433598260', 1, '', '2019-10-01 01:24:36', '0000-00-00 00:00:00'),
(245, 5, '', 'Anthony Capasso', '30033 ROBERT ST', '', 'WICKLIFFE', 'OH', '44092-17', 'US', '', '4402314631', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '776506065600', 1, '', '2019-10-02 18:07:17', '0000-00-00 00:00:00'),
(246, 5, '', 'Rick JennigesPOJEEP', '1230 OAK ST', '', 'WABASSO', 'MN', '56293-14', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '780471321051', 1, '', '2019-10-10 18:15:47', '2019-10-23 17:06:46'),
(247, 5, '', 'DWIGHT FINNESTAD', '15406 N FERRALL ST', '', 'MEAD', 'WA', '99021-93', 'US', '', '5094673703', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '780339319652', 1, '', '2019-10-16 18:36:54', '2019-10-19 03:05:20'),
(252, 5, '', 'Jodi Militzer', '3 MALLARD CT', '', 'EXPORT', 'PA', '15632-89', 'US', '', '763-225-9463 ext. 74', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '778520523739', 1, '', '2019-12-02 16:47:26', '0000-00-00 00:00:00'),
(253, 5, '', 'Danny Hefner', '25306 FARMDALE LN', '', 'RICHMOND', 'TX', '77406-78', 'US', '', '763-225-9463 ext. 45', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '778563625244', 1, '', '2019-12-03 01:22:21', '0000-00-00 00:00:00'),
(254, 5, '', 'Ashley Sliger', '1060 CUMBERLAND VALLEY RD', '', 'GAINESVILLE', 'GA', '30501-18', 'US', '', '+1 412-532-4665 ext.', 0, '', '', '', '', '', '', '', '', '', '', '66.50', '19.70', '11.80', '82.70', 1, 5, 'postpony', 'fedex_ground', '0.00', '779047933534', 1, '', '2019-12-16 17:01:47', '0000-00-00 00:00:00'),
(255, 5, '', 'Woody Stone', '217 E ELM ST', '', 'MARION', 'KY', '42064-16', 'US', '', '2709690009', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '779047952297', 1, '', '2019-12-16 19:01:50', '0000-00-00 00:00:00'),
(256, 5, '', ' Eric Allen Beer', '975 SE BLUEGRASS CIR', '', 'WAUKEE', 'IA', '50263-83', 'US', '', '+1 763-225-9463 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '779362717173', 1, '', '2019-12-29 23:51:20', '0000-00-00 00:00:00'),
(257, 5, '', 'Alwyn Stevens', '116 PINE ST', '', 'HERLONG', 'CA', '96113-74', 'US', '', '6265518446', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '390158756430', 1, '', '2020-01-30 23:09:08', '2020-02-04 21:23:07'),
(258, 5, '', 'Wendy Panks', '1513 FLUSHING RD', '', 'FLUSHING', 'MI', '48433-22', 'US', '', '6265518446', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '390158758320', 1, '', '2020-02-02 21:59:06', '2020-02-04 21:23:25'),
(259, 5, '', 'THOMAS SHOULDERS', '549 GRAY ST', '', 'BRIDGEPORT', 'IL', '62417-19', 'US', '', '347-448-3190 ext. 04', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '390886697573', 1, '', '2020-02-28 19:17:51', '0000-00-00 00:00:00'),
(260, 5, '', 'THOMAS SHOULDERS', '549 GRAY ST', '', 'BRIDGEPORT', 'IL', '62417-19', 'US', '', '347-448-3190 ext. 04', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-02-28 19:17:51', '0000-00-00 00:00:00'),
(261, 5, '', 'Nicolas faranda', '41 WOODMERE RD', '', 'FRAMINGHAM', 'MA', '01701-28', 'US', '', '6265518446', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '390968608553', 1, '', '2020-03-02 19:57:31', '2020-03-09 10:46:31'),
(262, 5, '', 'Dylan Case', '108 ROYAL CT', '', 'CLINTON', 'MS', '39056-58', 'US', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391144234730', 1, '', '2020-03-13 09:30:09', '0000-00-00 00:00:00'),
(263, 8, 'Ling#184750', 'Edgar Contreras', '307 river mountain ct', '', 'cedar hill', 'TX ', '75104-64', 'US', '', '214-236-1362', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391417762154', 1, '', '2020-03-25 22:12:07', '0000-00-00 00:00:00'),
(264, 8, 'YJ10000', 'kenny bellamy', '19295 Anna Rd', '', 'Anderson', 'CA', '96007', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-03-27 10:05:54', '0000-00-00 00:00:00'),
(265, 8, 'YJ10001', 'Raymond Germosen', '1719 Ardsley Ct', '', 'Teaneck', 'NJ', '7666', 'US', '', '', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-03-27 10:05:54', '0000-00-00 00:00:00'),
(266, 5, '', 'Randall Babcock', '19818 127TH STREET CT E', '', 'ONNEY LAKE', 'WA', '98391-54', 'US', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391472293771', 1, '', '2020-03-29 20:06:23', '2020-03-30 05:57:56'),
(267, 8, '', 'tracy richardson', '4030 County Road 200', '', 'Tiplersville', 'MS', '38674-94', 'United States', '', '6627500191', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391534556891', 1, '', '2020-04-01 01:28:55', '0000-00-00 00:00:00'),
(268, 8, '', 'Taha Qazi', '2139 Lake Hills Dr apt 701', '', 'Kingwood', 'TX', '77339-23', 'United States', '', '2817714715', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391564995951', 1, '', '2020-04-02 01:15:01', '2020-04-02 01:15:41'),
(269, 8, '', 'Dhanbahadur Chhetri ', '161 CHURCH ST 05401 , VT  ', '', 'BURLINGTON', 'VT', '05401-46', 'United States', '', '3142829402 ext. 4351', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391564995539', 1, '', '2020-04-02 01:18:02', '0000-00-00 00:00:00'),
(271, 8, '', 'Enrique Guzman ', '2406 Florence Ave    ', '', 'Pasadena', 'TX', '77502', 'United States', '', '8327314802', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391565304100', 1, '', '2020-04-02 01:23:56', '0000-00-00 00:00:00'),
(272, 8, '', 'antonino gargano ', '364 GETTYSBURG ', '', 'COATESVILLE', 'IN ', '46121-89', 'UNITED STATES', '', '3173839430', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391607191950', 1, '<p>antonino gargano</p><p>364 GETTYSBURG</p><p>COATESVILLE, IN 46121-8958</p>', '2020-04-02 19:50:30', '0000-00-00 00:00:00'),
(273, 8, '', 'David Smith ', '503 N Orange St ', '', 'Perry ', 'FL ', '32347-27', 'United States', '', '8508433139', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391607186701', 1, '<p>David&nbsp;Smith<br>503&nbsp;N&nbsp;Orange&nbsp;St<br>Perry&nbsp;FL&nbsp;32347-2730<br>United&nbsp;States<br>+1&nbsp;850-843-3139<br></p>', '2020-04-02 19:51:31', '0000-00-00 00:00:00'),
(274, 8, '', 'travis peters', ' 810 E Main St ', '', 'marshalltown', ' IA  ', '50158-20', 'United States', '', '6417510911', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391607179927', 1, '<p>travis&nbsp;peters<br>810&nbsp;E&nbsp;Main&nbsp;St<br>marshalltown&nbsp;IA&nbsp;50158-2031<br>United&nbsp;States<br>+1&nbsp;641-751-0911<br></p>', '2020-04-02 19:57:42', '0000-00-00 00:00:00'),
(275, 8, '', 'Michael Mihara', ' 10905 se 219th pl ', '', 'Kent', 'WA   ', '98031', 'United States', '', '2069139023', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391607173528', 1, '<p>Michael Mihara</p><p>10905 se 219th pl</p><p>Kent WA 98031</p><p>United States</p><p>+1 206-913-9023</p>', '2020-04-02 22:59:16', '0000-00-00 00:00:00'),
(276, 8, '', 'gustavo soto ', '1565 cliff rd Sarpino’s Pizzeria/ Suite 17 ', '', 'eagan ', 'MN   ', '55122', 'United States', '', '6124069796', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391607165015', 1, '', '2020-04-03 01:14:41', '0000-00-00 00:00:00'),
(277, 8, '', 'honda2012 thomas ', '1181 n mason dr ', '', 'Chandler', 'AZ', '85225', 'United States', '', '4802084931', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391642990557', 1, '<p>honda2012 thomas</p><p>1181 n mason dr</p><p>Chandler AZ 85225</p><p>United States</p><p>+1 480-208-4931</p><p>SKU: TP111</p>', '2020-04-05 01:27:51', '0000-00-00 00:00:00'),
(278, 8, '', 'AUSTIN CURLESS', ' 8124 Limber Luke Dr ', '', 'Nampa ', 'ID  ', '83686-86', 'United States ', '', '2089953451 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391642989531', 1, '<p>AUSTIN CURLESS</p><p>8124 Limber Luke Dr</p><p>Nampa ID 83686-8614</p><p>United States</p><p>+1 208-995-3451</p><p>SKU: TP111</p>', '2020-04-05 01:31:04', '0000-00-00 00:00:00'),
(279, 8, '', 'Yanelys ', '13265 SW 72ND TER', '', 'MIAMI, ', 'FL ', '33183-32', 'UNITED STATES', '', '3474483190 ext. 0274', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391662738526', 1, '<p>Yanelys</p><p>13265 SW 72ND TER</p><p>MIAMI, FL 33183-3215</p><p>美国</p><p>+1 347-448-3190 ext. 02743</p>', '2020-04-05 23:33:22', '0000-00-00 00:00:00'),
(280, 8, '', 'Julio Calderon ', '338 Sunnyside Ct ', '', 'Lawrenceville ', 'GA ', '30044-34', 'United States', '', '6783437882  ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391662603253', 1, '', '2020-04-05 23:49:21', '0000-00-00 00:00:00'),
(281, 5, '', 'Brad Lamprey', '216 TANGELO AVE', '', 'FERN PARK', 'FL', '32730-28', 'US', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391716805049', 1, '', '2020-04-06 19:02:10', '0000-00-00 00:00:00'),
(282, 5, '', 'Carlos Giordano', '68550 RISUENO RD', '', 'CATHEDRAL CITY', 'CA', '92234-38', 'US', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391716808037', 1, '', '2020-04-06 19:03:32', '0000-00-00 00:00:00'),
(283, 8, '', 'Mark Deboer ', ' 2240 HILLVIEW DR  ', '', 'LAGUNA BEACH', 'CA ', '92651-22', 'UNITED STATES', '', ' 926512259 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391683809623', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Mark Deboer</span><br></p><p><span style=\"font-size: 13px;\">2240 HILLVIEW DR</span></p><p><span style=\"font-size: 13px;\">LAGUNA BEACH, CA 92651-2259 </span></p><div><br></div>', '2020-04-06 19:22:43', '2020-04-06 23:03:01'),
(284, 8, '', 'Kyle Brown ', '26 Meadow Dr ', '', 'Newmanstown ', 'PA   ', '17073-90', 'United States', '', '6105079099', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391714160420', 1, '', '2020-04-07 19:32:36', '0000-00-00 00:00:00'),
(285, 8, '', 'william kline', '840 felspar st ', '', 'san diego ', 'CA   ', '92109-27', 'United States', '', '5413990928', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391714160154', 1, '', '2020-04-07 19:33:39', '0000-00-00 00:00:00'),
(286, 8, '', 'Pukhraj Gill ', '3941 PODOCARPUS DR ', '', 'CERES', 'CA ', '95307-71', 'UNITED STATES', '', '95307-7191 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391716002840', 1, '', '2020-04-07 23:28:08', '0000-00-00 00:00:00'),
(287, 8, '', 'Damian Lopez ', '518 CORK ST ', '', 'WINDSOR', 'CA', '95492-66', 'UNITED STATES', '', '347-448-3190 ext. 08', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391716002416', 1, '', '2020-04-07 23:29:35', '0000-00-00 00:00:00'),
(288, 5, '', 'Todd Zhou', '1135 Center Dr. Unit I', '', 'City of Industry', 'CA', '91789', 'United States', '', '6265508970', 1, 'Kelly Wright', 'TTX Lighting', '3705 HUNTERS CREEK RD', '', 'EDMOND', 'OK', '73003', 'United States', '1131748860@qq.com', '6265508970', '30.00', '24.00', '6.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391744641019', 1, '', '2020-04-08 16:46:13', '2020-04-08 17:13:47'),
(289, 8, '', 'Yuniel Casanova ', '10790 SW 7TH ST APT 206 ', '', 'MIAMI', 'FL   ', '33174-15', 'UNITED STATES', '', '3474483190 ext. 8595', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776351462', 1, '', '2020-04-09 00:29:10', '0000-00-00 00:00:00'),
(290, 8, '', 'John Walters ', '1043 27TH AVE N SAINT', '', ' CLOUD', 'MN ', '56303-24', 'UNITED STATES', '', '563032442', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776428412', 1, '', '2020-04-09 19:07:19', '0000-00-00 00:00:00'),
(291, 8, '', 'Debra M ', 'Lopez 435 LANIER BLVD ', '', 'SAN ANTONIO', 'TX ', '78221-41', 'UNITED STATES', '', '782214116', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776355641', 1, '', '2020-04-09 19:08:33', '0000-00-00 00:00:00'),
(292, 8, '', 'Tony Lowenberg ', '18725 Farson Rd', '', 'Hedrick ', 'IA ', '52563-81', 'United States ', '', '6417778528', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776355251', 1, '', '2020-04-09 19:10:22', '0000-00-00 00:00:00'),
(293, 8, '', 'ROBERT RICCIARDELLI ', '264 Burning Tree Dr ', '', 'Naples ', 'FL ', '34105-63', 'United States ', '', '2397771445', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776416614', 1, '<p><span style=\"font-size: 13px;\">ROBERT RICCIARDELLI</span></p><p><span style=\"font-size: 13px;\">264 Burning Tree Dr</span></p><p><span style=\"font-size: 13px;\">Naples FL 34105-6306</span></p><p><span style=\"font-size: 13px;\">United States</span></p><p><span style=\"font-size: 13px;\">+1 239-777-1445</span></p>', '2020-04-09 19:13:03', '0000-00-00 00:00:00'),
(294, 8, '', 'Dixon Vallejo Rodriguez ', '1429 Gill St Apt 429A ', '', 'Watertown ', 'NY ', '13601-29', 'United States ', '', '7875383241', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776324951', 1, '', '2020-04-09 19:13:56', '0000-00-00 00:00:00'),
(295, 8, '', 'Jeffrey hill ', '7701 windchime cir', '', 'knoxville ', 'TN ', '37918-92', 'United States ', '', '8652160442 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776408822', 1, '', '2020-04-09 19:14:54', '0000-00-00 00:00:00'),
(296, 8, '', 'Fred Catalani jr ', '15 GREYSTONE RD ', '', 'WATERBURY', 'CT ', '06704-11', 'UNITED STATES', '', '314-282-9402 ext. 51', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391776353605', 1, '', '2020-04-09 19:39:58', '0000-00-00 00:00:00'),
(297, 8, '', 'Amanda Dunbar ', '1304 6TH ST ', '', 'PAWNEE', 'OK ', '74058-45', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391802290207', 1, '', '2020-04-10 18:41:07', '2020-04-10 18:52:20'),
(298, 8, '', 'Paige Stubbs', '2414 LAKE PARK RD APT 2303 ', '', 'LEXINGTON', 'KY ', '40502-13', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391802291924', 1, '', '2020-04-10 18:42:04', '2020-04-10 18:52:38'),
(299, 8, '', 'Fidencio Castaneda ', 'III 1620 Damasco Ave ', '', 'Edinburg ', 'TX   ', '78541-15', ' United States', '', '+1 956-720-1972', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391802292839', 1, '', '2020-04-10 18:56:49', '0000-00-00 00:00:00'),
(300, 8, '', 'jessica lemus ', '4933 Butterwick Ln ', '', 'Charlotte ', 'NC ', '28212   ', 'United States', '', '+1 704-569-4285', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391802290550', 1, '', '2020-04-10 18:58:02', '0000-00-00 00:00:00'),
(301, 8, '', 'Wilbert Gordon ', '14722 Yellow Begonia Dr ', '', 'Cypress ', 'TX ', '77433-67', 'United States ', '', '8327276480', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391821736334', 1, '', '2020-04-12 18:12:48', '0000-00-00 00:00:00'),
(302, 8, '', 'Tony Gurganus ', '612 3RD ST ', '', 'CHIPLEY', 'FL   ', '32428-14', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391821834264', 1, '', '2020-04-12 18:15:16', '0000-00-00 00:00:00'),
(303, 5, '', 'AIMEE PHILLIPS', '2926 GIRARD ST', '', 'LEAVENWORTH', 'KS', '66048', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391846103190', 1, '', '2020-04-12 19:20:34', '2020-04-13 10:56:49'),
(304, 5, '', 'scott bagley', '932 weaver ln.', '', 'brookings', 'OR ', '97415', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391963192646', 1, '', '2020-04-12 19:22:46', '2020-04-16 14:21:46'),
(305, 5, '', 'scott bagley', '932 weaver ln.', '', 'brookings', 'OR ', '97415', 'US', '', '9544716958', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391845891316', 1, '', '2020-04-12 19:22:50', '2020-04-13 10:53:40'),
(306, 8, '', 'WENDY SNYDER ', '49 WILSON ST ', '', 'WEST LAWN, ', 'PA ', '19609 ', 'UNITED STATES', '', '314-282-9402 ext. 47', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391822838510', 1, '', '2020-04-12 19:48:48', '0000-00-00 00:00:00'),
(307, 8, '', 'MFONOBONG IKPIM ', '13 LIBERTY PL APT 13 ', '', 'BALTIMORE, ', 'MD ', '21244-27', 'UNITED STATES', '', '347-448-3190 ext. 74', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391822784869', 1, '', '2020-04-12 19:50:13', '0000-00-00 00:00:00'),
(308, 8, '', 'Jose Cordova Zelaya ', '5504 ADAMS DR APT 907 ', '', 'HALTOM CITY ', 'TX  ', '76117-45', 'UNITED STATES', '', '347-448-3190 ext. 83', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391822542970', 1, '', '2020-04-12 19:51:33', '0000-00-00 00:00:00'),
(309, 8, '', 'Jacob Gale ', '913 RITCHIE RD ', '', 'GROVER BEACH, ', 'CA ', '93433-11', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391864437552', 1, '', '2020-04-13 19:17:31', '0000-00-00 00:00:00'),
(310, 8, '', 'Josue Padilla ', '4333 Smoke Tree Rd. ', '', ' Phelan ', 'CA ', '92371-40', 'UNITED STATES', '', '+1 661-874-9881', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391864434016', 1, '', '2020-04-13 19:20:28', '0000-00-00 00:00:00'),
(311, 8, '', 'Cody Snyder ', '3001 FLORIDA AVE ', '', 'BALTIMORE,', 'MD ', '21227-36', 'UNITED STATES', '', '347-448-3190 ext. 62', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391864597366', 1, '', '2020-04-13 19:25:28', '0000-00-00 00:00:00'),
(312, 8, '', 'Frank orozco ', '6220 FOREST AVE ', '', 'RIDGEWOOD', 'NY ', '11385 ', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391862810039', 1, '', '2020-04-13 19:26:30', '0000-00-00 00:00:00'),
(313, 8, '', 'Robert Cech ', 'III 28818 LUND AVE ', '', 'WARREN ', ' MI ', '48093-71', 'UNITED STATES', '', '48093-7117', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391897302215', 1, '', '2020-04-14 17:40:34', '0000-00-00 00:00:00'),
(314, 8, '', 'Brett williams ', '21855 JEFFERS LN ', '', 'SANTA CLARITA ', 'CA ', '91350-39', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391896713022', 1, '', '2020-04-14 18:22:16', '0000-00-00 00:00:00'),
(315, 8, '', 'Joanna Lumpay ', '15152 N VERBENA ST ', '', 'EL MIRAGE', 'AZ ', '85335-69', 'UNITED STATES', '', '210-728-4548 ext. 07', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391896974980', 1, '', '2020-04-14 18:47:41', '0000-00-00 00:00:00'),
(316, 8, '', 'adrian abella ', '31 burgh ave ', '', 'Clifton ', 'NJ ', '07011-22', 'UNITED STATES', '', '+1 973-405-8359  ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391899596721', 1, '', '2020-04-14 23:44:57', '0000-00-00 00:00:00'),
(317, 5, '', 'Jonathon Kinkle', '1410 N LBJ DR APT 2815', '', 'SAN MARCOS', 'TX', '78666-32', 'US', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391955490210', 1, '', '2020-04-15 19:36:12', '0000-00-00 00:00:00'),
(318, 5, '', 'Patricia Glenzel', '54 BAYBERRY LN', '', 'WESTFIELD', 'MA', '01085-10', 'US', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '391955482380', 1, '', '2020-04-15 19:36:54', '0000-00-00 00:00:00'),
(319, 8, '', 'Jose Cuellar ', '1548 POND VIEW DR ', '', 'MARYSVILLE', 'CA ', '95901-82', 'UNITED STATES', '', '+1 347-448-3190', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391936240100', 1, '', '2020-04-16 00:02:32', '2020-04-16 01:29:12'),
(320, 8, '', 'Jessica Castillo ', '210 S NEWHOPE ST ', '', 'SANTA ANA ', 'CA ', '92704-12', 'UNITED STATES', '', '3142829402 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954813032', 1, '', '2020-04-16 00:03:58', '2020-04-16 01:36:32'),
(324, 8, '', 'ursula gonzalez ', '15298 SW 37 Terr ', '', 'Miami', 'FL    ', '33185', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954822840', 1, '', '2020-04-16 00:07:56', '0000-00-00 00:00:00'),
(325, 8, '', 'ursula gonzalez ', '15298 SW 37 Terr ', '', 'Miami', 'FL    ', '33185', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954798418', 1, '', '2020-04-16 00:08:00', '0000-00-00 00:00:00'),
(326, 8, '', 'Brenda Liz ', 'Colon 434 GRANT ST ', '', 'ALLENTOWN', 'PA ', '18102-31', 'UNITED STATES', '', ' +1 347-448-3190 ext', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954793703', 1, '', '2020-04-16 00:08:51', '0000-00-00 00:00:00'),
(327, 8, '', 'Kaylene Gruenberg ', '2857 EDGEWOOD ST ', '', 'PORTAGE  ', 'IN ', '46368-27', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954752368', 1, '', '2020-04-16 00:13:05', '0000-00-00 00:00:00'),
(328, 8, '', 'Kierron Drewery ', '2766 DREWERY LN ', '', 'SPRING HOPE ', 'NC ', '27882-88', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391957867086', 1, '', '2020-04-16 00:14:08', '2020-04-16 12:23:54'),
(329, 8, '', 'Tonya Porter ', '3344 Hunt Street ', '', 'Jacksonville, ', 'FL ', '32254  ', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954756948', 1, '', '2020-04-16 00:15:32', '0000-00-00 00:00:00'),
(330, 8, '', 'jessie gaspardo', ' 8245 PROSPECT DR ', '', 'KEWASKUM', 'WI ', '53040-94', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954761259', 1, '', '2020-04-16 00:17:02', '0000-00-00 00:00:00'),
(331, 8, '', 'Kailah Dejurnett ', '8485 E 22ND ST APT 108 ', '', 'TUCSON', 'AZ ', '85710-65', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954733421', 1, '', '2020-04-16 00:18:01', '0000-00-00 00:00:00'),
(332, 8, '', 'Kari Hansen ', '13002 ISLAND VIEW DR NW ', '', 'ELK RIVER, ', 'MN ', '55330-11', 'UNITED STATES', '', '+1 952-649-1263  ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954728764', 1, '', '2020-04-16 00:18:55', '0000-00-00 00:00:00'),
(333, 8, '', 'GARRETT AVENT ', '6320 WOODCREEK DR ', '', 'CITRUS HEIGHTS, ', 'CA ', '95621-61', 'UNITED STATES', '', '+1 210-501-5466', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954737986', 1, '', '2020-04-16 00:19:41', '0000-00-00 00:00:00'),
(334, 8, '', 'Luz Rosado ', '13217 astor ave cleveland ', '', 'cleveland ', 'OH ', '44135-50', 'UNITED STATES', '', '+1 216-804-2698  ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954747060', 1, '', '2020-04-16 00:20:36', '0000-00-00 00:00:00'),
(335, 8, '', 'Abrar Ahmed ', '21 Cedar Ct Apt 10 ', '', 'Vernon Hills ', 'IL ', '60061-30', 'UNITED STATES', '', '+1 773-540-5249', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954723660', 1, '', '2020-04-16 00:21:31', '0000-00-00 00:00:00'),
(336, 8, '', 'Lengocle ', '6819 COOK RD APT 1305 ', '', 'HOUSTON', 'TX ', '77072-22', 'UNITED STATES', '', ' +1 210-728-4548 ext', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391954709910', 1, '', '2020-04-16 00:32:25', '0000-00-00 00:00:00'),
(337, 8, '', 'Breanna Lee ', '7338 Loncki St Unit 113', '', 'Hill Afb ', 'UT ', '84056 ', 'UNITED STATES', '', '+1 618-202-8900 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391970475047', 1, '', '2020-04-16 20:18:20', '2020-04-16 20:27:48'),
(338, 8, '', 'Ronald Ramsey ', '4164 Belle Ave ', '', 'Youngstown ', 'OH ', '44515', 'UNITED STATES', '', '+1 330-259-5140', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391970474463', 1, '', '2020-04-16 20:19:15', '2020-04-16 20:26:37'),
(339, 8, '', 'Tom Doan ', '126 Gallivan Blvd ', '', 'Dorchester ', 'MA ', '02124-45', 'UNITED STATES', '', '+1 617-905-1204  ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391970456188', 1, '', '2020-04-16 20:54:15', '0000-00-00 00:00:00'),
(340, 8, '', 'Brandon Nguyen ', '2114 GWINN DR ', '', 'NORCROSS ', 'GA', '30071', 'UNITED STATES', '', '+1 347-448-3190', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391970516073', 1, '', '2020-04-16 21:05:59', '2020-04-16 21:53:34'),
(341, 8, '', 'Madison Parker ', '3288 CPL JOHNSON RD UNIT 1398 ', '', 'JBSA FT SAM HOUSTON', 'TX ', '78234', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391970446923', 1, '', '2020-04-16 21:07:14', '2020-04-16 21:08:58'),
(342, 8, '', 'christian hernandez ', '2825 golden sun dr ', '', 'chaparral ', 'NM ', '88081-73', 'United States   ', '', '+1 915-261-4561', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391971729112', 1, '', '2020-04-16 23:48:00', '0000-00-00 00:00:00'),
(343, 8, '', 'Breanna McAbee ', '1667 OLD HILLS BRIDGE RD ', '', 'ENOREE, ', 'SC ', '29335-24', 'UNITED STATES', '', '293352409', 0, '', '', '', '', '', '', '', '', '', '', '23.00', '12.00', '9.00', '7.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391971847879', 1, '', '2020-04-16 23:59:24', '0000-00-00 00:00:00'),
(344, 8, '', 'Muhammad suneel ', '8617 116TH ST 2FL ', '', 'RICHMOND HILL', 'NY  ', '11418-17', 'UNITED STATES', '', '210-728-4548 ext. 62', 0, '', '', '', '', '', '', '', '', '', '', '29.00', '19.00', '6.00', '5.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '391972782315', 1, '', '2020-04-17 01:24:48', '0000-00-00 00:00:00'),
(345, 8, '', 'Ariel Pena ', '4811 6th Ave Apt 3 ', '', 'Brooklyn ', 'NY ', '11220-20', 'United States ', '', '+1 917-226-6753', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392003906218', 1, '', '2020-04-17 18:21:31', '0000-00-00 00:00:00'),
(346, 8, '', 'Taslim Chaudhury ', '113 Lavender Ln ', '', 'Wylie ', 'TX  ', '75098-46', 'United States   ', '', '+1 469-878-2687', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392003905119', 1, '', '2020-04-17 18:23:18', '0000-00-00 00:00:00');
INSERT INTO `sale` (`id`, `store_id`, `store_sale_id`, `name`, `street`, `street2`, `city`, `state`, `zipcode`, `country`, `email`, `phone`, `alter_shipper`, `shipper_name`, `shipper_company`, `shipper_street`, `shipper_street2`, `shipper_city`, `shipper_state`, `shipper_zipcode`, `shipper_country`, `shipper_email`, `shipper_phone`, `length`, `width`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `total`, `tracking`, `status_id`, `note`, `date_added`, `date_modified`) VALUES
(347, 8, '', 'Joe Proctor ', '5801 N 90th St ', '', 'Omaha ', 'NE ', '68134-18', 'UNITED STATES', '', ' +1 402-578-9343', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392003904421', 1, '', '2020-04-17 18:24:35', '2020-04-17 18:24:48'),
(348, 8, '', 'JOE NIEVES  ', '18180 NW 18TH ST ', '', 'PEMBROKE PINES', 'FL ', '33029-30', 'UNITED STATES', '', '(954) 635-8881 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392005456689', 1, '', '2020-04-17 21:48:17', '2020-04-17 21:49:14'),
(349, 8, '', 'Manuel Tobias ', '8019 Willis Ave ', '', 'Panorama City ', 'CA 91402-5805 United States +1 818-934-5413', '91402-58', 'United States ', '', '+1 818-934-5413', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392006295459', 1, '', '2020-04-18 00:19:32', '0000-00-00 00:00:00'),
(350, 8, '', 'Junior Cruz ', '8407 14th Ave ', '', 'Hyattsville ', 'MD ', '20783-24', 'UNITED STATES', '', '+1 240-713-7029', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392006294897', 1, '', '2020-04-18 00:20:18', '0000-00-00 00:00:00'),
(351, 8, '', 'Billy Smith ', '1090 N Mount Mariah Rd ', '', 'Montgomery ', 'TX   ', '77356-19', 'UNITED STATES', '', '+1 281-686-0733', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392018806674', 1, '', '2020-04-18 18:43:31', '0000-00-00 00:00:00'),
(352, 8, '', 'MICHEL AYALA ', '1807 Warfield Pl ', '', 'Sebring ', 'FL   ', '33870-46', 'UNITED STATES', '', '+1 863-451-6783', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392018801043', 1, '', '2020-04-18 18:45:01', '0000-00-00 00:00:00'),
(353, 8, '', 'Son Ngo ', '1435 NW 26TH ST ', '', 'OKLAHOMA', 'OK ', '73106', 'UNITED STATES', '', ' +1 347-448-3190 ', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392031226975', 1, '', '2020-04-18 19:14:39', '2020-04-18 19:15:33'),
(354, 8, '', '  Michelle Taylor ', '2995 Hwy 66 ', '', 'Ashland ', 'Oregon ', '97520 ', 'UNITED STATES', '', '+1 347-448-3190', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392031322516', 1, '', '2020-04-18 19:20:15', '0000-00-00 00:00:00'),
(355, 8, '', 'Rebecca Dorsey ', '16986 NW Lynch Ln', '', 'Portland', 'OR', '97229', 'United States', '', '3142829402', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392053646457', 1, '', '2020-04-18 19:21:58', '2020-04-20 09:34:08'),
(356, 8, '', 'Joshua Cuellar ', '9139 Mission Pass ', '', 'San Antonio ', 'TX   ', '78223-35', 'United States', '', '+1 361-227-4068', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392031344657', 1, '', '2020-04-18 19:57:03', '0000-00-00 00:00:00'),
(357, 5, '', 'Matthew Worth', '559 Boston Ave', '', 'Egg Harbor Cy', 'NJ ', '08215-26', 'US', '', '609-992-3129', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034107678', 1, '', '2020-04-19 18:55:26', '0000-00-00 00:00:00'),
(358, 8, '', 'Randy Franke ', '2026 Havenwood Blvd ', '', 'New Braunfels ', 'TX   ', '78132-41', 'UNITED STATES', '', '+1 512-922-8536', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034106535', 1, '', '2020-04-19 19:38:23', '0000-00-00 00:00:00'),
(359, 8, '', 'Maria Morales ', '118 N 4th st ', '', 'Allentown', 'PA ', '18102  ', 'UNITED STATES', '', '+1 484-597-5633', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034105300', 1, '', '2020-04-19 19:41:38', '0000-00-00 00:00:00'),
(360, 8, '', 'RODOLFO FRANCO ', '904 W B ST ', '', 'MISSION ', 'TX ', '78572-61', 'UNITED STATES', '', ' (956) 280-0668', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034103797', 1, '', '2020-04-19 19:43:41', '0000-00-00 00:00:00'),
(361, 8, '', 'Melissa McGaughey ', '29313 AllStar ', '', 'Lake Elsinore', 'CA  ', '92530', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034100560', 1, '', '2020-04-19 19:44:49', '0000-00-00 00:00:00'),
(362, 8, '', 'Michael Dominic Guerriero ', '1628 GREEN ST ', '', 'TALLAHASSEE, ', 'FL  ', '32303-54', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034098246', 1, '', '2020-04-19 19:45:51', '0000-00-00 00:00:00'),
(363, 8, '', 'Steve A Files ', '1119 ROBERT ST ', '', 'MINOT ', 'ND ', '58703-14', 'UNITED STATES', '', '+1 412-532-4665 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034094023', 1, '', '2020-04-19 19:56:44', '0000-00-00 00:00:00'),
(364, 8, '', 'Bailey tijerina ', '20305 CRESTED CARACARA LN ', '', 'PFLUGERVILLE, ', 'TX  ', '78660-19', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034095567', 1, '', '2020-04-19 19:57:44', '0000-00-00 00:00:00'),
(365, 8, '', 'Hannah Barrow ', '5195D FOUNTAIN CEMETARY RD ', '', 'STARKS, ', 'LA ', '70661-30', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034094550', 1, '', '2020-04-19 20:02:59', '0000-00-00 00:00:00'),
(366, 8, '', 'Jason Law ', '869 Farm to Market Rd. 727 ', '', 'JEFFERSON', 'TX  ', '75657-57', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034092958', 1, '', '2020-04-19 20:04:32', '0000-00-00 00:00:00'),
(367, 8, '', 'LYDIMARI VILLAFANE ', '33B LINDSEY WAY ', '', 'GOFFSTOWN', 'NH ', '03045', 'UNITED STATES', '', ' +1 314-282-9402 ext', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034092167', 1, '', '2020-04-19 20:08:30', '0000-00-00 00:00:00'),
(368, 8, '', 'Matt Bovard ', '3786 SAN CLEMENTE CT ', '', 'NEWBURY PARK', 'CALIFORNIA ', '91320-37', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034090624', 1, '', '2020-04-19 20:15:23', '0000-00-00 00:00:00'),
(369, 8, '', 'Tiffany Daniels ', '1918 LAURA ST ', '', 'ALLEGAN', 'MI ', '49010-89', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034089491', 1, '', '2020-04-19 20:16:33', '0000-00-00 00:00:00'),
(370, 8, '', 'Gianna Vulpis ', '2 Oakmont Ct ', '', 'Lincroft', 'NJ ', '07738-12', 'UNITED STATES', '', '347-448-3190 ext. 98', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034091193', 1, '', '2020-04-19 20:18:19', '0000-00-00 00:00:00'),
(371, 8, '', 'Ranjit Kaur ', '142-20 franklin ave Apt # 3E ', '', 'Flushing,', 'NY ', '11355 ', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034089035', 1, '', '2020-04-19 20:19:59', '0000-00-00 00:00:00'),
(372, 8, '', 'Rene Hidalgo ', '60 QUINCY ST APT3 ', '', 'PASSAIC', 'NJ ', '07055', 'UNITED STATES', '', '314-282-9402', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392034088646', 1, '', '2020-04-19 20:23:31', '2020-04-19 20:42:50'),
(373, 8, '', 'US TEKNO, LLC. ', '13731 Foothill Blvd ', '', 'Sylmar, ', 'CA  ', '91342', 'UNITED STATES', '', '3142829402', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392053636309', 1, '', '2020-04-20 02:28:20', '2020-04-20 09:35:00'),
(375, 8, '', 'Jennifer Serio ', '901 W MISSISSIPPI ST ', '', 'BEEBE ', 'AR ', '72012-26', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392077543831', 1, '', '2020-04-20 18:45:45', '0000-00-00 00:00:00'),
(376, 8, '', 'Fernando Ontiveroz ', '7136 STAFFORD AVE ', '', 'HUNTINGTON PARK', 'CA ', '90255-74', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392077626007', 1, '', '2020-04-20 18:49:41', '0000-00-00 00:00:00'),
(377, 8, '', 'Chancy lester ', '10701 Black Jack Ridge Rd ', '', 'Oklahoma City ', 'OK ', '73150-43', 'UNITED STATES', '', ' +1 405-306-3996', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392077631290', 1, '', '2020-04-20 18:50:46', '0000-00-00 00:00:00'),
(378, 8, '', 'Margarito Hernandez ', '2630 trickling brook ct ', '', 'Richmond ', 'VA ', '23228-29', 'UNITED STATES', '', '+1 804-687-7195', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392077632712', 1, '', '2020-04-20 18:51:44', '0000-00-00 00:00:00'),
(379, 8, '2556602200', 'Luis Manuel Javier ', '1040 summit ave ', '', 'Greensboro ', 'NC ', '27405-70', 'UNITED STATES', '', '+1 336-809-1825', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392077633638', 1, '', '2020-04-20 18:52:50', '2020-04-20 19:55:12'),
(381, 8, '', 'Mario Fernandez ', '226 e 109 th st ', '', 'Los angeles ', 'CA ', '90061-25', 'UNITED STATES', '', '+1 323-327-1287', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119410469', 1, '', '2020-04-22 01:32:59', '0000-00-00 00:00:00'),
(382, 8, '', 'Justin Colt Osborne ', '1570 S Harriet St ', '', 'Martinsville ', 'IN ', '46151-27', 'UNITED STATES', '', '+1 317-506-6605', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119414957', 1, '', '2020-04-22 01:36:18', '0000-00-00 00:00:00'),
(383, 8, '', 'Harold Bowles ', '3903 BAKER VALLEY RD ', '', 'FREDERICK', 'MD   ', '21704-76', 'UNITED STATES', '', '314-282-9402 ext. 65', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119544345', 1, '', '2020-04-22 01:37:10', '0000-00-00 00:00:00'),
(384, 8, '', 'Don Ross ', '322 Tioga st. ', '', 'munhall', 'PA', '15120 ', 'UNITED STATES', '', '+1 210-728-4548 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119529220', 1, '', '2020-04-22 01:40:52', '0000-00-00 00:00:00'),
(385, 8, '', 'KENDRA ROBERSON ', '371 LOPER ST ', '', 'PHILADELPHIA', 'MS ', '39350-27', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119523575', 1, '', '2020-04-22 01:45:12', '0000-00-00 00:00:00'),
(386, 8, '', 'neia lima ', '21924 Savannah Hgts ', '', 'Von Ormi', 'TX ', '78073', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119507101', 1, '', '2020-04-22 01:50:00', '0000-00-00 00:00:00'),
(387, 8, '', 'Marshall hulbert ', '105 GRAND AVE ', '', 'SWANTON', 'VT ', '05488-14', 'UNITED STATES', '', ' +1 347-448-3190 ext', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119502132', 1, '', '2020-04-22 01:54:47', '0000-00-00 00:00:00'),
(388, 8, '', 'Joyce johnson ', '1355 ZMOLEK RD ', '', 'ENNIS', 'TX ', '75119-05', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392119472607', 1, '', '2020-04-22 01:55:46', '0000-00-00 00:00:00'),
(389, 8, '', 'Lan ', '1105 owl st ', '', 'Decatur', 'Texas ', '76234 ', 'UNITED STATES', '', '+1 347-448-3190 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-04-22 23:44:49', '0000-00-00 00:00:00'),
(390, 8, '', 'Shawna Aguilar ', '2718 COAL BANK DR FORT ', '', 'COLLINS', 'CO ', '80525-61', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-04-22 23:47:09', '0000-00-00 00:00:00'),
(391, 8, '', 'Cyndi Vasile ', '35 SEYMOUR ST ', '', 'AUBURN', 'NY  ', '13021-27', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '33.00', '25.00', '10.00', '16.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-04-22 23:48:53', '0000-00-00 00:00:00'),
(392, 8, '', ' Jacob S. Harman ', '9695 4 CORNERS LN ', '', 'SAINT JACOB', 'IL ', '62281-10', 'UNITED STATES', '', '+1 314-282-9402 ext.', 0, '', '', '', '', '', '', '', '', '', '', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '392155729647', 1, '', '2020-04-22 23:50:02', '0000-00-00 00:00:00'),
(395, 5, '', 'Tanisha Tramel', '5826 N 32ND ST', '', 'MILWAUKEE', 'WI', '53209-41', 'US', '', '6265003030', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '392169598030', 1, '', '2020-04-23 01:53:29', '2020-04-23 09:35:38'),
(396, 5, '', 'Travis E Miller', '27 MOBILE DR', '', 'THOMASVILLE', 'PA', '17364-97', 'US', '', '7176989163', 0, '', '', '', '', '', '', '', '', '', '', '48.80', '15.00', '11.80', '61.30', 1, 5, 'postpony', 'fedex_ground', '0.00', '392169582281', 1, '', '2020-04-23 02:21:10', '0000-00-00 00:00:00'),
(397, 4, 'Ling#184758', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '10.00', '5.00', '8.00', '5.00', 1, 5, 'usps', 'undefined', '0.00', '', 1, '', '2020-04-23 23:29:44', '0000-00-00 00:00:00'),
(398, 4, 'Ling#185509', 'Emily Taggart', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', '54981', 'United States', '', '6265023666', 0, '', '', '', '', '', '', '', '', '', '', '2.00', '6.00', '7.00', '6.00', 1, 5, 'usps', 'undefined', '0.00', '', 1, '', '2020-04-23 23:29:44', '0000-00-00 00:00:00'),
(407, 8, 'Ling#184751', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2.00', '2.00', '5.00', '5.00', 1, 5, 'ups', 'gr', '0.00', '', 1, '', '2020-04-25 04:43:29', '0000-00-00 00:00:00'),
(408, 8, 'Ling#185502', 'Emily Taggart', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', '54981', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '4.00', '5.00', '8.00', '6.00', 1, 5, 'ups', 'gr', '0.00', '', 1, '', '2020-04-25 04:43:29', '0000-00-00 00:00:00'),
(409, 8, 'Ling#184754', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '20.00', '15.00', '18.00', '5.00', 1, 5, 'ltl', 'roadrunner', '0.00', '', 1, '', '2020-04-25 17:19:42', '0000-00-00 00:00:00'),
(410, 8, 'Ling#185589', 'Emily Taggart', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', '54981', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '20.00', '13.00', '40.00', '6.00', 1, 5, 'ltl', 'roadrunner', '0.00', '', 1, '', '2020-04-25 17:19:42', '0000-00-00 00:00:00'),
(411, 8, 'Ling#184759', 'Vanessa Hill', '536 Goldensand Ln', '', 'Moncks Corner', 'South Carolina', '29461', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '20.00', '15.00', '18.00', '5.00', 1, 5, 'ltl', 'roadrunner', '0.00', '', 1, '', '2020-04-25 17:24:35', '0000-00-00 00:00:00'),
(412, 8, 'Ling#185670', 'Emily Taggart', '410 e fulton st', 'Apt 9', 'Wauapca', 'Wisconsin', '54981', 'United States', '', '', 0, '', '', '', '', '', '', '', '', '', '', '20.00', '13.00', '40.00', '6.00', 1, 5, 'ltl', 'roadrunner', '0.00', '', 1, '', '2020-04-25 17:24:35', '0000-00-00 00:00:00'),
(414, 5, '', 'TTX  Techonology', '1135 center dr unit IJ', '', 'City Of Industry', 'CA', '91789', 'US', 'sale@yjracing.com', '6268937741', 0, 'Lucy Chen', '', '12012 Lambert Ave', '', 'Arcadia', 'CA', '91732', 'United States', '', '+1 314-282-9402 ext.', '29.52', '23.62', '5.90', '12.00', 1, 5, 'postpony', 'fedex_ground', '0.00', '', 1, '', '2020-05-21 20:20:58', '2020-06-19 21:56:46');

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
(15, 18, 'img/shipping_label/stamps_18.png', '9405511899223233574549'),
(16, 18, 'img/shipping_label/stamps_18.png', '9405511899223233526135'),
(17, 25, 'img/shipping_label/stamps_25.png', '9405511899223024275747'),
(20, 26, 'img/shipping_label/stamps_26.png', '9405511899223020867502'),
(27, 95, '787992450653.png', '787992450653'),
(28, 94, '787992462543.png', '787992462543'),
(29, 101, '788011580760.png', '788011580760'),
(30, 100, '788020553382.png', '788020553382'),
(31, 99, '788020554003.png', '788020554003'),
(32, 98, '788020554323.png', '788020554323'),
(33, 115, '788288166854.png', '788288166854'),
(34, 110, '788288170136.png', '788288170136'),
(35, 111, '788288171728.png', '788288171728'),
(36, 112, '788288172139.png', '788288172139'),
(37, 113, '788288172920.png', '788288172920'),
(38, 114, '788288173396.png', '788288173396'),
(39, 119, '788309695205.png', '788309695205'),
(40, 118, '788309695786.png', '788309695786'),
(41, 117, '788322143290.png', '788322143290'),
(42, 116, '788322144653.png', '788322144653'),
(43, 121, '788350283219.png', '788350283219'),
(44, 121, '788350289673.png', '788350289673'),
(45, 120, '788350300638.png', '788350300638'),
(46, 121, '788350312517.png', '788350312517'),
(47, 122, '788352691015.png', '788352691015'),
(48, 124, '788352855300.png', '788352855300'),
(49, 123, '788352861522.png', '788352861522'),
(50, 128, '788369880980.png', '788369880980'),
(51, 125, '788369890443.png', '788369890443'),
(52, 126, '788369902885.png', '788369902885'),
(53, 127, '788369908405.png', '788369908405'),
(54, 116, '788372344208.png', '788372344208'),
(55, 129, '788408256729.png', '788408256729'),
(56, 130, '788408259420.png', '788408259420'),
(57, 131, '788408263890.png', '788408263890'),
(58, 132, '788408265907.png', '788408265907'),
(59, 133, '788408266903.png', '788408266903'),
(60, 134, '788432786259.png', '788432786259'),
(61, 135, '788432786671.png', '788432786671'),
(62, 136, '788432787336.png', '788432787336'),
(63, 137, '788432788273.png', '788432788273'),
(64, 138, '788432788218.png', '788432788218'),
(65, 139, '788432789236.png', '788432789236'),
(66, 140, '775727648184.png', '775727648184'),
(67, 141, '775735546154.png', '775735546154'),
(68, 142, '775735547264.png', '775735547264'),
(69, 143, '775735547790.png', '775735547790'),
(70, 144, '788439171265.png', '788439171265'),
(71, 145, '788439172386.png', '788439172386'),
(72, 146, '788439172640.png', '788439172640'),
(73, 147, '788439173717.png', '788439173717'),
(74, 148, '788439177388.png', '788439177388'),
(75, 149, '788439178454.png', '788439178454'),
(76, 151, '788477479118.png', '788477479118'),
(77, 152, '788477482239.png', '788477482239'),
(78, 153, '788477484356.png', '788477484356'),
(79, 154, '788477485960.png', '788477485960'),
(80, 155, '788477487918.png', '788477487918'),
(81, 156, '788477490855.png', '788477490855'),
(82, 157, '788477492869.png', '788477492869'),
(83, 158, '788502915192.png', '788502915192'),
(84, 159, '788502915950.png', '788502915950'),
(85, 161, '788529851882.png', '788529851882'),
(86, 160, '788529853495.png', '788529853495'),
(87, 162, '788554773602.png', '788554773602'),
(88, 163, '788554773543.png', '788554773543'),
(89, 164, '788554775156.png', '788554775156'),
(90, 165, '788554776119.png', '788554776119'),
(91, 166, '788554776347.png', '788554776347'),
(92, 167, '788554777674.png', '788554777674'),
(93, 168, '788584815042.png', '788584815042'),
(94, 169, '788584815800.png', '788584815800'),
(95, 170, '788584815855.png', '788584815855'),
(96, 171, '788591963016.png', '788591963016'),
(97, 172, '788591964825.png', '788591964825'),
(98, 173, '788591965979.png', '788591965979'),
(99, 174, '788591966817.png', '788591966817'),
(100, 175, '788591968393.png', '788591968393'),
(101, 176, '788591972926.png', '788591972926'),
(102, 177, '788591974686.png', '788591974686'),
(103, 178, '788591976623.png', '788591976623'),
(104, 179, '788591981482.png', '788591981482'),
(105, 180, '788591984518.png', '788591984518'),
(106, 181, '788591986017.png', '788591986017'),
(107, 183, '788591989152.png', '788591989152'),
(108, 185, '788591991141.png', '788591991141'),
(109, 186, '788652758532.png', '788652758532'),
(110, 187, '788652759610.png', '788652759610'),
(111, 190, '788963983280.png', '788963983280'),
(112, 188, '788963997736.png', '788963997736'),
(113, 189, '788963998088.png', '788963998088'),
(114, 191, '788967917712.png', '788967917712'),
(115, 192, '788968096244.png', '788968096244'),
(116, 193, '789011498468.png', '789011498468'),
(117, 194, '789011504802.png', '789011504802'),
(118, 195, '789040792692.png', '789040792692'),
(119, 196, '789104406814.png', '789104406814'),
(120, 197, '789104416193.png', '789104416193'),
(121, 198, '789104423920.png', '789104423920'),
(122, 199, '789104430430.png', '789104430430'),
(123, 200, '789190637763.png', '789190637763'),
(124, 201, '789190639994.png', '789190639994'),
(125, 202, '789207934132.png', '789207934132'),
(126, 203, '789207942998.png', '789207942998'),
(127, 204, '789240661685.png', '789240661685'),
(128, 205, '789240661413.png', '789240661413'),
(129, 206, '789267998941.png', '789267998941'),
(130, 207, '789268000131.png', '789268000131'),
(131, 208, '789268001116.png', '789268001116'),
(132, 209, '789268008728.png', '789268008728'),
(133, 210, '789315061419.png', '789315061419'),
(134, 211, '789315079307.png', '789315079307'),
(135, 212, '789315089308.png', '789315089308'),
(136, 213, '789315097214.png', '789315097214'),
(137, 214, '789362697904.png', '789362697904'),
(138, 215, '789362697878.png', '789362697878'),
(139, 216, '789362706887.png', '789362706887'),
(140, 217, '789362707482.png', '789362707482'),
(141, 218, '789362708283.png', '789362708283'),
(142, 219, '789362708537.png', '789362708537'),
(143, 220, '789362709831.png', '789362709831'),
(144, 221, '789362710033.png', '789362710033'),
(145, 222, '789454564775.png', '789454564775'),
(146, 223, '789454565922.png', '789454565922'),
(147, 224, '789512988471.png', '789512988471'),
(148, 225, '789512989310.png', '789512989310'),
(149, 226, '789512995554.png', '789512995554'),
(150, 227, '789512996697.png', '789512996697'),
(151, 228, '789513000751.png', '789513000751'),
(152, 229, '789528567508.png', '789528567508'),
(153, 230, '789528567942.png', '789528567942'),
(154, 231, '789528568570.png', '789528568570'),
(155, 232, '789528569810.png', '789528569810'),
(156, 233, '789528573319.png', '789528573319'),
(157, 234, '789528577071.png', '789528577071'),
(158, 235, '789528582942.png', '789528582942'),
(159, 236, '789528584316.png', '789528584316'),
(160, 237, '789528584625.png', '789528584625'),
(161, 238, '789528585850.png', '789528585850'),
(165, 243, '780091526439.png', '780091526439'),
(166, 244, '776433598260.png', '776433598260'),
(167, 245, '776506065600.png', '776506065600'),
(172, 247, '780339319652.png', '780339319652'),
(173, 247, '780363010342.png', '780363010342'),
(175, 246, '780206819445.png', '780206819445'),
(176, 246, '780280983434.png', '780280983434'),
(179, 252, '778520523739.png', '778520523739'),
(180, 253, '778563625244.png', '778563625244'),
(181, 254, '779047933534.png', '779047933534'),
(182, 255, '779047952297.png', '779047952297'),
(183, 256, '779362717173.png', '779362717173'),
(184, 257, '390158756430.png', '390158756430'),
(185, 258, '390158758320.png', '390158758320'),
(186, 259, '390886697573.png', '390886697573'),
(187, 261, '390968608553.png', '390968608553'),
(188, 262, '391144234730.png', '391144234730'),
(189, 263, '391417723617.png', '391417723617'),
(190, 263, '391417726134.png', '391417726134'),
(191, 263, '391417730435.png', '391417730435'),
(192, 263, '391417762154.png', '391417762154'),
(193, 266, '391472293771.png', '391472293771'),
(194, 267, '391534556891.png', '391534556891'),
(195, 269, '391564995539.png', '391564995539'),
(196, 268, '391564995951.png', '391564995951'),
(197, 271, '391565124563.png', '391565124563'),
(198, 271, '391565304100.png', '391565304100'),
(199, 276, '391607165015.png', '391607165015'),
(200, 275, '391607173528.png', '391607173528'),
(201, 274, '391607179927.png', '391607179927'),
(202, 273, '391607186701.png', '391607186701'),
(203, 272, '391607191950.png', '391607191950'),
(204, 278, '391642989531.png', '391642989531'),
(205, 277, '391642990557.png', '391642990557'),
(206, 280, '391662603253.png', '391662603253'),
(207, 279, '391662738526.png', '391662738526'),
(208, 283, '391683809623.png', '391683809623'),
(209, 285, '391714160154.png', '391714160154'),
(210, 284, '391714160420.png', '391714160420'),
(211, 287, '391716002416.png', '391716002416'),
(212, 286, '391716002840.png', '391716002840'),
(213, 281, '391716805049.png', '391716805049'),
(214, 282, '391716808037.png', '391716808037'),
(217, 288, '391744641019.png', '391744641019'),
(218, 294, '391776324951.png', '391776324951'),
(219, 289, '391776351462.png', '391776351462'),
(220, 296, '391776353605.png', '391776353605'),
(221, 292, '391776355251.png', '391776355251'),
(222, 291, '391776355641.png', '391776355641'),
(223, 295, '391776408822.png', '391776408822'),
(224, 293, '391776416614.png', '391776416614'),
(225, 290, '391776428412.png', '391776428412'),
(226, 297, '391802290207.png', '391802290207'),
(227, 300, '391802290550.png', '391802290550'),
(228, 298, '391802291924.png', '391802291924'),
(229, 299, '391802292839.png', '391802292839'),
(230, 301, '391821736334.png', '391821736334'),
(231, 302, '391821834264.png', '391821834264'),
(232, 308, '391822542970.png', '391822542970'),
(233, 307, '391822784869.png', '391822784869'),
(234, 306, '391822838510.png', '391822838510'),
(235, 305, '391845891316.png', '391845891316'),
(236, 303, '391846103190.png', '391846103190'),
(237, 312, '391862810039.png', '391862810039'),
(238, 311, '391864420579.png', '391864420579'),
(239, 310, '391864434016.png', '391864434016'),
(240, 309, '391864437552.png', '391864437552'),
(241, 311, '391864597366.png', '391864597366'),
(242, 314, '391896713022.png', '391896713022'),
(243, 315, '391896974980.png', '391896974980'),
(244, 313, '391897302215.png', '391897302215'),
(245, 316, '391899596721.png', '391899596721'),
(246, 319, '391936240100.png', '391936240100'),
(247, 336, '391954709910.png', '391954709910'),
(248, 335, '391954723660.png', '391954723660'),
(249, 332, '391954728764.png', '391954728764'),
(250, 331, '391954733421.png', '391954733421'),
(251, 333, '391954737986.png', '391954737986'),
(252, 334, '391954741452.png', '391954741452'),
(253, 334, '391954747060.png', '391954747060'),
(254, 327, '391954752368.png', '391954752368'),
(255, 329, '391954756948.png', '391954756948'),
(256, 330, '391954761259.png', '391954761259'),
(257, 326, '391954793703.png', '391954793703'),
(258, 325, '391954798418.png', '391954798418'),
(259, 321, '391954802528.png', '391954802528'),
(260, 322, '391954807953.png', '391954807953'),
(261, 320, '391954813032.png', '391954813032'),
(262, 323, '391954818674.png', '391954818674'),
(263, 324, '391954822840.png', '391954822840'),
(264, 318, '391955482380.png', '391955482380'),
(265, 317, '391955490210.png', '391955490210'),
(266, 328, '391957867086.png', '391957867086'),
(267, 304, '391963192646.png', '391963192646'),
(268, 341, '391970446923.png', '391970446923'),
(269, 339, '391970456188.png', '391970456188'),
(270, 338, '391970474463.png', '391970474463'),
(271, 337, '391970475047.png', '391970475047'),
(272, 340, '391970516073.png', '391970516073'),
(273, 342, '391971729112.png', '391971729112'),
(274, 343, '391971847879.png', '391971847879'),
(275, 344, '391972782315.png', '391972782315'),
(276, 347, '392003904421.png', '392003904421'),
(277, 346, '392003905119.png', '392003905119'),
(278, 345, '392003906218.png', '392003906218'),
(279, 348, '392005456689.png', '392005456689'),
(280, 350, '392006294897.png', '392006294897'),
(281, 349, '392006295459.png', '392006295459'),
(282, 352, '392018801043.png', '392018801043'),
(283, 351, '392018806674.png', '392018806674'),
(284, 353, '392031226975.png', '392031226975'),
(285, 354, '392031322516.png', '392031322516'),
(286, 356, '392031344657.png', '392031344657'),
(287, 372, '392034088646.png', '392034088646'),
(288, 371, '392034089035.png', '392034089035'),
(289, 369, '392034089491.png', '392034089491'),
(290, 368, '392034090624.png', '392034090624'),
(291, 370, '392034091193.png', '392034091193'),
(292, 367, '392034092167.png', '392034092167'),
(293, 366, '392034092958.png', '392034092958'),
(294, 363, '392034094023.png', '392034094023'),
(295, 365, '392034094550.png', '392034094550'),
(296, 364, '392034095567.png', '392034095567'),
(297, 362, '392034098246.png', '392034098246'),
(298, 361, '392034100560.png', '392034100560'),
(299, 360, '392034103797.png', '392034103797'),
(300, 359, '392034105300.png', '392034105300'),
(301, 358, '392034106535.png', '392034106535'),
(302, 357, '392034107678.png', '392034107678'),
(303, 373, '392053636309.png', '392053636309'),
(304, 355, '392053646457.png', '392053646457'),
(305, 375, '392077543831.png', '392077543831'),
(306, 376, '392077626007.png', '392077626007'),
(307, 377, '392077631290.png', '392077631290'),
(308, 378, '392077632712.png', '392077632712'),
(310, 379, '392077633638.png', '392077633638'),
(312, 381, '392119410469.png', '392119410469'),
(313, 382, '392119414957.png', '392119414957'),
(314, 388, '392119472607.png', '392119472607'),
(315, 387, '392119502132.png', '392119502132'),
(316, 386, '392119507101.png', '392119507101'),
(317, 385, '392119523575.png', '392119523575'),
(318, 384, '392119529220.png', '392119529220'),
(319, 383, '392119544345.png', '392119544345'),
(320, 393, '392155720400.png', '392155720400'),
(321, 392, '392155729647.png', '392155729647'),
(322, 396, '392169582281.png', '392169582281'),
(323, 395, '392169598030.png', '392169598030');

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
(46, 13, 122, 1, ''),
(77, 16, 122, 1, ''),
(79, 20, 122, 1, ''),
(81, 17, 122, 1, ''),
(105, 18, 122, 3, ''),
(106, 19, 122, 1, ''),
(112, 25, 122, 1, ''),
(118, 26, 122, 1, ''),
(148, 27, 134, 1, ''),
(149, 28, 131, 1, ''),
(150, 29, 134, 1, ''),
(151, 30, 133, 1, ''),
(152, 34, 134, 1, ''),
(154, 32, 134, 1, ''),
(156, 33, 133, 1, ''),
(157, 37, 134, 1, ''),
(158, 35, 133, 1, ''),
(164, 36, 129, 1, ''),
(165, 36, 133, 1, ''),
(167, 39, 131, 1, ''),
(172, 31, 133, 1, ''),
(173, 38, 131, 1, ''),
(180, 40, 130, 1, ''),
(181, 40, 134, 1, ''),
(213, 50, 131, 1, ''),
(214, 50, 134, 1, ''),
(271, 63, 132, 1, ''),
(272, 62, 129, 1, ''),
(273, 61, 132, 1, ''),
(274, 60, 129, 1, ''),
(275, 59, 129, 1, ''),
(276, 59, 132, 1, ''),
(277, 58, 130, 1, ''),
(278, 58, 134, 1, ''),
(279, 57, 134, 1, ''),
(280, 56, 129, 1, ''),
(281, 56, 132, 1, ''),
(282, 55, 130, 1, ''),
(283, 55, 134, 1, ''),
(286, 54, 134, 1, ''),
(287, 54, 138, 1, ''),
(288, 53, 131, 1, ''),
(289, 53, 134, 1, ''),
(290, 52, 134, 1, ''),
(291, 51, 129, 1, ''),
(292, 51, 132, 1, ''),
(293, 49, 133, 1, ''),
(294, 48, 131, 1, ''),
(295, 48, 134, 1, ''),
(296, 47, 134, 1, ''),
(297, 46, 134, 1, ''),
(298, 45, 134, 1, ''),
(299, 44, 134, 1, ''),
(300, 43, 131, 1, ''),
(301, 42, 134, 1, ''),
(302, 41, 132, 1, ''),
(303, 65, 138, 1, ''),
(304, 64, 134, 1, ''),
(313, 66, 129, 1, ''),
(314, 67, 132, 1, ''),
(315, 68, 129, 1, ''),
(316, 69, 132, 1, ''),
(317, 70, 129, 1, ''),
(318, 71, 132, 1, ''),
(319, 72, 129, 1, ''),
(320, 73, 132, 1, ''),
(327, 79, 132, 1, ''),
(328, 78, 129, 1, ''),
(329, 77, 132, 1, ''),
(330, 76, 129, 1, ''),
(331, 75, 132, 1, ''),
(332, 74, 129, 1, ''),
(333, 80, 129, 1, ''),
(334, 81, 132, 1, ''),
(335, 82, 129, 1, ''),
(336, 83, 132, 1, ''),
(339, 85, 129, 1, ''),
(340, 86, 132, 1, ''),
(341, 87, 129, 1, ''),
(342, 88, 132, 1, ''),
(344, 90, 129, 1, ''),
(345, 91, 132, 1, ''),
(346, 92, 132, 1, ''),
(348, 93, 129, 1, ''),
(351, 95, 132, 1, ''),
(352, 94, 129, 1, ''),
(355, 98, 129, 1, ''),
(356, 99, 132, 1, ''),
(357, 100, 129, 1, ''),
(358, 101, 132, 1, ''),
(359, 102, 130, 1, ''),
(363, 103, 138, 1, ''),
(364, 104, 133, 1, ''),
(365, 105, 139, 1, ''),
(370, 106, 129, 1, ''),
(371, 107, 132, 1, ''),
(372, 108, 129, 1, ''),
(373, 109, 132, 1, ''),
(374, 110, 129, 1, ''),
(375, 111, 132, 1, ''),
(376, 112, 129, 1, ''),
(377, 113, 132, 1, ''),
(380, 115, 132, 1, ''),
(381, 114, 129, 1, ''),
(382, 116, 129, 1, ''),
(383, 117, 132, 1, ''),
(384, 118, 129, 1, ''),
(385, 119, 132, 1, ''),
(386, 120, 141, 1, ''),
(387, 121, 142, 1, ''),
(388, 122, 140, 1, ''),
(389, 123, 140, 1, ''),
(390, 124, 140, 1, ''),
(391, 125, 129, 1, ''),
(392, 126, 132, 1, ''),
(393, 127, 129, 1, ''),
(394, 128, 132, 1, ''),
(397, 131, 129, 1, ''),
(398, 132, 133, 1, ''),
(399, 133, 139, 1, ''),
(400, 129, 129, 1, ''),
(401, 130, 132, 1, ''),
(402, 134, 129, 1, ''),
(403, 135, 133, 1, ''),
(404, 136, 139, 1, ''),
(405, 137, 129, 1, ''),
(406, 138, 133, 1, ''),
(407, 139, 139, 1, ''),
(408, 140, 129, 1, ''),
(409, 141, 132, 1, ''),
(410, 142, 129, 1, ''),
(411, 143, 132, 1, ''),
(412, 144, 129, 1, ''),
(413, 145, 129, 1, ''),
(414, 146, 132, 1, ''),
(415, 147, 129, 1, ''),
(416, 148, 132, 1, ''),
(417, 149, 129, 1, ''),
(419, 150, 132, 1, ''),
(420, 151, 129, 1, ''),
(421, 152, 132, 1, ''),
(422, 153, 129, 1, ''),
(423, 154, 132, 1, ''),
(424, 155, 129, 1, ''),
(425, 156, 133, 1, ''),
(426, 157, 139, 1, ''),
(427, 158, 129, 1, ''),
(428, 159, 132, 1, ''),
(429, 160, 129, 1, ''),
(430, 161, 132, 1, ''),
(431, 162, 129, 1, ''),
(432, 163, 132, 1, ''),
(433, 164, 129, 1, ''),
(434, 165, 132, 1, ''),
(435, 166, 129, 1, ''),
(436, 167, 132, 1, ''),
(437, 168, 129, 1, ''),
(438, 169, 133, 1, ''),
(439, 170, 139, 1, ''),
(440, 171, 129, 1, ''),
(441, 172, 133, 1, ''),
(442, 173, 139, 1, ''),
(443, 174, 129, 1, ''),
(444, 175, 132, 1, ''),
(445, 176, 133, 1, ''),
(446, 177, 139, 1, ''),
(447, 178, 129, 1, ''),
(448, 179, 132, 1, ''),
(449, 180, 129, 1, ''),
(450, 181, 132, 1, ''),
(451, 182, 129, 1, ''),
(452, 183, 132, 1, ''),
(453, 184, 129, 1, ''),
(454, 185, 132, 1, ''),
(455, 186, 133, 1, ''),
(456, 187, 139, 1, ''),
(457, 188, 133, 1, ''),
(458, 189, 139, 1, ''),
(459, 190, 143, 1, ''),
(460, 191, 131, 1, ''),
(461, 192, 130, 1, ''),
(462, 193, 133, 1, ''),
(463, 194, 139, 1, ''),
(464, 195, 131, 1, ''),
(465, 196, 133, 1, ''),
(466, 197, 139, 1, ''),
(467, 198, 133, 1, ''),
(469, 199, 139, 1, ''),
(470, 200, 133, 1, ''),
(471, 201, 139, 1, ''),
(472, 202, 133, 1, ''),
(473, 203, 139, 1, ''),
(474, 204, 133, 1, ''),
(475, 205, 139, 1, ''),
(476, 206, 133, 1, ''),
(477, 207, 139, 1, ''),
(478, 208, 133, 1, ''),
(480, 209, 139, 1, ''),
(483, 212, 133, 1, ''),
(484, 213, 139, 1, ''),
(485, 210, 133, 1, ''),
(486, 211, 139, 1, ''),
(487, 214, 133, 1, ''),
(488, 215, 139, 1, ''),
(489, 216, 133, 1, ''),
(490, 217, 139, 1, ''),
(491, 218, 133, 1, ''),
(492, 219, 139, 1, ''),
(493, 220, 133, 1, ''),
(494, 221, 139, 1, ''),
(495, 222, 133, 1, ''),
(496, 223, 139, 1, ''),
(497, 224, 133, 1, ''),
(498, 225, 139, 1, ''),
(499, 226, 130, 1, ''),
(500, 227, 133, 1, ''),
(501, 228, 139, 1, ''),
(502, 229, 133, 1, ''),
(503, 230, 139, 1, ''),
(504, 231, 133, 1, ''),
(505, 232, 139, 1, ''),
(508, 235, 133, 1, ''),
(509, 236, 139, 1, ''),
(510, 237, 133, 1, ''),
(511, 238, 139, 1, ''),
(512, 233, 133, 1, ''),
(513, 234, 139, 1, ''),
(518, 240, 130, 1, ''),
(520, 243, 130, 1, ''),
(521, 244, 131, 1, ''),
(522, 245, 130, 1, ''),
(526, 247, 130, 1, ''),
(527, 246, 130, 1, ''),
(532, 252, 131, 1, ''),
(533, 253, 130, 1, ''),
(534, 254, 131, 1, ''),
(535, 255, 130, 1, ''),
(536, 256, 130, 1, ''),
(539, 257, 130, 1, ''),
(540, 258, 130, 1, ''),
(541, 259, 130, 1, ''),
(542, 260, 130, 1, ''),
(544, 261, 130, 1, ''),
(545, 262, 130, 1, ''),
(546, 263, 144, 1, ''),
(547, 264, 145, 1, ''),
(548, 265, 145, 1, ''),
(551, 266, 130, 1, ''),
(552, 267, 144, 1, ''),
(554, 268, 145, 1, ''),
(555, 269, 146, 1, ''),
(557, 271, 144, 1, ''),
(558, 272, 144, 1, ''),
(559, 273, 144, 1, ''),
(560, 274, 145, 1, ''),
(561, 275, 145, 1, ''),
(562, 276, 144, 1, ''),
(563, 277, 144, 1, ''),
(564, 278, 144, 1, ''),
(565, 279, 147, 1, ''),
(566, 280, 144, 1, ''),
(567, 281, 130, 1, ''),
(568, 282, 130, 1, ''),
(570, 283, 148, 1, ''),
(571, 284, 144, 1, ''),
(572, 285, 144, 1, ''),
(573, 286, 149, 1, ''),
(574, 287, 151, 1, ''),
(581, 288, 152, 1, ''),
(582, 289, 151, 1, ''),
(583, 290, 153, 1, ''),
(584, 291, 150, 1, ''),
(585, 292, 144, 1, ''),
(586, 293, 144, 1, ''),
(587, 294, 144, 1, ''),
(588, 295, 145, 1, ''),
(589, 296, 154, 1, ''),
(592, 297, 153, 1, ''),
(593, 298, 146, 1, ''),
(594, 299, 144, 1, ''),
(595, 300, 144, 1, ''),
(596, 301, 144, 1, ''),
(597, 302, 153, 1, ''),
(601, 306, 151, 1, ''),
(602, 307, 149, 1, ''),
(603, 308, 147, 1, ''),
(604, 305, 130, 1, ''),
(605, 303, 130, 1, ''),
(606, 309, 155, 1, ''),
(607, 310, 144, 1, ''),
(608, 311, 145, 1, ''),
(609, 312, 147, 1, ''),
(610, 313, 144, 1, ''),
(611, 314, 150, 1, ''),
(612, 315, 144, 1, ''),
(613, 316, 144, 1, ''),
(614, 317, 130, 1, ''),
(615, 318, 130, 1, ''),
(621, 324, 153, 1, ''),
(622, 325, 153, 1, ''),
(623, 326, 147, 1, ''),
(624, 327, 157, 1, ''),
(626, 329, 158, 1, ''),
(627, 330, 157, 1, ''),
(628, 331, 159, 1, ''),
(629, 332, 147, 1, ''),
(630, 333, 144, 1, ''),
(631, 334, 145, 1, ''),
(632, 335, 144, 1, ''),
(633, 336, 146, 1, ''),
(634, 319, 154, 1, ''),
(636, 320, 156, 1, ''),
(637, 328, 157, 1, ''),
(638, 304, 130, 1, ''),
(642, 338, 145, 1, ''),
(644, 337, 145, 1, ''),
(645, 339, 146, 1, ''),
(648, 341, 146, 1, ''),
(650, 340, 146, 1, ''),
(651, 342, 145, 1, ''),
(652, 343, 160, 1, ''),
(653, 344, 161, 1, ''),
(654, 345, 147, 1, ''),
(655, 346, 162, 1, ''),
(657, 347, 144, 1, ''),
(659, 348, 146, 1, ''),
(660, 349, 163, 1, ''),
(661, 350, 145, 1, ''),
(662, 351, 145, 1, ''),
(663, 352, 164, 1, ''),
(665, 353, 149, 1, ''),
(666, 354, 157, 1, ''),
(669, 356, 145, 1, ''),
(670, 357, 130, 1, ''),
(674, 358, 145, 1, ''),
(675, 359, 150, 1, ''),
(676, 360, 145, 1, ''),
(677, 361, 146, 1, ''),
(678, 362, 154, 1, ''),
(679, 363, 165, 1, ''),
(680, 364, 146, 1, ''),
(681, 365, 163, 1, ''),
(682, 366, 165, 1, ''),
(683, 367, 146, 1, ''),
(684, 368, 144, 1, ''),
(685, 369, 162, 1, ''),
(686, 370, 153, 1, ''),
(687, 371, 147, 1, ''),
(689, 372, 166, 1, ''),
(692, 355, 157, 1, ''),
(693, 373, 162, 1, ''),
(697, 375, 145, 1, ''),
(698, 376, 155, 1, ''),
(699, 377, 144, 1, ''),
(700, 378, 144, 1, ''),
(702, 379, 146, 1, ''),
(705, 381, 145, 1, ''),
(706, 382, 145, 1, ''),
(707, 383, 153, 1, ''),
(708, 384, 157, 1, ''),
(709, 385, 163, 1, ''),
(710, 386, 150, 1, ''),
(711, 387, 156, 1, ''),
(712, 388, 149, 1, ''),
(713, 389, 146, 1, ''),
(714, 390, 145, 1, ''),
(715, 391, 153, 1, ''),
(716, 392, 166, 1, ''),
(720, 396, 130, 1, ''),
(721, 395, 130, 1, ''),
(722, 397, 0, 1, ''),
(723, 398, 0, 2, ''),
(732, 407, 0, 1, ''),
(733, 408, 0, 2, ''),
(734, 409, 0, 1, ''),
(735, 410, 0, 1, ''),
(736, 411, 0, 1, ''),
(737, 412, 0, 1, ''),
(746, 414, 166, 1, '');

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
(12, 123),
(11, 124),
(10, 125),
(15, 126),
(14, 127),
(13, 128),
(20, 129),
(19, 130),
(18, 131),
(17, 132),
(16, 133),
(25, 136),
(26, 137),
(27, 138),
(28, 139),
(29, 140),
(30, 141),
(49, 165),
(48, 166),
(47, 167),
(46, 168),
(56, 175),
(57, 176),
(58, 177),
(59, 178),
(60, 179),
(61, 180),
(62, 181),
(63, 182),
(64, 183),
(66, 184),
(67, 185),
(68, 186),
(69, 187),
(70, 188),
(71, 189),
(72, 190),
(73, 191),
(79, 192),
(78, 193),
(77, 194),
(76, 195),
(75, 196),
(74, 197),
(88, 198),
(87, 199),
(86, 200),
(85, 201),
(83, 202),
(82, 203),
(81, 204),
(80, 205),
(90, 207),
(91, 208),
(92, 209),
(93, 210),
(94, 211),
(95, 212),
(101, 213),
(100, 214),
(99, 215),
(98, 216),
(102, 217),
(104, 218),
(105, 219),
(106, 220),
(107, 221),
(108, 222),
(109, 223),
(110, 224),
(111, 225),
(112, 226),
(113, 227),
(114, 228),
(115, 229),
(128, 230),
(127, 231),
(125, 232),
(126, 233),
(116, 234),
(117, 235),
(118, 236),
(119, 237),
(129, 238),
(132, 239),
(130, 240),
(133, 241),
(131, 242),
(134, 243),
(137, 244),
(136, 245),
(139, 246),
(135, 247),
(138, 248),
(157, 249),
(156, 250),
(155, 251),
(153, 252),
(151, 253),
(152, 254),
(148, 255),
(154, 256),
(149, 257),
(150, 258),
(147, 259),
(144, 260),
(142, 261),
(143, 262),
(146, 263),
(141, 264),
(145, 265),
(140, 266),
(159, 267),
(158, 268),
(167, 269),
(166, 270),
(163, 271),
(161, 272),
(165, 273),
(162, 274),
(164, 275),
(160, 276),
(51, 277),
(41, 278),
(39, 279),
(38, 280),
(35, 281),
(43, 282),
(36, 283),
(185, 284),
(179, 285),
(178, 286),
(180, 287),
(175, 288),
(177, 289),
(183, 290),
(181, 291),
(174, 292),
(173, 293),
(171, 294),
(176, 295),
(172, 296),
(170, 297),
(169, 298),
(168, 299),
(186, 300),
(187, 301),
(188, 302),
(189, 303),
(191, 304),
(192, 305),
(193, 306),
(194, 307),
(195, 308),
(196, 309),
(197, 310),
(198, 311),
(199, 312),
(200, 313),
(201, 314),
(202, 315),
(205, 316),
(203, 317),
(204, 318),
(206, 319),
(209, 320),
(207, 321),
(210, 322),
(208, 323),
(211, 324),
(212, 325),
(213, 326),
(214, 327),
(215, 328),
(219, 329),
(216, 330),
(218, 331),
(217, 332),
(221, 333),
(220, 334),
(222, 335),
(223, 336),
(238, 337),
(237, 338),
(235, 339),
(232, 340),
(236, 341),
(233, 342),
(229, 343),
(234, 344),
(230, 345),
(231, 346),
(228, 347),
(225, 348),
(226, 349),
(240, 351),
(243, 352),
(244, 353),
(245, 354),
(246, 355),
(247, 356),
(253, 358),
(252, 359),
(254, 360),
(255, 361),
(266, 362),
(262, 363),
(261, 364),
(282, 365),
(281, 366),
(259, 367),
(258, 368),
(256, 369),
(257, 370),
(357, 371),
(318, 372),
(317, 373),
(395, 374),
(396, 375);

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
(17121, 'opencart', 'opencart_sort_order', '1', 0),
(17120, 'opencart', 'opencart_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(24694, 'usps', 'usps_stamps_username', 'FSUS', 0),
(24693, 'usps', 'usps_sort_order', '0', 0),
(24692, 'usps', 'usps_status', '1', 0),
(17122, 'opencart', 'opencart_status', '1', 0),
(17125, 'wish', 'wish_status', '1', 0),
(17127, 'ebay', 'ebay_sort_order', '0', 0),
(17124, 'wish', 'wish_sort_order', '2', 0),
(25110, 'square', 'square_status', '0', 0),
(25111, 'square', 'square_sort_order', '0', 0),
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
(25367, 'config', 'config_smtp_sender', '华龙USA', 0),
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
(25368, 'config', 'config_smtp_timeout', '', 0),
(25459, 'postpony', 'postpony_authorized_key', 'm8VO3yiQHsLj9pPndjG3', 0),
(25460, 'postpony', 'postpony_company', 'HUALONG US', 0),
(25461, 'postpony', 'postpony_street', '15737 E VALLEY BLVD', 0),
(25462, 'postpony', 'postpony_street2', '', 0),
(25463, 'postpony', 'postpony_city', 'City Of Industry', 0),
(25464, 'postpony', 'postpony_state', 'CA', 0),
(25465, 'postpony', 'postpony_postcode', '91744', 0),
(25466, 'postpony', 'postpony_country', 'US', 0),
(25467, 'postpony', 'postpony_owner', 'Ming', 0),
(25468, 'postpony', 'postpony_phone', '9544716958', 0),
(25469, 'postpony', 'postpony_length_unit', 'IN', 0),
(25470, 'postpony', 'postpony_weight_unit', 'LB', 0),
(25471, 'postpony', 'postpony_signature', '0', 0),
(25472, 'postpony', 'postpony_debug_mode', '0', 0),
(25473, 'postpony', 'postpony_status', '1', 0),
(25474, 'postpony', 'postpony_sort_order', '0', 0),
(25475, 'postpony', 'postpony_service', 'a:2:{i:0;a:4:{s:4:\"name\";s:12:\"Fedex Ground\";s:4:\"code\";s:12:\"fedex_ground\";s:6:\"method\";s:11:\"FedExGround\";s:7:\"package\";s:12:\"YOUR_PACKAGE\";}i:1;a:4:{s:4:\"name\";s:19:\"Postpony UPS Ground\";s:4:\"code\";s:10:\"ups_ground\";s:6:\"method\";s:9:\"UpsGround\";s:7:\"package\";s:7:\"PACKAGE\";}}', 1),
(25109, 'square', 'square_field', 'a:1:{i:0;s:5:\"token\";}', 1),
(25366, 'config', 'config_smtp_port', '465', 0),
(25365, 'config', 'config_smtp_password', 'Que2019@', 0),
(25364, 'config', 'config_smtp_username', 'sam@hualongus.com', 0),
(25362, 'config', 'config_smtp_enabled', '1', 0),
(25363, 'config', 'config_smtp_hostname', 'hwimap.exmail.qq.com', 0),
(25361, 'config', 'config_default_checkout_fee', 'checkout_weight', 0),
(23660, 'ups', 'ups_account_number', '3FR703', 0),
(23657, 'ups', 'ups_access_key', '7D3678D352FE879D', 0),
(23820, 'fedex', 'fedex_password', 'GYuOzp9a0uGbUcw25uLnJ4vD7', 0),
(23822, 'fedex', 'fedex_time_zone', 'America/Los_Angeles', 0),
(23821, 'fedex', 'fedex_company', 'Prolineshipping Inc', 0),
(23819, 'fedex', 'fedex_key', 'UOLSEeKVrlJSMEKb', 0),
(23818, 'fedex', 'fedex_meter_number', '119000362', 0),
(23817, 'fedex', 'fedex_account_number', '510087720', 0),
(25360, 'config', 'config_default_order_shipping_service', 'fedex_ground', 0),
(23684, 'ups', 'ups_fee_value', '3', 0),
(25359, 'config', 'config_default_order_shipping_provider', 'postpony', 0),
(25358, 'config', 'config_logo', '', 0),
(25357, 'config', 'config_weight_class_id', '5', 0),
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
(25274, 'checkout_weight', 'checkout_weight_sort_order', '1', 0),
(25273, 'checkout_weight', 'checkout_weight_status', '1', 0),
(25354, 'config', 'config_client_language_id', '5', 0),
(25355, 'config', 'config_information_front_id', '5', 0),
(25356, 'config', 'config_length_class_id', '1', 0),
(25353, 'config', 'config_admin_language_id', '5', 0),
(25352, 'config', 'config_printnode_general_printer_id', '542649', 0),
(25351, 'config', 'config_printnode_label_printer_id', '542646', 0),
(25350, 'config', 'config_printnode_api_key', '6656a258fd1c776ed1f3f8098f842a34bfea906c', 0),
(25349, 'config', 'config_printnode_width', '180', 0),
(25348, 'config', 'config_printnode_position_y', '20', 0),
(25347, 'config', 'config_printnode_position_x', '14', 0),
(25346, 'config', 'config_location_barcode_batch_page_item', '1', 0),
(25345, 'config', 'config_location_barcode_batch_margin', '200', 0),
(25344, 'config', 'config_location_barcode_batch_code_size', '20', 0),
(25343, 'config', 'config_location_barcode_batch_name_size', '60', 0),
(25342, 'config', 'config_location_barcode_batch_posy', '20', 0),
(25341, 'config', 'config_location_barcode_batch_posx', '10', 0),
(25340, 'config', 'config_location_barcode_batch_height', '300', 0),
(25339, 'config', 'config_location_barcode_batch_width', '630', 0),
(25338, 'config', 'config_location_barcode_code_size', '80', 0),
(24699, 'usps', 'usps_fee_type', '0', 0),
(24700, 'usps', 'usps_fee_value', '3', 0),
(24683, 'usps', 'usps_company', 'HUALONGUSA INC', 0),
(24681, 'usps', 'usps_first_name', 'Jerry', 0),
(24682, 'usps', 'usps_last_name', 'Cong', 0),
(24680, 'usps', 'usps_owner', 'FSUS', 0),
(24678, 'usps', 'usps_user_id', '609FREES0002', 0),
(24679, 'usps', 'usps_time_zone', 'America/Los_Angeles', 0),
(25337, 'config', 'config_location_barcode_name_size', '200', 0),
(24701, 'usps', 'usps_client_fee', 'a:1:{i:0;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"2\";}}', 1),
(25336, 'config', 'config_location_barcode_posy', '200', 0),
(25333, 'config', 'config_location_barcode_width', '6', 0),
(25331, 'config', 'config_label_width', '60', 0),
(25327, 'config', 'config_dashboard_order_limit', '7', 0),
(25328, 'config', 'config_dashboard_store_sync_limit', '8', 0),
(25335, 'config', 'config_location_barcode_posx', '1', 0),
(24844, 'ltl', 'ltl_status', '1', 0),
(24845, 'ltl', 'ltl_sort_order', '0', 0),
(24846, 'ltl', 'ltl_service', 'a:3:{i:0;a:4:{s:4:\"name\";s:10:\"ROADRUNNER\";s:4:\"code\";s:10:\"roadrunner\";s:6:\"method\";s:0:\"\";s:7:\"package\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:21:\"CENTRAL FREIGHT LINES\";s:4:\"code\";s:21:\"central_freight_lines\";s:6:\"method\";s:0:\"\";s:7:\"package\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:21:\"CENTRAL TRANSPORT LLC\";s:4:\"code\";s:21:\"central_transport_llc\";s:6:\"method\";s:0:\"\";s:7:\"package\";s:0:\"\";}}', 1),
(25334, 'config', 'config_location_barcode_height', '400', 0),
(25476, 'postpony', 'postpony_fee_type', '0', 0),
(25477, 'postpony', 'postpony_fee_value', '32', 0),
(25478, 'postpony', 'postpony_client_fee', 'a:8:{i:0;a:2:{s:3:\"fee\";s:2:\"32\";s:9:\"client_id\";s:1:\"2\";}i:1;a:2:{s:3:\"fee\";s:2:\"32\";s:9:\"client_id\";s:1:\"3\";}i:2;a:2:{s:3:\"fee\";s:2:\"32\";s:9:\"client_id\";s:1:\"4\";}i:3;a:2:{s:3:\"fee\";s:2:\"32\";s:9:\"client_id\";s:1:\"5\";}i:4;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"6\";}i:5;a:2:{s:3:\"fee\";s:1:\"5\";s:9:\"client_id\";s:1:\"7\";}i:6;a:2:{s:3:\"fee\";s:3:\"2.5\";s:9:\"client_id\";s:1:\"8\";}i:7;a:2:{s:3:\"fee\";s:1:\"0\";s:9:\"client_id\";s:1:\"9\";}}', 1),
(25332, 'config', 'config_label_posy', '0', 0),
(25330, 'config', 'config_label_width_type', '0', 0),
(25329, 'config', 'config_autocomplete_limit', '5', 0),
(25326, 'config', 'config_dashboard_activity_limit', '8', 0),
(25458, 'postpony', 'postpony_pwd', '16298284335c48', 0),
(25457, 'postpony', 'postpony_key', 'f5730b43', 0),
(25275, 'checkout_weight', 'checkout_weight_level', 'a:13:{i:0;a:2:{s:6:\"weight\";s:4:\"0.22\";s:6:\"amount\";s:3:\"0.2\";}i:1;a:2:{s:6:\"weight\";s:3:\"1.1\";s:6:\"amount\";s:3:\"0.4\";}i:2;a:2:{s:6:\"weight\";s:3:\"2.2\";s:6:\"amount\";s:3:\"0.6\";}i:3;a:2:{s:6:\"weight\";s:3:\"4.4\";s:6:\"amount\";s:1:\"1\";}i:4;a:2:{s:6:\"weight\";s:2:\"11\";s:6:\"amount\";s:3:\"1.5\";}i:5;a:2:{s:6:\"weight\";s:2:\"22\";s:6:\"amount\";s:1:\"2\";}i:6;a:2:{s:6:\"weight\";s:2:\"33\";s:6:\"amount\";s:3:\"3.5\";}i:7;a:2:{s:6:\"weight\";s:2:\"44\";s:6:\"amount\";s:1:\"4\";}i:8;a:2:{s:6:\"weight\";s:2:\"66\";s:6:\"amount\";s:1:\"6\";}i:9;a:2:{s:6:\"weight\";s:3:\"101\";s:6:\"amount\";s:1:\"8\";}i:10;a:2:{s:6:\"weight\";s:3:\"149\";s:6:\"amount\";s:2:\"14\";}i:11;a:2:{s:6:\"weight\";s:3:\"220\";s:6:\"amount\";s:2:\"19\";}i:12;a:2:{s:6:\"weight\";s:3:\"440\";s:6:\"amount\";s:2:\"30\";}}', 1),
(25272, 'checkout_weight', 'checkout_weight_type', 'checkout', 0),
(25324, 'config', 'config_page_limit', '10', 0),
(25325, 'config', 'config_sale_product_page_limit', '15', 0),
(25276, 'checkout_weight', 'checkout_weight_level_end', '440', 0),
(25323, 'config', 'config_time_zone', 'America/Los_Angeles', 0),
(25479, 'postpony', 'postpony_price_table', '', 0);

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
(5, 4, 'Todd Offline', 'offline', 's:0:\"\";', 1, 'usps', 'pr', 0, 0, 1, 0, NULL),
(6, 6, 'Cici Offline', 'offline', 's:0:\"\";', 1, 'postpony', 'fedex_ground', 0, 0, 1, 0, NULL),
(7, 7, 'Yao Offline Store', 'offline', 's:0:\"\";', 1, 'postpony', 'fedex_ground', 0, 0, 1, 0, NULL),
(8, 8, 'YJ Racing SPORTS Store', 'offline', 's:0:\"\";', 1, 'postpony', 'fedex_ground', 0, 0, 1, 0, NULL);

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
(10, 5, 0, 1, 0),
(11, 6, 0, 0, 0),
(12, 6, 0, 1, 0),
(13, 7, 0, 0, 0),
(14, 7, 0, 1, 0),
(15, 8, 0, 0, 0),
(16, 8, 0, 1, 0);

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
(57, 2, NULL, NULL, '58.00', '0.00', '58.00', 'order #10 ~ #12', '2018-12-18 17:21:12', '2018-12-20 11:31:49'),
(58, 2, NULL, NULL, '44.00', '0.00', '44.00', 'order #13 ~ #15', '2018-12-20 12:50:45', '2018-12-20 12:50:45'),
(59, 2, NULL, NULL, '50.00', '0.00', '50.00', '#order 16, 17, 19, 20', '2018-12-21 14:26:38', '2018-12-21 14:26:38'),
(69, 2, 'sale', 18, '45.55', '0.00', '45.55', 'label fee for order - ID: 18  store order ID: 70995', '2018-12-21 18:54:58', '2018-12-21 18:54:58'),
(71, 2, 'sale', 25, '10.48', '0.00', '10.48', 'label fee for order - ID: 25  store order ID: 112-0688369-0885063-WXP ', '2018-12-26 10:01:35', '2018-12-26 10:01:35'),
(73, 2, 'sale', 26, '9.98', '0.00', '9.98', 'label fee for order - ID: 26  store order ID: 114-4961477-8753864', '2018-12-27 13:06:41', '2018-12-27 13:06:41'),
(74, 2, NULL, NULL, '0.00', '0.00', '0.00', 'UPS FBA 12272018', '2018-12-28 14:51:21', '2018-12-28 14:51:21'),
(75, 3, NULL, NULL, '0.00', '0.00', '0.00', 'carry 1', '2019-01-24 16:14:49', '2019-01-24 16:15:21'),
(76, 3, NULL, NULL, '0.00', '0.00', '0.00', 'carry 2', '2019-01-24 16:14:59', '2019-01-24 16:15:12'),
(77, 3, 'checkin', 22, '0.00', '120.00', '120.00', 'transaction for checkin - ID: 22', '2019-02-13 15:44:42', '2019-02-13 15:44:42'),
(78, 3, 'checkin', 21, '0.00', '200.00', '200.00', 'transaction for checkin - ID: 21', '2019-02-13 15:44:43', '2019-02-13 15:44:43'),
(79, 3, NULL, NULL, '0.00', '0.00', '0.00', 'FBA4', '2019-03-12 17:34:12', '2019-03-12 17:34:12'),
(80, 3, NULL, NULL, '0.00', '0.00', '0.00', 'FBA5', '2019-03-12 17:40:04', '2019-03-12 17:40:04'),
(81, 4, NULL, NULL, '239.00', '0.00', '239.00', '#42', '2019-05-15 16:45:31', '2019-05-15 16:45:31'),
(82, 4, NULL, NULL, '238.00', '0.00', '238.00', '#41', '2019-05-15 16:45:46', '2019-05-15 16:45:46'),
(83, 4, NULL, NULL, '252.00', '0.00', '252.00', '#40', '2019-05-15 16:45:59', '2019-05-15 16:45:59'),
(84, 4, NULL, NULL, '254.00', '0.00', '254.00', '#39', '2019-05-15 16:46:18', '2019-05-15 16:46:18'),
(85, 4, NULL, NULL, '202.00', '0.00', '202.00', '#38', '2019-05-15 16:46:33', '2019-05-15 16:46:33'),
(86, 4, NULL, NULL, '228.00', '0.00', '228.00', '#37', '2019-05-15 16:46:48', '2019-05-15 16:46:48'),
(87, 4, NULL, NULL, '215.00', '0.00', '215.00', '#36', '2019-05-15 16:47:01', '2019-05-15 16:47:01'),
(88, 4, NULL, NULL, '224.00', '0.00', '224.00', '#35', '2019-05-15 16:47:16', '2019-05-15 16:47:16'),
(89, 4, NULL, NULL, '168.00', '0.00', '168.00', '#34', '2019-05-15 16:47:32', '2019-05-15 16:47:32'),
(90, 4, NULL, NULL, '215.00', '0.00', '215.00', '#33', '2019-05-15 16:47:44', '2019-05-15 16:47:44'),
(91, 4, NULL, NULL, '177.00', '0.00', '177.00', '#32', '2019-05-15 16:47:56', '2019-05-15 16:47:56'),
(92, 4, NULL, NULL, '115.00', '0.00', '115.00', '#31', '2019-05-15 16:48:07', '2019-05-15 16:48:07'),
(93, 4, NULL, NULL, '223.00', '0.00', '223.00', '#29', '2019-05-15 16:48:22', '2019-05-15 16:48:22'),
(94, 4, NULL, NULL, '198.00', '0.00', '198.00', '#28', '2019-05-15 16:48:37', '2019-05-15 16:48:37'),
(95, 4, NULL, NULL, '198.00', '0.00', '198.00', '#27', '2019-05-15 16:48:57', '2019-05-15 16:48:57'),
(96, 4, NULL, NULL, '70.00', '20.00', '90.00', '#43', '2019-05-17 13:55:13', '2019-05-17 13:55:13'),
(97, 4, NULL, NULL, '55.00', '55.00', '110.00', '#44', '2019-05-20 09:29:18', '2019-05-20 09:29:18'),
(98, 4, NULL, NULL, '64.00', '54.00', '118.00', '#45', '2019-05-20 09:29:42', '2019-05-20 09:29:42'),
(99, 4, NULL, NULL, '63.00', '27.00', '90.00', '#46', '2019-05-21 12:07:11', '2019-05-21 12:07:45'),
(100, 4, NULL, NULL, '55.00', '33.00', '88.00', '#47', '2019-05-21 12:15:25', '2019-05-21 12:15:25'),
(101, 4, NULL, NULL, '63.00', '25.00', '88.00', '#49', '2019-05-21 12:19:09', '2019-05-21 12:19:09'),
(102, 4, NULL, NULL, '103.00', '36.00', '139.00', '#48 - 2', '2019-05-21 12:29:23', '2019-05-21 14:15:42'),
(103, 4, NULL, NULL, '88.00', '30.00', '118.00', '#50', '2019-05-23 21:26:36', '2019-05-23 21:26:36'),
(104, 4, NULL, NULL, '79.00', '28.00', '107.00', '#51', '2019-05-25 22:49:20', '2019-05-25 22:49:20'),
(105, 4, NULL, NULL, '74.00', '33.00', '108.00', '#52', '2019-05-27 19:36:49', '2019-05-27 19:36:49'),
(106, 4, NULL, NULL, '118.00', '29.00', '147.00', '#53', '2019-05-27 19:37:22', '2019-05-27 19:37:22'),
(107, 4, NULL, NULL, '87.00', '31.00', '118.00', '#54', '2019-06-03 20:33:40', '2019-06-03 20:33:40'),
(108, 4, NULL, NULL, '128.00', '32.00', '160.00', '#55', '2019-06-03 20:34:53', '2019-06-03 20:34:53'),
(109, 4, NULL, NULL, '83.00', '32.00', '115.00', '#56', '2019-06-03 20:35:35', '2019-06-03 20:35:35'),
(110, 4, NULL, NULL, '83.00', '32.00', '115.00', '#57', '2019-06-03 20:36:03', '2019-06-03 20:36:03'),
(111, 4, NULL, NULL, '86.00', '32.00', '118.00', '#58', '2019-06-03 20:36:23', '2019-06-03 20:36:23'),
(112, 4, NULL, NULL, '74.00', '32.00', '106.00', '#59', '2019-06-03 20:36:40', '2019-06-03 20:36:40'),
(113, 4, NULL, NULL, '40.00', '32.00', '72.00', '#60', '2019-06-03 20:36:57', '2019-06-03 20:36:57'),
(114, 4, NULL, NULL, '40.00', '32.00', '72.00', '#61', '2019-06-03 20:37:13', '2019-06-03 20:37:13'),
(115, 4, NULL, NULL, '20.00', '32.00', '55.00', '#62', '2019-06-03 20:37:28', '2019-06-03 20:37:28'),
(116, 4, NULL, NULL, '24.00', '32.00', '56.00', '#63', '2019-06-03 20:37:48', '2019-06-03 20:37:48'),
(117, 4, NULL, NULL, '57.00', '32.00', '89.00', '#64 #65', '2019-06-03 20:38:21', '2019-06-03 20:38:21'),
(125, 4, NULL, NULL, '41.00', '32.00', '75.00', '#66', '2019-06-17 23:56:19', '2019-06-17 23:56:32'),
(126, 4, NULL, NULL, '41.00', '32.00', '75.00', '$67', '2019-06-17 23:57:00', '2019-06-17 23:57:00'),
(127, 4, NULL, NULL, '31.00', '32.00', '63.00', '#68', '2019-06-17 23:57:28', '2019-06-17 23:57:28'),
(128, 4, NULL, NULL, '30.00', '32.00', '62.00', '#69', '2019-06-17 23:58:04', '2019-06-17 23:58:04'),
(129, 4, NULL, NULL, '38.00', '32.00', '70.00', '#70', '2019-06-17 23:58:49', '2019-06-17 23:58:49'),
(130, 4, NULL, NULL, '37.00', '32.00', '69.00', '#71', '2019-06-17 23:59:09', '2019-06-17 23:59:09'),
(131, 4, NULL, NULL, '39.00', '32.00', '71.00', '#72', '2019-06-17 23:59:35', '2019-06-17 23:59:35'),
(132, 4, NULL, NULL, '41.00', '32.00', '73.00', '#73\r\n', '2019-06-18 00:00:02', '2019-06-18 00:00:02'),
(133, 4, NULL, NULL, '18.00', '32.00', '50.00', '#74', '2019-06-18 00:00:37', '2019-06-18 00:00:37'),
(134, 4, NULL, NULL, '18.00', '32.00', '50.00', '#75', '2019-06-18 00:01:38', '2019-06-18 00:01:38'),
(135, 4, NULL, NULL, '20.00', '32.00', '52.00', '#76', '2019-06-18 00:01:58', '2019-06-18 00:01:58'),
(136, 4, NULL, NULL, '18.00', '32.00', '50.00', '#77', '2019-06-18 00:02:29', '2019-06-18 00:02:29'),
(137, 4, NULL, NULL, '20.00', '32.00', '52.00', '#78', '2019-06-18 00:02:48', '2019-06-18 00:02:48'),
(138, 4, NULL, NULL, '21.00', '32.00', '53.00', '#79', '2019-06-18 00:03:06', '2019-06-18 00:03:06'),
(139, 4, NULL, NULL, '27.00', '32.00', '59.00', '#80', '2019-06-18 00:45:20', '2019-06-18 00:45:20'),
(140, 4, NULL, NULL, '28.00', '32.00', '60.00', '#81', '2019-06-18 00:45:42', '2019-06-18 00:45:42'),
(141, 4, NULL, NULL, '89.00', '32.00', '121.00', '#82', '2019-06-18 00:46:28', '2019-06-18 00:46:28'),
(142, 4, NULL, NULL, '41.00', '32.00', '73.00', '#83', '2019-06-18 00:46:55', '2019-06-18 00:46:55'),
(143, 4, NULL, NULL, '30.00', '32.00', '62.00', '#85', '2019-06-18 00:47:23', '2019-06-18 00:47:23'),
(144, 4, NULL, NULL, '28.00', '32.00', '60.00', '#86', '2019-06-18 00:47:48', '2019-06-18 00:47:48'),
(145, 4, NULL, NULL, '42.00', '32.00', '74.00', '#87', '2019-06-18 00:48:52', '2019-06-18 00:48:52'),
(146, 4, NULL, NULL, '44.00', '32.00', '76.00', '#88', '2019-06-18 00:49:12', '2019-06-18 00:49:12'),
(147, 4, NULL, NULL, '41.00', '32.00', '73.00', '#90', '2019-06-18 00:50:03', '2019-06-18 00:50:13'),
(148, 4, NULL, NULL, '41.00', '32.00', '73.00', '#91', '2019-06-18 00:50:42', '2019-06-18 00:50:42'),
(149, 4, NULL, NULL, '41.00', '32.00', '73.00', '#92', '2019-06-18 00:51:02', '2019-06-18 00:51:02'),
(150, 4, NULL, NULL, '45.00', '32.00', '77.00', '#93', '2019-06-18 00:51:22', '2019-06-18 00:51:22'),
(151, 4, 'sale', 95, '38.54', '32.00', '70.54', 'label fee for order - ID: 95', '2019-06-19 14:19:54', '2019-06-19 14:19:54'),
(152, 4, 'sale', 94, '36.40', '32.00', '68.40', 'label fee for order - ID: 94', '2019-06-19 14:20:15', '2019-06-19 14:20:15'),
(153, 4, 'sale', 101, '41.27', '32.00', '73.27', 'label fee for order - ID: 101', '2019-06-20 11:56:22', '2019-06-20 11:56:22'),
(154, 4, 'sale', 100, '39.49', '32.00', '71.49', 'label fee for order - ID: 100', '2019-06-20 20:26:31', '2019-06-20 20:26:31'),
(155, 4, 'sale', 99, '46.60', '32.00', '78.60', 'label fee for order - ID: 99', '2019-06-20 20:26:42', '2019-06-20 20:26:42'),
(156, 4, 'sale', 98, '42.87', '32.00', '74.87', 'label fee for order - ID: 98', '2019-06-20 20:26:54', '2019-06-20 20:26:54'),
(157, 4, NULL, NULL, '24.00', '32.00', '56.00', '#102', '2019-06-25 07:12:18', '2019-06-25 07:12:18'),
(159, 4, NULL, NULL, '36.00', '32.00', '68.00', '103', '2019-07-01 15:21:12', '2019-07-01 15:21:12'),
(160, 4, NULL, NULL, '28.00', '32.00', '60.00', '104', '2019-07-01 15:21:31', '2019-07-01 15:21:31'),
(161, 4, NULL, NULL, '18.00', '20.00', '38.00', '105', '2019-07-01 15:22:09', '2019-07-01 15:22:09'),
(162, 4, NULL, NULL, '42.00', '32.00', '74.00', '#106', '2019-07-03 10:25:23', '2019-07-03 10:25:23'),
(163, 4, NULL, NULL, '42.00', '32.00', '74.00', '#107', '2019-07-03 10:25:41', '2019-07-03 10:25:41'),
(164, 4, NULL, NULL, '39.00', '32.00', '71.00', '#108', '2019-07-03 10:25:58', '2019-07-03 10:25:58'),
(165, 4, NULL, NULL, '42.00', '32.00', '74.00', '#109', '2019-07-03 10:26:25', '2019-07-03 10:26:25'),
(166, 4, 'sale', 115, '22.41', '32.00', '54.41', 'label fee for order - ID: 115', '2019-07-04 16:45:18', '2019-07-04 16:45:18'),
(167, 4, 'sale', 110, '31.34', '32.00', '63.34', 'label fee for order - ID: 110', '2019-07-04 16:46:17', '2019-07-04 16:46:17'),
(168, 4, 'sale', 111, '33.48', '32.00', '65.48', 'label fee for order - ID: 111', '2019-07-04 16:46:39', '2019-07-04 16:46:39'),
(169, 4, 'sale', 112, '29.90', '32.00', '61.90', 'label fee for order - ID: 112', '2019-07-04 16:47:02', '2019-07-04 16:47:02'),
(170, 4, 'sale', 113, '32.04', '32.00', '64.04', 'label fee for order - ID: 113', '2019-07-04 16:47:14', '2019-07-04 16:47:14'),
(171, 4, 'sale', 114, '19.54', '32.00', '51.54', 'label fee for order - ID: 114', '2019-07-04 16:47:38', '2019-07-04 16:47:38'),
(172, 4, 'sale', 119, '42.98', '32.00', '74.98', 'label fee for order - ID: 119', '2019-07-05 19:51:07', '2019-07-05 19:51:07'),
(173, 4, 'sale', 118, '39.26', '32.00', '71.26', 'label fee for order - ID: 118', '2019-07-05 19:51:24', '2019-07-05 19:51:24'),
(174, 4, 'sale', 117, '41.54', '32.00', '73.54', 'label fee for order - ID: 117', '2019-07-07 16:43:00', '2019-07-07 16:43:00'),
(175, 4, 'sale', 116, '37.82', '32.00', '69.82', 'label fee for order - ID: 116', '2019-07-07 16:43:12', '2019-07-07 16:43:12'),
(176, 6, 'sale', 121, '14.18', '0.00', '14.18', 'label fee for order - ID: 121', '2019-07-08 14:27:32', '2019-07-08 14:27:32'),
(177, 6, 'sale', 121, '14.18', '0.00', '14.18', 'label fee for order - ID: 121', '2019-07-08 14:27:44', '2019-07-08 14:27:44'),
(178, 6, 'sale', 120, '24.60', '0.00', '24.60', 'label fee for order - ID: 120', '2019-07-08 14:28:02', '2019-07-08 14:28:02'),
(179, 6, 'sale', 121, '14.18', '0.00', '14.18', 'label fee for order - ID: 121', '2019-07-08 14:28:21', '2019-07-08 14:28:21'),
(180, 6, 'sale', 122, '11.11', '0.00', '11.11', 'label fee for order - ID: 122', '2019-07-08 15:55:00', '2019-07-08 15:55:00'),
(181, 6, 'sale', 124, '9.19', '0.00', '9.19', 'label fee for order - ID: 124', '2019-07-08 16:03:25', '2019-07-08 16:03:25'),
(182, 6, 'sale', 123, '8.99', '0.00', '8.99', 'label fee for order - ID: 123', '2019-07-08 16:03:48', '2019-07-08 16:03:48'),
(183, 4, 'sale', 128, '25.94', '32.00', '57.94', 'label fee for order - ID: 128', '2019-07-09 10:41:46', '2019-07-09 10:41:46'),
(184, 4, 'sale', 125, '37.82', '32.00', '69.82', 'label fee for order - ID: 125', '2019-07-09 10:42:00', '2019-07-09 10:42:00'),
(185, 4, 'sale', 126, '41.54', '32.00', '73.54', 'label fee for order - ID: 126', '2019-07-09 10:42:17', '2019-07-09 10:42:17'),
(186, 4, 'sale', 127, '23.34', '32.00', '55.34', 'label fee for order - ID: 127', '2019-07-09 10:42:26', '2019-07-09 10:42:26'),
(187, 4, 'sale', 116, '37.82', '32.00', '69.82', 'label fee for order - ID: 116', '2019-07-09 11:47:44', '2019-07-09 11:47:44'),
(188, 4, 'sale', 129, '28.81', '32.00', '60.81', 'label fee for order - ID: 129', '2019-07-10 18:46:24', '2019-07-10 18:46:24'),
(189, 4, 'sale', 130, '30.71', '32.00', '62.71', 'label fee for order - ID: 130', '2019-07-10 18:46:44', '2019-07-10 18:46:44'),
(190, 4, 'sale', 131, '35.86', '32.00', '67.86', 'label fee for order - ID: 131', '2019-07-10 18:47:23', '2019-07-10 18:47:23'),
(191, 4, NULL, NULL, '26.83', '10.00', '36.83', 'label fee for order - ID: 132', '2019-07-10 18:47:40', '2019-07-11 15:12:56'),
(192, 4, 'sale', 133, '43.74', '32.00', '75.74', 'label fee for order - ID: 133', '2019-07-10 18:47:52', '2019-07-10 18:47:52'),
(193, 4, 'sale', 134, '34.42', '32.00', '66.42', 'label fee for order - ID: 134', '2019-07-11 20:38:08', '2019-07-11 20:38:08'),
(194, 4, 'sale', 135, '25.39', '32.00', '57.39', 'label fee for order - ID: 135', '2019-07-11 20:38:18', '2019-07-11 20:38:18'),
(195, 4, 'sale', 136, '42.30', '32.00', '74.30', 'label fee for order - ID: 136', '2019-07-11 20:38:28', '2019-07-11 20:38:28'),
(196, 4, 'sale', 137, '32.84', '32.00', '64.84', 'label fee for order - ID: 137', '2019-07-11 20:38:37', '2019-07-11 20:38:37'),
(197, 4, NULL, NULL, '24.03', '10.00', '34.03', 'label fee for order - ID: 138', '2019-07-11 20:38:45', '2019-07-11 20:42:48'),
(198, 4, 'sale', 139, '41.82', '32.00', '73.82', 'label fee for order - ID: 139', '2019-07-11 20:38:53', '2019-07-11 20:38:53'),
(199, 4, 'sale', 140, '34.42', '32.00', '66.42', 'label fee for order - ID: 140', '2019-07-12 19:35:19', '2019-07-12 19:35:19'),
(200, 4, 'sale', 141, '37.73', '32.00', '69.73', 'label fee for order - ID: 141', '2019-07-13 17:26:23', '2019-07-13 17:26:23'),
(201, 4, 'sale', 142, '35.86', '32.00', '67.86', 'label fee for order - ID: 142', '2019-07-13 17:26:35', '2019-07-13 17:26:35'),
(202, 4, 'sale', 143, '39.17', '32.00', '71.17', 'label fee for order - ID: 143', '2019-07-13 17:26:51', '2019-07-13 17:26:51'),
(203, 4, 'sale', 144, '27.37', '32.00', '59.37', 'label fee for order - ID: 144', '2019-07-14 19:17:49', '2019-07-14 19:17:49'),
(204, 4, 'sale', 145, '31.40', '32.00', '63.40', 'label fee for order - ID: 145', '2019-07-14 19:17:59', '2019-07-14 19:17:59'),
(205, 4, 'sale', 146, '33.00', '32.00', '65.00', 'label fee for order - ID: 146', '2019-07-14 19:18:09', '2019-07-14 19:18:09'),
(206, 4, 'sale', 147, '35.86', '32.00', '67.86', 'label fee for order - ID: 147', '2019-07-14 19:18:31', '2019-07-14 19:18:31'),
(207, 4, 'sale', 148, '39.17', '32.00', '71.17', 'label fee for order - ID: 148', '2019-07-14 19:19:17', '2019-07-14 19:19:17'),
(208, 4, 'sale', 149, '20.24', '32.00', '52.24', 'label fee for order - ID: 149', '2019-07-14 19:19:26', '2019-07-14 19:19:26'),
(209, 4, NULL, NULL, '22.00', '32.00', '54.00', '#150', '2019-07-14 19:25:19', '2019-07-14 19:25:19'),
(210, 4, 'sale', 151, '32.84', '32.00', '64.84', 'label fee for order - ID: 151', '2019-07-16 03:46:46', '2019-07-16 03:46:46'),
(211, 4, 'sale', 152, '34.44', '32.00', '66.44', 'label fee for order - ID: 152', '2019-07-16 03:47:01', '2019-07-16 03:47:01'),
(212, 4, 'sale', 153, '31.40', '32.00', '63.40', 'label fee for order - ID: 153', '2019-07-16 03:47:13', '2019-07-16 03:47:13'),
(213, 4, 'sale', 154, '33.00', '32.00', '65.00', 'label fee for order - ID: 154', '2019-07-16 03:47:26', '2019-07-16 03:47:26'),
(214, 4, 'sale', 155, '35.86', '32.00', '67.86', 'label fee for order - ID: 155', '2019-07-16 03:47:39', '2019-07-16 03:47:39'),
(215, 4, 'sale', 156, '26.83', '32.00', '58.83', 'label fee for order - ID: 156', '2019-07-16 03:48:00', '2019-07-16 03:48:00'),
(216, 4, 'sale', 157, '43.74', '32.00', '75.74', 'label fee for order - ID: 157', '2019-07-16 03:48:08', '2019-07-16 03:48:08'),
(217, 4, 'sale', 158, '23.12', '32.00', '55.12', 'label fee for order - ID: 158', '2019-07-16 20:26:29', '2019-07-16 20:26:29'),
(218, 4, 'sale', 159, '25.81', '32.00', '57.81', 'label fee for order - ID: 159', '2019-07-16 20:26:37', '2019-07-16 20:26:37'),
(219, 4, 'sale', 161, '33.00', '32.00', '65.00', 'label fee for order - ID: 161', '2019-07-17 20:29:04', '2019-07-17 20:29:04'),
(220, 4, 'sale', 160, '31.40', '32.00', '63.40', 'label fee for order - ID: 160', '2019-07-17 20:29:15', '2019-07-17 20:29:15'),
(221, 4, 'sale', 162, '34.42', '32.00', '66.42', 'label fee for order - ID: 162', '2019-07-18 22:03:45', '2019-07-18 22:03:45'),
(222, 4, 'sale', 163, '37.73', '32.00', '69.73', 'label fee for order - ID: 163', '2019-07-18 22:03:57', '2019-07-18 22:03:57'),
(223, 4, 'sale', 164, '31.40', '32.00', '63.40', 'label fee for order - ID: 164', '2019-07-18 22:04:11', '2019-07-18 22:04:11'),
(224, 4, 'sale', 165, '33.00', '32.00', '65.00', 'label fee for order - ID: 165', '2019-07-18 22:04:21', '2019-07-18 22:04:21'),
(225, 4, 'sale', 166, '35.86', '32.00', '67.86', 'label fee for order - ID: 166', '2019-07-18 22:04:29', '2019-07-18 22:04:29'),
(226, 4, 'sale', 167, '39.17', '32.00', '71.17', 'label fee for order - ID: 167', '2019-07-18 22:04:37', '2019-07-18 22:04:37'),
(229, 4, 'checkout', 275, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 275', '2019-07-19 13:26:44', '2019-07-19 13:26:44'),
(230, 4, 'checkout', 270, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 270', '2019-07-19 13:26:50', '2019-07-19 13:26:50'),
(231, 4, 'checkout', 271, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 271', '2019-07-19 13:26:56', '2019-07-19 13:26:56'),
(232, 4, 'checkout', 276, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 276', '2019-07-19 13:27:02', '2019-07-19 13:27:02'),
(233, 4, 'checkout', 269, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 269', '2019-07-19 13:27:07', '2019-07-19 13:27:07'),
(234, 4, 'checkout', 273, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 273', '2019-07-19 13:27:13', '2019-07-19 13:27:13'),
(237, 4, 'checkout', 274, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 274', '2019-07-19 13:56:42', '2019-07-19 13:56:42'),
(238, 4, 'checkout', 268, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 268', '2019-07-19 13:56:48', '2019-07-19 13:56:48'),
(239, 4, 'checkout', 272, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 272', '2019-07-19 13:56:53', '2019-07-19 13:56:53'),
(240, 4, 'checkout', 267, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 267', '2019-07-19 13:56:59', '2019-07-19 13:56:59'),
(241, 4, 'sale', 168, '21.68', '32.00', '53.68', 'label fee for order - ID: 168', '2019-07-20 22:15:11', '2019-07-20 22:15:11'),
(242, 4, NULL, NULL, '14.27', '15.00', '29.27', 'label fee for order - ID: 169', '2019-07-20 22:15:22', '2019-07-20 22:17:09'),
(243, 4, 'sale', 170, '29.43', '32.00', '61.43', 'label fee for order - ID: 170', '2019-07-20 22:15:46', '2019-07-20 22:15:46'),
(247, 4, 'sale', 171, '19.58', '32.00', '51.58', 'label fee for order - ID: 171', '2019-07-21 23:38:15', '2019-07-21 23:38:15'),
(248, 4, NULL, NULL, '12.50', '15.00', '27.50', 'label fee for order - ID: 172', '2019-07-21 23:38:31', '2019-07-21 23:43:05'),
(249, 4, 'sale', 173, '27.84', '32.00', '59.84', 'label fee for order - ID: 173', '2019-07-21 23:38:41', '2019-07-21 23:38:41'),
(250, 4, 'sale', 174, '27.37', '32.00', '59.37', 'label fee for order - ID: 174', '2019-07-21 23:38:54', '2019-07-21 23:38:54'),
(251, 4, 'sale', 175, '29.27', '32.00', '61.27', 'label fee for order - ID: 175', '2019-07-21 23:39:04', '2019-07-21 23:39:04'),
(252, 4, 'sale', 176, '14.27', '32.00', '46.27', 'label fee for order - ID: 176', '2019-07-21 23:39:43', '2019-07-21 23:39:43'),
(253, 4, 'sale', 177, '29.43', '32.00', '61.43', 'label fee for order - ID: 177', '2019-07-21 23:39:57', '2019-07-21 23:39:57'),
(254, 4, 'sale', 178, '34.42', '32.00', '66.42', 'label fee for order - ID: 178', '2019-07-21 23:40:08', '2019-07-21 23:40:08'),
(255, 4, 'sale', 179, '37.73', '32.00', '69.73', 'label fee for order - ID: 179', '2019-07-21 23:40:45', '2019-07-21 23:40:45'),
(256, 4, 'sale', 180, '35.86', '32.00', '67.86', 'label fee for order - ID: 180', '2019-07-21 23:41:04', '2019-07-21 23:41:04'),
(257, 4, 'sale', 181, '39.17', '32.00', '71.17', 'label fee for order - ID: 181', '2019-07-21 23:41:17', '2019-07-21 23:41:17'),
(258, 4, 'sale', 183, '20.69', '32.00', '52.69', 'label fee for order - ID: 183', '2019-07-21 23:41:39', '2019-07-21 23:41:39'),
(259, 4, 'sale', 185, '37.73', '32.00', '69.73', 'label fee for order - ID: 185', '2019-07-21 23:41:51', '2019-07-21 23:41:51'),
(260, 4, 'checkout', 287, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 287', '2019-07-23 17:43:42', '2019-07-23 17:43:42'),
(261, 4, 'checkout', 291, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 291', '2019-07-23 17:43:48', '2019-07-23 17:43:48'),
(262, 4, 'checkout', 295, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 295', '2019-07-23 17:43:54', '2019-07-23 17:43:54'),
(263, 4, 'checkout', 289, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 289', '2019-07-23 17:43:59', '2019-07-23 17:43:59'),
(264, 4, 'checkout', 286, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 286', '2019-07-23 17:44:05', '2019-07-23 17:44:05'),
(265, 4, 'checkout', 285, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 285', '2019-07-23 17:44:10', '2019-07-23 17:44:10'),
(266, 4, 'checkout', 284, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 284', '2019-07-23 17:44:16', '2019-07-23 17:44:16'),
(267, 4, 'checkout', 290, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 290', '2019-07-23 17:44:22', '2019-07-23 17:44:22'),
(268, 4, 'checkout', 288, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 288', '2019-07-23 17:44:43', '2019-07-23 17:44:43'),
(269, 4, 'checkout', 296, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 296', '2019-07-23 17:44:48', '2019-07-23 17:44:48'),
(270, 4, 'checkout', 294, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 294', '2019-07-23 17:44:54', '2019-07-23 17:44:54'),
(271, 4, 'checkout', 293, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 293', '2019-07-23 17:44:59', '2019-07-23 17:44:59'),
(272, 4, 'checkout', 297, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 297', '2019-07-23 17:45:05', '2019-07-23 17:45:05'),
(273, 4, 'checkout', 298, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 298', '2019-07-23 17:45:11', '2019-07-23 17:45:11'),
(274, 4, NULL, NULL, '25.39', '12.00', '37.39', 'label fee for order - ID: 186', '2019-07-24 01:04:28', '2019-07-24 01:05:14'),
(275, 4, 'sale', 187, '42.30', '32.00', '74.30', 'label fee for order - ID: 187', '2019-07-24 01:04:37', '2019-07-24 01:04:37'),
(276, 4, 'checkout', 301, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 301', '2019-07-25 21:18:27', '2019-07-25 21:18:27'),
(277, 4, 'checkout', 300, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 300', '2019-07-25 21:18:33', '2019-07-25 21:18:33'),
(278, 6, 'sale', 190, '22.77', '0.00', '22.77', 'label fee for order - ID: 190', '2019-08-06 17:11:41', '2019-08-06 17:11:41'),
(279, 4, 'sale', 188, '14.27', '32.00', '46.27', 'label fee for order - ID: 188', '2019-08-06 17:12:56', '2019-08-06 17:12:56'),
(280, 4, 'sale', 189, '29.43', '32.00', '61.43', 'label fee for order - ID: 189', '2019-08-06 17:13:04', '2019-08-06 17:13:04'),
(281, 4, 'sale', 191, '70.67', '32.00', '102.67', 'label fee for order - ID: 191', '2019-08-07 03:14:24', '2019-08-07 03:14:24'),
(282, 4, 'sale', 192, '32.36', '32.00', '64.36', 'label fee for order - ID: 192', '2019-08-07 03:22:37', '2019-08-07 03:22:37'),
(283, 4, NULL, NULL, '15.52', '22.00', '37.52', 'label fee for order - ID: 193', '2019-08-08 13:17:17', '2019-08-08 13:17:45'),
(284, 4, 'sale', 194, '31.57', '32.00', '63.57', 'label fee for order - ID: 194', '2019-08-08 13:17:27', '2019-08-08 13:17:27'),
(285, 4, 'checkout', 307, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 307', '2019-08-08 17:31:07', '2019-08-08 17:31:07'),
(286, 4, 'checkout', 303, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 303', '2019-08-08 17:31:13', '2019-08-08 17:31:13'),
(287, 4, 'checkout', 306, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 306', '2019-08-08 17:31:19', '2019-08-08 17:31:19'),
(288, 4, 'checkout', 305, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 305', '2019-08-08 17:31:25', '2019-08-08 17:31:25'),
(289, 4, 'checkout', 304, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 304', '2019-08-08 17:31:30', '2019-08-08 17:31:30'),
(290, 4, 'checkout', 302, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 302', '2019-08-08 17:31:36', '2019-08-08 17:31:36'),
(291, 4, 'sale', 195, '73.09', '32.00', '105.09', 'label fee for order - ID: 195', '2019-08-09 16:39:17', '2019-08-09 16:39:17'),
(292, 4, 'sale', 196, '20.52', '32.00', '52.52', 'label fee for order - ID: 196', '2019-08-13 10:56:19', '2019-08-13 10:56:19'),
(293, 4, 'sale', 197, '37.05', '32.00', '69.05', 'label fee for order - ID: 197', '2019-08-13 10:56:34', '2019-08-13 10:56:34'),
(294, 4, 'sale', 198, '24.03', '32.00', '56.03', 'label fee for order - ID: 198', '2019-08-13 10:56:45', '2019-08-13 10:56:45'),
(295, 4, 'sale', 199, '41.82', '32.00', '73.82', 'label fee for order - ID: 199', '2019-08-13 10:56:55', '2019-08-13 10:56:55'),
(296, 4, 'checkout', 308, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 308', '2019-08-15 15:39:08', '2019-08-15 15:39:08'),
(297, 4, 'sale', 200, '25.39', '32.00', '57.39', 'label fee for order - ID: 200', '2019-08-16 16:11:23', '2019-08-16 16:11:23'),
(298, 4, 'sale', 201, '42.30', '32.00', '74.30', 'label fee for order - ID: 201', '2019-08-16 16:11:32', '2019-08-16 16:11:32'),
(299, 4, 'checkout', 309, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 309', '2019-08-18 23:07:07', '2019-08-18 23:07:07'),
(300, 4, 'checkout', 313, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 313', '2019-08-18 23:07:12', '2019-08-18 23:07:12'),
(301, 4, 'checkout', 314, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 314', '2019-08-18 23:07:18', '2019-08-18 23:07:18'),
(302, 4, 'checkout', 310, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 310', '2019-08-18 23:07:24', '2019-08-18 23:07:24'),
(303, 4, 'checkout', 312, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 312', '2019-08-18 23:07:30', '2019-08-18 23:07:30'),
(304, 4, 'checkout', 311, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 311', '2019-08-18 23:07:36', '2019-08-18 23:07:36'),
(305, 4, 'sale', 202, '26.83', '32.00', '58.83', 'label fee for order - ID: 202', '2019-08-18 23:08:55', '2019-08-18 23:08:55'),
(306, 4, 'sale', 203, '43.74', '32.00', '75.74', 'label fee for order - ID: 203', '2019-08-18 23:10:25', '2019-08-18 23:10:25'),
(307, 4, 'sale', 204, '22.59', '32.00', '54.59', 'label fee for order - ID: 204', '2019-08-19 21:17:36', '2019-08-19 21:17:36'),
(308, 4, 'sale', 205, '40.38', '32.00', '72.38', 'label fee for order - ID: 205', '2019-08-19 21:17:44', '2019-08-19 21:17:44'),
(309, 4, 'checkout', 315, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 315', '2019-08-20 19:12:41', '2019-08-20 19:12:41'),
(310, 4, 'checkout', 317, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 317', '2019-08-20 19:12:47', '2019-08-20 19:12:47'),
(311, 4, 'checkout', 318, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 318', '2019-08-20 19:12:53', '2019-08-20 19:12:53'),
(312, 4, 'checkout', 316, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 316', '2019-08-20 19:12:59', '2019-08-20 19:12:59'),
(313, 4, 'sale', 206, '15.52', '32.00', '47.52', 'label fee for order - ID: 206', '2019-08-20 19:13:40', '2019-08-20 19:13:40'),
(314, 4, 'sale', 207, '31.57', '32.00', '63.57', 'label fee for order - ID: 207', '2019-08-20 19:13:49', '2019-08-20 19:13:49'),
(315, 4, 'sale', 208, '26.83', '32.00', '58.83', 'label fee for order - ID: 208', '2019-08-20 19:13:57', '2019-08-20 19:13:57'),
(316, 4, 'sale', 209, '43.74', '32.00', '75.74', 'label fee for order - ID: 209', '2019-08-20 19:14:46', '2019-08-20 19:14:46'),
(317, 4, NULL, NULL, '322.89', '0.00', '322.89', 'rebill fees', '2019-08-21 15:33:29', '2019-08-21 15:33:29'),
(318, 4, 'sale', 210, '25.39', '32.00', '57.39', 'label fee for order - ID: 210', '2019-08-22 13:01:29', '2019-08-22 13:01:29'),
(319, 4, 'sale', 211, '42.30', '32.00', '74.30', 'label fee for order - ID: 211', '2019-08-22 13:02:00', '2019-08-22 13:02:00'),
(320, 4, 'sale', 212, '24.03', '32.00', '56.03', 'label fee for order - ID: 212', '2019-08-22 13:02:16', '2019-08-22 13:02:16'),
(321, 4, 'sale', 213, '41.82', '32.00', '73.82', 'label fee for order - ID: 213', '2019-08-22 13:02:29', '2019-08-22 13:02:29'),
(323, 4, 'sale', 214, '20.52', '32.00', '52.52', 'label fee for order - ID: 214', '2019-08-25 20:40:58', '2019-08-25 20:40:58'),
(324, 4, 'sale', 215, '37.05', '32.00', '69.05', 'label fee for order - ID: 215', '2019-08-25 20:41:06', '2019-08-25 20:41:06'),
(325, 4, 'sale', 216, '8.86', '32.00', '40.86', 'label fee for order - ID: 216', '2019-08-25 20:42:49', '2019-08-25 20:42:49'),
(326, 4, 'sale', 217, '24.32', '32.00', '56.32', 'label fee for order - ID: 217', '2019-08-25 20:43:00', '2019-08-25 20:43:00'),
(327, 4, 'sale', 218, '22.59', '32.00', '54.59', 'label fee for order - ID: 218', '2019-08-25 20:43:10', '2019-08-25 20:43:10'),
(328, 4, 'sale', 219, '40.38', '32.00', '72.38', 'label fee for order - ID: 219', '2019-08-25 20:43:21', '2019-08-25 20:43:21'),
(329, 4, 'sale', 220, '25.39', '32.00', '57.39', 'label fee for order - ID: 220', '2019-08-25 20:43:30', '2019-08-25 20:43:30'),
(330, 4, 'sale', 221, '42.30', '32.00', '74.30', 'label fee for order - ID: 221', '2019-08-25 20:43:39', '2019-08-25 20:43:39'),
(331, 4, 'checkout', 326, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 326', '2019-08-25 20:43:55', '2019-08-25 20:43:55'),
(332, 4, 'checkout', 325, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 325', '2019-08-25 20:44:00', '2019-08-25 20:44:00'),
(333, 4, 'checkout', 322, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 322', '2019-08-25 20:44:07', '2019-08-25 20:44:07'),
(334, 4, 'checkout', 323, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 323', '2019-08-25 20:44:12', '2019-08-25 20:44:12'),
(335, 4, 'checkout', 324, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 324', '2019-08-25 20:44:18', '2019-08-25 20:44:18'),
(336, 4, 'checkout', 321, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 321', '2019-08-25 20:44:23', '2019-08-25 20:44:23'),
(337, 4, 'checkout', 320, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 320', '2019-08-25 20:44:30', '2019-08-25 20:44:30'),
(338, 4, 'checkout', 319, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 319', '2019-08-25 20:44:35', '2019-08-25 20:44:35'),
(339, 4, 'checkout', 333, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 333', '2019-08-27 20:26:45', '2019-08-27 20:26:45'),
(340, 4, 'checkout', 334, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 334', '2019-08-27 20:26:50', '2019-08-27 20:26:50'),
(341, 4, 'checkout', 332, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 332', '2019-08-27 20:26:56', '2019-08-27 20:26:56'),
(342, 4, 'checkout', 328, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 328', '2019-08-27 20:27:01', '2019-08-27 20:27:01'),
(343, 4, 'checkout', 327, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 327', '2019-08-27 20:27:06', '2019-08-27 20:27:06'),
(344, 4, 'checkout', 330, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 330', '2019-08-27 20:27:12', '2019-08-27 20:27:12'),
(345, 4, 'checkout', 331, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 331', '2019-08-27 20:27:19', '2019-08-27 20:27:19'),
(346, 4, 'checkout', 329, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 329', '2019-08-27 20:27:24', '2019-08-27 20:27:24'),
(347, 4, NULL, NULL, '154.40', '0.00', '154.40', 'Rebill Fees 8/26', '2019-08-27 22:03:46', '2019-08-27 22:03:46'),
(348, 4, 'sale', 222, '25.33', '32.00', '57.33', 'label fee for order - ID: 222', '2019-08-29 01:13:29', '2019-08-29 01:13:29'),
(349, 4, 'sale', 223, '42.24', '32.00', '74.24', 'label fee for order - ID: 223', '2019-08-29 01:13:38', '2019-08-29 01:13:38'),
(350, 4, 'sale', 224, '26.77', '32.00', '58.77', 'label fee for order - ID: 224', '2019-09-01 05:47:43', '2019-09-01 05:47:43'),
(351, 4, 'sale', 225, '43.68', '32.00', '75.68', 'label fee for order - ID: 225', '2019-09-01 05:47:51', '2019-09-01 05:47:51'),
(352, 4, 'sale', 226, '29.67', '32.00', '61.67', 'label fee for order - ID: 226', '2019-09-01 05:48:58', '2019-09-01 05:48:58'),
(353, 4, 'sale', 227, '26.77', '32.00', '58.77', 'label fee for order - ID: 227', '2019-09-01 05:49:15', '2019-09-01 05:49:15'),
(354, 4, 'sale', 228, '43.68', '32.00', '75.68', 'label fee for order - ID: 228', '2019-09-01 05:50:14', '2019-09-01 05:50:14'),
(355, 4, 'sale', 229, '26.77', '32.00', '58.77', 'label fee for order - ID: 229', '2019-09-02 19:29:34', '2019-09-02 19:29:34'),
(356, 4, 'sale', 230, '43.68', '32.00', '75.68', 'label fee for order - ID: 230', '2019-09-02 19:29:43', '2019-09-02 19:29:43'),
(357, 4, 'sale', 231, '26.77', '32.00', '58.77', 'label fee for order - ID: 231', '2019-09-02 19:29:53', '2019-09-02 19:29:53'),
(358, 4, 'sale', 232, '43.68', '32.00', '75.68', 'label fee for order - ID: 232', '2019-09-02 19:30:01', '2019-09-02 19:30:01'),
(359, 4, 'sale', 233, '16.93', '32.00', '48.93', 'label fee for order - ID: 233', '2019-09-02 19:30:43', '2019-09-02 19:30:43'),
(360, 4, 'sale', 234, '32.96', '32.00', '64.96', 'label fee for order - ID: 234', '2019-09-02 19:31:29', '2019-09-02 19:31:29'),
(361, 4, 'sale', 235, '26.77', '32.00', '58.77', 'label fee for order - ID: 235', '2019-09-02 19:32:26', '2019-09-02 19:32:26'),
(362, 4, 'sale', 236, '43.68', '32.00', '75.68', 'label fee for order - ID: 236', '2019-09-02 19:32:36', '2019-09-02 19:32:36'),
(363, 4, 'sale', 237, '25.33', '32.00', '57.33', 'label fee for order - ID: 237', '2019-09-02 19:32:47', '2019-09-02 19:32:47'),
(364, 4, 'sale', 238, '30.53', '32.00', '62.53', 'label fee for order - ID: 238', '2019-09-02 19:33:03', '2019-09-02 19:33:03'),
(365, 4, 'checkout', 337, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 337', '2019-09-07 11:07:37', '2019-09-07 11:07:37'),
(366, 4, 'checkout', 338, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 338', '2019-09-07 11:07:43', '2019-09-07 11:07:43'),
(367, 4, 'checkout', 341, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 341', '2019-09-07 11:07:49', '2019-09-07 11:07:49'),
(368, 4, 'checkout', 342, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 342', '2019-09-07 11:07:54', '2019-09-07 11:07:54'),
(369, 4, 'checkout', 344, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 344', '2019-09-07 11:08:01', '2019-09-07 11:08:01'),
(370, 4, 'checkout', 345, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 345', '2019-09-07 11:08:06', '2019-09-07 11:08:06'),
(371, 4, 'checkout', 340, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 340', '2019-09-07 11:08:12', '2019-09-07 11:08:12'),
(372, 4, 'checkout', 343, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 343', '2019-09-07 11:08:17', '2019-09-07 11:08:17'),
(373, 4, 'checkout', 339, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 339', '2019-09-07 11:08:23', '2019-09-07 11:08:23'),
(374, 4, 'checkout', 346, '0.00', '4.00', '4.00', 'transaction for checkout - ID: 346', '2019-09-07 11:08:29', '2019-09-07 11:08:29'),
(375, 4, 'checkout', 336, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 336', '2019-09-07 11:20:30', '2019-09-07 11:20:30'),
(376, 4, 'checkout', 349, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 349', '2019-09-07 11:36:12', '2019-09-07 11:36:12'),
(380, 4, 'sale', 243, '28.23', '32.00', '60.23', 'label fee for order - ID: 243', '2019-09-27 00:29:41', '2019-09-27 00:29:41'),
(381, 4, 'sale', 244, '83.95', '32.00', '115.95', 'label fee for order - ID: 244', '2019-10-01 15:32:13', '2019-10-01 15:32:13'),
(382, 4, 'checkout', 352, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 352', '2019-10-04 04:59:19', '2019-10-04 04:59:19'),
(383, 4, 'checkout', 353, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 353', '2019-10-04 04:59:45', '2019-10-04 04:59:45'),
(384, 4, 'sale', 245, '36.90', '32.00', '68.90', 'label fee for order - ID: 245', '2019-10-04 12:37:09', '2019-10-04 12:37:09'),
(385, 4, 'checkout', 351, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 351', '2019-10-06 16:01:48', '2019-10-06 16:01:48'),
(386, 4, 'checkout', 354, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 354', '2019-10-11 18:39:10', '2019-10-11 18:39:10'),
(389, 4, 'checkout', 355, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 355', '2019-10-17 19:43:28', '2019-10-17 19:43:28'),
(390, 4, 'sale', 247, '26.62', '32.00', '58.62', 'label fee for order - ID: 247', '2019-10-17 19:43:40', '2019-10-17 19:43:40'),
(392, 4, 'checkout', 356, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 356', '2019-10-19 03:06:55', '2019-10-19 03:06:55'),
(394, 4, 'sale', 249, '32.37', '32.00', '64.37', 'label fee for order - ID: 249', '2019-11-18 15:23:58', '2019-11-18 15:23:58'),
(395, 4, 'sale', 252, '124.08', '32.00', '156.08', 'label fee for order - ID: 252', '2019-12-02 23:47:23', '2019-12-02 23:47:23'),
(396, 4, 'sale', 253, '32.37', '32.00', '64.37', 'label fee for order - ID: 253', '2019-12-03 15:57:25', '2019-12-03 15:57:25'),
(397, 4, 'checkout', 359, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 359', '2019-12-05 12:20:07', '2019-12-05 12:20:07'),
(398, 4, 'checkout', 358, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 358', '2019-12-05 12:20:18', '2019-12-05 12:20:18'),
(399, 4, 'sale', 254, '124.08', '32.00', '156.08', 'label fee for order - ID: 254', '2019-12-18 02:33:12', '2019-12-18 02:33:12'),
(400, 4, 'sale', 255, '37.90', '32.00', '69.90', 'label fee for order - ID: 255', '2019-12-18 02:35:18', '2019-12-18 02:35:18'),
(401, 4, 'checkout', 360, '0.00', '8.00', '8.00', 'transaction for checkout - ID: 360', '2019-12-26 15:24:21', '2019-12-26 15:24:21'),
(402, 4, 'checkout', 361, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 361', '2019-12-26 15:24:26', '2019-12-26 15:24:26'),
(403, 4, 'sale', 256, '37.90', '32.00', '69.90', 'label fee for order - ID: 256', '2020-01-02 01:25:28', '2020-01-02 01:25:28'),
(404, 4, 'sale', 257, '30.05', '32.00', '62.05', 'label fee for order - ID: 257', '2020-02-04 21:23:14', '2020-02-04 21:23:14'),
(405, 4, 'sale', 258, '44.42', '32.00', '76.42', 'label fee for order - ID: 258', '2020-02-04 21:23:33', '2020-02-04 21:23:33'),
(406, 4, 'sale', 259, '46.91', '32.00', '78.91', 'label fee for order - ID: 259', '2020-03-05 11:01:48', '2020-03-05 11:01:48'),
(407, 4, 'sale', 261, '49.15', '32.00', '81.15', 'label fee for order - ID: 261', '2020-03-09 10:46:38', '2020-03-09 10:46:38'),
(408, 4, 'sale', 262, '43.94', '32.00', '75.94', 'label fee for order - ID: 262', '2020-03-16 09:51:27', '2020-03-16 09:51:27'),
(409, 8, 'sale', 263, '19.27', '1.60', '20.87', 'label fee for order - ID: 263  store order ID: Ling#184750', '2020-03-26 19:35:30', '2020-03-26 19:35:30'),
(413, 8, NULL, NULL, '12.10', '3.00', '15.10', '391418487248', '2020-03-29 11:09:18', '2020-03-29 11:13:41'),
(414, 8, NULL, NULL, '21.44', '2.50', '23.94', '391364950608', '2020-03-29 11:11:08', '2020-03-29 11:14:02'),
(415, 8, NULL, NULL, '21.44', '2.50', '23.94', '391418531866', '2020-03-29 11:11:53', '2020-03-29 11:11:53'),
(416, 8, NULL, NULL, '18.20', '2.50', '20.70', '391418549412', '2020-03-29 11:12:40', '2020-03-29 11:12:40'),
(417, 8, NULL, NULL, '21.44', '2.50', '23.94', '391418559880\r\n', '2020-03-29 11:13:09', '2020-03-29 11:13:09'),
(418, 4, 'sale', 266, '35.91', '32.00', '67.91', 'label fee for order - ID: 266', '2020-03-30 06:00:48', '2020-03-30 06:00:48'),
(419, 8, 'sale', 267, '24.94', '1.60', '26.54', '', '2020-04-01 01:37:29', '2020-04-01 01:37:29'),
(420, 4, 'checkout', 362, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 362', '2020-04-01 03:16:14', '2020-04-01 03:16:14'),
(421, 8, 'sale', 269, '20.55', '2.50', '23.05', '', '2020-04-02 01:18:39', '2020-04-02 01:18:39'),
(422, 8, 'sale', 268, '19.50', '2.50', '22.00', '', '2020-04-02 01:18:45', '2020-04-02 01:18:45'),
(423, 8, 'sale', 271, '19.50', '2.50', '22.00', 'label fee for order - ID: 271', '2020-04-02 01:38:04', '2020-04-02 01:38:04'),
(424, 8, 'sale', 271, '19.50', '2.50', '22.00', 'label fee for order - ID: 271', '2020-04-02 02:01:52', '2020-04-02 02:01:52'),
(425, 8, 'sale', 276, '17.45', '2.50', '19.95', 'label fee for order - ID: 276', '2020-04-03 10:24:38', '2020-04-03 10:24:38'),
(426, 8, 'sale', 275, '15.86', '2.50', '18.36', 'label fee for order - ID: 275', '2020-04-03 10:24:52', '2020-04-03 10:24:52'),
(427, 8, 'sale', 274, '19.03', '2.50', '21.53', 'label fee for order - ID: 274', '2020-04-03 10:25:03', '2020-04-03 10:25:03'),
(428, 8, 'sale', 273, '28.49', '2.50', '30.99', 'label fee for order - ID: 273', '2020-04-03 10:25:15', '2020-04-03 10:25:15'),
(429, 8, 'sale', 272, '24.94', '2.50', '27.44', 'label fee for order - ID: 272', '2020-04-03 10:25:24', '2020-04-03 10:25:24'),
(430, 8, 'sale', 278, '15.86', '2.50', '18.36', 'label fee for order - ID: 278', '2020-04-05 20:25:35', '2020-04-05 20:25:35'),
(431, 8, 'sale', 277, '13.66', '2.50', '16.16', 'label fee for order - ID: 277', '2020-04-05 20:25:46', '2020-04-05 20:25:46'),
(432, 8, 'sale', 280, '25.56', '2.50', '28.06', 'label fee for order - ID: 280', '2020-04-06 09:59:00', '2020-04-06 09:59:00'),
(433, 8, 'sale', 279, '25.56', '2.50', '28.06', 'label fee for order - ID: 279', '2020-04-06 10:01:36', '2020-04-06 10:01:36'),
(434, 8, 'sale', 283, '10.83', '2.50', '13.33', '', '2020-04-06 23:04:00', '2020-04-06 23:04:00'),
(435, 8, 'sale', 285, '10.83', '2.50', '13.33', '', '2020-04-07 19:33:50', '2020-04-07 19:33:50'),
(436, 8, 'sale', 284, '27.69', '2.50', '30.19', '', '2020-04-07 19:33:55', '2020-04-07 19:33:55'),
(437, 8, 'sale', 287, '10.89', '2.50', '13.39', '', '2020-04-07 23:29:42', '2020-04-07 23:29:42'),
(438, 8, 'sale', 286, '12.41', '2.50', '14.91', '', '2020-04-07 23:29:47', '2020-04-07 23:29:47'),
(439, 4, 'sale', 281, '49.28', '32.00', '81.28', 'label fee for order - ID: 281', '2020-04-08 01:26:58', '2020-04-08 01:26:58'),
(440, 4, 'sale', 282, '26.37', '32.00', '58.37', 'label fee for order - ID: 282', '2020-04-08 01:27:25', '2020-04-08 01:27:25'),
(441, 4, 'sale', 288, '14.51', '32.00', '46.51', 'label fee for order - ID: 288', '2020-04-08 17:00:10', '2020-04-08 17:00:10'),
(442, 4, NULL, NULL, '11.07', '14.00', '25.07', 'label fee for order - ID: 288', '2020-04-08 17:13:55', '2020-04-08 20:00:24'),
(443, 4, 'checkout', 363, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 363', '2020-04-08 20:24:34', '2020-04-08 20:24:34'),
(444, 4, 'checkout', 364, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 364', '2020-04-08 20:24:40', '2020-04-08 20:24:40'),
(447, 4, 'checkout', 365, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 365', '2020-04-08 20:31:56', '2020-04-08 20:31:56'),
(448, 4, 'checkout', 366, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 366', '2020-04-08 20:32:02', '2020-04-08 20:32:02'),
(449, 4, 'checkout', 367, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 367', '2020-04-08 20:36:47', '2020-04-08 20:36:47'),
(450, 4, 'checkout', 368, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 368', '2020-04-08 20:36:52', '2020-04-08 20:36:52'),
(451, 4, 'checkout', 370, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 370', '2020-04-08 20:37:06', '2020-04-08 20:37:06'),
(452, 4, 'checkout', 369, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 369', '2020-04-08 20:37:12', '2020-04-08 20:37:12'),
(453, 8, 'sale', 294, '25.56', '2.50', '28.06', 'label fee for order - ID: 294', '2020-04-09 20:11:13', '2020-04-09 20:11:13'),
(454, 8, 'sale', 289, '18.73', '2.50', '21.23', 'label fee for order - ID: 289', '2020-04-09 20:14:51', '2020-04-09 20:14:51'),
(455, 8, 'sale', 296, '20.51', '2.50', '23.01', 'label fee for order - ID: 296', '2020-04-09 20:15:09', '2020-04-09 20:15:09'),
(456, 8, 'sale', 292, '24.90', '2.50', '27.40', 'label fee for order - ID: 292', '2020-04-09 20:15:15', '2020-04-09 20:15:15'),
(457, 8, 'sale', 291, '15.16', '2.50', '17.66', 'label fee for order - ID: 291', '2020-04-09 20:15:19', '2020-04-09 20:15:19'),
(458, 8, 'sale', 295, '25.56', '2.50', '28.06', 'label fee for order - ID: 295', '2020-04-09 20:21:47', '2020-04-09 20:21:47'),
(459, 8, 'sale', 293, '25.56', '2.50', '28.06', 'label fee for order - ID: 293', '2020-04-09 20:22:39', '2020-04-09 20:22:39'),
(460, 8, 'sale', 290, '17.41', '2.50', '19.91', 'label fee for order - ID: 290', '2020-04-09 20:23:43', '2020-04-09 20:23:43'),
(461, 8, 'sale', 297, '22.34', '2.50', '24.84', '', '2020-04-10 19:35:57', '2020-04-10 19:35:57'),
(462, 8, 'sale', 300, '25.56', '2.50', '28.06', '', '2020-04-10 19:36:02', '2020-04-10 19:36:02'),
(463, 8, 'sale', 298, '25.56', '2.50', '28.06', '', '2020-04-10 19:36:10', '2020-04-10 19:36:10'),
(464, 8, 'sale', 299, '15.16', '2.50', '17.66', '', '2020-04-10 19:36:16', '2020-04-10 19:36:16'),
(465, 8, 'sale', 301, '19.47', '2.50', '21.97', '', '2020-04-12 18:13:11', '2020-04-12 18:13:11'),
(466, 8, 'sale', 302, '27.69', '2.50', '30.19', '', '2020-04-12 18:26:12', '2020-04-12 18:26:12'),
(467, 8, 'sale', 308, '19.47', '2.50', '21.97', '', '2020-04-12 19:51:44', '2020-04-12 19:51:44'),
(468, 8, 'sale', 307, '25.56', '2.50', '28.06', '', '2020-04-12 20:20:04', '2020-04-12 20:20:04'),
(469, 8, 'sale', 306, '18.73', '2.50', '21.23', '', '2020-04-12 20:25:38', '2020-04-12 20:25:38'),
(470, 4, 'sale', 305, '38.88', '32.00', '70.88', 'label fee for order - ID: 305', '2020-04-13 10:54:26', '2020-04-13 10:54:26'),
(471, 4, 'sale', 303, '39.36', '32.00', '71.36', 'label fee for order - ID: 303', '2020-04-13 10:58:11', '2020-04-13 10:58:11'),
(473, 8, 'sale', 311, '20.46', '2.50', '22.96', '', '2020-04-13 22:35:40', '2020-04-13 22:35:40'),
(474, 8, 'sale', 310, '13.66', '2.50', '16.16', '', '2020-04-13 22:36:21', '2020-04-13 22:36:21'),
(475, 8, 'sale', 309, '10.80', '2.50', '13.30', '', '2020-04-13 22:36:48', '2020-04-13 22:36:48'),
(476, 8, 'sale', 311, '20.46', '2.50', '22.96', '', '2020-04-13 22:53:31', '2020-04-13 22:53:31'),
(477, 8, 'sale', 314, '10.89', '2.50', '13.39', '', '2020-04-14 18:22:27', '2020-04-14 18:22:27'),
(478, 8, 'sale', 315, '13.61', '2.50', '16.11', '', '2020-04-14 18:47:49', '2020-04-14 18:47:49'),
(479, 8, 'sale', 313, '20.46', '2.50', '22.96', '', '2020-04-14 19:17:52', '2020-04-14 19:17:52'),
(480, 8, 'sale', 316, '25.50', '2.50', '28.00', '', '2020-04-14 23:45:08', '2020-04-14 23:45:08'),
(481, 8, 'sale', 319, '13.61', '2.50', '16.11', 'label fee for order - ID: 319', '2020-04-16 01:29:22', '2020-04-16 01:29:22'),
(482, 8, 'sale', 336, '19.42', '2.50', '21.92', 'label fee for order - ID: 336', '2020-04-16 11:23:13', '2020-04-16 11:23:13'),
(483, 8, 'sale', 335, '21.98', '2.50', '24.48', 'label fee for order - ID: 335', '2020-04-16 11:23:29', '2020-04-16 11:23:29'),
(484, 8, 'sale', 332, '21.98', '2.50', '24.48', 'label fee for order - ID: 332', '2020-04-16 11:23:34', '2020-04-16 11:23:34'),
(485, 8, 'sale', 331, '10.87', '2.50', '13.37', 'label fee for order - ID: 331', '2020-04-16 11:23:40', '2020-04-16 11:23:40'),
(486, 8, 'sale', 333, '13.61', '2.50', '16.11', 'label fee for order - ID: 333', '2020-04-16 11:23:46', '2020-04-16 11:23:46'),
(488, 8, 'sale', 334, '25.71', '2.50', '28.21', 'label fee for order - ID: 334', '2020-04-16 11:23:57', '2020-04-16 11:23:57'),
(489, 8, 'sale', 327, '17.10', '2.50', '19.60', 'label fee for order - ID: 327', '2020-04-16 11:24:04', '2020-04-16 11:24:04'),
(490, 8, 'sale', 329, '18.69', '2.50', '21.19', 'label fee for order - ID: 329', '2020-04-16 11:24:10', '2020-04-16 11:24:10'),
(491, 8, 'sale', 330, '19.38', '2.50', '21.88', 'label fee for order - ID: 330', '2020-04-16 11:24:15', '2020-04-16 11:24:15'),
(492, 8, 'sale', 326, '20.63', '2.50', '23.13', 'label fee for order - ID: 326', '2020-04-16 11:24:54', '2020-04-16 11:24:54'),
(493, 8, 'sale', 325, '25.71', '2.50', '28.21', 'label fee for order - ID: 325', '2020-04-16 11:24:59', '2020-04-16 11:24:59'),
(494, 8, 'sale', 321, '10.89', '2.50', '13.39', 'label fee for order - ID: 321', '2020-04-16 11:25:04', '2020-04-16 11:25:04'),
(495, 8, 'sale', 322, '27.85', '2.50', '30.35', 'label fee for order - ID: 322', '2020-04-16 11:25:09', '2020-04-16 11:25:09'),
(496, 8, 'sale', 320, '10.80', '2.50', '13.30', 'label fee for order - ID: 320', '2020-04-16 11:25:14', '2020-04-16 11:25:14'),
(497, 8, 'sale', 323, '25.50', '2.50', '28.00', 'label fee for order - ID: 323', '2020-04-16 11:25:20', '2020-04-16 11:25:20'),
(498, 8, 'sale', 324, '25.71', '2.50', '28.21', 'label fee for order - ID: 324', '2020-04-16 11:25:25', '2020-04-16 11:25:25'),
(499, 4, 'sale', 318, '49.59', '32.00', '81.59', 'label fee for order - ID: 318', '2020-04-16 11:38:35', '2020-04-16 11:38:35'),
(500, 4, 'sale', 317, '39.36', '32.00', '71.36', 'label fee for order - ID: 317', '2020-04-16 11:38:45', '2020-04-16 11:38:45'),
(501, 8, 'sale', 328, '21.55', '2.50', '24.05', 'label fee for order - ID: 328', '2020-04-16 12:24:49', '2020-04-16 12:24:49'),
(502, 4, 'sale', 304, '38.88', '32.00', '70.88', 'label fee for order - ID: 304', '2020-04-16 14:21:53', '2020-04-16 14:21:53'),
(503, 8, 'sale', 341, '15.13', '2.50', '17.63', 'label fee for order - ID: 341', '2020-04-16 21:44:18', '2020-04-16 21:44:18'),
(504, 8, 'sale', 339, '25.50', '2.50', '28.00', 'label fee for order - ID: 339', '2020-04-16 21:45:34', '2020-04-16 21:45:34'),
(505, 8, 'sale', 338, '25.50', '2.50', '28.00', 'label fee for order - ID: 338', '2020-04-16 21:47:58', '2020-04-16 21:47:58'),
(506, 8, 'sale', 337, '10.06', '2.50', '12.56', 'label fee for order - ID: 337', '2020-04-16 21:48:04', '2020-04-16 21:48:04'),
(507, 8, 'sale', 340, '25.50', '2.50', '28.00', 'label fee for order - ID: 340', '2020-04-16 21:53:40', '2020-04-16 21:53:40'),
(508, 8, 'sale', 342, '17.91', '2.50', '20.41', 'label fee for order - ID: 342', '2020-04-16 23:49:22', '2020-04-16 23:49:22');
INSERT INTO `transaction` (`id`, `client_id`, `type`, `type_id`, `cost`, `markup`, `amount`, `comment`, `date_added`, `date_modified`) VALUES
(509, 8, 'sale', 343, '17.01', '2.50', '19.51', 'label fee for order - ID: 343', '2020-04-16 23:59:32', '2020-04-16 23:59:32'),
(510, 8, 'sale', 344, '17.39', '2.50', '19.89', 'label fee for order - ID: 344', '2020-04-17 01:25:01', '2020-04-17 01:25:01'),
(511, 8, 'sale', 347, '15.13', '2.50', '17.63', 'label fee for order - ID: 347', '2020-04-17 18:25:10', '2020-04-17 18:25:10'),
(512, 8, 'sale', 346, '19.42', '2.50', '21.92', 'label fee for order - ID: 346', '2020-04-17 18:25:17', '2020-04-17 18:25:17'),
(513, 8, 'sale', 345, '20.46', '2.50', '22.96', 'label fee for order - ID: 345', '2020-04-17 18:25:23', '2020-04-17 18:25:23'),
(514, 8, 'sale', 348, '25.71', '2.50', '28.21', 'label fee for order - ID: 348', '2020-04-17 21:53:00', '2020-04-17 21:53:00'),
(515, 8, 'sale', 350, '25.50', '2.50', '28.00', 'label fee for order - ID: 350', '2020-04-18 00:20:35', '2020-04-18 00:20:35'),
(516, 8, 'sale', 349, '10.80', '2.50', '13.30', 'label fee for order - ID: 349', '2020-04-18 00:20:50', '2020-04-18 00:20:50'),
(517, 8, 'sale', 352, '22.03', '2.50', '24.53', 'label fee for order - ID: 352', '2020-04-18 18:45:08', '2020-04-18 18:45:08'),
(518, 8, 'sale', 351, '21.54', '2.50', '24.04', 'label fee for order - ID: 351', '2020-04-18 18:45:54', '2020-04-18 18:45:54'),
(519, 8, 'sale', 353, '19.42', '2.50', '21.92', '', '2020-04-19 18:39:26', '2020-04-19 18:39:26'),
(520, 8, 'sale', 354, '9.38', '2.50', '11.88', '', '2020-04-19 18:49:53', '2020-04-19 18:49:53'),
(521, 8, 'sale', 356, '19.42', '2.50', '21.92', '', '2020-04-19 18:52:32', '2020-04-19 18:52:32'),
(522, 8, 'sale', 372, '18.84', '2.50', '21.34', 'label fee for order - ID: 372', '2020-04-19 23:30:00', '2020-04-19 23:30:00'),
(523, 8, 'sale', 371, '25.50', '2.50', '28.00', 'label fee for order - ID: 371', '2020-04-19 23:30:05', '2020-04-19 23:30:05'),
(524, 8, 'sale', 369, '27.62', '2.50', '30.12', 'label fee for order - ID: 369', '2020-04-19 23:30:09', '2020-04-19 23:30:09'),
(525, 8, 'sale', 368, '10.80', '2.50', '13.30', 'label fee for order - ID: 368', '2020-04-19 23:30:12', '2020-04-19 23:30:12'),
(526, 8, 'sale', 370, '25.71', '2.50', '28.21', 'label fee for order - ID: 370', '2020-04-19 23:30:18', '2020-04-19 23:30:18'),
(527, 8, 'sale', 367, '25.50', '2.50', '28.00', 'label fee for order - ID: 367', '2020-04-19 23:30:22', '2020-04-19 23:30:22'),
(528, 8, 'sale', 366, '22.28', '2.50', '24.78', 'label fee for order - ID: 366', '2020-04-19 23:30:26', '2020-04-19 23:30:26'),
(529, 8, 'sale', 363, '21.72', '2.50', '24.22', 'label fee for order - ID: 363', '2020-04-19 23:30:29', '2020-04-19 23:30:29'),
(530, 8, 'sale', 365, '24.84', '2.50', '27.34', 'label fee for order - ID: 365', '2020-04-19 23:30:33', '2020-04-19 23:30:33'),
(531, 8, 'sale', 364, '19.42', '2.50', '21.92', 'label fee for order - ID: 364', '2020-04-19 23:30:37', '2020-04-19 23:30:37'),
(532, 8, 'sale', 362, '25.50', '2.50', '28.00', 'label fee for order - ID: 362', '2020-04-19 23:30:46', '2020-04-19 23:30:46'),
(533, 8, 'sale', 361, '10.80', '2.50', '13.30', 'label fee for order - ID: 361', '2020-04-19 23:30:55', '2020-04-19 23:30:55'),
(534, 8, 'sale', 360, '19.58', '2.50', '22.08', 'label fee for order - ID: 360', '2020-04-19 23:31:10', '2020-04-19 23:31:10'),
(535, 8, 'sale', 359, '25.50', '2.50', '28.00', 'label fee for order - ID: 359', '2020-04-19 23:31:19', '2020-04-19 23:31:19'),
(536, 8, 'sale', 358, '19.42', '2.50', '21.92', 'label fee for order - ID: 358', '2020-04-19 23:31:23', '2020-04-19 23:31:23'),
(537, 4, 'sale', 357, '51.73', '32.00', '83.73', 'label fee for order - ID: 357', '2020-04-19 23:31:31', '2020-04-19 23:31:31'),
(538, 8, 'sale', 373, '7.75', '2.50', '10.25', 'label fee for order - ID: 373', '2020-04-20 09:35:06', '2020-04-20 09:35:06'),
(539, 8, 'sale', 355, '12.49', '2.50', '14.99', 'label fee for order - ID: 355', '2020-04-20 09:35:15', '2020-04-20 09:35:15'),
(540, 8, 'sale', 375, '24.10', '2.50', '26.60', 'label fee for order - ID: 375', '2020-04-20 18:45:52', '2020-04-20 18:45:52'),
(541, 8, 'sale', 376, '10.80', '2.50', '13.30', 'label fee for order - ID: 376', '2020-04-20 18:53:00', '2020-04-20 18:53:00'),
(542, 8, 'sale', 377, '19.42', '2.50', '21.92', 'label fee for order - ID: 377', '2020-04-20 18:53:24', '2020-04-20 18:53:24'),
(543, 8, 'sale', 378, '25.50', '2.50', '28.00', 'label fee for order - ID: 378', '2020-04-20 18:53:32', '2020-04-20 18:53:32'),
(544, 8, 'sale', 379, '20.46', '2.50', '22.96', 'label fee for order - ID: 379', '2020-04-20 18:53:37', '2020-04-20 18:53:37'),
(546, 8, 'sale', 381, '10.80', '2.50', '13.30', 'label fee for order - ID: 381', '2020-04-22 01:58:33', '2020-04-22 01:58:33'),
(547, 8, 'sale', 382, '24.10', '2.50', '26.60', 'label fee for order - ID: 382', '2020-04-22 01:59:13', '2020-04-22 01:59:13'),
(548, 8, 'sale', 388, '21.54', '2.50', '24.04', 'label fee for order - ID: 388', '2020-04-22 02:04:18', '2020-04-22 02:04:18'),
(549, 8, 'sale', 387, '28.36', '2.50', '30.86', 'label fee for order - ID: 387', '2020-04-22 02:07:16', '2020-04-22 02:07:16'),
(550, 8, 'sale', 386, '21.54', '2.50', '24.04', 'label fee for order - ID: 386', '2020-04-22 02:07:45', '2020-04-22 02:07:45'),
(551, 8, 'sale', 385, '24.84', '2.50', '27.34', 'label fee for order - ID: 385', '2020-04-22 02:09:24', '2020-04-22 02:09:24'),
(552, 8, 'sale', 384, '18.69', '2.50', '21.19', 'label fee for order - ID: 384', '2020-04-22 02:10:10', '2020-04-22 02:10:10'),
(553, 8, 'sale', 383, '25.50', '2.50', '28.00', 'label fee for order - ID: 383', '2020-04-22 02:11:59', '2020-04-22 02:11:59'),
(554, 8, 'sale', 393, '18.69', '2.50', '21.19', '??#:393???', '2020-04-23 00:07:48', '2020-04-23 00:07:48'),
(555, 8, 'sale', 392, '19.96', '2.50', '22.46', '??#:392???', '2020-04-23 00:09:01', '2020-04-23 00:09:01'),
(556, 4, 'checkout', 373, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 373', '2020-04-23 02:48:10', '2020-04-23 02:48:10'),
(557, 4, 'checkout', 372, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 372', '2020-04-23 02:48:16', '2020-04-23 02:48:16'),
(558, 4, 'checkout', 371, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 371', '2020-04-23 02:48:47', '2020-04-23 02:48:47'),
(559, 4, 'sale', 396, '51.30', '32.00', '83.30', 'label fee for order - ID: 396', '2020-04-23 09:35:22', '2020-04-23 09:35:22'),
(560, 4, 'sale', 395, '44.02', '32.00', '76.02', 'label fee for order - ID: 395', '2020-04-23 09:35:44', '2020-04-23 09:35:44'),
(561, 4, 'checkout', 374, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 374', '2020-04-23 10:28:57', '2020-04-23 10:28:57'),
(562, 4, 'checkout', 375, '0.00', '6.00', '6.00', 'transaction for checkout - ID: 375', '2020-04-23 10:29:03', '2020-04-23 10:29:03'),
(563, 8, NULL, NULL, '1000.00', '100000.00', '5000000.00', '', '2020-06-04 05:08:14', '2020-06-04 05:08:14');

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
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `version` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`version`) VALUES
('1.41');

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
(4, 'HuaLongUSA', '15737 E VALLEY BLVD', 'City Of Industry', 'CA', 'US', '91744', '0000-00-00 00:00:00', '2019-05-17 13:37:12');

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
-- Indexes for table `client_address`
--
ALTER TABLE `client_address`
  ADD PRIMARY KEY (`client_address_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23192;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

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
-- AUTO_INCREMENT for table `checkout_label`
--
ALTER TABLE `checkout_label`
  MODIFY `checkout_label_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_product`
--
ALTER TABLE `checkout_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_address`
--
ALTER TABLE `client_address`
  MODIFY `client_address_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `product_fee`
--
ALTER TABLE `product_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `sale_label`
--
ALTER TABLE `sale_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25480;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_sync`
--
ALTER TABLE `store_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `store_sync_history`
--
ALTER TABLE `store_sync_history`
  MODIFY `store_sync_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

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
