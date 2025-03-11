-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 11:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delicioz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint UNSIGNED NOT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_category_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `restaurant_id`, `name`, `description`, `price`, `recipe`, `created_at`, `updated_at`, `food_category_id`, `image`, `slug`, `sold_quantity`) VALUES
(1, 1, 'z', 'a', '1.00', NULL, '2025-03-11 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon', 0),
(3, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon1', 0),
(4, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12', 0),
(5, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon121', 0),
(6, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon1211', 0),
(7, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12aa', 0),
(8, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12aaaa', 0),
(9, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12x', 0),
(10, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luoan12', 0),
(11, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', NULL, '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12az', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_categories`
--

INSERT INTO `food_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Accessories', 'Accessories', '2025-03-10 01:06:09', '2025-03-10 01:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_in_stock` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_10_045113_create_permission_tables', 2),
(5, '2025_03_10_071927_create_ingredients_table', 3),
(6, '2025_03_10_071931_create_orders_table', 4),
(7, '2025_03_10_071934_create_order_items_table', 4),
(8, '2025_03_10_071936_create_promotions_table', 4),
(9, '2025_03_10_071943_create_restaurants_table', 5),
(10, '2025_03_10_071945_create_tables_table', 5),
(11, '2025_03_10_073539_create_food_categories_table', 6),
(12, '2025_03_10_073553_create_post_categories_table', 6),
(13, '2025_03_10_073556_create_posts_table', 6),
(14, '2025_03_10_074027_add_food_category_id_to_dishes_table', 6),
(15, '2025_03_10_081029_add_image_to_dishes_table', 7),
(16, 'a2025_03_10_081135_add_slug_and_sold_quantity_to_dishes_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','confirmed','preparing','shipping','completed','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash_on_delivery','e_wallet') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `dish_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(2, 'view_any_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(3, 'create_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(4, 'update_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(5, 'delete_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(6, 'delete_any_role', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(7, 'view_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(8, 'view_any_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(9, 'create_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(10, 'update_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(11, 'restore_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(12, 'restore_any_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(13, 'replicate_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(14, 'reorder_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(15, 'delete_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(16, 'delete_any_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(17, 'force_delete_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(18, 'force_delete_any_user', 'web', '2025-03-09 21:56:56', '2025-03-09 21:56:56'),
(19, 'view_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(20, 'view_any_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(21, 'create_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(22, 'update_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(23, 'restore_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(24, 'restore_any_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(25, 'replicate_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(26, 'reorder_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(27, 'delete_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(28, 'delete_any_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(29, 'force_delete_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(30, 'force_delete_any_dish', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(31, 'view_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(32, 'view_any_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(33, 'create_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(34, 'update_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(35, 'restore_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(36, 'restore_any_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(37, 'replicate_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(38, 'reorder_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(39, 'delete_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(40, 'delete_any_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(41, 'force_delete_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(42, 'force_delete_any_ingredient', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(43, 'view_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(44, 'view_any_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(45, 'create_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(46, 'update_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(47, 'restore_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(48, 'restore_any_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(49, 'replicate_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(50, 'reorder_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(51, 'delete_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(52, 'delete_any_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(53, 'force_delete_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(54, 'force_delete_any_invoice', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(55, 'view_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(56, 'view_any_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(57, 'create_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(58, 'update_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(59, 'restore_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(60, 'restore_any_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(61, 'replicate_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(62, 'reorder_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(63, 'delete_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(64, 'delete_any_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(65, 'force_delete_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(66, 'force_delete_any_order', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(67, 'view_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(68, 'view_any_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(69, 'create_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(70, 'update_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(71, 'restore_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(72, 'restore_any_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(73, 'replicate_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(74, 'reorder_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(75, 'delete_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(76, 'delete_any_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(77, 'force_delete_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(78, 'force_delete_any_order::item', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(79, 'view_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(80, 'view_any_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(81, 'create_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(82, 'update_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(83, 'restore_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(84, 'restore_any_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(85, 'replicate_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(86, 'reorder_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(87, 'delete_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(88, 'delete_any_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(89, 'force_delete_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(90, 'force_delete_any_promotion', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(91, 'view_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(92, 'view_any_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(93, 'create_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(94, 'update_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(95, 'restore_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(96, 'restore_any_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(97, 'replicate_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(98, 'reorder_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(99, 'delete_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(100, 'delete_any_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(101, 'force_delete_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(102, 'force_delete_any_reservation', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(103, 'view_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(104, 'view_any_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(105, 'create_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(106, 'update_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(107, 'restore_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(108, 'restore_any_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(109, 'replicate_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(110, 'reorder_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(111, 'delete_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(112, 'delete_any_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(113, 'force_delete_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(114, 'force_delete_any_restaurant', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(115, 'view_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(116, 'view_any_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(117, 'create_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(118, 'update_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(119, 'restore_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(120, 'restore_any_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(121, 'replicate_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(122, 'reorder_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(123, 'delete_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(124, 'delete_any_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(125, 'force_delete_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(126, 'force_delete_any_table', 'web', '2025-03-10 00:31:24', '2025-03-10 00:31:24'),
(127, 'view_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(128, 'view_any_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(129, 'create_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(130, 'update_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(131, 'restore_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(132, 'restore_any_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(133, 'replicate_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(134, 'reorder_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(135, 'delete_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(136, 'delete_any_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(137, 'force_delete_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(138, 'force_delete_any_food::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(139, 'view_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(140, 'view_any_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(141, 'create_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(142, 'update_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(143, 'restore_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(144, 'restore_any_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(145, 'replicate_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(146, 'reorder_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(147, 'delete_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(148, 'delete_any_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(149, 'force_delete_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(150, 'force_delete_any_post', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(151, 'view_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(152, 'view_any_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(153, 'create_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(154, 'update_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(155, 'restore_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(156, 'restore_any_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(157, 'replicate_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(158, 'reorder_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(159, 'delete_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(160, 'delete_any_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(161, 'force_delete_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(162, 'force_delete_any_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `number_of_people` int NOT NULL,
  `reservation_time` datetime NOT NULL,
  `status` enum('pending','confirmed','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `location`, `description`, `created_at`, `updated_at`) VALUES
(1, 'UNATOTO', '248 Đ. Nguyễn Hồng Đào, Phường 14, Tân Bình, Hồ Chí Minh', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '2025-03-10 01:07:59', '2025-03-10 01:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-03-09 21:56:43', '2025-03-09 21:56:43'),
(2, 'User', 'web', '2025-03-09 22:06:46', '2025-03-09 22:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Q0hJYgmfjox1ek0AClQbUZMezxM491DxoaeeyJ6u', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZWhPYjFUVUVpSDdXYXdwVHVPRXNUaWFpRjRPa1VYTENRVkRraHhZYiI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRyWGNzZ2VmYy9yOXpyaW9kUkREcjZ1SVhsakJDZ09tdmU3QTBVQlpaQ1JmU2ZSdFVqZXlBMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fX0=', 1741689743),
('UHveM4pdkvlyHzLBlgLos7Q5GuLD0I8GWDNcLGGl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTjVwb1pJcEFvQms2YjdqcWdaY05RTVdNU0ZONVN1eEZDdmZOZ3VQMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkcHNIaHAxQnN6TVNUNW9Tc2JDS2E1Lm9nMHF2MFVXMllCa0Y2cFg5amhKUmpDNUpmaHhORDIiO30=', 1741692027);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint UNSIGNED NOT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `table_number` int NOT NULL,
  `status` enum('available','reserved','occupied') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$psHhp1BszMST5oSsbCKa5.og0qv0UW2YBkF6pX9jhJRjC5JfhxND2', NULL, NULL, '2025-03-09 21:32:39', '2025-03-09 21:32:39'),
(2, '2509roblox@gmail.com', '2509roblox@gmail.com', NULL, '$2y$12$Or2tM4Ujr9MQ3v97e29QOei0WUkREf/gxvf/m0ooutyKhkGHacZiC', 'eoEOqsSYFFpy5ZAWF5kZvxZhoblcR817jVUvVJtBLgARWjaIM9VLu0YaR41u', NULL, '2025-03-09 22:06:36', '2025-03-09 22:07:45'),
(3, '2509robloxzzzz@gmail.com', '2509robloxzzzz@gmail.com', NULL, '$2y$12$8z/Uea2523e784fRRjRC.u3kd4gpAPIByo4SYGI1Y0t.1BCrj.CJe', NULL, NULL, '2025-03-10 02:01:42', '2025-03-10 02:01:42'),
(4, '2509robloxx@gmail.com', '2509robloxx@gmail.com', NULL, '$2y$12$OSVm70wU32pr/F2W4NNl4eEwdc.fiIaB1tZz/IBa9/mVsC0gXy97.', NULL, NULL, '2025-03-11 03:38:32', '2025-03-11 03:38:32'),
(5, '2508roblox@gmail.com', '2508roblox@gmail.com', NULL, '$2y$12$rXcsgefc/r9zriodRDDr6uIXljBCgOmve7A0UBZZCRfSfRtUjeyA2', NULL, NULL, '2025-03-11 03:40:28', '2025-03-11 03:40:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dishes_slug_unique` (`slug`),
  ADD KEY `dishes_food_category_id_foreign` (`food_category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_dish_id_foreign` (`dish_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

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
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_food_category_id_foreign` FOREIGN KEY (`food_category_id`) REFERENCES `food_categories` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
