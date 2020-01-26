-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 07:53 PM
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
(12969, 1, '::1', 'log/activity_log', 'view the activity log page', 'GET', '2020-01-24 07:00:48'),
(12970, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-24 07:00:49'),
(12971, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-24 07:00:55'),
(12972, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-24 07:22:57'),
(12973, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-24 07:24:38'),
(12974, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-24 07:25:27'),
(12975, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-24 07:36:16'),
(12976, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-24 07:36:21'),
(12977, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-24 07:36:23'),
(12978, NULL, '::1', '', 'view the dashboard', 'GET', '2020-01-25 06:58:52'),
(12979, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-01-25 07:00:02'),
(12980, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-25 07:00:02'),
(12981, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:01:39'),
(12982, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 07:09:34'),
(12983, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 07:09:38'),
(12984, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 07:09:42'),
(12985, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:14:01'),
(12986, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 07:14:09'),
(12987, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 07:14:12'),
(12988, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:15:25'),
(12989, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 07:15:34'),
(12990, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 07:15:41'),
(12991, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:16:34'),
(12992, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 07:16:45'),
(12993, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 07:19:20'),
(12994, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:19:20'),
(12995, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:24:46'),
(12996, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:32:14'),
(12997, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:33:06'),
(12998, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:33:19'),
(12999, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:33:31'),
(13000, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:35:17'),
(13001, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 07:35:23'),
(13002, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:35:24'),
(13003, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 07:35:28'),
(13004, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 07:35:30'),
(13005, NULL, '::1', '', 'view the dashboard', 'GET', '2020-01-25 19:59:11'),
(13006, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-01-25 19:59:19'),
(13007, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-25 19:59:20'),
(13008, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 19:59:24'),
(13009, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 19:59:27'),
(13010, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:04:47'),
(13011, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:50'),
(13012, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:50'),
(13013, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:52'),
(13014, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:52'),
(13015, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:54'),
(13016, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:54'),
(13017, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:55'),
(13018, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:55'),
(13019, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:57'),
(13020, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:57'),
(13021, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:04:58'),
(13022, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:04:58'),
(13023, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:00'),
(13024, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:00'),
(13025, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:02'),
(13026, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:02'),
(13027, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:03'),
(13028, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:03'),
(13029, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:05'),
(13030, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:05'),
(13031, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:06'),
(13032, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:07'),
(13033, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:08'),
(13034, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:08'),
(13035, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:10'),
(13036, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:10'),
(13037, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:11'),
(13038, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:12'),
(13039, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:13'),
(13040, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:13'),
(13041, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:15'),
(13042, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:15'),
(13043, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:16'),
(13044, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:17'),
(13045, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-25 20:05:18'),
(13046, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-25 20:05:18'),
(13047, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 20:05:20'),
(13048, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 20:06:06'),
(13049, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 20:06:10'),
(13050, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:06:11'),
(13051, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:08:13'),
(13052, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:31'),
(13053, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:32'),
(13054, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:33'),
(13055, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:33'),
(13056, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:35'),
(13057, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:35'),
(13058, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:35'),
(13059, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:38'),
(13060, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:38'),
(13061, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:39'),
(13062, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:40'),
(13063, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:40'),
(13064, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:42'),
(13065, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:43'),
(13066, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-25 20:08:45'),
(13067, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:35:00'),
(13068, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:35:02'),
(13069, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:35:35'),
(13070, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:36:17'),
(13071, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:37:03'),
(13072, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:37:51'),
(13073, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:38:12'),
(13074, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 20:38:13'),
(13075, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 20:38:43'),
(13076, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:38:45'),
(13077, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:38:46'),
(13078, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:38:57'),
(13079, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:39:06'),
(13080, 1, '::1', 'setting/setting', 'view the setting page', 'GET', '2020-01-25 20:39:27'),
(13081, 1, '::1', 'setting/setting/get_printers', 'setting try to get printers', 'GET', '2020-01-25 20:39:29'),
(13082, 1, '::1', 'user/user_group', 'view the user group page', 'GET', '2020-01-25 20:39:35'),
(13083, 1, '::1', 'user/user_group/edit', 'view the user group edit page', 'GET', '2020-01-25 20:39:36'),
(13084, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 20:39:49'),
(13085, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:39:51'),
(13086, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:39:53'),
(13087, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 20:40:40'),
(13088, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 20:40:43'),
(13089, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 20:40:58'),
(13090, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 20:42:42'),
(13091, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:42:45'),
(13092, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:42:46'),
(13093, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 20:42:49'),
(13094, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:43:41'),
(13095, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:43:43'),
(13096, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 20:43:44'),
(13097, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-25 20:43:45'),
(13098, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 20:45:08'),
(13099, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 20:45:11'),
(13100, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 20:45:18'),
(13101, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 20:45:20'),
(13102, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 20:45:22'),
(13103, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-25 20:45:22'),
(13104, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 22:39:39'),
(13105, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:39:41'),
(13106, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 22:40:07'),
(13107, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 22:40:07'),
(13108, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:40:10'),
(13109, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 22:41:01'),
(13110, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 22:41:02'),
(13111, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:41:03'),
(13112, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 22:41:10'),
(13113, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 22:42:06'),
(13114, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:43:27'),
(13115, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 22:43:31'),
(13116, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-25 22:43:31'),
(13117, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 22:45:10'),
(13118, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:45:11'),
(13119, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:45:54'),
(13120, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 22:45:59'),
(13121, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 22:47:50'),
(13122, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:07:18'),
(13123, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:07:22'),
(13124, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:07:27'),
(13125, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:07:58'),
(13126, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:08:01'),
(13127, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:08:03'),
(13128, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:08:08'),
(13129, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:08:08'),
(13130, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:08:11'),
(13131, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 23:08:23'),
(13132, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:08:25'),
(13133, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:08:26'),
(13134, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:08:27'),
(13135, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:08:40'),
(13136, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:09:09'),
(13137, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:09:10'),
(13138, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:09:13'),
(13139, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:09:13'),
(13140, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:09:52'),
(13141, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:10:42'),
(13142, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:10:43'),
(13143, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:10:47'),
(13144, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:10:47'),
(13145, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:11:23'),
(13146, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:12:57'),
(13147, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:13:00'),
(13148, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:13:01'),
(13149, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:15:15'),
(13150, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:15:18'),
(13151, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:15:18'),
(13152, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:15:26'),
(13153, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:15:27'),
(13154, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:15:28'),
(13155, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:16:01'),
(13156, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:16:16'),
(13157, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:16:18'),
(13158, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:16:19'),
(13159, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:20:05'),
(13160, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:20:06'),
(13161, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:20:08'),
(13162, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:20:12'),
(13163, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:20:21'),
(13164, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:20:22'),
(13165, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:20:26'),
(13166, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 23:21:08'),
(13167, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-25 23:21:11'),
(13168, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:21:11'),
(13169, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:21:11'),
(13170, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:21:13'),
(13171, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-25 23:21:29'),
(13172, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:21:29'),
(13173, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:21:32'),
(13174, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:21:39'),
(13175, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:24:24'),
(13176, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:25:19'),
(13177, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:25:45'),
(13178, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:25:49'),
(13179, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:26:45'),
(13180, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:26:48'),
(13181, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:26:52'),
(13182, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:26:57'),
(13183, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:27:07'),
(13184, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:27:09'),
(13185, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:27:29'),
(13186, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:27:44'),
(13187, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:27:46'),
(13188, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:27:49'),
(13189, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:27:52'),
(13190, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:29:45'),
(13191, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:29:47'),
(13192, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:30:06'),
(13193, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:30:07'),
(13194, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:32:41'),
(13195, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:32:44'),
(13196, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:32:44'),
(13197, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:32:45'),
(13198, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-25 23:32:46'),
(13199, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:32:47'),
(13200, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:32:54'),
(13201, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:32:56'),
(13202, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:33:48'),
(13203, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:34:19'),
(13204, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:34:23'),
(13205, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:34:25'),
(13206, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:34:26'),
(13207, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:34:29'),
(13208, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 23:34:53'),
(13209, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 23:35:16'),
(13210, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-25 23:35:18'),
(13211, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-25 23:35:20'),
(13212, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-25 23:35:20'),
(13213, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:35:20'),
(13214, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:35:22'),
(13215, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:35:59'),
(13216, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-25 23:36:00'),
(13217, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-25 23:36:56'),
(13218, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-25 23:36:57'),
(13219, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:00:41'),
(13220, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:00:50'),
(13221, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:01:14'),
(13222, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:01:15'),
(13223, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:01:15'),
(13224, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:01:35'),
(13225, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:02:28'),
(13226, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:04:47'),
(13227, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:05:34'),
(13228, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:05:42'),
(13229, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:05:44'),
(13230, 1, '::1', 'fba/fba_ajax/upload_file', '0', 'POST', '2020-01-26 00:05:54'),
(13231, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 00:05:56'),
(13232, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 00:05:56'),
(13233, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:05:56'),
(13234, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:05:58'),
(13235, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:07:27'),
(13236, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:07:44'),
(13237, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:08:26'),
(13238, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 00:08:36'),
(13239, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:08:38'),
(13240, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-01-26 00:08:40'),
(13241, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-01-26 00:08:42'),
(13242, 1, '::1', 'check/checkout/edit', 'view the checkout edit page', 'GET', '2020-01-26 00:08:45'),
(13243, 1, '::1', 'check/checkout_ajax/get_product_inventories', 'try to get product inventories', 'GET', '2020-01-26 00:08:46'),
(13244, 1, '::1', 'check/checkout', 'view the checkout page', 'GET', '2020-01-26 00:08:49'),
(13245, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:08:54'),
(13246, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:08:56'),
(13247, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:09:37'),
(13248, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:11:21'),
(13249, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:11:27'),
(13250, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 00:11:30'),
(13251, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 00:11:40'),
(13252, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 00:11:42'),
(13253, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 00:11:47'),
(13254, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:11:48'),
(13255, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 00:19:29'),
(13256, NULL, '::1', '', 'view the dashboard', 'GET', '2020-01-26 18:55:37'),
(13257, NULL, '::1', 'common/login', 'view the login page', 'POST', '2020-01-26 18:55:43'),
(13258, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-26 18:55:43'),
(13259, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 18:55:49'),
(13260, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 18:56:22'),
(13261, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 18:57:20'),
(13262, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 18:57:29'),
(13263, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:01:04'),
(13264, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-26 19:01:22'),
(13265, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:01:27'),
(13266, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:01:43'),
(13267, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:01:43'),
(13268, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:01:55'),
(13269, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:02:02'),
(13270, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:02:02'),
(13271, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:02:10'),
(13272, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:02:10'),
(13273, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:02:16'),
(13274, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:02:16'),
(13275, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:02:24'),
(13276, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:02:25'),
(13277, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:02:26'),
(13278, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:02:27'),
(13279, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:02:28'),
(13280, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:03:17'),
(13281, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:03:21'),
(13282, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:03:27'),
(13283, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:03:27'),
(13284, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:03:27'),
(13285, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:03:29'),
(13286, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:03:30'),
(13287, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:03:49'),
(13288, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:04:12'),
(13289, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:04:12'),
(13290, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:04:12'),
(13291, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:04:15'),
(13292, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:04:45'),
(13293, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:04:46'),
(13294, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:04:49'),
(13295, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:04:57'),
(13296, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:05:00'),
(13297, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:05:10'),
(13298, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:05:12'),
(13299, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:05:16'),
(13300, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:31'),
(13301, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:32'),
(13302, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:32'),
(13303, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:33'),
(13304, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:34'),
(13305, 1, '::1', 'fba/fba_ajax/change_status', '0', 'GET', '2020-01-26 19:05:35'),
(13306, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:43'),
(13307, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:44'),
(13308, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:44'),
(13309, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:44'),
(13310, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:45'),
(13311, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:45'),
(13312, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:46'),
(13313, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:46'),
(13314, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:47'),
(13315, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:47'),
(13316, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:47'),
(13317, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:47'),
(13318, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:48'),
(13319, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:49'),
(13320, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:50'),
(13321, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:50'),
(13322, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:51'),
(13323, 1, '::1', 'fba/fba/filter', '0', 'GET', '2020-01-26 19:05:51'),
(13324, 1, '::1', 'fba/fba/delete', '0', 'GET', '2020-01-26 19:05:55'),
(13325, 1, '::1', 'fba/fba/reload', '0', 'GET', '2020-01-26 19:05:55'),
(13326, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:05:58'),
(13327, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:05:59'),
(13328, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:06:05'),
(13329, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:06:12'),
(13330, 1, '::1', 'common/dashboard', 'view the dashboard', 'GET', '2020-01-26 19:08:08'),
(13331, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:16:54'),
(13332, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:19:18'),
(13333, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:20:22'),
(13334, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:20:57'),
(13335, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:21:22'),
(13336, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:21:37'),
(13337, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:24:39'),
(13338, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:26:25'),
(13339, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:26:27'),
(13340, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:28:49'),
(13341, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:29:00'),
(13342, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:30:06'),
(13343, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:31:38'),
(13344, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:31:59'),
(13345, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:32:43'),
(13346, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:32:53'),
(13347, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:34:02'),
(13348, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:35:13'),
(13349, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:37:40'),
(13350, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:37:49'),
(13351, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:38:00'),
(13352, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:38:04'),
(13353, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:38:50'),
(13354, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:39:17'),
(13355, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:39:31'),
(13356, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:41:15'),
(13357, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:41:17'),
(13358, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:44:21'),
(13359, 1, '::1', 'warehouse/location_ajax/autocomplete', 'try to add warehouse location', 'GET', '2020-01-26 19:44:45'),
(13360, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:44:47'),
(13361, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:44:47'),
(13362, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:47:03'),
(13363, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:48:18'),
(13364, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:49:00'),
(13365, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:49:02'),
(13366, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:49:52'),
(13367, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:50:11'),
(13368, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:50:49'),
(13369, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:50:51'),
(13370, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:50:53'),
(13371, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:50:56'),
(13372, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:50:56'),
(13373, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:50:58'),
(13374, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:51:01'),
(13375, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:51:01'),
(13376, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:51:10'),
(13377, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:51:14'),
(13378, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:51:14'),
(13379, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:51:14'),
(13380, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:51:55'),
(13381, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:51:57'),
(13382, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:52:41'),
(13383, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:52:43'),
(13384, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:52:47'),
(13385, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:52:48'),
(13386, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:52:52'),
(13387, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:52:52'),
(13388, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:52:53'),
(13389, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:52:55'),
(13390, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:52:57'),
(13391, 1, '::1', 'search/search', 'try to search something', 'GET', '2020-01-26 19:53:00'),
(13392, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:53:00'),
(13393, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:53:00'),
(13394, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:53:02'),
(13395, 1, '::1', 'fba/fba/edit', '0', 'POST', '2020-01-26 19:53:05'),
(13396, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:53:05'),
(13397, 1, '::1', 'fba/fba/edit', '0', 'GET', '2020-01-26 19:53:07'),
(13398, 1, '::1', 'fba/fba', '0', 'GET', '2020-01-26 19:53:12'),
(13399, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:53:21'),
(13400, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:53:23'),
(13401, 1, '::1', 'fba/fba/add', '0', 'POST', '2020-01-26 19:53:26'),
(13402, 1, '::1', 'fba/fba/add', '0', 'GET', '2020-01-26 19:53:31');

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

INSERT INTO `fba` (`fba_id`, `client_id`, `import_method`, `tracking`, `fee_code`, `type`, `street`, `city`, `state`, `postcode`, `note`, `status`, `date_added`, `date_modified`) VALUES
(39, 4, 'fba_air', '98896665205230', '', 'fba_warehouse', '19097 Colima Road', 'Rowland Heights', 'California', '91748', '', 1, '2020-01-25 20:06:10', '2020-01-26 19:53:05'),
(40, 4, 'fba_ocean', '896665620478', '', 'fba_warehouse', '19097 Colima Road', 'Rowland Heights', 'California', '91748', 'This is very very important order', 2, '2020-01-25 23:35:20', '2020-01-26 19:53:00'),
(42, 4, 'fba_air', '556845662000', '', 'ups', '', '', '', '', '', 1, '2020-01-26 19:44:47', '2020-01-26 19:52:52');

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
  `location_id` int(11) NOT NULL,
  `note` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fba_product`
--

INSERT INTO `fba_product` (`fba_product_id`, `fba_id`, `fba_reference_number`, `reference_number`, `cbm`, `quantity`, `location_id`, `note`) VALUES
(89, 42, '55656252600', 'A554585078', 500, 200, 2527, ''),
(90, 40, '85669556620', 'AF25560', 500, 20, 2527, ''),
(91, 40, '85669556688', 'AF25561', 450, 10, 2528, ''),
(92, 40, '85669556645', 'AF25562', 380, 18, 2527, ''),
(93, 39, '788965663500', '56632523230', 2000, 40, 2527, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13403;

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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `fba`
--
ALTER TABLE `fba`
  MODIFY `fba_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `fba_file`
--
ALTER TABLE `fba_file`
  MODIFY `fba_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `fba_product`
--
ALTER TABLE `fba_product`
  MODIFY `fba_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

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
