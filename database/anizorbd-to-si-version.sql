-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 08:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anizorbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `about_us_text` longtext DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `vission` longtext DEFAULT NULL,
  `custom_block_title` varchar(255) DEFAULT NULL,
  `custom_block_details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `image`, `about_us_text`, `mission`, `vission`, `custom_block_title`, `custom_block_details`, `created_at`, `updated_at`) VALUES
(1, '17052305212141310128.jpg', '<p>At SI Trading, we believe that shopping should be an enjoyable and hassle-free experience for everyone. We are dedicated to providing you with an online destination that offers a wide range of high-quality products, exceptional customer service, and a seamless shopping journey from start to finish.</p>\r\n<p>our vision is to be your go-to destination for all your shopping needs. We strive to be more than just an online store, we want to become your trusted shopping companion, offering a personalized and reliable service that exceeds your expectations.</p>', NULL, NULL, NULL, NULL, '2023-01-06 05:05:38', '2024-01-14 11:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `district_id`, `is_active`, `created_at`, `updated_at`) VALUES
(555, 'Dhaka north', 65, 1, '2024-01-14 10:49:32', '2024-01-14 10:49:32'),
(556, 'Dhaka south', 65, 1, '2024-01-14 10:49:44', '2024-01-14 10:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `position`, `image`, `description`, `meta_title`, `meta_image`, `meta_description`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Anizor', 1, '1677937551.png', NULL, NULL, NULL, NULL, 1, 1, '2022-12-24 09:37:50', '2023-03-05 03:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `is_menu_active` int(11) DEFAULT 0,
  `menu_position` int(11) DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `is_menu_active`, `menu_position`, `position`, `image`, `banner`, `description`, `meta_title`, `meta_image`, `meta_description`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Goat', 0, 1, 3, 0, '1705128167.jpg', 'banner_1705128167.jpg', NULL, NULL, NULL, NULL, 1, 1, '2022-11-27 05:24:39', '2024-01-13 06:46:07'),
(14, 'Kacchi cut', 2, 0, NULL, 2, '1705128255.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2023-03-05 03:25:47', '2024-01-13 06:44:15'),
(15, 'Chop cut', 2, 0, NULL, 3, '1705128277.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2023-03-05 03:26:58', '2024-01-13 06:44:37'),
(16, 'Whole leg', 2, 0, NULL, 4, '1705128550.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2023-03-05 03:37:35', '2024-01-13 06:49:10'),
(21, 'Biriany cut', 2, 0, NULL, 1, '1705128573.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2023-03-09 03:23:54', '2024-01-13 06:49:33'),
(25, 'Bird Meat', 0, 1, 2, 2, '1705225846.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-13 07:09:48', '2024-01-14 09:53:29'),
(26, 'Duck Meat', 0, 1, 3, 3, '1705225820.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-13 07:39:39', '2024-01-14 09:50:20'),
(27, 'Fish', 0, 1, 4, 4, '1705225307.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-13 07:40:58', '2024-01-14 09:53:05'),
(28, 'Koyel Meat', 25, 0, NULL, 1, '1705134948.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:35:49', '2024-01-13 08:36:56'),
(29, 'Pigeon meat', 25, 0, NULL, 1, '1705135099.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:38:19', '2024-01-13 08:38:19'),
(30, 'Paking Duck Meat', 26, 0, NULL, 1, '1705135172.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:39:32', '2024-01-13 08:39:32'),
(31, 'Swan duck Meat', 26, 0, NULL, 1, '1705135194.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:39:55', '2024-01-13 08:39:55'),
(32, 'Deshi Leaf duck Meat', 26, 0, NULL, 1, '1705135218.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:40:19', '2024-01-13 08:40:19'),
(33, 'China duck Meat', 26, 0, NULL, 1, '1705135243.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:40:43', '2024-01-13 08:40:43'),
(34, 'Dory fish fillet', 27, 0, NULL, 1, '1705135334.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:42:14', '2024-01-13 08:42:14'),
(35, 'Rupchada fish', 27, 0, NULL, 1, '1705135352.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 08:42:32', '2024-01-13 08:42:32'),
(36, 'Chicken', 0, 1, NULL, 1, '1705226062.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-13 09:17:31', '2024-01-14 09:54:22'),
(37, 'Whole Chicken', 36, 0, NULL, 1, '1705137561.jpg', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-01-13 09:19:21', '2024-01-13 09:19:52'),
(38, 'Skin on whole chicken', 36, 0, NULL, 1, '1705137658.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 09:20:58', '2024-01-13 09:20:58'),
(39, 'Without skin Chicken', 36, 0, NULL, 1, '1705137689.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 09:21:29', '2024-01-13 09:21:29'),
(40, 'Breast Chicken', 36, 0, NULL, 1, '1705137787.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-13 09:23:07', '2024-01-13 09:23:07'),
(41, 'Chicken filets', 36, 0, NULL, 1, '1705209800.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:23:20', '2024-01-14 05:23:20'),
(42, 'Chicken leg', 36, 0, NULL, 1, '1705209833.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:23:53', '2024-01-14 05:23:53'),
(43, 'Chicken leg quarter', 36, 0, NULL, 1, '1705209902.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:25:02', '2024-01-14 05:25:02'),
(44, 'Chicken thigh', 36, 0, NULL, 1, '1705209940.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:25:40', '2024-01-14 05:25:40'),
(45, 'Chicken drumstick', 36, 0, NULL, 1, '1705209980.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:26:20', '2024-01-14 05:26:20'),
(46, 'Chicken liver', 36, 0, NULL, 1, '1705210009.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:26:49', '2024-01-14 05:26:49'),
(47, 'Chicken heart', 36, 0, NULL, 1, '1705210048.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:27:28', '2024-01-14 05:27:28'),
(48, 'Chicken feet', 36, 0, NULL, 1, '1705210104.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:28:25', '2024-01-14 05:28:25'),
(49, 'Chicken head', 36, 0, NULL, 1, '1705210144.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:29:04', '2024-01-14 05:29:04'),
(50, 'Buffalo', 0, 1, NULL, 1, '1705210281.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-14 05:31:21', '2024-01-14 09:49:52'),
(51, 'Cube curry', 50, 0, NULL, 1, '1705210351.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:32:31', '2024-01-14 05:32:31'),
(52, 'Tehari cut', 50, 0, NULL, 1, '1705210389.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:33:09', '2024-01-14 05:33:09'),
(53, 'Kacchi cut', 50, 0, NULL, 1, '1705210415.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:33:35', '2024-01-14 05:34:27'),
(54, 'Chop cut Slice', 50, 0, NULL, 1, '1705210446.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 05:34:07', '2024-01-14 05:34:07'),
(55, 'Beef', 0, 1, NULL, 1, '1705226286.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-14 09:58:06', '2024-01-14 09:58:06'),
(56, 'Cube carry', 55, 0, NULL, 1, '1705226355.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 09:59:15', '2024-01-14 09:59:15'),
(57, 'Tehari cut', 55, 0, NULL, 1, '1705226379.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 09:59:39', '2024-01-14 10:00:25'),
(58, 'kacchi cut', 55, 0, NULL, 1, '1705226410.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:00:10', '2024-01-14 10:00:10'),
(59, 'Chop cut Slice', 55, 0, NULL, 1, '1705226474.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:01:15', '2024-01-14 10:01:15'),
(60, 'Lamb', 0, 0, NULL, 1, '1705226617.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-01-14 10:03:38', '2024-01-14 10:04:06'),
(61, 'Cube curry', 60, 0, NULL, 1, '1705226666.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:04:26', '2024-01-14 10:04:26'),
(62, 'Kacchi cut', 60, 0, NULL, 1, '1705226681.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:04:41', '2024-01-14 10:04:41'),
(63, 'Chop cut', 60, 0, NULL, 1, '1705226706.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:05:06', '2024-01-14 10:05:06'),
(64, 'Whole leg', 60, 0, NULL, 1, '1705226723.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-01-14 10:05:23', '2024-01-14 10:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#f0ffff', '2018-11-05 02:12:29', '2022-11-28 07:46:59'),
(122, 'AliceBlue', '#f0f8ff', '2018-11-05 02:12:29', '2022-11-28 07:47:43'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(144, 'Ridoy Paul', '#f2baba', '2022-11-28 07:36:41', '2022-11-28 07:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `discount` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `single_use` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `discount`, `amount`, `valid_from`, `valid_to`, `single_use`, `affiliate_id`, `created_at`, `updated_at`) VALUES
(2, 'New Coupon', '883D', 10, NULL, '2022-12-30', '2023-01-05', 1, NULL, '2022-12-30 13:17:33', '2023-01-02 14:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shipping_charge` int(11) DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `shipping_charge`, `is_active`, `created_at`, `updated_at`) VALUES
(65, 'Dhaka', 70, 1, '2021-12-23 00:24:09', '2024-01-14 10:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_offers`
--

CREATE TABLE `flash_sale_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_date_time` varchar(255) NOT NULL,
  `end_date_time` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_offers`
--

INSERT INTO `flash_sale_offers` (`id`, `title`, `description`, `image`, `start_date_time`, `end_date_time`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Eid al-Fitr Flash Sale 2023', '<p>Eid al-Fitr Flash Sale 2023</p>', '16771736591205351418.png', '2023-09-01T23:33', '2023-09-30T23:00', 0, '2023-02-24 07:34:21', '2023-09-05 09:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_offer_products`
--

CREATE TABLE `flash_sale_offer_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_offer_products`
--

INSERT INTO `flash_sale_offer_products` (`id`, `flash_sale_id`, `product_id`, `created_at`, `updated_at`) VALUES
(31, 3, 38, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(32, 3, 37, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(33, 3, 36, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(34, 3, 35, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(35, 3, 34, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(36, 3, 33, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(37, 3, 32, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(38, 3, 31, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(39, 3, 30, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(40, 3, 29, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(41, 3, 28, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(42, 3, 27, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(43, 3, 26, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(44, 3, 25, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(45, 3, 24, '2023-09-05 09:13:34', '2023-09-05 09:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_four_banners`
--

CREATE TABLE `home_page_four_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_four_banners`
--

INSERT INTO `home_page_four_banners` (`id`, `title`, `description`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Spring Colection', '<p>sfsdfs fsd fsdf sdf</p>', '17052983261252954961.jpg', 'https://ecom.ridoypaul.xyz/', '2022-12-11 03:53:58', '2024-01-15 05:58:46'),
(2, 'Winter Colection', '<p>fsdfsdf sdf sd</p>', '17052983422060802294.jpg', 'https://ecom.ridoypaul.xyz/', '2022-12-15 10:09:43', '2024-01-15 05:59:02'),
(3, 'Banner 3', '<p>fhfgh fhfgh</p>', '17052982841196847037.jpg', 'https://ecom.ridoypaul.xyz/', '2022-12-15 10:10:57', '2024-01-15 05:58:04'),
(4, 'Banner 4', '<p>dfgdf gdf gdfg</p>', '1705298305162418944.jpg', 'https://themallbd.com/brand/products/revuele', '2022-12-15 10:11:14', '2024-01-15 05:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_02_044447_create_categories_table', 1),
(6, '2021_09_02_044656_create_brands_table', 1),
(7, '2021_09_02_044732_create_variations_table', 1),
(8, '2021_09_02_044817_create_products_table', 1),
(9, '2021_09_02_044851_create_order_statuses_table', 1),
(10, '2021_09_02_044914_create_orders_table', 1),
(11, '2021_09_02_044940_create_order_products_table', 1),
(12, '2021_09_02_051208_create_wishlists_table', 1),
(13, '2021_09_02_051557_create_wallets_table', 1),
(14, '2021_09_02_051617_create_wallet_entries_table', 1),
(15, '2021_09_02_051658_create_pages_table', 1),
(16, '2021_09_02_051950_create_settings_table', 1),
(17, '2021_09_02_061946_create_product_variations_table', 1),
(18, '2021_09_06_100447_create_product_images_table', 1),
(19, '2021_09_13_064102_create_coupons_table', 1),
(20, '2021_09_15_090230_create_sliders_table', 1),
(21, '2021_09_20_101516_create_subscribers_table', 1),
(22, '2021_09_26_064736_create_galleries_table', 1),
(23, '2021_10_25_121017_create_districts_table', 1),
(24, '2021_10_25_121041_create_areas_table', 1),
(25, '2021_10_26_092554_create_registration_points_table', 1),
(26, '2022_11_18_063812_create_permission_tables', 1),
(27, '2022_11_18_073751_create_flash_sale_offers_table', 1),
(28, '2022_11_18_074225_create_flash_sale_offer_products_table', 1),
(29, '2022_11_18_074637_create_carts_table', 1),
(30, '2022_11_18_074858_create_blogs_table', 1),
(31, '2022_11_24_182330_create_product_stocks_table', 2),
(32, '2022_11_24_182820_create_attributes_table', 2),
(33, '2022_11_24_183022_create_colors_table', 3),
(34, '2022_11_24_183836_create_uploads_table', 4),
(35, '2022_12_11_094944_create_home_page_four_banners_table', 4),
(36, '2014_10_12_200000_add_two_factor_columns_to_users_table', 5),
(37, '2022_12_23_155218_create_sessions_table', 5),
(39, '2023_01_03_105352_create_transactions_table', 6),
(40, '2023_01_06_080608_create_about_us_table', 7),
(41, '2023_02_17_143506_create_products_reviews_table', 8),
(42, '2023_02_25_192708_create_product_with_categories_table', 9),
(43, '2023_03_04_185436_create_wallet_transactions_table', 9),
(44, '2023_03_17_183946_add_default_mfs_system_into_orders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `shipping_address` text DEFAULT NULL,
  `ship_to_another_address_status` int(11) NOT NULL DEFAULT 0,
  `ship_to_another_address` text DEFAULT NULL,
  `coupon_status` int(11) NOT NULL DEFAULT 0,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount_amount` varchar(255) DEFAULT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `delivery_charge` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Order Created',
  `payment_status` varchar(255) NOT NULL DEFAULT '0',
  `payment_method` varchar(255) DEFAULT NULL,
  `manual_mfs_account_name` varchar(255) DEFAULT NULL,
  `manual_mfs_payment_number` varchar(255) DEFAULT NULL,
  `manual_mfs_transaction_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `total_payable` varchar(255) NOT NULL DEFAULT '0',
  `paid` varchar(255) NOT NULL DEFAULT '0',
  `sender_amount` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `customer_id`, `price`, `name`, `email`, `phone`, `city`, `district_id`, `area_id`, `shipping_address`, `ship_to_another_address_status`, `ship_to_another_address`, `coupon_status`, `coupon_code`, `coupon_discount_amount`, `delivery_boy_id`, `delivery_charge`, `vat`, `order_status`, `payment_status`, `payment_method`, `manual_mfs_account_name`, `manual_mfs_payment_number`, `manual_mfs_transaction_id`, `transaction_id`, `total_payable`, `paid`, `sender_amount`, `note`, `created_at`, `updated_at`) VALUES
(1, '120623492000001', 17, 11850, 'Ridoy Paul', 'cse.ridoypaul@gmail.com', '+8801627382866', NULL, 7, 59, 'Shah Ali plaza', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '11850', '0', NULL, NULL, '2023-06-12 22:08:57', '2023-06-12 22:08:57'),
(2, '270723647000002', 14, 4800, 'Ridoy Paul', NULL, '01627382866', NULL, 14, 137, 'Shah Ali plaza, 1205', 0, NULL, 0, NULL, NULL, NULL, 50, NULL, 'delivered', 'paid', 'cash on delivery', NULL, NULL, NULL, NULL, '4850', '0', NULL, NULL, '2023-07-27 22:23:42', '2023-07-27 22:25:24'),
(3, '050923686000003', 14, 2650, 'Ridoy Paul', NULL, '01627382866', NULL, 13, 116, 'Shah Ali plaza, 1205', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '2650', '0', NULL, NULL, '2023-09-05 09:33:20', '2023-09-05 09:33:20'),
(4, '050923161000004', 14, 5450, 'Ridoy Paul', NULL, '01627382866', NULL, 5, 37, 'Shah Ali plaza, 1205', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '5450', '0', NULL, NULL, '2023-09-05 09:33:58', '2023-09-05 09:33:58'),
(5, '050923489000005', NULL, 2650, 'Ridoy Paul', 'cse.ridoypaul@gmail.com', '01627382866', NULL, 18, 209, 'Shah Ali plaza', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'paid', 'online payment', NULL, NULL, NULL, NULL, '2650', '0', NULL, NULL, '2023-09-05 19:24:44', '2023-09-05 19:25:24'),
(6, '050923838000006', NULL, 7690, 'Ridoy Paul', 'cse.ridoypaul@gmail.com', '01627382866', NULL, 16, 197, 'Shah Ali plaza', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'processing', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '7690', '0', NULL, NULL, '2023-09-05 19:26:25', '2023-10-05 18:59:46'),
(7, '130124428000007', 17, 100000, 'Admin', 'admin@gmail.com', '01766622829', NULL, 8, 62, 'Est sit consectetur placeat similique delectus qui sequi q', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'unpaid', NULL, NULL, NULL, NULL, NULL, '100000', '0', NULL, NULL, '2024-01-13 07:01:52', '2024-01-13 07:01:52'),
(8, '130124112000008', 17, 100000, 'Admin', 'admin@gmail.com', '01766622829', NULL, 8, 62, 'Est sit consectetur placeat similique delectus qui sequi q', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'pending', 'unpaid', NULL, NULL, NULL, NULL, NULL, '100000', '0', NULL, NULL, '2024-01-13 07:01:57', '2024-01-13 07:01:57'),
(9, '130124681000009', 17, 100000, 'Admin', 'admin@gmail.com', '01766622829', NULL, 13, 108, 'House 10 road 20', 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 'delivered', 'paid', 'cash on delivery', NULL, NULL, NULL, NULL, '100000', '0', NULL, NULL, '2024-01-13 07:03:40', '2024-01-13 07:04:54'),
(10, '140124808000010', 17, 2030, 'Admin', 'admin1@gmail.com', '01880884848', NULL, 65, 555, 'Mirpur 10 Shaali plaza', 0, NULL, 0, NULL, NULL, NULL, 70, NULL, 'processing', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '2100', '0', NULL, NULL, '2024-01-14 11:30:12', '2024-01-14 11:31:11'),
(11, '140124449000011', 25, 480, 'Sohel sikder', NULL, '01923426548', NULL, 65, 555, 'Mirpur 10 Shaali plaza', 0, NULL, 0, NULL, NULL, NULL, 70, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '550', '0', NULL, NULL, '2024-01-14 12:19:04', '2024-01-14 12:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variations` text DEFAULT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_code`, `product_id`, `variations`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, '120623492000001', 35, '106', 5450, 1, 5450, '2023-06-12 22:08:57', '2023-06-12 22:08:57'),
(2, '120623492000001', 32, '92', 6400, 1, 6400, '2023-06-12 22:08:57', '2023-06-12 22:08:57'),
(3, '270723647000002', 38, '116', 4800, 1, 4800, '2023-07-27 22:23:42', '2023-07-27 22:23:42'),
(4, '050923686000003', 39, '120', 2650, 1, 2650, '2023-09-05 09:33:20', '2023-09-05 09:33:20'),
(5, '050923161000004', 36, '110', 5450, 1, 5450, '2023-09-05 09:33:58', '2023-09-05 09:33:58'),
(6, '050923489000005', 39, '120', 2650, 1, 2650, '2023-09-05 19:24:44', '2023-09-05 19:24:44'),
(7, '050923838000006', 25, '64', 7690, 1, 7690, '2023-09-05 19:26:25', '2023-09-05 19:26:25'),
(8, '130124428000007', 46, '151', 500, 20, 10000, '2024-01-13 07:01:52', '2024-01-13 07:01:52'),
(9, '130124112000008', 46, '151', 500, 20, 10000, '2024-01-13 07:01:57', '2024-01-13 07:01:57'),
(10, '130124681000009', 46, '151', 500, 20, 10000, '2024-01-13 07:03:40', '2024-01-13 07:03:40'),
(11, '140124808000010', 47, '154', 1550, 1, 1550, '2024-01-14 11:30:12', '2024-01-14 11:30:12'),
(12, '140124808000010', 49, '157', 480, 1, 480, '2024-01-14 11:30:12', '2024-01-14 11:30:12'),
(13, '140124449000011', 49, '157', 480, 1, 480, '2024-01-14 12:19:04', '2024-01-14 12:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_changed_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `order_code`, `status`, `status_changed_by`, `created_at`, `updated_at`) VALUES
(1, '100123339000026', 'processing', '2', '2023-01-16 11:54:12', '2023-01-16 11:54:12'),
(2, '160123352000027', 'shipped', '2', '2023-01-16 12:05:51', '2023-01-16 12:05:51'),
(3, '210223591000036', 'processing', '17', '2023-02-21 15:31:09', '2023-02-21 15:31:09'),
(4, '210223774000037', 'delivered', '17', '2023-02-21 17:11:57', '2023-02-21 17:11:57'),
(5, '270723647000002', 'delivered', '17', '2023-07-27 22:25:18', '2023-07-27 22:25:18'),
(6, '050923838000006', 'processing', '17', '2023-10-05 18:59:46', '2023-10-05 18:59:46'),
(7, '130124681000009', 'delivered', '17', '2024-01-13 07:04:54', '2024-01-13 07:04:54'),
(8, '140124808000010', 'processing', '17', '2024-01-14 11:31:11', '2024-01-14 11:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `description3` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `new_arrival` varchar(255) DEFAULT NULL,
  `product_banner` varchar(255) DEFAULT NULL,
  `advertisement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_slug`, `name`, `description`, `description1`, `description2`, `description3`, `image`, `new_arrival`, `product_banner`, `advertisement`, `created_at`, `updated_at`) VALUES
(1, 'privacy_policy', 'Privacy Policy', '<div class=\"single-privacy-policy\">\r\n<h3 class=\"privacy-policy-title\">Collecting Personal Information</h3>\r\n<p class=\"privacy-policy-text\"><strong>Proin eget tortor risus</strong>. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula .</p>\r\n<ul class=\"privacy-feature\">\r\n<li class=\"feature-item\"><strong class=\"feature-title\">Examples of Personal Information collected:</strong>&nbsp;Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.&nbsp;<a class=\"feature-link\" href=\"https://sitradingbd.com/privacy/policy\">https://policies.google.com/privacy?hl=en</a>&nbsp;consectetur adipiscing rutrum congue</li>\r\n<li class=\"feature-item\"><strong class=\"feature-title\">Purpose of collection:</strong>&nbsp;Vivamus suscipit tortor eget felis volutpat. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</li>\r\n<li class=\"feature-item\"><strong class=\"feature-title\">Source of collection:&nbsp;</strong>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet</li>\r\n<li class=\"feature-item\"><strong class=\"feature-title\">Disclosure for a business purpose:</strong>&nbsp;Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, leo eget malesuada.&nbsp;<a class=\"feature-link\" href=\"https://sitradingbd.com/privacy/policy\">http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work</a>. non nulla sit amet nisl tempus quis ac lectus.</li>\r\n</ul>\r\n</div>\r\n<div class=\"single-privacy-policy\">\r\n<h3 class=\"privacy-policy-title-small\">Using Personal Information</h3>\r\n<p class=\"privacy-policy-text\">Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\r\n<ul class=\"privacy-feature\">\r\n<li class=\"feature-item\">Dolor amet consectetur adipiscing elit eiusmod tempor incididunt labore magna</li>\r\n<li class=\"feature-item\">With years of experience in the website design and development industry ThemeZaa pride</li>\r\n<li class=\"feature-item\">The background of several of the company was the ground for a versatile collection.</li>\r\n<li class=\"feature-item\">Staffy founder creative director had the idea to design where comfort fashion</li>\r\n<li class=\"feature-item\">Generations of shoemaking within the company was the ground versatile</li>\r\n</ul>\r\n</div>\r\n<div class=\"single-privacy-policy\">\r\n<h3 class=\"privacy-policy-title-small\">Automatic Decision-Making</h3>\r\n<p class=\"privacy-policy-text\">Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla porttitor accumsan tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitorullamcorper sit amet ligula. Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Nulla porttitor accumsan tincidunt. Sed porttitor lectus nibh.</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-28 05:25:27', '2024-01-14 11:24:10'),
(2, 'terms_and_condition', 'Terms and Conditions', '<div class=\"single-term-condition\">\r\n<h3 class=\"term-conditions-title\">OVERVIEW</h3>\r\n<p class=\"term-condition-text\">Quisque velit nisi, pretium ut lacinia in, elementum id enim. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh. sem. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada.</p>\r\n<p class=\"term-condition-text\">Proin eget tortor risus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec rutrum congue leo eget malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia magna dictum porta. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ante ipsum volutpat. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>\r\n<p class=\"term-condition-text\">Curabitur aliquet quam id dui posuere blandit. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget</p>\r\n</div>\r\n<div class=\"single-term-condition\">\r\n<h3 class=\"term-conditions-title\">ONLINE STORE TERMS</h3>\r\n<p class=\"term-condition-text\">Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur ac diam sit amet quam vehicula elementum sed sit amet dui. Vivamus suscipit tortor eget felis porttitor volutpat.</p>\r\n<p class=\"term-condition-text\">Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectuseget felis porttitor volutpat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\r\n<p class=\"term-condition-text\">Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit.</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 01:07:50', '2024-01-14 11:24:46'),
(3, 'return_and_refund_policy', 'Return Refund Policy', '<p>At SI Trading, we strive to provide our customers with high-quality products and excellent customer service. We want you to be completely satisfied with your purchase from our website. However, if you are not satisfied with your purchase, we have a Return Refund Policy in place to help you.</p>\r\n<ol>\r\n<li>Eligibility for Returns and Refunds We accept returns and refunds for products that meet the following criteria:</li>\r\n</ol>\r\n<ul>\r\n<li>The product is in its original condition, unused and undamaged.</li>\r\n<li>The product was purchased directly from our website.</li>\r\n<li>The product is returned within the specified timeframe, which is 7 days from the date of delivery.</li>\r\n</ul>\r\n<ol start=\"2\">\r\n<li>Process for Returns and Refunds To initiate a return or refund, please follow these steps:</li>\r\n</ol>\r\n<ul>\r\n<li>Contact our customer service team within 7 days of receiving the product.</li>\r\n<li>Provide your order number and a description of the issue.</li>\r\n<li>Our customer service team will provide you with a return authorization number and instructions for returning the product.</li>\r\n<li>Return the product in its original packaging, including all accessories and documentation.</li>\r\n<li>Once we receive the returned product, we will inspect it to ensure that it meets the eligibility criteria.</li>\r\n<li>If the product is eligible for a refund, we will process the refund within a reasonable amount of time.</li>\r\n</ul>\r\n<ol start=\"3\">\r\n<li>\r\n<p>Shipping Costs You are responsible for the cost of shipping the product back to us unless the product is defective or damaged. If the product is eligible for a refund, we will refund the cost of the product and any applicable taxes, but not the cost of shipping.</p>\r\n</li>\r\n<li>\r\n<p>Exchanges We do not offer exchanges at this time. If you would like to exchange a product, please follow the return process and place a new order for the desired product.</p>\r\n</li>\r\n<li>\r\n<p>Refund Processing Time Refunds will be processed within a reasonable amount of time after we receive the returned product. The refund will be issued to the original form of payment used for the purchase.</p>\r\n</li>\r\n<li>\r\n<p>Defective or Damaged Products If you receive a defective or damaged product, please contact our customer service team immediately. We will provide you with a return authorization number and instructions for returning the product. We will cover the cost of shipping the product back to us and provide you with a replacement product or a full refund, whichever you prefer.</p>\r\n</li>\r\n<li>\r\n<p>Exceptions We do not accept returns or refunds for the following products:</p>\r\n</li>\r\n</ol>\r\n<ul>\r\n<li>Products that are not in their original condition, used or damaged.</li>\r\n<li>Products that were not purchased directly from our website.</li>\r\n<li>Products that are not returned within the specified timeframe.</li>\r\n</ul>\r\n<p>If you have any questions or concerns about our Return Refund Policy, please contact our customer service team at [insert contact information.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 10:42:04', '2024-01-14 11:25:30'),
(4, 'support_policy', 'Support Policy', '<p>At SI Trading, we are committed to providing our customers with the best possible support. Our goal is to help you resolve any issues you may encounter while using our website or our products. We offer various support options to help you get the assistance you need.</p>\r\n<ol>\r\n<li>Support Channels We offer the following support channels:</li>\r\n</ol>\r\n<ul>\r\n<li>Email: You can contact us at [insert email address] for any questions, concerns, or issues.</li>\r\n<li>Phone: You can call us at [insert phone number] during our business hours [insert business hours].</li>\r\n<li>Live Chat: You can chat with us live on our website during our business hours [insert business hours].</li>\r\n</ul>\r\n<ol start=\"2\">\r\n<li>\r\n<p>Response Time We aim to respond to all support requests within 24 hours of receiving them. However, response times may vary depending on the complexity of the issue.</p>\r\n</li>\r\n<li>\r\n<p>Business Hours Our business hours are [insert business hours]. We are closed on weekends and public holidays.</p>\r\n</li>\r\n<li>\r\n<p>Support Scope We offer support for the following:</p>\r\n</li>\r\n</ol>\r\n<ul>\r\n<li>Technical issues related to our website and products.</li>\r\n<li>General questions and inquiries about our website and products.</li>\r\n<li>Issues related to your order, such as shipping or delivery.</li>\r\n</ul>\r\n<p>We do not offer support for the following:</p>\r\n<ul>\r\n<li>Issues related to third-party products or services.</li>\r\n<li>Issues related to hardware or software that is not provided by SI Trading.</li>\r\n<li>Issues related to misuse or abuse of our website or products.</li>\r\n</ul>\r\n<ol start=\"5\">\r\n<li>\r\n<p>Escalation Process If you are not satisfied with the support provided by our team, you can request to escalate the issue to a manager. The manager will review your case and work with you to find a resolution.</p>\r\n</li>\r\n<li>\r\n<p>Feedback We welcome your feedback on our support services. If you have any suggestions or comments, please let us know by emailing us at [insert email address].</p>\r\n</li>\r\n</ol>\r\n<p>We are committed to providing excellent support to our customers. If you have any questions or concerns about our Support Policy, please contact us at [insert contact information.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 10:42:42', '2024-01-14 11:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('cse.ridoypaul@gmail.com', '$2y$10$jgnxTq0sApVZoPtUNbXmDOISclRpWateE2FL5xWz7hZrON6Br4v8y', '2023-01-16 09:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `current_stock` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_tranding` int(11) NOT NULL DEFAULT 0,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `sold_qty` varchar(255) NOT NULL DEFAULT '0',
  `code` varchar(255) DEFAULT NULL,
  `unit_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `minimum_qty` int(11) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `thumbnail_image2` varchar(255) DEFAULT NULL,
  `gallery_images` varchar(255) DEFAULT NULL,
  `video_provider` varchar(255) DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `variant_product` text DEFAULT NULL,
  `attributes` text DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `feature` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `pdf_specification` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `tags` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `brand_id`, `category_id`, `sub_category_id`, `purchase_price`, `price`, `discount_type`, `discount_amount`, `current_stock`, `is_featured`, `is_tranding`, `todays_deal`, `sold_qty`, `code`, `unit_type`, `type`, `minimum_qty`, `thumbnail_image`, `thumbnail_image2`, `gallery_images`, `video_provider`, `video_link`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `feature`, `description`, `pdf_specification`, `is_active`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(47, 'Goat Meat kacchi cut / ছাগলের মাংস কাচ্চি পিচ', NULL, 0, 0, NULL, NULL, 'flat', 20, 0, 1, 1, 1, '0', 'EU13S8', 'Kg', 'variation', NULL, '1705214811409857731.jpg', NULL, NULL, NULL, NULL, NULL, '[\"2\"]', NULL, '[]', NULL, '<p>ব্লাক বেঙ্গল ছাগলের মাংস (কাচ্চি পিচ)</p>\r\n<p>প্রতি কেজিতে ১০,১২পিচ করা হয়।</p>\r\n<p>কোন গন্ধ নেই।</p>\r\n<p>নিশ্চিন্তে সবাই খেতে পারবেন।</p>', '<p>ব্লাক বেঙ্গল ছাগলের মাংস (কাচ্চি পিচ)</p>\r\n<p>প্রতি কেজিতে ১০,১২পিচ করা হয়।</p>\r\n<p>কোন গন্ধ নেই।</p>\r\n<p>নিশ্চিন্তে সবাই খেতে পারবেন।</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(48, 'Packing Duck', NULL, 0, 0, NULL, NULL, 'flat', 20, 0, 1, 1, 1, '0', 'YENR6R', 'Kg', 'variation', NULL, '17052297121910294937.jpg', NULL, NULL, NULL, NULL, NULL, '[\"2\"]', NULL, '[]', NULL, '<p class=\"note-text\">অনুগ্রহ পূর্বক খেয়াল করবেনঃ আমাদের প্রতিটি হাঁস এর ওজন ১.৫কেজি থেকে ০২ কেজি হয়ে থাকে। ১.৫ কেজি থেকে ০২ কেজি হাঁস এর মূল্য ৭০০টাকা থেকে ১০০০টাকা ওজনের উপরে নির্ভর করে।</p>\r\n<div class=\"product-color-area\">\r\n<div class=\"variable-single-item color-switch\">\r\n<div class=\"product-variable-color\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-size-area\">&nbsp;</div>', '<p class=\"note-text\">অনুগ্রহ পূর্বক খেয়াল করবেনঃ আমাদের প্রতিটি হাঁস এর ওজন ১.৫কেজি থেকে ০২ কেজি হয়ে থাকে। ১.৫ কেজি থেকে ০২ কেজি হাঁস এর মূল্য ৭০০টাকা থেকে ১০০০টাকা ওজনের উপরে নির্ভর করে।</p>\r\n<div class=\"product-color-area\">\r\n<div class=\"variable-single-item color-switch\">\r\n<div class=\"product-variable-color\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-size-area\">&nbsp;</div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(49, 'Dory Fish Fillet(imported)', NULL, 0, 0, NULL, NULL, 'flat', 20, 0, 1, 1, 1, '0', 'KAKGZO', 'Kg', 'variation', NULL, '17052299411671326236.jpg', NULL, NULL, NULL, NULL, NULL, '[\"2\"]', NULL, '[]', NULL, '<p>ভিয়েতনাম থেকে আমদানিকৃত।</p>\r\n<p>কাঁটা ছেঁড়ার ঝামেলা বিহীন শতভাগ ফরমালিন মুক্ত হালাল ডরি ফিস ফিলেট।</p>\r\n<p>প্রতি কেজিতে ৩ পিচ হয়ে থাকে।</p>\r\n<p>একটা কাটা ও নেই।</p>\r\n<p>অত্যন্ত সুস্বাদু ও মজাদার।</p>', '<p>ভিয়েতনাম থেকে আমদানিকৃত।</p>\r\n<p>কাঁটা ছেঁড়ার ঝামেলা বিহীন শতভাগ ফরমালিন মুক্ত হালাল ডরি ফিস ফিলেট।</p>\r\n<p>প্রতি কেজিতে ৩ পিচ হয়ে থাকে।</p>\r\n<p>একটা কাটা ও নেই।</p>\r\n<p>অত্যন্ত সুস্বাদু ও মজাদার।</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-14 10:59:01', '2024-01-14 10:59:01'),
(50, 'Pigeon meat/কবুতরের বাচ্চা', NULL, 0, 0, NULL, NULL, 'flat', 20, 0, 1, 1, 1, '0', 'DASXGT', 'Kg', 'variation', NULL, '1705230123601419430.jpg', NULL, NULL, NULL, NULL, NULL, '[\"2\"]', NULL, '[]', NULL, '<p class=\"note-text\">হালাল ভাবে জবাই করে নাড়িভুঁড়ি ফেলে দিয়ে ড্রেসিং করার পর প্রতি পিচের ওজন হবে ১৪০গ্রাম+</p>\r\n<div class=\"product-color-area\">\r\n<div class=\"variable-single-item color-switch\">\r\n<div class=\"product-variable-color\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-size-area\">&nbsp;</div>', '<p class=\"note-text\">হালাল ভাবে জবাই করে নাড়িভুঁড়ি ফেলে দিয়ে ড্রেসিং করার পর প্রতি পিচের ওজন হবে ১৪০গ্রাম+</p>\r\n<div class=\"product-color-area\">\r\n<div class=\"variable-single-item color-switch\">\r\n<div class=\"product-variable-color\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-size-area\">&nbsp;</div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-14 11:02:03', '2024-01-14 11:02:03'),
(51, 'Goat Meat curry cube', NULL, 0, 0, NULL, NULL, 'flat', 50, 0, 1, 1, 1, '0', '2K8XRM', '780', 'variation', NULL, '17052303731115020105.jpg', NULL, NULL, NULL, NULL, NULL, '[\"2\"]', NULL, '[]', NULL, '<p>ব্লাক বেঙ্গল ছাগলের মাংস (কাচ্চি পিচ)</p>\r\n<p>প্রতি কেজিতে ১০,১২ পিচ করা হয়।</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-01-14 11:06:13', '2024-01-14 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `products_reviews`
--

CREATE TABLE `products_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_code` varchar(255) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_star` int(11) NOT NULL DEFAULT 5,
  `review_text` longtext DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0 COMMENT '1 means active, 0 means pending, 2 means rejected.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(59, 24, '16802585240.jpg', '2023-03-31 23:28:44', '2023-03-31 23:28:44'),
(60, 25, '16802591360.jpeg', '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(61, 26, '16802592040.jpg', '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(62, 27, '16802593970.jpg', '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(63, 28, '16802595600.jpg', '2023-03-31 23:46:01', '2023-03-31 23:46:01'),
(64, 29, '16802597230.jpg', '2023-03-31 23:48:44', '2023-03-31 23:48:44'),
(65, 30, '16802607560.jpg', '2023-04-01 00:05:57', '2023-04-01 00:05:57'),
(66, 31, '16802608680.jpg', '2023-04-01 00:07:48', '2023-04-01 00:07:48'),
(67, 32, '16802609310.jpg', '2023-04-01 00:08:52', '2023-04-01 00:08:52'),
(68, 33, '16802610030.jpg', '2023-04-01 00:10:04', '2023-04-01 00:10:04'),
(69, 34, '16802610440.jpg', '2023-04-01 00:10:44', '2023-04-01 00:10:44'),
(70, 35, '16802610800.jpg', '2023-04-01 00:11:20', '2023-04-01 00:11:20'),
(71, 36, '16802612800.jpg', '2023-04-01 00:14:41', '2023-04-01 00:14:41'),
(72, 37, '16802613090.jpg', '2023-04-01 00:15:09', '2023-04-01 00:15:09'),
(73, 38, '16802613400.jpg', '2023-04-01 00:15:40', '2023-04-01 00:15:40'),
(74, 39, '16802626230.jpg', '2023-04-01 00:37:03', '2023-04-01 00:37:03'),
(75, 40, '16802628480.jpg', '2023-04-01 00:40:48', '2023-04-01 00:40:48'),
(76, 41, '16802630000.jpg', '2023-04-01 00:43:21', '2023-04-01 00:43:21'),
(77, 42, '16802631270.jpg', '2023-04-01 00:45:27', '2023-04-01 00:45:27'),
(78, 43, '16802631570.jpg', '2023-04-01 00:45:58', '2023-04-01 00:45:58'),
(80, 45, '16802634310.jpg', '2023-04-01 00:50:32', '2023-04-01 00:50:32'),
(81, 44, '16802638030.jpg', '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(82, 46, '17051291580.jpg', '2024-01-13 06:59:18', '2024-01-13 06:59:18'),
(83, 47, '17052148110.jpg', '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(84, 48, '17052297120.jpg', '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(85, 49, '17052299410.jpg', '2024-01-14 10:59:01', '2024-01-14 10:59:01'),
(86, 50, '17052301230.jpg', '2024-01-14 11:02:03', '2024-01-14 11:02:03'),
(87, 51, '17052303730.jpg', '2024-01-14 11:06:13', '2024-01-14 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variant_output` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `is_active` int(110) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `color`, `variant`, `variant_output`, `sku`, `price`, `image`, `qty`, `is_active`, `created_at`, `updated_at`) VALUES
(60, 24, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(61, 24, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(62, 24, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(63, 24, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(64, 25, NULL, '2', '42', NULL, '7690', NULL, '999', 1, '2023-03-31 23:38:56', '2023-09-05 19:26:25'),
(65, 25, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(66, 25, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(67, 25, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(68, 26, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(69, 26, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(70, 26, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(71, 26, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(72, 27, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(73, 27, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(74, 27, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(75, 27, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(76, 28, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(77, 28, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(78, 28, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(79, 28, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(80, 29, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(81, 29, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(82, 29, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(83, 29, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(84, 30, NULL, '2', '42', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(85, 30, NULL, '2', '44', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(86, 30, NULL, '2', '46', NULL, '5850', NULL, '999', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(87, 30, NULL, '2', '48', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(88, 31, NULL, '2', '42', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(89, 31, NULL, '2', '44', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(90, 31, NULL, '2', '46', NULL, '5820', NULL, '999', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(91, 31, NULL, '2', '48', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(92, 32, NULL, '2', '42', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(93, 32, NULL, '2', '44', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(94, 32, NULL, '2', '46', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(95, 32, NULL, '2', '48', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(96, 33, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(97, 33, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(98, 33, NULL, '2', '46', NULL, '5450', NULL, '999', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(99, 33, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(100, 34, NULL, '2', '42', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(101, 34, NULL, '2', '44', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(102, 34, NULL, '2', '46', NULL, '5500', NULL, '999', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(103, 34, NULL, '2', '48', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(104, 35, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(105, 35, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(106, 35, NULL, '2', '46', NULL, '5450', NULL, '999', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(107, 35, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(108, 36, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(109, 36, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(110, 36, NULL, '2', '46', NULL, '5450', NULL, '998', 1, '2023-04-01 00:14:40', '2023-09-05 09:33:58'),
(111, 36, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(112, 37, NULL, '2', '42', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(113, 37, NULL, '2', '44', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(114, 37, NULL, '2', '46', NULL, '5400', NULL, '999', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(115, 37, NULL, '2', '48', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(116, 38, NULL, '2', '42', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:39', '2023-04-01 02:31:48'),
(117, 38, NULL, '2', '44', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:39', '2023-04-01 02:31:48'),
(118, 38, NULL, '2', '46', NULL, '4800', NULL, '999', 1, '2023-04-01 00:15:40', '2023-04-01 02:31:48'),
(119, 38, NULL, '2', '48', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:40', '2023-04-01 02:31:48'),
(120, 39, NULL, '2', '40', NULL, '2650', NULL, '998', 1, '2023-04-01 00:37:03', '2023-09-05 19:25:25'),
(121, 39, NULL, '2', '42', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(122, 39, NULL, '2', '44', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(123, 39, NULL, '2', '46', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(124, 40, NULL, '2', '40', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(125, 40, NULL, '2', '42', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(126, 40, NULL, '2', '44', NULL, '2650', NULL, '999', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(127, 40, NULL, '2', '46', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(128, 41, NULL, '2', '40', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(129, 41, NULL, '2', '42', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(130, 41, NULL, '2', '44', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(131, 41, NULL, '2', '46', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(132, 42, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(133, 42, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(134, 42, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(135, 42, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(136, 43, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(137, 43, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(138, 43, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(139, 43, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(140, 44, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(141, 44, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(142, 44, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(143, 44, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(144, 45, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(145, 45, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(146, 45, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(147, 45, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:31', '2023-04-01 00:50:31'),
(148, 45, '75', '2', '40', NULL, '5000', NULL, '500', 1, '2023-09-21 19:18:59', '2023-09-21 19:18:59'),
(149, 45, '75', '2', '42', NULL, '6000', NULL, '100', 1, '2023-09-21 19:18:59', '2023-09-21 19:18:59'),
(150, 45, '143', '2', '40', NULL, '5000', NULL, '50', 1, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(151, 46, NULL, '2', '1 Kg', NULL, '500', '17051291581955419738.jpg', '180', 1, '2024-01-13 06:59:18', '2024-01-13 07:03:41'),
(152, 46, NULL, '2', '2 Kg', NULL, '1000', NULL, '44', 1, '2024-01-13 06:59:18', '2024-01-13 06:59:18'),
(153, 47, NULL, '2', '1 Kg', NULL, '780', '1705214811627226486.jpg', '100', 1, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(154, 47, NULL, '2', '2 Kg', NULL, '1550', '170521481162092698.jpg', '99', 1, '2024-01-14 06:46:51', '2024-01-14 11:30:12'),
(155, 48, NULL, '2', '1.5 Kg', NULL, '520', NULL, '100', 1, '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(156, 48, NULL, '2', '2 Kg', NULL, '750', NULL, '100', 1, '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(157, 49, NULL, '2', '2 Kg', NULL, '480', NULL, '98', 1, '2024-01-14 10:59:01', '2024-01-14 12:19:04'),
(158, 50, NULL, '2', '0.25', NULL, '180', NULL, '100', 1, '2024-01-14 11:02:03', '2024-01-14 11:02:03'),
(159, 51, NULL, '2', '2 Kg', NULL, '1560', NULL, '100', 1, '2024-01-14 11:06:13', '2024-01-14 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variaton_id` varchar(255) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock_qty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_with_categories`
--

CREATE TABLE `product_with_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_with_categories`
--

INSERT INTO `product_with_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 20, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(14, 19, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(15, 2, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(16, 1, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(33, 24, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(34, 19, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(35, 13, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(36, 1, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(41, 24, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(42, 19, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(43, 13, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(44, 1, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(49, 24, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(50, 19, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(51, 13, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(52, 1, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(53, 24, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(54, 19, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(55, 13, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(56, 1, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(57, 24, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(58, 19, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(59, 13, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(60, 1, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(61, 24, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(62, 19, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(63, 13, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(64, 1, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(161, 22, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(162, 19, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(163, 13, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(164, 1, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(165, 23, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(166, 19, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(167, 13, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(168, 1, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(169, 23, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(170, 19, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(171, 13, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(172, 1, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(173, 23, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(174, 19, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(175, 13, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(176, 1, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(177, 23, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(178, 19, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(179, 13, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(180, 1, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(181, 23, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(182, 19, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(183, 13, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(184, 1, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(185, 23, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(186, 19, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(187, 13, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(188, 1, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(189, 23, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(190, 19, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(191, 13, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(192, 1, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(193, 23, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(194, 19, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(195, 13, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(196, 1, 37, '2023-04-01 02:31:25', '2023-04-01 02:31:25'),
(197, 23, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(198, 19, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(199, 13, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(200, 1, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(205, 22, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(206, 19, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(207, 13, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(208, 1, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(209, 22, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(210, 19, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(211, 13, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(212, 1, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(213, 22, 41, '2023-04-01 02:35:38', '2023-04-01 02:35:38'),
(214, 19, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(215, 13, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(216, 1, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(217, 22, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(218, 19, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(219, 13, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(220, 1, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(221, 22, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(222, 19, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(223, 13, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(224, 1, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(229, 22, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(230, 19, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(231, 13, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(232, 1, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(233, 14, 47, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(234, 2, 47, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(235, 30, 48, '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(236, 34, 49, '2024-01-14 10:59:01', '2024-01-14 10:59:01'),
(237, 29, 50, '2024-01-14 11:02:03', '2024-01-14 11:02:03'),
(238, 56, 51, '2024-01-14 11:06:13', '2024-01-14 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `registration_points`
--

CREATE TABLE `registration_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `point` double DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_points`
--

INSERT INTO `registration_points` (`id`, `point`, `valid_from`, `valid_to`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 333, '2022-12-12', '2022-12-13', 1, '2022-12-11 03:40:00', '2022-12-11 03:40:00'),
(2, 200, '2023-01-16', '2023-01-27', 1, '2023-01-16 10:36:29', '2023-01-16 10:36:29'),
(3, 500, '2023-11-01', '2023-10-10', 1, '2023-10-05 19:02:25', '2023-10-05 19:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tjGwEIcFFhwRfjFwSiR8HPL1RMYIDP8JftULtmwN', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQTVJWHFTQ3Bqd1dnOVNpNWVvVDZWY2VwekVOWHg4ZW0xbTRtUktaZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE3O3M6NToiYWxlcnQiO2E6MDp7fX0=', 1705299731);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL,
  `minimum_point` varchar(255) DEFAULT '0',
  `equivalent_point` varchar(255) DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `header_logo`, `footer_logo`, `favicon`, `email`, `phone`, `address`, `facebook`, `instagram`, `twitter`, `youtube`, `linkedin`, `custom_css`, `custom_js`, `minimum_point`, `equivalent_point`, `meta_title`, `meta_description`, `meta_tag`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'SI Trading', '1705127581108466778.png', '1705127581128411244.png', 'favicon_17051275811433000584.png', 'sitradingbd209@gmail.com', '01810-519401', 'House 41,Road 09,DIT Project,Merul Badda,Dhaka Bangladesh.', 'https://www.facebook.com/sitradingbd', NULL, 'twitter.com', 'https://www.youtube.com/@sitradingbd', 'dddd', NULL, NULL, '0', '0', 'Meta Info for SEO', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nam provident sequi, nemo sapiente culpa nostrum rem eum perferendis quibusdam, magnam a vitae corporis! Magnam enim modi, illo harum suscipit tempore aut dolore doloribus deserunt voluptatum illum, est porro?', 'Meta, Info, for SEO', 'Meta Info for', NULL, '2022-11-28 03:30:01', '2024-01-13 06:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `serial_number`, `title`, `description`, `image`, `link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Flash Sale', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,<br />sed do eiusmod tempor incididunt ut labore</p>', '1705127832.jpg', '#', 1, '2022-11-27 05:56:29', '2024-01-13 06:37:12'),
(2, 3, 'Spring Flash Sale!', '<p>New Spring Sale Offer 2023.</p>', '1705127808.jpg', '#', 1, '2022-11-27 06:27:34', '2024-01-13 06:38:09'),
(3, 1, 'Winter Collection', '<h3 class=\"hp-mod-card-title\" data-spm-anchor-id=\"a2a0e.home.flashSale.i0.735212f7x6y0RD\">FlashSale</h3>', '1705127863.jpg', '#', 1, '2022-12-24 09:09:18', '2024-01-13 06:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'cse.ridoypaul@gmail.com', '2022-12-24 12:39:55', '2022-12-24 12:39:55'),
(2, 'taafarabi@gmail.com', '2023-02-15 02:21:25', '2023-02-15 02:21:25'),
(3, 'test@mail.com', '2023-04-22 06:22:16', '2023-04-22 06:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `tran_id` varchar(255) DEFAULT NULL,
  `which_payment` varchar(255) DEFAULT NULL COMMENT 'order payment, wallet',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'online payment, wallet money, cash on delivery payment',
  `amount` varchar(255) NOT NULL DEFAULT '0',
  `store_amount` varchar(255) NOT NULL DEFAULT '0',
  `minus_amount` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `phone`, `tran_id`, `which_payment`, `payment_method`, `amount`, `store_amount`, `minus_amount`, `created_at`, `updated_at`) VALUES
(1, NULL, '+8801627382866', '030123681000016', 'order payment', 'online payment', '1500.00', '1462.50', '37.5', '2023-01-03 11:50:32', '2023-01-03 11:50:32'),
(2, '14', '+8801627382866', '030123717000017', 'order payment', 'online payment', '1400.00', '1365.00', '35', '2023-01-03 12:19:56', '2023-01-03 12:19:56'),
(3, '14', '+8801627382866', '030123193000019', 'order payment', 'online payment', '3000.00', '2925.00', '75', '2023-01-03 12:25:04', '2023-01-03 12:25:04'),
(4, NULL, '+8801627382866', '050123755000022', 'order payment', 'online payment', '1500.00', '1462.50', '37.5', '2023-01-05 12:47:33', '2023-01-05 12:47:33'),
(5, NULL, '+8801627382866', '080123346000023', 'order payment', 'online payment', '22800.00', '22230.00', '570', '2023-01-08 11:05:55', '2023-01-08 11:05:55'),
(6, '2', '+8801627382866', '100123339000026', 'order payment', 'online payment', '3000.00', '2925.00', '75', '2023-01-10 02:33:23', '2023-01-10 02:33:23'),
(7, NULL, '+8801627382866', '160123352000027', 'order payment', 'online payment', '1640.00', '1599.00', '41', '2023-01-16 02:49:59', '2023-01-16 02:49:59'),
(8, NULL, '+8801627382866', '170123857000028', 'order payment', 'online payment', '450.00', '438.75', '11.25', '2023-01-17 15:40:13', '2023-01-17 15:40:13'),
(9, NULL, '+8801627382866', '190123760000031', 'order payment', 'online payment', '1550.00', '1511.25', '38.75', '2023-01-20 02:54:21', '2023-01-20 02:54:21'),
(10, NULL, '+8801627382866', '140223685000033', 'order payment', 'online payment', '45.00', '43.88', '1.12', '2023-02-15 03:57:28', '2023-02-15 03:57:28'),
(11, NULL, '+8801627382866', '200223388000034', 'order payment', 'online payment', '4950.00', '4826.25', '123.75', '2023-02-21 02:49:37', '2023-02-21 02:49:37'),
(12, '17', '+8801627382866', '210223591000036', 'order payment', 'online payment', '200.00', '195.00', '5', '2023-02-21 14:48:37', '2023-02-21 14:48:37'),
(13, NULL, '+8801627382866', '270223714000038', 'order payment', 'online payment', '1945.00', '1896.38', '48.62', '2023-02-27 22:01:44', '2023-02-27 22:01:44'),
(14, '14', '+8801627382866', '050323623000041', 'order payment', 'online payment', '90.00', '87.75', '2.25', '2023-03-05 19:43:37', '2023-03-05 19:43:37'),
(15, NULL, '+8801627382866', '110323329000042', 'order payment', 'online payment', '6000.00', '5850.00', '150', '2023-03-11 08:42:53', '2023-03-11 08:42:53'),
(16, NULL, '01627382866', '050923489000005', 'order payment', 'online payment', '2650.00', '2583.75', '66.25', '2023-09-05 19:25:24', '2023-09-05 19:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '2',
  `districts` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `referral_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `is_phone_verified` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` varchar(255) DEFAULT '0',
  `used_wallet_amount` varchar(255) DEFAULT '0',
  `wallet_point` varchar(255) DEFAULT '0',
  `used_wallet_point` varchar(255) DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `type`, `districts`, `city`, `address`, `image`, `is_active`, `referral_id`, `email_verified_at`, `verification_code`, `is_phone_verified`, `wallet_amount`, `used_wallet_amount`, `wallet_point`, `used_wallet_point`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ridoy Paul', NULL, 'cse.ridoypaul@gmail.com', '01766622828', '1', NULL, NULL, NULL, '1673893772.jpg', 1, NULL, NULL, NULL, 1, '0', '0', '0', '0', '$2y$10$Sy.GyHKreWMsKhZHie//muYxNRMViviSyN63dXo4EuBDusZFnex4S', NULL, NULL, NULL, NULL, '2022-12-23 00:50:59', '2023-01-16 12:29:32'),
(9, 'Ridoy Paul', NULL, NULL, '01627382869', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$9X1yMZ692FWFf.TzAIGJy.NrAYdEmZcOneNHdHf0SLFLFmD.nAYn6', NULL, NULL, NULL, NULL, '2022-12-23 10:49:20', '2022-12-23 10:49:20'),
(13, 'Ridoy Paul', NULL, NULL, '01627382865', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$lb9BoEbzRYTEIS66rzKmi.X1YcA3t.WeBf3VIn28WycxRWOEe.27.', NULL, NULL, NULL, NULL, '2022-12-23 11:00:47', '2022-12-23 11:00:47'),
(14, 'Ridoy Paul', NULL, NULL, '01627382866', '2', NULL, NULL, 'Shah Ali plaza, 1205', '1677734333.png', 1, NULL, NULL, '150601', 1, '4320', '0', '0', '0', '$2y$10$amA1oAMdW6W2UVUXO275t.GY9EDoTfx0UWQMl8Nm4ZVvX1yl8YCda', NULL, NULL, NULL, NULL, '2022-12-23 13:10:28', '2023-03-02 19:18:55'),
(16, 'Test user', NULL, 'test@gmail.com', '01627382333333', '1', NULL, 'Dhaka', NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$IzSvA1NzFZ./N5BG722ejuVgU8dc2Z04jcJelKukL6WwOxPEkhY36', NULL, NULL, NULL, NULL, '2023-01-16 12:35:00', '2023-01-16 12:35:00'),
(17, 'Admin', NULL, 'admin@gmail.com', '01766622829', '1', NULL, NULL, NULL, '', 1, NULL, NULL, NULL, 1, '0', '0', '0', '0', '$2y$10$Sy.GyHKreWMsKhZHie//muYxNRMViviSyN63dXo4EuBDusZFnex4S', NULL, NULL, NULL, NULL, '2022-12-23 00:50:59', '2023-01-16 12:29:32'),
(18, 'Ridoy Paul', NULL, NULL, '01849706261', '2', NULL, NULL, NULL, '1676965682.jpg', 1, NULL, NULL, '143791', 1, '0', '0', '0', '0', '$2y$10$wlEMMMHGDOCRSYzRCbOUceduAepZ63c99O4/QZCG43u5hyTbQRCCm', NULL, NULL, NULL, NULL, '2023-02-21 15:43:20', '2023-02-21 15:48:03'),
(23, 'md Rasel', NULL, NULL, '01917468315', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '691904', 0, '0', '0', '0', '0', '$2y$10$JE/H1WriSFXlbtBvEbP0POQQmBvnnD7roFMsh/ClHWJR4dw8o4wJG', NULL, NULL, NULL, NULL, '2023-09-10 18:17:56', '2023-09-10 18:17:56'),
(24, 'Sohel', NULL, NULL, '01880884848', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '481397', 1, '0', '0', '0', '0', '$2y$10$2EhE3Hr3Zdsy6bsXm1d9g.LCgPuqAP41LZBjVXb/qc4s5IFFlRdQ6', NULL, NULL, NULL, NULL, '2024-01-14 12:09:41', '2024-01-14 12:10:32'),
(25, 'Sohel sikder', NULL, NULL, '01923426548', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '960593', 1, '0', '0', '0', '0', '$2y$10$q3DgZwZCWnilw1Wvd5mA5.6t4/QuA34FVR8.yM8HxdhgmBug0o2mq', NULL, NULL, NULL, NULL, '2024-01-14 12:11:46', '2024-01-14 12:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Size', 1, '2022-11-28 03:52:57', '2022-11-28 03:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` double UNSIGNED NOT NULL DEFAULT 0,
  `used_amount` double UNSIGNED NOT NULL DEFAULT 0,
  `point` double UNSIGNED NOT NULL DEFAULT 0,
  `used_point` double UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_entries`
--

CREATE TABLE `wallet_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `cash_in` double DEFAULT NULL,
  `cash_out` double DEFAULT NULL,
  `point_in` double DEFAULT NULL,
  `point_out` double DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `in_or_out` varchar(255) DEFAULT NULL,
  `point_or_wallet_tk` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `for_which` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `variations`, `created_at`, `updated_at`) VALUES
(1, 2, 6, NULL, '2023-01-06 12:39:02', '2023-01-06 12:39:02'),
(2, 2, 22, NULL, '2023-01-07 12:35:47', '2023-01-07 12:35:47'),
(3, 2, 5, NULL, '2023-01-07 12:41:50', '2023-01-07 12:41:50'),
(6, 14, 6, NULL, '2023-01-16 10:05:24', '2023-01-16 10:05:24'),
(7, 14, 5, NULL, '2023-01-16 10:05:26', '2023-01-16 10:05:26'),
(8, 14, 22, NULL, '2023-01-16 10:05:28', '2023-01-16 10:05:28'),
(9, 14, 4, NULL, '2023-01-16 10:19:37', '2023-01-16 10:19:37'),
(10, 14, 23, NULL, '2023-01-16 10:20:17', '2023-01-16 10:20:17'),
(11, 18, 23, NULL, '2023-02-21 16:09:12', '2023-02-21 16:09:12'),
(12, 17, 31, NULL, '2023-04-29 22:24:29', '2023-04-29 22:24:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_index` (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id_index` (`id`),
  ADD KEY `brands_title_index` (`title`),
  ADD KEY `brands_is_active_index` (`is_active`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_index` (`customer_id`),
  ADD KEY `carts_product_id_index` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id_index` (`id`),
  ADD KEY `categories_title_index` (`title`),
  ADD KEY `categories_is_featured_index` (`is_featured`),
  ADD KEY `categories_is_active_index` (`is_active`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_id_index` (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sale_offers`
--
ALTER TABLE `flash_sale_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_offers_id_index` (`id`);

--
-- Indexes for table `flash_sale_offer_products`
--
ALTER TABLE `flash_sale_offer_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_offer_products_id_index` (`id`),
  ADD KEY `flash_sale_offer_products_flash_sale_id_index` (`flash_sale_id`),
  ADD KEY `flash_sale_offer_products_product_id_index` (`product_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_id_index` (`id`);

--
-- Indexes for table `home_page_four_banners`
--
ALTER TABLE `home_page_four_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_index` (`id`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_phone_index` (`phone`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_code_index` (`order_code`),
  ADD KEY `order_products_product_id_index` (`product_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_id_index` (`id`),
  ADD KEY `pages_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_index` (`id`),
  ADD KEY `products_title_index` (`title`),
  ADD KEY `products_brand_id_index` (`brand_id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_sub_category_id_index` (`sub_category_id`),
  ADD KEY `products_discount_type_index` (`discount_type`),
  ADD KEY `products_is_festured_index` (`is_featured`),
  ADD KEY `products_is_tranding_index` (`is_tranding`),
  ADD KEY `products_code_index` (`code`),
  ADD KEY `products_type_index` (`type`),
  ADD KEY `products_is_active_index` (`is_active`);

--
-- Indexes for table `products_reviews`
--
ALTER TABLE `products_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_reviews_customer_id_index` (`customer_id`),
  ADD KEY `products_reviews_order_code_index` (`order_code`),
  ADD KEY `products_reviews_order_product_id_index` (`order_product_id`),
  ADD KEY `products_reviews_product_id_index` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_id_index` (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_index` (`product_id`),
  ADD KEY `variant` (`variant`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_id_index` (`id`),
  ADD KEY `product_variations_product_id_index` (`product_id`),
  ADD KEY `product_variations_variaton_id_index` (`variaton_id`);

--
-- Indexes for table `product_with_categories`
--
ALTER TABLE `product_with_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_with_categories_category_id_index` (`category_id`),
  ADD KEY `product_with_categories_product_id_index` (`product_id`);

--
-- Indexes for table `registration_points`
--
ALTER TABLE `registration_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_points_id_index` (`id`),
  ADD KEY `registration_points_valid_from_index` (`valid_from`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_id_index` (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_id_index` (`id`),
  ADD KEY `sliders_serial_number_index` (`serial_number`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_id_index` (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_entries`
--
ALTER TABLE `wallet_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_id_index` (`id`),
  ADD KEY `wishlists_customer_id_index` (`customer_id`),
  ADD KEY `wishlists_product_id_index` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_offers`
--
ALTER TABLE `flash_sale_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_sale_offer_products`
--
ALTER TABLE `flash_sale_offer_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_four_banners`
--
ALTER TABLE `home_page_four_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products_reviews`
--
ALTER TABLE `products_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_with_categories`
--
ALTER TABLE `product_with_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `registration_points`
--
ALTER TABLE `registration_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_entries`
--
ALTER TABLE `wallet_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
