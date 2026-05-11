-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2026 at 10:39 AM
-- Server version: 8.0.40
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stepupma_learn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `forget_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `password`, `bio`, `status`, `created_at`, `updated_at`, `forget_password_token`) VALUES
(1, 'Admin LearnHub', 'admin@stepupmarklearnhub.in', 'uploads/website-images/admin.jpg', '$2y$12$cZdW2kq9GGZkv1ke7JyVbeQPn54gXwYedCiZFZMl3IUYlcRi2DM2y', 'I am a web developer with a vast array of knowledge in many different front end and back end languages, responsive frameworks, databases, and best code practices', 'active', '2024-06-03 02:02:33', '2026-03-10 19:40:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `announcement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `condition_from` int NOT NULL DEFAULT '0',
  `condition_to` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `key`, `image`, `name`, `description`, `condition_from`, `condition_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 'registration_badge_one', 'uploads/custom-images/wsus-img-2024-06-05-08-13-59-9888.png', 'Badge 1', NULL, 1, 2, 1, '2024-06-05 02:13:58', '2024-06-05 02:13:59'),
(2, 'registration_badge_two', 'uploads/custom-images/wsus-img-2024-06-05-08-14-23-4795.png', 'badge 2', NULL, 3, 4, 1, '2024-06-05 02:14:23', '2024-06-05 02:14:23'),
(3, 'registration_badge_three', 'uploads/custom-images/wsus-img-2024-06-05-08-14-55-9047.png', 'Badge 3', NULL, 5, 6, 1, '2024-06-05 02:14:55', '2024-06-05 02:14:55'),
(4, 'course_count_badge_one', 'uploads/custom-images/wsus-img-2024-06-05-08-15-33-5592.png', 'Badge 1', NULL, 1, 2, 1, '2024-06-05 02:15:33', '2024-06-05 02:15:33'),
(5, 'course_count_badge_two', 'uploads/custom-images/wsus-img-2024-06-05-08-16-01-1865.png', 'Badge 2', NULL, 3, 4, 1, '2024-06-05 02:16:01', '2024-06-05 02:16:01'),
(6, 'course_count_badge_three', 'uploads/custom-images/wsus-img-2024-06-05-08-16-24-6251.png', 'Badge 3', NULL, 4, 5, 1, '2024-06-05 02:16:24', '2024-06-05 02:16:24'),
(7, 'course_rating_badge_one', 'uploads/custom-images/wsus-img-2024-06-05-08-16-57-4076.png', 'Badge 1', NULL, 0, 1, 1, '2024-06-05 02:16:57', '2024-06-05 02:18:18'),
(8, 'course_rating_badge_two', 'uploads/custom-images/wsus-img-2024-06-05-08-17-26-1574.png', 'Badge 2', NULL, 2, 3, 1, '2024-06-05 02:17:26', '2024-06-05 02:18:28'),
(9, 'course_rating_badge_three', 'uploads/custom-images/wsus-img-2024-06-05-08-18-48-6887.png', 'Badge 3', NULL, 4, 5, 1, '2024-06-05 02:17:52', '2024-06-05 02:18:48'),
(10, 'course_enroll_badge_one', 'uploads/custom-images/wsus-img-2024-06-05-08-19-08-6764.png', 'Badge 1', NULL, 1, 2, 1, '2024-06-05 02:19:08', '2024-06-05 02:19:08'),
(11, 'course_enroll_badge_two', 'uploads/custom-images/wsus-img-2024-06-05-08-19-24-6958.png', 'Badge 2', NULL, 2, 3, 1, '2024-06-05 02:19:24', '2024-06-05 02:19:24'),
(12, 'course_enroll_badge_three', 'uploads/custom-images/wsus-img-2024-06-05-08-19-52-2846.png', 'Badge 3', NULL, 4, 5, 1, '2024-06-05 02:19:52', '2024-06-05 02:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `banned_histories`
--

CREATE TABLE `banned_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reasone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_payments`
--

CREATE TABLE `basic_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basic_payments`
--

INSERT INTO `basic_payments` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'stripe_key', 'pk_test_33mdngCLuLsmECXOe8mbde9f00pZGT4uu9', '2024-06-03 02:02:30', '2026-03-11 12:27:57'),
(2, 'stripe_secret', 'sk_test_MroTZzRZRv2KJ9Hmaro73SE800UOR90Q9u', '2024-06-03 02:02:30', '2026-03-11 12:27:57'),
(3, 'stripe_currency_id', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(4, 'stripe_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:27:57'),
(5, 'stripe_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:27:57'),
(6, 'stripe_image', 'uploads/custom-images/wsus-img-2024-06-25-07-50-29-4915.png', '2024-06-03 02:02:30', '2024-06-25 01:50:29'),
(7, 'paypal_app_id', 'paypal_app_id', '2024-06-03 02:02:30', '2024-06-25 01:51:05'),
(8, 'paypal_client_id', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', '2024-06-03 02:02:30', '2026-03-11 12:28:02'),
(9, 'paypal_secret_key', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', '2024-06-03 02:02:30', '2026-03-11 12:28:02'),
(10, 'paypal_account_mode', 'sandbox', '2024-06-03 02:02:30', '2026-03-11 12:28:02'),
(11, 'paypal_currency_id', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(12, 'paypal_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:02'),
(13, 'paypal_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:02'),
(14, 'paypal_image', 'uploads/custom-images/wsus-img-2024-06-25-07-51-05-7397.png', '2024-06-03 02:02:30', '2024-06-25 01:51:05'),
(15, 'bank_information', 'please provide correct pieces of information.', '2024-06-03 02:02:30', '2026-03-11 12:28:08'),
(16, 'bank_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:08'),
(17, 'bank_image', 'uploads/website-images/bank-pay.png', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(18, 'bank_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:08'),
(19, 'bank_currency_id', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(20, 'offline_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:13'),
(21, 'offline_image', 'uploads/website-images/offline_payment.webp', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(22, 'offline_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:13'),
(23, 'offline_currency_id', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(24, 'braintree_account_mode', 'sandbox', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(25, 'braintree_merchant_id', 'x6w44nsfgmdqdzj7', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(26, 'braintree_public_key', 'r3n57gd3bkvhx5hq', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(27, 'braintree_private_key', '14a08e8f381f8dc80a1d6860677964a3', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(28, 'braintree_charge', '0.00', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(29, 'braintree_currency_id', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(30, 'braintree_image', 'uploads/website-images/braintree.webp', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(31, 'braintree_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(32, 'braintree_currency', 'INR', '2024-06-03 02:02:30', '2026-03-11 12:29:03'),
(33, 'mpesa_account_mode', 'sandbox', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(34, 'mpesa_market', 'vodafoneGHA', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(35, 'mpesa_country', 'GHA', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(36, 'mpesa_origin', '127.0.0.1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(37, 'mpesa_shortcode', '000000', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(38, 'mpesa_charge', '0.00', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(39, 'mpesa_api_key', 'mpesa_api_key', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(40, 'mpesa_public_key', 'mpesa_public_key', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(41, 'mpesa_image', 'uploads/website-images/mpesa.webp', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(42, 'mpesa_status', 'inactive', '2024-06-03 02:02:30', '2024-06-03 02:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `bkash_p_g_models`
--

CREATE TABLE `bkash_p_g_models` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bkash_p_g_models`
--

INSERT INTO `bkash_p_g_models` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'bkash_sandbox', '1', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(2, 'bkash_key', 'bkash_key', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(3, 'bkash_secret', 'bkash_secret', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(4, 'bkash_username', 'bkash_username', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(5, 'bkash_password', 'bkash_password', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(6, 'bkash_status', 'inactive', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(7, 'bkash_charge', '0', '2025-02-26 02:29:45', '2025-02-26 02:29:45'),
(8, 'bkash_image', 'uploads/website-images/bkash.png', '2025-02-26 02:29:45', '2025-02-26 02:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `show_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `blog_category_id`, `slug`, `image`, `views`, `show_homepage`, `is_popular`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'technology-in-the-classroom-we-provide', 'uploads/custom-images/wsus-img-2024-06-05-06-10-28-6976.jpg', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"}]', 1, '2024-06-05 00:10:28', '2024-06-30 03:36:02'),
(2, 1, 4, 'innovative-strategies-for-engaging-students', 'uploads/custom-images/wsus-img-2024-06-05-06-16-55-7012.jpg', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:16:55', '2024-06-05 00:16:55'),
(3, 1, 5, 'curriculum-development-crafting', 'uploads/custom-images/wsus-img-2024-06-05-06-21-41-8577.jpg', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:21:41', '2024-06-30 03:34:58'),
(4, 1, 3, 'understanding-educational-psychology', 'uploads/custom-images/wsus-img-2024-06-05-06-26-14-9866.jpg', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:26:14', '2024-06-30 03:32:32'),
(5, 1, 9, 'parental-involvement-building-strong-home', 'uploads/custom-images/wsus-img-2024-06-05-06-28-48-2280.jpg', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:28:48', '2024-06-30 03:33:33'),
(6, 1, 8, 'effective-evaluation-techniques-for-teachers', 'uploads/custom-images/wsus-img-2024-06-05-06-30-56-2431.webp', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:30:56', '2024-06-23 04:43:09'),
(7, 1, 4, 'promoting-health-and-wellbeing-in-schools', 'uploads/custom-images/wsus-img-2024-06-05-06-59-40-6109.webp', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:34:21', '2024-06-23 04:43:03'),
(8, 1, 7, 'latest-research-in-educational-technology', 'uploads/custom-images/wsus-img-2024-06-05-06-45-15-9724.webp', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"}]', 1, '2024-06-05 00:45:15', '2024-06-23 04:42:55'),
(9, 1, 9, 'top-classroom-resources-for-teachers', 'uploads/custom-images/wsus-img-2024-06-05-06-49-37-2477.webp', 0, 1, 1, '[{\"value\":\"tech\"},{\"value\":\"helth\"},{\"value\":\"skill\"},{\"value\":\"work\"}]', 1, '2024-06-05 00:49:37', '2024-06-23 04:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `slug`, `position`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'technology', 0, NULL, 1, '2024-06-04 22:35:57', '2024-06-04 22:35:57'),
(4, 'strategies', 0, NULL, 1, '2024-06-04 22:36:49', '2024-06-04 22:36:49'),
(5, 'development', 0, NULL, 1, '2024-06-04 22:37:42', '2024-06-04 22:37:42'),
(6, 'psychology', 0, NULL, 1, '2024-06-04 22:44:45', '2024-06-04 22:44:45'),
(7, 'education', 0, NULL, 1, '2024-06-04 22:45:37', '2024-06-04 22:45:37'),
(8, 'involvement', 0, NULL, 1, '2024-06-04 22:47:06', '2024-06-04 22:47:06'),
(9, 'evaluation', 0, NULL, 1, '2024-06-04 22:49:10', '2024-06-04 22:49:10'),
(10, 'health', 0, NULL, 1, '2024-06-04 22:50:20', '2024-06-04 22:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category_translations`
--

INSERT INTO `blog_category_translations` (`id`, `blog_category_id`, `lang_code`, `title`, `short_description`, `created_at`, `updated_at`) VALUES
(7, 3, 'en', 'Technology', NULL, '2024-06-04 22:35:57', '2024-06-04 22:35:57'),
(8, 3, 'hi', 'तकनीकी', NULL, '2024-06-04 22:35:57', '2024-06-04 22:36:16'),
(10, 4, 'en', 'Strategies', NULL, '2024-06-04 22:36:49', '2024-06-04 22:36:49'),
(11, 4, 'hi', 'रणनीतियाँ', NULL, '2024-06-04 22:36:49', '2024-06-04 22:37:05'),
(13, 5, 'en', 'Development', NULL, '2024-06-04 22:37:42', '2024-06-04 22:37:42'),
(14, 5, 'hi', 'विकास', NULL, '2024-06-04 22:37:42', '2024-06-04 22:37:56'),
(16, 6, 'en', 'Psychology', NULL, '2024-06-04 22:44:45', '2024-06-04 22:44:45'),
(17, 6, 'hi', 'मनोविज्ञान', NULL, '2024-06-04 22:44:45', '2024-06-04 22:45:02'),
(19, 7, 'en', 'Education', NULL, '2024-06-04 22:45:37', '2024-06-04 22:45:37'),
(20, 7, 'hi', 'शिक्षा', NULL, '2024-06-04 22:45:37', '2024-06-04 22:45:52'),
(22, 8, 'en', 'Involvement', NULL, '2024-06-04 22:47:06', '2024-06-04 22:47:06'),
(23, 8, 'hi', 'Involvement', NULL, '2024-06-04 22:47:06', '2024-06-04 22:47:06'),
(25, 9, 'en', 'Evaluation', NULL, '2024-06-04 22:49:10', '2024-06-04 22:49:10'),
(26, 9, 'hi', 'मूल्यांकन', NULL, '2024-06-04 22:49:10', '2024-06-04 22:49:36'),
(28, 10, 'en', 'Health', NULL, '2024-06-04 22:50:20', '2024-06-04 22:50:20'),
(29, 10, 'hi', 'स्वास्थ्य', NULL, '2024-06-04 22:50:20', '2024-06-04 22:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `lang_code`, `title`, `description`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Technology in the Classroom we provide', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:10:28', '2024-07-02 22:02:49'),
(2, 1, 'hi', 'कक्षा में प्रौद्योगिकी: शिक्षा का परिवर्तन', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:10:29', '2024-06-05 00:14:02'),
(4, 2, 'en', 'Innovative Strategies for Engaging Students', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:16:55', '2024-07-02 22:02:37'),
(5, 2, 'hi', 'छात्रों को संलग्न करने के लिए नवीन रणनीतियाँ', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:16:55', '2024-06-05 00:17:27'),
(7, 3, 'en', 'Curriculum Development: Crafting', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:21:41', '2024-07-02 22:02:30'),
(8, 3, 'hi', 'पाठ्यचर्या विकास: प्रभावी शिक्षण योजनाएँ तैयार करना', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:21:41', '2024-06-05 00:22:22'),
(10, 4, 'en', 'Understanding Educational Psychology', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:26:14', '2024-07-02 22:02:17'),
(11, 4, 'hi', 'शैक्षिक मनोविज्ञान को समझना: छात्र की सफलता को बढ़ाना', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:26:14', '2024-06-05 00:26:47'),
(13, 5, 'en', 'Parental Involvement: Building Strong Home', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:28:48', '2024-07-02 22:02:10'),
(14, 5, 'hi', 'माता-पिता की भागीदारी: घर-स्कूल के बीच मजबूत संबंध बनाना', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:28:48', '2024-06-05 00:29:27'),
(16, 6, 'en', 'Effective Evaluation Techniques for Teachers', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:30:56', '2024-07-02 22:01:32'),
(17, 6, 'hi', 'शिक्षकों के लिए प्रभावी मूल्यांकन तकनीकें', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:30:56', '2024-06-05 00:32:11'),
(19, 7, 'en', 'Promoting Health and Wellbeing in Schools', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:34:21', '2024-07-02 22:01:25'),
(20, 7, 'hi', 'स्कूलों में स्वास्थ्य और खुशहाली को बढ़ावा देना', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:34:21', '2024-06-05 00:35:08'),
(22, 8, 'en', 'Latest Research in Educational Technology', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:45:15', '2024-07-02 22:01:17'),
(23, 8, 'hi', 'शैक्षिक प्रौद्योगिकी में नवीनतम अनुसंधान', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:45:15', '2024-06-05 00:45:59'),
(25, 9, 'en', 'Top Classroom Resources for Teachers', '<p>In today\'s fast-paced, technology-driven world, engaging students in the classroom can be more challenging than ever. Traditional teaching methods are often insufficient to capture the attention and interest of modern learners. To address this, educators must adopt innovative strategies that not only engage students but also enhance their learning experiences. Here are some effective techniques to consider:<br><br><strong>1. Gamification of Learning</strong></p>\r\n<p>Gamification involves integrating game design elements into educational activities. This strategy can make learning more interactive and enjoyable. Examples include using point systems, leaderboards, and badges to motivate students. Tools like Kahoot! and Quizizz allow teachers to create fun quizzes that turn review sessions into competitive games.<br><br><strong>2. Project-Based Learning (PBL)</strong></p>\r\n<p>Project-Based Learning encourages students to learn by actively engaging in real-world and personally meaningful projects. This method promotes critical thinking, problem-solving, and collaboration. For instance, students might work on a project to design a sustainable garden for their school, applying knowledge from science, math, and social studies.<br><br><strong>3. Flipped Classroom</strong></p>\r\n<p>In a flipped classroom, traditional learning structures are reversed. Students watch video lectures or review content at home and use classroom time for interactive activities, discussions, and hands-on learning. This approach allows for deeper exploration of topics and more personalized instruction.<br><br><strong>4. Collaborative Learning</strong></p>\r\n<p>Collaborative learning encourages students to work together in small groups to achieve a common goal. This method helps develop communication, teamwork, and leadership skills. Activities like group projects, peer reviews, and study groups are effective ways to implement collaborative learning.<br><br><strong>5. Incorporating Technology</strong></p>\r\n<p>Leveraging technology can significantly enhance student engagement. Interactive tools such as smartboards, tablets, and educational apps can make lessons more dynamic. Virtual and augmented reality can provide immersive learning experiences, allowing students to explore subjects in a more hands-on and visual manner.</p>', NULL, NULL, '2024-06-05 00:49:37', '2024-07-02 22:00:27'),
(26, 9, 'hi', 'शिक्षकों के लिए शीर्ष कक्षा संसाधन शीर्ष कक्षा संसाधन', '<p>आज की तेज़-तर्रार, तकनीक-चालित दुनिया में, कक्षा में छात्रों को शामिल करना पहले से कहीं ज़्यादा चुनौतीपूर्ण हो सकता है। पारंपरिक शिक्षण विधियाँ अक्सर आधुनिक शिक्षार्थियों का ध्यान और रुचि आकर्षित करने के लिए अपर्याप्त होती हैं। इसे संबोधित करने के लिए, शिक्षकों को ऐसी नवीन रणनीतियाँ अपनानी चाहिए जो न केवल छात्रों को शामिल करें बल्कि उनके सीखने के अनुभवों को भी बढ़ाएँ। यहाँ कुछ प्रभावी तकनीकें दी गई हैं जिन पर विचार किया जा सकता है:</p>\r\n<p>1. सीखने का गेमीकरण<br>गेमीकरण में शैक्षिक गतिविधियों में गेम डिज़ाइन तत्वों को एकीकृत करना शामिल है। यह रणनीति सीखने को अधिक इंटरैक्टिव और आनंददायक बना सकती है। उदाहरणों में छात्रों को प्रेरित करने के लिए पॉइंट सिस्टम, लीडरबोर्ड और बैज का उपयोग करना शामिल है। Kahoot! और Quizizz जैसे टूल शिक्षकों को मज़ेदार क्विज़ बनाने की अनुमति देते हैं जो समीक्षा सत्रों को प्रतिस्पर्धी खेलों में बदल देते हैं।</p>\r\n<p>2. प्रोजेक्ट-आधारित शिक्षण (PBL)<br>प्रोजेक्ट-आधारित शिक्षण छात्रों को वास्तविक दुनिया और व्यक्तिगत रूप से सार्थक परियोजनाओं में सक्रिय रूप से शामिल होकर सीखने के लिए प्रोत्साहित करता है। यह विधि आलोचनात्मक सोच, समस्या-समाधान और सहयोग को बढ़ावा देती है। उदाहरण के लिए, छात्र विज्ञान, गणित और सामाजिक अध्ययन से ज्ञान का उपयोग करके अपने स्कूल के लिए एक स्थायी उद्यान डिजाइन करने के लिए एक परियोजना पर काम कर सकते हैं।</p>\r\n<p>3. फ़्लिप्ड क्लासरूम</p>\r\n<p>फ़्लिप्ड क्लासरूम में, पारंपरिक शिक्षण संरचनाएँ उलट जाती हैं। छात्र घर पर वीडियो लेक्चर देखते हैं या सामग्री की समीक्षा करते हैं और कक्षा के समय का उपयोग इंटरैक्टिव गतिविधियों, चर्चाओं और व्यावहारिक शिक्षण के लिए करते हैं। यह दृष्टिकोण विषयों की गहन खोज और अधिक व्यक्तिगत निर्देश की अनुमति देता है।</p>\r\n<p>4. सहयोगात्मक शिक्षण<br>सहयोगात्मक शिक्षण छात्रों को एक सामान्य लक्ष्य प्राप्त करने के लिए छोटे समूहों में एक साथ काम करने के लिए प्रोत्साहित करता है। यह विधि संचार, टीमवर्क और नेतृत्व कौशल विकसित करने में मदद करती है। समूह परियोजनाएँ, सहकर्मी समीक्षा और अध्ययन समूह जैसी गतिविधियाँ सहयोगी शिक्षण को लागू करने के प्रभावी तरीके हैं।</p>\r\n<p>5. प्रौद्योगिकी को शामिल करना<br>प्रौद्योगिकी का लाभ उठाने से छात्रों की सहभागिता में उल्लेखनीय वृद्धि हो सकती है। स्मार्टबोर्ड, टैबलेट और शैक्षिक ऐप जैसे इंटरैक्टिव उपकरण पाठों को अधिक गतिशील बना सकते हैं। आभासी और संवर्धित वास्तविकता इमर्सिव शिक्षण अनुभव प्रदान कर सकती है, जिससे छात्र अधिक व्यावहारिक और दृश्य तरीके से विषयों का पता लगा सकते हैं।</p>\r\n<p>6. विकल्प और स्वायत्तता<br>छात्रों को उनके सीखने में विकल्प देने से प्रेरणा और सहभागिता बढ़ सकती है। छात्रों को परियोजनाओं के लिए विषय चुनने, पढ़ने के लिए पुस्तकों का चयन करने, या अपनी प्रस्तुतियों के प्रारूप पर निर्णय लेने की अनुमति देने से उनकी सीखने की प्रक्रिया में स्वामित्व और जिम्मेदारी की भावना को बढ़ावा मिल सकता है।</p>', NULL, NULL, '2024-06-05 00:49:37', '2024-06-13 13:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rose', 'uploads/custom-images/wsus-img-2024-06-03-11-57-51-1091.png', 'https://websolutionus.com/', 1, '2024-06-03 05:57:51', '2024-06-03 05:57:51'),
(2, 'Annas', 'uploads/custom-images/wsus-img-2024-06-03-11-58-30-5150.png', 'https://websolutionus.com/', 1, '2024-06-03 05:58:30', '2024-06-03 05:58:30'),
(3, 'Urban', 'uploads/custom-images/wsus-img-2024-06-03-11-59-12-5381.png', 'https://websolutionus.com/', 1, '2024-06-03 05:59:12', '2024-06-03 05:59:12'),
(4, 'Fashion', 'uploads/custom-images/wsus-img-2024-06-03-11-59-41-2889.png', 'https://websolutionus.com/', 1, '2024-06-03 05:59:41', '2024-06-03 05:59:41'),
(5, 'Iconic', 'uploads/custom-images/wsus-img-2024-06-03-12-00-05-6317.png', 'https://websolutionus.com/', 1, '2024-06-03 06:00:05', '2024-06-03 06:00:05'),
(6, 'Ralisa', 'uploads/custom-images/wsus-img-2024-06-03-12-00-48-1030.png', 'https://websolutionus.com/', 1, '2024-06-03 06:00:48', '2024-06-03 06:00:48'),
(7, 'Rose', 'uploads/custom-images/wsus-img-2024-06-03-11-57-51-1091.png', 'https://websolutionus.com/', 1, '2024-06-03 05:57:51', '2024-06-03 05:57:51'),
(8, 'Urban', 'uploads/custom-images/wsus-img-2024-06-03-11-59-12-5381.png', 'https://websolutionus.com/', 1, '2024-06-03 05:59:12', '2024-06-03 05:59:12'),
(9, 'Iconic', 'uploads/custom-images/wsus-img-2024-06-03-12-00-05-6317.png', 'https://websolutionus.com/', 1, '2024-06-03 06:00:05', '2024-06-03 06:00:05'),
(10, 'Fashion', 'uploads/custom-images/wsus-img-2024-06-03-11-59-41-2889.png', 'https://websolutionus.com/', 1, '2024-06-03 05:59:41', '2024-06-03 05:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_builders`
--

CREATE TABLE `certificate_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate_builders`
--

INSERT INTO `certificate_builders` (`id`, `background`, `title`, `sub_title`, `description`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/wsus-img-2024-06-07-11-55-01-7873.png', '[student_name]', 'For completing [course]', 'This certificate is awarded to recognize the successful completion of the course [course] offered on the platform [platform_name] by [instructor_name]. The recipient,[student_name], has demonstrated commendable dedication and proficiency and has successfully completed the course on \r\n[date].', 'uploads/custom-images/wsus-img-2024-06-07-11-58-29-8741.png', '2024-05-15 21:56:38', '2024-06-07 06:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_builder_items`
--

CREATE TABLE `certificate_builder_items` (
  `id` bigint UNSIGNED NOT NULL,
  `element_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `x_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `y_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate_builder_items`
--

INSERT INTO `certificate_builder_items` (`id`, `element_id`, `x_position`, `y_position`, `created_at`, `updated_at`) VALUES
(1, 'title', '380.00006103515625', '223', NULL, '2024-06-07 06:02:41'),
(2, 'sub_title', '368.00006103515625', '269', NULL, '2024-06-07 06:02:45'),
(3, 'description', '0', '318.99998474121094', NULL, '2024-06-13 06:19:27'),
(4, 'signature', '389.99993896484375', '423.99998474121094', NULL, '2024-06-22 09:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Anchorage', 2, 1, '2024-07-01 06:50:06', '2024-07-01 06:50:06'),
(2, 'Fairbanks', 2, 1, '2024-07-01 06:50:22', '2024-07-01 06:50:22'),
(3, 'Birmingham', 1, 1, '2024-07-01 06:50:40', '2024-07-01 06:50:40'),
(4, 'Montgomery', 1, 1, '2024-07-01 06:51:03', '2024-07-01 06:51:03'),
(5, 'Mobile', 1, 1, '2024-07-01 06:51:20', '2024-07-01 06:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint UNSIGNED NOT NULL,
  `config` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `config`, `value`, `created_at`, `updated_at`) VALUES
(1, 'setup_complete', '1', '2024-08-11 00:13:31', '2026-03-10 19:43:51'),
(2, 'setup_stage', '5', '2024-08-11 00:13:31', '2026-03-10 19:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Darryl Blake', 'lecisyf@mailinator.com', NULL, 'Tech Updates: What\'s New in Our Arsenal', 'Rerum non qui proide', '2024-06-10 01:46:32', '2024-06-10 01:46:32'),
(2, 'Edward Crawford', 'cumywojy@mailinator.com', NULL, 'Exclusive Tech Insights Just for You!', 'Quis quae sed tempor', '2024-06-10 01:46:55', '2024-06-10 01:46:55'),
(3, 'Sade Carpenter', 'repany@mailinator.com', NULL, 'Exclusive Tech Insights Just for You!', 'Dolore sint minima b', '2024-06-10 01:47:46', '2024-06-10 01:47:46'),
(4, 'Cecilia Medina', 'bedaf@mailinator.com', NULL, 'Your Tech Digest: Stay Informed', 'Quia labore tenetur', '2024-06-10 01:48:07', '2024-06-10 01:48:07'),
(5, 'Adele Kirby', 'vyfeq@mailinator.com', NULL, 'Breaking Tech News: Dive In Now', 'Veniam optio elit', '2024-06-10 01:48:38', '2024-06-10 01:48:38'),
(6, 'Vincent Watkins', 'tyquwafe@mailinator.com', NULL, 'Unleash the Power of Tech with Us!', 'Labore sint ut enim', '2024-06-10 01:48:58', '2024-06-10 01:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `contact_sections`
--

CREATE TABLE `contact_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_sections`
--

INSERT INTO `contact_sections` (`id`, `address`, `phone_one`, `phone_two`, `email_one`, `email_two`, `map`, `created_at`, `updated_at`) VALUES
(1, '306, 3rd Floor, Asian Sun City Commercial, behind AMB Cinemas, Forest Dept Colony, Kondapur, Hyderabad, Telangana 500081', '+91-9346708639', NULL, 'contact@stepupmarklearnhub.in', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.0144014080515!2d78.36281799999999!3d17.459024799999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb91b6ea46b699%3A0x8a2c22bb8f98f8c6!2sStepUpMark%20Marketing%20Innovations%20Private%20Limited!5e0!3m2!1sen!2sin!4v1773206200465!5m2!1sen!2sin\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2024-06-04 06:12:06', '2026-03-11 05:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United States', 1, '2024-06-22 09:38:14', '2024-06-22 09:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `offer_percentage` decimal(8,2) NOT NULL,
  `expired_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `min_price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_histories`
--

CREATE TABLE `coupon_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `author_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coupon_id` int NOT NULL,
  `discount_amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('course','webinar') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'course',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `demo_video_storage` enum('upload','youtube','vimeo','external_link','aws','wasabi') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'upload',
  `demo_video_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `capacity` int DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `discount` double DEFAULT NULL,
  `certificate` tinyint(1) NOT NULL DEFAULT '0',
  `downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `partner_instructor` tinyint(1) NOT NULL DEFAULT '0',
  `qna` tinyint(1) NOT NULL DEFAULT '0',
  `message_for_reviewer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` enum('active','is_draft','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'is_draft',
  `is_approved` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `type`, `title`, `slug`, `seo_description`, `start_date`, `duration`, `timezone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `downloadable`, `partner_instructor`, `qna`, `message_for_reviewer`, `status`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1001, 16, 'course', 'Full Stack Web Development with React', 'full-stack-web-development-with-react', 'Full Stack Web Development with React', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/bowling-game-youtube-thumbnail-template_23-2150469871_1_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 126, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:44', '2026-03-11 05:34:58', '2026-03-11 05:34:58'),
(2, 1011, 13, 'course', 'Advanced Java Programming for Software', 'advanced-java-programming-for-software', 'Advanced Java Programming for Software', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-business-youtube-thumbnail-design-template_23-2149384500_25_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 115, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:44', '2026-03-11 05:34:12', '2026-03-11 05:34:12'),
(3, 1001, 13, 'course', 'Introduction to Mobile App Development', 'introduction-to-mobile-app-development', 'Introduction to Mobile App Development', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/bowling-game-youtube-thumbnail-template_23-2150469871_1_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 109, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:44', '2026-03-11 05:34:47', '2026-03-11 05:34:47'),
(4, 1003, 12, 'course', 'Modern Front-End Development with js', 'modern-front-end-development-with-js', 'Modern Front-End Development with js', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/dental-care-horizontal-banner-template_23-2149267635_3_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 51, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:45', '2026-03-11 05:34:19', '2026-03-11 05:34:19'),
(5, 1003, 13, 'course', 'Database Design and Management with SQL', 'database-design-and-management-with-sql', 'Database Design and Management with SQL', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-business-youtube-thumbnail-design-template_23-2149384500_25_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 152, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:45', '2026-03-11 05:34:26', '2026-03-11 05:34:26'),
(6, 1002, 29, 'course', 'Building Scalable Microservices', 'building-scalable-microservices', 'Building Scalable Microservices', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-school-admission-horizontal-banner_23-2150609771_30_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 68, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:45', '2026-03-11 05:47:04', '2026-03-11 05:47:04'),
(7, 1011, 14, 'course', 'Cybersecurity Fundamentals for devs', 'cybersecurity-fundamentals-for-devs', 'Cybersecurity Fundamentals for devs', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-business-workshop-youtube-thumbnail_23-2149458722_9_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 80, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:46', '2026-03-11 05:34:35', '2026-03-11 05:34:35'),
(8, 1001, 40, 'course', 'Cloud Computing with AWS: From Beginner', 'cloud-computing-with-aws-from-beginner', 'Cloud Computing with AWS: From Beginner', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-abstract-gamer-youtube-thumbnail_23-2148918590.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 78, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:46', '2026-03-11 05:35:06', '2026-03-11 05:35:06'),
(9, 1004, 24, 'course', 'Game Development with Unity and C#', 'game-development-with-unity-and-c', 'Game Development with Unity and C#', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-boutique-template-youtube-thumbnail_23-2149346680_24_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 73, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:46', '2026-03-11 05:35:15', '2026-03-11 05:35:15'),
(10, 1012, 29, 'course', 'Cloud Computing with AWS: From Beginner', 'cloud-computing-with-aws-from-beginner', 'Cloud Computing with AWS: From Beginner', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-abstract-gamer-youtube-thumbnail_23-2148918590.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 136, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:46', '2026-03-11 05:35:22', '2026-03-11 05:35:22'),
(11, 1006, 29, 'course', 'Game Development with Unity and C#', 'game-development-with-unity-and-c', 'Game Development with Unity and C#', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/bowling-game-youtube-thumbnail-template_23-2150469871_1_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 136, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:47', '2026-03-11 05:35:33', '2026-03-11 05:35:33'),
(12, 1004, 9, 'course', 'Data Analysis with R for Business Intelligence', 'data-analysis-with-r-for-business-intelligence', 'Data Analysis with R for Business Intelligence', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/modern-purple-digital-marketing-webinar-youtube-thumbnail_23-2149391405.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 187, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:47', '2026-03-11 05:35:43', '2026-03-11 05:35:43'),
(13, 1001, 16, 'course', 'iOS App Development with Objective-C', 'ios-app-development-with-objective-c', 'iOS App Development with Objective-C', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-abstract-gamer-youtube-thumbnail_23-2148918590.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 104, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:47', '2026-03-11 05:35:52', '2026-03-11 05:35:52'),
(14, 1004, 29, 'course', 'Advanced Topics in C++ Programming', 'advanced-topics-in-c-programming', 'Advanced Topics in C++ Programming', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-mosaic-youtube-thumbnail-template_23-2149049531.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 84, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:48', '2026-03-11 05:36:10', '2026-03-11 05:36:10');
INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `type`, `title`, `slug`, `seo_description`, `start_date`, `duration`, `timezone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `downloadable`, `partner_instructor`, `qna`, `message_for_reviewer`, `status`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 1002, 9, 'course', 'Blockchain Fundamentals: Building Decentralized', 'blockchain-fundamentals-building-decentralized', 'Blockchain Fundamentals: Building Decentralized', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/minimal-literature-club-youtube-thumbnail_23-2149680995_32_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 50, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:48', '2026-03-11 05:36:04', '2026-03-11 05:36:04'),
(16, 1002, 30, 'course', 'Artificial Intelligence and Machine', 'artificial-intelligence-and-machine', 'Artificial Intelligence and Machine', NULL, 3000, NULL, '/uploads/store/photos/1/AIML Course Thumbnail.png', 'youtube', NULL, '<p>This <strong>Artificial Intelligence &amp; Machine Learning course</strong> is designed to provide students with a strong foundation in AI concepts, Python programming, data science, and modern machine learning technologies. The course focuses on <strong>hands-on learning, real-world projects, and industry tools</strong> used by professional AI engineers.</p>\r\n<p>Students will start by understanding the fundamentals of <strong>Artificial Intelligence, Machine Learning, and Deep Learning</strong>, followed by learning <strong>Python programming for data science</strong>. The program covers essential mathematical concepts required for machine learning, including <strong>linear algebra, probability, and statistics</strong>.</p>\r\n<p>Learners will then explore <strong>data preprocessing techniques</strong>, including data cleaning, feature engineering, and dataset preparation. The course introduces core machine learning concepts such as <strong>supervised learning, unsupervised learning, and reinforcement learning</strong>, along with model evaluation techniques like <strong>accuracy, precision, recall, F1 score, and confusion matrix</strong>.</p>\r\n<p>Students will gain practical experience with popular <strong>machine learning algorithms</strong> including:</p>\r\n<ul>\r\n<li>\r\n<p>Linear Regression</p>\r\n</li>\r\n<li>\r\n<p>Logistic Regression</p>\r\n</li>\r\n<li>\r\n<p>K-Nearest Neighbors</p>\r\n</li>\r\n<li>\r\n<p>Decision Trees</p>\r\n</li>\r\n<li>\r\n<p>Random Forest</p>\r\n</li>\r\n<li>\r\n<p>Support Vector Machines</p>\r\n</li>\r\n</ul>\r\n<p>The curriculum also includes advanced topics such as <strong>Deep Learning, Computer Vision, and Natural Language Processing (NLP)</strong>. Students will learn to build neural networks using <strong>TensorFlow, Keras, and PyTorch</strong>, and develop AI applications like <strong>image classifiers, sentiment analysis systems, and chatbots</strong>.</p>\r\n<p>A dedicated module introduces <strong>Generative AI and Large Language Models (LLMs)</strong>, covering transformer architecture, prompt engineering, and AI development using tools such as <strong>OpenAI, LangChain, and HuggingFace</strong>.</p>\r\n<p>The course also focuses on <strong>MLOps and deployment</strong>, enabling students to deploy machine learning models using <strong>Flask or FastAPI</strong>, containerize applications with <strong>Docker</strong>, and deploy them on cloud platforms such as <strong>AWS, Google Cloud, and Microsoft Azure</strong>.</p>', NULL, 65000, 51000, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:48', '2026-03-12 11:39:08', NULL),
(17, 1012, 19, 'course', 'DevOps Automation with Jenkins and Ansible', 'devops-automation-with-jenkins-and-ansible', 'DevOps Automation with Jenkins and Ansible', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/finances-concept-facebook-template_23-2151167087_4_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 183, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:48', '2026-03-11 05:36:21', '2026-03-11 05:36:21'),
(18, 1009, 32, 'course', 'Introduction to Natural Language Processing', 'introduction-to-natural-language-processing', 'Introduction to Natural Language Processing', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/minimal-literature-club-youtube-thumbnail_23-2149680995_32_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 93, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:49', '2026-03-11 05:36:35', '2026-03-11 05:36:35'),
(19, 1012, 27, 'course', 'Building Reactive Applications with RxJava', 'building-reactive-applications-with-rxjava', 'Building Reactive Applications with RxJava', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-business-workshop-youtube-thumbnail_23-2149379603_7_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 66, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:49', '2026-03-11 05:36:44', '2026-03-11 05:36:44'),
(20, 1003, 31, 'course', 'UI/UX Design Principles for Developers', 'uiux-design-principles-for-developers', 'UI/UX Design Principles for Developers', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-private-school-landing-page_23-2149724819_29_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 96, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:49', '2026-03-11 05:37:01', '2026-03-11 05:37:01'),
(21, 1012, 23, 'course', 'Introduction to Quantum Computing', 'introduction-to-quantum-computing', 'Introduction to Quantum Computing', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/offline-english-lessons-twitch-background_23-2149293397_35_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 189, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:50', '2026-03-11 05:36:53', '2026-03-11 05:36:53'),
(22, 1012, 14, 'course', 'Business Strategies for Digital Marketers', 'business-strategies-for-digital-marketers', 'Business Strategies for Digital Marketers', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-teache-template-design_23-2150624442_31_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 94, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:50', '2026-03-11 05:37:37', '2026-03-11 05:37:37'),
(23, 1012, 40, 'course', 'Advanced Data Analysis for Business', 'advanced-data-analysis-for-business', 'Advanced Data Analysis for Business', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/modern-purple-digital-marketing-webinar-youtube-thumbnail_23-2149391405_34_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 61, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:50', '2026-03-11 05:37:49', '2026-03-11 05:37:49'),
(24, 1002, 40, 'course', 'IT Security Essentials: Protecting Your', 'it-security-essentials-protecting-your', 'IT Security Essentials: Protecting Your', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/minimal-painting-atelier-youtube-thumbnail_23-2149415474_33_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 99, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:50', '2026-03-11 05:37:08', '2026-03-11 05:37:08'),
(25, 1011, 16, 'course', 'Mastering Python for Data Science', 'mastering-python-for-data-science', 'Mastering Python for Data Science', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-science-youtube-thumbnail_23-2149212059_20_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 53, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:51', '2026-03-11 05:38:18', '2026-03-11 05:38:18'),
(26, 1005, 31, 'course', 'Personal Branding: Building Your Online', 'personal-branding-building-your-online', 'Personal Branding: Building Your Online', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-minimal-technology-youtube-thumbnail_23-2149153571_13_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 119, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:51', '2026-03-11 05:47:12', '2026-03-11 05:47:12'),
(27, 1005, 23, 'course', 'Effective Communication Skills for Leaders', 'effective-communication-skills-for-leaders', 'Effective Communication Skills for Leaders', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-webinar-template-back-school-season_23-2150608229_22_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 174, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:51', '2026-03-11 05:38:10', '2026-03-11 05:38:10'),
(28, 1005, 10, 'course', 'User Interface Design Fundamentals', 'user-interface-design-fundamentals', 'User Interface Design Fundamentals', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-private-school-landing-page_23-2149724819_29_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 57, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:52', '2026-03-11 05:37:59', '2026-03-11 05:37:59'),
(29, 1004, 36, 'course', 'Creating Engaging Content: Strategies', 'creating-engaging-content-strategies', 'Creating Engaging Content: Strategies', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-school-admission-horizontal-banner_23-2150609771_30_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 117, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:52', '2026-03-11 05:47:19', '2026-03-11 05:47:19');
INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `type`, `title`, `slug`, `seo_description`, `start_date`, `duration`, `timezone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `downloadable`, `partner_instructor`, `qna`, `message_for_reviewer`, `status`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 1011, 43, 'course', 'Introduction to Music Production', 'introduction-to-music-production', 'Introduction to Music Production', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-minimal-international-school-youtube-thumbnail_23-2149265066_17_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 198, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:52', '2026-03-11 05:47:25', '2026-03-11 05:47:25'),
(31, 1004, 30, 'course', 'Financial Planning for Young Professionals', 'financial-planning-for-young-professionals', 'Financial Planning for Young Professionals', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/finances-concept-facebook-template_23-2151167087_4_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 132, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:52', '2026-03-11 05:41:28', '2026-03-11 05:41:28'),
(32, 1009, 40, 'course', 'Entrepreneurship: From Idea to Launch', 'entrepreneurship-from-idea-to-launch', 'Entrepreneurship: From Idea to Launch', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-business-workshop-youtube-thumbnail_23-2149394356_8_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 197, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:53', '2026-03-11 05:41:21', '2026-03-11 05:41:21'),
(33, 1004, 38, 'course', 'Cybersecurity Fundamentals for IT Professionals', 'cybersecurity-fundamentals-for-it-professionals', 'Cybersecurity Fundamentals for IT Professionals', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/business-workshop-twitch-background_23-2149399441_2_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 124, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:53', '2026-03-11 05:41:14', '2026-03-11 05:41:14'),
(34, 1006, 10, 'course', 'Self-Confidence Mastery: Overcoming', 'self-confidence-mastery-overcoming', 'Self-Confidence Mastery: Overcoming', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-science-youtube-thumbnail_23-2149212059_20_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 193, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:53', '2026-03-11 05:41:04', '2026-03-11 05:41:04'),
(35, 1011, 24, 'course', 'Graphic Design Principles for Beginners', 'graphic-design-principles-for-beginners', 'Graphic Design Principles for Beginners', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-mosaic-youtube-thumbnail-template_23-2149049531.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 90, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:54', '2026-03-11 05:40:57', '2026-03-11 05:40:57'),
(36, 1002, 29, 'course', 'Digital Marketing Fundamentals: SEO and SEM', 'digital-marketing-fundamentals-seo-and-sem', 'Digital Marketing Fundamentals: SEO and SEM', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/texture-international-school-youtube-thumbnail_23-2149294700_37_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 195, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:54', '2026-03-11 05:40:51', '2026-03-11 05:40:51'),
(37, 1011, 38, 'course', 'Introduction to Guitar Playing Techniques', 'introduction-to-guitar-playing-techniques', 'Introduction to Guitar Playing Techniques', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/business-workshop-twitch-background_23-2149399441_2_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 161, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:54', '2026-03-11 05:40:45', '2026-03-11 05:40:45'),
(38, 1005, 33, 'course', 'Investment Strategies for a Volatile Market', 'investment-strategies-for-a-volatile-market', 'Investment Strategies for a Volatile Market', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/finances-concept-facebook-template_23-2151167087_4_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 128, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:54', '2026-03-11 05:39:19', '2026-03-11 05:39:19'),
(39, 1003, 20, 'course', 'Leadership Development: Inspiring', 'leadership-development-inspiring', 'Leadership Development: Inspiring', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-charity-event-youtube-thumbnail_23-2149458702_11_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 50, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:55', '2026-03-11 05:39:13', '2026-03-11 05:39:13'),
(40, 1003, 40, 'course', 'Web Development Bootcamp: From Zero', 'web-development-bootcamp-from-zero', 'Web Development Bootcamp: From Zero', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/organic-flat-abstract-fashion-youtube-thumbnail_23-2148918552.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 174, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:55', '2026-03-11 05:39:05', '2026-03-11 05:39:05'),
(41, 1009, 34, 'course', 'Mindfulness Meditation for Stress Reduction', 'mindfulness-meditation-for-stress-reduction', 'Mindfulness Meditation for Stress Reduction', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/modern-purple-digital-marketing-webinar-youtube-thumbnail_23-2149391405_34_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 98, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:55', '2026-03-11 05:38:58', '2026-03-11 05:38:58'),
(42, 1002, 9, 'course', 'Strategic Brand Management in Digital', 'strategic-brand-management-in-digital', 'Strategic Brand Management in Digital', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-english-lessons-template_23-2149288750_26_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 110, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:56', '2026-03-11 05:38:50', '2026-03-11 05:38:50'),
(43, 1004, 38, 'course', 'Advanced Excel Techniques for Financial', 'advanced-excel-techniques-for-financial', 'Advanced Excel Techniques for Financial', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-mosaic-youtube-thumbnail-template_23-2149049531.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 171, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:56', '2026-03-11 05:38:44', '2026-03-11 05:38:44');
INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `type`, `title`, `slug`, `seo_description`, `start_date`, `duration`, `timezone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `downloadable`, `partner_instructor`, `qna`, `message_for_reviewer`, `status`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(44, 1002, 21, 'course', 'Effective Time Management for Busy Professionals', 'effective-time-management-for-busy-professionals', 'Effective Time Management for Busy Professionals', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/organic-flat-abstract-fashion-youtube-thumbnail_23-2148918552.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 92, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:56', '2026-03-11 05:38:38', '2026-03-11 05:38:38'),
(45, 1009, 14, 'course', 'UX/UI Design: Creating Intuitive User Experiences', 'uxui-design-creating-intuitive-user-experiences', 'UX/UI Design: Creating Intuitive User Experiences', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-charity-event-youtube-thumbnail_23-2149458702_11_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 187, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:56', '2026-03-11 05:38:32', '2026-03-11 05:38:32'),
(46, 1002, 17, 'course', 'Content Marketing Strategy: Engaging Your Audience', 'content-marketing-strategy-engaging-your-audience', 'Content Marketing Strategy: Engaging Your Audience', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-mosaic-youtube-thumbnail-template_23-2149049531.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 193, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:57', '2026-03-11 05:40:38', '2026-03-11 05:40:38'),
(47, 1009, 10, 'course', 'Music Theory Essentials: Understanding Harmony', 'music-theory-essentials-understanding-harmony', 'Music Theory Essentials: Understanding Harmony', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/organic-flat-abstract-fashion-youtube-thumbnail_23-2148918552.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 86, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:57', '2026-03-11 05:47:31', '2026-03-11 05:47:31'),
(48, 1012, 21, 'course', 'Financial Literacy: Managing Your Finances', 'financial-literacy-managing-your-finances', 'Financial Literacy: Managing Your Finances', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-abstract-gamer-youtube-thumbnail_23-2148918590_5_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 146, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:57', '2026-03-11 05:33:50', '2026-03-11 05:33:50'),
(49, 1006, 16, 'course', 'Project Management Fundamentals: Agile', 'project-management-fundamentals-agile', 'Project Management Fundamentals: Agile', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-business-workshop-youtube-thumbnail_23-2149458722_9_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 174, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:58', '2026-03-11 05:33:44', '2026-03-11 05:33:44'),
(50, 1009, 30, 'course', 'Entrepreneurial Mindset: Cultivating Innovation', 'entrepreneurial-mindset-cultivating-innovation', 'Entrepreneurial Mindset: Cultivating Innovation', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-boutique-template-youtube-thumbnail_23-2149346680_24_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 50, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:58', '2026-03-11 05:33:34', '2026-03-11 05:33:34'),
(51, 1011, 13, 'course', 'Cybersecurity for Small Businesses: Best Practices', 'cybersecurity-for-small-businesses-best-practices', 'Cybersecurity for Small Businesses: Best Practices', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-minimal-technology-youtube-thumbnail_23-2149153571_13_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 147, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:58', '2026-03-11 05:33:29', '2026-03-11 05:33:29'),
(52, 1011, 28, 'course', 'Creative Writing Workshop: Finding Your Voice', 'creative-writing-workshop-finding-your-voice', 'Creative Writing Workshop: Finding Your Voice', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/finances-concept-facebook-template_23-2151167087_4_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 136, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:58', '2026-03-11 05:33:18', '2026-03-11 05:33:18'),
(53, 1012, 36, 'course', 'Introduction to Digital Illustration', 'introduction-to-digital-illustration', 'Introduction to Digital Illustration', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/minimal-literature-club-youtube-thumbnail_23-2149680995_32_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 116, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:59', '2026-03-11 05:33:11', '2026-03-11 05:33:11'),
(54, 1006, 38, 'course', 'Social Media Marketing: Building Brand', 'social-media-marketing-building-brand', 'Social Media Marketing: Building Brand', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/organic-flat-abstract-fashion-youtube-thumbnail_23-2148918552.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 125, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:59', '2026-03-11 05:33:05', '2026-03-11 05:33:05'),
(55, 1006, 14, 'course', 'Music Production Masterclass: Mixing', 'music-production-masterclass-mixing', 'Music Production Masterclass: Mixing', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/finances-concept-facebook-template_23-2151167087_4_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 111, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:40:59', '2026-03-11 05:32:59', '2026-03-11 05:32:59'),
(56, 1003, 24, 'course', 'Investing in Cryptocurrencies: Opportunities', 'investing-in-cryptocurrencies-opportunities', 'Investing in Cryptocurrencies: Opportunities', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/minimal-painting-atelier-youtube-thumbnail_23-2149415474_33_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 163, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:00', '2026-03-11 05:33:58', '2026-03-11 05:33:58'),
(57, 1003, 35, 'course', 'Conflict Resolution Skills for Workplace', 'conflict-resolution-skills-for-workplace', 'Conflict Resolution Skills for Workplace', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/business-workshop-twitch-background_23-2149399441_2_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 190, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:00', '2026-03-11 05:40:31', '2026-03-11 05:40:31');
INSERT INTO `courses` (`id`, `instructor_id`, `category_id`, `type`, `title`, `slug`, `seo_description`, `start_date`, `duration`, `timezone`, `thumbnail`, `demo_video_storage`, `demo_video_source`, `description`, `capacity`, `price`, `discount`, `certificate`, `downloadable`, `partner_instructor`, `qna`, `message_for_reviewer`, `status`, `is_approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(58, 1004, 35, 'course', 'Design Thinking: Solving Complex Problems', 'design-thinking-solving-complex-problems', 'Design Thinking: Solving Complex Problems', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-teache-template-design_23-2150624442_31_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 177, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:00', '2026-03-11 05:47:38', '2026-03-11 05:47:38'),
(59, 1009, 10, 'course', 'Digital Advertising Fundamentals: PPC', 'digital-advertising-fundamentals-ppc', 'Digital Advertising Fundamentals: PPC', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-business-workshop-youtube-thumbnail_23-2149510811_6_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 173, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:00', '2026-03-11 05:40:22', '2026-03-11 05:40:22'),
(60, 1006, 31, 'course', 'Piano for Beginners: Learning Basic Techniques', 'piano-for-beginners-learning-basic-techniques', 'Piano for Beginners: Learning Basic Techniques', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/offline-english-lessons-twitch-background_23-2149293397_35_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 200, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:01', '2026-03-11 05:40:14', '2026-03-11 05:40:14'),
(61, 1002, 36, 'course', 'Retirement Planning: Securing Your Future', 'retirement-planning-securing-your-future', 'Retirement Planning: Securing Your Future', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/modern-purple-digital-marketing-webinar-youtube-thumbnail_23-2149391405.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 110, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:01', '2026-03-11 05:47:46', '2026-03-11 05:47:46'),
(62, 1005, 15, 'course', 'Effective Public Speaking: Engage and Persuade', 'effective-public-speaking-engage-and-persuade', 'Effective Public Speaking: Engage and Persuade', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/hand-drawn-private-school-landing-page_23-2149724819_29_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 120, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:01', '2026-03-11 05:40:07', '2026-03-11 05:40:07'),
(63, 1004, 18, 'course', 'Product Essentials: From Idea to Market', 'product-essentials-from-idea-to-market', 'Product Essentials: From Idea to Market', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/organic-flat-abstract-fashion-youtube-thumbnail_23-2148918552.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 100, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:02', '2026-03-11 05:39:58', '2026-03-11 05:39:58'),
(64, 1003, 41, 'course', 'Mindful Leadership: Leading with Compassion', 'mindful-leadership-leading-with-compassion', 'Mindful Leadership: Leading with Compassion', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-english-lessons-template_23-2149288750_26_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 183, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:02', '2026-03-11 05:47:54', '2026-03-11 05:47:54'),
(65, 1003, 12, 'course', 'Introduction to User Experience Research', 'introduction-to-user-experience-research', 'Introduction to User Experience Research', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-minimal-technology-youtube-channel-art_23-2149058149_18_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 169, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:02', '2026-03-11 05:46:47', '2026-03-11 05:46:47'),
(66, 1011, 36, 'course', 'E-commerce Strategies for Small Businesses', 'e-commerce-strategies-for-small-businesses', 'E-commerce Strategies for Small Businesses', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-minimal-charity-event-youtube-miniature_23-2149507670_15_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 170, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:02', '2026-03-11 05:39:47', '2026-03-11 05:39:47'),
(67, 1005, 35, 'course', 'Songwriting Basics: Crafting Melodies', 'songwriting-basics-crafting-melodies', 'Songwriting Basics: Crafting Melodies', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/gradient-business-youtube-thumbnail-design-template_23-2149384500_25_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 76, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:03', '2026-03-11 05:39:41', '2026-03-11 05:39:41'),
(68, 1003, 27, 'course', 'Introduction to Financial Markets', 'introduction-to-financial-markets', 'Introduction to Financial Markets', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/offline-english-lessons-twitch-background_23-2149293397_35_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 150, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:03', '2026-03-11 05:32:37', '2026-03-11 05:32:37'),
(69, 1001, 14, 'course', 'Remote Work Productivity: Tips and Tools', 'remote-work-productivity-tips-and-tools', 'Remote Work Productivity: Tips and Tools', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-charity-event-youtube-thumbnail_23-2149437717_10_11zon.jpg', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 182, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:03', '2026-03-11 05:46:38', '2026-03-11 05:46:38'),
(70, 1002, 17, 'course', 'Artificial Intelligence in Business', 'artificial-intelligence-in-business', 'Artificial Intelligence in Business', NULL, 3000, NULL, '/uploads/store/files/1001/my course images/flat-design-minimal-technology-youtube-thumbnail_23-2149153571_13_11zon.webp', 'youtube', 'https://www.youtube.com/watch?v=MHhIzIgFgJo', '<p>Laravel 10: Build Realtime Messaging App From Scratch (2024)</p>\r\n<p>Are you ready to take your Laravel skills to the next level? In this course, you will build a complete <strong>Realtime Messaging System</strong> project from scratch using Laravel 10 and Pusher. This project-based course is designed to help you become a professional Laravel developer and give you a competitive edge in the job market.</p>\r\n<p><strong>Why Learn Laravel 10?</strong></p>\r\n<p>Laravel 10 is the latest version of the popular PHP framework and comes packed with new features and improvements, making it faster and more efficient than ever before. It\'s easy to learn and has a huge community, making it the perfect choice for building robust and scalable web applications.</p>\r\n<p><strong>What Will You Learn?</strong></p>\r\n<p>In this course, you will learn how to build a feature-rich <strong>Realtime Messaging</strong> platform with advanced functionalities such as:</p>\r\n<ul>\r\n<li>User to User Live Chat</li>\r\n<li>Pusher Implementation</li>\r\n<li>Server Side Event Broadcasting</li>\r\n<li>Laravel Echo Implementation</li>\r\n<li>Working with Private Cannels</li>\r\n<li>Working with Presence Channels</li>\r\n<li>Listening Events From Client Side</li>\r\n<li>Request Debouncing</li>\r\n<li>Live Search</li>\r\n<li>Live Image Sending</li>\r\n<li>Ajax Scroll to Paginate</li>\r\n<li>Message Delete Feature</li>\r\n<li>Add Contact to Favorites</li>\r\n<li>Dynamic Image Gallery</li>\r\n<li>Profile Update Feature</li>\r\n<li>Personal Inbox</li>\r\n<li>Laravel Brezze For Auth</li>\r\n<li>And More</li>\r\n</ul>\r\n<p><strong>Why Choose This Course?</strong></p>\r\n<p>Unlike other courses that only cover the basics, this course is designed to help you build a complete, real-world project from scratch. You will not only learn how to write code, but also gain valuable insights into project management and best practices. Plus, you will have access to the complete source code of the project and lifetime access to the course materials.</p>\r\n<p>What\'s more, once you have completed this course, you will have a highly marketable skill set and the potential to earn a high income as a professional Laravel developer.</p>\r\n<p>Enroll now and take the first step towards building your dream <strong>Job Portal</strong> platform with Laravel 10!</p>\r\n<h2>Who this course is for:</h2>\r\n<ul>\r\n<li>Aspiring developers who want to become proficient in Laravel.</li>\r\n<li>Web developers who want to take their Laravel/PHP skills to the next level.</li>\r\n<li>Students who want to gain practical experience in building modern app with Laravel.</li>\r\n<li>University students who need to complete a project assignment using Laravel.</li>\r\n<li>Developers who want to learn about realtime features implementations</li>\r\n</ul>\r\n<p>&nbsp;</p>', NULL, 138, NULL, 1, 0, 0, 1, NULL, 'active', 'approved', '2024-07-03 21:41:04', '2026-03-11 05:39:34', '2026-03-11 05:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `show_at_trending` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `slug`, `order`, `icon`, `parent_id`, `show_at_trending`, `status`, `created_at`, `updated_at`) VALUES
(3, 'it-software', NULL, 'uploads/custom-images/wsus-img-2024-06-03-10-25-46-7672.png', NULL, 1, 1, '2024-06-03 04:25:46', '2024-06-03 04:25:46'),
(30, 'it-certifications', NULL, NULL, 3, NULL, 1, '2024-06-03 12:39:09', '2024-06-03 12:39:09'),
(45, 'artificial-intelligence', NULL, NULL, 3, NULL, 1, '2026-03-11 06:03:16', '2026-03-11 06:03:16'),
(46, 'web-development', NULL, NULL, 3, NULL, 1, '2026-03-11 06:03:34', '2026-03-11 06:03:34'),
(47, 'embedded-iot', NULL, NULL, 3, NULL, 1, '2026-03-11 06:04:07', '2026-03-11 06:04:07'),
(48, 'data-analytics', NULL, NULL, 3, NULL, 1, '2026-03-11 06:04:27', '2026-03-11 06:04:27'),
(49, 'electronics-semiconductor-engineering', NULL, NULL, 3, NULL, 1, '2026-03-11 06:04:44', '2026-03-11 06:04:44'),
(50, 'advanced-future-technologies', NULL, NULL, 3, NULL, 1, '2026-03-11 06:04:59', '2026-03-11 06:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `course_category_translations`
--

CREATE TABLE `course_category_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `course_category_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_category_translations`
--

INSERT INTO `course_category_translations` (`id`, `course_category_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(7, 3, 'en', 'Technology & Engineering', '2024-06-03 04:25:46', '2026-03-11 06:06:34'),
(8, 3, 'hi', 'आईटी सॉफ़्टवेयर', '2024-06-03 04:25:46', '2024-06-03 05:06:04'),
(88, 30, 'en', 'IT Certifications', '2024-06-03 12:39:09', '2024-06-03 12:39:09'),
(89, 30, 'hi', 'आईटी प्रमाणपत्र', '2024-06-03 12:39:09', '2024-06-03 12:39:25'),
(132, 45, 'en', 'Artificial Intelligence', '2026-03-11 06:03:16', '2026-03-11 06:03:16'),
(133, 45, 'hi', 'Artificial Intelligence', '2026-03-11 06:03:16', '2026-03-11 06:03:16'),
(134, 46, 'en', 'Web Development', '2026-03-11 06:03:34', '2026-03-11 06:03:34'),
(135, 46, 'hi', 'Web Development', '2026-03-11 06:03:34', '2026-03-11 06:03:34'),
(136, 47, 'en', 'Embedded & IoT', '2026-03-11 06:04:07', '2026-03-11 06:04:07'),
(137, 47, 'hi', 'Embedded & IoT', '2026-03-11 06:04:07', '2026-03-11 06:04:07'),
(138, 48, 'en', 'Data & Analytics', '2026-03-11 06:04:27', '2026-03-11 06:04:27'),
(139, 48, 'hi', 'Data & Analytics', '2026-03-11 06:04:27', '2026-03-11 06:04:27'),
(140, 49, 'en', 'Electronics & Semiconductor Engineering', '2026-03-11 06:04:44', '2026-03-11 06:04:44'),
(141, 49, 'hi', 'Electronics & Semiconductor Engineering', '2026-03-11 06:04:44', '2026-03-11 06:04:44'),
(142, 50, 'en', 'Advanced / Future Technologies', '2026-03-11 06:04:59', '2026-03-11 06:04:59'),
(143, 50, 'hi', 'Advanced / Future Technologies', '2026-03-11 06:04:59', '2026-03-11 06:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `course_chapters`
--

CREATE TABLE `course_chapters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `order` int NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_chapters`
--

INSERT INTO `course_chapters` (`id`, `title`, `instructor_id`, `course_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(491, 'Introduction to Artificial Intelligence', 1002, 16, 1, 'active', '2026-03-12 07:14:13', '2026-03-12 07:14:13'),
(492, 'Python for Data Science', 1002, 16, 2, 'active', '2026-03-12 07:21:36', '2026-03-12 07:21:36'),
(493, 'Mathematics for Machine Learning', 1002, 16, 3, 'active', '2026-03-12 07:22:02', '2026-03-12 07:22:02'),
(494, 'Data Preprocessing', 1002, 16, 4, 'active', '2026-03-12 07:22:16', '2026-03-12 07:22:16'),
(495, 'Machine Learning Fundamentals', 1002, 16, 5, 'active', '2026-03-12 07:58:14', '2026-03-12 07:58:14'),
(496, 'Supervised Learning Algorithms', 1002, 16, 6, 'active', '2026-03-12 07:59:00', '2026-03-12 07:59:00'),
(497, 'Unsupervised Learning', 1002, 16, 7, 'active', '2026-03-12 07:59:11', '2026-03-12 07:59:11'),
(498, 'Deep Learning', 1002, 16, 8, 'active', '2026-03-12 07:59:27', '2026-03-12 07:59:27'),
(499, 'Computer Vision', 1002, 16, 9, 'active', '2026-03-12 07:59:46', '2026-03-12 07:59:46'),
(500, 'Natural Language Processing (NLP)', 1002, 16, 10, 'active', '2026-03-12 08:00:00', '2026-03-12 08:00:00'),
(501, 'Generative AI & LLMs', 1002, 16, 11, 'active', '2026-03-12 08:00:17', '2026-03-12 08:00:17'),
(503, 'MLOps & Deployment', 1002, 16, 12, 'active', '2026-03-12 08:01:05', '2026-03-12 08:01:05'),
(504, 'Capstone Projects', 1002, 16, 13, 'active', '2026-03-12 08:01:20', '2026-03-12 08:01:20'),
(505, 'Industry Tools', 1002, 16, 14, 'active', '2026-03-12 08:01:56', '2026-03-12 08:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `course_chapter_items`
--

CREATE TABLE `course_chapter_items` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `type` enum('lesson','quiz','document','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'lesson',
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_chapter_lessons`
--

CREATE TABLE `course_chapter_lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `chapter_item_id` bigint UNSIGNED NOT NULL,
  `file_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `storage` enum('upload','youtube','vimeo','external_link','google_drive','iframe','aws','wasabi','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'upload',
  `volume` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_type` enum('video','audio','pdf','txt','docx','iframe','image','file','live','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'video',
  `downloadable` tinyint(1) NOT NULL DEFAULT '1',
  `order` int DEFAULT NULL,
  `is_free` tinyint(1) DEFAULT '0',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_delete_requests`
--

CREATE TABLE `course_delete_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_languages`
--

CREATE TABLE `course_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_languages`
--

INSERT INTO `course_languages` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, '2024-06-03 21:34:49', '2024-06-03 21:34:49'),
(2, 'Hindi', 0, '2024-06-03 21:35:17', '2026-03-11 06:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `course_levels`
--

CREATE TABLE `course_levels` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_levels`
--

INSERT INTO `course_levels` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'beginner', 1, '2024-06-03 21:37:22', '2024-06-03 21:37:22'),
(2, 'intermediate', 1, '2024-06-03 21:37:49', '2024-06-03 21:37:49'),
(3, 'expert', 1, '2024-06-03 21:38:36', '2024-06-03 21:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_level_translations`
--

CREATE TABLE `course_level_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `course_level_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_level_translations`
--

INSERT INTO `course_level_translations` (`id`, `course_level_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Beginner', '2024-06-03 21:37:22', '2024-06-03 21:37:22'),
(2, 1, 'hi', 'शुरुआती', '2024-06-03 21:37:22', '2024-06-03 21:39:25'),
(4, 2, 'en', 'Intermediate', '2024-06-03 21:37:49', '2024-06-03 21:37:49'),
(5, 2, 'hi', 'मध्यवर्ती', '2024-06-03 21:37:49', '2024-06-03 21:38:03'),
(7, 3, 'en', 'Expert', '2024-06-03 21:38:36', '2024-06-03 21:38:36'),
(8, 3, 'hi', 'Expert', '2024-06-03 21:38:36', '2024-06-03 21:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_live_classes`
--

CREATE TABLE `course_live_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` enum('zoom','jitsi') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'zoom',
  `meeting_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_partner_instructors`
--

CREATE TABLE `course_partner_instructors` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_progress`
--

CREATE TABLE `course_progress` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED DEFAULT NULL,
  `chapter_id` bigint UNSIGNED DEFAULT NULL,
  `lesson_id` bigint UNSIGNED DEFAULT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT '0',
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('lesson','quiz','document','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'lesson',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE `course_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_reviews`
--

INSERT INTO `course_reviews` (`id`, `course_id`, `user_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(17, 16, 1010, 5, 'Good course loved it a lot', 1, '2024-06-23 06:42:59', '2024-06-23 06:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `course_selected_filter_options`
--

CREATE TABLE `course_selected_filter_options` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `filter_id` bigint UNSIGNED NOT NULL,
  `filter_option_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_selected_languages`
--

CREATE TABLE `course_selected_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_selected_languages`
--

INSERT INTO `course_selected_languages` (`id`, `course_id`, `language_id`, `created_at`, `updated_at`) VALUES
(16, 16, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `course_selected_levels`
--

CREATE TABLE `course_selected_levels` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_selected_levels`
--

INSERT INTO `course_selected_levels` (`id`, `course_id`, `level_id`, `created_at`, `updated_at`) VALUES
(16, 16, 2, '2024-07-03 21:40:48', '2024-07-03 21:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_p_g`
--

CREATE TABLE `crypto_p_g` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crypto_p_g`
--

INSERT INTO `crypto_p_g` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'crypto_image', 'uploads/website-images/coingate.webp', '2025-02-26 03:37:48', '2025-02-26 03:37:48'),
(2, 'crypto_status', 'inactive', '2025-02-26 03:37:48', '2025-02-26 03:56:28'),
(3, 'crypto_sandbox', '1', '2025-02-26 03:37:48', '2025-02-26 03:37:48'),
(4, 'crypto_token', 'crypto_token', '2025-02-26 03:37:48', '2025-02-26 03:50:31'),
(5, 'crypto_charge', '0', '2025-02-26 03:37:48', '2025-02-26 03:37:48'),
(6, 'crypto_receive_currency', 'USD', '2025-02-26 03:37:48', '2025-02-26 03:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `custom_addons`
--

CREATE TABLE `custom_addons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `isPaid` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `author` json DEFAULT NULL,
  `options` json DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_codes`
--

CREATE TABLE `custom_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `javascript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `header_javascript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fixed_header` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `slug`, `fixed_header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'privacy-policy', 0, 1, '2024-06-05 01:15:39', '2024-06-05 01:15:39'),
(2, 'terms-and-conditions', 0, 1, '2024-06-05 01:33:02', '2024-06-05 01:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `custom_page_translations`
--

CREATE TABLE `custom_page_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `custom_page_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_page_translations`
--

INSERT INTO `custom_page_translations` (`id`, `custom_page_id`, `lang_code`, `name`, `content`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'privacy policy', '<p>Welcome to SkillGro! We value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, and safeguard your data when you visit our website.</p>\r\n<p><strong>Information We Collect</strong></p>\r\n<ol>\r\n<li>\r\n<p><strong>Personal Information</strong>: When you register on our site, subscribe to our newsletter, or fill out a form, we may collect personal information such as your name, email address, phone number, and any other details you provide.</p>\r\n</li>\r\n<li>\r\n<p><strong>Non-Personal Information</strong>: We may collect non-personal information about visitors whenever they interact with our site. This may include the browser name, the type of computer, and technical information about users\' means of connection to our site, such as the operating system and the Internet service providers utilized and other similar information.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies and Tracking Technologies</strong>: Our site may use \"cookies\" to enhance user experience. Users\' web browsers place cookies on their hard drive for record-keeping purposes and sometimes to track information about them. Users may choose to set their web browser to refuse cookies or to alert them when cookies are being sent. If they do so, note that some parts of the site may not function properly.</p>\r\n</li>\r\n</ol>\r\n<p><strong>How We Use Collected Information</strong></p>\r\n<p>SkillGro may collect and use users\' personal information for the following purposes:</p>\r\n<ol>\r\n<li>\r\n<p><strong>To Improve Customer Service</strong>: Information you provide helps us respond to your customer service requests and support needs more efficiently.</p>\r\n</li>\r\n<li>\r\n<p><strong>To Personalize User Experience</strong>: We may use information in the aggregate to understand how our users as a group use the services and resources provided on our site.</p>\r\n</li>\r\n<li>\r\n<p><strong>To Improve Our Site</strong>: We may use feedback you provide to improve our products and services.</p>\r\n</li>\r\n<li>\r\n<p><strong>To Process Payments</strong>: We may use the information users provide about themselves when placing an order only to provide service to that order. We do not share this information with outside parties except to the extent necessary to provide the service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To Send Periodic Emails</strong>: We may use the email address to send user information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>\r\n</li>\r\n</ol>\r\n<p><strong>How We Protect Your Information</strong></p>\r\n<p>We adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information, username, password, transaction information, and data stored on our site.</p>', NULL, NULL, '2024-06-05 01:15:39', '2024-06-07 13:30:28'),
(2, 1, 'hi', 'गोपनीयता नीति', '<p>SkillGro में आपका स्वागत है! हम आपकी गोपनीयता को महत्व देते हैं और आपकी व्यक्तिगत जानकारी की सुरक्षा के लिए प्रतिबद्ध हैं। यह गोपनीयता नीति बताती है कि जब आप हमारी वेबसाइट पर जाते हैं तो हम आपके डेटा को कैसे एकत्रित करते हैं, उसका उपयोग करते हैं और उसकी सुरक्षा करते हैं।</p>\r\n<p><strong>हम जो जानकारी एकत्रित करते हैं</strong></p>\r\n<p>व्यक्तिगत जानकारी: जब आप हमारी साइट पर रजिस्टर करते हैं, हमारे न्यूज़लेटर की सदस्यता लेते हैं, या कोई फ़ॉर्म भरते हैं, तो हम आपका नाम, ईमेल पता, फ़ोन नंबर और आपके द्वारा प्रदान की गई कोई अन्य जानकारी जैसी व्यक्तिगत जानकारी एकत्रित कर सकते हैं।</p>\r\n<p>गैर-व्यक्तिगत जानकारी: जब भी आगंतुक हमारी साइट से इंटरैक्ट करते हैं, तो हम उनके बारे में गैर-व्यक्तिगत जानकारी एकत्रित कर सकते हैं। इसमें ब्राउज़र का नाम, कंप्यूटर का प्रकार और हमारी साइट से जुड़ने के उपयोगकर्ताओं के साधनों के बारे में तकनीकी जानकारी, जैसे कि ऑपरेटिंग सिस्टम और उपयोग किए जाने वाले इंटरनेट सेवा प्रदाता और अन्य समान जानकारी शामिल हो सकती है।</p>\r\n<p>कुकीज़ और ट्रैकिंग तकनीकें: हमारी साइट उपयोगकर्ता अनुभव को बेहतर बनाने के लिए \"कुकीज़\" का उपयोग कर सकती है। उपयोगकर्ताओं के वेब ब्राउज़र रिकॉर्ड रखने के उद्देश्य से और कभी-कभी उनके बारे में जानकारी ट्रैक करने के लिए उनकी हार्ड ड्राइव पर कुकीज़ रखते हैं। उपयोगकर्ता अपने वेब ब्राउज़र को कुकीज़ को अस्वीकार करने या कुकीज़ भेजे जाने पर उन्हें सचेत करने के लिए सेट करना चुन सकते हैं। यदि वे ऐसा करते हैं, तो ध्यान दें कि साइट के कुछ हिस्से ठीक से काम नहीं कर सकते हैं।</p>\r\n<p><strong>हम एकत्रित जानकारी का उपयोग कैसे करते हैं</strong></p>\r\n<p>SkillGro निम्नलिखित उद्देश्यों के लिए उपयोगकर्ताओं की व्यक्तिगत जानकारी एकत्रित और उपयोग कर सकता है:</p>\r\n<p>ग्राहक सेवा में सुधार करने के लिए: आपके द्वारा प्रदान की गई जानकारी हमें आपके ग्राहक सेवा अनुरोधों और सहायता आवश्यकताओं का अधिक कुशलता से जवाब देने में मदद करती है।</p>\r\n<p>उपयोगकर्ता अनुभव को वैयक्तिकृत करने के लिए: हम यह समझने के लिए समग्र रूप से जानकारी का उपयोग कर सकते हैं कि हमारे उपयोगकर्ता एक समूह के रूप में हमारी साइट पर प्रदान की गई सेवाओं और संसाधनों का उपयोग कैसे करते हैं।</p>\r\n<p>हमारी साइट को बेहतर बनाने के लिए: हम अपने उत्पादों और सेवाओं को बेहतर बनाने के लिए आपके द्वारा प्रदान की गई प्रतिक्रिया का उपयोग कर सकते हैं।</p>\r\n<p>भुगतान संसाधित करने के लिए: हम ऑर्डर देते समय उपयोगकर्ताओं द्वारा अपने बारे में दी गई जानकारी का उपयोग केवल उस ऑर्डर को सेवा प्रदान करने के लिए कर सकते हैं। हम इस जानकारी को बाहरी पक्षों के साथ साझा नहीं करते हैं, सिवाय इसके कि सेवा प्रदान करने के लिए आवश्यक हो।</p>\r\n<p>आवधिक ईमेल भेजने के लिए: हम उपयोगकर्ता की जानकारी और उनके ऑर्डर से संबंधित अपडेट भेजने के लिए ईमेल पते का उपयोग कर सकते हैं। इसका उपयोग उनकी पूछताछ, प्रश्नों और/या अन्य अनुरोधों का जवाब देने के लिए भी किया जा सकता है।</p>\r\n<p><strong>हम आपकी जानकारी की सुरक्षा कैसे करते हैं</strong></p>\r\n<p>हम आपकी व्यक्तिगत जानकारी, उपयोगकर्ता नाम, पासवर्ड, लेन-देन की जानकारी और हमारी साइट पर संग्रहीत डेटा की अनधिकृत पहुँच, परिवर्तन, प्रकटीकरण या विनाश से सुरक्षा के लिए उचित डेटा संग्रह, भंडारण और प्रसंस्करण प्रथाओं और सुरक्षा उपायों को अपनाते हैं।</p>', NULL, NULL, '2024-06-05 01:15:39', '2024-06-05 01:30:05'),
(4, 2, 'en', 'terms and conditions', '<p>Please read these Terms and Conditions</p>\r\n<p>Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users, and others who access or use the Service.</p>\r\n<p>By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service.</p>\r\n<p><strong>Accounts</strong></p>\r\n<p>When you create an account with us, you must provide us information that is accurate, complete, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account on our Service.</p>\r\n<p>You are responsible for safeguarding the password that you use to access the Service and for any activities or actions under your password, whether your password is with our Service or a third-party service.</p>\r\n<p>You agree not to disclose your password to any third party. You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account.</p>\r\n<p><strong>Links To Other Web Sites</strong></p>\r\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by SkillGro.</p>\r\n<p>SkillGro has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third-party web sites or services. You further acknowledge and agree that SkillGro shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods, or services available on or through any such web sites or services.</p>\r\n<p>We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit.</p>\r\n<p><strong>Termination</strong></p>\r\n<p>We may terminate or suspend access to our Service immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.</p>\r\n<p>All provisions of the Terms which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.</p>\r\n<p>We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.</p>\r\n<p>Upon termination, your right to use the Service will immediately cease. If you wish to terminate your account, you may simply discontinue using the Service.</p>', NULL, NULL, '2024-06-05 01:33:02', '2024-06-05 01:33:02'),
(5, 2, 'hi', 'नियम और शर्तें', '<p>कृपया इन नियमों और शर्तों को पढ़ें</p>\r\n<p>सेवा तक आपकी पहुँच और उसका उपयोग इन शर्तों को स्वीकार करने और उनका अनुपालन करने पर निर्भर करता है। ये शर्तें सभी आगंतुकों, उपयोगकर्ताओं और अन्य लोगों पर लागू होती हैं जो सेवा तक पहुँचते हैं या उसका उपयोग करते हैं।</p>\r\n<p>सेवा तक पहुँचने या उसका उपयोग करके आप इन शर्तों से बंधे होने के लिए सहमत होते हैं। यदि आप शर्तों के किसी भी भाग से असहमत हैं तो आप सेवा तक नहीं पहुँच सकते।</p>\r\n<p>खाते</p>\r\n<p>जब आप हमारे साथ खाता बनाते हैं, तो आपको हमें हर समय सटीक, पूर्ण और वर्तमान जानकारी प्रदान करनी चाहिए। ऐसा न करना शर्तों का उल्लंघन माना जाता है, जिसके परिणामस्वरूप हमारी सेवा पर आपके खाते को तुरंत समाप्त किया जा सकता है।</p>\r\n<p>आप सेवा तक पहुँचने के लिए उपयोग किए जाने वाले पासवर्ड की सुरक्षा और अपने पासवर्ड के तहत किसी भी गतिविधि या कार्रवाई के लिए जिम्मेदार हैं, चाहे आपका पासवर्ड हमारी सेवा या किसी तीसरे पक्ष की सेवा के साथ हो।</p>\r\n<p>आप किसी तीसरे पक्ष को अपना पासवर्ड न बताने के लिए सहमत हैं। सुरक्षा के किसी भी उल्लंघन या आपके खाते के अनधिकृत उपयोग के बारे में पता चलने पर आपको हमें तुरंत सूचित करना चाहिए।</p>\r\n<p>अन्य वेब साइट्स के लिंक</p>\r\n<p>हमारी सेवा में थर्ड-पार्टी वेब साइट्स या सेवाओं के लिंक हो सकते हैं, जो SkillGro के स्वामित्व या नियंत्रण में नहीं हैं।</p>\r\n<p>SkillGro का किसी भी थर्ड-पार्टी वेब साइट्स या सेवाओं की सामग्री, गोपनीयता नीतियों या प्रथाओं पर कोई नियंत्रण नहीं है और न ही वह इसके लिए कोई जिम्मेदारी लेता है। आप आगे स्वीकार करते हैं और सहमत हैं कि SkillGro किसी भी ऐसी वेब साइट्स या सेवाओं पर या उनके माध्यम से उपलब्ध किसी भी ऐसी सामग्री, सामान या सेवाओं के उपयोग या उन पर निर्भरता के कारण या उनके संबंध में होने वाली किसी भी क्षति या हानि के लिए प्रत्यक्ष या अप्रत्यक्ष रूप से जिम्मेदार या उत्तरदायी नहीं होगा।</p>\r\n<p>हम आपको दृढ़ता से सलाह देते हैं कि आप अपने द्वारा देखी जाने वाली किसी भी थर्ड-पार्टी वेब साइट्स या सेवाओं की नियम और शर्तें और गोपनीयता नीतियां पढ़ें।</p>\r\n<p>समाप्ति</p>\r\n<p>हम बिना किसी पूर्व सूचना या देयता के, किसी भी कारण से, बिना किसी सीमा के, अपनी सेवा तक पहुंच को तुरंत समाप्त या निलंबित कर सकते हैं, जिसमें बिना किसी सीमा के यदि आप शर्तों का उल्लंघन करते हैं।</p>\r\n<p>शर्तों के सभी प्रावधान जो अपनी प्रकृति के अनुसार समाप्ति के बाद भी बने रहने चाहिए, समाप्ति के बाद भी बने रहेंगे, जिसमें बिना किसी सीमा के, स्वामित्व प्रावधान, वारंटी अस्वीकरण, क्षतिपूर्ति और देयता की सीमाएं शामिल हैं।</p>\r\n<p>हम बिना किसी पूर्व सूचना या दायित्व के, किसी भी कारण से, बिना किसी सीमा के, आपके खाते को तुरंत समाप्त या निलंबित कर सकते हैं, जिसमें बिना किसी सीमा के यदि आप शर्तों का उल्लंघन करते हैं।</p>\r\n<p>समाप्ति पर, सेवा का उपयोग करने का आपका अधिकार तुरंत समाप्त हो जाएगा। यदि आप अपना खाता समाप्त करना चाहते हैं, तो आप बस सेवा का उपयोग करना बंद कर सकते हैं।</p>', NULL, NULL, '2024-06-05 01:33:02', '2024-06-05 01:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint UNSIGNED NOT NULL,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item_qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `section_name`, `item_qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog List', 10, '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(2, 'Blog Comment', 10, '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(3, 'Media List', 10, '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(4, 'Language List', 50, '2024-06-03 02:02:30', '2024-06-03 02:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'password_reset', 'Password Reset', '<p>Dear {{user_name}},</p>\n                <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(2, 'contact_mail', 'Contact Email', '<p>Hello there,</p>\n                <p>&nbsp;Mr. {{name}} has sent a new message. you can see the message details below.&nbsp;</p>\n                <p>Email: {{email}}</p>\n                <p>Phone: {{phone}}</p>\n                <p>Subject: {{subject}}</p>\n                <p>Message: {{message}}</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(3, 'subscribe_notification', 'Subscribe Notification', '<p>Hi there, Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you will not approve this link, you can not get any newsletter from us.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(4, 'user_verification', 'User Verification', '<p>Dear {{user_name}},</p>\n                <p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(5, 'approved_refund', 'Refund Request Approval', '<p>Dear {{user_name}},</p>\n                <p>We are happy to say that, we have send {{refund_amount}} USD to your provided bank information. </p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(6, 'new_refund', 'New Refund Request', '<p>Hello websolutionus, </p>\n\n                <p>Mr. {{user_name}} has send a new refund request to you.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(7, 'pending_wallet_payment', 'Wallet Payment Approval', '<p>Hello {{user_name}},</p>\n                <p>We have received your wallet payment request. we find your payment to our bank account.</p>\n                <p>Thanks &amp; Regards</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(8, 'approved_withdraw', 'Withdraw Request Approval', '<p>Dear {{user_name}},</p>\n                <p>We are happy to say that, we have send a withdraw amount to your provided bank information.</p>\n                <p>Thanks &amp; Regards</p>\n                <p>WebSolutionUs</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(9, 'rejected_withdraw', 'Withdraw Request Rejected', '<p>Dear {{user_name}},</p>\n                <p> your withdraw request has been rejected.</p>\n                <p>Thanks &amp; Regards</p>\n                <p>WebSolutionUs</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(10, 'pending_withdraw', 'Withdraw Request Pending', '<p>Dear {{user_name}},</p>\n                <p> your withdraw request is waiting for approval.</p>\n                <p>Thanks &amp; Regards</p>\n                <p>WebSolutionUs</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(11, 'instructor_request_approved', 'Instructor Request Approval', '<p>Dear {{user_name}},</p>\n                <p>you are now approved as an instructor.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(12, 'instructor_request_rejected', 'Instructor Request Rejected', '<p>Dear {{user_name}},</p>\n                <p>your request has been rejected. please resubmit your request with proper document. or contact us.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(13, 'instructor_request_pending', 'Instructor Request is waiting for approval', '<p>Dear {{user_name}},</p>\n                <p>your request for become an instructor is waiting for approval. please wait. we will send you an email when your request is approved.</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(14, 'instructor_quick_contact', 'Mail for instructor contact form', '<p>Name: {{name}}</p>\n                <p>Email: {{email}}</p>\n                <p>Subject: {{subject}}</p>\n                <p>{{message}}</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(15, 'order_completed', 'Your order has been placed', '<p>HI, {{name}}</p>\n                <p>Invoice ID: {{order_id}}</p>\n                <p>paid amount: {{paid_amount}}</p>\n                <p>payment method: {{payment_method}}</p>', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(16, 'qna_reply_mail', 'QNA Replay mail', '<p>Hi {{user_name}}, your instructor has replied to your question. Please see the answer below:</p>\r\n<p>Course: {{course}}</p>\r\n<p>Lesson: {{lesson}}</p>\r\n<p>Question: {{question}}</p>', '2024-08-25 03:36:19', '2024-08-25 03:36:19'),
(17, 'live_class_mail', 'Live class notification mail', '<p>Hi {{user_name}},</p>\r\n                <p>Your live class is starting at {{start_time}}. Please see the details below:</p>\r\n                <p><strong>Course:</strong> {{course}}</p>\r\n                <p><strong>Lesson:</strong> {{lesson}}</p>\r\n                <p><strong>Meeting Link:</strong> <a href=\"{{join_url}}\">{{join_url}}</a></p>', '2024-09-03 12:51:51', '2024-09-03 12:51:51'),
(18, 'payment_status', 'Update Payment Status', '<p>HI, {{name}}</p>\n<p>Invoice ID: {{order_id}}</p>\n<p>paid amount: {{paid_amount}}</p>\n<p>payment status: {{payment_status}}</p>', '2024-06-02 20:02:30', '2024-06-02 20:02:30'),
(19, 'gift_course', 'Gift Course Notification', '<p>Hi {{name}},</p><p>{{sender_name}} has gifted you a course! Click the link below to enroll and claim your course. <strong>Do not share this link with anyone.</strong></p><p><strong>Claim Course:</strong> <a href=\"{{link}}\">{{link}}</a></p><p><strong>Visit Course:</strong> <a href=\"{{course_link}}\">{{course_name}}</a></p><p><strong>Sender Email:</strong> {{sender_email}}</p><p><strong>Message from Sender:</strong> {{message}}</p><p>Enjoy your learning!</p>', '2024-06-02 20:02:30', '2024-06-02 20:02:30'),
(20, 'rejected_refund', 'Refund Request Rejected', '<p>Dear {{user_name}},</p>\r\n<p>We are sorry to say that your request for refund is rejected. Order NO: #{{invoice_id}}</p>', '2025-08-19 22:53:52', '2025-08-19 16:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `has_access` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-06-04 05:49:36', '2024-06-04 05:49:36'),
(2, 1, '2024-06-04 05:50:58', '2024-06-04 05:50:58'),
(3, 1, '2024-06-04 05:53:19', '2024-06-04 05:53:19'),
(4, 1, '2024-06-04 05:54:52', '2024-06-04 05:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `faq_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `faq_id`, `lang_code`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'What kind of courses do you offer?', 'We offer a wide range of courses in various subjects,\r\n from business and technology to art and personal development. You can browse our extensive catalog to find a course that interests you.', '2024-06-04 05:49:36', '2024-06-04 05:49:36'),
(2, 1, 'hi', 'आप किस प्रकार के पाठ्यक्रम पेश करते हैं?', 'हम विभिन्न विषयों में पाठ्यक्रमों की एक विस्तृत श्रृंखला प्रदान करते हैं,\r\n व्यवसाय और प्रौद्योगिकी से लेकर कला और व्यक्तिगत विकास तक। आप अपनी रुचि का पाठ्यक्रम ढूंढने के लिए हमारी विस्तृत सूची ब्राउज़ कर सकते हैं।', '2024-06-04 05:49:36', '2024-06-04 05:50:00'),
(4, 2, 'en', 'Who are your instructors?', 'Our instructors are industry experts and passionate educators with a wealth of knowledge and experience.\r\n You can learn more about their qualifications on their course profiles.', '2024-06-04 05:50:58', '2024-06-04 05:50:58'),
(5, 2, 'hi', 'आपके प्रशिक्षक कौन हैं?', 'हमारे प्रशिक्षक उद्योग विशेषज्ञ और समृद्ध ज्ञान और अनुभव वाले भावुक शिक्षक हैं।\r\n आप उनकी पाठ्यक्रम प्रोफ़ाइल पर उनकी योग्यताओं के बारे में अधिक जान सकते हैं।', '2024-06-04 05:50:58', '2024-06-04 05:58:27'),
(7, 3, 'en', 'How much do your courses cost?', 'Course prices vary depending on the length, content, and instructor. We offer free trials and introductory courses in some cases. Check the individual course page for specific pricing information.', '2024-06-04 05:53:19', '2024-06-04 05:53:19'),
(8, 3, 'hi', 'आपके पाठ्यक्रमों की लागत कितनी है?', 'पाठ्यक्रम की कीमतें लंबाई, सामग्री और प्रशिक्षक के आधार पर भिन्न होती हैं। हम कुछ मामलों में निःशुल्क परीक्षण और परिचयात्मक पाठ्यक्रम प्रदान करते हैं। विशिष्ट मूल्य निर्धारण जानकारी के लिए व्यक्तिगत पाठ्यक्रम पृष्ठ देखें।', '2024-06-04 05:53:19', '2024-06-04 05:53:58'),
(10, 4, 'en', 'How does the online learning platform work?', 'Our platform is user-friendly and accessible on any device. You can enroll in courses, access learning materials, interact with instructors and classmates, and track your progress, all in one place.', '2024-06-04 05:54:52', '2024-06-04 05:54:52'),
(11, 4, 'hi', 'ऑनलाइन लर्निंग प्लेटफॉर्म कैसे काम करता है?', 'हमारा प्लेटफ़ॉर्म उपयोगकर्ता के अनुकूल है और किसी भी डिवाइस पर पहुंच योग्य है। आप पाठ्यक्रमों में नामांकन कर सकते हैं, शिक्षण सामग्री तक पहुंच सकते हैं, प्रशिक्षकों और सहपाठियों के साथ बातचीत कर सकते हैं और अपनी प्रगति को ट्रैक कर सकते हैं, यह सब एक ही स्थान पर।', '2024-06-04 05:54:52', '2024-06-04 05:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_course_user`
--

CREATE TABLE `favorite_course_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_course_sections`
--

CREATE TABLE `featured_course_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `all_category` int DEFAULT NULL,
  `all_category_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `all_category_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_one` int DEFAULT NULL,
  `category_one_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_one_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_two` int DEFAULT NULL,
  `category_two_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_two_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_three` int DEFAULT NULL,
  `category_three_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_three_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_four` int DEFAULT NULL,
  `category_four_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_four_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_five` int DEFAULT NULL,
  `category_five_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_five_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured_course_sections`
--

INSERT INTO `featured_course_sections` (`id`, `all_category`, `all_category_ids`, `all_category_status`, `category_one`, `category_one_ids`, `category_one_status`, `category_two`, `category_two_ids`, `category_two_status`, `category_three`, `category_three_ids`, `category_three_status`, `category_four`, `category_four_ids`, `category_four_status`, `category_five`, `category_five_ids`, `category_five_status`, `created_at`, `updated_at`) VALUES
(1, 0, '[\"4\",\"16\",\"17\",\"45\",\"49\"]', 1, 1, '[\"21\",\"22\",\"23\",\"43\",\"45\",\"51\"]', 1, 2, '[\"5\",\"6\",\"12\",\"42\",\"50\",\"66\"]', 1, 3, '[\"13\",\"15\",\"16\",\"28\",\"31\",\"40\"]', 1, 4, '[\"10\",\"19\",\"25\",\"26\",\"35\",\"37\"]', 1, 5, '[\"7\",\"8\",\"18\",\"38\",\"61\",\"67\"]', 1, '2024-06-04 05:11:10', '2024-06-04 05:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `featured_instructors`
--

CREATE TABLE `featured_instructors` (
  `id` bigint UNSIGNED NOT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instructor_ids` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured_instructors`
--

INSERT INTO `featured_instructors` (`id`, `button_url`, `instructor_ids`, `created_at`, `updated_at`) VALUES
(1, '/all-instructors', '[\"1001\", \"1002\", \"1003\", \"1004\", \"1005\", \"1006\", \"1009\"]', '2024-06-03 02:02:33', '2024-06-06 02:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `featured_instructor_translations`
--

CREATE TABLE `featured_instructor_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `featured_instructor_section_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured_instructor_translations`
--

INSERT INTO `featured_instructor_translations` (`id`, `featured_instructor_section_id`, `lang_code`, `title`, `sub_title`, `button_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Our Top Class & Expert Instructors in One Place', 'Combines the ideas of empowered learning and top-tier instruction for students. Emphasizes both instructor expertise', 'See All Instructors', '2024-06-04 05:22:14', '2024-06-04 05:24:22'),
(2, 1, 'hi', 'हमारे शीर्ष श्रेणी और विशेषज्ञ प्रशिक्षक एक ही स्थान पर', 'छात्रों के लिए सशक्त शिक्षा और शीर्ष स्तरीय निर्देश के विचारों को जोड़ता है। दोनों प्रशिक्षक विशेषज्ञता पर जोर देता है', 'सभी प्रशिक्षक देखें', '2024-06-04 05:22:14', '2024-06-04 05:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `footer_settings`
--

CREATE TABLE `footer_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `get_in_touch_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google_play_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apple_store_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_settings`
--

INSERT INTO `footer_settings` (`id`, `logo`, `footer_text`, `address`, `phone`, `get_in_touch_text`, `google_play_link`, `apple_store_link`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/wsus-img-2026-03-11-04-16-46-1033.png', 'StepUpMark Learn Hub provides industry-focused courses in AI, technology, and emerging fields to help learners build practical skills and advance their careers.', 'Hyderabad, Telangana', '+91-9346708639', 'If you need any kind of help you can know us on socials or mail us', NULL, NULL, '2024-06-04 06:31:51', '2026-03-11 10:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'main', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(2, 'online', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(3, 'university', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(4, 'business', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(5, 'yoga', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(6, 'kitchen', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(7, 'kindergarten', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(8, 'language', '2024-11-12 23:20:02', '2024-11-12 23:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_earnings_holds`
--

CREATE TABLE `instructor_earnings_holds` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','released','refunded') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_requests`
--

CREATE TABLE `instructor_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `certificate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `identity_scan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `payout_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payout_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `extra_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor_requests`
--

INSERT INTO `instructor_requests` (`id`, `user_id`, `status`, `certificate`, `identity_scan`, `payout_account`, `payout_information`, `extra_information`, `created_at`, `updated_at`) VALUES
(4, 1002, 'approved', 'uploads/custom-images/wsus-img-2024-06-06-07-45-44-3657.png', 'uploads/custom-images/wsus-img-2024-06-06-07-45-44-7928.png', 'PayPal', 'Please provide the necessary information for payment\r\n\r\nYour payment email\r\nYour Holder name', NULL, '2024-06-06 01:45:44', '2024-06-06 01:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_request_settings`
--

CREATE TABLE `instructor_request_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `need_certificate` tinyint(1) NOT NULL DEFAULT '1',
  `need_identity_scan` tinyint(1) NOT NULL DEFAULT '1',
  `bank_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor_request_settings`
--

INSERT INTO `instructor_request_settings` (`id`, `need_certificate`, `need_identity_scan`, `bank_information`, `created_at`, `updated_at`) VALUES
(1, 0, 0, NULL, '2024-06-06 00:23:15', '2024-06-06 01:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_request_setting_translations`
--

CREATE TABLE `instructor_request_setting_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_request_setting_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instructions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor_request_setting_translations`
--

INSERT INTO `instructor_request_setting_translations` (`id`, `instructor_request_setting_id`, `lang_code`, `instructions`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '<p>Please provide your valid informations</p>', '2024-09-29 03:46:04', '2024-09-29 03:46:04'),
(2, 1, 'hi', '<p>कृपया अपनी वैध जानकारी प्रदान करें</p>', '2024-09-29 03:46:04', '2024-09-29 03:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `jitsi_settings`
--

CREATE TABLE `jitsi_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ltr',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `is_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `direction`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, 'ltr', '1', '1', '2024-06-03 02:02:30', '2026-03-11 01:30:29'),
(2, 'Hindi', 'hi', NULL, 'ltr', '1', '0', '2024-06-03 03:45:51', '2026-03-11 01:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_questions`
--

CREATE TABLE `lesson_questions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `question_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_questions`
--

INSERT INTO `lesson_questions` (`id`, `user_id`, `course_id`, `lesson_id`, `question_title`, `question_description`, `created_at`, `updated_at`, `seen`) VALUES
(1, 1000, 47, 1289, 'i am getting error on my code please help!', '<p>at 10:34&nbsp;i am getting error i did save as you showed but its not working</p>', '2024-06-06 05:13:50', '2024-06-06 05:13:50', 0),
(2, 1000, 47, 1290, 'i am getting error on my code please help!', '<p>i am getting error on my code please help!</p>', '2024-06-06 06:03:03', '2024-06-06 06:03:03', 0),
(4, 1000, 47, 323, 'this is a test question', '<p>hi this is a test question</p>', '2024-06-08 07:55:17', '2024-06-08 07:55:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_replies`
--

CREATE TABLE `lesson_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_replies`
--

INSERT INTO `lesson_replies` (`id`, `question_id`, `user_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, '<p>HI got the solution thanks</p>', '2024-06-06 05:15:26', '2024-06-06 05:15:26'),
(2, 2, 1000, '<p>hey this is a test&nbsp;</p>', '2024-06-06 06:05:01', '2024-06-06 06:05:01'),
(3, 2, 1000, '<p>hey hey hey!!</p>', '2024-06-06 06:08:27', '2024-06-06 06:08:27'),
(4, 2, 1000, '<p>issue fixed</p>', '2024-06-06 06:09:50', '2024-06-06 06:09:50'),
(5, 4, 1000, '<p>hi got the issue fixed</p>', '2024-06-08 08:17:58', '2024-06-08 08:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_settings`
--

CREATE TABLE `marketing_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marketing_settings`
--

INSERT INTO `marketing_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'register', '1', '2024-06-02 20:02:30', '2024-06-24 18:17:45'),
(2, 'course_details', '1', '2024-06-02 20:02:30', '2024-06-02 20:02:30'),
(3, 'add_to_cart', '1', '2024-06-02 20:02:30', '2024-06-04 00:28:37'),
(4, 'remove_from_cart', '1', '2024-06-02 20:02:30', '2024-06-04 00:28:37'),
(5, 'checkout', '1', '2024-06-02 20:02:30', '2024-06-24 18:17:45'),
(6, 'order_success', '1', '2024-06-02 20:02:30', '2024-06-04 00:28:37'),
(7, 'order_failed', '1', '2024-06-02 20:02:30', '2024-06-13 02:02:21'),
(8, 'contact_page', '1', '2024-06-02 20:02:30', '2024-06-13 02:02:21'),
(9, 'instructor_contact', '1', '2024-06-02 20:02:30', '2024-06-13 02:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(9, 'Nav Menu', 'nav-menu', '2024-05-23 06:10:20', '2024-07-02 22:12:49'),
(10, 'Footer Col One', 'footer-col-one', '2024-05-26 00:25:04', '2024-07-02 22:13:21'),
(13, 'Footer Col Two', 'footer-col-two-1PiTN', '2024-05-26 00:25:37', '2026-03-11 05:02:44'),
(14, 'Footer Col Three', 'footer-col-three', '2024-05-26 00:32:09', '2026-03-11 10:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Home', '/', 0, 0, NULL, 9, 0, '2024-06-04 05:14:07', '2024-06-22 10:23:30', 0),
(2, 'Courses', '/courses', 0, 2, NULL, 9, 0, '2024-06-04 05:14:18', '2026-03-11 01:46:32', 0),
(3, 'Blog', '/blog', 0, 3, NULL, 9, 0, '2024-06-04 05:14:28', '2024-07-02 22:17:04', 0),
(4, 'About Us', '/about-us', 0, 1, NULL, 9, 0, '2024-06-04 05:14:38', '2026-03-11 01:46:32', 0),
(5, 'Contact', '/contact', 0, 4, NULL, 9, 0, '2024-06-04 05:14:47', '2024-06-04 05:14:56', 0),
(7, 'Home', '/', 0, 0, NULL, 10, 0, '2024-06-05 01:07:29', '2024-06-05 01:07:39', 0),
(8, 'Courses', '/courses', 0, 2, NULL, 10, 0, '2024-06-05 01:07:39', '2026-03-11 05:05:13', 0),
(9, 'Blog', '/blog', 0, 3, NULL, 10, 0, '2024-06-05 01:07:47', '2026-03-11 05:05:13', 0),
(10, 'About Us', '/about-us', 0, 1, NULL, 10, 0, '2024-06-05 01:07:56', '2026-03-11 05:05:20', 0),
(13, 'Contact Us', '/contact', 0, 0, NULL, 13, 0, '2024-06-05 01:09:52', '2024-06-05 01:10:06', 0),
(14, 'Privacy Policy', '/page/privacy-policy', 0, 1, NULL, 13, 0, '2024-06-05 01:34:50', '2024-06-05 01:34:50', 0),
(15, 'Terms and Conditions', '/page/terms-and-conditions', 0, 2, NULL, 13, 0, '2024-06-05 01:35:19', '2024-06-05 01:35:19', 0),
(16, 'Refund Policy', '/page/refund-policy', 0, 3, NULL, 13, 0, '2024-06-05 01:35:41', '2026-03-11 05:03:09', 0),
(19, 'Privacy Policy', '/page/privacy-policy', 0, 0, NULL, 14, 0, '2024-06-05 01:39:40', '2024-06-05 01:40:08', 0),
(20, 'Terms and Conditions', '/page/terms-and-conditions', 0, 2, NULL, 14, 0, '2024-06-05 01:40:08', '2026-03-11 10:48:45', 0),
(26, 'Refund Policy', '/page/refund-policy', 0, 1, NULL, 14, 0, '2026-03-11 10:48:40', '2026-03-11 10:48:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_item_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `lang_code`, `label`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Home', '2024-06-04 05:14:07', '2024-06-04 05:14:07'),
(2, 1, 'hi', 'होम', '2024-06-04 05:14:07', '2024-06-09 22:37:15'),
(4, 2, 'en', 'Courses', '2024-06-04 05:14:18', '2024-06-04 05:14:18'),
(5, 2, 'hi', 'कोर्सेज़', '2024-06-04 05:14:18', '2024-06-09 22:38:03'),
(7, 3, 'en', 'Blog', '2024-06-04 05:14:28', '2024-07-02 22:12:47'),
(8, 3, 'hi', 'ब्लॉग्स', '2024-06-04 05:14:28', '2024-06-09 22:38:29'),
(10, 4, 'en', 'About Us', '2024-06-04 05:14:38', '2024-06-04 05:14:38'),
(11, 4, 'hi', 'अबाउट अस', '2024-06-04 05:14:38', '2024-06-09 22:38:53'),
(13, 5, 'en', 'Contact', '2024-06-04 05:14:47', '2024-06-04 05:14:47'),
(14, 5, 'hi', 'कॉन्टैक्ट', '2024-06-04 05:14:47', '2024-06-09 22:39:13'),
(19, 7, 'en', 'Home', '2024-06-05 01:07:29', '2024-06-05 01:07:29'),
(20, 7, 'hi', 'Home', '2024-06-05 01:07:29', '2024-06-05 01:07:29'),
(22, 8, 'en', 'Courses', '2024-06-05 01:07:39', '2024-06-05 01:07:39'),
(23, 8, 'hi', 'Courses', '2024-06-05 01:07:39', '2024-06-05 01:07:39'),
(25, 9, 'en', 'Blog', '2024-06-05 01:07:47', '2024-07-02 22:13:20'),
(26, 9, 'hi', 'Blogs', '2024-06-05 01:07:47', '2024-06-05 01:07:47'),
(28, 10, 'en', 'About Us', '2024-06-05 01:07:56', '2024-06-05 01:07:56'),
(29, 10, 'hi', 'About Us', '2024-06-05 01:07:56', '2024-06-05 01:07:56'),
(37, 13, 'en', 'Contact Us', '2024-06-05 01:09:52', '2024-06-05 01:10:06'),
(38, 13, 'hi', 'Contact', '2024-06-05 01:09:52', '2024-06-05 01:09:52'),
(40, 14, 'en', 'Privacy Policy', '2024-06-05 01:34:50', '2024-06-05 01:34:50'),
(41, 14, 'hi', 'Privacy Policy', '2024-06-05 01:34:50', '2024-06-05 01:34:50'),
(43, 15, 'en', 'Terms and Conditions', '2024-06-05 01:35:19', '2024-06-05 01:35:19'),
(44, 15, 'hi', 'Terms and Conditions', '2024-06-05 01:35:19', '2024-06-05 01:35:19'),
(46, 16, 'en', 'Refund Policy', '2024-06-05 01:35:41', '2026-03-11 05:02:44'),
(47, 16, 'hi', 'Become Teacher', '2024-06-05 01:35:41', '2024-06-05 01:35:41'),
(55, 19, 'en', 'Privacy Policy', '2024-06-05 01:39:40', '2024-06-05 01:39:40'),
(56, 19, 'hi', 'Privacy Policy', '2024-06-05 01:39:40', '2024-06-05 01:39:40'),
(58, 20, 'en', 'Terms and Conditions', '2024-06-05 01:40:08', '2024-06-05 01:40:08'),
(59, 20, 'hi', 'Terms and Conditions', '2024-06-05 01:40:08', '2024-06-05 01:40:08'),
(76, 26, 'en', 'Refund Policy', '2026-03-11 10:48:40', '2026-03-11 10:48:40'),
(77, 26, 'hi', 'Refund Policy', '2026-03-11 10:48:40', '2026-03-11 10:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(7, 9, 'en', 'Nav Menu', '2024-05-23 06:10:20', '2024-06-30 06:03:48'),
(9, 10, 'en', 'Footer Col One', '2024-05-26 00:25:04', '2024-07-02 22:13:21'),
(15, 13, 'en', 'Footer Col Two', '2024-05-26 00:25:37', '2026-03-11 05:02:44'),
(17, 14, 'en', 'Footer Col Three', '2024-05-26 00:32:09', '2026-03-11 10:48:20'),
(23, 9, 'bn', 'nav_menu', '2024-05-31 11:14:54', '2024-05-31 11:14:54'),
(24, 10, 'bn', 'footer_col_one', '2024-05-31 11:14:54', '2024-05-31 11:14:54'),
(25, 13, 'bn', 'footer_col_two', '2024-05-31 11:14:54', '2024-05-31 11:14:54'),
(26, 14, 'bn', 'footer_col_three', '2024-05-31 11:14:54', '2024-05-31 11:14:54'),
(27, 9, 'hi', 'nav_menu', '2024-05-31 11:15:13', '2024-05-31 11:15:13'),
(28, 10, 'hi', 'footer_col_one', '2024-05-31 11:15:13', '2024-05-31 11:15:13'),
(29, 13, 'hi', 'footer_col_two', '2024-05-31 11:15:13', '2024-05-31 11:15:13'),
(30, 14, 'hi', 'footer_col_three', '2024-05-31 11:15:13', '2024-05-31 11:15:13'),
(31, 9, 'hi', 'nav_menu', '2024-06-03 03:45:51', '2024-06-03 03:45:51'),
(32, 10, 'hi', 'footer_col_one', '2024-06-03 03:45:51', '2024-06-03 03:45:51'),
(33, 13, 'hi', 'footer_col_two', '2024-06-03 03:45:51', '2024-06-03 03:45:51'),
(34, 14, 'hi', 'footer_col_three', '2024-06-03 03:45:51', '2024-06-03 03:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `mercadopagopg`
--

CREATE TABLE `mercadopagopg` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mercadopagopg`
--

INSERT INTO `mercadopagopg` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'mercadopago_image', 'uploads/website-images/mercado-pago.png', '2025-02-26 03:33:13', '2025-02-26 03:33:13'),
(2, 'mercadopago_status', 'inactive', '2025-02-26 03:33:13', '2025-02-26 03:56:18'),
(3, 'mercadopago_sandbox', '1', '2025-02-26 03:33:13', '2025-02-26 03:33:13'),
(4, 'mercadopago_charge', '0', '2025-02-26 03:33:13', '2025-02-26 03:33:13'),
(5, 'public_key', 'public_key', '2025-02-26 03:33:13', '2025-02-26 03:55:36'),
(6, 'access_token', 'access_token', '2025-02-26 03:33:13', '2025-02-26 03:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_05_045432_create_admins_table', 1),
(6, '2023_11_05_114814_create_languages_table', 1),
(7, '2023_11_06_043247_create_settings_table', 1),
(8, '2023_11_06_054251_create_seo_settings_table', 1),
(9, '2023_11_06_094842_create_custom_paginations_table', 1),
(10, '2023_11_06_115856_create_email_templates_table', 1),
(11, '2023_11_07_051924_create_multi_currencies_table', 1),
(12, '2023_11_07_103108_create_basic_payments_table', 1),
(13, '2023_11_07_104315_create_blog_categories_table', 1),
(14, '2023_11_07_104328_create_blog_category_translations_table', 1),
(15, '2023_11_07_104336_create_blogs_table', 1),
(16, '2023_11_07_104343_create_blog_translations_table', 1),
(17, '2023_11_07_104546_create_blog_comments_table', 1),
(18, '2023_11_09_035236_create_payment_gateways_table', 1),
(19, '2023_11_09_100621_create_jobs_table', 1),
(20, '2023_11_16_035458_add_user_info_to_users', 1),
(21, '2023_11_16_061508_add_forget_info_to_users', 1),
(22, '2023_11_16_063639_add_phone_to_users', 1),
(23, '2023_11_19_055229_add_image_to_users', 1),
(24, '2023_11_19_064341_create_banned_histories_table', 1),
(25, '2023_11_21_043030_create_news_letters_table', 1),
(26, '2023_11_21_094702_create_contact_messages_table', 1),
(27, '2023_11_22_105539_create_permission_tables', 1),
(28, '2023_11_29_055540_create_orders_table', 1),
(29, '2023_11_29_095126_create_coupons_table', 1),
(30, '2023_11_29_104658_create_testimonials_table', 1),
(31, '2023_11_29_104704_create_testimonial_translations_table', 1),
(32, '2023_11_29_105234_create_coupon_histories_table', 1),
(33, '2023_11_29_113632_add_min_price_to_coupon', 1),
(34, '2023_11_30_044838_create_faqs_table', 1),
(35, '2023_11_30_044844_create_faq_translations_table', 1),
(36, '2023_11_30_095404_add_wallet_balance_to_users', 1),
(37, '2023_12_04_071839_create_withraw_methods_table', 1),
(38, '2023_12_04_095319_create_withdraw_requests_table', 1),
(39, '2024_01_01_054644_create_socialite_credentials_table', 1),
(40, '2024_01_03_092007_create_custom_codes_table', 1),
(41, '2024_02_28_064128_add_forgot_info_to_admins', 1),
(42, '2024_03_28_095207_create_menus_wp_table', 1),
(43, '2024_03_28_095208_create_menu_translations_table', 1),
(44, '2024_03_28_095209_create_menu_items_wp_table', 1),
(45, '2024_03_28_095210_create_menu_item_translations_table', 1),
(46, '2024_03_28_095211_add-role-id-to-menu-items-table', 1),
(47, '2024_04_03_042331_add_new_columns_to_users', 1),
(48, '2024_04_03_044043_create_user_education_table', 1),
(49, '2024_04_03_044103_create_user_experiences_table', 1),
(50, '2024_04_03_044134_create_user_skill_topics_table', 1),
(51, '2024_04_05_060046_create_countries_table', 1),
(52, '2024_04_05_060133_create_states_table', 1),
(53, '2024_04_05_060149_create_cities_table', 1),
(54, '2024_04_08_041719_create_instructor_requests_table', 1),
(55, '2024_04_08_042513_create_instructor_request_settings_table', 1),
(56, '2024_04_15_103628_create_course_categories_table', 1),
(57, '2024_04_15_112656_create_course_category_translations_table', 1),
(58, '2024_04_18_031942_create_course_languages_table', 1),
(59, '2024_04_18_044110_create_course_levels_table', 1),
(60, '2024_04_18_044125_create_course_level_translations_table', 1),
(61, '2024_04_18_070749_create_courses_table', 1),
(62, '2024_04_21_093245_create_course_partner_instructors_table', 1),
(63, '2024_04_21_094654_create_course_selected_levels_table', 1),
(64, '2024_04_21_094841_create_course_selected_languages_table', 1),
(65, '2024_04_21_095342_create_course_selected_filter_options_table', 1),
(66, '2024_04_22_114039_create_course_chapters_table', 1),
(67, '2024_04_23_090340_create_course_chapter_items_table', 1),
(68, '2024_04_23_090700_create_course_chapter_lessons_table', 1),
(69, '2024_04_24_093046_create_quizzes_table', 1),
(70, '2024_04_24_114441_create_quiz_questions_table', 1),
(71, '2024_04_28_034905_create_quiz_question_answers_table', 1),
(72, '2024_05_06_094927_create_order_items_table', 1),
(73, '2024_05_06_094946_create_enrollments_table', 1),
(74, '2024_05_12_035535_create_course_progress_table', 1),
(75, '2024_05_13_041532_create_quiz_results_table', 1),
(76, '2024_05_13_101033_create_lesson_questions_table', 1),
(77, '2024_05_13_101258_create_lesson_replies_table', 1),
(78, '2024_05_14_095807_create_announcements_table', 1),
(79, '2024_05_14_114640_create_course_reviews_table', 1),
(80, '2024_05_16_034644_create_certificate_builders_table', 1),
(81, '2024_05_16_041919_create_certificate_builder_items_table', 1),
(82, '2024_05_16_110701_create_badges_table', 1),
(83, '2024_05_20_052819_create_brands_table', 1),
(84, '2024_05_20_094331_create_featured_course_sections_table', 1),
(85, '2024_05_21_060612_create_featured_instructors_table', 1),
(86, '2024_05_21_060634_create_featured_instructor_translations_table', 1),
(87, '2024_05_26_032547_create_section_settings_table', 1),
(88, '2024_05_26_052359_create_footer_settings_table', 1),
(89, '2024_05_26_065953_create_social_links_table', 1),
(90, '2024_05_26_164008_create_contact_sections_table', 1),
(91, '2024_05_27_045919_create_custom_pages_table', 1),
(92, '2024_05_27_050016_create_custom_page_translations_table', 1),
(93, '2024_06_02_045115_add_softdelete_to_courses_table', 1),
(94, '2024_06_02_080423_create_course_delete_requests_table', 1),
(95, '2024_02_10_060044_create_configurations_table', 1),
(96, '2024_09_01_042120_create_course_live_classes_table', 1),
(97, '2024_09_01_042119_create_zoom_credentials_table', 1),
(98, '2024_09_04_122554_create_jitsi_settings_table', 1),
(99, '2024_09_10_103347_create_marketing_settings_table', 1),
(100, '2024_09_29_090219_create_instructor_request_setting_translations_table', 2),
(101, '2024_10_08_060425_create_homes_table', 3),
(102, '2024_10_08_060618_create_sections_table', 3),
(103, '2024_10_08_060636_create_section_translations_table', 3),
(113, '2024_12_09_064934_favorite_course_user', 4),
(114, '2024_12_10_051251_create_custom_addons_table', 4),
(115, '2025_01_13_082341_create_carts_table', 5),
(116, '2024_11_24_045801_create_bkash_p_g_models_table', 6),
(117, '2025_01_09_103147_create_crypto_p_g_table', 7),
(118, '2025_01_14_084523_create_mercadopagopg_table', 8),
(119, '2025_08_05_082607_create_sms_templates_table', 9),
(120, '2023_11_30_041502_create_refund_requests_table', 10),
(121, '2025_08_20_062254_create_instructor_earnings_holds_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_currencies`
--

CREATE TABLE `multi_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `currency_rate` float NOT NULL,
  `currency_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'before_price',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multi_currencies`
--

INSERT INTO `multi_currencies` (`id`, `currency_name`, `country_code`, `currency_code`, `currency_icon`, `is_default`, `currency_rate`, `currency_position`, `status`, `created_at`, `updated_at`) VALUES
(1, '₹-INR', 'IN', 'INR', '₹', 'yes', 1, 'before_price', 'active', '2024-06-03 02:02:30', '2026-03-11 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'not_verified',
  `verify_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `buyer_id` bigint UNSIGNED DEFAULT NULL,
  `seller_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `has_coupon` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coupon_discount_percent` int DEFAULT NULL,
  `coupon_discount_amount` double DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payable_amount` double DEFAULT NULL,
  `gateway_charge` double DEFAULT NULL,
  `payable_with_charge` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL,
  `payable_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commission_rate` int DEFAULT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'course',
  `order_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `price` double NOT NULL,
  `item_type` enum('course','product') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'course',
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `commission_rate` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'razorpay_key', 'rzp_test_cvrsy43xvBZfDT', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(2, 'razorpay_secret', 'c9AmI4C5vOfSWmZehhlns5df', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(3, 'razorpay_name', 'WebSolutionUs', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(4, 'razorpay_description', 'This is test payment window', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(5, 'razorpay_charge', '0', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(6, 'razorpay_theme_color', '#6d0ce4', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(7, 'razorpay_status', 'active', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(8, 'razorpay_currency_id', '3', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(9, 'razorpay_image', 'uploads/custom-images/wsus-img-2024-06-25-07-52-28-4557.png', '2024-06-03 02:02:30', '2024-06-25 01:52:28'),
(10, 'flutterwave_public_key', 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', '2024-06-03 02:02:30', '2026-03-11 12:28:19'),
(11, 'flutterwave_secret_key', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', '2024-06-03 02:02:30', '2026-03-11 12:28:19'),
(12, 'flutterwave_app_name', 'WebSolutionUs', '2024-06-03 02:02:30', '2026-03-11 12:28:19'),
(13, 'flutterwave_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:19'),
(14, 'flutterwave_currency_id', '2', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(15, 'flutterwave_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:19'),
(16, 'flutterwave_image', 'uploads/custom-images/wsus-img-2024-06-25-07-52-41-4077.png', '2024-06-03 02:02:30', '2024-06-25 01:52:41'),
(17, 'paystack_public_key', 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', '2024-06-03 02:02:30', '2026-03-11 12:28:25'),
(18, 'paystack_secret_key', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', '2024-06-03 02:02:30', '2026-03-11 12:28:25'),
(19, 'paystack_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:25'),
(20, 'paystack_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:25'),
(21, 'paystack_image', 'uploads/custom-images/wsus-img-2024-06-25-07-52-52-4297.png', '2024-06-03 02:02:30', '2024-06-25 01:52:52'),
(22, 'paystack_currency_id', '2', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(23, 'mollie_key', 'test_HFc5UhscNSGD5jujawhtNFs3wM3B4n', '2024-06-03 02:02:30', '2026-03-11 12:28:31'),
(24, 'mollie_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:31'),
(25, 'mollie_image', 'uploads/custom-images/wsus-img-2024-06-25-07-53-07-5166.png', '2024-06-03 02:02:30', '2024-06-25 01:53:07'),
(26, 'mollie_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:31'),
(27, 'mollie_currency_id', '5', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(28, 'instamojo_account_mode', 'Sandbox', '2024-06-03 02:02:30', '2026-03-11 12:28:38'),
(29, 'instamojo_api_key', 'test_ffc6f0ad486d6ae0ba9ca2f46da', '2024-06-03 02:02:30', '2026-03-11 12:28:38'),
(30, 'instamojo_auth_token', 'test_ded356ba75e1aaa80bdd8f438d7', '2024-06-03 02:02:30', '2026-03-11 12:28:38'),
(31, 'instamojo_charge', '0', '2024-06-03 02:02:30', '2026-03-11 12:28:38'),
(32, 'instamojo_image', 'uploads/custom-images/wsus-img-2024-06-25-07-53-19-7600.png', '2024-06-03 02:02:30', '2024-06-25 01:53:19'),
(33, 'instamojo_currency_id', '3', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(34, 'instamojo_status', 'inactive', '2024-06-03 02:02:30', '2026-03-11 12:28:38'),
(35, 'azampay_client_id', 'azampay_client_id', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(36, 'azampay_client_secret', 'azampay_client_secret', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(37, 'azampay_account_mode', 'sandbox', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(38, 'azampay_token', 'azampay_token', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(39, 'azampay_charge', '0', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(40, 'azampay_image', 'uploads/website-images/azampay.webp', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(41, 'azampay_status', 'inactive', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(42, 'azampay_app_name', 'azampay_app_name', '2025-07-07 00:32:57', '2025-07-07 00:32:57'),
(43, 'xendit_api_key', 'xendit_api_key', '2025-07-08 05:39:54', '2025-07-08 05:39:54'),
(44, 'xendit_charge', '0.00', '2025-07-08 05:39:54', '2025-07-08 05:39:54'),
(45, 'xendit_image', 'uploads/website-images/xendit.png', '2025-07-08 05:39:54', '2025-07-08 05:39:54'),
(46, 'xendit_status', 'inactive', '2025-07-08 05:39:54', '2025-07-08 05:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(2, 'admin.profile.view', 'admin', 'admin profile', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(3, 'admin.profile.edit', 'admin', 'admin profile', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(4, 'admin.profile.update', 'admin', 'admin profile', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(5, 'admin.profile.delete', 'admin', 'admin profile', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(6, 'admin.view', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(7, 'admin.create', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(8, 'admin.store', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(9, 'admin.edit', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(10, 'admin.update', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(11, 'admin.delete', 'admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(12, 'blog.category.view', 'admin', 'blog category', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(13, 'blog.category.create', 'admin', 'blog category', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(14, 'blog.category.translate', 'admin', 'blog category', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(15, 'blog.category.store', 'admin', 'blog category', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(16, 'blog.category.edit', 'admin', 'blog category', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(17, 'blog.category.update', 'admin', 'blog category', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(18, 'blog.category.delete', 'admin', 'blog category', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(19, 'blog.view', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(20, 'blog.create', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(21, 'blog.translate', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(22, 'blog.store', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(23, 'blog.edit', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(24, 'blog.update', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(25, 'blog.delete', 'admin', 'blog', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(26, 'blog.comment.view', 'admin', 'blog comment', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(27, 'blog.comment.update', 'admin', 'blog comment', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(28, 'blog.comment.delete', 'admin', 'blog comment', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(29, 'role.view', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(30, 'role.create', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(31, 'role.store', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(32, 'role.assign', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(33, 'role.edit', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(34, 'role.update', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(35, 'role.delete', 'admin', 'role', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(36, 'setting.view', 'admin', 'setting', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(37, 'setting.update', 'admin', 'setting', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(38, 'basic.payment.view', 'admin', 'basic payment', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(39, 'basic.payment.update', 'admin', 'basic payment', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(40, 'contect.message.view', 'admin', 'contect message', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(41, 'contect.message.delete', 'admin', 'contect message', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(42, 'currency.view', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(43, 'currency.create', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(44, 'currency.store', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(45, 'currency.edit', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(46, 'currency.update', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(47, 'currency.delete', 'admin', 'currency', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(48, 'media.view', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(49, 'media.create', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(50, 'media.store', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(51, 'media.edit', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(52, 'media.update', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(53, 'media.delete', 'admin', 'media', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(54, 'customer.view', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(55, 'customer.bulk.mail', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(56, 'customer.create', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(57, 'customer.store', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(58, 'customer.edit', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(59, 'customer.update', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(60, 'customer.delete', 'admin', 'customer', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(61, 'language.view', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(62, 'language.create', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(63, 'language.store', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(64, 'language.edit', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(65, 'language.update', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(66, 'language.delete', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(67, 'language.translate', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(68, 'language.single.translate', 'admin', 'language', '2024-06-03 02:02:31', '2024-06-03 02:02:31'),
(69, 'menu.view', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(70, 'menu.create', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(71, 'menu.store', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(72, 'menu.edit', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(73, 'menu.update', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(74, 'menu.delete', 'admin', 'menu builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(75, 'page.management', 'admin', 'page builder', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(78, 'newsletter.view', 'admin', 'newsletter', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(79, 'newsletter.mail', 'admin', 'newsletter', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(80, 'newsletter.delete', 'admin', 'newsletter', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(81, 'testimonial.view', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(82, 'testimonial.create', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(83, 'testimonial.translate', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(84, 'testimonial.store', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(85, 'testimonial.edit', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(86, 'testimonial.update', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(87, 'testimonial.delete', 'admin', 'testimonial', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(88, 'faq.view', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(89, 'faq.create', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(90, 'faq.translate', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(91, 'faq.store', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(92, 'faq.edit', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(93, 'faq.update', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(94, 'faq.delete', 'admin', 'faq', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(95, 'location.view', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(96, 'location.create', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(97, 'location.store', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(98, 'location.edit', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(99, 'location.update', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(100, 'location.delete', 'admin', 'locations', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(101, 'instructor.request.list', 'admin', 'instructor request', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(102, 'instructor.request.setting', 'admin', 'instructor request', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(103, 'course.management', 'admin', 'courses', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(104, 'course.certificate.management', 'admin', 'course certificate management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(105, 'badge.management', 'admin', 'Badges', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(106, 'order.management', 'admin', 'order management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(107, 'coupon.management', 'admin', 'coupon management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(108, 'withdraw.management', 'admin', 'withdraw management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(109, 'appearance.management', 'admin', 'site appearance management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(110, 'section.management', 'admin', 'site appearance management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(111, 'brand.management', 'admin', 'brand management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(112, 'footer.management', 'admin', 'footer management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(113, 'social.link.management', 'admin', 'social link management', '2024-06-03 02:02:32', '2024-06-03 02:02:32'),
(114, 'addon.view', 'admin', 'Addons', '2024-12-17 02:03:45', '2024-12-17 02:03:45'),
(115, 'addon.install', 'admin', 'Addons', '2024-12-17 02:03:45', '2024-12-17 02:03:45'),
(116, 'addon.update', 'admin', 'Addons', '2024-12-17 02:03:45', '2024-12-17 02:03:45'),
(117, 'addon.status.change', 'admin', 'Addons', '2024-12-17 02:03:45', '2024-12-17 02:03:45'),
(118, 'addon.remove', 'admin', 'Addons', '2024-12-17 02:03:45', '2024-12-17 02:03:45'),
(125, 'refund', 'admin', 'Refunds', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `chapter_item_id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `attempt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pass_mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint UNSIGNED NOT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('descriptive','multiple') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'multiple',
  `grade` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question_answers`
--

CREATE TABLE `quiz_question_answers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `correct` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_question_answers`
--

INSERT INTO `quiz_question_answers` (`id`, `title`, `question_id`, `correct`, `created_at`, `updated_at`) VALUES
(421, '11', 106, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(422, '10', 106, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(423, '9', 106, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(424, '20', 106, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(425, '11', 107, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(426, '10', 107, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(427, '9', 107, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(428, '20', 107, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(429, '11', 108, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(430, '10', 108, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(431, '9', 108, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(432, '20', 108, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(433, '11', 109, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(434, '10', 109, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(435, '9', 109, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(436, '20', 109, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(437, '11', 110, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(438, '10', 110, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(439, '9', 110, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(440, '20', 110, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(441, '11', 111, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(442, '10', 111, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(443, '9', 111, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(444, '20', 111, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(445, '11', 112, 1, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(446, '10', 112, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(447, '9', 112, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48'),
(448, '20', 112, 0, '2024-07-03 21:40:48', '2024-07-03 21:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `quiz_id` bigint UNSIGNED NOT NULL,
  `result` json DEFAULT NULL,
  `user_grade` int DEFAULT NULL,
  `status` enum('pass','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `user_id`, `quiz_id`, `result`, `user_grade`, `status`, `created_at`, `updated_at`) VALUES
(1, 1000, 176, '{\"176\": {\"answer\": \"701\", \"correct\": true}}', 50, 'pass', '2024-06-11 00:13:43', '2024-06-11 00:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `refund_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `reasone` text COLLATE utf8mb4_general_ci NOT NULL,
  `method` text COLLATE utf8mb4_general_ci NOT NULL,
  `account_information` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('pending','rejected','success') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2024-06-03 02:02:30', '2024-06-03 02:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `home_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `global_content` json DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `home_id`, `name`, `global_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'hero_section', '{\"banner_image\": \"uploads/custom-images/wsus-img-2024-06-26-06-06-24-6800.webp\", \"hero_background\": \"uploads/custom-images/wsus-img-2024-06-23-04-25-27-8319.webp\", \"video_button_url\": \"https://www.youtube.com/watch?v=pMzGDBP6Bic\", \"action_button_url\": \"/courses\", \"banner_background\": \"uploads/custom-images/wsus-img-2024-06-03-09-44-49-7136.webp\", \"enroll_students_image\": \"uploads/custom-images/wsus-img-2024-06-03-09-44-49-4396.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(2, 1, 'about_section', '{\"image\": \"uploads/custom-images/wsus-img-2024-06-03-07-17-53-5562.webp\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(3, 1, 'newsletter_section', '{\"image\": \"uploads/custom-images/wsus-img-2024-06-04-11-18-08-2099.webp\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(4, 1, 'counter_section', '{\"total_awards_count\": 50, \"total_courses_count\": 800, \"total_student_count\": 3000, \"total_instructor_count\": 100}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(5, 1, 'faq_section', '{\"image\": \"uploads/custom-images/wsus-img-2024-06-04-11-35-48-7341.webp\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(6, 1, 'our_features_section', '{\"image_one\": \"uploads/custom-images/wsus-img-2024-06-11-05-27-50-9263.png\", \"image_two\": \"uploads/custom-images/wsus-img-2024-06-11-05-49-32-6821.png\", \"image_four\": \"uploads/custom-images/wsus-img-2024-06-11-05-27-50-7828.png\", \"image_three\": \"uploads/custom-images/wsus-img-2024-06-23-05-11-29-2802.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(7, 1, 'banner_section', '{\"student_image\": \"uploads/custom-images/wsus-img-2024-06-04-11-44-52-8789.webp\", \"instructor_image\": \"uploads/custom-images/wsus-img-2024-06-04-11-44-52-4232.webp\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(8, 2, 'hero_section', '{\"banner_image\": \"uploads/custom-images/theme_online_banner_img.png\", \"hero_background\": \"uploads/custom-images/theme_online_hero_bg.png\", \"video_button_url\": \"https://www.youtube.com/watch?v=pMzGDBP6Bic\", \"action_button_url\": \"/courses\", \"banner_background\": \"uploads/custom-images/theme_online_banner_bg.svg\", \"enroll_students_image\": \"uploads/custom-images/theme_online_enroll_students_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(9, 2, 'about_section', '{\"image\": \"uploads/custom-images/theme_online_about_img.png\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(10, 2, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_online_newsletter.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(11, 2, 'counter_section', '{\"total_courses_count\": 800, \"total_student_count\": 3000, \"total_instructor_count\": 100}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(12, 2, 'faq_section', '{\"image\": \"uploads/custom-images/theme_online_faq.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(13, 2, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_online_features_icon_1.png\", \"image_two\": \"uploads/custom-images/theme_online_features_icon_2.png\", \"image_four\": \"uploads/custom-images/theme_online_features_icon_4.png\", \"image_three\": \"uploads/custom-images/theme_online_features_icon_3.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(14, 2, 'banner_section', '{\"student_image\": \"uploads/custom-images/theme_online_student_image.png\", \"instructor_image\": \"uploads/custom-images/theme_online_instructor_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(15, 3, 'hero_section', '{\"banner_image\": \"uploads/custom-images/theme_university_banner_img.png\", \"hero_background\": \"uploads/custom-images/theme_university_hero_bg.jpg\", \"action_button_url\": \"/courses\", \"banner_background\": \"uploads/custom-images/theme_university_banner_bg.svg\", \"enroll_students_image\": \"uploads/custom-images/theme_university_enroll_students_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(16, 3, 'about_section', '{\"image\": \"uploads/custom-images/theme_university_about_img.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\", \"year_experience\": \"15\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(17, 3, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_university_newsletter.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(18, 3, 'counter_section', '{\"button_url\": \"/courses\", \"total_courses_count\": 800, \"total_student_count\": 3000, \"total_instructor_count\": 100}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(19, 3, 'faq_section', '{\"image\": \"uploads/custom-images/theme_university_faq.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(20, 3, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_university_features_icon_1.svg\", \"image_two\": \"uploads/custom-images/theme_university_features_icon_2.svg\", \"image_four\": \"uploads/custom-images/theme_university_features_icon_4.svg\", \"image_three\": \"uploads/custom-images/theme_university_features_icon_3.svg\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(21, 3, 'banner_section', '{\"bg_image\": \"uploads/custom-images/wsus-img-2024-06-04-11-44-52-8799.jpg\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(22, 4, 'slider_section', '{\"image_one\": \"uploads/custom-images/wsus-img-2026-03-12-05-18-07-2093.jpeg\", \"image_two\": \"uploads/custom-images/wsus-img-2026-03-12-05-18-07-9739.jpeg\", \"image_three\": \"uploads/custom-images/wsus-img-2026-03-12-05-18-07-2350.jpeg\"}', 1, '2024-10-15 21:42:24', '2026-03-12 11:48:07'),
(23, 4, 'about_section', '{\"image\": \"uploads/custom-images/theme_business_about_img.jpg\", \"image_two\": \"uploads/custom-images/wsus-img-2024-06-03-07-17-53-5555.jpg\", \"video_url\": null, \"button_url\": \"/about-us\", \"image_three\": \"uploads/custom-images/wsus-img-2024-06-03-07-17-53-6666.jpg\"}', 1, '2024-10-15 21:42:24', '2026-03-11 06:19:27'),
(24, 4, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_business_newsletter.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(25, 4, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_business_features_icon_1.png\", \"image_two\": \"uploads/custom-images/theme_business_features_icon_2.png\", \"image_four\": \"uploads/custom-images/theme_business_features_icon_4.png\", \"image_three\": \"uploads/custom-images/theme_business_features_icon_3.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(26, 4, 'banner_section', '{\"student_image\": \"uploads/custom-images/theme_business_student_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(27, 4, 'faq_section', '{\"image\": \"uploads/custom-images/theme_business_faq.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(28, 5, 'hero_section', '{\"banner_image\": \"uploads/custom-images/h4_hero_img.png\", \"booking_number\": \"+1 (123) 909090\", \"hero_background\": \"uploads/custom-images/h4_hero_bg.jpg\", \"action_button_url\": \"/courses\", \"banner_background\": \"uploads/custom-images/h4_hero_img_shape02.svg\", \"banner_background_two\": \"uploads/custom-images/h4_hero_img_shape01.svg\", \"enroll_students_image\": \"uploads/custom-images/theme_yoga_enroll_students_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(29, 5, 'our_features_section', '{\"image_one\": \"uploads/custom-images/h4_features_icon01.svg\", \"image_two\": \"uploads/custom-images/h4_features_icon02.svg\", \"image_four\": \"uploads/custom-images/h4_features_icon04.png\", \"image_three\": \"uploads/custom-images/h4_features_icon03.svg\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(30, 5, 'about_section', '{\"image\": \"uploads/custom-images/h4_choose_img.jpg\", \"image_two\": \"uploads/custom-images/h4_choose_img02.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(31, 5, 'banner_section', '{\"bg_image\": \"uploads/custom-images/h4_video_bg.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=pMzGDBP6Bic\", \"student_image\": \"uploads/custom-images/h4_cta_img.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(32, 5, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_yoga_newslettter.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(33, 5, 'faq_section', '{\"image\": \"uploads/custom-images/theme_yoga_faq.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(34, 6, 'hero_section', '{\"banner_image\": \"uploads/custom-images/h8_hero_img.png\", \"hero_background\": \"uploads/custom-images/h8_hero_bg.jpg\", \"banner_background\": \"uploads/custom-images/h8_hero_img_shape.svg\", \"banner_background_two\": \"uploads/custom-images/h8_hero_img_shape02.svg\", \"enroll_students_image\": \"uploads/custom-images/theme_kitchen_enroll_students_image.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(35, 6, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_kitchen_features_icon_1.png\", \"image_two\": \"uploads/custom-images/theme_kitchen_features_icon_2.png\", \"image_four\": \"uploads/custom-images/theme_kitchen_features_icon_4.png\", \"image_three\": \"uploads/custom-images/theme_kitchen_features_icon_3.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(36, 6, 'about_section', '{\"image\": \"uploads/custom-images/h8_about_img01.jpg\", \"image_two\": \"uploads/custom-images/h8_about_img02.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\", \"image_three\": \"uploads/custom-images/skillgro-diploma.png\", \"course_success\": \"86\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(37, 6, 'banner_section', '{\"student_image\": \"uploads/custom-images/h8_cta_img.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(38, 6, 'faq_section', '{\"image\": \"uploads/custom-images/theme_kitchen_faq.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(39, 6, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_kitchen_newslettter.png\"}', 1, '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(40, 7, 'hero_section', '{\"banner_image\": \"uploads/custom-images/h5_hero_img.png\", \"hero_background\": \"uploads/custom-images/h5_hero_bg.jpg\", \"action_button_url\": \"/courses\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(41, 7, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_kindergarten_features_icon_1.png\", \"image_two\": \"uploads/custom-images/theme_kindergarten_features_icon_2.png\", \"image_four\": \"uploads/custom-images/theme_kindergarten_features_icon_4.png\", \"image_three\": \"uploads/custom-images/theme_kindergarten_features_icon_3.png\", \"button_url_one\": \"/about-us\", \"button_url_two\": \"/about-us\", \"button_url_four\": \"/about-us\", \"button_url_three\": \"/about-us\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(42, 7, 'about_section', '{\"image\": \"uploads/custom-images/h5_about_img01.jpg\", \"image_two\": \"uploads/custom-images/h5_about_img02.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\", \"phone_number\": \"+985 0059 500\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(43, 7, 'faq_section', '{\"image\": \"uploads/custom-images/h5_faq_img.jpg\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(44, 7, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_kindergarten_newsletter.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(45, 7, 'banner_section', '{\"student_image\": \"uploads/custom-images/theme_kindergarten_student_image.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(46, 8, 'hero_section', '{\"banner_image\": \"uploads/custom-images/h6_hero_img.jpg\", \"hero_background\": \"uploads/custom-images/h6_hero_bg.jpg\", \"video_button_url\": \"https://www.youtube.com/watch?v=pMzGDBP6Bic\", \"action_button_url\": \"/courses\", \"enroll_students_image\": \"uploads/custom-images/theme_language_enroll_students_image.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(47, 8, 'about_section', '{\"image\": \"uploads/custom-images/h6_choose_img.jpg\", \"video_url\": \"https://www.youtube.com/watch?v=VkBnNxneA_A\", \"button_url\": \"/about-us\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(48, 8, 'faq_section', '{\"image\": \"uploads/custom-images/h6_faq_img01.jpg\", \"image_two\": \"uploads/custom-images/h6_faq_img02.jpg\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(49, 8, 'counter_section', '{\"image\": \"uploads/custom-images/theme_language_fact_img.png\", \"total_student_count\": 3000, \"total_instructor_count\": 100}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(50, 8, 'our_features_section', '{\"image_one\": \"uploads/custom-images/theme_language_features_icon_1.png\", \"image_two\": \"uploads/custom-images/theme_language_features_icon_2.png\", \"image_four\": \"uploads/custom-images/theme_language_features_icon_4.png\", \"image_three\": \"uploads/custom-images/theme_language_features_icon_3.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(51, 8, 'banner_section', '{\"student_image\": \"uploads/custom-images/theme_language_student_image.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(52, 8, 'newsletter_section', '{\"image\": \"uploads/custom-images/theme_language_newsletter.png\"}', 1, '2024-11-12 23:20:02', '2024-11-12 23:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `section_settings`
--

CREATE TABLE `section_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `hero_section` tinyint(1) NOT NULL DEFAULT '0',
  `top_category_section` tinyint(1) NOT NULL DEFAULT '0',
  `brands_section` tinyint(1) NOT NULL DEFAULT '0',
  `about_section` tinyint(1) NOT NULL DEFAULT '0',
  `featured_course_section` tinyint(1) NOT NULL DEFAULT '0',
  `news_letter_section` tinyint(1) NOT NULL DEFAULT '0',
  `featured_instructor_section` tinyint(1) NOT NULL DEFAULT '0',
  `counter_section` tinyint(1) NOT NULL DEFAULT '0',
  `faq_section` tinyint(1) NOT NULL DEFAULT '0',
  `our_features_section` tinyint(1) NOT NULL DEFAULT '0',
  `testimonial_section` tinyint(1) NOT NULL DEFAULT '0',
  `banner_section` tinyint(1) NOT NULL DEFAULT '0',
  `latest_blog_section` tinyint(1) NOT NULL DEFAULT '0',
  `blog_page` tinyint(1) NOT NULL DEFAULT '0',
  `about_page` tinyint(1) NOT NULL DEFAULT '0',
  `contact_page` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section_settings`
--

INSERT INTO `section_settings` (`id`, `hero_section`, `top_category_section`, `brands_section`, `about_section`, `featured_course_section`, `news_letter_section`, `featured_instructor_section`, `counter_section`, `faq_section`, `our_features_section`, `testimonial_section`, `banner_section`, `latest_blog_section`, `blog_page`, `about_page`, `contact_page`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, '2024-06-03 03:49:28', '2026-03-11 07:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `section_translations`
--

CREATE TABLE `section_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section_translations`
--

INSERT INTO `section_translations` (`id`, `section_id`, `lang_code`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '{\"title\": \"Never Stop [Learning]\\\\Life {Never Stop} Teaching\", \"sub_title\": \"Every teaching and learning journey is unique Following\\\\We\'ll help guide your way.\", \"total_student\": \"80k\", \"total_instructor\": \"30k\", \"video_button_text\": \"Watch Our\\\\Class Demo\", \"action_button_text\": \"Check Our Courses\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(2, 1, 'hi', '{\"title\": \"कभी न रुकें [सीखना] जीवन कभी भी सिखाना बंद न करें\", \"sub_title\": \"प्रत्येक शिक्षण और सीखने की यात्रा अद्वितीय है, निम्नलिखित\\\\हम ​​आपका मार्गदर्शन करने में मदद करेंगे।\", \"total_student\": \"80k\", \"total_instructor\": \"30k\", \"video_button_text\": \"हमारा\\\\क्लास डेमो देखें\", \"action_button_text\": \"हमारे पाठ्यक्रम जांचें\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(4, 2, 'en', '{\"title\": \"Thousand Of Top [Courses]\\\\Now in One Place\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you\'re looking to advance your career</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Get More About Us\"}', '2024-10-15 21:42:24', '2024-10-15 21:48:06'),
(5, 2, 'hi', '{\"title\": \"हजारों शीर्ष पाठ्यक्रम अब एक ही स्थान पर\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"हमारे बारे में अधिक जानें\"}', '2024-10-15 21:42:24', '2024-10-15 21:48:43'),
(7, 5, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(8, 5, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(10, 6, 'en', '{\"title_one\": \"Learn with Experts\", \"title_two\": \"Learn Anything\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Get Online Certificate\", \"sub_title_one\": \"Elevate your learning. Trusted guidance, real results\", \"sub_title_two\": \"Master Any Skill. Unleash Your Potential and join the best\", \"sub_title_four\": \"Grow Your Business. Reach New Customers\", \"sub_title_three\": \"Master in Demand Skills. Soon Get Certified Today\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(11, 6, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें. विश्वसनीय मार्गदर्शन, वास्तविक परिणाम\", \"sub_title_two\": \"किसी भी कौशल में महारत हासिल करें। अपनी क्षमता को उजागर करें\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं. नए ग्राहकों तक पहुंचें\", \"sub_title_three\": \"मांग कौशल में मास्टर. आज ही प्रमाणित हो जाएं\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(13, 8, 'en', '{\"title\": \"{Learning is [What You]\\\\Make of it. Make it Yours at SkillGro.}\", \"total_student\": \"36k\", \"total_instructor\": \"15k\", \"video_button_text\": \"Watch Our\\\\Class Demo\", \"action_button_text\": \"Check Our Courses\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(14, 8, 'hi', '{\"title\": \"{शिक्षण और सीखना} [जैसा आप इसे बनाते हैं] \\\\ इसे SkillGro पर अपना बनाएं।\", \"total_student\": \"36k\", \"total_instructor\": \"15k\", \"video_button_text\": \"हमारा\\\\क्लास डेमो देखें\", \"action_button_text\": \"हमारे पाठ्यक्रम जांचें\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(16, 9, 'en', '{\"title\": \"Join Our Free Workshops\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you\'re looking to advance your career</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Free Workshop\"}', '2024-10-15 21:42:24', '2024-10-15 21:51:06'),
(17, 9, 'hi', '{\"title\": \"हमारी निःशुल्क कार्यशालाओं में शामिल हों\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"निःशुल्क कार्यशाला\"}', '2024-10-15 21:42:24', '2024-10-15 21:50:43'),
(19, 11, 'en', '{\"title\": \"Thousands of [Courses]\\\\ authored by industry experts\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(20, 11, 'hi', '{\"title\": \"उद्योग विशेषज्ञों द्वारा लिखित हजारों [पाठ्यक्रम]\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(22, 12, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(23, 12, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(25, 13, 'en', '{\"title_one\": \"Learn with Experts\", \"title_two\": \"Learn Anything\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Get Online Certificate\", \"sub_title_one\": \"Elevate your learning. Trusted guidance, real results\", \"sub_title_two\": \"Master Any Skill. Unleash Your Potential and join the best\", \"sub_title_four\": \"Grow Your Business. Reach New Customers\", \"sub_title_three\": \"Master in Demand Skills. Soon Get Certified Today\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(26, 13, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें. विश्वसनीय मार्गदर्शन, वास्तविक परिणाम\", \"sub_title_two\": \"किसी भी कौशल में महारत हासिल करें। अपनी क्षमता को उजागर करें\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं. नए ग्राहकों तक पहुंचें\", \"sub_title_three\": \"मांग कौशल में मास्टर. आज ही प्रमाणित हो जाएं\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(28, 15, 'en', '{\"title\": \"Empowering Mind\\\\ Inspiring [Futures]\", \"sub_title\": \"Every teaching and learning journey is unique Following\\\\We\'ll help guide your way.\", \"short_title\": \"FOR A BETTER FUTURE\", \"total_student\": \"36k\", \"action_button_text\": \"Find your Course\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(29, 15, 'hi', '{\"title\": \"मस्तिष्क को सशक्त बनाना\\\\ प्रेरणादायक [भविष्य]\", \"sub_title\": \"प्रत्येक शिक्षण और सीखने की यात्रा अद्वितीय है, निम्नलिखित\\\\हम ​​आपका मार्गदर्शन करने में मदद करेंगे।\", \"short_title\": \"एक बेहतर भविष्य के लिए\", \"total_student\": \"36k\", \"action_button_text\": \"अपना पाठ्यक्रम खोजें\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(31, 16, 'en', '{\"title\": \"We Are One of The Largest, Most\\\\Diverse Universities in The USA\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you\'re looking to advance your career</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"About Campus history\"}', '2024-10-15 21:42:24', '2024-10-15 21:52:04'),
(32, 16, 'hi', '{\"title\": \"हम अमेरिका के सबसे बड़े, \\\\सबसे विविध विश्वविद्यालयों में से एक हैं\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"कैम्पस के इतिहास के बारे में\"}', '2024-10-15 21:42:24', '2024-10-15 21:52:35'),
(34, 18, 'en', '{\"title\": \"Explore Majors & \\\\ [Programs]\", \"button_text\": \"Take A Tour\", \"description\": \"Choose from 16 undergraduate and graduate majors Board and the Mississippi Universities Board with goal of promoting collaboration.\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(35, 18, 'hi', '{\"title\": \"प्रमुख विषयों और [कार्यक्रमों] \\\\ का अन्वेषण करें\", \"button_text\": \"एक टूर लें\", \"description\": \"सहयोग को बढ़ावा देने के लक्ष्य के साथ 16 अंडरग्रेजुएट और ग्रेजुएट मेजर्स बोर्ड और टी मिसिसिपी यूनिवर्सिटी बोर्ड में से चुना गया।\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(37, 19, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(38, 19, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(40, 20, 'en', '{\"title_one\": \"Learn with Experts\", \"title_two\": \"Learn Anything\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Get Online Certificate\", \"sub_title_one\": \"Elevate your learning. Trusted guidance, real results\", \"sub_title_two\": \"Master Any Skill. Unleash Your Potential and join the best\", \"sub_title_four\": \"Grow Your Business. Reach New Customers\", \"sub_title_three\": \"Master in Demand Skills. Soon Get Certified Today\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(41, 20, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें. विश्वसनीय मार्गदर्शन, वास्तविक परिणाम\", \"sub_title_two\": \"किसी भी कौशल में महारत हासिल करें। अपनी क्षमता को उजागर करें\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं. नए ग्राहकों तक पहुंचें\", \"sub_title_three\": \"मांग कौशल में मास्टर. आज ही प्रमाणित हो जाएं\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(43, 22, 'en', '{\"title_one\": \"{Advance Your Career with [AI & Emerging]\\\\ Technology Courses}\", \"title_two\": \"{Master In-Demand Skills in [AI, Data Science] & Full Stack Development}\", \"title_three\": \"{Build Your Future with [VLSI, Embedded] & Advanced Technology Courses}\", \"sub_title_one\": \"Gain practical skills, work on real projects, and earn recognized certifications to grow your career.\", \"sub_title_two\": \"Learn from industry experts and build hands-on projects to prepare for real technology careers.\", \"short_title_one\": \"IIT Certification Programs\", \"short_title_two\": \"Industry Ready Learning\", \"sub_title_three\": \"Develop advanced technical skills and gain certification to stand out in today’s competitive job market.\", \"short_title_three\": \"Future Technology Programs\"}', '2024-10-15 21:42:24', '2026-03-11 12:02:00'),
(44, 22, 'hi', '{\"title_one\": \"{व्यवसाय [पाठ्यक्रम ]\\\\ & अपने कौशल का विकास करें}\", \"title_two\": \"{व्यवसाय [पाठ्यक्रम ]\\\\ & अपने कौशल का विकास करें}\", \"title_three\": \"{व्यवसाय [पाठ्यक्रम ]\\\\ & अपने कौशल का विकास करें}\", \"sub_title_one\": \"दुनिया भर के 17 मिलियन शिक्षार्थियों के साथ आज ही निःशुल्क और प्रीमियम ऑनलाइन पाठ्यक्रम जुड़ें।\", \"sub_title_two\": \"दुनिया भर के 17 मिलियन शिक्षार्थियों के साथ आज ही निःशुल्क और प्रीमियम ऑनलाइन पाठ्यक्रम जुड़ें।\", \"short_title_one\": \"पेशेवर पाठ्यक्रम\", \"short_title_two\": \"पेशेवर पाठ्यक्रम\", \"sub_title_three\": \"दुनिया भर के 17 मिलियन शिक्षार्थियों के साथ आज ही निःशुल्क और प्रीमियम ऑनलाइन पाठ्यक्रम जुड़ें।\", \"short_title_three\": \"पेशेवर पाठ्यक्रम\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(46, 23, 'en', '{\"title\": \"Industry-Recognized Programs in Collaboration with Vishlesan i-Hub Foundation at IIT Patna\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">StepUpMark Learn Hub offers industry-focused technology certification programs in collaboration with Vishlesan i-Hub Foundation at IIT Patna, empowering learners with practical skills in Artificial Intelligence and emerging technologies.</p>\\r\\n<ul>\\r\\n<li data-section-id=\\\"1imol5u\\\" data-start=\\\"777\\\" data-end=\\\"813\\\">\\r\\n<p data-start=\\\"779\\\" data-end=\\\"813\\\"><strong data-start=\\\"779\\\" data-end=\\\"811\\\">Expert Instructors &amp; Mentors</strong></p>\\r\\n</li>\\r\\n<li data-section-id=\\\"vqyqf2\\\" data-start=\\\"814\\\" data-end=\\\"850\\\">\\r\\n<p data-start=\\\"816\\\" data-end=\\\"850\\\"><strong data-start=\\\"816\\\" data-end=\\\"848\\\">Access Your Classes Anywhere</strong></p>\\r\\n</li>\\r\\n<li data-section-id=\\\"wra0z2\\\" data-start=\\\"851\\\" data-end=\\\"883\\\">\\r\\n<p data-start=\\\"853\\\" data-end=\\\"883\\\"><strong data-start=\\\"853\\\" data-end=\\\"883\\\">Flexible Learning Programs</strong></p>\\r\\n</li>\\r\\n</ul>\", \"short_title\": \"Why Choose Us\"}', '2024-10-15 21:42:24', '2026-03-11 06:20:38'),
(47, 23, 'hi', '{\"title\": \"उद्योग जगत के अग्रणी लोगों द्वारा पढ़ाए जाने वाले व्यावसायिक पाठ्यक्रम\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"हमें क्यों चुनें\"}', '2024-10-15 21:42:24', '2024-10-15 21:54:39'),
(49, 25, 'en', '{\"title_one\": \"Learn from Industry Experts\", \"title_two\": \"Hands-on AI Projects\", \"title_four\": \"Career-Focused Training\", \"title_three\": \"IIT Patna Certification\", \"sub_title_one\": \"Gain knowledge from experienced AI professionals and mentors.\", \"sub_title_two\": \"Build real-world AI, NLP, and Generative AI applications.\", \"sub_title_four\": \"Develop in-demand AI skills using tools like Python, NumPy, Pandas, and PyTorch.\", \"sub_title_three\": \"Earn certification from Vishlesan i-Hub Foundation at IIT Patna.\"}', '2024-10-15 21:42:24', '2026-03-11 06:28:23'),
(50, 25, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें.\", \"sub_title_two\": \"किसी भी कौशल\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं.\", \"sub_title_three\": \"मांग कौशल में मास्टर.\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(52, 27, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(53, 27, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(55, 28, 'en', '{\"title\": \"{[Jecov Rossy]}\", \"sub_title\": \"I’m here to help you find the confidence you need to feel amazing in your body!when an unknown printer took a galley of type and scrambled\\n                                it ecimen has survived not onlyled it to make.\", \"short_title\": \"Personal Yoga Coach\", \"total_student\": \"36k\", \"action_button_text\": \"Find Your Courses\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(56, 28, 'hi', '{\"title\": \"{[जेकोव रोसी]}\", \"sub_title\": \"मैं यहाँ आपकी मदद करने के लिए हूँ ताकि आप अपने शरीर में अद्भुत महसूस करने के लिए आत्मविश्वास पा सकें! जब एक अज्ञात प्रिंटर ने टाइप की एक गली ली और उसे गड़बड़ कर दिया, तब भी यह उदाहरण केवल बचा ही नहीं।\", \"short_title\": \"व्यक्तिगत योग कोच\", \"total_student\": \"36k\", \"action_button_text\": \"अपने पाठ्यक्रम खोजें\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(58, 29, 'en', '{\"sec_title\": \"Connecting Your Mind, Body \\\\ and Spirit through\", \"title_one\": \"Support & Motivation\", \"title_two\": \"Strong Body Life\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Increased Flexibility\", \"sub_title_one\": \"We are able to offer every yoga training experienced & best yoga trainer.\", \"sub_title_two\": \"We are able to offer every yoga training experienced & best yoga trainer.\", \"sub_title_four\": \"Grow Your Business. Reach New Customers\", \"sec_description\": \"We believe yoga can power transformation on and off the mat We are more than just yogis - we\'re mom\'s, \\\\ home makers, yoga studio owners, epic yoga retreat hosts\", \"sub_title_three\": \"We are able to offer every yoga training experienced & best yoga trainer.\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(59, 29, 'hi', '{\"sec_title\": \"आपके मन, शरीर और \\\\ आत्मा को जोड़ना के माध्यम से\", \"title_one\": \"समर्थन और प्रेरणा\", \"title_two\": \"मजबूत शरीर जीवन\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"बढ़ी हुई लचीलापन\", \"sub_title_one\": \"हम हर योग प्रशिक्षण को अनुभवी और सर्वश्रेष्ठ योग प्रशिक्षक के साथ प्रदान करने में सक्षम हैं।\", \"sub_title_two\": \"हम हर योग प्रशिक्षण को अनुभवी और सर्वश्रेष्ठ योग प्रशिक्षक के साथ प्रदान करने में सक्षम हैं।\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं. नए ग्राहकों तक पहुंचें\", \"sec_description\": \"हमें विश्वास है कि योग चटाई पर और चटाई के बाहर परिवर्तन की शक्ति रखता है <br> हम सिर्फ योगी नहीं हैं - हम माताएं हैं, \\\\ गृहिणियां, योग स्टूडियो के मालिक, शानदार योग रिट्रीट के मेज़बान हैं\", \"sub_title_three\": \"हम हर योग प्रशिक्षण को अनुभवी और सर्वश्रेष्ठ योग प्रशिक्षक के साथ प्रदान करने में सक्षम हैं।\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(61, 30, 'en', '{\"title\": \"Trained {Your Body}\\\\ {Mind} Through Our {Yoga}\", \"button_text\": \"Check Schedule\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">When an unknown printer took a galley of type and scrambled it to make cimen has survived not only five centurieswnknown.when an unknown printer took a galley of type.</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Why Choose Us\"}', '2024-10-15 21:42:24', '2024-10-15 21:55:25'),
(62, 30, 'hi', '{\"title\": \"हमारे योग के माध्यम से अपने\\\\ शरीर और मन को प्रशिक्षित करें\", \"button_text\": \"कार्यक्रम की जांच करें\", \"description\": \"<p>जब एक अज्ञात प्रिंटर ने टाइप की एक गली ली और इसे गड़बड़ कर दिया ताकि यह एक उदाहरण बन सके, जिसने केवल पांच शताब्दियों तक जीवित रहने में सफल हुआ। अज्ञात। जब एक अज्ञात प्रिंटर ने टाइप की एक गली ली।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"हमें क्यों चुनें\"}', '2024-10-15 21:42:24', '2024-10-15 21:55:57'),
(64, 33, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(65, 33, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(67, 34, 'en', '{\"title\": \"Take Your [Cooking] Skill\\\\To The Next Level\", \"sub_title\": \"Free & Premium online courses from the world’s Join 17 million learners today.\", \"total_courses\": \"12K+\", \"total_student\": \"36K+\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(68, 34, 'hi', '{\"title\": \"अपने [खाना बनाने] के कौशल को अगले स्तर पर ले जाएं\", \"sub_title\": \"दुनिया भर से मुफ्त और प्रीमियम ऑनलाइन पाठ्यक्रम। आज ही 17 मिलियन शिक्षार्थियों से जुड़ें।\", \"total_courses\": \"12K+\", \"total_student\": \"36K+\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(70, 35, 'en', '{\"title_one\": \"Learn with Experts\", \"title_two\": \"Learn Anything\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Get Online Certificate\", \"sub_title_one\": \"Elevate your learning.\", \"sub_title_two\": \"Master Any Skill.\", \"sub_title_four\": \"Grow Your Business.\", \"sub_title_three\": \"Master in Demand Skills.\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(71, 35, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें.\", \"sub_title_two\": \"किसी भी कौशल\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं.\", \"sub_title_three\": \"मांग कौशल में मास्टर.\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(73, 36, 'en', '{\"title\": \"Thousand Of Top [Courses]\\\\Now in One Place\", \"button_text\": \"Discover All Class\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Groove&rsquo;s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode of the Smashing Pod we&rsquo;re talking about Web Platform Baseline.</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Get More About Us\"}', '2024-10-15 21:42:24', '2024-10-15 21:43:58'),
(74, 36, 'hi', '{\"title\": \"हजारों शीर्ष पाठ्यक्रम अब एक ही स्थान पर\", \"button_text\": \"सभी कक्षाओं की खोज करें\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p>\\r\\n<ul>\\r\\n<li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li>\\r\\n<li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li>\\r\\n<li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li>\\r\\n</ul>\\r\\n<pre id=\\\"\\\\&quot;tw-target-text\\\\&quot;\\\" class=\\\"\\\\&quot;tw-data-text\\\" dir=\\\"\\\\&quot;ltr\\\\&quot;\\\" data-placeholder=\\\"\\\\&quot;Translation\\\\&quot;\\\" aria-label=\\\"\\\\&quot;Translated\\\" data-ved=\\\"\\\\&quot;2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\&quot;\\\"><span class=\\\"\\\\&quot;Y2IQFc\\\\&quot;\\\" lang=\\\"\\\\&quot;hi\\\\&quot;\\\">&nbsp;</span></pre>\", \"short_title\": \"हमारे बारे में अधिक जानें\"}', '2024-10-15 21:42:24', '2024-10-15 21:45:02'),
(76, 38, 'en', '{\"title\": \"Start Learning From World’s Pro Instructors\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode.\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(77, 38, 'hi', '{\"title\": \"दुनिया के प्रो प्रशिक्षकों से सीखना शुरू करें\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-10-15 21:42:24', '2024-10-15 21:42:24'),
(79, 40, 'en', '{\"title\": \"Together We’ll \\\\ Explore {New Things}\", \"sub_title\": \"Every teaching and learning journey is unique Following\\\\We\'ll help guide your way.\", \"short_title\": \"Kindergarten Care School\", \"action_button_text\": \"Find your Course\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(80, 40, 'hi', '{\"title\": \"साथ में हम \\\\ {नई चीज़ों} का अन्वेषण करेंगे\", \"sub_title\": \"प्रत्येक शिक्षण और सीखने की यात्रा अद्वितीय है, निम्नलिखित\\\\हम ​​आपका मार्गदर्शन करने में मदद करेंगे।\", \"short_title\": \"किंडरगार्टन केयर स्कूल\", \"action_button_text\": \"अपना पाठ्यक्रम खोजें\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(82, 41, 'en', '{\"title_one\": \"Easy Class\", \"title_two\": \"Safety & Security\", \"title_four\": \"Clean Curriculum\", \"title_three\": \"Skilled Teacher\", \"sub_title_one\": \"Elevate your learning. Trusted guidance, real results\", \"sub_title_two\": \"Master Any Skill. Unleash Your Potential and join the best\", \"sub_title_four\": \"Dear psum dolor amettey adipis aecing eiusmod incididutt reore\", \"sub_title_three\": \"Master in Demand Skills. Soon Get Certified Today\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(83, 41, 'hi', '{\"title_one\": \"आसान क्लास\", \"title_two\": \"सुरक्षा\", \"title_four\": \"स्वच्छ पाठ्यक्रम\", \"title_three\": \"कुशल शिक्षक\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें. विश्वसनीय मार्गदर्शन, वास्तविक परिणाम\", \"sub_title_two\": \"किसी भी कौशल में महारत हासिल करें। अपनी क्षमता को उजागर करें\", \"sub_title_four\": \"प्रिय पीएसयूएम डोलर अमेटी एडिपिस एसिंग ईयूसमॉड इंसीडिदत्त रेओर\", \"sub_title_three\": \"मांग कौशल में मास्टर. आज ही प्रमाणित हो जाएं\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(85, 42, 'en', '{\"title\": \"Our passion is childhood, \\\\and we’re in kindergarten\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you\'re looking to advance your career</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Get More About Us\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(86, 42, 'hi', '{\"title\": \"हमारा जुनून बचपन है, \\\\और हम किंडरगार्टन में हैं\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p><ul><li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li><li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li><li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li></ul><pre id=\\\\\\\"tw-target-text\\\\\\\" class=\\\\\\\"tw-data-text tw-text-large tw-ta\\\\\\\" dir=\\\\\\\"ltr\\\\\\\" style=\\\\\\\"text-align: left;\\\\\\\" data-placeholder=\\\\\\\"Translation\\\\\\\" aria-label=\\\\\\\"Translated text\\\\\\\" data-ved=\\\\\\\"2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\\\\"><span class=\\\\\\\"Y2IQFc\\\\\\\" lang=\\\\\\\"hi\\\\\\\">&nbsp;</span></pre>\", \"short_title\": \"हमारे बारे में अधिक जानें\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(88, 43, 'en', '{\"title\": \"Why Our Schools are the Right Fit for Your Child?\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episod.\", \"short_title\": \"FAQs\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(89, 43, 'hi', '{\"title\": \"हमारे स्कूल आपके बच्चे के लिए उपयुक्त क्यों हैं?\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(91, 46, 'en', '{\"title\": \"Confidently {speak} \\\\a new language\", \"sub_title\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">More than 240 thousand new users SignUp Here!</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Live classes online 24/7</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Learn in small groups or 1-on-1</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Free 7-day trial</li>\\r\\n</ul>\", \"total_courses\": \"45+\", \"total_student\": \"80k\", \"average_reviews\": \"4.9\", \"video_button_text\": \"Watch Our Class Demo\", \"action_button_text\": \"Find your Course\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(92, 46, 'hi', '{\"title\": \"आत्मविश्वास से {बोलें} \\\\एक नई भाषा\", \"sub_title\": \"<p>यहां 2.4 लाख से अधिक नए उपयोगकर्ता साइन अप करते हैं!</p><ul><li>ऑनलाइन लाइव कक्षाएं 24/7</li><li>छोटे समूहों में या 1-ऑन-1 में सीखें</li><li>मुफ़्त 7-दिन का परीक्षण</li></ul>\", \"total_courses\": \"45+\", \"total_student\": \"80k\", \"average_reviews\": \"4.9\", \"video_button_text\": \"हमारा क्लास डेमो देखें\", \"action_button_text\": \"अपना पाठ्यक्रम खोजें\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(94, 47, 'en', '{\"title\": \"Transform Your Language with Our Courses\", \"button_text\": \"More Info\", \"description\": \"<p class=\\\"\\\\&quot;desc\\\\&quot;\\\">Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you\'re looking to advance your career</p>\\r\\n<ul>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">The Most World Class Instructors</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Access Your Class anywhere</li>\\r\\n<li class=\\\"\\\\&quot;content\\\\&quot;\\\">Flexible Course Price</li>\\r\\n</ul>\", \"short_title\": \"Why Choose Us\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(95, 47, 'hi', '{\"title\": \"हमारे पाठ्यक्रमों के साथ अपनी भाषा बदलें\", \"button_text\": \"और जानकारी\", \"description\": \"<p>विशेषज्ञ प्रशिक्षकों द्वारा पढ़ाए जाने वाले उच्च-रेटेड पाठ्यक्रमों का एक विशाल संग्रह खोजें, जो विभिन्न विषयों को कवर करते हैं। चाहे आप अपने करियर को आगे बढ़ाना चाहते हों, नई कौशल सीखना चाहते हों, या किसी शौक का पता लगाना चाहते हों, आपको अपनी आवश्यकताओं के अनुरूप लचीले और किफायती विकल्प मिलेंगे।</p><ul><li><strong>विश्व स्तरीय प्रशिक्षक</strong>: दुनिया के सर्वश्रेष्ठ प्रशिक्षकों से सीखें।</li><li><strong>कहीं भी पहुंचें</strong>: कहीं भी और कभी भी अपने कक्षाओं का आनंद लें।</li><li><strong>लचीली कीमतें</strong>: अपने बजट के अनुसार पाठ्यक्रम चुनें।</li></ul><pre id=\\\\\\\"tw-target-text\\\\\\\" class=\\\\\\\"tw-data-text tw-text-large tw-ta\\\\\\\" dir=\\\\\\\"ltr\\\\\\\" style=\\\\\\\"text-align: left;\\\\\\\" data-placeholder=\\\\\\\"Translation\\\\\\\" aria-label=\\\\\\\"Translated text\\\\\\\" data-ved=\\\\\\\"2ahUKEwjxxcKXk8CGAxVioGMGHZUBOvUQ3ewLegQIBxAT\\\\\\\"><span class=\\\\\\\"Y2IQFc\\\\\\\" lang=\\\\\\\"hi\\\\\\\">&nbsp;</span></pre>\", \"short_title\": \"हमें क्यों चुनें\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(97, 48, 'en', '{\"title\": \"Why Our Schools are the Right Fit for Your Child?\", \"description\": \"Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episod.\", \"short_title\": \"FAQs\", \"total_languages\": \"45+\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(98, 48, 'hi', '{\"title\": \"हमारे स्कूल आपके बच्चे के लिए उपयुक्त क्यों हैं?\", \"description\": \"ग्रूव का सहज साझा इनबॉक्स टीम के सदस्यों के लिए व्यवस्थित करना, प्राथमिकता देना और आसान बनाता है।\", \"short_title\": \"FAQs\", \"total_languages\": \"45+\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(100, 49, 'en', '{\"title\": \"Thousands of [Courses]\\\\ authored by industry experts\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(101, 49, 'hi', '{\"title\": \"उद्योग विशेषज्ञों द्वारा लिखित हजारों [पाठ्यक्रम]\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(103, 50, 'en', '{\"title_one\": \"Learn with Experts\", \"title_two\": \"Learn Anything\", \"title_four\": \"E-mail Marketing\", \"title_three\": \"Get Online Certificate\", \"sub_title_one\": \"Elevate your learning. Trusted guidance, real results\", \"sub_title_two\": \"Master Any Skill. Unleash Your Potential and join the best\", \"sub_title_four\": \"Grow Your Business. Reach New Customers\", \"sub_title_three\": \"Master in Demand Skills. Soon Get Certified Today\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02'),
(104, 50, 'hi', '{\"title_one\": \"विशेषज्ञों से सीखें\", \"title_two\": \"कुछ भी सीखें\", \"title_four\": \"ईमेल व्यापार\", \"title_three\": \"ऑनलाइन प्रमाणपत्र प्राप्त करें\", \"sub_title_one\": \"अपनी शिक्षा को उन्नत करें. विश्वसनीय मार्गदर्शन, वास्तविक परिणाम\", \"sub_title_two\": \"किसी भी कौशल में महारत हासिल करें। अपनी क्षमता को उजागर करें\", \"sub_title_four\": \"अपना व्यवसाय बढ़ाएं. नए ग्राहकों तक पहुंचें\", \"sub_title_three\": \"मांग कौशल में मास्टर. आज ही प्रमाणित हो जाएं\"}', '2024-11-12 23:20:02', '2024-11-12 23:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home || Stepupmark LearnHub', 'Home || Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-11 01:18:31'),
(2, 'about_page', 'About || Stepupmark LearnHub', 'About || Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-11 01:18:39'),
(3, 'course_page', 'Course || Stepupmark LearnHub', 'Course || Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-11 01:18:48'),
(4, 'blog_page', 'Blog || Stepupmark LearnHub', 'Blog || Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-11 01:18:56'),
(5, 'contact_page', 'Contact || Stepupmark LearnHub', 'Contact || Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-11 01:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-10 19:45:39'),
(2, 'version', '3.0.0', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(3, 'logo', 'uploads/custom-images/wsus-img-2026-03-11-04-09-53-7717.png', '2024-06-03 02:02:30', '2026-03-11 10:39:53'),
(4, 'timezone', 'Asia/Kolkata', '2024-06-03 02:02:30', '2026-03-10 19:45:39'),
(5, 'favicon', 'uploads/custom-images/wsus-img-2026-03-11-04-14-01-6392.png', '2024-06-03 02:02:30', '2026-03-11 10:44:01'),
(6, 'cookie_status', 'active', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(7, 'border', 'normal', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(8, 'corners', 'none', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(9, 'background_color', '#5751e1', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(10, 'text_color', '#fafafa', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(11, 'border_color', '#5751e1', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(12, 'btn_bg_color', '#fffceb', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(13, 'btn_text_color', '#222758', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(14, 'link_text', 'More Info', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(15, 'link', '/page/privacy-policy', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(16, 'btn_text', 'Yes', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(17, 'message', 'This website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only upon approval.', '2024-06-03 02:02:30', '2024-06-13 08:02:21'),
(18, 'copyright_text', '2026 Stepupmark LearnHub. All rights reserved.', '2024-06-03 02:02:30', '2026-03-11 01:17:23'),
(19, 'recaptcha_site_key', '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', '2024-06-03 02:02:30', '2024-08-01 11:13:09'),
(20, 'recaptcha_secret_key', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', '2024-06-03 02:02:30', '2024-08-01 11:13:09'),
(21, 'recaptcha_status', 'inactive', '2024-06-03 02:02:30', '2024-08-01 11:13:09'),
(22, 'tawk_status', 'inactive', '2024-06-03 02:02:30', '2024-06-13 05:52:54'),
(23, 'tawk_chat_link', 'tawk_chat_link', '2024-06-03 02:02:30', '2024-06-13 05:52:54'),
(24, 'google_tagmanager_status', 'inactive', '2024-06-03 02:02:30', '2024-06-22 05:30:39'),
(25, 'google_tagmanager_id', 'GTM-KKVSTTV3', '2024-06-03 02:02:30', '2024-06-22 05:30:39'),
(26, 'pixel_status', 'inactive', '2024-06-03 02:02:30', '2024-06-13 05:53:10'),
(27, 'pixel_app_id', 'pixel_app_id', '2024-06-03 02:02:30', '2024-06-13 05:53:10'),
(28, 'facebook_login_status', 'inactive', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(29, 'facebook_app_id', 'facebook_app_id', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(30, 'facebook_app_secret', 'facebook_app_secret', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(31, 'facebook_redirect_url', 'facebook_redirect_url', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(32, 'google_login_status', 'active', '2024-06-03 02:02:30', '2026-03-11 01:35:31'),
(33, 'gmail_client_id', '124774422611-9fn7mhc2d8ufaes0pu937qm01otvcd0j.apps.googleusercontent.com', '2024-06-03 02:02:30', '2026-03-11 01:35:31'),
(34, 'gmail_secret_id', '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', '2024-06-03 02:02:30', '2026-03-11 01:35:31'),
(35, 'gmail_redirect_url', '', '2024-06-03 02:02:30', '2026-03-11 01:35:31'),
(36, 'default_avatar', 'uploads/website-images/default-avatar.png', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(37, 'breadcrumb_image', 'uploads/website-images/breadcrumb-image.jpg', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(38, 'mail_host', 'mail.stepupmarklearnhub.in', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(39, 'mail_sender_email', 'contact@stepupmarklearnhub.in', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(40, 'mail_username', 'contact@stepupmarklearnhub.in', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(41, 'mail_password', 'Contact@2026#Mail', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(42, 'mail_port', '465', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(43, 'mail_encryption', 'ssl', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(44, 'mail_sender_name', 'Stepupmark LearnHub', '2024-06-03 02:02:30', '2026-03-10 19:43:46'),
(45, 'contact_message_receiver_mail', 'receiver@gmail.com', '2024-06-03 02:02:30', '2024-06-24 05:20:20'),
(46, 'pusher_app_id', 'pusher_app_id', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(47, 'pusher_app_key', 'pusher_app_key', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(48, 'pusher_app_secret', 'pusher_app_secret', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(49, 'pusher_app_cluster', 'pusher_app_cluster', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(50, 'pusher_status', 'inactive', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(51, 'club_point_rate', '1', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(52, 'club_point_status', 'active', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(53, 'maintenance_mode', '0', '2024-06-03 02:02:30', '2024-06-27 01:46:30'),
(54, 'maintenance_title', 'Website Under maintenance', '2024-06-03 02:02:30', '2024-06-27 01:34:49'),
(55, 'maintenance_description', '<p>We are currently performing maintenance on our website to<br>improve your experience. Please check back later.</p>\r\n<p><a title=\"Websolutions\" href=\"https://websolutionus.com/\">Websolutions</a></p>', '2024-06-03 02:02:30', '2024-06-27 01:34:49'),
(56, 'last_update_date', '2024-06-03 08:02:30', '2024-06-03 02:02:30', '2024-06-03 02:02:30'),
(57, 'is_queable', 'inactive', '2024-06-03 02:02:30', '2026-03-10 19:45:39'),
(58, 'commission_rate', '30', '2024-06-03 02:02:30', '2024-06-07 05:10:49'),
(59, 'site_address', 'Hyderabad, Telangana', '2024-06-03 02:02:30', '2026-03-10 19:45:39'),
(60, 'site_email', 'contact@stepupmarklearnhub.in', '2024-06-03 02:02:30', '2026-03-10 19:45:39'),
(61, 'site_theme', 'business', '2024-06-03 02:02:30', '2026-03-11 01:24:11'),
(62, 'preloader', 'uploads/custom-images/wsus-img-2026-03-11-04-09-53-8700.png', NULL, '2026-03-11 10:39:53'),
(67, 'primary_color', '#5751e1', '2024-06-09 01:23:45', '2024-06-09 23:50:42'),
(68, 'secondary_color', '#ffc224', '2024-06-09 01:23:45', '2024-06-09 23:50:42'),
(69, 'common_color_one', '#050071', '2024-06-09 23:19:27', '2024-06-09 23:50:42'),
(70, 'common_color_two', '#282568', '2024-06-09 23:19:27', '2024-06-09 23:50:42'),
(71, 'common_color_three', '#1c1a4a', '2024-06-09 23:19:27', '2024-06-09 23:50:42'),
(72, 'common_color_four', '#06042e', '2024-06-09 23:33:19', '2024-06-09 23:50:42'),
(73, 'common_color_five', '#4a44d1', '2024-06-09 23:57:02', '2024-06-09 23:57:35'),
(74, 'show_all_homepage', '0', NULL, '2026-03-11 01:24:11'),
(75, 'google_analytic_status', 'inactive', NULL, '2024-06-26 04:42:55'),
(76, 'google_analytic_id', 'G-F468RGF70C', NULL, '2024-06-26 04:42:55'),
(77, 'preloader_status', '1', NULL, '2026-03-10 19:45:39'),
(78, 'maintenance_image', 'uploads/custom-images/wsus-img-2024-06-27-07-34-49-2018.png', NULL, '2024-06-27 01:34:49'),
(79, 'live_mail_send', '5', '2024-09-03 12:52:13', '2026-03-10 19:45:39'),
(80, 'wasabi_access_id', 'wasabi_access_id', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(81, 'wasabi_secret_key', 'wasabi_secret_key', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(82, 'wasabi_bucket', 'wasabi_bucket', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(83, 'wasabi_region', 'us-east-1', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(84, 'wasabi_status', 'inactive', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(85, 'aws_access_id', 'aws_access_id', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(86, 'aws_secret_key', 'aws_secret_key', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(87, 'aws_bucket', 'aws_bucket', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(88, 'aws_region', 'us-east-1', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(89, 'aws_status', 'inactive', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(90, 'header_topbar_status', 'active', '2024-10-03 12:52:13', '2026-03-10 19:45:39'),
(91, 'cursor_dot_status', 'active', '2024-10-03 12:52:13', '2026-03-10 19:45:39'),
(92, 'header_social_status', 'active', '2024-10-03 12:52:13', '2026-03-10 19:45:39'),
(93, 'watermark_img', 'uploads/custom-images/wsus-img-2026-03-11-06-46-58-9451.png', '2024-06-02 20:02:30', '2026-03-11 01:16:58'),
(94, 'position', 'top_left', '2024-06-02 20:02:30', '2026-03-11 01:16:58'),
(95, 'opacity', '0.7', '2024-06-02 20:02:30', '2026-03-11 01:16:58'),
(96, 'max_width', '300', '2024-06-02 20:02:30', '2026-03-11 01:16:58'),
(97, 'watermark_status', 'inactive', '2024-06-02 20:02:30', '2026-03-11 01:16:58'),
(98, 'default_sms_driver', 'twilio', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(99, 'twilio_sid', 'twilio_sid', '2024-06-02 20:02:30', '2025-08-05 04:44:48'),
(100, 'twilio_token', 'twilio_token', '2024-06-02 20:02:30', '2025-08-05 04:44:48'),
(101, 'twilio_from', 'twilio_from', '2024-06-02 20:02:30', '2025-08-05 04:44:48'),
(102, 'twilio_status', 'inactive', '2024-06-02 20:02:30', '2024-06-02 20:02:30'),
(103, 'sms_driver_status', '0', '2024-06-02 20:02:30', '2025-08-05 03:24:44'),
(104, 'twilio_phone_code', '+255', '2024-06-02 20:02:30', '2025-08-05 04:44:48'),
(105, 'sms_order_completed', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(106, 'sms_payment_status', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(107, 'sms_approved_refund', '0', '2024-06-02 20:02:30', '2025-08-05 06:03:45'),
(108, 'sms_approved_withdraw', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(109, 'sms_rejected_withdraw', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(110, 'sms_instructor_request_approved', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(111, 'sms_instructor_request_rejected', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(112, 'sms_qna_reply_mail', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(113, 'sms_live_class_mail', '10', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(114, 'sms_gift_course', '0', '2024-06-02 20:02:30', '2025-08-05 06:10:54'),
(115, 'is_refundable', 'inactive', '2024-06-02 20:02:30', '2026-03-10 19:45:39'),
(116, 'instructor_earning_hold', '14', '2024-06-02 20:02:30', '2024-06-24 18:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `message`, `created_at`, `updated_at`) VALUES
(1, 'approved_refund', '\"{{refund_amount}}\" USD refunded to your account. - \"{{user_name}}\"', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(2, 'approved_withdraw', 'Your withdrawal has been approved. - \"{{user_name}}\"', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(3, 'rejected_withdraw', 'Withdrawal request rejected. - \"{{user_name}}\"', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(4, 'instructor_request_approved', 'You are now approved as an instructor.', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(5, 'instructor_request_rejected', 'Instructor request rejected. Please resubmit.', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(6, 'order_completed', 'Order \"{{order_id}}\" placed. Paid \"{{paid_amount}}\" via \"{{payment_method}}\".', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(7, 'payment_status', 'Order \"#{{order_id}}\" payment status is \"{{payment_status}}\".', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(8, 'qna_reply_mail', 'Instructor replied to your question on \"{{lesson}}\".', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(9, 'live_class_mail', 'Live class on \"{{lesson}}\" starts \"{{start_time}}\". Link: \"{{join_url}}\"', '2025-08-05 03:29:43', '2025-08-05 03:29:43'),
(10, 'gift_course', '\"{{sender_name}}\" gifted you a course! Claim: \"{{link}}\"', '2025-08-05 03:29:43', '2025-08-05 03:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_credentials`
--

CREATE TABLE `socialite_credentials` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialite_credentials`
--

INSERT INTO `socialite_credentials` (`id`, `user_id`, `provider_name`, `provider_id`, `access_token`, `refresh_token`, `created_at`, `updated_at`) VALUES
(1, 1013, 'google', '113682397470694323936', 'ya29.a0AXooCgt4Ub2NcVk9Px5hyxDHSKvJ0B7OeKvpG5ywX9eanp3xFtiN6XK4D6R4cv82tqtZc8KgMlU35Tl1m9Eyohj3ToFQlXYHUNzKGbRtV0pLo11_UNwU2g_gwIHQmeFyGBIGIyoy6wyWWpSHkeYHr0p8PuBSFywHpJpUaCgYKAWoSARASFQHGX2MiNw-krMDDoqf6uU9P83qSBg0171', NULL, '2024-06-23 04:05:19', '2024-06-23 04:05:19'),
(2, 1014, 'google', '113682397470694323936', 'ya29.a0AXooCgs59LUkWgQxg6DCZ7OebyQ-he3j807ka4jYq7RrTBxDo4M67fRC3kvTa2EbJugOgJaZZdyWyf2Uh3IEDq2LGwJ_puGrc0XC_8UK9pvhrd3X2r1W_qPprZGrElfkf490puMilOh1vwptcvMnl_QuoOfRSTyQfgaCgYKAeMSARASFQHGX2MiduNiB5y0fl8Napum1fCMxg0169', NULL, '2024-06-23 04:11:32', '2024-06-23 04:11:32'),
(3, 1015, 'google', '113682397470694323936', 'ya29.a0AXooCgv_RoQaBghfo5hSlgVNP5dElFD1JCxl1l2ssL_GqdtiOjLHSX0fXmZtobgXq-z8Y36xtaCz8aykQznxq7H3SbK-MB7oA0b7k1kyftUhUTUtOauxIW4D5zEsdjGyMbKw-YyHQJm0yFVhVCigOMezAaYthhnndwaCgYKAeUSARASFQHGX2MiYkGBXjRfbfMgiwoF6dEgzQ0169', NULL, '2024-06-23 04:12:41', '2024-06-23 04:12:41'),
(4, 1016, 'google', '113682397470694323936', 'ya29.a0AXooCgvfdNekoUzhTPoPMCl_7YEUdWo4ZHlHu4bSMZzkwokWjC5sw110wKFIJqSMe9J7osCNUIqQUVG08Q5he5MoWYovP1v46t-lKfzgj4CFpAIUo0XJyPlaxDUkmSJ4k9Gzm8wHzGVVD-ha3c1lHRi9nLU1u74p9AaCgYKAfwSARASFQHGX2MiCjBFjSKyu04s-O8VtTRMaA0169', NULL, '2024-06-23 04:14:03', '2024-06-23 04:14:03'),
(5, 1017, 'google', '113682397470694323936', 'ya29.a0AXooCgsSA_5rHPyWnvfMEXthFI-cKkQVXvP-sVFuSCFho6Zf16oKoq7Sll-L_0YFyxIVAaCVi1ZSP3Du-jNcS6v580r7O0hU4IBS2fop9QtI_Uvx7TnRGy5peAHABpoNF9XawpTjNijtkmSPTssqQyvY-8EZzchGYwaCgYKAbQSARASFQHGX2MidgwfZJhUhjBwmX2zFRxihQ0169', NULL, '2024-06-23 04:15:03', '2024-06-23 04:15:03'),
(6, 1019, 'google', '105763013813495298969', 'ya29.a0ATkoCc5BxNVwiGDbNOs_rDogknJx4DIznzd3DdFJT40jw50-L7c9jl186ZTBPQX2pf584D91R5GxTtOPTT3dOVc18OLdxpSlObM5nPlEETjoMqQsjyAFznbukmCLSUuRk0xukI8XfbRW-KbCkDZudcsX3icULYmZ2Yg0oJ4F1DooH6zqUoYs8tJWW40Jgo79vNo5NsUaCgYKAVkSARUSFQHGX2MikspdlZx1UfiZ0keH47wZgA0206', NULL, '2026-03-11 01:36:18', '2026-03-11 01:36:18'),
(7, 1020, 'google', '116110706633600206839', 'ya29.a0ATkoCc4_DVdLNgCb1O565tA_gYsGVjrXso61LQGrmj_ocSqiVoPfNy9cWm198oGtIlURX6P-XQvf6MIwKDSOFIpzICgELLp1xPimyetbXMWN7tK-Oy4c9lKKbSK22NQdxJEDcZeGB0Z9t9vH9I3bgjT0IotxQrZFrzCKcqXOlktpOWnZaBGtMUz0SY0Z7BTZ0njDFmAaCgYKAQYSARcSFQHGX2MizwQGyheBHpcTEOnTW1tXKg0206', NULL, '2026-03-11 04:48:57', '2026-03-11 04:48:57'),
(8, 1021, 'google', '107801281942555602574', 'ya29.a0Aa7MYiqAVdOYiCxgaq9mf90asU9lnH9ulq4TDzZuxCglbjZ6EoGV3FxevjkBtk6tSmkcxRIJKxsYdy2rtmBbQcIWDo25B8jy-2tl7Uba0h7RhKsWpLRaKsyUUOgFli1OncAyJV-CoRLPWC4ROJA3EO2JYi6VkTc2uC4RAttpOc81fIZfd6zVcEWWKK3VbceKM1RiUD8aCgYKAS4SARISFQHGX2MiKcQKLalZ8_yTixuxnkYrUA0206', NULL, '2026-03-30 07:23:35', '2026-03-30 07:23:35'),
(9, 1022, 'google', '106458130879291290752', 'ya29.a0Aa7MYiqqCTLf0tpAazQqa2EvhFtRbw2ADsK0SiuSW4EclSsMbxj0DwRzK5fCJywJTEf5N2CYuygVZTtulHascYptUz3K9-RsnZFCzh43VV3TG4Ov5rbp5_QHI93_ZAiWeV-kBwlaF_p_h3sb2QdTIUZiJTJdXUOIDf4vhONIFwjzBcJcnwWGBRfUPDd7JheSNmlGLfgaCgYKAVASAQ4SFQHGX2MiY2WQH4YF8wqS3x4ee1aAqA0206', NULL, '2026-04-23 19:06:56', '2026-04-23 19:06:56'),
(10, 1023, 'google', '102390565858177697021', 'ya29.a0AQvPyINcpmT_BMv2T1oeJExr3qZmUU-4zmzMgzHb3miglG2hSoYPtf8p90pZ7c8i_SjMqSGlWXn54goNIgG8qtyDWZzG3OuZOhgt99TaZXpGK8J1zyZ2K3QXxcNcrSEkJ3UdOP_FL9LiBO4d5zbHC4SeizdiCl8Ri2pr8p4EThdP4zkE7GeOiRKPeaVv5NEd70s3FzYaCgYKAVESARcSFQHGX2MiB7viHjVU5ORVoNpD9r3xbQ0206', NULL, '2026-04-26 05:14:30', '2026-04-26 05:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `link`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'uploads/custom-images/wsus-img-2024-06-06-07-11-34-2262.png', 1, '2024-06-06 01:11:34', '2024-06-06 01:11:34'),
(2, 'https://www.linkedin.com/', 'uploads/custom-images/wsus-img-2024-06-06-07-12-11-1915.png', 1, '2024-06-06 01:12:11', '2024-06-06 01:12:11'),
(3, 'https://web.whatsapp.com/', 'uploads/custom-images/wsus-img-2024-06-23-01-11-17-2195.png', 1, '2024-06-06 01:12:40', '2024-06-23 07:11:17'),
(4, 'https://www.youtube.com/', 'uploads/custom-images/wsus-img-2024-06-06-07-15-41-1121.png', 1, '2024-06-06 01:12:58', '2024-06-06 01:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alabama', 1, 1, '2024-06-22 09:38:51', '2024-06-22 09:38:51'),
(2, 'Alaska', 1, 1, '2024-06-22 09:39:03', '2024-06-22 09:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/testimonial-1.jpg', '5', 1, '2024-06-04 06:18:56', '2024-06-04 06:19:56'),
(2, 'uploads/custom-images/testimonial-2.jpg', '4', 1, '2024-06-04 06:22:18', '2024-06-04 06:22:18'),
(3, 'uploads/custom-images/testimonial-3.jpg', '5', 1, '2024-06-04 06:24:22', '2024-06-04 06:24:22'),
(4, 'uploads/custom-images/testimonial-4.jpg', '5', 1, '2024-06-04 06:24:22', '2024-06-04 06:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `testimonial_id` bigint UNSIGNED NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `lang_code`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Sarah K', 'Marketing Manager', 'I was hesitant about online learning at first, but this platform has completely changed my mind. The courses are well-organized and informative,', '2024-06-04 06:18:56', '2024-06-04 06:20:19'),
(2, 1, 'hi', 'सारा के', 'विपणन प्रबंधक', 'मैं पहले ऑनलाइन सीखने से झिझक रहा था, लेकिन इस मंच ने मेरा मन पूरी तरह से बदल दिया है। पाठ्यक्रम सुव्यवस्थित और जानकारीपूर्ण हैं,', '2024-06-04 06:18:56', '2024-06-04 06:20:56'),
(4, 2, 'en', 'David L', 'Accountant', 'I took the \'Excel for Beginners\' course and was amazed at how much I learned in such a short time. The instructor explained everything clearly', '2024-06-04 06:22:18', '2024-06-04 06:22:18'),
(5, 2, 'hi', 'डेविड एल.', 'मुनीम', 'मैंने \'एक्सेल फॉर बिगिनर्स\' कोर्स लिया और यह देखकर आश्चर्यचकित रह गया कि मैंने इतने कम समय में कितना कुछ सीखा। प्रशिक्षक ने सब कुछ स्पष्ट रूप से समझाया', '2024-06-04 06:22:18', '2024-06-04 06:22:39'),
(7, 3, 'en', 'Emily S', 'Social Media Specialist', 'I had the pleasure of taking a course on social media marketing taught by Instructor Their expertise in the field was evident  and their passion', '2024-06-04 06:24:22', '2024-06-04 06:25:50'),
(8, 3, 'hi', 'एमिली एस', 'सोशल मीडिया विशेषज्ञ', 'मुझे प्रशिक्षक द्वारा पढ़ाए गए सोशल मीडिया मार्केटिंग पर पाठ्यक्रम लेने का सौभाग्य मिला, क्षेत्र में उनकी विशेषज्ञता स्पष्ट थी', '2024-06-04 06:24:22', '2024-06-04 06:24:42'),
(10, 4, 'en', 'Alex J', 'Marketing Specialist', 'This platform has completely transformed my learning experience. The courses are well-structured, the content is top-notch, and the instructors are truly experts in their fields.', '2024-06-04 06:24:22', '2024-06-04 06:25:50'),
(11, 4, 'hi', 'एलेक्स जे', 'विपणन विशेषज्ञ', 'इस प्लेटफ़ॉर्म ने मेरे सीखने के अनुभव को पूरी तरह से बदल दिया है। पाठ्यक्रम अच्छी तरह से संरचित हैं, सामग्री शीर्ष स्तर की है, और प्रशिक्षक वास्तव में अपने क्षेत्रों में विशेषज्ञ हैं।', '2024-06-04 06:24:22', '2024-06-04 06:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('instructor','student') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'student',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `is_banned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'no',
  `verification_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forget_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '/uploads/website-images/frontend-avatar.png',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '/uploads/website-images/frontend-cover.png',
  `wallet_balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `short_bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `github` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `is_banned`, `verification_token`, `forget_password_token`, `phone`, `address`, `image`, `cover`, `wallet_balance`, `bio`, `short_bio`, `job_title`, `gender`, `age`, `country_id`, `state`, `city`, `facebook`, `twitter`, `linkedin`, `website`, `github`) VALUES
(1002, 'Stepupmark Instructor', 'instructor@stepupmark.com', 'instructor', '2024-06-06 01:18:53', '$2y$12$2xP4RA260erQ0dzbfLRhEuyJtSz8F13CfjvcJH90F1z0.9Uvv.E4S', NULL, '2024-06-06 01:18:53', '2026-03-11 05:49:53', 'active', 'no', NULL, NULL, NULL, NULL, 'uploads/custom-images/wsus-img-2024-06-06-07-47-18-5110.webp', '/uploads/website-images/frontend-cover.png', 179.90, 'I am a web developer with a vast array of knowledge in many different front end and back end languages, responsive frameworks, databases, and best code practices. My objective is simply to be the best web developer that I can be and to contribute to the technology industry all that I know and can do. I am dedicated to perfecting my craft by learning from more seasoned developers, remaining humble, and continuously making strides to learn all that I can about development.\n\ndeveloper with a vast array of knowledge in many different front end and back end languages, responsive frameworks, databases, and best code practices. My objective is simply to be the best web developer that I can be and to contribute to the technology industry all that I know and can do. I am dedicated to perfecting my craft by learning from more seasoned developers, remaining humble, and continuously making strides to learn all that I can about development.\n\na vast array of knowledge in many different front end and back end languages, responsive frameworks, databases, and best code practices. My objective is simply to be the best web developer that I can be and to contribute to the technology industry all that I know and can do. I am dedicated to perfecting my craft by learning from more seasoned developers, remaining humble, and continuously making strides to learn all that I can about development.', 'I am a web developer with a vast array of knowledge in many different front end and back end languages, responsive frameworks, databases, and best code practices', 'Developer', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.websolutionus.com/', 'https://www.github.com/'),
(1019, 'hyugro golla', 'hyugro.2329@gmail.com', 'student', '2026-03-11 01:36:17', '$2y$12$qSwjwQDzCNoVrSsVPkghGeFU4aKCLnq/9tfIjErec4G8ZTfI8DokS', 'xnvRclruNLsUn8ZyVtjJEtWnlSEjJBgt4kNTIWaQBZXNtXXLM1V4nr0Dr1u0', '2026-03-11 01:36:18', '2026-03-11 01:36:18', 'active', 'no', 'utOJgvJKHKiqrb7ny7xWiKz1eJ30AFz34TeFB68xSvXNKXoQjbIYyVqZCU5ySIvTaq94nQ8cEy4xyFrf9mbipZWktKldxUx4pFhJ', NULL, NULL, NULL, '/uploads/website-images/frontend-avatar.png', '/uploads/website-images/frontend-cover.png', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1020, 'Bharat Jobs', 'bharatjobsalert09@gmail.com', 'student', '2026-03-11 04:48:57', '$2y$12$N0VNkVtymqGNxAuZYMI7luBetsFDuXsSbOwnOwIqFwgCI4ZkXoLS6', '0Wm2C8AJPdYBtmdax6ZyKVW10X92DGpjoFanfMXcLdFMo3Di9zOarqKyvAwv', '2026-03-11 04:48:57', '2026-03-11 04:48:57', 'active', 'no', 'J1R5eLMqVIPe6XmQBis8fGUqGisEdsaRA2H3itm6w4j9gCYNeYdzXKo46I91RIknvz8Q5MjcU6PxgrpL82aOKTDNVLZnBzALoNYh', NULL, NULL, NULL, '/uploads/website-images/frontend-avatar.png', '/uploads/website-images/frontend-cover.png', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1021, 'Step Up Mark Developers', 'stepupmark.developers@gmail.com', 'student', '2026-03-30 07:23:34', '$2y$12$hTGR7NyKfGXQnhBbkjgu4exR2CWuVN.hLJ7w/mPFBTHLjAn4PGBD6', 'brYamPCXR8EtEsnw2ulxLSwbzEo67VYbdtsxSzSDS4xb4AiYq8MIdBVxY96L', '2026-03-30 07:23:35', '2026-03-30 07:23:35', 'active', 'no', 'is2WWISbzjeFiL9yTCcqlALvCLl3YfzJZUx1dOWj2XvPSGeqzLnQCVw97f7r6o2uIt9KRGW518SHI66JmlQJsAybvj6IgPKNM6fr', NULL, NULL, NULL, '/uploads/website-images/frontend-avatar.png', '/uploads/website-images/frontend-cover.png', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1022, 'Kotha nithisha Yadav', 'kothanithishayadav@gmail.com', 'student', '2026-04-23 19:06:56', '$2y$12$rm2tBY4Qn.EJ/yQzdUvAKugBjl1pM8jqwo5L1cgUJLcFxzP1lNPrO', 'hwXHiAICKYNN53wm9ZeG5cybKdDjfEliWredWOIgSIa0NXGRjDvUHMfpYRRJ', '2026-04-23 19:06:56', '2026-04-23 19:06:56', 'active', 'no', '8ea9611inPoTtAy0nrJMXVgc8BOmn285oaYSrm4BM0fE7mf8YymREY6M4c83ilZHbi0igtgbxZKO0TH6OS2qqIuYPi0cqNT8FlsG', NULL, NULL, NULL, '/uploads/website-images/frontend-avatar.png', '/uploads/website-images/frontend-cover.png', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1023, 'kamal sanata', 'sanatakamal34@gmail.com', 'student', NULL, '$2y$12$vPJLn3zVynBFO/WP7oHuiu6JiEEUKgYvyIcBgm/S1TimxBeyKedr2', '2f2W08YfuMpxIp90RybHHdSZpJcnkwLKx7nNU0LLOkMe2rWu72agPhAVZcUu', '2026-04-26 05:12:41', '2026-04-26 05:12:41', 'active', 'no', 'lYFqqbefR2F6suuIcsHpVNw8KLLYOFRJKTmdvNrctUNELacN8crhL6s2xXDPkV5683RHdZIDq4SZaxQtt4iEf2ePy0UMDAQFuCTd', NULL, NULL, NULL, '/uploads/website-images/frontend-avatar.png', '/uploads/website-images/frontend-cover.png', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_education`
--

CREATE TABLE `user_education` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_education`
--

INSERT INTO `user_education` (`id`, `user_id`, `organization`, `degree`, `start_date`, `end_date`, `current`, `created_at`, `updated_at`) VALUES
(1, 1001, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(2, 1001, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(3, 1001, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(4, 1001, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(5, 1002, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(6, 1002, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(7, 1002, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(8, 1002, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(9, 1003, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(10, 1003, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(11, 1003, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(12, 1003, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(13, 1004, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(14, 1004, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(15, 1004, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(16, 1004, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(17, 1005, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(18, 1005, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(19, 1005, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(20, 1005, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(21, 1006, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(22, 1006, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(23, 1006, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(24, 1006, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(25, 1009, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(26, 1009, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(27, 1009, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(28, 1009, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(29, 1011, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(30, 1011, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(31, 1011, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(32, 1011, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(33, 1012, 'Complied Master from Stanford University', 'Masters', '2024-06-06', '2024-06-06', 1, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(34, 1012, 'Complied Bachelor from Oxford University', 'Bachelor', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(35, 1012, 'Complied Phd from Nevada University', 'Phd', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(36, 1012, 'Complied Master from UA University', 'Master', '2024-06-06', '2024-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_experiences`
--

CREATE TABLE `user_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current` tinyint(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_experiences`
--

INSERT INTO `user_experiences` (`id`, `user_id`, `company`, `position`, `start_date`, `end_date`, `current`, `created_at`, `updated_at`) VALUES
(1, 1001, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(2, 1001, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(3, 1001, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(4, 1001, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(5, 1002, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(6, 1002, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(7, 1002, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(8, 1002, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(9, 1003, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(10, 1003, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(11, 1003, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(12, 1003, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(13, 1004, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(14, 1004, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(15, 1004, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(16, 1004, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(17, 1005, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(18, 1005, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(19, 1005, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(20, 1005, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(21, 1006, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(22, 1006, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(23, 1006, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(24, 1006, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(25, 1009, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(26, 1009, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(27, 1009, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(28, 1009, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(29, 1011, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(30, 1011, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(31, 1011, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(32, 1011, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(33, 1012, 'Google', 'Developer', '2023-06-06', '2024-06-06', 001, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(34, 1012, 'Amazon', 'Developer', '2022-06-06', '2023-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(35, 1012, 'Microsoft', 'Developer', '2021-06-06', '2022-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53'),
(36, 1012, 'Apple', 'Developer', '2020-06-06', '2021-06-06', NULL, '2024-06-06 01:18:53', '2024-06-06 01:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_skill_topics`
--

CREATE TABLE `user_skill_topics` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `min_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `max_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', 50.00, 1000.00, '<p>Please provide the necessary information for payment</p>\r\n<ol>\r\n<li>Your payment email</li>\r\n<li>Your Holder name</li>\r\n</ol>', 'active', '2024-06-03 21:47:07', '2024-06-03 21:47:07'),
(2, 'Stripe', 50.00, 1000.00, '<p>Please provide the necessary information for payment</p>\r\n<ol>\r\n<li>Your payment email</li>\r\n<li>Your Holder name</li>\r\n</ol>', 'active', '2024-06-03 21:47:35', '2024-06-03 21:47:35'),
(3, 'Razorpay', 50.00, 1000.00, '<p>Please provide the necessary information for payment</p>\r\n<ol>\r\n<li>Your payment email</li>\r\n<li>Your Holder name</li>\r\n</ol>', 'active', '2024-06-03 21:48:00', '2024-06-03 21:48:00'),
(4, 'Bank', 50.00, 1000.00, '<p>Please provide the necessary information for payment</p>\r\n<ol>\r\n<li>Your Account number</li>\r\n<li>Your branch name</li>\r\n<li>Your routing number</li>\r\n</ol>', 'active', '2024-06-03 21:49:01', '2024-06-03 21:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `current_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `withdraw_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `approved_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `user_id`, `method`, `current_amount`, `withdraw_amount`, `account_info`, `status`, `approved_date`, `created_at`, `updated_at`) VALUES
(1, 1001, 'PayPal', 220.70, 50.00, 'My email and holder name is\r\n\r\n1. instructor@gmail.com\r\n2. instructor', 'pending', NULL, '2024-06-10 04:12:55', '2024-06-10 04:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_credentials`
--

CREATE TABLE `zoom_credentials` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_histories`
--
ALTER TABLE `banned_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_payments`
--
ALTER TABLE `basic_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkash_p_g_models`
--
ALTER TABLE `bkash_p_g_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_translations_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_course_id_foreign` (`course_id`);

--
-- Indexes for table `certificate_builders`
--
ALTER TABLE `certificate_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_builder_items`
--
ALTER TABLE `certificate_builder_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_sections`
--
ALTER TABLE `contact_sections`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_histories`
--
ALTER TABLE `coupon_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_category_translations`
--
ALTER TABLE `course_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapters_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_chapter_items`
--
ALTER TABLE `course_chapter_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapter_items_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_chapter_items_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `course_chapter_lessons`
--
ALTER TABLE `course_chapter_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapter_lessons_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_chapter_lessons_chapter_id_foreign` (`chapter_id`),
  ADD KEY `course_chapter_lessons_chapter_item_id_foreign` (`chapter_item_id`);

--
-- Indexes for table `course_delete_requests`
--
ALTER TABLE `course_delete_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_languages`
--
ALTER TABLE `course_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_levels`
--
ALTER TABLE `course_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_level_translations`
--
ALTER TABLE `course_level_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_live_classes`
--
ALTER TABLE `course_live_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_live_classes_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `course_partner_instructors`
--
ALTER TABLE `course_partner_instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_progress`
--
ALTER TABLE `course_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_selected_filter_options`
--
ALTER TABLE `course_selected_filter_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_selected_languages`
--
ALTER TABLE `course_selected_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_selected_levels`
--
ALTER TABLE `course_selected_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_p_g`
--
ALTER TABLE `crypto_p_g`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_addons`
--
ALTER TABLE `custom_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_addons_name_index` (`name`),
  ADD KEY `idx_custom_addons_status` (`status`);

--
-- Indexes for table `custom_codes`
--
ALTER TABLE `custom_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page_translations`
--
ALTER TABLE `custom_page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_order_id_foreign` (`order_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_course_user`
--
ALTER TABLE `favorite_course_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_course_user_user_id_foreign` (`user_id`),
  ADD KEY `favorite_course_user_course_id_foreign` (`course_id`);

--
-- Indexes for table `featured_course_sections`
--
ALTER TABLE `featured_course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_instructors`
--
ALTER TABLE `featured_instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_instructor_translations`
--
ALTER TABLE `featured_instructor_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_settings`
--
ALTER TABLE `footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `homes_slug_unique` (`slug`);

--
-- Indexes for table `instructor_earnings_holds`
--
ALTER TABLE `instructor_earnings_holds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_earnings_holds_instructor_id_foreign` (`instructor_id`),
  ADD KEY `instructor_earnings_holds_order_id_foreign` (`order_id`);

--
-- Indexes for table `instructor_requests`
--
ALTER TABLE `instructor_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_request_settings`
--
ALTER TABLE `instructor_request_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_request_setting_translations`
--
ALTER TABLE `instructor_request_setting_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jitsi_settings`
--
ALTER TABLE `jitsi_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jitsi_settings_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `lesson_questions`
--
ALTER TABLE `lesson_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_replies`
--
ALTER TABLE `lesson_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_replies_question_id_foreign` (`question_id`);

--
-- Indexes for table `marketing_settings`
--
ALTER TABLE `marketing_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_translations_menu_item_id_foreign` (`menu_item_id`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_translations_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `mercadopagopg`
--
ALTER TABLE `mercadopagopg`
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
-- Indexes for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quiz_question_answers`
--
ALTER TABLE `quiz_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_home_id_foreign` (`home_id`);

--
-- Indexes for table `section_settings`
--
ALTER TABLE `section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_translations_section_id_foreign` (`section_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialite_credentials`
--
ALTER TABLE `socialite_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_translations_lang_code_index` (`lang_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_education`
--
ALTER TABLE `user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_experiences`
--
ALTER TABLE `user_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_skill_topics`
--
ALTER TABLE `user_skill_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_credentials`
--
ALTER TABLE `zoom_credentials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoom_credentials_instructor_id_foreign` (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banned_histories`
--
ALTER TABLE `banned_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_payments`
--
ALTER TABLE `basic_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `bkash_p_g_models`
--
ALTER TABLE `bkash_p_g_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_builders`
--
ALTER TABLE `certificate_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_builder_items`
--
ALTER TABLE `certificate_builder_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_sections`
--
ALTER TABLE `contact_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_histories`
--
ALTER TABLE `coupon_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `course_category_translations`
--
ALTER TABLE `course_category_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `course_chapters`
--
ALTER TABLE `course_chapters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `course_chapter_items`
--
ALTER TABLE `course_chapter_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2451;

--
-- AUTO_INCREMENT for table `course_chapter_lessons`
--
ALTER TABLE `course_chapter_lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1961;

--
-- AUTO_INCREMENT for table `course_delete_requests`
--
ALTER TABLE `course_delete_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_languages`
--
ALTER TABLE `course_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_levels`
--
ALTER TABLE `course_levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_level_translations`
--
ALTER TABLE `course_level_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_live_classes`
--
ALTER TABLE `course_live_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_partner_instructors`
--
ALTER TABLE `course_partner_instructors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_progress`
--
ALTER TABLE `course_progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `course_reviews`
--
ALTER TABLE `course_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `course_selected_filter_options`
--
ALTER TABLE `course_selected_filter_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_selected_languages`
--
ALTER TABLE `course_selected_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `course_selected_levels`
--
ALTER TABLE `course_selected_levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `crypto_p_g`
--
ALTER TABLE `crypto_p_g`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_addons`
--
ALTER TABLE `custom_addons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_codes`
--
ALTER TABLE `custom_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_page_translations`
--
ALTER TABLE `custom_page_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `favorite_course_user`
--
ALTER TABLE `favorite_course_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_course_sections`
--
ALTER TABLE `featured_course_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_instructors`
--
ALTER TABLE `featured_instructors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_instructor_translations`
--
ALTER TABLE `featured_instructor_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_settings`
--
ALTER TABLE `footer_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `instructor_earnings_holds`
--
ALTER TABLE `instructor_earnings_holds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_requests`
--
ALTER TABLE `instructor_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instructor_request_settings`
--
ALTER TABLE `instructor_request_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructor_request_setting_translations`
--
ALTER TABLE `instructor_request_setting_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jitsi_settings`
--
ALTER TABLE `jitsi_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson_questions`
--
ALTER TABLE `lesson_questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson_replies`
--
ALTER TABLE `lesson_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketing_settings`
--
ALTER TABLE `marketing_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mercadopagopg`
--
ALTER TABLE `mercadopagopg`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `quiz_question_answers`
--
ALTER TABLE `quiz_question_answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1961;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `section_settings`
--
ALTER TABLE `section_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_translations`
--
ALTER TABLE `section_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialite_credentials`
--
ALTER TABLE `socialite_credentials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_experiences`
--
ALTER TABLE `user_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_skill_topics`
--
ALTER TABLE `user_skill_topics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zoom_credentials`
--
ALTER TABLE `zoom_credentials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD CONSTRAINT `blog_category_translations_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD CONSTRAINT `course_chapters_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_chapter_items`
--
ALTER TABLE `course_chapter_items`
  ADD CONSTRAINT `course_chapter_items_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `course_chapters` (`id`),
  ADD CONSTRAINT `course_chapter_items_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_chapter_lessons`
--
ALTER TABLE `course_chapter_lessons`
  ADD CONSTRAINT `course_chapter_lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `course_chapters` (`id`),
  ADD CONSTRAINT `course_chapter_lessons_chapter_item_id_foreign` FOREIGN KEY (`chapter_item_id`) REFERENCES `course_chapter_items` (`id`),
  ADD CONSTRAINT `course_chapter_lessons_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_live_classes`
--
ALTER TABLE `course_live_classes`
  ADD CONSTRAINT `course_live_classes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `course_chapter_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_course_user`
--
ALTER TABLE `favorite_course_user`
  ADD CONSTRAINT `favorite_course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_earnings_holds`
--
ALTER TABLE `instructor_earnings_holds`
  ADD CONSTRAINT `instructor_earnings_holds_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_earnings_holds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jitsi_settings`
--
ALTER TABLE `jitsi_settings`
  ADD CONSTRAINT `jitsi_settings_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_replies`
--
ALTER TABLE `lesson_replies`
  ADD CONSTRAINT `lesson_replies_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `lesson_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_home_id_foreign` FOREIGN KEY (`home_id`) REFERENCES `homes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `section_translations`
--
ALTER TABLE `section_translations`
  ADD CONSTRAINT `section_translations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zoom_credentials`
--
ALTER TABLE `zoom_credentials`
  ADD CONSTRAINT `zoom_credentials_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
