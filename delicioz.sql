-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2025 at 11:12 AM
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, '123', '123@2', '123', '2025-03-14 13:31:49', '2025-03-14 13:31:49'),
(2, '123', '1@1', 'Message123', '2025-03-14 13:33:56', '2025-03-14 13:33:56'),
(3, '1', '2@2', '123', '2025-03-14 13:35:06', '2025-03-14 13:35:06'),
(4, '123', '2509roblox@gmail.com', '123', '2025-03-14 13:35:32', '2025-03-14 13:35:32'),
(5, '123', '2509roblox@gmail.com', '123', '2025-03-16 13:08:57', '2025-03-16 13:08:57'),
(6, 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', '2025-03-16 13:51:15', '2025-03-16 13:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint UNSIGNED NOT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_category_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_quantity` int NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `restaurant_id`, `name`, `description`, `price`, `created_at`, `updated_at`, `food_category_id`, `image`, `slug`, `sold_quantity`, `status`) VALUES
(1, 1, 'z', 'a', '1.00', '2025-03-11 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon', 0, ''),
(3, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon1', 0, ''),
(4, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12', 0, ''),
(5, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon121', 0, ''),
(6, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon1211', 0, ''),
(7, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12aa', 0, ''),
(8, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12aaaa', 0, ''),
(9, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12x', 0, ''),
(10, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luoan12', 0, ''),
(11, 1, 'Món Lươn Nhật', 'Món Lươn Nhật được cho là biểu tượng của dinh dưỡng, UNATOTO – thương hiệu cơm lươn Nhật Bản. Tại đây, thực khách sẽ có những trải nghiệm và món ăn tuyệt hảo nhất.', '100000.00', '2025-03-10 01:15:05', '2025-03-10 01:15:05', 1, '01JNZHYBXGYFFY6PCB6Y0E3CVF.png', 'luon12az', 0, '');

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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_in_stock` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `minimum_threshold` decimal(8,2) DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `quantity_in_stock`, `created_at`, `updated_at`, `minimum_threshold`, `unit`, `restaurant_id`) VALUES
(1, 'Bột tỏi', '20000.00', '2025-03-16 13:16:42', '2025-03-16 13:16:42', '100.00', 'gram', 1);

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
(16, 'a2025_03_10_081135_add_slug_and_sold_quantity_to_dishes_table', 8),
(17, '2025_03_12_175816_add_banner_and_slug_to_promotions_table', 9),
(18, '2025_03_12_180553_add_columns_to_ingredients_table', 10),
(19, '2025_03_12_181137_add_reservation_code_to_reservations_table', 11),
(20, '2025_03_12_181841_add_payment_status_to_orders_table', 12),
(21, '2025_03_12_182130_add_address_to_users_table', 13),
(22, '2025_03_12_182213_add_order_code_to_orders_table', 14),
(23, '2025_03_12_184419_add_notes_to_orders_table', 15),
(24, '2025_03_12_205620_add_column_to_reservations_table', 16),
(25, '2025_03_12_210147_add_columns_to_reservations_table', 17),
(26, '2025_03_12_210600_add_columns_to_restaurants_table', 18),
(27, '2025_03_14_184136_add_loyalty_points_to_users_table', 19),
(28, '2025_03_14_190852_add_restaurant_id_to_dishes_table', 20),
(29, '2025_03_14_202943_create_contacts_table', 20),
(30, '2025_03_15_104309_add_reservation_id_to_tables_table', 21),
(31, '2025_03_16_193606_add_short_description_to_restaurants_table', 22),
(32, '2025_03_16_194909_create_recipes_table', 23),
(33, '2025_03_16_204145_add_status_to_dishes_table', 24),
(34, '2025_03_17_094501_add_themes_settings_to_users_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','confirmed','preparing','shipping','completed','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_amount`, `payment_method`, `created_at`, `updated_at`, `payment_status`, `address`, `name`, `phone`, `email`, `order_code`, `notes`) VALUES
(1, 1, 'pending', '1200000.00', 'cod', '2025-03-12 11:34:44', '2025-03-12 11:34:44', 'unpaid', 'z', 'a', 'a', '2@2', 'ORDER_67D171544CA4E', NULL),
(2, 1, 'pending', '1200000.00', 'cod', '2025-03-12 11:34:57', '2025-03-12 11:34:57', 'unpaid', 'z', 'a', 'a', '2@2', 'ORDER_67D17161B6FFA', NULL),
(3, 1, 'pending', '1200000.00', NULL, '2025-03-12 11:35:29', '2025-03-12 11:35:29', 'unpaid', '123', '123', '123', '123@2', 'ORDER_67D17181E8D14', NULL),
(4, 1, 'pending', '1200000.00', 'cod', '2025-03-12 11:35:32', '2025-03-12 11:35:32', 'unpaid', '123', '123', '123', '123@2', 'ORDER_67D171846C01F', NULL),
(5, 1, 'pending', '0.00', 'cod', '2025-03-12 11:36:05', '2025-03-12 11:36:05', 'unpaid', 'a', 'a', 'a', 'a@2', 'ORDER_67D171A59CF85', NULL),
(6, 1, 'pending', '100000.00', 'bank', '2025-03-12 11:47:47', '2025-03-12 11:47:47', 'unpaid', '123', '123', '123', '123', 'ORDER_67D17463082DC', NULL),
(7, 1, 'pending', '0.00', NULL, '2025-03-12 11:55:30', '2025-03-12 11:55:30', 'unpaid', NULL, NULL, NULL, NULL, 'ORDER_67D17632DB3B1', NULL),
(8, 1, 'pending', '0.00', NULL, '2025-03-12 11:56:45', '2025-03-12 11:56:45', 'unpaid', NULL, NULL, NULL, NULL, 'ORDER_67D1767D0E328', NULL),
(9, 1, 'pending', '1200000.00', NULL, '2025-03-12 11:57:40', '2025-03-12 11:57:40', 'unpaid', NULL, NULL, NULL, NULL, 'ORDER_67D176B4AB117', NULL),
(10, 1, 'pending', '200000.00', 'bank', '2025-03-12 12:07:43', '2025-03-12 12:16:49', 'paid', '234', '234', '234', '234', 'ORDER_67D1790F3D639', NULL),
(11, 1, 'pending', '300000.00', 'bank', '2025-03-14 11:48:00', '2025-03-14 11:48:59', 'failed', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D4177076E5B', NULL),
(12, 1, 'pending', '100000.00', 'bank', '2025-03-14 11:50:17', '2025-03-14 11:50:37', 'failed', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D417F97A38C', NULL),
(13, 1, 'pending', '100000.00', 'bank', '2025-03-14 11:53:15', '2025-03-14 11:53:22', 'failed', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D418AB1D56A', NULL),
(14, 1, 'pending', '100000.00', 'cod', '2025-03-14 11:57:11', '2025-03-14 11:57:11', 'unpaid', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D4199761E5B', NULL),
(15, 1, 'pending', '100000.00', 'cod', '2025-03-14 11:57:13', '2025-03-14 11:57:13', 'unpaid', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D41999B012F', NULL),
(16, 1, 'pending', '100000.00', 'cod', '2025-03-14 11:57:35', '2025-03-14 11:57:35', 'unpaid', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D419AF7242A', NULL),
(17, 1, 'pending', '100000.00', 'bank', '2025-03-14 12:00:15', '2025-03-14 12:00:15', 'unpaid', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D41A4FF0437', NULL),
(18, 1, 'pending', '100000.00', 'cod', '2025-03-14 12:00:30', '2025-03-14 12:01:18', 'paid', '123', 'admin@gmail.com', '123', 'admin@gmail.com', 'ORDER_67D41A5E46F77', NULL),
(19, 1, 'pending', '400000.00', 'bank', '2025-03-16 13:50:16', '2025-03-16 13:50:21', 'failed', 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', 'ORDER_67D6D718122C7', NULL),
(20, 1, 'pending', '1600000.00', 'cod', '2025-03-17 02:40:03', '2025-03-17 02:40:03', 'paid', 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', 'ORDER_67D78B8307AEE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `dish_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `dish_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 12, '100000.00', '2025-03-12 11:35:29', '2025-03-12 11:35:29'),
(2, 4, 3, 12, '100000.00', '2025-03-12 11:35:32', '2025-03-12 11:35:32'),
(3, 6, 3, 1, '100000.00', '2025-03-12 11:47:47', '2025-03-12 11:47:47'),
(4, 9, 4, 12, '100000.00', '2025-03-12 11:57:40', '2025-03-12 11:57:40'),
(5, 10, 3, 2, '100000.00', '2025-03-12 12:07:43', '2025-03-12 12:07:43'),
(6, 11, 4, 3, '100000.00', '2025-03-14 11:48:00', '2025-03-14 11:48:00'),
(7, 12, 4, 1, '100000.00', '2025-03-14 11:50:17', '2025-03-14 11:50:17'),
(8, 13, 4, 1, '100000.00', '2025-03-14 11:53:15', '2025-03-14 11:53:15'),
(9, 14, 3, 1, '100000.00', '2025-03-14 11:57:11', '2025-03-14 11:57:11'),
(10, 15, 3, 1, '100000.00', '2025-03-14 11:57:13', '2025-03-14 11:57:13'),
(11, 16, 3, 1, '100000.00', '2025-03-14 11:57:35', '2025-03-14 11:57:35'),
(12, 17, 4, 1, '100000.00', '2025-03-14 12:00:15', '2025-03-14 12:00:15'),
(13, 18, 4, 1, '100000.00', '2025-03-14 12:00:30', '2025-03-14 12:00:30'),
(14, 19, 3, 4, '100000.00', '2025-03-16 13:50:16', '2025-03-16 13:50:16'),
(15, 20, 3, 16, '100000.00', '2025-03-17 02:40:03', '2025-03-17 02:40:03');

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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(162, 'force_delete_any_post::category', 'web', '2025-03-11 03:43:19', '2025-03-11 03:43:19'),
(163, 'view_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(164, 'view_any_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(165, 'create_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(166, 'update_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(167, 'restore_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(168, 'restore_any_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(169, 'replicate_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(170, 'reorder_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(171, 'delete_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(172, 'delete_any_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(173, 'force_delete_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51'),
(174, 'force_delete_any_contact', 'web', '2025-03-16 13:09:51', '2025-03-16 13:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`, `banner`, `slug`) VALUES
(1, 'Giảm 10% Tất Cả Menu Từ T2-CN', '<p>&nbsp;</p><h2>Điều kiện áp dụng</h2><p><strong>1. Ưu đãi:</strong></p><p><strong>- Giảm 10% Tất cả Menu </strong>cho khách hàng: Sử dụng dịch vụ tại nhà hàng vào các ngày trong tuần <strong>T2-CN</strong>. <strong>Áp dụng</strong> <strong>hết ngày 30/06/2025.</strong></p><p><strong>2. Quy định về ưu đãi: Có, cụ thể như sau:</strong></p><p>- Không áp dụng Ưu đãi vào ngày lễ tết: <strong>Tháng 1</strong> ( Ngày 1); <strong>Tháng 2</strong> (Từ ngày 2-7 &amp; ngày 14);<strong> Tháng 3</strong> (Ngày 8); <strong>Tháng 4</strong> (Ngày 30); Tháng 5 (Ngày 1); <strong>Tháng 9</strong> (Ngày 2,3,4,10); <strong>Tháng 10</strong> (Ngày 19, 20); <strong>Tết Nguyên Đán</strong> &amp; 10/3; 15/8 Âm Lịch</p><p><strong>3. Nhà hàng không tính VAT và chỉ xuất hóa đơn trực tiếp.</strong></p><p><strong>4. Địa chỉ sử dụng: Tám Riêu - 235 Đường Phan Xích Long, P. 2, Q. Phú Nhuận</strong></p><p><strong>5. Quy định về đặt cọc:</strong></p><p>- Đoàn khách từ <strong>20 người lớn</strong> <strong>hoặc đặt món</strong> trở lên đặt cọc, vui lòng đặt cọc trước 30% giá trị hóa đơn tạm tính với nhà hàng.</p><p><strong>6. Khác</strong></p><p>- Quý khách cần đặt chỗ trước tối thiểu 30 phút để được hỗ trợ tốt nhất.</p><p>- Thời gian nhà hàng giữ chỗ tối đa: <strong>15 phút.</strong></p><p>- Nhà hàng quy định <strong>Không mang thức ăn </strong>và <strong>Tính phí khi mang thức uống</strong> từ ngoài vào.&nbsp;</p><p>Áp dụng từ \"01/04/2024 - 00:00\" đến hết \"30/06/2025 - 23:59\".&nbsp;</p>', '2025-03-12 19:25:48', '2025-03-13 19:25:51', '2025-03-12 12:25:55', '2025-03-12 13:31:33', '01JP5533NZPF5JETB29YPD261A.png', '1'),
(2, 'Giảm 10% Tất Cả Menu Từ T2-CN', '<p>&nbsp;</p><h2>Điều kiện áp dụng</h2><p><strong>1. Ưu đãi:</strong></p><p><strong>- Giảm 10% Tất cả Menu </strong>cho khách hàng: Sử dụng dịch vụ tại nhà hàng vào các ngày trong tuần <strong>T2-CN</strong>. <strong>Áp dụng</strong> <strong>hết ngày 30/06/2025.</strong></p><p><strong>2. Quy định về ưu đãi: Có, cụ thể như sau:</strong></p><p>- Không áp dụng Ưu đãi vào ngày lễ tết: <strong>Tháng 1</strong> ( Ngày 1); <strong>Tháng 2</strong> (Từ ngày 2-7 &amp; ngày 14);<strong> Tháng 3</strong> (Ngày 8); <strong>Tháng 4</strong> (Ngày 30); Tháng 5 (Ngày 1); <strong>Tháng 9</strong> (Ngày 2,3,4,10); <strong>Tháng 10</strong> (Ngày 19, 20); <strong>Tết Nguyên Đán</strong> &amp; 10/3; 15/8 Âm Lịch</p><p><strong>3. Nhà hàng không tính VAT và chỉ xuất hóa đơn trực tiếp.</strong></p><p><strong>4. Địa chỉ sử dụng: Tám Riêu - 235 Đường Phan Xích Long, P. 2, Q. Phú Nhuận</strong></p><p><strong>5. Quy định về đặt cọc:</strong></p><p>- Đoàn khách từ <strong>20 người lớn</strong> <strong>hoặc đặt món</strong> trở lên đặt cọc, vui lòng đặt cọc trước 30% giá trị hóa đơn tạm tính với nhà hàng.</p><p><strong>6. Khác</strong></p><p>- Quý khách cần đặt chỗ trước tối thiểu 30 phút để được hỗ trợ tốt nhất.</p><p>- Thời gian nhà hàng giữ chỗ tối đa: <strong>15 phút.</strong></p><p>- Nhà hàng quy định <strong>Không mang thức ăn </strong>và <strong>Tính phí khi mang thức uống</strong> từ ngoài vào.&nbsp;</p><p>Áp dụng từ \"01/04/2024 - 00:00\" đến hết \"30/06/2025 - 23:59\".&nbsp;</p>', '2025-03-12 19:25:48', '2025-03-13 19:25:51', '2025-03-12 12:25:55', '2025-03-12 13:31:40', '01JP5533NZPF5JETB29YPD261A.png', '12'),
(3, 'Giảm 10% Tất Cả Menu Từ T2-CN', 'Điều kiện áp dụng\r\n1. Ưu đãi:\r\n\r\n- Giảm 10% Tất cả Menu cho khách hàng: Sử dụng dịch vụ tại nhà hàng vào các ngày trong tuần T2-CN. Áp dụng hết ngày 30/06/2025.\r\n\r\n2. Quy định về ưu đãi: Có, cụ thể như sau:\r\n\r\n- Không áp dụng Ưu đãi vào ngày lễ tết: Tháng 1 ( Ngày 1); Tháng 2 (Từ ngày 2-7 & ngày 14); Tháng 3 (Ngày 8); Tháng 4 (Ngày 30); Tháng 5 (Ngày 1); Tháng 9 (Ngày 2,3,4,10); Tháng 10 (Ngày 19, 20); Tết Nguyên Đán & 10/3; 15/8 Âm Lịch\r\n\r\n3. Nhà hàng không tính VAT và chỉ xuất hóa đơn trực tiếp.\r\n\r\n4. Địa chỉ sử dụng: Tám Riêu - 235 Đường Phan Xích Long, P. 2, Q. Phú Nhuận\r\n\r\n5. Quy định về đặt cọc:\r\n\r\n- Đoàn khách từ 20 người lớn hoặc đặt món trở lên đặt cọc, vui lòng đặt cọc trước 30% giá trị hóa đơn tạm tính với nhà hàng.\r\n\r\n6. Khác\r\n\r\n- Quý khách cần đặt chỗ trước tối thiểu 30 phút để được hỗ trợ tốt nhất.\r\n\r\n- Thời gian nhà hàng giữ chỗ tối đa: 15 phút.\r\n\r\n- Nhà hàng quy định Không mang thức ăn và Tính phí khi mang thức uống từ ngoài vào. \r\n\r\nÁp dụng từ \"01/04/2024 - 00:00\" đến hết \"30/06/2025 - 23:59\".', '2025-03-12 19:25:48', '2025-03-13 19:25:51', '2025-03-12 12:25:55', '2025-03-12 12:25:55', '01JP5533NZPF5JETB29YPD261A.png', '123'),
(4, 'Giảm 10% Tất Cả Menu Từ T2-CN', 'Điều kiện áp dụng\r\n1. Ưu đãi:\r\n\r\n- Giảm 10% Tất cả Menu cho khách hàng: Sử dụng dịch vụ tại nhà hàng vào các ngày trong tuần T2-CN. Áp dụng hết ngày 30/06/2025.\r\n\r\n2. Quy định về ưu đãi: Có, cụ thể như sau:\r\n\r\n- Không áp dụng Ưu đãi vào ngày lễ tết: Tháng 1 ( Ngày 1); Tháng 2 (Từ ngày 2-7 & ngày 14); Tháng 3 (Ngày 8); Tháng 4 (Ngày 30); Tháng 5 (Ngày 1); Tháng 9 (Ngày 2,3,4,10); Tháng 10 (Ngày 19, 20); Tết Nguyên Đán & 10/3; 15/8 Âm Lịch\r\n\r\n3. Nhà hàng không tính VAT và chỉ xuất hóa đơn trực tiếp.\r\n\r\n4. Địa chỉ sử dụng: Tám Riêu - 235 Đường Phan Xích Long, P. 2, Q. Phú Nhuận\r\n\r\n5. Quy định về đặt cọc:\r\n\r\n- Đoàn khách từ 20 người lớn hoặc đặt món trở lên đặt cọc, vui lòng đặt cọc trước 30% giá trị hóa đơn tạm tính với nhà hàng.\r\n\r\n6. Khác\r\n\r\n- Quý khách cần đặt chỗ trước tối thiểu 30 phút để được hỗ trợ tốt nhất.\r\n\r\n- Thời gian nhà hàng giữ chỗ tối đa: 15 phút.\r\n\r\n- Nhà hàng quy định Không mang thức ăn và Tính phí khi mang thức uống từ ngoài vào. \r\n\r\nÁp dụng từ \"01/04/2024 - 00:00\" đến hết \"30/06/2025 - 23:59\".', '2025-03-12 19:25:48', '2025-03-13 19:25:51', '2025-03-12 12:25:55', '2025-03-12 12:25:55', '01JP5533NZPF5JETB29YPD261A.png', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `dish_id` bigint UNSIGNED NOT NULL,
  `ingredient_id` bigint UNSIGNED NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `dish_id`, `ingredient_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 11, 1, '1.00', '2025-03-16 13:27:21', '2025-03-16 13:27:21'),
(2, 1, 1, '12.00', '2025-03-16 13:35:07', '2025-03-16 13:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `number_of_people` int NOT NULL,
  `reservation_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','confirmed','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reservation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reservation_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `restaurant_id`, `number_of_people`, `reservation_time`, `status`, `created_at`, `updated_at`, `reservation_code`, `notes`, `name`, `phone`, `reservation_day`) VALUES
(9, 1, 1, 1, '07:00 pm', 'pending', '2025-03-17 10:52:33', '2025-03-17 10:52:33', 'RESERVATION_67D7FEF1AA863', '123', 'admin', '0999999999', '2025-03-20'),
(10, 1, 1, 1, '18:03', 'pending', '2025-03-17 11:03:36', '2025-03-17 11:03:36', 'RESERVATION_67D8018839DEE', '23', 'admin@gmail.com', 'admin@gmail.com', '2025-03-17'),
(11, 1, 1, 1, '18:07', 'pending', '2025-03-17 11:07:41', '2025-03-17 11:07:41', 'RESERVATION_67D8027D45909', '123', 'admin@gmail.com1132', 'admin@gmail.com123', '2025-03-17'),
(12, 1, 1, 1, '18:08', 'pending', '2025-03-17 11:08:31', '2025-03-17 11:08:31', 'RESERVATION_67D802AFB99DB', NULL, 'admin@gmail.com', 'admin@gmail.com', '2025-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `map` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `image`, `location`, `description`, `short_description`, `created_at`, `updated_at`, `map`, `phone`, `email`) VALUES
(1, 'UNATOTO', '01JPACHWE9R0JKSX0A9R0XKBQX.png', '248 Đ. Nguyễn Hồng Đào, Phường 14, Tân Bình, Hồ Chí Minh', '<p><strong>Giới thiệu về IZAKAYA UNATOTO</strong></p><p>Chào mừng bạn đến với <strong>IZAKAYA UNATOTO</strong>, một trong những điểm đến ẩm thực nổi bật nhất dành cho những tín đồ yêu thích <strong>ẩm thực Nhật Bản</strong>. Tại đây, món <strong>lươn nướng</strong> không chỉ đơn thuần là một món ăn, mà còn là một biểu tượng của <strong>dinh dưỡng và sự tinh tế</strong> trong ẩm thực.</p><p>Với không gian <strong>ấm cúng</strong> và thiết kế mang đậm văn hóa Nhật Bản, IZAKAYA UNATOTO tạo ra một bầu không khí thân thiện, nơi thực khách có thể thư giãn và thưởng thức những món ăn tuyệt vời. Mỗi món lươn được chế biến từ những nguyên liệu tươi ngon nhất, mang đến hương vị đậm đà và hấp dẫn.</p><p>Điều đặc biệt tại IZAKAYA UNATOTO là sự kết hợp giữa <strong>truyền thống và sáng tạo</strong>. Đội ngũ đầu bếp tài năng của chúng tôi không ngừng nỗ lực để mang đến những món ăn không chỉ ngon mà còn đẹp mắt, tạo nên những trải nghiệm ẩm thực khó quên.</p><p>Hãy đến với IZAKAYA UNATOTO để cùng khám phá <strong>hương vị độc đáo</strong> và tận hưởng sự phục vụ tận tình từ đội ngũ nhân viên chuyên nghiệp. Chúng tôi tin rằng mỗi bữa ăn tại đây sẽ là một hành trình ẩm thực đáng nhớ, làm hài lòng cả những thực khách khó tính nhất!</p>', 'Chào mừng bạn đến với IZAKAYA UNATOTO, một trong những điểm đến ẩm thực nổi bật nhất dành cho những tín đồ yêu thích ẩm thực Nhật Bản. Tại đây, món lươn nướng không chỉ đơn thuần là một món ăn, mà còn là một biểu tượng của dinh dưỡng và sự tinh tế trong ẩm thực.', '2025-03-10 01:07:59', '2025-03-16 12:38:30', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d95865.71390934997!2d106.52494024335938!3d10.768954500000017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f52d2e999fb%3A0x2c2739f3ca688d63!2sIzakaya%20Unatoto%20Ba%20Th%C3%A1ng%20Hai!5e1!3m2!1svi!2s!4v1741958363480!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '02839369986', 'a@a');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-03-09 21:56:43', '2025-03-16 13:26:46'),
(3, 'Bếp trưởng', 'web', '2025-03-15 03:55:44', '2025-03-15 03:55:44'),
(4, 'Kế toán', 'web', '2025-03-15 03:55:54', '2025-03-15 03:55:54'),
(5, 'Nhân viên thu ngân', 'web', '2025-03-15 03:56:03', '2025-03-15 03:56:03'),
(6, 'Nhân viên phục vụ', 'web', '2025-03-15 03:56:16', '2025-03-15 03:56:16'),
(7, 'Nhân viên bếp', 'web', '2025-03-15 03:56:23', '2025-03-15 03:56:23');

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
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1);

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
('09dNRvncmOvKXlKhHd7fzwzDmX6TPkDKbdPKplCr', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQm5HdlNkbHB2SGRtN1pnVFhWWDhrdElNcGNRdUlyMFZCT0JvZk1obSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRhaVM5dU55a3pOVmI3bFF1QjhKdEkueERmMjdxODFqeEh4UUhnZ1JIbjRkMmdDZUpDWXlKcSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1742209818);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint UNSIGNED NOT NULL,
  `restaurant_id` bigint UNSIGNED DEFAULT NULL,
  `table_number` int NOT NULL,
  `status` enum('available','reserved','occupied') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reservation_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `restaurant_id`, `table_number`, `status`, `reservation_id`, `created_at`, `updated_at`) VALUES
(1, 1, 123, 'occupied', 1, '2025-03-15 03:54:38', '2025-03-15 03:54:38');

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
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loyalty_points` int NOT NULL DEFAULT '0',
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `created_at`, `updated_at`, `address`, `loyalty_points`, `theme`, `theme_color`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$aiS9uNykzNVb7lQuB8JtI.xDf27q81jxHxQHggRHn4d2gCeJCYyJq', 'l03nfzgW6HtVbWoAUvNWcPCRCbQybOFReEHpilVbhgSdOk3PNXYxTLhhruR0', 'admin@gmail.com', '2025-03-09 21:32:39', '2025-03-14 12:32:48', 'admin@gmail.com', 50000, 'default', NULL),
(6, 'beptruong@gmail.com', 'beptruong@gmail.com', NULL, '$2y$12$AnKMLUKYHLoinNGtE/nrtu.gTPFi3XbDCaKYv.nwHSJ3EfL3cAr1a', NULL, NULL, '2025-03-16 13:25:36', '2025-03-16 13:25:46', NULL, 0, 'default', NULL);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_restaurant_id_foreign` (`restaurant_id`);

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
  ADD UNIQUE KEY `orders_order_code_unique` (`order_code`),
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
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotions_slug_unique` (`slug`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_dish_id_foreign` (`dish_id`),
  ADD KEY `recipes_ingredient_id_foreign` (`ingredient_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_reservation_code_unique` (`reservation_code`),
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_food_category_id_foreign` FOREIGN KEY (`food_category_id`) REFERENCES `food_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_dish_id_foreign` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE;

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
