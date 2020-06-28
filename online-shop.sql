-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 04:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-05-16 20:44:50', '2020-05-16 20:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(2, 'Desktops', 'desktops', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(3, 'Mobile Phones', 'mobile-phones', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(4, 'Tablets', 'tablets', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(5, 'TVs', 'tvs', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(6, 'Digital Cameras', 'digital-cameras', '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(7, 'Appliances', 'appliances', '2020-05-16 20:44:15', '2020-05-16 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(79, 76, 7, '2020-05-18 20:45:33', '2020-05-18 20:45:33'),
(80, 77, 7, '2020-05-18 20:46:08', '2020-05-18 20:46:08'),
(81, 72, 7, '2020-05-18 20:46:24', '2020-05-18 20:46:24'),
(82, 73, 7, '2020-05-18 20:46:33', '2020-05-18 20:46:33'),
(83, 74, 7, '2020-05-18 20:46:43', '2020-05-18 20:46:43'),
(84, 75, 7, '2020-05-18 20:46:51', '2020-05-18 20:46:51'),
(85, 65, 6, '2020-05-18 20:47:01', '2020-05-18 20:47:01'),
(86, 66, 6, '2020-05-18 20:47:14', '2020-05-18 20:47:14'),
(87, 67, 6, '2020-05-18 20:47:23', '2020-05-18 20:47:23'),
(88, 68, 6, '2020-05-18 20:47:30', '2020-05-18 20:47:30'),
(89, 69, 6, '2020-05-18 20:47:39', '2020-05-18 20:47:39'),
(90, 70, 7, '2020-05-18 20:47:53', '2020-05-18 20:47:53'),
(91, 71, 7, '2020-05-18 20:48:04', '2020-05-18 20:48:04'),
(92, 60, 5, '2020-05-18 20:48:16', '2020-05-18 20:48:16'),
(93, 61, 5, '2020-05-18 20:48:27', '2020-05-18 20:48:27'),
(94, 62, 6, '2020-05-18 20:48:35', '2020-05-18 20:48:35'),
(95, 63, 6, '2020-05-18 20:48:44', '2020-05-18 20:48:44'),
(96, 64, 6, '2020-05-18 20:48:52', '2020-05-18 20:48:52'),
(97, 50, 4, '2020-05-18 20:49:03', '2020-05-18 20:49:03'),
(98, 51, 4, '2020-05-18 20:49:22', '2020-05-18 20:49:22'),
(99, 52, 3, '2020-05-18 20:49:45', '2020-05-18 20:49:45'),
(100, 53, 3, '2020-05-18 20:50:00', '2020-05-18 20:50:00'),
(101, 54, 5, '2020-05-18 20:50:11', '2020-05-18 20:50:11'),
(102, 55, 5, '2020-05-18 20:50:31', '2020-05-18 20:50:31'),
(103, 56, 5, '2020-05-18 20:50:42', '2020-05-18 20:50:42'),
(104, 57, 5, '2020-05-18 20:50:54', '2020-05-18 20:50:54'),
(105, 58, 5, '2020-05-18 20:51:05', '2020-05-18 20:51:05'),
(106, 59, 5, '2020-05-18 20:51:26', '2020-05-18 20:51:26'),
(107, 43, 3, '2020-05-18 20:51:38', '2020-05-18 20:51:38'),
(108, 44, 3, '2020-05-18 20:51:50', '2020-05-18 20:51:50'),
(109, 45, 3, '2020-05-18 20:52:01', '2020-05-18 20:52:01'),
(110, 46, 3, '2020-05-18 20:52:16', '2020-05-18 20:52:16'),
(111, 47, 3, '2020-05-18 20:52:32', '2020-05-18 20:52:32'),
(112, 48, 3, '2020-05-18 20:52:44', '2020-05-18 20:52:44'),
(113, 49, 3, '2020-05-18 20:52:56', '2020-05-18 20:52:56'),
(114, 35, 2, '2020-05-18 20:53:08', '2020-05-18 20:53:08'),
(115, 36, 2, '2020-05-18 20:53:20', '2020-05-18 20:53:20'),
(116, 37, 2, '2020-05-18 20:53:30', '2020-05-18 20:53:30'),
(117, 38, 4, '2020-05-18 20:53:48', '2020-05-18 20:53:48'),
(118, 39, 4, '2020-05-18 20:54:37', '2020-05-18 20:54:37'),
(119, 40, 4, '2020-05-18 20:54:55', '2020-05-18 20:54:55'),
(120, 41, 4, '2020-05-18 20:55:10', '2020-05-18 20:55:10'),
(121, 42, 4, '2020-05-18 20:55:22', '2020-05-18 20:55:22'),
(122, 30, 2, '2020-05-18 20:55:31', '2020-05-18 20:55:31'),
(123, 31, 2, '2020-05-18 20:55:42', '2020-05-18 20:55:42'),
(124, 32, 2, '2020-05-18 20:55:52', '2020-05-18 20:55:52'),
(125, 33, 2, '2020-05-18 20:56:01', '2020-05-18 20:56:01'),
(126, 34, 2, '2020-05-18 20:56:11', '2020-05-18 20:56:11'),
(127, 22, 1, '2020-05-18 20:56:23', '2020-05-18 20:56:23'),
(128, 23, 1, '2020-05-18 20:56:35', '2020-05-18 20:56:35'),
(129, 24, 1, '2020-05-18 20:56:43', '2020-05-18 20:56:43'),
(130, 25, 1, '2020-05-18 20:56:54', '2020-05-18 20:56:54'),
(131, 26, 1, '2020-05-18 20:57:02', '2020-05-18 20:57:02'),
(132, 27, 1, '2020-05-18 20:57:11', '2020-05-18 20:57:11'),
(133, 28, 1, '2020-05-18 20:57:20', '2020-05-18 20:57:20'),
(134, 29, 1, '2020-05-18 20:57:29', '2020-05-18 20:57:29'),
(135, 16, 1, '2020-05-18 20:57:38', '2020-05-18 20:57:38'),
(136, 17, 1, '2020-05-18 20:57:47', '2020-05-18 20:57:47'),
(137, 18, 1, '2020-05-18 20:57:58', '2020-05-18 20:57:58'),
(138, 19, 1, '2020-05-18 20:58:07', '2020-05-18 20:58:07'),
(139, 20, 1, '2020-05-18 20:58:20', '2020-05-18 20:58:20'),
(140, 21, 1, '2020-05-18 20:58:32', '2020-05-18 20:58:32'),
(141, 8, 1, '2020-05-18 20:58:44', '2020-05-18 20:58:44'),
(142, 9, 1, '2020-05-18 20:58:53', '2020-05-18 20:58:53'),
(143, 10, 1, '2020-05-18 20:59:02', '2020-05-18 20:59:02'),
(144, 11, 1, '2020-05-18 20:59:11', '2020-05-18 20:59:11'),
(145, 12, 1, '2020-05-18 20:59:19', '2020-05-18 20:59:19'),
(146, 13, 1, '2020-05-18 20:59:27', '2020-05-18 20:59:27'),
(147, 14, 1, '2020-05-18 20:59:36', '2020-05-18 20:59:36'),
(148, 15, 1, '2020-05-18 20:59:45', '2020-05-18 20:59:45'),
(150, 2, 1, '2020-05-18 21:00:04', '2020-05-18 21:00:04'),
(151, 3, 1, '2020-05-18 21:00:14', '2020-05-18 21:00:14'),
(152, 3, 2, '2020-05-18 21:00:14', '2020-05-18 21:00:14'),
(153, 4, 1, '2020-05-18 21:00:22', '2020-05-18 21:00:22'),
(154, 5, 1, '2020-05-18 21:00:30', '2020-05-18 21:00:30'),
(155, 6, 1, '2020-05-18 21:00:37', '2020-05-18 21:00:37'),
(156, 7, 1, '2020-05-18 21:00:46', '2020-05-18 21:00:46'),
(157, 1, 1, '2020-05-18 21:05:33', '2020-05-18 21:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'value', 3000, NULL, '2020-05-16 20:44:15', '2020-05-16 20:44:15'),
(2, 'ABD123', 'percent_off', NULL, 50, '2020-05-16 20:44:15', '2020-05-16 20:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"yes\",\"off\":\"no\"}', 7),
(63, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(65, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(66, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 9),
(67, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(72, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 9, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"fixed\":\"fixed value\",\"percent\":\"percent off\"}}', 3),
(75, 9, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(76, 9, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(79, 10, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(80, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(81, 10, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 10, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(83, 10, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(84, 10, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 1, '{}', 6),
(85, 10, 'billing_province', 'text', 'Billing Province', 1, 1, 1, 1, 1, 1, '{}', 7),
(86, 10, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 1, 1, 1, 1, 1, '{}', 8),
(87, 10, 'billing_phone', 'text', 'Billing Phone', 1, 1, 1, 1, 1, 1, '{}', 9),
(88, 10, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 1, '{}', 10),
(89, 10, 'billing_discount', 'text', 'Billing Discount', 1, 1, 1, 1, 1, 1, '{}', 11),
(90, 10, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 1, 1, 1, 1, 1, '{}', 12),
(91, 10, 'billing_subtotal', 'text', 'Billing Subtotal', 1, 1, 1, 1, 1, 1, '{}', 13),
(92, 10, 'billing_tax', 'text', 'Billing Tax', 1, 1, 1, 1, 1, 1, '{}', 14),
(93, 10, 'billing_total', 'text', 'Billing Total', 1, 1, 1, 1, 1, 1, '{}', 15),
(94, 10, 'payment_getway', 'text', 'Payment Getway', 1, 1, 1, 1, 1, 1, '{}', 16),
(95, 10, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 1, 1, '{\"on\":\"delivered\",\"off\":\"shipped\"}', 17),
(96, 10, 'error', 'text', 'Error', 0, 1, 1, 1, 1, 1, '{}', 18),
(97, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(98, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(99, 7, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-05-16 20:44:41', '2020-05-16 20:44:41'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-05-16 20:44:41', '2020-05-16 20:44:41'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-05-16 20:44:41', '2020-05-16 20:44:41'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-05-16 20:44:49', '2020-05-16 20:44:49'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, '\\App\\Http\\Controllers\\voyager\\ProductsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-18 20:43:34', '2020-06-17 20:22:50'),
(8, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-18 21:12:44', '2020-05-18 21:12:44'),
(9, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-20 17:25:03', '2020-05-20 17:26:17'),
(10, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', NULL, '\\App\\Http\\Controllers\\voyager\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-22 21:41:44', '2020-05-24 21:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-05-16 20:44:43', '2020-05-16 20:44:43'),
(2, 'main', '2020-05-20 17:30:54', '2020-05-20 17:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-05-16 20:44:43', '2020-05-16 20:44:43', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2020-05-16 20:44:43', '2020-05-22 21:45:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2020-05-16 20:44:44', '2020-05-22 21:45:12', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2020-05-16 20:44:44', '2020-05-22 21:45:12', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2020-05-16 20:44:44', '2020-05-22 21:45:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-05-16 20:44:44', '2020-05-18 20:44:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-05-16 20:44:44', '2020-05-18 20:44:06', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-05-16 20:44:44', '2020-05-18 20:44:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-05-16 20:44:44', '2020-05-18 20:44:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2020-05-16 20:44:44', '2020-05-22 21:45:13', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2020-05-16 20:44:49', '2020-05-22 21:45:13', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2020-05-16 20:44:52', '2020-05-22 21:45:13', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2020-05-16 20:44:54', '2020-05-22 21:45:13', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-05-16 20:44:58', '2020-05-18 20:44:06', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 3, '2020-05-18 20:43:34', '2020-05-22 21:45:15', 'voyager.products.index', NULL),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2020-05-18 21:12:45', '2020-05-22 21:45:15', 'voyager.category.index', NULL),
(17, 1, 'Coupons', '', '_self', 'voyager-dollar', '#000000', NULL, 5, '2020-05-20 17:25:04', '2020-05-22 21:45:15', 'voyager.coupons.index', 'null'),
(18, 2, 'shop', 'shop', '_self', NULL, '#000000', NULL, 13, '2020-05-20 17:31:10', '2020-05-20 17:31:10', NULL, ''),
(20, 2, 'Blog', '#', '_self', NULL, '#000000', NULL, 15, '2020-05-20 17:31:55', '2020-05-20 17:31:55', NULL, ''),
(21, 2, 'about us', '#', '_self', NULL, '#000000', NULL, 16, '2020-05-20 17:32:25', '2020-05-20 17:32:25', NULL, ''),
(22, 1, 'Orders', '', '_self', 'voyager-documentation', '#000000', NULL, 2, '2020-05-22 21:41:44', '2020-05-22 21:45:21', 'voyager.orders.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_04_30_002410_create_products_table', 1),
(29, '2020_04_30_184838_create_category_table', 1),
(30, '2020_04_30_202439_create_category_product_table', 1),
(31, '2020_05_03_011615_create_coupons_table', 1),
(32, '2020_05_06_220152_add_image_to_products_table', 1),
(33, '2020_05_14_013438_create_orders_table', 1),
(34, '2020_05_14_234654_create_order_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL DEFAULT 0,
  `billing_tax` int(11) NOT NULL DEFAULT 0,
  `billing_total` int(11) NOT NULL DEFAULT 0,
  `payment_getway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_getway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, 2, 'newuser@user.com', 'youssef', 'sadsafsdaf', 'fdsfdsa', 'saf', 'dsfdsg', 'fdsfsd', 'ASFASDF', 3000, 'ABC123', 19400, 0, 0, 'stripe', 1, NULL, '2020-05-16 20:47:00', '2020-05-24 21:48:24'),
(2, 2, 'newuser@user.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'fdsaf', 'dsafdsa', 'dsfadsaf', 3000, 'ABC123', 10200, 0, 0, 'stripe', 1, NULL, '2020-05-16 21:07:00', '2020-05-24 21:51:21'),
(3, 2, 'newuser@user.com', 'sdfdsafdsa', 'sadsafsdaf', 'fdsafdsa', 'saf', 'fdsaf', 'fdsfsd', 'ASFDSA', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-20 19:35:08', '2020-05-20 19:35:08'),
(4, 1, 'admin@admin.com', 'sdfdsafdsa', 'sadsafsdaf', 'fdsafdsa', 'saf', 'dsfdsg', 'fdsfsd', 'ASFDSA', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:45:22', '2020-05-25 21:45:22'),
(5, 1, 'admin@admin.com', 'sdfdsafdsa', 'sadsafsdaf', 'fdsafdsa', 'saf', 'dsfdsg', 'fdsfsd', 'ASFDSA', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:48:20', '2020-05-25 21:48:20'),
(6, 1, 'admin@admin.com', 'sdfdsafdsa', 'sadsafsdaf', 'fdsafdsa', 'saf', 'dsfdsg', 'fdsfsd', 'ASFDSA', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:51:15', '2020-05-25 21:51:15'),
(7, 1, 'admin@admin.com', 'sdfdsafdsa', 'dsaf', 'fdsafdsa', 'saf', 'fdsaf', 'fdsfsd', 'dsfadsaf', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:52:46', '2020-05-25 21:52:46'),
(8, 1, 'admin@admin.com', 'sdfdsafdsa', 'dsaf', 'fdsafdsa', 'saf', 'fdsaf', 'fdsfsd', 'dsfadsaf', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:52:46', '2020-05-25 21:52:46'),
(9, NULL, 'admin@user.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'dsfdsg', 'fdsfsd', 'dsfadsaf', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:54:15', '2020-05-25 21:54:15'),
(10, NULL, 'admin@user.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'dsfdsg', 'fdsfsd', 'dsfadsaf', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-25 21:57:17', '2020-05-25 21:57:17'),
(11, NULL, 'youssefjou@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'DSAFD', 'dsafdsa', 'dsfadsaf', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-05-26 00:45:28', '2020-05-26 00:45:28'),
(12, NULL, 'hamdy@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'DSAFD', 'DSAF', 'ASFDSA', 6100, 'ABD123', 18300, 0, 0, 'stripe', 0, NULL, '2020-06-16 22:06:34', '2020-06-16 22:06:34'),
(13, NULL, 'hamdy@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'DSAFD', 'DSAF', 'ASFDSA', 6100, 'ABD123', 18300, 0, 0, 'stripe', 0, NULL, '2020-06-16 22:07:34', '2020-06-16 22:07:34'),
(14, NULL, 'hamdy@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'DSAFD', 'DSAF', 'ASFDSA', 6100, 'ABD123', 18300, 0, 0, 'stripe', 0, NULL, '2020-06-16 22:09:02', '2020-06-16 22:09:02'),
(15, NULL, 'hamdy@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'DSAFD', 'DSAF', 'ASFDSA', 6100, 'ABD123', 18300, 0, 0, 'stripe', 0, NULL, '2020-06-16 22:10:38', '2020-06-16 22:10:38'),
(16, NULL, 'hamdy@gmail.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'saf', 'dsfdsg', 'dsafdsa', 'dsfadsaf', 0, '0', 48800, 0, 0, 'stripe', 0, NULL, '2020-06-17 21:00:42', '2020-06-17 21:00:42'),
(17, 15, 'admins12@admin.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'saf', 'dsfdsg', 'dsafdsa', 'dsfadsaf', 0, '0', 22400, 0, 0, 'stripe', 0, NULL, '2020-06-21 21:14:51', '2020-06-21 21:14:51'),
(18, 1, 'admin@admin.com', 'youssef', 'sadsafsdaf', 'fdsafdsa', 'dsaf', 'fdsaf', 'dsafdsa', 'ASFASDF', 0, '0', 11200, 0, 0, 'stripe', 0, NULL, '2020-06-27 08:27:28', '2020-06-27 08:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-05-16 20:47:53', '2020-05-16 20:47:53'),
(2, 1, 38, 1, '2020-05-16 20:47:53', '2020-05-16 20:47:53'),
(3, 2, 32, 1, '2020-05-16 21:07:34', '2020-05-16 21:07:34'),
(4, 3, 46, 1, '2020-05-20 19:35:09', '2020-05-20 19:35:09'),
(5, 4, 1, 1, '2020-05-25 21:45:22', '2020-05-25 21:45:22'),
(6, 5, 1, 1, '2020-05-25 21:48:20', '2020-05-25 21:48:20'),
(7, 6, 1, 1, '2020-05-25 21:51:15', '2020-05-25 21:51:15'),
(8, 7, 1, 1, '2020-05-25 21:52:46', '2020-05-25 21:52:46'),
(9, 8, 1, 1, '2020-05-25 21:52:46', '2020-05-25 21:52:46'),
(10, 9, 1, 1, '2020-05-25 21:54:15', '2020-05-25 21:54:15'),
(11, 10, 1, 1, '2020-05-25 21:57:17', '2020-05-25 21:57:17'),
(12, 11, 1, 1, '2020-05-26 00:45:28', '2020-05-26 00:45:28'),
(13, 12, 2, 2, '2020-06-16 22:06:35', '2020-06-16 22:06:35'),
(14, 13, 2, 2, '2020-06-16 22:07:34', '2020-06-16 22:07:34'),
(15, 14, 2, 2, '2020-06-16 22:09:02', '2020-06-16 22:09:02'),
(16, 15, 2, 2, '2020-06-16 22:10:38', '2020-06-16 22:10:38'),
(17, 16, 2, 4, '2020-06-17 21:00:42', '2020-06-17 21:00:42'),
(18, 17, 1, 1, '2020-06-21 21:14:51', '2020-06-21 21:14:51'),
(19, 17, 38, 1, '2020-06-21 21:14:51', '2020-06-21 21:14:51'),
(20, 18, 1, 1, '2020-06-27 08:27:28', '2020-06-27 08:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-05-16 20:44:55', '2020-05-16 20:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(2, 'browse_bread', NULL, '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(3, 'browse_database', NULL, '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(4, 'browse_media', NULL, '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(5, 'browse_compass', NULL, '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(6, 'browse_menus', 'menus', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(7, 'read_menus', 'menus', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(8, 'edit_menus', 'menus', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(9, 'add_menus', 'menus', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(10, 'delete_menus', 'menus', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(11, 'browse_roles', 'roles', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(12, 'read_roles', 'roles', '2020-05-16 20:44:45', '2020-05-16 20:44:45'),
(13, 'edit_roles', 'roles', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(14, 'add_roles', 'roles', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(15, 'delete_roles', 'roles', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(16, 'browse_users', 'users', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(17, 'read_users', 'users', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(18, 'edit_users', 'users', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(19, 'add_users', 'users', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(20, 'delete_users', 'users', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(21, 'browse_settings', 'settings', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(22, 'read_settings', 'settings', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(23, 'edit_settings', 'settings', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(24, 'add_settings', 'settings', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(25, 'delete_settings', 'settings', '2020-05-16 20:44:46', '2020-05-16 20:44:46'),
(26, 'browse_categories', 'categories', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(27, 'read_categories', 'categories', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(28, 'edit_categories', 'categories', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(29, 'add_categories', 'categories', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(30, 'delete_categories', 'categories', '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(31, 'browse_posts', 'posts', '2020-05-16 20:44:52', '2020-05-16 20:44:52'),
(32, 'read_posts', 'posts', '2020-05-16 20:44:52', '2020-05-16 20:44:52'),
(33, 'edit_posts', 'posts', '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(34, 'add_posts', 'posts', '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(35, 'delete_posts', 'posts', '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(36, 'browse_pages', 'pages', '2020-05-16 20:44:54', '2020-05-16 20:44:54'),
(37, 'read_pages', 'pages', '2020-05-16 20:44:54', '2020-05-16 20:44:54'),
(38, 'edit_pages', 'pages', '2020-05-16 20:44:54', '2020-05-16 20:44:54'),
(39, 'add_pages', 'pages', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(40, 'delete_pages', 'pages', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(41, 'browse_hooks', NULL, '2020-05-16 20:44:59', '2020-05-16 20:44:59'),
(42, 'browse_products', 'products', '2020-05-18 20:43:34', '2020-05-18 20:43:34'),
(43, 'read_products', 'products', '2020-05-18 20:43:34', '2020-05-18 20:43:34'),
(44, 'edit_products', 'products', '2020-05-18 20:43:34', '2020-05-18 20:43:34'),
(45, 'add_products', 'products', '2020-05-18 20:43:34', '2020-05-18 20:43:34'),
(46, 'delete_products', 'products', '2020-05-18 20:43:34', '2020-05-18 20:43:34'),
(47, 'browse_category', 'category', '2020-05-18 21:12:45', '2020-05-18 21:12:45'),
(48, 'read_category', 'category', '2020-05-18 21:12:45', '2020-05-18 21:12:45'),
(49, 'edit_category', 'category', '2020-05-18 21:12:45', '2020-05-18 21:12:45'),
(50, 'add_category', 'category', '2020-05-18 21:12:45', '2020-05-18 21:12:45'),
(51, 'delete_category', 'category', '2020-05-18 21:12:45', '2020-05-18 21:12:45'),
(52, 'browse_coupons', 'coupons', '2020-05-20 17:25:03', '2020-05-20 17:25:03'),
(53, 'read_coupons', 'coupons', '2020-05-20 17:25:03', '2020-05-20 17:25:03'),
(54, 'edit_coupons', 'coupons', '2020-05-20 17:25:03', '2020-05-20 17:25:03'),
(55, 'add_coupons', 'coupons', '2020-05-20 17:25:03', '2020-05-20 17:25:03'),
(56, 'delete_coupons', 'coupons', '2020-05-20 17:25:03', '2020-05-20 17:25:03'),
(57, 'browse_orders', 'orders', '2020-05-22 21:41:44', '2020-05-22 21:41:44'),
(58, 'read_orders', 'orders', '2020-05-22 21:41:44', '2020-05-22 21:41:44'),
(59, 'edit_orders', 'orders', '2020-05-22 21:41:44', '2020-05-22 21:41:44'),
(60, 'add_orders', 'orders', '2020-05-22 21:41:44', '2020-05-22 21:41:44'),
(61, 'delete_orders', 'orders', '2020-05-22 21:41:44', '2020-05-22 21:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-16 20:44:53', '2020-05-16 20:44:53'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-16 20:44:53', '2020-05-16 20:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `image`, `created_at`, `updated_at`, `images`, `quantity`) VALUES
(1, 'Laptop 1', 'laptop-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\3Li8LG04lrEKzg3BsBlG.jpg', '2020-05-16 20:44:00', '2020-06-27 08:27:28', '[\"products\\\\May2020\\\\4CYUeG6RuL3s1Gec0pYa.jpg\",\"products\\\\May2020\\\\1WoCQKQOjgc0bt0j9xb4.jpg\",\"products\\\\May2020\\\\gVfeX0WSt3ZgZ5kpikRC.jpg\"]', 3),
(2, 'Laptop 2', 'laptop-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\cMvCxStZX4LwsNgPtEiQ.jpg', '2020-05-16 20:44:00', '2020-06-17 21:00:43', NULL, 0),
(3, 'Laptop 3', 'laptop-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\mFF7BxEvdFHAhxZUJcij.jpg', '2020-05-16 20:44:00', '2020-05-18 21:00:14', NULL, NULL),
(4, 'Laptop 4', 'laptop-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\4DnXT6nrkrugQQ4GFnEr.jpg', '2020-05-16 20:44:00', '2020-05-18 21:00:22', NULL, NULL),
(5, 'Laptop 5', 'laptop-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\4uSD5XGmEDaIpmYyplUy.jpg', '2020-05-16 20:44:00', '2020-05-18 21:00:29', NULL, NULL),
(6, 'Laptop 6', 'laptop-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\XLgDGZ9CC9hISuwUDiBb.jpg', '2020-05-16 20:44:00', '2020-05-18 21:00:37', NULL, NULL),
(7, 'Laptop 7', 'laptop-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\15OwTpP4EKdtXjHDKjcH.jpg', '2020-05-16 20:44:00', '2020-05-18 21:00:46', NULL, NULL),
(8, 'Laptop 8', 'laptop-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\ZycbpCPmfvh6JkyjCZsV.jpg', '2020-05-16 20:44:00', '2020-05-18 20:58:43', NULL, NULL),
(9, 'Laptop 9', 'laptop-9', 'Is inch, 1TB SSD, 32GB RAM', 19200, '<p>Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\UWHu9VQZpUCpqDnuHpN3.jpg', '2020-05-16 20:44:00', '2020-05-18 20:58:53', NULL, NULL),
(10, 'Laptop 10', 'laptop-10', 'Is inch, 1TB SSD, 32GB RAM', 110200, '<p>Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\azehGEXzDNM1bzimgRnA.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:02', NULL, NULL),
(11, 'Laptop 11', 'laptop-11', 'Is inch, 1TB SSD, 32GB RAM', 111200, '<p>Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\WCtSykUI8U4E6RkbRS6y.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:11', NULL, NULL),
(12, 'Laptop 12', 'laptop-12', 'Is inch, 1TB SSD, 32GB RAM', 112200, '<p>Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\swfS90JSLm4VV5rFZyHp.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:19', NULL, NULL),
(13, 'Laptop 13', 'laptop-13', 'Is inch, 1TB SSD, 32GB RAM', 113200, '<p>Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\yR5YHJghRWyC0ddSGFlj.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:27', NULL, NULL),
(14, 'Laptop 14', 'laptop-14', 'Is inch, 1TB SSD, 32GB RAM', 114200, '<p>Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\Q5nTcP4HlR36kRrMrgoe.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:36', NULL, NULL),
(15, 'Laptop 15', 'laptop-15', 'Is inch, 1TB SSD, 32GB RAM', 115200, '<p>Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\uZRhaGOFRtWkFwSHRqAX.jpg', '2020-05-16 20:44:00', '2020-05-18 20:59:45', NULL, NULL),
(16, 'Laptop 16', 'laptop-16', 'Is inch, 1TB SSD, 32GB RAM', 116200, '<p>Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\ChvhVxU2rGEI3teRZZhG.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:38', NULL, NULL),
(17, 'Laptop 17', 'laptop-17', 'Is inch, 1TB SSD, 32GB RAM', 117200, '<p>Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\9m7Za10W6gBtAnSAWxPB.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:47', NULL, NULL),
(18, 'Laptop 18', 'laptop-18', 'Is inch, 1TB SSD, 32GB RAM', 118200, '<p>Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\YgXAKaqazF0xNYgiPbZl.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:58', NULL, NULL),
(19, 'Laptop 19', 'laptop-19', 'Is inch, 1TB SSD, 32GB RAM', 119200, '<p>Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\gnhOZ3pgq9GAZrQyQ0AH.jpg', '2020-05-16 20:44:00', '2020-05-18 20:58:07', NULL, NULL),
(20, 'Laptop 20', 'laptop-20', 'Is inch, 1TB SSD, 32GB RAM', 120200, '<p>Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\3wO7YQXKCZxZuX7Gt1YN.jpg', '2020-05-16 20:44:00', '2020-05-18 20:58:20', NULL, NULL),
(21, 'Laptop 21', 'laptop-21', 'Is inch, 1TB SSD, 32GB RAM', 121200, '<p>Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\ed2GAevqF2eKO3W3NwHM.jpg', '2020-05-16 20:44:00', '2020-05-18 20:58:32', NULL, NULL),
(22, 'Laptop 22', 'laptop-22', 'Is inch, 1TB SSD, 32GB RAM', 122200, '<p>Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\ul2lWjgrT3f4bVtn1vK8.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:23', NULL, NULL),
(23, 'Laptop 23', 'laptop-23', 'Is inch, 1TB SSD, 32GB RAM', 123200, '<p>Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\KPP3pLwqvhGHcD2D5qsD.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:34', NULL, NULL),
(24, 'Laptop 24', 'laptop-24', 'Is inch, 1TB SSD, 32GB RAM', 124200, '<p>Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\GIkUjFQjAh4T1EiajcRR.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:43', NULL, NULL),
(25, 'Laptop 25', 'laptop-25', 'Is inch, 1TB SSD, 32GB RAM', 125200, '<p>Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\kQEwqxoxZSwQvTVp0YeI.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:53', NULL, NULL),
(26, 'Laptop 26', 'laptop-26', 'Is inch, 1TB SSD, 32GB RAM', 126200, '<p>Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\mtpmolKDc9JkVVWpWHCl.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:01', NULL, NULL),
(27, 'Laptop 27', 'laptop-27', 'Is inch, 1TB SSD, 32GB RAM', 127200, '<p>Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\lGAesn2tVAdnjV6aJqBa.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:11', NULL, NULL),
(28, 'Laptop 28', 'laptop-28', 'Is inch, 1TB SSD, 32GB RAM', 128200, '<p>Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\M0NE2A4E97zy565OqGS1.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:20', NULL, NULL),
(29, 'Laptop 29', 'laptop-29', 'Is inch, 1TB SSD, 32GB RAM', 129200, '<p>Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\gdhnv28nPFBjJzFsJ5bE.jpg', '2020-05-16 20:44:00', '2020-05-18 20:57:29', NULL, NULL),
(30, 'Desktop 1', 'desktop-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\Gl3oASP609Y133MDXIxo.jpg', '2020-05-16 20:44:00', '2020-05-18 20:55:31', NULL, NULL),
(31, 'Desktop 2', 'desktop-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\YrSIa2JBwBtELbeyNKR7.jpg', '2020-05-16 20:44:00', '2020-05-18 20:55:41', NULL, NULL),
(32, 'Desktop 3', 'desktop-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\TpTj7gwm53TLSfZbXyuK.jpg', '2020-05-16 20:44:00', '2020-05-18 20:55:51', NULL, NULL),
(33, 'Desktop 4', 'desktop-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\HafY54c9FK8LRurUwiIp.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:01', NULL, NULL),
(34, 'Desktop 5', 'desktop-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\fJr7KNkq0U8IB264QD1T.jpg', '2020-05-16 20:44:00', '2020-05-18 20:56:11', NULL, NULL),
(35, 'Desktop 6', 'desktop-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\FVw9EivGvnV1d5cf7meu.jpg', '2020-05-16 20:44:00', '2020-05-18 20:53:08', NULL, NULL),
(36, 'Desktop 7', 'desktop-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\sFP6qqCjnfK4wjXRN7pR.jpg', '2020-05-16 20:44:00', '2020-05-18 20:53:20', NULL, NULL),
(37, 'Desktop 8', 'desktop-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\9WbQpCLJcTFduDltx7I5.jpg', '2020-05-16 20:44:00', '2020-05-18 20:53:30', NULL, NULL),
(38, 'Tablet 1', 'tablet-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 5, 'products\\May2020\\hSu5OCUD132oJJuZdjKw.jpg', '2020-05-16 20:44:00', '2020-06-21 21:14:51', NULL, 4),
(39, 'Tablet 2', 'tablet-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\Cya8uNIZD8GQNPpPe3K3.jpg', '2020-05-16 20:44:00', '2020-05-18 20:54:37', NULL, NULL),
(40, 'Tablet 3', 'tablet-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\hRdCWpQ08MSmTDnIHh2w.jpg', '2020-05-16 20:44:00', '2020-05-18 20:54:55', NULL, NULL),
(41, 'Tablet 4', 'tablet-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\wz9evKxbt2mGAdfr57kN.jpg', '2020-05-16 20:44:00', '2020-05-18 20:55:10', NULL, NULL),
(42, 'Tablet 5', 'tablet-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\F1KAKz9zNa0WhfdJqYBd.jpg', '2020-05-16 20:44:00', '2020-05-18 20:55:22', NULL, NULL),
(43, 'Tablet 6', 'tablet-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\AjrbVivBNngckdKKqOtL.jpg', '2020-05-16 20:44:00', '2020-05-18 20:51:38', NULL, NULL),
(44, 'Tablet 7', 'tablet-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\nhNyr01WtzX0aYTlQUnJ.jpg', '2020-05-16 20:44:00', '2020-05-18 20:51:50', NULL, NULL),
(45, 'Tablet 8', 'tablet-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\mQDDDP5Ng5b2UccRSowT.jpg', '2020-05-16 20:44:00', '2020-05-18 20:52:01', NULL, NULL),
(46, 'Phone 1', 'phone-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\PangjZsmPLHKCrRARUrt.jpg', '2020-05-16 20:44:00', '2020-05-18 20:52:16', NULL, NULL),
(47, 'Phone 2', 'phone-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\TqncQwhPh4rhQKAqm1hL.jpg', '2020-05-16 20:44:00', '2020-05-18 20:52:32', NULL, NULL),
(48, 'Phone 3', 'phone-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\T6BUTwI51mdzAl26lQrT.jpg', '2020-05-16 20:44:00', '2020-05-18 20:52:44', NULL, NULL),
(49, 'Phone 4', 'phone-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\vfFC1FscRWgEl4EON11l.jpg', '2020-05-16 20:44:00', '2020-05-18 20:52:56', NULL, NULL),
(50, 'Phone 5', 'phone-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\JU2vInmjokcSxDrPygwa.jpg', '2020-05-16 20:44:00', '2020-05-18 20:49:03', NULL, NULL),
(51, 'Phone 6', 'phone-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\HFpsf55dTw2dCNfkknYB.jpg', '2020-05-16 20:44:00', '2020-05-18 20:49:21', NULL, NULL),
(52, 'Phone 7', 'phone-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\hkEauyaycN1RnqJIQlXG.jpg', '2020-05-16 20:44:00', '2020-05-18 20:49:45', NULL, NULL),
(53, 'Phone 8', 'phone-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\adS2h1ev2DeX1miPi1D7.jpg', '2020-05-16 20:44:00', '2020-05-18 20:49:59', NULL, NULL),
(54, 'TV 1', 'tV-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\ECf9QlpJzECOi2FyvAuf.jpg', '2020-05-16 20:44:00', '2020-05-18 20:50:11', NULL, NULL),
(55, 'TV 2', 'tV-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\wzr2ZTfpP3MMd9e7qBWw.jpg', '2020-05-16 20:44:00', '2020-05-18 20:50:31', NULL, NULL),
(56, 'TV 3', 'tV-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\tDnvHDin7efCaNlzJwcG.jpg', '2020-05-16 20:44:00', '2020-05-18 20:50:42', NULL, NULL),
(57, 'TV 4', 'tV-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\FVYjJuZ6sXaw5B8yX1Ju.jpg', '2020-05-16 20:44:00', '2020-05-18 20:50:54', NULL, NULL),
(58, 'TV 5', 'tV-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\OMqWpHVWDJ6ra90Mc1Zn.jpg', '2020-05-16 20:44:00', '2020-05-18 20:51:05', NULL, NULL),
(59, 'TV 6', 'tV-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\NKSMSBHWG0WrTruoSole.jpg', '2020-05-16 20:44:00', '2020-05-18 20:51:26', NULL, NULL),
(60, 'TV 7', 'tV-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\uIJO0jYz5WUj6vSYsAWs.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:16', NULL, NULL),
(61, 'TV 8', 'tV-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\l9yRq81Z8uRktOQJhe1F.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:27', NULL, NULL),
(62, 'Camera 1', 'camera-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\nx91b5gAnlNb3Pum2B4y.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:35', NULL, NULL),
(63, 'Camera 2', 'camera-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\IBxKGm6D3lDqVCd3AuqN.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:44', NULL, NULL),
(64, 'Camera 3', 'camera-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\5q9LyvJP3TlMwwTds9oy.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:52', NULL, NULL),
(65, 'Camera 4', 'camera-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\nCRcgRARWw6eSBtb7wZF.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:01', NULL, NULL),
(66, 'Camera 5', 'camera-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\OGz5gnMGYakLXOlVIAsp.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:13', NULL, NULL),
(67, 'Camera 6', 'camera-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\bw5n8TtzzXNqhAQ1HgcR.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:22', NULL, NULL),
(68, 'Camera 7', 'camera-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\eps2MgHSmb8xcowOAQB8.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:30', NULL, NULL),
(69, 'Camera 8', 'camera-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\M1Y2Lp9te8TTcuJHPWBA.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:39', NULL, NULL),
(70, 'Appliance 1', 'appliance-1', 'Is inch, 1TB SSD, 32GB RAM', 11200, '<p>Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\8iIxMandAwZ2zP8vW81q.jpg', '2020-05-16 20:44:00', '2020-05-18 20:47:53', NULL, NULL),
(71, 'Appliance 2', 'appliance-2', 'Is inch, 1TB SSD, 32GB RAM', 12200, '<p>Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\RJUzeYlIJ7nycD7QrxDn.jpg', '2020-05-16 20:44:00', '2020-05-18 20:48:03', NULL, NULL),
(72, 'Appliance 3', 'appliance-3', 'Is inch, 1TB SSD, 32GB RAM', 13200, '<p>Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\SddMHtfdU23GYrSNtIgW.jpg', '2020-05-16 20:44:00', '2020-05-18 20:46:24', NULL, NULL),
(73, 'Appliance 4', 'appliance-4', 'Is inch, 1TB SSD, 32GB RAM', 14200, '<p>Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\G4lutG2sbspVpparqcfy.jpg', '2020-05-16 20:44:00', '2020-05-18 20:46:33', NULL, NULL),
(74, 'Appliance 5', 'appliance-5', 'Is inch, 1TB SSD, 32GB RAM', 15200, '<p>Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\Vy4sHq0yotxZFfgiz6LR.jpg', '2020-05-16 20:44:00', '2020-05-18 20:46:42', NULL, NULL),
(75, 'Appliance 6', 'appliance-6', 'Is inch, 1TB SSD, 32GB RAM', 16200, '<p>Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\pABxq2lXbBP8S3BkXBXL.jpg', '2020-05-16 20:44:00', '2020-05-18 20:46:51', NULL, NULL),
(76, 'Appliance 7', 'appliance-7', 'Is inch, 1TB SSD, 32GB RAM', 17200, '<p>Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 0, 'products\\May2020\\P5nTIViXoDJkNDAlLpR1.jpg', '2020-05-16 20:44:00', '2020-05-18 20:45:32', NULL, NULL),
(77, 'Appliance 8', 'appliance-8', 'Is inch, 1TB SSD, 32GB RAM', 18200, '<p>Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 'products\\May2020\\kBIuyAykHwokHAejjIFy.jpg', '2020-05-16 20:44:00', '2020-05-18 20:46:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-05-16 20:44:44', '2020-05-16 20:44:44'),
(2, 'user', 'Normal User', '2020-05-16 20:44:44', '2020-05-16 20:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-05-16 20:44:55', '2020-05-16 20:44:55'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-05-16 20:44:56', '2020-05-16 20:44:56'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-05-16 20:44:57', '2020-05-16 20:44:57'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-05-16 20:44:57', '2020-05-16 20:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$kn1ElsTTMg8c.0Xc/30qs.t/QNVgUc6D2lV8Y..WS/vy9z8Viy826', 'u4rPDLuwLUO8u980YL6NTRLUHkYxyp1uO0u4udP3pCqndY8sJoAH9WEn4xbn', NULL, '2020-05-16 20:44:50', '2020-05-16 20:44:50'),
(2, 2, 'youssef ahmed', 'newuser@user.com', 'users/default.png', NULL, '$2y$10$A4.g4KJIt422x5jogTIWAeG1m9UAmrX4PYYHcaUU9/z2sWxqQt9I6', NULL, NULL, '2020-05-16 20:45:53', '2020-06-20 21:24:11'),
(3, 2, 'youssef', 'admin2222@admin.com', 'users/default.png', NULL, '$2y$10$/wAOXu4tmNUknmh8wd380.9CJzGDSWoB9iVOAs82npFvenarFlS7a', NULL, NULL, '2020-06-20 21:32:25', '2020-06-20 21:32:25'),
(4, 2, 'admins', 'admins@admins.com', 'users/default.png', NULL, '$2y$10$hvXXVEvkEV/ubNgohR1FruX0qmAkU6XlDHq/79qz3wSZwi8wUz64u', NULL, NULL, '2020-06-21 14:13:29', '2020-06-21 14:13:30'),
(5, 2, 'admins2', 'admins2@admins.com', 'users/default.png', NULL, '$2y$10$.63qIRjxSfPHhqpQzdcM/.c2zPeMva75mFMmfTddfVmJXGIr0jD6C', NULL, NULL, '2020-06-21 14:14:14', '2020-06-21 14:14:14'),
(6, 2, 'admins3', 'admin3@admins.com', 'users/default.png', NULL, '$2y$10$U5aKzySeySjpSp3PJQXUjumDhmYbqWNu.IE1H5QSPyQkCzaYLqvXm', NULL, NULL, '2020-06-21 14:15:02', '2020-06-21 14:15:02'),
(7, 2, 'admins4', 'admins4@admins.com', 'users/default.png', NULL, '$2y$10$Xbfxbs0p6XJ3kV9SbBpNcuyGgxplZ1Z0fvIOjong1mCi1a3T/50Vm', NULL, NULL, '2020-06-21 14:15:53', '2020-06-21 14:15:53'),
(8, 2, 'admins5', 'admins5@admins.com', 'users/default.png', NULL, '$2y$10$Sbax2gadbZVGZodS4CoVLOiscUyXXthk6717A8I18GURXMcM52HNi', NULL, NULL, '2020-06-21 14:16:29', '2020-06-21 14:16:29'),
(9, 2, 'admins6', 'admins6@admins.com', 'users/default.png', NULL, '$2y$10$5TcYGUvdQl6vVTfhq.8xR.lME3MKuJkiTu6QK81CteLzaMq6liImy', NULL, NULL, '2020-06-21 14:17:23', '2020-06-21 14:17:23'),
(10, 2, 'admins7', 'admins7@admin.com', 'users/default.png', NULL, '$2y$10$/dp.clc/SFhGlykLlXQSau1oqT5IhClAqv3kCP1oayJzpfheJi5O2', NULL, NULL, '2020-06-21 14:18:09', '2020-06-21 14:18:09'),
(11, 2, 'admins8', 'admins8@admins.com', 'users/default.png', NULL, '$2y$10$mOQDzSKACH/xxDXGwq3BiubqEppE/28AmcQhqHpd.kBfI.4UNIs2y', NULL, NULL, '2020-06-21 14:19:25', '2020-06-21 14:19:25'),
(12, 2, 'admins9', 'admins9@admins.com', 'users/default.png', NULL, '$2y$10$pvP/j/l9bd7ijQ.NN/7VHeJm8MBF.7h1GViuevFriPH8EaLlBqWAy', NULL, NULL, '2020-06-21 14:22:13', '2020-06-21 14:22:13'),
(13, 2, 'admins10', 'admins10@admin.com', 'users/default.png', NULL, '$2y$10$BiVEIP8xkjv1mQBxyaVAeOWfegOrHxn3BcL6SRc0pQBu16qtYbJ.u', NULL, NULL, '2020-06-21 14:23:42', '2020-06-21 14:23:42'),
(14, 2, 'admins11', 'admins11@admin.com', 'users/default.png', NULL, '$2y$10$KlR0uR/VdqD.lRGCPrq2eO3thm3sVRSkcCs4IcGssnsC9VWaNswM2', NULL, NULL, '2020-06-21 20:25:06', '2020-06-21 20:25:06'),
(15, 2, 'admins12', 'admins12@admin.com', 'users/default.png', NULL, '$2y$10$NRWJvyPilZF3SjfxTHOuLec/eFwrMBAGpZi4Rq.1aF0UeUeMI0VI2', NULL, NULL, '2020-06-21 20:25:56', '2020-06-21 20:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
