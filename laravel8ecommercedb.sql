-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(22, 1, 'Violet & Blue', 2, '2022-10-30 22:12:17', '2022-10-30 22:12:17'),
(24, 1, 'White', 6, '2022-10-30 22:14:59', '2022-10-30 22:14:59'),
(26, 1, 'Classical White', 8, '2022-10-30 22:19:24', '2022-10-30 22:19:24'),
(27, 1, 'White', 9, '2022-10-30 22:22:33', '2022-10-30 22:22:33'),
(28, 3, '10\'\'', 10, '2022-10-30 22:24:55', '2022-10-30 22:24:55'),
(29, 1, 'Snow White', 11, '2022-10-30 22:26:38', '2022-10-30 22:26:38'),
(32, 1, 'White', 14, '2022-10-30 22:52:27', '2022-10-30 22:52:27'),
(35, 1, 'White', 16, '2022-10-30 23:22:18', '2022-10-30 23:22:18'),
(38, 1, 'White', 7, '2022-10-31 00:13:39', '2022-10-31 00:13:39'),
(41, 1, 'Black', 30, '2022-10-31 00:17:20', '2022-10-31 00:17:20'),
(42, 3, '24', 17, '2022-10-31 00:17:57', '2022-10-31 00:17:57'),
(43, 1, 'Red', 22, '2022-10-31 17:54:26', '2022-10-31 17:54:26'),
(44, 1, 'White', 12, '2022-10-31 18:00:16', '2022-10-31 18:00:16'),
(45, 1, ' Blue', 12, '2022-10-31 18:00:16', '2022-10-31 18:00:16'),
(46, 1, ' Aquamarine', 12, '2022-10-31 18:00:16', '2022-10-31 18:00:16'),
(47, 1, 'Snow White', 21, '2022-10-31 18:03:16', '2022-10-31 18:03:16'),
(48, 1, 'White', 19, '2022-10-31 18:05:44', '2022-10-31 18:05:44'),
(49, 1, ' Black', 19, '2022-10-31 18:05:44', '2022-10-31 18:05:44'),
(50, 1, 'White', 20, '2022-10-31 18:06:27', '2022-10-31 18:06:27'),
(51, 1, 'White', 13, '2022-11-15 23:57:00', '2022-11-15 23:57:00'),
(52, 1, ' Dark Blue', 13, '2022-11-15 23:57:00', '2022-11-15 23:57:00'),
(53, 3, '24\'\'', 13, '2022-11-15 23:57:00', '2022-11-15 23:57:00'),
(54, 3, ' 32\'\'', 13, '2022-11-15 23:57:00', '2022-11-15 23:57:00'),
(55, 3, ' 48\'\'', 13, '2022-11-15 23:57:00', '2022-11-15 23:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Smartphone', 'smartphone', '2022-09-20 23:32:17', '2022-10-30 22:09:14'),
(2, 'Smart TV', 'smart-tv', '2022-09-20 23:32:17', '2022-10-30 22:10:02'),
(3, 'Smart Watch', 'smart-watch', '2022-09-20 23:32:17', '2022-10-30 22:11:16'),
(4, 'Laptop', 'laptop', '2022-09-20 23:32:17', '2022-10-30 22:11:48'),
(5, 'Tablet', 'tablet', '2022-09-20 23:32:17', '2022-10-30 22:11:59'),
(6, 'Controller', 'controller', '2022-09-20 23:32:17', '2022-10-30 22:13:21'),
(8, 'Speaker', 'speaker', '2022-10-16 22:28:41', '2022-10-30 22:14:08'),
(9, 'Web Camera', 'web-camera', '2022-10-16 22:36:22', '2022-10-30 22:51:20'),
(11, 'Headphone', 'headphone', '2022-10-31 18:02:12', '2022-10-31 18:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'reno', 'alfianreno2@gmail.com', '1234567890', 'test comment', '2022-10-16 04:26:52', '2022-10-16 04:26:52'),
(2, 'furukawa', 'furukawa@furukawa.com', '0987654321', 'sjlkjfsldkklfdshd message', '2022-10-16 04:30:01', '2022-10-16 04:30:01'),
(3, 'assa', 'asassa@gmail.com', '1234434354652', 'afsfetertreter', '2022-11-16 02:40:18', '2022-11-16 02:40:18'),
(4, 'sh1ro', 'user@user.com', '1234434354652', 'eewrwer', '2022-11-16 02:41:17', '2022-11-16 02:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance_km` decimal(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `distance_km`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pakistan', '2442.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(2, 'Heard Island and McDonald Islands', '1785.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(3, 'Rwanda', '2430.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(4, 'French Guiana', '2791.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(5, 'New Zealand', '4115.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(6, 'Sao Tome and Principe', '3725.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(7, 'Angola', '1803.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(8, 'Peru', '2218.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(9, 'Martinique', '3918.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(10, 'Ukraine', '4195.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(11, 'Denmark', '2255.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(12, 'Eritrea', '2557.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(13, 'British Indian Ocean Territory (Chagos Archipelago)', '4500.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(14, 'Ecuador', '1517.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(15, 'Nepal', '1775.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(16, 'Uganda', '895.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(17, 'Antarctica (the territory South of 60 deg S)', '1862.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(18, 'Belarus', '2132.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(19, 'Ireland', '655.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(20, 'Niue', '3532.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(21, 'Lesotho', '602.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(22, 'Kenya', '1523.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(23, 'Cook Islands', '1765.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(24, 'Saint Martin', '1848.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(25, 'Senegal', '4215.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(26, 'Bhutan', '4470.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(27, 'Philippines', '4518.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(28, 'Poland', '3402.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(29, 'Slovakia (Slovak Republic)', '4833.00', '1', '2022-11-20 18:49:58', '2022-11-20 18:49:58'),
(30, 'American Samoa', '2058.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(31, 'Kyrgyz Republic', '2543.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(32, 'Cyprus', '4818.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(33, 'Niger', '797.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(34, 'Luxembourg', '4719.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(35, 'Saint Helena', '1270.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(36, 'Greenland', '1560.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(37, 'South Georgia and the South Sandwich Islands', '1301.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(38, 'Madagascar', '2372.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(39, 'Samoa', '2471.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(40, 'Thailand', '4492.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(41, 'Burkina Faso', '4955.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(42, 'Paraguay', '4397.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(43, 'Comoros', '2431.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(44, 'Israel', '2159.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(45, 'Tuvalu', '3637.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(46, 'Sri Lanka', '1376.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(47, 'Jersey', '4437.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(48, 'Albania', '3873.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(49, 'Andorra', '3978.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59'),
(50, 'Kuwait', '1297.00', '1', '2022-11-20 18:49:59', '2022-11-20 18:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(2, 'OFF100F', 'fixed', '100.00', '1000.00', '2022-10-03 17:32:54', '2022-10-04 22:47:21', '2022-10-01'),
(4, 'OFF20', 'percent', '20.00', '1200.00', '2022-10-03 17:47:52', '2022-10-03 20:11:11', '2022-10-05'),
(5, 'OFF30', 'percent', '30.00', '1300.00', '2022-10-04 22:33:59', '2022-10-04 22:41:58', '2022-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `expeditions`
--

CREATE TABLE `expeditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_perkm` decimal(8,2) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expeditions`
--

INSERT INTO `expeditions` (`id`, `name`, `cost_perkm`, `location`, `created_at`, `updated_at`) VALUES
(1, 'FedEx', '0.10', 'Indonesia', '2022-11-21 01:50:49', '2022-11-21 01:50:49'),
(2, 'DHL', '0.20', 'Indonesia', '2022-11-21 01:52:40', '2022-11-21 01:52:40'),
(3, 'FWD Express', '0.25', 'Indonesia', '2022-11-21 01:52:40', '2022-11-21 01:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4', 6, '2022-09-21 06:33:49', '2022-09-21 23:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Omega Speedmaster GMT SW005', 'Find your luxury here!', '1800', '127.0.0.1:8000/shop', '1668474583.jpg', 1, '2022-11-14 18:09:43', '2022-11-14 18:09:43'),
(6, 'HTC Wildfire E2 Plus', 'With 48 MP Quad Camper', '200', '127.0.0.1:8000/shop', '1668474942.jpg', 1, '2022-11-14 18:15:42', '2022-11-14 18:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_15_062538_create_sessions_table', 1),
(7, '2022_08_18_064559_create_categories_table', 1),
(8, '2022_08_18_064919_create_products_table', 1),
(9, '2022_09_19_035627_create_home_sliders_table', 1),
(10, '2022_09_21_052552_create_home_categories_table', 1),
(11, '2022_09_21_113031_create_sales_table', 2),
(12, '2022_10_03_061845_create_coupons_table', 3),
(13, '2022_10_05_041409_add_expiry_date_to_coupons_table', 4),
(14, '2022_10_05_060848_create_orders_table', 5),
(15, '2022_10_05_060931_create_order_items_table', 5),
(16, '2022_10_05_061352_create_shippings_table', 5),
(17, '2022_10_05_062611_create_transactions_table', 5),
(18, '2022_10_12_054703_add_delivered_canceled_date_to_orders_table', 6),
(19, '2022_10_13_044603_create_reviews_table', 7),
(20, '2022_10_13_044941_add_rstatus_to_order_items_table', 7),
(21, '2022_10_16_105812_create_contacts_table', 8),
(22, '2022_10_16_114303_create_settings_table', 9),
(23, '2022_10_17_044002_create_shoppingcart_table', 10),
(24, '2022_10_17_051602_create_subcategories_table', 11),
(25, '2022_10_17_101114_add_subcategory_id_to_products_table', 12),
(26, '2022_10_18_002517_create_profiles_table', 13),
(27, '2022_10_23_030456_create_product_attributes_table', 14),
(28, '2022_10_23_034930_create_attribute_values_table', 15),
(29, '2022_10_23_063233_add_options_to_order_items_table', 16),
(30, '2022_11_21_010546_create_countries_table', 17),
(31, '2022_11_21_013424_create_countries_table', 18),
(32, '2022_11_21_014445_create_expeditions_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `shipping_charge` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `expedition_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `shipping_charge`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`, `expedition_id`) VALUES
(3, 1, '123.00', '0.00', '25.83', '0.00', '148.83', 'Alfian', 'Reno', '1234567890', 'alfianreno2@gmail.com', 'test line1', 'test line2', 'Sidoarjo', 'East Java', 'Indonesia', '76376', 'ordered', 0, '2022-10-09 23:17:26', '2022-10-09 23:17:26', NULL, NULL, 0),
(4, 1, '237.00', '0.00', '49.77', '0.00', '286.77', 'Alfian', 'Reno', '1234567890', 'alfianreno2@gmail.com', 'Bit-2', NULL, 'Sidoarjo', 'East Java', 'Indonesia', '61272', 'canceled', 0, '2022-10-10 00:42:58', '2022-10-11 23:10:31', NULL, '2022-10-12', 0),
(9, 1, '369.00', '0.00', '77.49', '0.00', '446.49', 'Alfian', 'Reno', '123456789', 'alfianreno2@gmail.com', 'Bit-22', 'Bit-2', 'Sidoarjo', 'East Java', 'Indonesia', '61272', 'ordered', 0, '2022-10-16 21:27:39', '2022-10-16 21:27:39', NULL, NULL, 0),
(10, 1, '444.00', '0.00', '93.24', '0.00', '537.24', 'Alfian Reno', 'Prasetyo', '1234567890', 'alfianreno2@gmail.com', 'Bit-22', 'Bit-2', 'Sidoarjo', 'East Java', 'Indonesia', '61272', 'ordered', 0, '2022-10-16 21:29:25', '2022-10-16 21:29:25', NULL, NULL, 0),
(11, 1, '1332.00', '0.00', '279.72', '0.00', '1611.72', 'Alfian', 'Reno', '1234567890', 'alfianreno2@gmail.com', 'Bit-2', 'Bit-22', 'Sidoarjo', 'East Java', 'Indonesia', '12', 'ordered', 0, '2022-10-16 21:32:06', '2022-10-16 21:32:06', NULL, NULL, 0),
(12, 1, '246.00', '0.00', '51.66', '0.00', '297.66', 'Alfian', 'Reno', '1234567890', 'alfianreno2@gmail.com', 'Bit-2', 'Bit-22', 'Sidoarjo', 'East Java', 'Indonesia', '12', 'ordered', 0, '2022-10-16 21:35:58', '2022-10-16 21:35:58', NULL, NULL, 0),
(17, 1, '61.00', '0.00', '6.71', '1125.00', '1192.71', 'Alfian', 'Panci', '1234434354652', 'alfianreno2@gmail.com', 'Bit-2', 'Bit-22', 'Sidoarjo', 'East Java', 'British Indian Ocean Territory (Chagos Archipelago)', '112112112112', 'ordered', 0, '2022-11-20 22:32:07', '2022-11-20 22:32:07', NULL, NULL, 3),
(18, 1, '49.00', '0.00', '5.39', '451.00', '505.39', 'Alfian Reno', 'Prasetyo', '1234567890', 'alfianreno2@gmail.com', 'Bit-22', 'Bit-2', 'Sidoarjo', 'East Java', 'Denmark', '112112112112', 'ordered', 0, '2022-11-20 22:54:32', '2022-11-20 22:54:32', NULL, NULL, 2),
(19, 1, '419.00', '0.00', '46.09', '783.60', '1248.69', 'Fance', 'Panci', '0987654321', 'alfianreno2@gmail.com', 'Bit-2', 'Bit-22', 'Sidoarjo', 'East Java', 'Martinique', '112112112112', 'ordered', 0, '2022-11-21 16:49:35', '2022-11-21 16:49:35', NULL, NULL, 2),
(20, 1, '70.00', '0.00', '7.70', '533.00', '610.70', 'Fance', 'Reno', '1234434354652', 'alfianreno2@gmail.com', 'Bit-22', 'Bit-2', 'Sidoarjo', 'East Java', 'Belarus', '112112112112', 'ordered', 0, '2022-11-21 17:43:07', '2022-11-21 17:43:07', NULL, NULL, 3),
(21, 26, '96.00', '0.00', '10.56', '355.00', '461.56', 'Alfian Reno', 'Prasetyo', '1234567890', 'alfianreno2@gmail.com', 'Bit-2', 'Bit-22', 'Sidoarjo', 'East Java', 'Nepal', '112112112112', 'ordered', 0, '2022-11-21 23:07:56', '2022-11-21 23:07:56', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(19, 6, 17, '61.00', 2, '2022-11-20 22:32:07', '2022-11-20 22:32:07', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(20, 6, 18, '49.00', 1, '2022-11-20 22:54:32', '2022-11-20 22:54:32', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(21, 10, 19, '419.00', 1, '2022-11-21 16:49:35', '2022-11-21 16:49:35', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(22, 2, 20, '70.00', 1, '2022-11-21 17:43:07', '2022-11-21 17:43:07', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(23, 2, 21, '96.00', 1, '2022-11-21 23:07:56', '2022-11-21 23:07:56', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

--
-- Triggers `order_items`
--
DELIMITER $$
CREATE TRIGGER `kurang_stok` BEFORE INSERT ON `order_items` FOR EACH ROW UPDATE products SET quantity = quantity - new.quantity WHERE id = new.product_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$KGVK7f7NNyHY3y1BB7dNT.ZY6JTA/qq59OsLT/ABm2kbt.rA8G14S', '2022-10-16 19:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(2, 'Oppo XS 5', 'oppo-xs-5', 'Soluta quibusdam a vero. Voluptas qui est possimus numquam qui nemo. Omnis ut possimus velit.', 'Qui sit magni odit architecto. Possimus odit quidem odio eos. Perferendis nihil vero rerum id. Incidunt deserunt et quia veritatis asperiores at. Necessitatibus et est officia. Quae possimus ipsam quia doloribus dolores ducimus impedit. Quia repellendus ipsum aut iste. Suscipit quisquam officiis facere nihil quae. Iure amet sed occaecati omnis dignissimos ut. Nihil non debitis fugiat sint dolores facere velit tempore. Officia cum nostrum recusandae est voluptas.', '96.00', '70.00', 'DIGI130', 'instock', 0, 149, '1667189971.jpg', NULL, 1, '2022-09-20 23:32:17', '2022-10-30 22:12:17', 11),
(6, 'Xbox 360 White Controller', 'xbox-360-white-controller', 'Voluptas qui aspernatur molestias nam officiis. Beatae nihil fugit quis accusamus tenetur fugiat dolorum recusandae.', 'Repudiandae dolore maxime maiores sed consequatur quia ad. Rerum exercitationem excepturi ut et in ducimus iusto. Aut sit soluta sapiente in molestiae laboriosam quasi. In enim est provident neque aut. Harum omnis id et. Neque occaecati voluptatem autem iure debitis non sunt. Qui iste est et. Provident minima excepturi libero ut officia ullam. Quos quos enim omnis. Est fugiat deserunt ut enim. Qui aliquid molestiae natus nihil sequi nulla. Tenetur deleniti quisquam earum et repudiandae velit.', '61.00', '49.00', 'XBOX9394', 'instock', 0, 161, 'digital_18.jpg', NULL, 6, '2022-09-20 23:32:17', '2022-10-30 22:14:59', 18),
(7, 'Samsung Grand Prime', 'samsung-grand-prime', 'Ex tempora vel magnam recusandae reprehenderit animi. Autem ratione qui mollitia minima.', 'Doloremque vitae voluptatem a in dolores fugit. Eum nemo quis eum quo quae tempora. Quis esse beatae quas qui. Quod quas delectus tempora minima. Non et dolores magni et laudantium. Dolores inventore minima adipisci modi aut earum. Quis odio deserunt quia itaque repudiandae. A ab asperiores voluptatem sit non eaque laborum. Rerum et numquam eaque beatae totam. Ea optio aperiam perspiciatis quis facilis quas.', '235.00', '220.00', 'SAMSUNG8345', 'instock', 0, 137, 'digital_1.jpg', NULL, 1, '2022-09-20 23:32:17', '2022-10-31 00:13:39', 26),
(8, 'Harman Kardon Onyx 7', 'harman-kardon-onyx-7', 'Laudantium ut beatae ipsum ullam rerum. Praesentium corrupti tempore id perspiciatis qui rem. Quasi consequatur qui aut cum consequatur temporibus odio libero.', 'Sit ut aperiam ut reiciendis nisi exercitationem at eos. Iste minus vel odio reiciendis sit. Magnam ex accusantium in rerum esse assumenda dignissimos. Dolor dolor animi et fugit voluptatem accusantium qui sint. Nisi asperiores aliquid et modi. Nam necessitatibus similique consequatur non unde. Suscipit laborum recusandae dignissimos. Neque enim eum perspiciatis sed laudantium omnis laudantium.', '447.00', '435.00', 'HK3456', 'instock', 0, 113, 'digital_3.jpg', NULL, 8, '2022-09-20 23:32:17', '2022-10-30 22:19:24', 19),
(9, 'Acer Ideapad Gaming 3', 'acer-ideapad-gaming-3', 'Eos consequatur ut et sed sit ut. Ea voluptate dolores autem quas. Aut aut nam ea excepturi.', 'Ipsam magnam eos sapiente temporibus fuga omnis. Veritatis adipisci consequatur tempora vel quis aliquid ipsum ut. Dolores architecto ea officiis sequi officia voluptatem ea. Quo officiis cum voluptatum. Sequi voluptate id sit esse et. Odio eius veritatis quasi amet molestiae quae laudantium. Nisi doloremque dolor aut eos. Nobis nihil numquam mollitia ut et. Nulla assumenda velit aut dolorum. Nisi voluptatem tempora et ullam. Blanditiis at qui vitae minus consequatur et earum provident.', '110.00', '75.00', 'ACER2974', 'instock', 0, 177, 'digital_4.jpg', NULL, 4, '2022-09-20 23:32:17', '2022-10-30 22:22:33', 20),
(10, 'Huawei MatePad 4', 'huawei-matepad-4', 'Ullam qui vel et non ducimus. Impedit excepturi voluptatem aut nostrum nemo. Expedita ut provident qui nesciunt ut ipsum nulla.', 'Voluptas consequatur nihil maiores dolor commodi. Placeat adipisci vel ut corrupti. Ipsa consequatur repudiandae exercitationem enim sit maiores natus. Quae architecto sunt sed id maiores rerum quod. Est natus qui ullam commodi dolores sequi. Delectus cupiditate non nostrum quo. Eaque laudantium voluptatibus quasi perferendis dolor. Ut temporibus at sapiente error aut officiis. Ad vel ut voluptates omnis.', '419.00', '405.00', 'DIGI182', 'instock', 0, 170, '1667193895.jpg', NULL, 5, '2022-09-20 23:32:17', '2022-10-30 22:24:55', 21),
(11, 'Asus Zenfone Live 1', 'asus-zenfone-live-1', 'Aut et quo aut. Enim nobis consectetur in et qui. Vitae libero labore et esse et accusamus accusamus. Sed doloremque fugit et voluptate. Eum voluptatem possimus corporis eum consequatur.', 'Cupiditate dolorem ut accusamus fuga sit dolorem dolor. Natus qui id tenetur natus non. Hic architecto molestiae ut doloremque non repellat. Voluptatem dolor non et aspernatur. Hic nam animi expedita nam vero. Pariatur omnis esse aliquid omnis. Animi est quos alias dolor. Hic labore eos maiores ea voluptatem. Sit consequatur vitae corrupti et nulla ex. Nihil accusamus ducimus corporis id perferendis saepe qui.', '312.00', '300.00', 'DIGI144', 'instock', 0, 178, 'digital_2.jpg', NULL, 1, '2022-09-20 23:32:17', '2022-10-30 22:26:38', 22),
(12, 'Samsung Galaxy A33', 'samsung-galaxy-a33', 'Ratione enim consectetur sed enim amet dolorum facere quo. Voluptatem ullam nemo nobis dolore impedit sed distinctio. Rerum repellat explicabo id facere. Enim vel nihil dignissimos quasi dolores.', 'Voluptates architecto id quam enim nesciunt totam consequuntur. Ea doloremque quos vitae quidem iusto ipsum. Est doloribus ipsum non nobis. Tempore ipsam ratione autem ut. Aut excepturi quas tempore reprehenderit architecto. Dolorum aut odio id voluptatibus. Nulla vitae distinctio dolores delectus. Consequatur aspernatur neque aut quis autem quam adipisci. Dolores laborum necessitatibus quia facere deserunt dignissimos molestias.', '476.00', '446.00', 'SAMSUNG7634', 'instock', 0, 103, '1667264416.jpg', NULL, 1, '2022-09-20 23:32:17', '2022-10-31 18:00:16', 26),
(13, 'Panasonic DV3 ', 'panasonic-dv3', 'Minus tempora qui est et commodi. Eligendi esse voluptatibus voluptatibus laborum distinctio dolorem ratione est. At eos molestias quis quasi illum. Itaque est qui consectetur praesentium.', 'Sapiente maiores laborum ut enim eum. Odit distinctio pariatur quae earum nobis eligendi. Quasi molestias quibusdam voluptas voluptates inventore fugiat repudiandae vitae. Quia similique hic nesciunt dicta earum quasi eligendi. Maxime atque repudiandae officiis aspernatur at. Quidem omnis repellendus nisi magnam officia ut assumenda. Accusamus quas expedita aut atque.', '453.00', '423.00', 'PANASONIC3465', 'instock', 0, 138, 'digital_9.jpg', NULL, 2, '2022-09-20 23:32:17', '2022-10-30 22:49:39', 23),
(14, 'Logitech LifeCam HD 300', 'logitech-lifecam-hd-300', 'Est qui blanditiis nesciunt consequuntur ut. Pariatur a error consequatur.', 'Illum et vitae ut dignissimos et. Repellendus ipsum quibusdam exercitationem dolor voluptatem. Sit blanditiis dolorem recusandae. Et et neque quas iusto quos. Assumenda velit facere commodi ut. Ex alias aspernatur magni itaque voluptas. Qui alias minima officiis in et iusto. Repellat unde cupiditate molestiae aut qui autem deleniti. Corporis ut ut rerum et perferendis aliquam. Dicta accusantium a vero reprehenderit. Porro officiis natus necessitatibus nobis. Perferendis odio odit quis.', '349.00', '300.00', 'LOGITECH39734', 'instock', 0, 147, 'digital_7.jpg', NULL, 9, '2022-09-20 23:32:17', '2022-10-30 22:52:27', 24),
(16, 'Asus Zenfone Live 2', 'asus-zenfone-live-2', 'Dolor eum reiciendis est et. Blanditiis accusamus odio amet eius officiis corrupti earum. Veniam qui qui dolores modi qui. Voluptatum ea ex aperiam quia temporibus nulla laboriosam numquam.', 'Laboriosam impedit cumque unde et quos eius. Et ea nihil commodi. Voluptas exercitationem mollitia quisquam ut. Labore assumenda nam eum quia reprehenderit eos. Possimus sit veritatis non tempore dolorum culpa. Sint tempore illo ducimus corrupti aperiam soluta. Culpa minima officiis voluptas esse minus eos.', '345.00', '330.00', 'ASUS83743', 'instock', 0, 127, 'digital_5.jpg', NULL, 1, '2022-09-20 23:32:17', '2022-10-30 23:22:18', 22),
(17, 'Mi Smart TV 24\'\'', 'mi-smart-tv-24', 'Iste commodi impedit unde dolorem. Molestiae nobis maiores placeat aut eaque itaque fugiat. Qui dicta veniam voluptas dolores et est nihil. Dolor ipsam reprehenderit aut ut.', 'Voluptatem eum vero fugit nihil recusandae. Iure iusto consectetur et et enim. Et omnis repudiandae cumque voluptatibus. Corrupti aliquid porro ea porro minima ad et. Deserunt odit qui minus voluptatum adipisci tempore officiis. Cumque fugit est quis consequuntur esse provident. Iusto et excepturi alias et quos et. Non iusto laboriosam aut.', '245.00', '230.00', 'DIGI2672', 'instock', 0, 155, 'digital_20.jpg', NULL, 2, '2022-09-20 23:32:17', '2022-10-31 00:17:57', 13),
(19, 'LG 55UP7500PTC 4K Smart UHD TV 55”', 'lg-55up7500ptc-4k-smart-uhd-tv-55', 'Blanditiis enim rem voluptates iusto. Eius sit dolore nam deleniti quam dolor sed. Nobis voluptas consequatur et et et. Consequuntur est mollitia exercitationem magnam laudantium quae odio dolores.', 'Amet numquam sed incidunt autem quia praesentium similique. Corporis voluptatem totam quia. Nobis ut adipisci consequatur delectus quaerat. Eum impedit sit non tempore. Fugiat excepturi aspernatur mollitia nihil. Et aut laboriosam sequi voluptatibus. Sequi qui non provident autem praesentium ab. Qui a laborum officiis ad placeat. Labore in voluptatum debitis aut minus libero.', '654.00', '621.00', 'LG762345', 'instock', 0, 138, 'digital_19.jpg', NULL, 2, '2022-09-20 23:32:17', '2022-10-31 18:05:44', 30),
(20, 'Acer Ideapad Gaming 5', 'acer-ideapad-gaming-5', 'Vitae quia illo ut qui impedit. Et suscipit praesentium repudiandae earum. Nihil expedita minus illum rerum nihil praesentium nulla. Unde alias omnis voluptatem ratione esse adipisci labore.', 'Nisi eos laboriosam eos velit. Quisquam ut facere quod pariatur. Facere voluptatem a eligendi aut veritatis. Qui eligendi modi reiciendis dignissimos ut. Odio ullam autem eligendi illo sint numquam ipsam. Expedita iusto officiis dolores quia eos consequatur et temporibus. Ex voluptatem ut autem neque nobis rerum sunt.', '339.00', '319.00', 'ACER76374', 'instock', 0, 153, 'digital_14.jpg', NULL, 4, '2022-09-20 23:32:17', '2022-10-31 18:06:27', 20),
(21, 'Sony MDR-ZX110', 'sony-mdr-zx110', 'Dolores sunt eos sint sit in. Sint optio quam asperiores enim et aut voluptatem. Magni eos molestiae nihil asperiores beatae excepturi fuga.', 'Voluptas eligendi aut magni ex. Ea expedita reprehenderit vel qui explicabo non. Aut incidunt sunt quo laborum. Sit est necessitatibus delectus at sint libero. Quia consequatur placeat quod. Nihil beatae consequatur velit nulla. Facilis rerum ut molestiae et rerum deserunt quisquam. Minus officia magni ullam ut illo est voluptas. Occaecati quasi quisquam eius. Iure aperiam omnis laudantium eveniet et sunt. Impedit fuga eaque autem repellendus.', '569.00', '549.00', 'SONY76452', 'instock', 0, 184, 'digital_13.jpg', NULL, 11, '2022-09-20 23:32:17', '2022-10-31 18:03:16', 29),
(22, 'iPhone 14 Pro ', 'iphone-14-pro', 'Accusamus consequatur repudiandae aliquid ad quis ipsa voluptatem. Animi molestias rerum nulla sit expedita rerum asperiores fugiat. Fugit quia quia eligendi.', 'Sit ratione est dolore in nemo enim. Repellendus rerum architecto accusamus aut ut odio. Et quis iusto harum repellendus. Aut assumenda nulla soluta qui est reiciendis tenetur eos. Mollitia optio aut dolorem placeat sit provident. Est aliquid molestias harum reiciendis cumque. Sed laudantium cumque suscipit facere consequuntur numquam quae. Repellendus et eligendi nisi ut. Vel qui rerum dolorem quas ut. Excepturi ea molestiae velit libero vel animi.', '238.00', '220.00', 'IPHONE84572', 'instock', 0, 177, '1667264066.png', NULL, 1, '2022-09-20 23:32:17', '2022-10-31 17:54:26', 28),
(30, 'Xiaomi Watch 001', 'xiaomi-watch-001', '<p>Xiaomi Watch 001 short desc</p>', '<p>Xiaomi Watch 001 desc</p>', '243.00', '220.00', 'XIAOMI294358', 'instock', 0, 111, '1667200549.jpg', NULL, 3, '2022-10-31 00:15:49', '2022-10-31 00:15:49', 17);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colour', '2022-10-22 20:37:53', '2022-10-22 20:37:53'),
(3, 'Size', '2022-10-22 20:48:32', '2022-10-22 20:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-12-30 04:33:25', 1, NULL, '2022-10-31 18:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FqE8rsDZIwQQiOaUhjVFedQbu89FUuucRTtjc9LS', 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMFZTMXZPVGFZSmF4YUl2cnZWaEkzVjJvV0Z1RWU4TDBoelJ5VlJoNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90aGFuay15b3UiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHFLbHA5dDExNlpOVkl5VXA1N0MwWk8yam9ZTE4xTzdSSXJFc3UuYjVwNG5Yb1gzYmpheGxxIjtzOjQ6ImNhcnQiO2E6MTp7czo4OiJ3aXNobGlzdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fX0=', 1669097281);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'alfianreno2@gmail.com', '+6285336164385', '', 'Tanggulangin,JawaTimur,Indonesia', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126579.92032003422!2d112.7214685!3d-7.506857899999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7ddf5a24ec335%3A0x4027a76e3531d20!2sTanggulangin%2C%20Sidoarjo%20Regency%2C%20East%20Java!5e0!3m2!1sen!2sid!4v1665924143470!5m2!1sen!2sid', 'https://twitter.com/punishedrenn', 'https://facebook.com/kelapamuda21', '#', '#', '#', '2022-10-16 05:14:36', '2022-11-21 16:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 00:05:47', NULL),
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 00:05:47', NULL),
('alfianreno2@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"Oppo XS 5\";s:5:\"price\";d:96;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 23:06:33', NULL),
('alfianreno2@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 23:06:26', NULL),
('user@user.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 18:04:51', NULL),
('user@user.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-22 23:40:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 'Oppo', 'oppo', 1, '2022-10-17 03:31:47', '2022-10-30 22:09:28'),
(13, 'Xiaomi TV', 'xiaomi-tv', 2, '2022-10-30 21:08:09', '2022-10-31 00:09:08'),
(15, 'Samsung TV', 'samsungtv', 2, '2022-10-30 21:18:17', '2022-10-31 00:09:44'),
(17, 'Xiaomi Watch', 'xiaomi-watch', 3, '2022-10-30 22:11:30', '2022-10-31 00:10:04'),
(18, 'Xbox', 'xbox', 6, '2022-10-30 22:14:20', '2022-10-30 22:14:20'),
(19, 'Harman & Kardon', 'harman-kardon', 8, '2022-10-30 22:18:21', '2022-10-30 22:18:21'),
(20, 'Acer', 'acer', 4, '2022-10-30 22:19:52', '2022-10-30 22:19:52'),
(21, 'Huawei', 'huawei', 5, '2022-10-30 22:23:52', '2022-10-30 22:23:52'),
(22, 'Asus', 'asus', 1, '2022-10-30 22:25:28', '2022-10-30 22:25:28'),
(23, 'Panasonic TV', 'panasonic-tv', 2, '2022-10-30 22:48:22', '2022-10-31 00:09:26'),
(24, 'Logitech', 'logitech', 9, '2022-10-30 22:51:42', '2022-10-30 22:51:42'),
(26, 'Samsung', 'samsung', 1, '2022-10-31 00:13:26', '2022-10-31 00:13:26'),
(27, 'Xiaomi', 'xiaomi', 1, '2022-10-31 00:14:06', '2022-10-31 00:14:06'),
(28, 'iPhone', 'iphone', 1, '2022-10-31 17:45:39', '2022-10-31 17:45:39'),
(29, 'Sony', 'sony', 11, '2022-10-31 18:02:24', '2022-10-31 18:02:24'),
(30, 'LG TV', 'lg-tv', 2, '2022-10-31 18:04:33', '2022-10-31 18:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'cod', 'pending', '2022-10-09 23:17:26', '2022-10-09 23:17:26'),
(2, 1, 4, 'card', 'approved', '2022-10-10 00:43:01', '2022-10-10 00:43:01'),
(6, 1, 9, 'cod', 'pending', '2022-10-16 21:27:39', '2022-10-16 21:27:39'),
(7, 1, 10, 'cod', 'pending', '2022-10-16 21:29:25', '2022-10-16 21:29:25'),
(8, 1, 11, 'cod', 'pending', '2022-10-16 21:32:06', '2022-10-16 21:32:06'),
(9, 1, 12, 'cod', 'pending', '2022-10-16 21:35:58', '2022-10-16 21:35:58'),
(14, 1, 17, 'cod', 'pending', '2022-11-20 22:32:07', '2022-11-20 22:32:07'),
(15, 1, 18, 'cod', 'pending', '2022-11-20 22:54:32', '2022-11-20 22:54:32'),
(16, 1, 19, 'cod', 'pending', '2022-11-21 16:49:35', '2022-11-21 16:49:35'),
(17, 1, 20, 'cod', 'pending', '2022-11-21 17:43:07', '2022-11-21 17:43:07'),
(18, 26, 21, 'cod', 'pending', '2022-11-21 23:07:56', '2022-11-21 23:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'aaaaa@gmail.com', '2022-11-16 23:49:51', '$2y$10$OzbnVTj8okyJMTwdZco8Vu7tY7NJ4q0yyQzrMB6SmIo4iYufqZl0K', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-09-20 23:36:46', '2022-11-16 23:49:51'),
(23, 'market manager', 'marketmanager@gmail.com', NULL, '$2y$10$KBRh8Ncsoa6rOdbzhs1wyuv3sbSDAjDyI/oh1Dm06t8qzYqpXX05m', NULL, NULL, NULL, NULL, NULL, NULL, 'MM', '2022-11-21 20:50:14', '2022-11-21 20:50:14'),
(24, 'lmao', 'lmao@gmail.con', NULL, '$2y$10$XI2P99BPqrHEihEcPWVa8OHJj0pD.XKyMrTZT/ff//q5FkTBr9.zC', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-21 22:20:52', '2022-11-21 22:20:52'),
(25, 'user', 'user@user1.com', NULL, '$2y$10$Dk40SrZXAl7tcRY8..wlY.HRNu4ORdr2SEyb8Dny65vT1mJFdh2GC', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-21 22:26:44', '2022-11-21 22:26:44'),
(26, 'Alfian Reno Prasetyo', 'alfianreno2@gmail.com', NULL, '$2y$10$qKlp9t116ZNVIyUp57C0ZO2joYLN1O7RIrEsu.b5p4nXoX3bjaxlq', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-21 23:03:06', '2022-11-21 23:03:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `expeditions`
--
ALTER TABLE `expeditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expeditions`
--
ALTER TABLE `expeditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
