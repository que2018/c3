-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 04:44 AM
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
(13595, 1, '::1', 'log/activity_log', 'view the activity log page', 'GET', '2020-02-02 23:27:31'),
(13596, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-02 23:28:09'),
(13597, NULL, '::1', 'common/login', 'view the login page', 'GET', '2020-02-03 01:38:32'),
(13598, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-03 01:38:38'),
(13599, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:38:38'),
(13600, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:39:45'),
(13601, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:40:03'),
(13602, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:40:59'),
(13603, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:41:16'),
(13604, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:42:36'),
(13605, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:42:37'),
(13606, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:42:38'),
(13607, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:44:47'),
(13608, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:45:00'),
(13609, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:45:16'),
(13610, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:45:25'),
(13611, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-02-03 01:45:58'),
(13612, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:46:00'),
(13613, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:46:04'),
(13614, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:48:31'),
(13615, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:48:45'),
(13616, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:48:47'),
(13617, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:49:35'),
(13618, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:49:39'),
(13619, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:49:46'),
(13620, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:49:54'),
(13621, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:51:45'),
(13622, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:51:47'),
(13623, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:51:56'),
(13624, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:52:02'),
(13625, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:52:09'),
(13626, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:53:11'),
(13627, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:53:13'),
(13628, 1, '::1', 'fba/fba_warehouse/upload', '0', 'GET', '2020-02-03 01:53:26'),
(13629, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:53:36'),
(13630, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:54:38'),
(13631, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:55:49'),
(13632, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:55:51'),
(13633, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-03 01:56:30'),
(13634, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-03 01:56:34'),
(13635, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:56:35'),
(13636, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:57:35'),
(13637, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:58:38'),
(13638, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:58:40'),
(13639, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:58:43'),
(13640, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:58:43'),
(13641, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:58:46'),
(13642, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:59:16'),
(13643, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:59:20'),
(13644, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 01:59:46'),
(13645, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:59:56'),
(13646, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-03 01:59:57'),
(13647, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-03 01:59:59'),
(13648, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-03 02:00:29'),
(13649, 1, '::1', 'warehouse/warehouse', 'view the warehouse page', 'GET', '2020-02-03 02:00:34'),
(13650, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-03 02:00:36'),
(13651, NULL, '::1', '', 'view the dashboard', 'GET', '2020-02-05 05:55:38'),
(13652, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-05 05:55:44'),
(13653, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-05 05:55:44'),
(13654, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 05:55:51'),
(13655, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-05 05:56:00'),
(13656, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 05:56:03'),
(13657, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 05:56:10'),
(13658, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 05:56:10'),
(13659, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 05:57:40'),
(13660, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-05 05:57:44'),
(13661, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 05:57:46'),
(13662, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 05:57:54'),
(13663, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 05:58:00'),
(13664, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-05 05:58:38'),
(13665, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 05:58:40'),
(13666, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 06:00:41'),
(13667, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 06:00:46'),
(13668, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-05 06:03:47'),
(13669, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-05 06:03:48'),
(13670, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-05 06:05:59'),
(13671, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-02-05 06:24:03'),
(13672, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-02-05 06:24:03'),
(13673, 1, '::1', 'sale/sale', 'view the order page', 'GET', '2020-02-05 06:24:06'),
(13674, NULL, '127.0.0.1', '', 'view the dashboard', 'GET', '2020-02-06 04:59:58'),
(13675, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-06 05:04:24'),
(13676, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-06 05:04:24'),
(13677, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:04:30'),
(13678, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:04:35'),
(13679, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:04:38'),
(13680, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:04:56'),
(13681, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:04:58'),
(13682, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:05:09'),
(13683, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:05:52'),
(13684, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:05:54'),
(13685, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-06 05:07:57'),
(13686, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:08:02'),
(13687, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:22:49'),
(13688, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:23:29'),
(13689, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:24:52'),
(13690, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:24:57'),
(13691, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:24:59'),
(13692, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:25:09'),
(13693, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:25:11'),
(13694, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:25:43'),
(13695, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:25:48'),
(13696, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:25:50'),
(13697, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:25:55'),
(13698, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:27:04'),
(13699, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:27:06'),
(13700, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:27:11'),
(13701, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:27:52'),
(13702, 1, '::1', 'fba/fba_warehouse/import', '0', 'GET', '2020-02-06 05:27:54'),
(13703, 1, '::1', 'fba/fba_warehouse/upload', '0', 'POST', '2020-02-06 05:27:55'),
(13704, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-06 05:28:12'),
(13705, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-06 05:28:15'),
(13706, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-06 05:28:22'),
(13707, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-06 05:28:27'),
(13708, NULL, '::1', '', 'view the dashboard', 'GET', '2020-02-09 00:07:55'),
(13709, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-09 00:08:01'),
(13710, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-09 00:08:01'),
(13711, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-09 00:08:06'),
(13712, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-09 00:08:07'),
(13713, 1, '::1', 'fba/fba_warehouse/delete', '0', 'GET', '2020-02-09 00:08:12'),
(13714, 1, '::1', 'fba/fba_warehouse/reload', '0', 'GET', '2020-02-09 00:08:12'),
(13715, 1, '::1', 'fba/fba_warehouse/add', '0', 'GET', '2020-02-09 00:08:15'),
(13716, 1, '::1', 'fba/fba_warehouse/add', '0', 'POST', '2020-02-09 00:08:19'),
(13717, 1, '::1', 'fba/fba_warehouse/add', '0', 'POST', '2020-02-09 00:09:24'),
(13718, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-09 00:09:24'),
(13719, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-09 00:09:29'),
(13720, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-09 00:09:30'),
(13721, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-09 00:09:31'),
(13722, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-09 00:09:32'),
(13723, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-09 00:09:37'),
(13724, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-09 00:09:38'),
(13725, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-09 00:09:38'),
(13726, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-09 00:09:41'),
(13727, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-09 00:09:42'),
(13728, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-09 00:09:43'),
(13729, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-09 00:09:43'),
(13730, NULL, '::1', '', 'view the dashboard', 'GET', '2020-02-13 23:13:00'),
(13731, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-13 23:13:06'),
(13732, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-13 23:13:06'),
(13733, 1, '::1', 'check/checkin', 'view the checkin page', 'GET', '2020-02-13 23:13:42'),
(13734, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:13:43'),
(13735, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-13 23:13:45'),
(13736, 1, '::1', 'fba/fba_warehouse/edit', '0', 'GET', '2020-02-13 23:13:51'),
(13737, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-13 23:13:52'),
(13738, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:13:58'),
(13739, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:14:00'),
(13740, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:14:17'),
(13741, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-13 23:14:18'),
(13742, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-13 23:16:16'),
(13743, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-13 23:16:18'),
(13744, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-13 23:16:18'),
(13745, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-13 23:16:26'),
(13746, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-13 23:16:26'),
(13747, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-13 23:16:45'),
(13748, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-13 23:16:51'),
(13749, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-13 23:16:51'),
(13750, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:17:45'),
(13751, 1, '::1', 'fba/fba_warehouse', '0', 'GET', '2020-02-13 23:17:45'),
(13752, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:17:56'),
(13753, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:17:58'),
(13754, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:26:54'),
(13755, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:26:57'),
(13756, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:27:32'),
(13757, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:27:48'),
(13758, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:28:20'),
(13759, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:31:32'),
(13760, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:31:51'),
(13761, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:32:00'),
(13762, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:32:09'),
(13763, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:32:53'),
(13764, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:33:00'),
(13765, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:33:29'),
(13766, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:35:03'),
(13767, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-13 23:37:29'),
(13768, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:37:31'),
(13769, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:38:46'),
(13770, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:39:00'),
(13771, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:39:01'),
(13772, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:39:02'),
(13773, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:39:09'),
(13774, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:43:43'),
(13775, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:45:17'),
(13776, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:45:19'),
(13777, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:46:12'),
(13778, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:46:15'),
(13779, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:46:18'),
(13780, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:46:30'),
(13781, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:47:33'),
(13782, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:51:00'),
(13783, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-13 23:51:37'),
(13784, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-13 23:51:42'),
(13785, NULL, '::1', '', 'view the dashboard', 'GET', '2020-02-16 00:00:29'),
(13786, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-16 00:00:34'),
(13787, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-16 00:00:34'),
(13788, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:07:00'),
(13789, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:07:03'),
(13790, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:07:05'),
(13791, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:12:14'),
(13792, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:14:03'),
(13793, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:14:15'),
(13794, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:14:16'),
(13795, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:15:08'),
(13796, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:20:04'),
(13797, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:20:48'),
(13798, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:20:59'),
(13799, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:22:13'),
(13800, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:22:34'),
(13801, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:22:35'),
(13802, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:28:49'),
(13803, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:29:02'),
(13804, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:29:25'),
(13805, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:29:45'),
(13806, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:31:02'),
(13807, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:31:29'),
(13808, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:33:18'),
(13809, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:34:42'),
(13810, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:34:53'),
(13811, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:35:24'),
(13812, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:35:53'),
(13813, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:35:54'),
(13814, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:35:55'),
(13815, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:40:24'),
(13816, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:40:28'),
(13817, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:40:28'),
(13818, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:40:28'),
(13819, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:40:30'),
(13820, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:40:33'),
(13821, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:40:33'),
(13822, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:40:33'),
(13823, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:40:35'),
(13824, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:40:39'),
(13825, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:40:39'),
(13826, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:40:39'),
(13827, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:40:41'),
(13828, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:47:54'),
(13829, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:47:58'),
(13830, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:47:58'),
(13831, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:47:58'),
(13832, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:48:07'),
(13833, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:48:11'),
(13834, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:48:11'),
(13835, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:48:11'),
(13836, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:50:29'),
(13837, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:50:59'),
(13838, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:53:06'),
(13839, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:53:20'),
(13840, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:56:18'),
(13841, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:56:20'),
(13842, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:56:25'),
(13843, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:56:25'),
(13844, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:56:25'),
(13845, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:56:26'),
(13846, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:56:32'),
(13847, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:57:36'),
(13848, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:57:38'),
(13849, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:57:42'),
(13850, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:57:42'),
(13851, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:57:42'),
(13852, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:57:44'),
(13853, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:57:48'),
(13854, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:57:48'),
(13855, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:57:49'),
(13856, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:57:50'),
(13857, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 00:57:54'),
(13858, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:57:54'),
(13859, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:57:54'),
(13860, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:57:56'),
(13861, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-02-16 00:58:00'),
(13862, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:58:00'),
(13863, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 00:58:04'),
(13864, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-02-16 00:58:28'),
(13865, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-02-16 00:58:31'),
(13866, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-16 00:58:33'),
(13867, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-16 00:58:35'),
(13868, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-16 00:58:43'),
(13869, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 00:58:43'),
(13870, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-02-16 00:58:45'),
(13871, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-02-16 01:01:31'),
(13872, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-02-16 01:01:46'),
(13873, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-02-16 01:01:47'),
(13874, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-16 01:01:49'),
(13875, 1, '::1', 'fba/fba_warehouse/autocomplete', '0', 'GET', '2020-02-16 01:01:50'),
(13876, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-02-16 01:01:59'),
(13877, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-02-16 01:01:59'),
(13878, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-16 01:01:59'),
(13879, NULL, '::1', '', 'view the dashboard', 'GET', '2020-02-23 04:07:16'),
(13880, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-02-23 04:07:23'),
(13881, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-02-23 04:07:23'),
(13882, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-02-23 04:07:31'),
(13883, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-02-23 04:08:20'),
(13884, 1, '::1', 'fba/fba', '0', 'GET', '2020-02-23 04:08:23'),
(13885, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-02-23 04:08:35'),
(13886, 1, '::1', 'check/checkout_sale', 'view the order checkout page', 'GET', '2020-02-23 04:11:39'),
(13887, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-02-23 04:11:41'),
(13888, 1, '::1', 'check/checkout_group', '0', 'GET', '2020-02-23 04:14:45'),
(13889, 1, '::1', 'check/checkout_group', '0', 'GET', '2020-02-23 04:21:02'),
(13890, 1, '::1', 'check/checkout_group', '0', 'GET', '2020-02-23 04:22:03');

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
(4, 4, '-114.18');

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
  `checkoug_group_id` int(11) DEFAULT NULL,
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

INSERT INTO `checkout` (`id`, `checkoug_group_id`, `code`, `location_id`, `tracking`, `status`, `width`, `length`, `height`, `weight`, `length_class_id`, `weight_class_id`, `shipping_provider`, `shipping_service`, `checkout_fee_code`, `label`, `note`, `description`, `date_added`, `date_modified`) VALUES
(182, NULL, '10000000000000182', 0, '', 2, '10.00', '20.00', '10.00', '10.00', 1, 5, 'usps', 'pr', 'checkout_weight', '', '', '', '2019-10-28 15:18:22', '2019-10-28 15:18:22'),
(183, NULL, '10000000000000183', 0, '', 2, '14.00', '13.00', '12.00', '27.00', 1, 5, 'jd', 'FEDEX_GRD', 'checkout_weight', '', '', '', '2019-12-15 14:43:04', '2019-12-15 14:43:04');

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
-- Table structure for table `checkout_group`
--

CREATE TABLE `checkout_group` (
  `checkout_group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(125, 'shipping', 'jd'),
(130, 'fee', 'fba_flat');

-- --------------------------------------------------------

--
-- Table structure for table `fba`
--

CREATE TABLE `fba` (
  `fba_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `import_method` varchar(32) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `fba_warehouse_id` int(11) NOT NULL,
  `fee_code` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `street` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(64) NOT NULL,
  `postcode` varchar(32) NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fba`
--

INSERT INTO `fba` (`fba_id`, `client_id`, `import_method`, `tracking`, `fba_warehouse_id`, `fee_code`, `type`, `street`, `city`, `state`, `postcode`, `note`, `status`, `date_added`, `date_modified`) VALUES
(39, 4, 'fba_air', '98896665205230', 0, '', 'fba_warehouse', '19097 Colima Road', 'Rowland Heights', 'California', '91748', '', 1, '2020-01-25 20:06:10', '2020-01-26 19:53:05'),
(40, 4, 'fba_ocean', '896665620478', 0, '', 'fba_warehouse', '19097 Colima Road', 'Rowland Heights', 'California', '91748', 'This is very very important order', 2, '2020-01-25 23:35:20', '2020-01-26 19:53:00'),
(42, 4, 'fba_air', '556845662000', 0, '', 'ups', '', '', '', '', '', 1, '2020-01-26 19:44:47', '2020-02-01 21:49:44'),
(43, 4, 'fba_air', '56969856+6666360', 0, '', 'ups', '', '', '', '', '', 1, '2020-02-01 22:00:22', '2020-02-01 22:00:22'),
(44, 4, 'fba_ocean', '56985665477800', 0, '', 'ups', '', '', '', '', '', 2, '2020-02-01 22:02:33', '2020-02-16 00:58:00'),
(45, 4, 'fba_air', '5547869789020', 0, '', '', '', '', '', '', '', 1, '2020-02-16 00:58:43', '2020-02-16 00:58:43'),
(46, 4, 'fba_air', '87555925500', 0, '', '', '', '', '', '', '', 2, '2020-02-16 01:01:59', '2020-02-16 01:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `fba_file`
--

CREATE TABLE `fba_file` (
  `fba_file_id` int(11) NOT NULL,
  `fba_id` int(11) DEFAULT NULL,
  `path` varchar(1024) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fba_file`
--

INSERT INTO `fba_file` (`fba_file_id`, `fba_id`, `path`) VALUES
(34, 40, 'note.txt');

-- --------------------------------------------------------

--
-- Table structure for table `fba_product`
--

CREATE TABLE `fba_product` (
  `fba_product_id` int(11) NOT NULL,
  `fba_id` int(11) NOT NULL,
  `fba_reference_number` varchar(32) NOT NULL,
  `reference_number` varchar(32) NOT NULL,
  `cbm` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `fba_warehouse_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `note` varchar(128) NOT NULL,
  `memo` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fba_product`
--

INSERT INTO `fba_product` (`fba_product_id`, `fba_id`, `fba_reference_number`, `reference_number`, `cbm`, `quantity`, `fba_warehouse_id`, `location_id`, `note`, `memo`, `status`) VALUES
(90, 40, '85669556620', 'AF25560', 500, 20, 0, 2527, '', '', 1),
(91, 40, '85669556688', 'AF25561', 450, 10, 0, 2528, '', '', 1),
(92, 40, '85669556645', 'AF25562', 380, 18, 0, 2527, '', '', 1),
(93, 39, '788965663500', '56632523230', 2000, 40, 0, 2527, '', '', 1),
(99, 42, '55656252600', 'A554585078', 500, 200, 1, 2527, '', '', 1),
(100, 43, '57899655660020', 'ADF58922', 500, 11, 0, 2527, 'good', '', 1),
(101, 43, '57899655660044', 'ADF58989', 123, 11, 0, 2528, 'very nice', '', 1),
(102, 43, '57899655660078', 'ADF58921', 122, 10, 0, 2527, 'ok', '', 1),
(125, 44, '5998875666007', 'AB56622788', 150, 20, 5232, 2527, 'good', '', 2),
(126, 44, '5998875666078', 'AB56622780', 100, 40, 5232, 2528, 'nice', '', 2),
(127, 45, '52568892040', '', 150, 10, 5079, 2527, '', '', 2),
(128, 45, '52568892041', '', 120, 12, 5095, 2528, '', '', 1),
(129, 46, '56625220', '', 0, 10, 5074, 2528, '', '', 2),
(130, 46, '56625221', '', 0, 19, 5075, 2527, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fba_warehouse`
--

CREATE TABLE `fba_warehouse` (
  `fba_warehouse_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL DEFAULT 'United States',
  `zipcode` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fba_warehouse`
--

INSERT INTO `fba_warehouse` (`fba_warehouse_id`, `name`, `street`, `city`, `state`, `country`, `zipcode`, `date_added`, `date_modified`) VALUES
(5073, 'ABE2', '705 Boulder Drive', 'Breinigsville', 'PA', 'United States', '18031', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5074, 'ABE3', '650 Boulder Drive', 'Breinigsville', 'PA', 'United States', '18031', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5075, 'ABE4', '1610 Van Buren Rd.,', 'Easton', 'PA', 'United States', '18045', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5076, 'ABE5', '6455 Allentown Boulevard', 'Harrisburg', 'PA', 'United States', '17112', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5077, 'ABE8', '309 Cedar Lane', 'Florence', 'NJ', 'United States', '08518', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5078, 'AVP1', '550 Oak Ridge Road', 'Hazleton', 'PA', 'United States', '18202', '0000-00-00 00:00:00', '2020-02-06 05:27:55'),
(5079, 'BFI1', '1800 140th Avenue E.', 'Sumner', 'WA', 'United States', '98390', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5080, 'BFI3', '2700 Center Drive', 'DuPont', 'WA', 'United States', '98327', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5081, 'BNA1', '14840 Central Pike Suite 190', 'Lebanon', 'TN ', 'United States', '37090', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5082, 'BNA2', '500 Duke DR', 'Lebanon', 'TN ', 'United States', '37090', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5083, 'BNA3', 'Joe B Jackson Pkwy', 'Murfreesboro', 'TN ', 'United States', '37127', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5084, 'BOS5', '1000 Tech Center Drive', ' Stoughton', 'MA', 'United States', ' 02072-4744', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5085, 'BWI1', '45121 Global Plaza', 'Sterling', 'VA', 'United States', '20166', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5086, 'BWI2', '2010 Broening Hwy', 'Baltimore', 'MD', 'United States', '21224', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5087, 'BWI5', '5001 Holabird Ave.', 'Baltimore', 'MD', 'United States', '21224', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5088, 'CAE1', '4400 12 Street Extension', 'West Columbia', 'SC', 'United States', '29172', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5089, 'CHA1', '7200 Discovery Drive', 'Chattanooga', 'TN', 'United States', '37416-1757', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5090, 'CHA2', '225 Infinity Dr NW', 'Charleston', 'TN', 'United States', '37310', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5091, 'CMH1', '11999 National Rd SW', 'Etna', 'OH', 'United States', '43018', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5092, 'CVG1', '1155 Worldwide Blvd', 'Hebron', 'KY', 'United States', '41048', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5093, 'CVG2', '1600 Worldwide Blvd ', 'Hebron', 'KY ', 'United States', '41048', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5094, 'CVG3', '3680 Langley Dr. ', 'Hebron', 'KY ', 'United States', '41048', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5095, 'DFW6', '940 W Bethel Road', 'Coppell', 'TX', 'United States', '75019-4424', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5096, 'DFW7', '700 Westport Parkway', 'Fort Worth', 'TX', 'United States', ' 76177-4513', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5097, 'DFW8', '2700 Regent Blvd', 'Irving', 'TX', 'United States', '75261', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5098, 'EWR4', '50 New Canton Way', 'Robbinsville', 'NJ', 'United States', '08691-2350', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5099, 'EWR5', '301 Blair Rd #100', 'Avenel', 'NJ', 'United States', '07001', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5100, 'ACY5', '2277 Center Square Rd', 'Logan Township', 'NJ', 'United States', '08085', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5101, 'TEB3', '2277 Center Square Rd', 'Logan Township', 'NJ', 'United States', '08085', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5102, 'EWR6', '275 Omar Ave', 'Avenel', 'NJ', 'United States', '08085', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5103, 'EWR7', '275 Omar Ave', 'Avenel', 'NJ', 'United States', '07001', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5104, 'FTW1', '33333 LBJ FWY', 'Dallas', 'TX', 'United States', '75241', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5105, 'GSP1', '402 John Dodd Rd', 'Spartanburg', 'SC', 'United States', '29303', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5106, 'HOU1', '8120 Humble Westfield Rd', 'Humble', 'TX', 'United States', '77338', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5107, 'IND1', '4255 Anson Blvd', 'Whitestown', 'IN', 'United States', '46075', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5108, 'IND2', '715 Airtech Pkwy', 'Plainfield', 'IN', 'United States', '46168', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5109, 'IND3', '715 Airtech Pkwy Suite 195 ', 'Plainfield', 'IN', 'United States', '46168', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5110, 'IND4', '710 S. Girls School Rd', 'Indianapolis', 'IN', 'United States', '46231', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5111, 'IND5', '800 Perry Road', 'Plainfield', 'IN', 'United States', '46168', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5112, 'LAL1', '1760 County Line Rd', 'Lakeland', 'FL', 'United States', '33811', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5113, 'LAS2', '3837 Bay Lake Trail, Suite 111', 'North Las Vegas', 'NV', 'United States', '89030', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5114, 'LEX1', '1850 Mercer Drive', 'Lexington', 'KY', 'United States', '40511', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5115, 'LEX2', '172 Trade St.', 'Lexington', 'KY', 'United States', '40511', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5116, 'MDT1', '2 Ames Drive', 'Carlisle', 'PA', 'United States', '17015', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5117, 'MDW2', '250 Emerald Drive', 'Joliet', 'IL', 'United States', '60433', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5118, 'MKE1', '3501 120th Ave', 'Kenosha', 'UA', 'United States', '53144', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5119, 'MKE5', '11211 Burlington Road', 'Kenosha', 'WI', 'United States', '53144', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5120, 'OAK3', '255 Park Center Dr', 'Patterson', 'CA', 'United States', '95363', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5121, 'OAK4', '1555 N. Chrisman Rd', 'Tracy', 'CA', 'United States', '95304', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5122, 'OAK5', '3811 Cherry Street', 'Newark', 'CA', 'United States', '94560', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5123, 'ONT2', '1910 E Central Ave', 'San Bernardino', 'CA', 'United States', '92408', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5124, 'ONT5', '2020 E. Central Ave. Southgate Building 4', 'San Bernardino', 'CA', 'United States', '92408', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5125, 'ONT6', '24208 San Michele Rd', 'Moreno Valley', 'CA', 'United States', '92551', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5126, 'ONT8', '24300 Nandina Ave', 'Moreno Valley', 'CA', 'United States', '92551', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5127, 'ONT9', '2125 W. San Bernardino Ave.', 'San Bernardino', 'CA', 'United States', '92551', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5128, 'PHL1', '1 Centerpoint Blvd.', 'New Castle', 'DE', 'United States', '19720', '0000-00-00 00:00:00', '2020-02-06 05:27:56'),
(5129, 'PHL3', '1600 Johnson Way', 'New Castle', 'DE', 'United States', '19720', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5130, 'PHL4', '21 Roadway Dr', 'Carlisle', 'PA', 'United States', '17015', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5131, 'PHL5', '500 McCarthy Dr. Fairview Business Park', 'Lewisberry', 'PA', 'United States', '17339', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5132, 'PHL6', '675 Allen Rd.', 'Carlisle', 'PA', 'United States', '17015', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5133, 'PHL7', '560 Merrimac Ave', 'Middletown', 'DE', 'United States', '19709', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5134, 'PHL9', '2 Ames Drive. Building #2', 'Carlisle', 'PA', 'United States', '17015', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5135, 'PHX3', '6835 West Buckeye Road', 'Phoenix', 'AZ', 'United States', '85043', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5136, 'PHX5', '16920 W Commerce Drive', 'Goodyear', 'AZ', 'United States', '85338', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5137, 'PHX6', '4750 West Mohave St', 'Phoenix', 'AZ', 'United States', '85043', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5138, 'PHX7', '800 N 75th Ave', 'Phoenix', 'AZ', 'United States', '85043', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5139, 'PIT5', '2250 Roswell Drive', 'Pittsburgh', 'PA', 'United States', '15205', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5140, 'RIC1', '5000 Commerce Way', 'Petersburg', 'VA', 'United States', '23803', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5141, 'RIC2', '1901 Meadowville Technology Pkwy', 'Chester', 'VA', 'United States', '23836', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5142, 'RNO1', '1600 East Newlands Drive', 'Fernley', 'NV', 'United States', '89408', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5143, 'RNO2', '8000 North Virginia Street', 'Reno', 'NV', 'United States', '85906', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5144, 'RNO4', '8000 N Virginia St', 'Reno', 'NV', 'United States', '89506', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5145, 'SAT1', '6000 Schertz Pkwy', 'Schertz', 'TX', 'United States', '78154', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5146, 'SDF1', '1050 South Columbia', 'Campbellsville', 'KY', 'United States', '42718', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5147, 'SDF2', '4360 Robards Ln', 'Louisville', 'KY', 'United States', '40218', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5148, 'SDF4', '376 Zappos.com Blvd', 'Shepherdsville', 'KY', 'United States', '40165', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5149, 'SDF6', '271 Omega Pkwy', 'Shepherdsville', 'KY', 'United States', '40165', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5150, 'SDF8', '900 Patrol Rd', 'Jeffersonville', 'IN', 'United States', '47130', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5151, 'SJC7', '188 Mountain House Pkwy,', 'Tracy', 'CA', 'United States', '95391', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5152, 'SNA4', '2496 W Walnut Ave', 'Rialto', 'CA', 'United States', '92376', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5153, 'TFC1', '5050 West Mohave Street', 'Phoenix', 'AZ', 'United States', '85043', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5154, 'TPA1', '3350 Laurel Ridge Ave.', 'Ruskin', 'FL', 'United States', '33570', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5155, 'TPA2', '1760 County Line Rd', 'Lakeland', 'FL', 'United States', '33811', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5156, 'TUL1', '2654 North Highway 169', 'Coffeyville', 'KS', 'United States', '67337', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5157, 'XUSC', '40 Logistics Drive', 'Carlisle', 'PA', 'United States', '17013', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5158, 'DEN2', '22205 East 19th Ave', 'Aurora', 'CO', 'United States', '80019', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5159, 'LAS6', '4550 Nexus Way', 'Las Vegas', 'NY', 'United States', '89115', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5160, 'ACY1', '240 Mantua Grove Road', 'West Deptfort', 'NJ', 'United States', '08066', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5161, 'AVP3', '298 1st Ave', 'Gouldsboro', 'PA', 'United States', '18424', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5162, 'AVP6', '1 Commerce Rd', 'Pittston', 'PA', 'United States', '18640', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5163, 'AVP8', '250 Enterprise Way', 'Pittston', 'PA', 'United States', '18640', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5164, 'BDL1', '801 Day Hill Rd', 'Windsor', 'CT', 'United States', '06095', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5165, 'BDL2', '409 Washington Ave', 'North Haven', 'CT', 'United States', '06473', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5166, 'BFI4', '21005 64th St.', 'Kent', 'WA', 'United States', '98032', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5167, 'BOS1', '10 State St', 'Nashua', 'NA', 'United States', '03063', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5168, 'BOS7', '1180 Innovation Way', 'Fall River', 'MA', 'United States', '02722', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5169, 'BUF5', '4201 Walden Ave', 'Lancaster', 'NY', 'United States', '14086', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5170, 'BWI4', '165 Business Blvd', 'Clear Brook', 'VA', 'United States', '22624', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5171, 'CLE2', '21500 Emery Rd', 'North Randall', 'OH', 'United States', '44128', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5172, 'CLT3', ' 6500 Davidson Hwy', 'Concord', 'NC', 'United States', '28027', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5173, 'CMH2', '6050 Gateway Court', 'Obetz', 'OH', 'United States', '43125', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5174, 'DCA1', '1700 Sparrows Point Blve', 'Sparrows Point', 'MD', 'United States', '21219', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5175, 'DCH1', '2801 S WESTERN AVE', 'Chicago', 'IL', 'United States', '60608', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5176, 'DCH2', '8290 AUSTIN AVE', 'MORTON GROVE', 'IL', 'United States', '60053', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5177, 'DEN3', '14601 Grant Street', 'Thornton', 'CO', 'United States', '80023', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5178, 'DET1', '39000 Amrhein Rd.', 'Livonia', 'MI', 'United States', '48150', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5179, 'DET2', '50500 Mound Road', 'Shelby Township', 'MI', 'United States', '48317', '0000-00-00 00:00:00', '2020-02-06 05:27:57'),
(5180, 'DTW1', '32801 Ecorse Road', 'Romulus', 'MI ', 'United States', '48174', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5181, 'EWR9 & LGA6', '8003 Industrial Ave', 'Carteret', 'NJ', 'United States', '07008', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5182, 'FAT1', '3575 S Orange Ave', 'Fresno', 'CA', 'United States', '93725', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5183, 'FTW2', ' 940 W Bethel Rd', 'Coppell', 'TX', 'United States', '75019', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5184, 'FTW3 & FTW4', '15201 Heritage Parkway  TX 76177-2517', 'Fort Worth', 'TX', 'United States', '76177', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5185, 'FTW7', '944 W. Sandy Lake Rd', 'Coppell', 'TX', 'United States', '75019', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5186, 'FTW8', '3351 Balmorhea Dr.', 'Dallas', 'TX', 'United States', '75241', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5187, 'HOU2', '10550 Ella St.', 'Houston', 'TX', 'United States', '77038', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5188, 'HOU3', '31555 Highway 90 E', 'Brookshire', 'TX', 'United States', '77423', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5189, 'IND7', '9101 Orly Dr', 'Indianapolis', 'IN', 'United States', '46241', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5190, 'JAX2', '12900 Pecan Park Rd.', 'Jacksonville', 'FL', 'United States', '32218', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5191, 'JAX3', '13333 103rd St. Cecil Commerce Center', 'Jacksonville', 'FL', 'United States', '32221', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5192, 'JFK8', ' 546 Gulf Ave', 'Staten Island', 'NY', 'United States', '10314', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5193, 'LGA7', '380 Middlesex Avenue', 'Carteret', 'NJ', 'United States', '07008', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5194, 'LGA9', '2170 State Route 27', 'Edison', 'NJ', 'United States', '08817', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5195, 'LGB3', '4590 Goodman Way  Building 1', 'Eastvale', 'CA', 'United States', '91752', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5196, 'LGB4', '27517 Pioneer Ave', 'Redlands', 'CA', 'United States', '92374', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5197, 'LGB6', '20901 Krameria Ave', 'Riverside', 'CA', 'United States', '92518', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5198, 'MCO1', ' 12340 Boggy Creek Road', 'Orlando', 'FL', 'United States', '32824', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5199, 'MDT2', '600 Principio Parkway West', 'North East', 'MD', 'United States', '21901', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5200, 'MDW4', '250 or 201  Emerald Dr.', 'Joliet', 'IL', 'United States', '60433', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5201, 'MDW6', '1125 W Remington Blvd', 'Romeoville', 'IL', 'United States', '60446', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5202, 'MDW7', '6605 W Monee Manhattan Road', 'Monee', 'IL', 'United States', '60449', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5203, 'MDW8', '1750 Bridge Dr.', 'Waukegan', 'IL', 'United States', '60085', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5204, 'MDW9', '2865 Duke Parkway', 'Aurora', 'IL', 'United States', '60502', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5205, 'MIA1', ' 14000 NW 37th Ave', 'Opa Locka', 'FL', 'United States', '33054', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5206, 'MKC4', '19645 Waverly Rd.', 'Edgerton', 'KS', 'United States', '66021', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5207, 'MKC6', '6925 Riverview Ave.', 'Kansas City', 'KS', 'United States', '66102', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5208, 'PDX9', '1250 NW Swigert Way', 'Troutdale', 'OR', 'United States', '97060', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5209, 'PHL8', '727 N. Broad St.', 'Middletown', 'DE', 'United States', '19709', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5210, 'SAT2', '1401 E McCarty Ln', 'San Marcos', 'TX', 'United States', '78666', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5211, 'SDF7', '300 Omicron Court', 'Shepherdsville', 'KY', 'United States', '40165', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5212, 'SDF9', '100 W. Thomas P. Echols Lane', 'Shepherdsville', 'KY', 'United States', '40165', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5213, 'TRB', '2646 Rainier Ave.', 'South Seattle', 'WA', 'United States', '98144', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5214, 'SLC1', '777 N. 5600 W', 'Salt Lake City', 'UT', 'United States', '84116', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5215, 'SMF1', '4900 W Elkhorn Blvd Metro Air Park', 'Sacramento', 'CA', 'United States', '95835', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5216, 'SNA6/SNA9', '5250 Goodman Road', 'Eastvale', 'CA', 'United States', '92880', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5217, 'SNA7/SNA8', '555 East Orange Show Rd.', 'San Bernardino', 'CA', 'United States', '92408', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5218, 'STL4', '3036-3098 Gateway Commerce Center Dr S', 'Edwardsville', 'IL', 'United States', '62025', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5219, 'STL6 & STL7', '3931 Lakeview Corporate Drive', 'Edwardsville', 'IL', 'United States', '62025', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5220, 'TEB6', '22 Hightstown-Cranbury Station Rd', 'Cranbury', 'NJ', 'United States', '08512', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5221, 'TPA2/LAL1', '1760 County Line Rd.', 'Lakeland', 'FL', 'United States', '33811', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5222, 'XUSB', '14900 Frye Rd', 'Fort Worth', 'TX', 'United States', '76155', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5223, 'XUSD', '1909 Zephyr St.', 'Stockton', 'CA', 'United States', '95206', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5224, 'XUSE', '5100 S Indianapolis Rd.', 'Whitestown', 'IN', 'United States', '46075', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5225, 'ATL7', '6855 Shannon Pkwy S', 'Union City', 'GA', 'United States', '30291', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5226, 'DCH3', '4500 Western Ave', 'Lisle', 'IL', 'United States', '60532', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5227, 'MGE1', '650 Broadway Ave', 'Braselton', 'GA', 'United States', '30517', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5228, 'MGE3', '808 Hog Mountain Rd. Building F', 'Jefferson', 'GA', 'United States', '30549', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5229, 'MSP1', '2601 4th Ave E', 'Shakopee', 'MN', 'United States', '55379', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5230, 'UIL1', '1111 N Cherry Ave', 'Chicago', 'IL', 'United States', '60642', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5231, 'ORD6', '1250 N Mittel Blvd', 'Wood Dale', 'IL', 'United States', '60191', '0000-00-00 00:00:00', '2020-02-06 05:27:58'),
(5232, 'UPS', '', '', '', '', '', '0000-00-00 00:00:00', '2020-02-09 00:09:24');

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
(28462, 'jd', 'jd_dhl_express_price_table', '/var/www/html/bhl/media/file/dhl_express.xlsx', 0),
(28473, 'fba', 'fba_sort_order', '0', 0),
(28472, 'fba', 'fba_status', '1', 0),
(28471, 'fba', 'fba_amount', '20', 0),
(28470, 'fba', 'fba_type', 'fba', 0),
(28489, 'fba_flat', 'fba_flat_sort_order', '0', 0),
(28488, 'fba_flat', 'fba_flat_status', '1', 0),
(28486, 'fba_flat', 'fba_flat_type', 'fba', 0),
(28487, 'fba_flat', 'fba_flat_amount', '20', 0);

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
(107, 4, 'sale', 17, '0.70', '0.00', '0.70', 'label fee additional for order - ID: 17', '2019-12-15 14:51:26', '2019-12-15 14:51:26'),
(108, 4, 'location', 0, '20.00', '0.00', '20.00', '', '2020-01-20 23:00:05', '2020-01-20 23:00:05'),
(109, 4, 'location', 0, '20.00', '0.00', '20.00', '', '2020-01-20 23:00:58', '2020-01-20 23:00:58'),
(110, 4, 'location', 0, '20.00', '0.00', '20.00', '', '2020-01-20 23:04:47', '2020-01-20 23:04:47'),
(111, 4, 'location', 0, '20.00', '0.00', '20.00', '', '2020-01-20 23:05:05', '2020-01-20 23:05:05');

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
-- Indexes for table `checkout_group`
--
ALTER TABLE `checkout_group`
  ADD PRIMARY KEY (`checkout_group_id`),
  ADD KEY `id` (`checkout_group_id`);

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
-- Indexes for table `fba_file`
--
ALTER TABLE `fba_file`
  ADD PRIMARY KEY (`fba_file_id`);

--
-- Indexes for table `fba_product`
--
ALTER TABLE `fba_product`
  ADD PRIMARY KEY (`fba_product_id`),
  ADD KEY `purchase_id` (`fba_id`);

--
-- Indexes for table `fba_warehouse`
--
ALTER TABLE `fba_warehouse`
  ADD PRIMARY KEY (`fba_warehouse_id`),
  ADD KEY `id` (`fba_warehouse_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13891;

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
-- AUTO_INCREMENT for table `checkout_group`
--
ALTER TABLE `checkout_group`
  MODIFY `checkout_group_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `fba`
--
ALTER TABLE `fba`
  MODIFY `fba_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `fba_file`
--
ALTER TABLE `fba_file`
  MODIFY `fba_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `fba_product`
--
ALTER TABLE `fba_product`
  MODIFY `fba_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `fba_warehouse`
--
ALTER TABLE `fba_warehouse`
  MODIFY `fba_warehouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5233;

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
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28490;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
