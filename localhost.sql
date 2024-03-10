-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2020 at 03:49 PM
-- Server version: 5.6.47
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ambalacu_cury`
--
CREATE DATABASE IF NOT EXISTS `ambalacu_cury` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ambalacu_cury`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `created_at`, `updated_at`, `lat`, `lng`, `active`, `user_id`, `apartment`, `intercom`, `floor`, `entry`) VALUES
(1, '19170 Spencer Mills Apt. 120\nHumbertoton, NV 01726-6322', '2020-05-28 15:09:34', '2020-05-28 15:09:34', '41.994003', '21.430612', 1, 4, NULL, NULL, NULL, NULL),
(2, '600 Aubree Villages\nMargeville, KY 83763', '2020-05-28 15:09:34', '2020-05-28 15:09:34', '41.995214', '21.453291', 1, 4, NULL, NULL, NULL, NULL),
(3, '4788 Alize Burg Suite 819\nWainoview, IA 08011-3211', '2020-05-28 15:09:34', '2020-05-28 15:09:34', '41.994619', '21.436909', 1, 5, NULL, NULL, NULL, NULL),
(4, '54992 Haag Alley Apt. 613\nChayachester, WV 45565', '2020-05-28 15:09:34', '2020-05-28 15:09:34', '41.997835', '21.451205', 1, 4, NULL, NULL, NULL, NULL),
(5, '6479 Mayert Coves Suite 534\nEast Salliefurt, NY 34042-6676', '2020-05-28 15:09:34', '2020-05-28 15:09:34', '41.99639', '21.401376', 1, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`) VALUES
(1, 'Salads', 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 0, 1),
(2, 'Pizza', 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 0, 1),
(3, 'Fresh Pasta and Risotto', 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 0, 1),
(4, 'Lasagna', 1, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(5, 'Burgers', 2, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(6, 'Garnish', 2, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(7, 'Salads', 2, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(8, 'Starters', 2, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(9, 'Drinks', 2, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(10, 'Burrito', 3, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(11, 'Quesadilla', 3, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(12, 'Taco', 3, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(13, 'Burrito In A Bowl', 3, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(14, 'Salads', 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(15, 'Pizza', 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(16, 'Burrito', 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(17, 'Drinks', 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(18, 'Salads', 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(19, 'Pizza', 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 0, 1),
(20, 'Lasagna', 5, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(21, 'Fresh Pasta and Risotto', 5, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(22, 'Quesadilla', 6, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(23, 'Taco', 6, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(24, 'Burrito In A Bowl', 6, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(25, 'Burrito', 6, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(26, 'Burgers', 7, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(27, 'Salads', 7, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(28, 'Drinks', 7, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(29, 'Starters', 7, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(30, 'Garnish', 7, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(31, 'Drinks', 8, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(32, 'Pizza', 8, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(33, 'Salads', 8, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(34, 'Burrito', 8, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 0, 1),
(35, 'Lasagna', 9, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(36, 'Salads', 9, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(37, 'Pizza', 9, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(38, 'Fresh Pasta and Risotto', 9, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(39, 'Burrito', 10, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(40, 'Quesadilla', 10, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(41, 'Burrito In A Bowl', 10, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(42, 'Taco', 10, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(43, 'Burgers', 11, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(44, 'Starters', 11, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(45, 'Garnish', 11, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(46, 'Drinks', 11, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(47, 'Salads', 11, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 0, 1),
(48, 'Drinks', 12, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 0, 1),
(49, 'Burrito', 12, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 0, 1),
(50, 'Salads', 12, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 0, 1),
(51, 'Pizza', 12, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 0, 1),
(52, 'Beilagen', 13, '2020-07-14 08:21:29', '2020-07-14 08:21:29', 0, 1),
(53, 'Raita', 13, '2020-07-16 06:15:33', '2020-07-16 06:15:33', 0, 1),
(54, 'Lamm - Spezialitäten', 13, '2020-07-16 06:35:33', '2020-07-16 06:35:33', 0, 1),
(55, 'Chicken - Spezialitäten', 13, '2020-07-16 08:01:10', '2020-07-16 08:01:10', 0, 1),
(56, 'Biryani - Spezialitäten', 13, '2020-07-16 14:39:59', '2020-07-16 14:39:59', 0, 1),
(57, 'Vegetarische - Spezialitäten', 13, '2020-07-16 15:12:43', '2020-07-16 15:12:43', 0, 1),
(58, 'Fisch - Spezialitäten', 13, '2020-07-17 08:10:07', '2020-07-17 08:10:07', 0, 1),
(59, 'Indische Getränkle', 13, '2020-07-17 08:48:54', '2020-07-17 08:48:54', 0, 1),
(60, 'Alkoholfreie Getränkle', 13, '2020-07-17 09:06:45', '2020-07-17 09:06:45', 0, 1),
(61, 'Dessert', 13, '2020-07-18 06:58:53', '2020-07-18 06:58:53', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(1, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 13),
(2, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 2),
(3, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 3),
(4, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 4),
(5, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 5),
(6, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 6),
(7, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 7),
(8, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 8),
(9, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 9),
(10, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 10),
(11, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 11),
(12, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 12),
(13, '2020-07-24 13:51:56', '2020-07-24 13:51:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`) VALUES
(1, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(2, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(3, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(4, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(5, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(6, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 1, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(7, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(8, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(9, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(10, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(11, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(12, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(13, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(14, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(15, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(16, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(17, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 2, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(18, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(19, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(20, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(21, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(22, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(23, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 3, '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(24, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(25, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(26, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 4, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(27, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(28, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(29, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(30, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(31, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(32, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(33, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(34, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(35, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(36, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(37, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(38, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(39, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(40, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(41, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(42, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(43, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(44, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(45, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(46, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(47, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(48, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(49, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(50, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(51, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(52, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(53, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(54, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(55, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(56, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(57, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(58, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(59, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(60, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(61, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(62, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(63, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(64, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(65, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(66, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(67, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(68, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(69, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(70, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(71, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(72, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(73, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(74, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(75, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(76, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(77, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(78, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(79, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(80, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(81, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(82, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(83, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(84, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(85, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(86, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(87, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(88, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(89, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(90, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(91, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 18, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(92, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 19, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(93, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 19, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(94, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 19, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(95, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 19, '2020-05-28 15:09:30', '2020-05-28 15:09:30', 1),
(96, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(97, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(98, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(99, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(100, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(101, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(102, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 19, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(103, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 20, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(104, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 20, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(105, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 20, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(106, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(107, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(108, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(109, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(110, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(111, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 21, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(112, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 22, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(113, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 22, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(114, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 22, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(115, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 22, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(116, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 23, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(117, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 23, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(118, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 23, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(119, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 23, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(120, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 24, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(121, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 24, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(122, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 24, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(123, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 24, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(124, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 25, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(125, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 25, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(126, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 25, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(127, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 25, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(128, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(129, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(130, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(131, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(132, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(133, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(134, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 26, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(135, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 27, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(136, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 28, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(137, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 28, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(138, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 28, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(139, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 28, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(140, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 29, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(141, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 29, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(142, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 29, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(143, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 30, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(144, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 30, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(145, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 30, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(146, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 31, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(147, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 31, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(148, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 31, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(149, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 31, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(150, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(151, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(152, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(153, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(154, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(155, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(156, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(157, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(158, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(159, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(160, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 32, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(161, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(162, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(163, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(164, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(165, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(166, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 33, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(167, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 34, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(168, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 34, '2020-05-28 15:09:31', '2020-05-28 15:09:31', 1),
(169, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 34, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(170, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 34, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(171, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 35, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(172, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 35, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(173, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 35, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(174, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(175, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(176, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(177, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(178, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(179, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 36, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(180, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(181, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(182, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(183, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`) VALUES
(184, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(185, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(186, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(187, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(188, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(189, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(190, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 37, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(191, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(192, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(193, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(194, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(195, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(196, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 38, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(197, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 39, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(198, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 39, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(199, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 39, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(200, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 39, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(201, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 40, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(202, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 40, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(203, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 40, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(204, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 40, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(205, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 41, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(206, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 41, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(207, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 41, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(208, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 41, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(209, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 42, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(210, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 42, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(211, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 42, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(212, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 42, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(213, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(214, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(215, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(216, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(217, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(218, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(219, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 43, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(220, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 44, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(221, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 44, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(222, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 44, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(223, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 45, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(224, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 45, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(225, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 45, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(226, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 46, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(227, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 46, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(228, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 46, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(229, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 46, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(230, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 47, '2020-05-28 15:09:32', '2020-05-28 15:09:32', 1),
(231, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 48, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(232, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 48, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(233, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 48, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(234, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 48, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(235, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 49, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(236, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 49, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(237, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 49, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(238, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 49, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(239, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(240, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(241, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(242, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(243, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(244, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 50, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(245, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(246, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(247, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(248, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(249, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(250, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(251, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(252, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(253, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(254, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(255, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 51, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(256, 'Raita', 'Tomaten,Gurken,Frischer Jhogurt,Zweibeh,indische Gewize', 'e4daa69e-0352-4843-a304-5010df33a359', 3.00, 52, '2020-07-14 08:26:02', '2020-07-14 08:27:43', 1),
(257, 'Chapa / Roti', 'Indisches Brot', 'bbe280cc-b4c5-466a-84dd-d92422c9716b', 2.00, 52, '2020-07-14 09:03:36', '2020-07-14 09:03:36', 1),
(258, 'Extra Reis', '', 'd418334d-7bf8-4ede-bab1-45010707bd38', 250.00, 52, '2020-07-14 09:09:44', '2020-07-14 09:09:44', 1),
(259, 'Tomatensalat 6,7,8', 'Tomaten,Zwiebelen', '161b214a-fa50-4ea3-b280-865cfd89450d', 4.00, 53, '2020-07-16 06:24:06', '2020-07-16 06:24:06', 1),
(260, 'Gemischeter Salat', 'salad', '62d8ec28-f856-4b64-bba2-2605dc6d80b2', 5.00, 53, '2020-07-16 06:27:32', '2020-07-16 06:27:32', 1),
(261, 'Chicken Salat 6,7,8', 'Gemicheter Salat 6,7,8  Gebratene Garnelene,E i', '3d0cc0ff-14b3-40ad-90c2-e93eb451fb12', 8.00, 53, '2020-07-16 06:30:02', '2020-07-16 06:30:40', 1),
(263, 'Lamm Curry', 'lammfleisch ohne knochen gebraten  mit Gewurzen in Currysauce', '1e3e970b-1c42-4507-8b0f-c3a2367cca63', 12.00, 54, '2020-07-16 06:42:33', '2020-07-16 06:42:33', 1),
(264, 'Lamm Jalfreizy', 'lammfleisch,frische paprika,Katotten', 'a45da4d0-3c0f-4436-b688-834d367552fc', 12.00, 54, '2020-07-16 06:47:47', '2020-07-16 06:47:47', 1),
(267, 'Lamm Sabji', 'Lammfleisch mit Gemuse in leckerer Currysauce', '8930819a-5ee8-413f-872c-22e37de8dfac', 12.00, 54, '2020-07-16 07:02:40', '2020-07-16 07:02:40', 1),
(266, 'Lamm Palak', 'Lam mit Spinatsauce', 'f300beec-2a03-4af8-ae38-53c3cb8c7560', 12.00, 54, '2020-07-16 06:55:34', '2020-07-16 06:55:34', 1),
(268, 'Lamm Vindaloo', 'Lammfleisch mit Kartoffeln in Sehr Scharfer Vindaloosauce', 'f016bd22-9922-42ee-a268-ecf152a5a005', 12.00, 54, '2020-07-16 07:07:19', '2020-07-16 07:07:19', 1),
(269, 'Lamm Madrass', 'Lammfleisch in Madrass - Surrysauce - Scharf', '1fef4db4-5967-420b-954d-b4dcb4f3fc0b', 12.00, 54, '2020-07-16 07:15:03', '2020-07-16 07:15:03', 1),
(271, 'Lamm Kokos', 'Lammfleisch in Kokos - Currysauce', '78fc34da-b754-4ab6-9df4-df700991a484', 12.00, 54, '2020-07-16 07:21:03', '2020-07-16 07:37:22', 1),
(275, 'Chicken Curry', 'Huhnerfleisch mit indischen GewÜrzen und Currysauce', '5e23b5c9-b2ce-44fa-9777-6f7b78b7ace0', 11.00, 55, '2020-07-16 08:09:13', '2020-07-16 08:09:13', 1),
(272, 'Lamm Mango', 'Lammfleisch in Mangosauce', '844dbe46-4716-4326-aaa9-a4c0bf47f76d', 12.00, 54, '2020-07-16 07:26:46', '2020-07-16 07:26:46', 1),
(273, 'Lamm Shahi Korma', 'Lammfleisch ein Rezept  der Koniglichen Moghul kuche,Mandelen,Rosinen,Ceshewrekne', '400329f6-7a18-42f4-9151-d123d2bab751', 12.00, 54, '2020-07-16 07:31:47', '2020-07-16 07:32:19', 1),
(274, 'Lamm Karahi', 'Lammfleisch in einer Karahi - Pfanne,Paprika,Tomaten.', '9208a0b3-bdda-4f11-b4ee-f3ac95718b8a', 12.00, 54, '2020-07-16 07:36:51', '2020-07-16 07:36:51', 1),
(276, 'Chicken Palak', 'Huhnerfleisch mit spinat in milder / Scharfer Currysauce', 'a3b20002-eb8d-4fba-9a6d-9184a20ff04f', 11.00, 55, '2020-07-16 08:35:30', '2020-07-16 08:35:30', 1),
(277, 'Chicken Vindallo', 'Huhnerfleisch mit Kartoffeln in schafer Vindaloosauce gekocht', '7ef310bd-9282-43a5-8ddc-dea80788874b', 11.00, 55, '2020-07-16 14:01:04', '2020-07-16 14:01:04', 1),
(278, 'Chicken Tikka Masala', 'in Bachofen gegrilltes Huhnerfleisch in ein er speziellen Masalasauce.', 'c30c02cd-da15-4df6-b65f-68ca22d0d21b', 11.00, 55, '2020-07-16 14:04:23', '2020-07-16 14:04:23', 1),
(280, 'Chicken Shahi Korma', 'Huhnerfleisch,Cashewkerne,Mandeln,Rosinen,Kormasauce', 'ff72d23a-1320-4418-85a4-4c574d29fa72', 11.00, 55, '2020-07-16 14:07:32', '2020-07-16 14:07:32', 1),
(282, 'Chicken Mango', 'Huhnerfleisch mit Mangostuckenin milder Currysauce gebraten.', 'c2f935ea-603e-4451-b2f9-37329a289bb9', 11.00, 55, '2020-07-16 14:09:14', '2020-07-16 14:09:14', 1),
(283, 'Chicken Kokos', 'Zartes Huhnerfleisch in Kokosauce', '64deedc6-f1a5-4da0-94d4-446093e42284', 11.00, 55, '2020-07-16 14:17:12', '2020-07-16 14:17:12', 1),
(284, 'Chicken Jalfezi', 'Huhnerfleisch,frische paprika,Karotten,Tomatten,Gewurze.', 'dd7b2e5c-80b3-4e73-abc6-9be1bacdfef0', 11.00, 55, '2020-07-16 14:21:08', '2020-07-16 14:21:45', 1),
(285, 'Chicken Krahi', 'Huhnerfleisch,frische Paprika 7,lngwer,Zweibeln in Wurziger Currysauce mild / Scharf gebraten.', 'a4e744e4-1613-4b2a-90a4-e6c1d2dc91d1', 11.00, 55, '2020-07-16 14:25:56', '2020-07-16 14:25:56', 1),
(286, 'Chicken Dansek', 'Huhnerfleisch,Linsen,Ananas mit Sahnecurry gewurzt.', '04fdefb1-bea2-47e5-96c5-e13d3fe93846', 11.00, 55, '2020-07-16 14:35:05', '2020-07-16 14:35:05', 1),
(287, 'Chicken Tikka Makni  .', 'Huhnerfleisch in Buttersauce angendunstet.', '18ceefd2-4c3d-4f2f-b6c4-2e30aedebfae', 11.00, 55, '2020-07-16 14:39:17', '2020-07-16 14:39:17', 1),
(288, 'Vegetarische Biryani', 'frisches Gemuse der Saison,Reis,Mandeln,Rosinen,Kaschmir,Gewurze', 'bf49219d-3b57-4a46-b72b-c7855bc6cd0f', 11.00, 56, '2020-07-16 14:46:26', '2020-07-16 14:46:26', 1),
(289, 'Murgh Biryani', 'Huhenerfleisch,Reis,Mandeln,Rosinen,Kaschmir,Gewurze,gebraten nach indischer Art', '0bd337af-3e9c-4b6f-90fe-9913a963824a', 11.00, 56, '2020-07-16 14:51:58', '2020-07-16 14:51:58', 1),
(290, 'Jingha Biryani', 'gebratener Reis,Reisengarnelen,Mandeln,Kokos,Rosinen', '93f2a254-d8f2-4cf5-a071-6845cdbe0895', 11.00, 56, '2020-07-16 14:57:11', '2020-07-16 14:57:11', 1),
(291, 'Lamm Biryani', 'gebratener Reis,Lammfleisch,,Mandeln,Kokos,Rosinen.', '112cae24-a064-4c2d-b1ad-3d571ddee088', 11.00, 56, '2020-07-16 15:03:39', '2020-07-16 15:03:39', 1),
(292, 'Bolly wood Biryani,', 'gebratener Reis,Reisengarnelen,Mandeln,Kokos,Rosinen.', '731d9f6d-bdef-4903-8ad8-a4ee48e390b3', 11.00, 56, '2020-07-16 15:09:33', '2020-07-16 15:09:33', 1),
(293, 'Mixed Seafood Biryani', 'Meeresfruchte fruit indischen Gewurzen gagart in Reis,Mandeln,Rosinen,Cashewkerne.', 'e9943839-114f-4bc4-b65e-99fec0d14ed7', 11.00, 56, '2020-07-16 15:12:09', '2020-07-16 15:12:09', 1),
(294, 'Sabji Korma', 'verschiedenes frisches Germuse in Kormasauce.Mandeln,Rosinen,Cashewkerne.', '888c8636-3835-45e1-8b2c-7edffe975540', 950.00, 57, '2020-07-17 05:58:57', '2020-07-17 05:58:57', 1),
(295, 'Matter Paneer', 'Erbsen,hausgematcher Rahmkase,mit Currysauce.', '3d619fcd-61e2-45af-a2be-0cbb46600939', 950.00, 57, '2020-07-17 06:06:18', '2020-07-17 06:06:18', 1),
(296, 'Allu Chenna', 'Kichererbsen,Kartoffeln,Tomaten,lngwer,Knoblauch in wurziger Currysauce.', '9f618f32-9755-4cb7-9c10-8b317a2b4e93', 950.00, 57, '2020-07-17 06:10:38', '2020-07-17 06:10:38', 1),
(297, 'Palak Paneer', 'Spinal,hausgenmachter Rahmkase,Sahne,Indische Gewurze.', '7e9be7a9-5704-42a5-940b-9cab677b156b', 950.00, 57, '2020-07-17 06:14:19', '2020-07-17 06:14:19', 1),
(298, 'Bhindi Masala', 'Okragemuse frische Tomaten,Indische Gewurze.', '5a3efc26-2e7b-46aa-9053-31267831b314', 950.00, 57, '2020-07-17 06:19:54', '2020-07-17 06:19:54', 1),
(299, 'Alu Gobhi', 'Blumenkohl,Kartoffeln,frische Tomaten,Zwetbein,lngwet angebraten.', '75b79fb8-95ec-40a5-8c68-755b522371b3', 950.00, 57, '2020-07-17 06:23:22', '2020-07-17 06:23:22', 1),
(301, 'Paneer Chenna', 'Kichererbsen,frausgematcher Rahmkase in Chilli Sauce gebraten.', '056d2948-6dc4-47e0-8e7f-14195b1b0418', 950.00, 57, '2020-07-17 06:34:20', '2020-07-17 06:34:20', 1),
(302, 'Chilli Cheese', 'frische Paprika 7,Zwiebeln,Rahmkase in Chillisauce gebraten.', 'f52f0890-f0e7-4e29-92cc-34ea71126f7f', 950.00, 57, '2020-07-17 06:38:07', '2020-07-17 06:38:07', 1),
(303, 'Bangan Baharta', 'Auberginen im Backofen gengrilt and puriert,Zwebeirg,Knoblauch,frische,Tomaten,Sahne.', '50d040e7-53e2-44f6-bfad-79183ee4d9a1', 950.00, 57, '2020-07-17 06:42:44', '2020-07-17 06:42:44', 1),
(304, 'Daal Chenna', 'gelbe Linsen in Butter gebraten,Zwebein,Knoblauch.', 'fa5fd7db-4924-494c-b774-1244c993ace8', 950.00, 57, '2020-07-17 06:52:36', '2020-07-17 06:52:36', 1),
(305, 'Sabji Mix', 'Verschiedenes frisches Gemuse mit Currysauce', '59ac4afb-28fa-45d0-9092-5a30c97d20d1', 950.00, 57, '2020-07-17 06:54:29', '2020-07-17 06:54:29', 1),
(306, 'Fisch Curry', 'Seelachs,Tomaten,Knoblaijch,lngwer,in wurgizer Currysauce', '3f715081-b5e7-4bb6-aa02-c70fd8555086', 1200.00, 58, '2020-07-17 08:20:10', '2020-07-17 08:20:10', 1),
(307, 'Fisch Jalfrezi', 'Seelachs,frische papoka,Karotten,Tomaten,Verschiedene Gewurze.', '498d8842-a5c4-483a-9e93-ca61c3b61766', 1200.00, 58, '2020-07-17 08:27:46', '2020-07-17 08:27:46', 1),
(308, 'Fisch Mango', 'Seelachs mit Mangostucken in exoticher sauce.', '9b4053a6-a554-4a4e-96d9-445304d7b1ae', 1200.00, 58, '2020-07-17 08:31:58', '2020-07-17 08:31:58', 1),
(309, 'Jhinga Masala', 'Curry Riesengarnelen gebraten,Zwiebeln,lngwer in indischer Currysauce', 'd2d1d36d-3727-4f75-9af1-46b87e7f5886', 1200.00, 58, '2020-07-17 08:34:57', '2020-07-17 08:34:57', 1),
(310, 'Jhinga Mango', 'Riesengarnelen gebraten mit Mangostucken in exotischer Currysauce.', 'b0557a11-6372-48cd-82c0-67bea5272abe', 1200.00, 58, '2020-07-17 08:38:33', '2020-07-17 08:38:33', 1),
(311, 'Jhinga Kokos', 'Riesengarnelen gebrate in Kokosauce', 'e12dd36a-5e9d-4e93-8f40-7e79bdd31d18', 1200.00, 58, '2020-07-17 08:45:04', '2020-07-17 08:45:04', 1),
(312, 'Mangomilch Milch', 'mit Mangogeschmack                       0.3 L', '62b2418c-586d-493b-a8f2-1de74a626787', 250.00, 59, '2020-07-17 08:53:06', '2020-07-17 08:53:06', 1),
(313, 'Mango Lassi', 'joghurtgetränk                                                0.3 L', '3c4d7874-ffa5-4a82-94f4-8119b9f82621', 250.00, 59, '2020-07-17 08:57:41', '2020-07-17 08:57:41', 1),
(314, 'Lassi', 'Sub frisches joghurtgetränk                                      0.3 L', 'e51e0acd-a8ac-4794-bcd7-2065ccc5328b', 250.00, 59, '2020-07-17 09:01:19', '2020-07-17 09:01:19', 1),
(315, 'Lassi', 'Sauer frisches joghurtgetränk                                   0.3 L', 'f123a5ef-e2d8-4591-8613-d570c42d1ce0', 200.00, 59, '2020-07-17 09:06:23', '2020-07-17 09:06:23', 1),
(316, 'Coca Cola,Fanta,Mezzo Mix', '1.0 L', '4fa59234-fd9e-4ccf-bf30-b03532f77f9c', 300.00, 60, '2020-07-17 09:09:03', '2020-07-17 09:09:03', 1),
(317, 'Mineralwasser', '1.0 L', '95d164c2-a6e5-46a3-a423-b7c009772942', 200.00, 60, '2020-07-17 09:13:29', '2020-07-17 09:13:29', 1),
(318, 'Apfelsalt', '1.0 L', '19ae73c8-655e-4e28-a1b4-0b849757fe8d', 300.00, 60, '2020-07-17 09:17:11', '2020-07-17 09:17:11', 1),
(319, 'Mangosaft', '1.0 L', '085adb47-fffd-4443-85fc-9a2c40fa25c9', 350.00, 60, '2020-07-18 06:58:18', '2020-07-18 06:58:18', 1),
(320, 'Mango Crème', '1', '69daed49-89ae-454e-bf4c-5fc6bf08d849', 300.00, 61, '2020-07-18 07:06:37', '2020-07-18 07:06:37', 1),
(321, 'Kheer Milchreispudding', 'mit Rossenwaser,Mandein,Pistazein,Cashewkerne', '961eba14-8164-4acb-948e-9f42017cbf6c', 300.00, 61, '2020-07-18 07:13:05', '2020-07-18 07:13:05', 1),
(322, 'Kokosnusseis', '5,10 halbe Kokosnuss gefult,mit kokosnusseis', 'd12e380f-78e4-41c9-8dd7-2dcf031ef05a', 400.00, 61, '2020-07-18 07:19:04', '2020-07-18 07:19:04', 1),
(323, 'Orangeneis', '5,10  ganze Orange gefult mit Orangeneis', 'ada9a03a-38e3-410e-96d0-3a7104c13eea', 400.00, 61, '2020-07-18 07:23:17', '2020-07-18 07:23:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_06_010033_create_permission_tables', 1),
(4, '2020_02_06_022212_create_restorants_table', 1),
(5, '2020_02_09_015116_create_status_table', 1),
(6, '2020_02_09_152551_create_categories_table', 1),
(7, '2020_02_09_152656_create_items_table', 1),
(8, '2020_02_11_052117_create_address_table', 1),
(9, '2020_02_11_054259_create_orders_table', 1),
(10, '2020_02_20_094727_create_settings_table', 1),
(11, '2020_03_25_134914_create_pages_table', 1),
(12, '2020_04_03_143518_update_settings_table', 1),
(13, '2020_04_10_202027_create_payments_table', 1),
(14, '2020_04_11_165819_update_table_orders', 1),
(15, '2020_04_22_105556_update_items_table', 1),
(16, '2020_04_23_212320_update_restorants_table', 1),
(17, '2020_04_23_212502_update_orders_table', 1),
(18, '2020_04_28_112519_update_address_table', 1),
(19, '2020_05_07_122727_create_hours_table', 1),
(20, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(21, '2020_05_09_024507_add_options_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(3, 'App\\User', 3),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `fee_value` decimal(5,4) NOT NULL DEFAULT '0.0000',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_method` int(11) NOT NULL DEFAULT '1' COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`) VALUES
(1, '2020-04-14 21:18:30', '2020-05-28 15:09:34', 3, 5, 1, NULL, 6.00, 78.00, NULL, NULL, 'Non quibusdam voluptatibus repellendus. Dolores maiores dolores quisquam est. Cupiditate facilis impedit facere quo at et fugit. Dolorem accusamus quibusdam earum qui magni iusto similique.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(2, '2019-09-02 14:43:12', '2020-05-28 15:09:34', 3, 4, 1, NULL, 10.00, 70.00, NULL, NULL, 'Molestiae fugit dolorem reprehenderit ullam officiis. Tenetur magni aut minus. Voluptas sunt magnam reiciendis vero quam enim. Natus unde et doloremque ipsam nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(3, '2020-01-01 21:38:39', '2020-05-28 15:09:34', 2, 5, 1, NULL, 7.00, 77.00, NULL, NULL, 'Velit id quam similique asperiores. Odio aspernatur soluta aut sint. Voluptatibus harum doloremque voluptates dignissimos cupiditate. Iste eum est odit sunt sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(4, '2020-01-11 09:53:57', '2020-05-28 15:09:34', 3, 5, 3, NULL, 5.00, 86.00, NULL, NULL, 'Omnis est eos sunt vero enim. Voluptatum iste voluptates nihil quas. Laboriosam id tenetur et eos eligendi aut tenetur. Quo quas excepturi quos mollitia et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(5, '2020-04-01 01:35:52', '2020-05-28 15:09:34', 4, 4, 1, NULL, 8.00, 71.00, NULL, NULL, 'Error voluptatem modi tempora eaque non. Culpa expedita sint aut nemo atque. Aut ad perspiciatis qui quas et cum sunt. Delectus numquam non soluta ut fugit quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(6, '2020-03-08 00:19:32', '2020-05-28 15:09:34', 2, 4, 2, NULL, 5.00, 58.00, NULL, NULL, 'Et repellat repudiandae unde ut. Magnam quas praesentium voluptate atque sed. Et in eaque dolores ut voluptatum iste non. Necessitatibus libero aspernatur sit harum eveniet quidem quia quaerat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(7, '2020-04-26 12:15:26', '2020-05-28 15:09:34', 4, 5, 1, NULL, 9.00, 73.00, NULL, NULL, 'Aut perferendis enim debitis voluptatem facilis provident. Blanditiis ut sint soluta ex ducimus. Aspernatur adipisci labore laboriosam modi incidunt. Et labore qui et est aspernatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(8, '2019-08-10 12:30:21', '2020-05-28 15:09:34', 4, 4, 2, NULL, 7.00, 80.00, NULL, NULL, 'Esse quia repudiandae sed odio. Id sed tempora pariatur tempora fugit. Sapiente ea ipsam facilis quo sunt totam. Quos rerum qui optio delectus reprehenderit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(9, '2019-09-25 04:50:18', '2020-05-28 15:09:34', 4, 5, 1, NULL, 10.00, 90.00, NULL, NULL, 'Ab culpa error repellat. Provident magni accusamus aut dolore. Voluptatibus doloremque aut natus laudantium ipsa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(10, '2019-06-05 09:06:30', '2020-05-28 15:09:34', 3, 5, 2, NULL, 9.00, 37.00, NULL, NULL, 'Ut voluptatem eveniet officiis laboriosam ut delectus. Beatae doloremque qui quidem dolorum nihil blanditiis sint. Explicabo maxime officia dolor vitae nobis maxime molestias.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(11, '2019-07-04 04:51:54', '2020-05-28 15:09:34', 2, 5, 3, NULL, 6.00, 82.00, NULL, NULL, 'Soluta ut architecto cum incidunt velit qui itaque. Sunt quasi voluptatem velit ipsa qui ipsa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(12, '2020-05-26 14:24:18', '2020-05-28 15:09:34', 5, 5, 3, NULL, 8.00, 74.00, NULL, NULL, 'Expedita aut ut fuga alias officiis. Accusamus dolores voluptas nisi nihil itaque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(13, '2019-12-28 07:53:31', '2020-05-28 15:09:34', 3, 4, 1, NULL, 10.00, 65.00, NULL, NULL, 'Est enim incidunt ducimus dolor. Accusamus ad est vitae repellat tenetur autem ut. Incidunt magni dolorem provident assumenda quam architecto.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(14, '2020-03-11 09:00:53', '2020-05-28 15:09:34', 4, 5, 1, NULL, 7.00, 36.00, NULL, NULL, 'Illo doloribus sunt non enim. Vero sunt dignissimos magnam error cum perferendis. Nihil quia nam nostrum maiores accusantium ratione quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(15, '2019-09-09 12:37:17', '2020-05-28 15:09:34', 3, 4, 3, NULL, 10.00, 46.00, NULL, NULL, 'Consequuntur ea et labore sed nam aut. Et consequatur adipisci officia. Temporibus laudantium vel voluptas odio incidunt. Et reiciendis tenetur illum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(16, '2020-05-20 13:40:16', '2020-05-28 15:09:34', 4, 4, 2, NULL, 10.00, 78.00, NULL, NULL, 'Dicta adipisci necessitatibus repudiandae non sit voluptates. Iure labore hic et quasi laborum rerum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(17, '2019-07-28 14:08:54', '2020-05-28 15:09:34', 1, 4, 3, NULL, 10.00, 39.00, NULL, NULL, 'Ea ut non corporis repellat aut commodi error. Dignissimos quos voluptates repellendus autem eveniet doloribus. Vel rerum ipsam aut nobis corrupti.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(18, '2019-10-08 23:28:15', '2020-05-28 15:09:34', 2, 5, 2, NULL, 7.00, 69.00, NULL, NULL, 'Rem vero ut dolorem et ab inventore. Quaerat debitis rerum ab esse. Est mollitia est cupiditate atque quibusdam. Nihil quia laboriosam ad assumenda aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(19, '2020-05-16 10:18:01', '2020-05-28 15:09:34', 1, 4, 3, NULL, 5.00, 67.00, NULL, NULL, 'Cupiditate qui odio expedita quis accusantium illum animi. Nemo deserunt veniam quisquam et reiciendis fuga est. Voluptate tempora eos molestiae aspernatur. Sint eaque est laboriosam ea ea quos aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(20, '2020-03-02 10:43:45', '2020-05-28 15:09:34', 5, 5, 1, NULL, 7.00, 52.00, NULL, NULL, 'Et at officia modi ex dolorum accusamus. Est ab voluptas alias cumque iure aut. Molestias nesciunt possimus accusantium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(21, '2019-11-17 16:36:40', '2020-05-28 15:09:34', 1, 4, 2, NULL, 5.00, 62.00, NULL, NULL, 'Dolor nihil pariatur aut et. Doloremque aut eius amet consequuntur. Dicta itaque rerum dicta atque id quas. Inventore pariatur eaque ipsum a commodi nihil et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(22, '2020-05-27 02:50:41', '2020-05-28 15:09:34', 5, 5, 1, NULL, 5.00, 37.00, NULL, NULL, 'Et et aut soluta et facilis dignissimos. Dicta dolores nesciunt quas repudiandae mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(23, '2020-01-07 08:47:20', '2020-05-28 15:09:34', 2, 4, 1, NULL, 5.00, 52.00, NULL, NULL, 'Est suscipit dolores in iusto perspiciatis totam. Eum occaecati facilis beatae id delectus quidem et nam. Perferendis dolor quod maiores velit voluptas temporibus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(24, '2019-12-24 10:08:40', '2020-05-28 15:09:34', 1, 4, 3, NULL, 10.00, 93.00, NULL, NULL, 'Sint sed ad eos quo quisquam eveniet. Similique esse saepe ducimus corporis et perspiciatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(25, '2020-02-01 13:10:08', '2020-05-28 15:09:34', 5, 4, 2, NULL, 10.00, 52.00, NULL, NULL, 'Nostrum fugit eaque et non in omnis quam. Tempora incidunt magni amet pariatur nostrum commodi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(26, '2020-01-18 07:37:02', '2020-05-28 15:09:34', 2, 5, 2, NULL, 7.00, 96.00, NULL, NULL, 'In magnam iure corporis ducimus dignissimos et. Itaque corrupti facilis aperiam ut magnam saepe repellendus. Sit et fugit voluptate suscipit. At facere incidunt debitis quisquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(27, '2019-10-11 02:25:06', '2020-05-28 15:09:34', 1, 4, 3, NULL, 10.00, 90.00, NULL, NULL, 'Odit voluptatum aliquid temporibus dicta modi velit. Inventore quos omnis aspernatur est consectetur sit. Sit voluptatem occaecati omnis architecto culpa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(28, '2019-12-14 12:20:11', '2020-05-28 15:09:34', 1, 5, 2, NULL, 10.00, 76.00, NULL, NULL, 'Repudiandae cum nostrum quod non ab beatae magnam sit. Harum qui similique quis accusamus ad. Autem harum culpa atque. Quo consequatur earum et iusto rerum ut. Maxime ullam accusantium quos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(29, '2020-01-01 18:01:52', '2020-05-28 15:09:34', 2, 5, 2, NULL, 5.00, 35.00, NULL, NULL, 'Non commodi facere enim sapiente perspiciatis exercitationem reprehenderit. Consequatur quas rem reiciendis. Illo est quam est quod ut. Aut illum soluta quia sequi ab.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(30, '2019-10-17 08:46:40', '2020-05-28 15:09:34', 2, 5, 2, NULL, 6.00, 63.00, NULL, NULL, 'Et quos ut eveniet quaerat. Repudiandae sit dolor qui sit saepe repellat recusandae. Aspernatur animi voluptas iste quaerat eum saepe.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(31, '2019-06-04 10:49:02', '2020-05-28 15:09:34', 3, 4, 1, NULL, 10.00, 85.00, NULL, NULL, 'Rerum voluptas velit fuga animi ipsam. Occaecati tenetur autem fuga iste. Id consectetur vel cum et. Quia voluptate quasi ea ut voluptas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(32, '2020-05-06 11:50:04', '2020-05-28 15:09:34', 3, 4, 2, NULL, 7.00, 43.00, NULL, NULL, 'Et est enim quaerat reprehenderit et. Non suscipit rerum architecto esse aut repellat quos id. Aut quia eum sint illo. Ducimus earum autem atque rerum ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(33, '2019-10-23 06:54:24', '2020-05-28 15:09:34', 2, 4, 1, NULL, 6.00, 88.00, NULL, NULL, 'Eos dolor omnis quidem. Facilis earum molestiae eveniet magni omnis. Sit veritatis qui et eaque voluptatum hic qui. Nesciunt voluptas aut ut pariatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(34, '2019-06-29 05:48:30', '2020-05-28 15:09:34', 1, 4, 1, NULL, 9.00, 30.00, NULL, NULL, 'Voluptatem error eum voluptate rerum necessitatibus qui ad ducimus. Voluptatem sit cupiditate quia laborum dolorem eaque quaerat ut. Voluptas provident tempore iste id recusandae vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(35, '2019-08-03 07:24:23', '2020-05-28 15:09:34', 2, 4, 3, NULL, 8.00, 96.00, NULL, NULL, 'Delectus optio vitae autem voluptatibus. Rerum recusandae voluptate rerum consequatur. Exercitationem velit perferendis rerum modi. Praesentium eos sit itaque est quisquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(36, '2020-05-03 13:20:38', '2020-05-28 15:09:34', 2, 5, 3, NULL, 10.00, 64.00, NULL, NULL, 'Veritatis quidem omnis cum accusamus soluta. Sapiente non perferendis dolorem quis mollitia. Omnis quasi quia deleniti voluptatem blanditiis. Quo inventore culpa nihil eum sint enim.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(37, '2019-06-29 00:20:37', '2020-05-28 15:09:34', 4, 4, 3, NULL, 10.00, 74.00, NULL, NULL, 'Ut eaque ut atque. Recusandae atque corrupti velit fugiat dolores explicabo aliquam. Quos illo deserunt dolores tempore illum maiores mollitia. Velit et nulla sequi ea sit natus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(38, '2019-12-08 06:15:23', '2020-05-28 15:09:34', 5, 4, 3, NULL, 8.00, 72.00, NULL, NULL, 'Reprehenderit id dolorum incidunt et autem et. Quo consequatur fugit asperiores sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(39, '2020-01-10 06:14:52', '2020-05-28 15:09:34', 5, 4, 1, NULL, 8.00, 78.00, NULL, NULL, 'Qui ducimus rem fuga voluptatem accusantium veniam. Beatae et dolores voluptas animi reiciendis non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(40, '2020-01-10 22:45:55', '2020-05-28 15:09:34', 1, 5, 3, NULL, 5.00, 77.00, NULL, NULL, 'Recusandae qui omnis mollitia. Ea odit cupiditate cum perspiciatis sunt explicabo. Iure cupiditate qui adipisci officia quod rerum similique.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(41, '2019-06-08 17:27:53', '2020-05-28 15:09:34', 4, 4, 1, NULL, 5.00, 33.00, NULL, NULL, 'Ut recusandae et voluptas cupiditate. Autem asperiores id quo magni tempore sed. Molestias aliquam deserunt commodi exercitationem culpa. Id quo consequatur saepe ipsa earum autem occaecati.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(42, '2019-10-16 02:18:24', '2020-05-28 15:09:34', 2, 5, 3, NULL, 8.00, 74.00, NULL, NULL, 'Dicta fugit sit incidunt facere. Tempora sed sequi et et. Accusamus suscipit hic consequuntur et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(43, '2020-03-02 09:21:08', '2020-05-28 15:09:34', 5, 4, 2, NULL, 10.00, 86.00, NULL, NULL, 'Aut consequatur repellat dolores repudiandae. Dolor autem excepturi facere qui provident. Iste accusamus expedita esse. Dignissimos fugiat repellat et aut debitis ducimus non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(44, '2019-06-08 08:23:42', '2020-05-28 15:09:34', 2, 5, 2, NULL, 7.00, 77.00, NULL, NULL, 'Unde corrupti sed vel sint. Facilis illum iure ea culpa. Magnam et labore quia sit nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(45, '2019-09-10 08:57:24', '2020-05-28 15:09:34', 4, 5, 3, NULL, 9.00, 49.00, NULL, NULL, 'Aperiam laudantium necessitatibus enim quos. Dicta sunt ipsam sed eaque sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(46, '2020-05-04 00:05:51', '2020-05-28 15:09:34', 3, 4, 2, NULL, 6.00, 64.00, NULL, NULL, 'Qui laboriosam quia accusantium dicta explicabo. Illo commodi perferendis et esse. Neque fugit neque odio. Ea recusandae necessitatibus natus ut vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(47, '2020-05-01 16:49:07', '2020-05-28 15:09:34', 3, 4, 2, NULL, 6.00, 95.00, NULL, NULL, 'Qui vel sequi dolore. Sunt nemo nisi optio repellat sint et. In sunt earum est. Soluta et explicabo voluptate voluptatem blanditiis fugit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(48, '2019-09-04 01:10:16', '2020-05-28 15:09:34', 2, 4, 1, NULL, 10.00, 66.00, NULL, NULL, 'Mollitia excepturi rerum cum cum. Sit nobis praesentium temporibus facilis. Et voluptas odio sequi ut et eos cumque. Maiores eius et debitis dolores minus. Nesciunt ad accusamus asperiores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(49, '2019-09-17 19:30:25', '2020-05-28 15:09:34', 5, 4, 3, NULL, 9.00, 54.00, NULL, NULL, 'Delectus quam quisquam quia non reiciendis cupiditate officia. Quod consectetur aspernatur eos rem sit. Voluptas temporibus a repellat iste. Rerum quia non voluptate optio cupiditate culpa modi esse.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(50, '2020-03-23 02:14:49', '2020-05-28 15:09:34', 2, 5, 2, NULL, 8.00, 73.00, NULL, NULL, 'Inventore ut explicabo voluptate. Totam cum rerum alias. Consequatur eum hic quo sit. Nisi pariatur harum eos dicta voluptas sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(51, '2019-09-27 19:53:00', '2020-05-28 15:09:34', 5, 4, 3, NULL, 8.00, 78.00, NULL, NULL, 'Omnis quis quod vel fuga. Quia qui sint necessitatibus dolorum facere consequatur. Nostrum qui est enim odio velit omnis et. Voluptatem in voluptas quisquam et iure ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(52, '2019-09-11 10:00:24', '2020-05-28 15:09:34', 2, 4, 1, NULL, 9.00, 37.00, NULL, NULL, 'Amet ab iusto in culpa rerum. Eum vero recusandae dignissimos nam occaecati. Et officia eligendi voluptas et nostrum aut optio et. Illo non numquam sint et consectetur aperiam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(53, '2020-05-13 18:32:06', '2020-05-28 15:09:34', 4, 5, 1, NULL, 10.00, 79.00, NULL, NULL, 'Aut aut ducimus perspiciatis minima quaerat. Deleniti eligendi laboriosam officiis autem dolores esse. Aliquid saepe facere non maxime ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(54, '2019-07-06 02:14:44', '2020-05-28 15:09:34', 1, 5, 2, NULL, 6.00, 88.00, NULL, NULL, 'Eum facere omnis ab laudantium dolorum. Nemo praesentium veniam beatae. Perspiciatis consequatur harum nulla enim quam sint. Molestias voluptatibus voluptate totam quod.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(55, '2019-05-28 15:58:53', '2020-05-28 15:09:34', 3, 5, 2, NULL, 8.00, 80.00, NULL, NULL, 'Expedita est ipsa mollitia tenetur assumenda quia ex. Quasi necessitatibus sunt rerum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(56, '2019-12-02 06:24:10', '2020-05-28 15:09:34', 5, 4, 1, NULL, 6.00, 78.00, NULL, NULL, 'Nesciunt praesentium iste optio veniam culpa aliquid dolor eveniet. Consequatur et sit at maxime.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(57, '2019-07-24 20:36:41', '2020-05-28 15:09:34', 5, 4, 1, NULL, 7.00, 86.00, NULL, NULL, 'Inventore sapiente maiores et dolore. Commodi aut assumenda veniam deleniti animi odit iste. Quo est culpa blanditiis voluptas ipsam ut id. Perferendis rerum et rerum recusandae commodi temporibus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(58, '2020-01-09 10:34:35', '2020-05-28 15:09:34', 1, 4, 2, NULL, 9.00, 43.00, NULL, NULL, 'Sunt et nam placeat sequi voluptatem. Aspernatur nisi recusandae nulla rerum et. Debitis expedita explicabo neque laborum atque. Ut itaque cum ut repellendus inventore.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(59, '2019-07-16 03:04:55', '2020-05-28 15:09:34', 5, 4, 2, NULL, 7.00, 58.00, NULL, NULL, 'Libero quia porro nesciunt molestiae qui voluptas nesciunt. Sunt nihil aut sunt dolorem. Possimus voluptatem praesentium excepturi error sed. Nemo sint autem illum magnam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(60, '2020-02-15 18:56:47', '2020-05-28 15:09:34', 2, 4, 1, NULL, 8.00, 52.00, NULL, NULL, 'Exercitationem nisi deleniti perspiciatis modi quo. Dolores ea ipsum et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(61, '2020-01-13 05:32:38', '2020-05-28 15:09:34', 3, 5, 3, NULL, 7.00, 57.00, NULL, NULL, 'Exercitationem eum est nam inventore. Nostrum dolorem reprehenderit sint. Ipsum ullam et ea doloribus nemo et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(62, '2019-08-06 07:47:05', '2020-05-28 15:09:34', 1, 4, 1, NULL, 10.00, 31.00, NULL, NULL, 'Numquam voluptatem nulla maiores aut. Maxime iste quo dolor ullam doloremque adipisci placeat. Et ab voluptatum et velit maxime distinctio. Esse pariatur est nihil sit pariatur beatae eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(63, '2020-02-01 23:22:19', '2020-05-28 15:09:34', 1, 4, 1, NULL, 8.00, 40.00, NULL, NULL, 'Excepturi esse non qui corporis. Corrupti quas rerum et. Occaecati beatae debitis et esse qui sunt ducimus. Deleniti eaque rerum non eos. Nemo omnis voluptatem accusamus autem rerum aut voluptatum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(64, '2019-06-06 02:56:35', '2020-05-28 15:09:34', 5, 4, 3, NULL, 8.00, 62.00, NULL, NULL, 'Et praesentium numquam ipsum error suscipit impedit occaecati. Est hic quia occaecati pariatur. Quibusdam qui reprehenderit velit quia ab. Repellendus ratione temporibus repellat unde.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(65, '2020-02-26 22:05:12', '2020-05-28 15:09:34', 1, 5, 2, NULL, 8.00, 65.00, NULL, NULL, 'Doloribus animi provident fuga optio ad qui. Est maxime atque ea ullam. Qui placeat sit magnam amet sit similique. Molestiae ut odit ipsam omnis voluptas ad voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(66, '2019-08-01 22:02:04', '2020-05-28 15:09:34', 4, 4, 1, NULL, 7.00, 58.00, NULL, NULL, 'Ut voluptatem atque adipisci dolor necessitatibus. Qui assumenda ipsa non ullam. Delectus iusto quod quia quia ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(67, '2020-02-19 07:39:41', '2020-05-28 15:09:34', 3, 5, 3, NULL, 7.00, 72.00, NULL, NULL, 'Possimus voluptatem quo eos accusantium. Modi voluptatem est sed vero ut pariatur neque. Unde voluptatem quam est architecto sint quae. Accusantium corporis iure rem reprehenderit veniam repellat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(68, '2020-04-29 15:11:43', '2020-05-28 15:09:34', 1, 4, 2, NULL, 8.00, 74.00, NULL, NULL, 'Voluptatum et et quidem pariatur. Minus et asperiores aut optio consequuntur officiis temporibus. Qui officiis asperiores et harum consequatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(69, '2020-05-07 16:32:09', '2020-05-28 15:09:34', 5, 5, 2, NULL, 7.00, 64.00, NULL, NULL, 'Molestiae dolor eum occaecati aut maxime. Dolor consequatur incidunt soluta perferendis sit accusamus qui aut. Minima recusandae debitis sit vel eum quis laudantium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(70, '2020-01-22 13:54:40', '2020-05-28 15:09:34', 4, 4, 2, NULL, 8.00, 75.00, NULL, NULL, 'Et perspiciatis consequatur ducimus ex rerum. Quis dolores magnam qui minus atque qui amet. Sed id dolorem qui sunt expedita qui soluta.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(71, '2019-11-04 05:51:22', '2020-05-28 15:09:34', 1, 5, 2, NULL, 9.00, 80.00, NULL, NULL, 'Quis nisi et distinctio laudantium commodi. Sint quos ut quisquam provident. Quis et asperiores tempora saepe numquam veritatis. Recusandae ut dolore ea voluptas maxime temporibus temporibus esse.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(72, '2020-01-11 08:40:52', '2020-05-28 15:09:34', 1, 5, 3, NULL, 10.00, 48.00, NULL, NULL, 'Ut dolorum ut corrupti est distinctio enim. Vero omnis quasi impedit modi quis dolorem voluptatum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(73, '2020-04-06 16:18:20', '2020-05-28 15:09:34', 5, 4, 2, NULL, 6.00, 55.00, NULL, NULL, 'Quis consequatur voluptatem voluptatem corrupti autem nostrum. Deleniti deserunt et architecto autem autem adipisci tenetur. Molestiae ducimus adipisci commodi voluptate.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(74, '2019-11-15 05:50:54', '2020-05-28 15:09:34', 1, 5, 3, NULL, 10.00, 100.00, NULL, NULL, 'Exercitationem fugit a et dignissimos commodi nam. Ab voluptates asperiores veniam illo voluptatem quos assumenda. Sed vel soluta magnam enim magnam enim.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(75, '2019-09-13 20:38:19', '2020-05-28 15:09:34', 4, 5, 1, NULL, 5.00, 38.00, NULL, NULL, 'Et dolores et alias a necessitatibus incidunt. Consectetur libero doloribus suscipit maiores quidem voluptates aperiam. Maiores delectus tempore et dolorem voluptas qui sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(76, '2020-03-30 20:50:42', '2020-05-28 15:09:34', 5, 4, 1, NULL, 6.00, 70.00, NULL, NULL, 'Non accusamus consequatur veritatis nam mollitia ut animi. Sit ut incidunt aliquid enim dolorem. Quo mollitia iusto cum unde magni. Perferendis maiores quia nobis voluptate quia iusto unde.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(77, '2019-12-17 08:27:10', '2020-05-28 15:09:34', 4, 5, 2, NULL, 8.00, 33.00, NULL, NULL, 'Impedit ipsam sint aut reprehenderit quam et quia. Cum ullam ut ea aut. Officiis cumque praesentium vel ut id animi est et. Incidunt molestiae alias ipsam magnam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(78, '2019-06-08 12:43:41', '2020-05-28 15:09:34', 5, 4, 2, NULL, 10.00, 60.00, NULL, NULL, 'Nesciunt sunt ut molestiae vel. Iste autem dolore excepturi quidem necessitatibus sint. Amet numquam natus ducimus rerum assumenda debitis illum. Veritatis voluptas qui quidem ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(79, '2020-03-16 07:56:25', '2020-05-28 15:09:34', 3, 5, 1, NULL, 6.00, 55.00, NULL, NULL, 'Consectetur doloremque iusto voluptatibus recusandae enim. Illo sit ut et modi hic earum vitae. Velit et est dolor iure nesciunt molestias.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(80, '2019-06-03 20:16:39', '2020-05-28 15:09:34', 1, 4, 3, NULL, 10.00, 92.00, NULL, NULL, 'Enim iusto sapiente sit laudantium quidem necessitatibus et. Eligendi autem quo eligendi et minima veniam ullam. Asperiores odit voluptates rerum vel ea eum totam. Eius ut vero sapiente et quaerat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(81, '2019-10-29 06:39:29', '2020-05-28 15:09:34', 5, 5, 1, NULL, 6.00, 57.00, NULL, NULL, 'Vel omnis deserunt modi quo asperiores delectus. Eligendi deserunt voluptates repudiandae quaerat cupiditate autem at. Pariatur qui qui ab doloribus cupiditate voluptatem consequatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(82, '2019-09-18 05:07:13', '2020-05-28 15:09:34', 4, 5, 1, NULL, 5.00, 85.00, NULL, NULL, 'Et ratione soluta laborum dolorem consequatur minima tempore. Quis inventore id voluptas omnis. Unde quas nemo ut ipsum. Neque natus saepe minima et officiis repellat sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(83, '2019-09-22 22:04:16', '2020-05-28 15:09:34', 5, 5, 1, NULL, 9.00, 71.00, NULL, NULL, 'Dignissimos quia sit cupiditate minus explicabo. Molestias quibusdam odio porro quia ab soluta consequatur. Voluptas omnis adipisci qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(84, '2020-02-26 21:31:32', '2020-05-28 15:09:34', 2, 4, 1, NULL, 7.00, 66.00, NULL, NULL, 'Nobis sit debitis esse qui. Illo in qui ut quod repellendus aut. Et voluptas rerum nostrum iusto ut. Iste molestiae ut voluptatum dignissimos. Qui aut aperiam eos minima ex nesciunt et illum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(85, '2019-11-05 17:25:28', '2020-05-28 15:09:34', 5, 5, 3, NULL, 8.00, 73.00, NULL, NULL, 'Eveniet consequatur tempore nam deleniti et velit ut. Nisi dolores est quo odio. Quae ipsam quia qui eum consequuntur dolor numquam nisi. Inventore quod blanditiis omnis assumenda.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(86, '2019-07-31 12:36:11', '2020-05-28 15:09:34', 2, 5, 2, NULL, 6.00, 78.00, NULL, NULL, 'Doloremque sunt inventore sint id. Vitae ad velit et quia aut voluptatem repudiandae. Totam velit aut molestias eos. Magnam ea eveniet id consequatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(87, '2020-03-30 19:30:28', '2020-05-28 15:09:34', 2, 5, 1, NULL, 9.00, 95.00, NULL, NULL, 'Labore inventore accusantium a. Illo qui velit omnis illo placeat reprehenderit. Quas dolorem quod ullam voluptates aut incidunt et possimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(88, '2020-02-09 01:08:10', '2020-05-28 15:09:34', 5, 4, 3, NULL, 7.00, 93.00, NULL, NULL, 'Architecto et ullam sint. Rerum repudiandae omnis maxime voluptatem dicta at.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(89, '2019-10-02 12:33:41', '2020-05-28 15:09:34', 1, 5, 2, NULL, 10.00, 83.00, NULL, NULL, 'Modi facilis facilis facilis voluptatem est et iure. Explicabo ab sunt et consequuntur ex at. Rerum corporis ex voluptatum sint iste. Et autem aliquid et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(90, '2020-01-24 06:19:08', '2020-05-28 15:09:34', 2, 5, 1, NULL, 10.00, 32.00, NULL, NULL, 'Sed similique molestiae id voluptatem id suscipit. Est reprehenderit natus voluptatem expedita.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(91, '2019-12-27 00:19:21', '2020-05-28 15:09:34', 4, 5, 2, NULL, 9.00, 74.00, NULL, NULL, 'Numquam et tenetur fugiat et tenetur. Numquam aperiam dolor officia perspiciatis consequatur ut quod. Et totam mollitia qui ipsam. Quia et molestiae quo eligendi doloribus numquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(92, '2019-07-03 18:27:47', '2020-05-28 15:09:34', 4, 4, 3, NULL, 9.00, 84.00, NULL, NULL, 'Nihil reiciendis nostrum consectetur repellendus debitis est. Autem quam ad facere. Et veniam cumque non a non et corporis. A doloribus ex dicta.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(93, '2020-05-06 08:56:31', '2020-05-28 15:09:34', 3, 4, 3, NULL, 6.00, 46.00, NULL, NULL, 'Voluptate repudiandae laborum quia vitae vel vel voluptatem. Et voluptatem eos error hic voluptatibus omnis. Rerum in ut inventore pariatur illum. Dignissimos corrupti quia aut velit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(94, '2019-11-16 13:11:50', '2020-05-28 15:09:34', 1, 5, 1, NULL, 5.00, 68.00, NULL, NULL, 'Accusantium dolor maxime quaerat. Nihil et atque et est quibusdam accusamus perspiciatis excepturi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(95, '2019-09-16 13:12:25', '2020-05-28 15:09:34', 1, 5, 3, NULL, 10.00, 56.00, NULL, NULL, 'Maiores doloribus provident facere consequuntur. Cupiditate ipsum fugiat sed soluta asperiores. Vel deleniti sed dolorem nobis doloremque. Dolores molestias itaque id enim.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(96, '2020-05-19 05:26:58', '2020-05-28 15:09:34', 5, 5, 1, NULL, 6.00, 33.00, NULL, NULL, 'Voluptatibus laborum consequuntur earum magni. Modi ea officiis nulla praesentium modi accusamus nesciunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(97, '2020-05-13 04:50:27', '2020-05-28 15:09:34', 4, 4, 2, NULL, 5.00, 52.00, NULL, NULL, 'Soluta ea fugit optio hic et voluptatem. Consequuntur dignissimos et necessitatibus eos tempore. Totam ipsum dicta veniam provident distinctio vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(98, '2019-10-05 03:05:51', '2020-05-28 15:09:34', 1, 4, 1, NULL, 7.00, 31.00, NULL, NULL, 'Et exercitationem est id dolorem non veritatis. Officia dolores vitae dolorem. Sit suscipit voluptas molestiae. Sed cupiditate omnis et ea ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(99, '2019-10-01 18:22:12', '2020-05-28 15:09:34', 3, 5, 3, NULL, 5.00, 50.00, NULL, NULL, 'Molestiae ab quis est nulla. Perspiciatis sint aut accusamus ut et. Et dolores consequatur sed suscipit quam totam. Molestiae et inventore non non ut molestias molestiae mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(100, '2020-02-05 23:07:54', '2020-05-28 15:09:34', 1, 4, 1, NULL, 6.00, 93.00, NULL, NULL, 'Illo omnis sunt culpa sit quia molestias repellendus quia. Et est alias est voluptas vero et non nam. Ut autem voluptatem aut reiciendis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(101, '2020-04-11 14:58:55', '2020-05-28 15:09:34', 1, 4, 3, NULL, 7.00, 57.00, NULL, NULL, 'Et fugiat vel non est aut exercitationem deleniti. Ut pariatur fugit vel molestiae. Non earum ipsa ut quo fuga quo rem. Et accusamus et perferendis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(102, '2019-12-02 21:56:38', '2020-05-28 15:09:34', 1, 5, 3, NULL, 9.00, 88.00, NULL, NULL, 'Odio et unde sunt doloribus non et. Culpa facilis aliquid dignissimos et. Quam quae eum voluptatibus similique. Id ab maiores eveniet qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(103, '2019-09-17 17:28:05', '2020-05-28 15:09:34', 5, 4, 1, NULL, 10.00, 69.00, NULL, NULL, 'Quia in aut blanditiis. Expedita magni sunt voluptas. Sunt sequi rerum porro sed earum. Eligendi modi doloribus et at praesentium placeat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(104, '2019-09-09 20:42:29', '2020-05-28 15:09:34', 1, 5, 2, NULL, 9.00, 63.00, NULL, NULL, 'Tenetur excepturi maiores culpa repellat doloremque aut animi. Quis facere accusantium tempore. Delectus quis aliquam autem aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(105, '2020-02-23 05:42:10', '2020-05-28 15:09:34', 5, 5, 3, NULL, 5.00, 77.00, NULL, NULL, 'In reprehenderit officia rerum voluptatem odio deleniti reprehenderit. Aut consectetur velit nesciunt necessitatibus autem iusto. Et fugiat incidunt facilis dolores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(106, '2020-01-30 14:04:26', '2020-05-28 15:09:34', 1, 4, 2, NULL, 8.00, 97.00, NULL, NULL, 'Quia hic sunt quo id numquam consequatur ut maxime. Dicta non quo est a et reprehenderit. A dolores quod voluptatem dolorem unde. Asperiores consequuntur veniam velit tempora nisi occaecati.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(107, '2019-07-08 23:28:50', '2020-05-28 15:09:34', 5, 4, 1, NULL, 6.00, 80.00, NULL, NULL, 'A recusandae ipsum nemo. Voluptas rerum vero consequuntur asperiores animi maiores id. Consectetur non doloremque sed ut. Consequatur laudantium ipsum possimus necessitatibus et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(108, '2019-10-31 03:22:51', '2020-05-28 15:09:34', 2, 5, 3, NULL, 5.00, 81.00, NULL, NULL, 'Quia accusantium in odit ut. Qui cupiditate harum eveniet ducimus itaque ut. Quia modi aut velit laudantium sed. Voluptatem pariatur quam commodi recusandae molestias molestiae optio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(109, '2019-10-24 15:21:58', '2020-05-28 15:09:34', 5, 5, 1, NULL, 6.00, 78.00, NULL, NULL, 'Sunt minus ut eos neque quia eos. Doloremque quia iste officia vel. Nulla nam laboriosam voluptas consectetur sapiente officia sunt eos. Unde est voluptas et quibusdam fuga distinctio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(110, '2019-08-29 18:16:33', '2020-05-28 15:09:34', 1, 4, 2, NULL, 8.00, 31.00, NULL, NULL, 'Illo adipisci soluta hic est temporibus. Aspernatur fugiat modi aspernatur ex tempore praesentium. Vitae aut accusantium veritatis magni cum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(111, '2019-12-29 07:15:03', '2020-05-28 15:09:34', 5, 4, 2, NULL, 7.00, 36.00, NULL, NULL, 'Rerum in perspiciatis eaque voluptate laboriosam provident nostrum. Ipsa voluptatem dolore ut in. Ex facere magni officia earum animi natus voluptate. Quam voluptatem quia eos rerum provident.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(112, '2019-06-21 18:31:55', '2020-05-28 15:09:34', 4, 4, 1, NULL, 6.00, 75.00, NULL, NULL, 'Quaerat non consequuntur laudantium autem. Sint est id sunt omnis accusamus explicabo qui. Enim placeat qui qui et vero inventore.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(113, '2020-05-14 03:02:51', '2020-05-28 15:09:34', 2, 5, 2, NULL, 9.00, 92.00, NULL, NULL, 'Delectus natus soluta et tempora fugiat. Sunt velit quaerat enim quasi. Adipisci veritatis numquam doloremque eos. Consectetur cum explicabo nulla aut explicabo aut in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(114, '2019-06-01 02:08:48', '2020-05-28 15:09:34', 5, 4, 2, NULL, 8.00, 53.00, NULL, NULL, 'Aliquam qui id vel sunt ex culpa nulla soluta. Dolor dolor aut debitis numquam voluptatem magni dolores. Possimus voluptates ullam odio et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(115, '2019-07-02 22:15:25', '2020-05-28 15:09:34', 5, 4, 2, NULL, 9.00, 82.00, NULL, NULL, 'Eum ipsa magnam deleniti magni quia. Corporis culpa omnis porro velit. Iure dolor dolorem quis enim. Aliquid est vitae magnam repellendus tempora qui aspernatur. Placeat consectetur et sed fuga.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(116, '2020-05-08 20:39:20', '2020-05-28 15:09:34', 5, 5, 1, NULL, 8.00, 48.00, NULL, NULL, 'Quae qui dolore et. Maiores possimus magni aut excepturi. Voluptatem quis error maxime explicabo. Qui placeat dolorem sit sequi rerum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(117, '2020-02-15 21:46:37', '2020-05-28 15:09:34', 4, 5, 2, NULL, 9.00, 76.00, NULL, NULL, 'Ipsum et aut ratione. Iusto quaerat quae sunt est. Delectus rerum est quaerat dolor corrupti nemo doloribus omnis. Aut quaerat vel ducimus et. Dolor vitae dicta non mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(118, '2020-01-21 23:28:01', '2020-05-28 15:09:34', 1, 5, 3, NULL, 9.00, 34.00, NULL, NULL, 'Quaerat nesciunt maxime voluptatem iste exercitationem. Excepturi doloremque aut eligendi voluptas aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(119, '2019-07-25 20:28:11', '2020-05-28 15:09:34', 4, 4, 3, NULL, 7.00, 69.00, NULL, NULL, 'Aut voluptatum id id rerum et. Id voluptatem qui totam inventore rerum et ut. Quod distinctio iure occaecati quae aut qui molestiae voluptatem. Maxime quo dolores voluptas ratione qui iusto quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(120, '2019-06-22 22:24:39', '2020-05-28 15:09:34', 4, 5, 1, NULL, 7.00, 84.00, NULL, NULL, 'Praesentium minima maxime delectus. Eaque iste atque necessitatibus quia. In expedita eum et et corrupti. Ipsam eligendi doloribus ducimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(121, '2020-03-23 00:03:44', '2020-05-28 15:09:34', 1, 5, 2, NULL, 9.00, 100.00, NULL, NULL, 'Ea explicabo hic ut non similique. Dolor aut in deleniti et dolor aut. Eos iure est officiis dolores. Quo vel et veniam ad dignissimos. Molestiae recusandae ea officia. Facilis voluptas qui magni ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(122, '2020-03-30 07:19:02', '2020-05-28 15:09:34', 1, 5, 3, NULL, 9.00, 94.00, NULL, NULL, 'Quis porro corrupti tempora quia debitis nihil. Dicta expedita nam enim quidem. Est voluptatem veniam vitae nostrum sit necessitatibus placeat. Aliquid et non assumenda.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(123, '2020-05-02 10:38:15', '2020-05-28 15:09:34', 2, 4, 3, NULL, 7.00, 48.00, NULL, NULL, 'Ex molestias quas est fugiat ullam tempora impedit delectus. Doloribus sequi dolores esse sint hic commodi. Voluptatem quo aspernatur enim reiciendis officia omnis aut nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(124, '2019-09-27 19:16:18', '2020-05-28 15:09:34', 3, 4, 1, NULL, 9.00, 76.00, NULL, NULL, 'Eum nihil doloribus doloremque voluptatem. Quaerat voluptatem consequuntur sint. Modi tenetur sed qui. Praesentium accusantium omnis at.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(125, '2019-12-22 09:40:47', '2020-05-28 15:09:34', 3, 5, 3, NULL, 9.00, 71.00, NULL, NULL, 'Ipsa voluptatem numquam consectetur esse consequuntur. Consequatur et sit et nulla nihil placeat. Provident odit et quidem facere recusandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(126, '2019-11-22 21:55:01', '2020-05-28 15:09:34', 4, 4, 1, NULL, 5.00, 73.00, NULL, NULL, 'Ea deleniti aspernatur cupiditate a sed. Corporis tempora qui veritatis. Est maiores sed incidunt est iste.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(127, '2020-01-17 02:01:49', '2020-05-28 15:09:34', 3, 4, 3, NULL, 8.00, 37.00, NULL, NULL, 'Accusantium est placeat pariatur iusto consequatur vel sed. Placeat incidunt mollitia quibusdam sunt amet. Maxime sequi et nulla quia est et odio. Dolore ex nulla aspernatur et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(128, '2019-12-09 08:20:56', '2020-05-28 15:09:34', 4, 4, 2, NULL, 5.00, 96.00, NULL, NULL, 'Mollitia quis quam impedit ut harum labore. Et impedit non nihil quibusdam sint suscipit qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(129, '2019-12-26 19:59:23', '2020-05-28 15:09:34', 4, 5, 2, NULL, 9.00, 71.00, NULL, NULL, 'Voluptatum dolorum incidunt eaque sed accusantium maxime. Soluta autem odit sed. Repudiandae saepe minima excepturi recusandae est iure. Similique facilis ab ut ducimus nihil soluta qui distinctio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(130, '2019-10-13 23:13:04', '2020-05-28 15:09:34', 2, 4, 2, NULL, 5.00, 49.00, NULL, NULL, 'Nostrum molestias est totam aut placeat soluta ut. Autem sed nam omnis magni labore dolor provident. Alias ab vel autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(131, '2019-08-03 18:40:27', '2020-05-28 15:09:34', 5, 5, 2, NULL, 6.00, 73.00, NULL, NULL, 'Molestiae eos libero qui voluptates. Nesciunt ut vel dignissimos. Qui blanditiis accusantium aut expedita praesentium id quae. Numquam officiis vel beatae inventore porro. Vitae aut dolore qui id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(132, '2019-12-10 10:01:20', '2020-05-28 15:09:34', 1, 4, 3, NULL, 9.00, 92.00, NULL, NULL, 'Fugit aut ut dolores assumenda. Magnam omnis beatae autem qui quo voluptatibus soluta recusandae. Non ut molestiae iste rerum et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(133, '2019-07-20 21:05:14', '2020-05-28 15:09:34', 4, 4, 3, NULL, 6.00, 64.00, NULL, NULL, 'Ut corporis quia adipisci facere molestiae quia distinctio sed. Voluptatem modi aperiam ut itaque ducimus rerum quidem. Unde dolorem qui totam et id. Quidem ut placeat ea quo est aliquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(134, '2019-11-24 03:19:00', '2020-05-28 15:09:34', 3, 5, 2, NULL, 5.00, 63.00, NULL, NULL, 'Possimus sunt tempora nisi voluptatem accusamus. Cupiditate enim architecto est tenetur a et tempora. Quasi qui voluptas in doloribus enim cumque praesentium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(135, '2019-07-14 21:18:49', '2020-05-28 15:09:34', 3, 4, 2, NULL, 6.00, 34.00, NULL, NULL, 'Explicabo repellat in atque doloremque. Modi consectetur non sed omnis. Nostrum autem voluptas debitis quo hic illum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(136, '2019-08-17 13:12:46', '2020-05-28 15:09:34', 4, 5, 2, NULL, 8.00, 81.00, NULL, NULL, 'Esse excepturi id tempore. Ut quisquam est maxime dignissimos architecto. Fuga iure reiciendis illo enim ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(137, '2020-03-01 15:39:27', '2020-05-28 15:09:34', 4, 4, 3, NULL, 9.00, 74.00, NULL, NULL, 'Id sit dolores labore ut assumenda. Impedit architecto nostrum ipsa recusandae minima velit. Repudiandae alias maiores asperiores velit expedita ut voluptate. A voluptates perferendis eum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(138, '2019-10-09 02:15:23', '2020-05-28 15:09:34', 5, 4, 3, NULL, 5.00, 39.00, NULL, NULL, 'Illum veritatis et distinctio nobis est ea est. Error qui qui expedita eos enim. Sed at dolorem et nemo modi fugit. Ullam et harum ratione recusandae aliquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(139, '2019-10-10 17:08:25', '2020-05-28 15:09:34', 1, 5, 3, NULL, 5.00, 89.00, NULL, NULL, 'Molestiae sunt a aperiam nobis. Nesciunt sint possimus impedit sint distinctio quia. Nulla dolore at rerum totam aut molestias non ut. Aut ipsa dolorem officiis corporis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(140, '2019-09-26 12:54:51', '2020-05-28 15:09:34', 4, 4, 1, NULL, 10.00, 38.00, NULL, NULL, 'Quas alias et veniam. Similique nihil qui magni voluptas. Qui ut eos porro architecto fugiat iure. Voluptate officiis voluptas sunt necessitatibus repudiandae sunt pariatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(141, '2019-08-20 21:21:20', '2020-05-28 15:09:34', 4, 5, 2, NULL, 5.00, 100.00, NULL, NULL, 'Sit in autem voluptas aut amet dignissimos. Distinctio deleniti culpa eius sint. Distinctio incidunt reprehenderit pariatur quo non. A reiciendis unde eum dolores voluptatem nisi odit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(142, '2019-11-18 04:25:45', '2020-05-28 15:09:34', 1, 4, 2, NULL, 7.00, 88.00, NULL, NULL, 'Doloremque amet sunt ad dolorum temporibus. Porro qui eaque sed sit sunt laborum. Enim dolor eaque aut ut et. Id quibusdam doloremque quia totam. Explicabo nisi quis animi quos non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(143, '2020-04-10 13:49:19', '2020-05-28 15:09:34', 2, 5, 1, NULL, 8.00, 31.00, NULL, NULL, 'Sed corporis saepe ut saepe quis et dicta. Suscipit voluptatem nemo id voluptatem ipsum nihil. Culpa inventore id repellendus non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(144, '2019-10-08 21:22:57', '2020-05-28 15:09:34', 4, 5, 2, NULL, 9.00, 69.00, NULL, NULL, 'Dolorem natus porro et facere recusandae facere corrupti. Cumque voluptas nemo optio asperiores repudiandae error nesciunt. Mollitia in sapiente in illum aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(145, '2020-02-01 03:35:24', '2020-05-28 15:09:34', 1, 5, 2, NULL, 5.00, 100.00, NULL, NULL, 'Quia illum voluptatum quam similique. Facilis rerum accusantium et dolor. Iste dolor provident nam temporibus nostrum. Sed fuga non saepe.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(146, '2019-08-09 03:07:51', '2020-05-28 15:09:34', 2, 4, 1, NULL, 7.00, 57.00, NULL, NULL, 'Dicta qui aut nemo non nostrum illo aspernatur. Est distinctio dolorem totam necessitatibus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(147, '2020-01-18 13:37:39', '2020-05-28 15:09:34', 5, 4, 1, NULL, 6.00, 90.00, NULL, NULL, 'Est eaque quasi ut dolorem. Omnis iure excepturi voluptatem optio rerum. Doloribus explicabo cupiditate nisi et ea repudiandae nihil eius.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(148, '2020-04-27 15:27:45', '2020-05-28 15:09:34', 3, 5, 1, NULL, 7.00, 38.00, NULL, NULL, 'Molestias sint cum et sapiente assumenda voluptas dolor. Quas repudiandae praesentium et rem eos quae alias.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(149, '2020-02-25 20:26:54', '2020-05-28 15:09:34', 2, 5, 2, NULL, 7.00, 69.00, NULL, NULL, 'Tenetur eligendi voluptas fugiat. Nam vel id est tempora illo eum dolorum nostrum. Sed alias amet consequuntur quaerat aut voluptas laboriosam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(150, '2019-11-18 21:06:15', '2020-05-28 15:09:34', 4, 5, 3, NULL, 7.00, 32.00, NULL, NULL, 'Temporibus est et omnis nemo quo pariatur. Voluptatem quia nesciunt cupiditate autem quibusdam earum. Porro eligendi tempore velit in id eum vero corporis. Atque molestiae illum tenetur incidunt vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(151, '2019-08-11 23:36:01', '2020-05-28 15:09:34', 3, 4, 1, NULL, 6.00, 73.00, NULL, NULL, 'Repudiandae rem mollitia nihil. Et et totam ut vel quo. In quo reprehenderit nemo quis occaecati laborum tempore. Exercitationem minima architecto et aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(152, '2019-11-02 09:12:06', '2020-05-28 15:09:34', 4, 4, 2, NULL, 6.00, 78.00, NULL, NULL, 'Aut ipsum numquam nihil. Provident ad odit aliquam quas id. Voluptatem deleniti quo ut sapiente eos et tempora.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(153, '2019-06-16 08:01:55', '2020-05-28 15:09:34', 1, 5, 3, NULL, 8.00, 85.00, NULL, NULL, 'Consequatur et magnam mollitia dolor ipsam animi. Corporis quidem placeat distinctio praesentium. Sint eius omnis ipsa aliquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(154, '2019-11-15 23:18:04', '2020-05-28 15:09:34', 1, 5, 3, NULL, 10.00, 83.00, NULL, NULL, 'Rerum modi quidem nesciunt vel sint qui. Rerum beatae autem occaecati ut. Dolor praesentium minima cupiditate est. Possimus at nobis reprehenderit facere iure odit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(155, '2019-10-28 07:37:29', '2020-05-28 15:09:34', 4, 5, 3, NULL, 5.00, 63.00, NULL, NULL, 'Aut distinctio quisquam dignissimos sed modi. Eos labore delectus sapiente. Qui suscipit dolor est eveniet. Numquam veniam dolores natus sit dolor et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(156, '2020-04-05 00:11:23', '2020-05-28 15:09:34', 2, 4, 2, NULL, 10.00, 33.00, NULL, NULL, 'Enim nihil earum culpa numquam. Dolor repellendus quis quisquam et aliquid aperiam. Cupiditate recusandae culpa iste aliquam quia doloribus itaque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(157, '2020-01-22 18:39:56', '2020-05-28 15:09:34', 5, 4, 1, NULL, 5.00, 75.00, NULL, NULL, 'Cumque sint ipsum error quibusdam. Sed et debitis ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(158, '2019-05-29 07:07:13', '2020-05-28 15:09:34', 5, 4, 3, NULL, 9.00, 72.00, NULL, NULL, 'Assumenda et illum fugit neque architecto. Est voluptatem facilis voluptas adipisci et in. Quis aut exercitationem nulla quis modi voluptatem a. Porro ea facilis eum reprehenderit laudantium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(159, '2020-03-28 11:45:23', '2020-05-28 15:09:34', 3, 5, 3, NULL, 8.00, 81.00, NULL, NULL, 'Incidunt ab placeat reiciendis culpa repellendus natus quidem tempora. Dicta adipisci inventore ut dolores molestias dolorum. Earum consequatur ipsam iste eius eos. Praesentium illum quo earum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(160, '2019-07-22 22:42:15', '2020-05-28 15:09:34', 3, 5, 2, NULL, 8.00, 57.00, NULL, NULL, 'Unde consequatur necessitatibus atque consequatur assumenda debitis. Eius tenetur rem illum accusamus quidem quia. Saepe quisquam neque beatae eligendi non quisquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(161, '2019-08-22 14:23:42', '2020-05-28 15:09:34', 2, 5, 2, NULL, 10.00, 48.00, NULL, NULL, 'Velit voluptas animi aspernatur perferendis quia dolorum perspiciatis. Consectetur velit voluptatem labore. Quia doloremque dolores sint molestias tempora ut rerum eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(162, '2019-07-29 05:56:52', '2020-05-28 15:09:34', 4, 4, 3, NULL, 9.00, 47.00, NULL, NULL, 'Corporis excepturi sit maiores dolorem aut qui veritatis. Qui ut voluptates sed id. Vitae fugit recusandae voluptate. Aut officia accusantium ut ea qui natus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(163, '2019-09-17 11:29:20', '2020-05-28 15:09:34', 3, 4, 1, NULL, 5.00, 67.00, NULL, NULL, 'Perferendis eos non officia esse. Veniam aut eius et dolorem quia in deserunt. Et sunt accusamus maxime veritatis quia saepe nobis neque. Totam beatae voluptatem rem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(164, '2019-07-13 05:39:24', '2020-05-28 15:09:34', 4, 4, 3, NULL, 9.00, 59.00, NULL, NULL, 'Possimus debitis voluptas sequi iste. Culpa delectus quis dignissimos molestiae nihil tenetur dolorem. Unde modi ab enim debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(165, '2020-01-16 13:14:17', '2020-05-28 15:09:34', 4, 5, 2, NULL, 5.00, 80.00, NULL, NULL, 'Placeat ut voluptatum dolorem. Dolores fugiat quisquam aut recusandae ipsum amet. Dolor corporis nemo qui aut atque. Ipsam rerum animi voluptatum voluptas dicta nisi inventore perspiciatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(166, '2019-11-11 18:34:06', '2020-05-28 15:09:34', 3, 5, 2, NULL, 5.00, 44.00, NULL, NULL, 'A architecto exercitationem perferendis consequuntur. Delectus minima aut in quo. Eius voluptas omnis illo numquam animi odio molestiae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(167, '2020-02-22 02:07:30', '2020-05-28 15:09:34', 5, 4, 1, NULL, 8.00, 61.00, NULL, NULL, 'Id deserunt placeat dolorum nam ratione nemo optio. Ut voluptas dicta consequuntur sit incidunt. Non quos repudiandae non ipsum unde quo. Est ea accusantium ut id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(168, '2019-09-22 16:50:55', '2020-05-28 15:09:34', 3, 5, 1, NULL, 5.00, 81.00, NULL, NULL, 'Dolores sit et quidem. Esse at eligendi autem earum omnis. Sit iure corrupti quam deleniti sequi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(169, '2019-05-31 20:56:10', '2020-05-28 15:09:34', 3, 5, 3, NULL, 10.00, 36.00, NULL, NULL, 'Et esse totam blanditiis dolorem et quo. Ea molestias saepe voluptate recusandae unde. Est et et dolore ut ratione qui sint. Modi expedita quis dolore non animi praesentium quibusdam maiores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(170, '2020-01-19 07:40:06', '2020-05-28 15:09:34', 2, 4, 1, NULL, 8.00, 85.00, NULL, NULL, 'Consectetur facere ut porro tenetur sit. Error doloremque est corporis sequi iste minima sequi. Atque beatae nobis quis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`) VALUES
(171, '2019-06-03 01:39:30', '2020-05-28 15:09:34', 3, 5, 1, NULL, 10.00, 98.00, NULL, NULL, 'Quas non illo voluptatem hic dolore quo et. Asperiores ut aut voluptate perferendis inventore numquam beatae et. Consequatur sapiente consequatur eum voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(172, '2019-08-20 12:10:34', '2020-05-28 15:09:34', 2, 4, 3, NULL, 8.00, 70.00, NULL, NULL, 'Rem voluptatem unde ab sit. Nihil quis aliquam odio odit aut quibusdam explicabo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(173, '2020-04-22 19:43:49', '2020-05-28 15:09:34', 3, 5, 2, NULL, 5.00, 32.00, NULL, NULL, 'Eaque non animi velit rem autem recusandae aut. Autem doloremque et quisquam id omnis saepe. Est tempora molestias blanditiis voluptas ut et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(174, '2020-05-25 02:03:00', '2020-05-28 15:09:34', 3, 4, 2, NULL, 10.00, 38.00, NULL, NULL, 'Laudantium dicta perferendis nisi repudiandae ea et sint. Quasi eum doloremque reiciendis cum numquam natus. Aut doloremque ex minima sit quibusdam at repudiandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(175, '2019-09-28 16:45:55', '2020-05-28 15:09:34', 4, 5, 1, NULL, 5.00, 87.00, NULL, NULL, 'Earum impedit illo itaque a voluptatem porro voluptatum. Officia suscipit minus et molestiae. Autem quis excepturi animi natus tenetur. Dolores doloribus sit modi blanditiis unde quo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(176, '2020-05-14 13:26:15', '2020-05-28 15:09:35', 1, 4, 1, NULL, 8.00, 32.00, NULL, NULL, 'Quis atque et iusto dolore. Minima nihil ut architecto eaque omnis consequatur est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(177, '2019-07-13 10:57:20', '2020-05-28 15:09:35', 1, 5, 3, NULL, 9.00, 93.00, NULL, NULL, 'Odio sit officia aut ut est maiores et aut. Quis dicta rerum temporibus. Fugit vero similique ipsum velit magni.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(178, '2019-08-11 04:59:37', '2020-05-28 15:09:35', 1, 4, 1, NULL, 10.00, 46.00, NULL, NULL, 'Commodi ut qui sed illum temporibus doloremque. Magnam et placeat tempora a eaque quam voluptatibus. Unde consequuntur modi quo nihil voluptate. Pariatur et tempore qui totam esse natus nostrum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(179, '2020-05-24 01:48:00', '2020-05-28 15:09:35', 5, 4, 1, NULL, 6.00, 93.00, NULL, NULL, 'Impedit est numquam a maxime quaerat ipsum. Quo minus doloribus impedit saepe suscipit. Qui placeat quo est reiciendis quos ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(180, '2019-08-07 23:06:00', '2020-05-28 15:09:35', 2, 4, 2, NULL, 8.00, 90.00, NULL, NULL, 'Officia dolor dolorem sint molestiae error sunt voluptatem. Qui unde velit expedita officiis sunt. Minima commodi omnis ea nihil ducimus tenetur. Ratione rerum blanditiis recusandae assumenda enim.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(181, '2020-03-10 06:29:13', '2020-05-28 15:09:35', 3, 5, 3, NULL, 9.00, 93.00, NULL, NULL, 'Aut sunt omnis est. Ut sunt odit laudantium repellendus atque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(182, '2020-05-03 04:00:09', '2020-05-28 15:09:35', 3, 4, 2, NULL, 7.00, 34.00, NULL, NULL, 'Est laborum et doloribus ipsam omnis pariatur sed. Voluptates enim alias eos beatae rerum alias quo. Optio dolorem quia sunt quae magnam non. Qui ex ut odio dolor nam aut soluta.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(183, '2019-08-13 10:55:38', '2020-05-28 15:09:35', 1, 4, 3, NULL, 6.00, 48.00, NULL, NULL, 'Sequi quia quia dolor et maxime recusandae maxime. Ipsum quos rem qui commodi est voluptate tenetur. Ut aut sit quis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(184, '2020-01-01 13:08:21', '2020-05-28 15:09:35', 4, 4, 1, NULL, 8.00, 75.00, NULL, NULL, 'Et est dolorem tempora quia voluptatem iusto asperiores ut. Similique dicta rerum expedita voluptatem. Voluptatibus qui possimus ipsa esse autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(185, '2019-09-30 19:49:23', '2020-05-28 15:09:35', 4, 5, 1, NULL, 9.00, 56.00, NULL, NULL, 'Ipsum et sunt voluptates sint harum nihil voluptatibus voluptate. Accusamus quasi cumque voluptas et. Qui ut dolor assumenda voluptatem. Dolores rem eum voluptas amet id non numquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(186, '2020-03-10 14:28:49', '2020-05-28 15:09:35', 4, 5, 1, NULL, 10.00, 45.00, NULL, NULL, 'Et quaerat sit aut vitae veniam sint sit. Velit rerum pariatur quos cum porro non at veritatis. Sint ipsum officiis quae explicabo. Ea molestiae ut vel dolorem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(187, '2019-12-18 13:45:48', '2020-05-28 15:09:35', 1, 5, 3, NULL, 5.00, 55.00, NULL, NULL, 'Quibusdam eum sunt animi provident repellat. Nihil veritatis enim error nostrum incidunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(188, '2019-11-10 06:59:04', '2020-05-28 15:09:35', 4, 5, 3, NULL, 9.00, 60.00, NULL, NULL, 'Consequatur quam perferendis dicta ea suscipit ex ad. Natus quia voluptas dolorem placeat architecto molestiae quidem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(189, '2019-06-01 05:33:07', '2020-05-28 15:09:35', 4, 4, 1, NULL, 7.00, 46.00, NULL, NULL, 'At minus quis rerum in eius numquam. Voluptatem vel velit quibusdam error ex possimus. Omnis at est et vel dolore natus. Quia illum distinctio voluptatem sequi veritatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(190, '2019-07-16 08:49:37', '2020-05-28 15:09:35', 3, 4, 3, NULL, 10.00, 73.00, NULL, NULL, 'Et ipsum iure aliquid mollitia aut accusantium saepe nobis. Dicta iste eveniet sit. Molestias praesentium earum sint ipsum et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(191, '2020-03-09 06:15:09', '2020-05-28 15:09:35', 3, 5, 1, NULL, 10.00, 85.00, NULL, NULL, 'Consequatur inventore quod aperiam quisquam autem laboriosam. Totam aut error omnis cum et ut quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(192, '2019-10-19 20:24:04', '2020-05-28 15:09:35', 2, 5, 2, NULL, 10.00, 96.00, NULL, NULL, 'Cum et facilis aut excepturi. Numquam ut accusamus et animi veritatis cum. At ex adipisci quis velit esse velit. Aliquid qui perspiciatis ut non ratione sed voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(193, '2020-01-26 09:17:10', '2020-05-28 15:09:35', 3, 5, 1, NULL, 10.00, 59.00, NULL, NULL, 'Ratione et enim quia tempora nesciunt ullam. Dolor praesentium et vel rerum et. Consequatur rerum odio ab sed perspiciatis neque eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(194, '2020-01-17 21:38:45', '2020-05-28 15:09:35', 5, 5, 2, NULL, 10.00, 79.00, NULL, NULL, 'Soluta distinctio quibusdam rem et ullam eius. Placeat iure quidem incidunt nihil exercitationem reiciendis. Ex quia ipsa molestiae omnis porro impedit officiis inventore.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(195, '2020-02-24 07:51:31', '2020-05-28 15:09:35', 3, 5, 1, NULL, 7.00, 46.00, NULL, NULL, 'Illum veniam eveniet itaque dignissimos eos numquam officia. Natus adipisci vitae corrupti. Distinctio et est rerum saepe.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(196, '2020-05-14 20:25:23', '2020-05-28 15:09:35', 1, 5, 2, NULL, 7.00, 87.00, NULL, NULL, 'Repellendus enim nemo nulla fugiat. Et vel mollitia harum ut earum qui sed dolorem. Eligendi dolorem officiis et excepturi. Sapiente nulla autem a porro.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(197, '2019-11-30 11:46:04', '2020-05-28 15:09:35', 4, 4, 3, NULL, 6.00, 55.00, NULL, NULL, 'Ipsa nulla officiis voluptatem suscipit dolorem. Quia non eligendi repellendus ut. Animi quia voluptates nesciunt in ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(198, '2019-06-05 17:47:25', '2020-05-28 15:09:35', 3, 4, 2, NULL, 7.00, 59.00, NULL, NULL, 'Rerum repellat quod ut sint delectus cupiditate quibusdam. Fuga at harum accusamus et eaque quae voluptate. Quae unde est labore accusamus. Non at amet quidem quibusdam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(199, '2019-07-12 20:55:19', '2020-05-28 15:09:35', 1, 5, 3, NULL, 5.00, 91.00, NULL, NULL, 'Sit suscipit iure et in amet est. Assumenda dolor excepturi et quas. Vitae libero sit hic alias. Vel nulla a dolor vitae. Ut voluptatem aut velit aliquid accusantium hic non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(200, '2019-09-25 05:24:29', '2020-05-28 15:09:35', 5, 5, 3, NULL, 6.00, 92.00, NULL, NULL, 'In odio occaecati commodi ratione qui beatae sint. Velit laudantium atque quo. Eos et rerum occaecati ut fugiat molestiae molestiae non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(201, '2020-05-03 14:11:04', '2020-05-28 15:09:35', 2, 4, 1, NULL, 10.00, 83.00, NULL, NULL, 'Voluptas adipisci veniam facere saepe. Quaerat adipisci eum optio et harum quia dolore. Soluta ducimus quam totam fugiat dolor.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(202, '2020-03-11 09:04:52', '2020-05-28 15:09:35', 4, 4, 3, NULL, 5.00, 61.00, NULL, NULL, 'Dolores culpa aut eos omnis. Sed dicta suscipit hic qui consequatur earum eum. Sapiente expedita dolorem voluptatum accusantium ut est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(203, '2019-08-23 13:09:07', '2020-05-28 15:09:35', 1, 4, 2, NULL, 9.00, 47.00, NULL, NULL, 'Omnis quasi voluptatem est omnis. Itaque in fugit voluptas necessitatibus. Ab id quae eos totam ut officia qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(204, '2019-12-05 22:45:40', '2020-05-28 15:09:35', 1, 4, 2, NULL, 7.00, 31.00, NULL, NULL, 'Numquam corporis libero inventore ut. Sunt eaque magni maiores voluptates nihil. Ullam adipisci consequatur at doloribus. Quisquam illo omnis id veniam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(205, '2020-02-14 15:03:54', '2020-05-28 15:09:35', 1, 5, 1, NULL, 9.00, 64.00, NULL, NULL, 'Quasi quo sed quia molestiae qui. Sequi quidem ut et magnam quod nihil eos. Quos aperiam consequuntur nam eligendi ratione laborum quod voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(206, '2020-01-25 21:11:49', '2020-05-28 15:09:35', 5, 4, 3, NULL, 8.00, 98.00, NULL, NULL, 'Praesentium eum et libero reiciendis dolorem et nam. Dolores exercitationem et ut minima.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(207, '2020-02-21 00:19:08', '2020-05-28 15:09:35', 5, 5, 2, NULL, 10.00, 56.00, NULL, NULL, 'Qui maiores laborum ut quia at. Voluptatem neque alias aperiam. Et velit nisi exercitationem autem voluptatem molestiae possimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(208, '2019-07-09 18:03:26', '2020-05-28 15:09:35', 3, 5, 1, NULL, 9.00, 44.00, NULL, NULL, 'Similique ut unde odit et ea. Perferendis vel sunt et quo earum explicabo. Dicta temporibus natus consequuntur placeat nihil numquam sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(209, '2019-08-26 23:10:41', '2020-05-28 15:09:35', 1, 5, 1, NULL, 8.00, 67.00, NULL, NULL, 'Quas enim pariatur est hic quibusdam omnis iusto. Atque et distinctio est amet culpa sit. Rerum recusandae porro et magnam. Illo maiores dolorem maxime in sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(210, '2020-04-10 09:18:53', '2020-05-28 15:09:35', 1, 5, 3, NULL, 9.00, 85.00, NULL, NULL, 'Sunt consequuntur et facilis laboriosam earum vel. Tempora ipsa aut vel natus aut. Molestiae error aut illum recusandae incidunt. Excepturi ullam facere facilis iusto laborum doloremque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(211, '2020-05-08 06:55:53', '2020-05-28 15:09:35', 1, 5, 3, NULL, 5.00, 43.00, NULL, NULL, 'Commodi quia quo temporibus porro. Similique dolorum dolor numquam excepturi. Minus blanditiis voluptas aut fugiat. Quia consequatur illum eos est quos qui totam molestias.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(212, '2019-08-31 12:12:54', '2020-05-28 15:09:35', 1, 5, 1, NULL, 6.00, 42.00, NULL, NULL, 'Incidunt quo ut incidunt est beatae amet vitae. Magnam tempora aspernatur sint sit. Eligendi hic sint omnis. Voluptatem voluptatem odio consectetur neque sequi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(213, '2020-02-15 00:52:13', '2020-05-28 15:09:35', 1, 5, 3, NULL, 6.00, 48.00, NULL, NULL, 'Excepturi corporis sed odit perspiciatis. Totam sit tempora harum voluptate laboriosam dicta quam tenetur. Earum quisquam blanditiis excepturi distinctio. Et tenetur consectetur sapiente vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(214, '2019-07-15 12:06:23', '2020-05-28 15:09:35', 4, 4, 3, NULL, 9.00, 80.00, NULL, NULL, 'Sit hic praesentium molestiae placeat cupiditate qui vitae quia. Nesciunt similique aperiam consequatur doloribus aut. Laborum nemo amet voluptate ipsum nostrum qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(215, '2020-04-01 08:07:27', '2020-05-28 15:09:35', 2, 5, 1, NULL, 7.00, 47.00, NULL, NULL, 'Libero et ipsa tempore. Voluptatum eum enim qui et. Sed illum quod officiis sunt iusto.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(216, '2020-05-17 22:48:48', '2020-05-28 15:09:35', 5, 5, 1, NULL, 10.00, 75.00, NULL, NULL, 'Et dolores velit ut iure voluptatem sapiente deleniti. Eum in nemo consequatur sequi repellendus odit. Fuga deleniti voluptatum rerum a omnis itaque. Eaque nihil dicta ipsa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(217, '2020-02-28 13:09:06', '2020-05-28 15:09:35', 5, 4, 3, NULL, 10.00, 77.00, NULL, NULL, 'Sit perferendis culpa dolores illo ullam. Vel alias tenetur delectus assumenda vero. Hic hic odit sit cupiditate est. Ipsam error non nam sint ipsum velit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(218, '2019-09-25 09:21:37', '2020-05-28 15:09:35', 5, 4, 2, NULL, 6.00, 33.00, NULL, NULL, 'Ullam cumque autem odit officiis aliquid. Maiores sequi eum quae qui recusandae. Eos voluptatem et a iure maxime sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(219, '2020-03-18 00:47:17', '2020-05-28 15:09:35', 2, 5, 2, NULL, 10.00, 57.00, NULL, NULL, 'Omnis aliquam enim est a excepturi expedita vero. Dolore ut aut optio quia cumque. Id debitis architecto dolores dicta. Quidem repellendus tempora quis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(220, '2020-02-02 17:42:28', '2020-05-28 15:09:35', 2, 4, 2, NULL, 6.00, 31.00, NULL, NULL, 'Quod iure sed accusamus sequi. Rem voluptas eaque ad doloribus eveniet eum sed. Labore explicabo corrupti eos numquam culpa quo sint. Vero sed et minima neque at doloribus aliquid.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(221, '2020-01-26 20:21:48', '2020-05-28 15:09:35', 2, 4, 2, NULL, 7.00, 67.00, NULL, NULL, 'Commodi delectus pariatur porro amet et officia repellendus. Placeat provident est voluptatem cum sit adipisci. Rerum doloribus impedit beatae ut voluptates sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(222, '2019-08-11 10:45:55', '2020-05-28 15:09:35', 3, 5, 1, NULL, 5.00, 80.00, NULL, NULL, 'Et qui in est quia autem pariatur qui. Soluta laboriosam velit illo voluptas. Fuga dolor enim odit voluptates sit dolore cumque. Aut quo impedit earum earum quaerat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(223, '2019-09-18 05:06:16', '2020-05-28 15:09:35', 3, 4, 2, NULL, 9.00, 36.00, NULL, NULL, 'Sit accusamus itaque aut iste ipsum et et. Recusandae veniam incidunt eum maxime quia. Asperiores maxime voluptas non optio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(224, '2019-07-18 11:25:46', '2020-05-28 15:09:35', 3, 5, 1, NULL, 8.00, 44.00, NULL, NULL, 'Blanditiis qui inventore autem itaque deserunt. Sunt amet dolore ut perferendis architecto enim sunt et. Asperiores et quas alias inventore quisquam. Non dolorem minus ratione nemo sapiente.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(225, '2020-04-19 22:42:07', '2020-05-28 15:09:35', 1, 5, 1, NULL, 7.00, 76.00, NULL, NULL, 'Omnis nihil fuga id suscipit et laboriosam soluta. Est quis inventore minus magnam vitae nihil sit ut. Sapiente magnam assumenda non officia repellendus. Ipsum magni eum est sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(226, '2019-11-28 20:03:03', '2020-05-28 15:09:35', 2, 4, 1, NULL, 10.00, 82.00, NULL, NULL, 'Iusto voluptatum impedit nisi velit. Tempora culpa odit quam ea eius est. Amet quis dolor dicta corrupti perspiciatis nam. Corrupti quae voluptatem porro voluptas aut ipsam quasi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(227, '2019-06-09 13:32:38', '2020-05-28 15:09:35', 5, 4, 3, NULL, 9.00, 73.00, NULL, NULL, 'Modi dolorum quisquam quo neque omnis. Ex magnam dolores officia tempora sed nisi. Qui recusandae facere consequatur totam laudantium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(228, '2019-06-04 02:45:44', '2020-05-28 15:09:35', 2, 4, 3, NULL, 8.00, 68.00, NULL, NULL, 'Iure labore velit soluta quo. Aspernatur accusamus vel iste ut et. Ut nihil et et delectus itaque quo hic sed. Nisi aut dolor autem qui excepturi asperiores deserunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(229, '2019-11-14 23:51:42', '2020-05-28 15:09:35', 3, 5, 1, NULL, 9.00, 57.00, NULL, NULL, 'Aliquam aliquid sapiente ea iure. Rem saepe tenetur vitae accusamus ad provident perspiciatis eligendi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(230, '2019-10-14 01:40:47', '2020-05-28 15:09:35', 2, 4, 2, NULL, 7.00, 67.00, NULL, NULL, 'Et voluptate assumenda delectus nihil. Voluptatem esse aliquid consequatur aperiam eaque. Natus qui pariatur pariatur repellendus. Commodi repellendus doloremque accusamus aut cum nostrum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(231, '2019-11-22 06:26:33', '2020-05-28 15:09:35', 3, 5, 1, NULL, 9.00, 94.00, NULL, NULL, 'Aspernatur omnis esse illo assumenda cum. Maiores illum cupiditate et pariatur. Nemo molestiae distinctio aut minima et maiores eum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(232, '2020-03-23 16:49:25', '2020-05-28 15:09:35', 1, 5, 2, NULL, 6.00, 45.00, NULL, NULL, 'Tenetur dignissimos voluptas sunt ipsa exercitationem. Est optio harum voluptate ratione velit doloribus tenetur. Repudiandae exercitationem dolor ducimus facilis itaque. Vel id voluptas velit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(233, '2019-08-21 09:17:22', '2020-05-28 15:09:35', 1, 5, 3, NULL, 10.00, 55.00, NULL, NULL, 'Et id reprehenderit maxime aut quis. Nihil minus ipsam explicabo. Fugit nulla et aut nesciunt totam aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(234, '2019-12-24 19:04:20', '2020-05-28 15:09:35', 4, 5, 1, NULL, 8.00, 60.00, NULL, NULL, 'Quia ut dolores delectus doloremque veritatis quidem quos. Reiciendis voluptatem velit natus aliquid at et earum quaerat. Facilis explicabo non et non earum minima.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(235, '2019-07-14 12:28:05', '2020-05-28 15:09:35', 5, 5, 3, NULL, 10.00, 96.00, NULL, NULL, 'Aspernatur sunt explicabo omnis nihil quia cum. Velit molestiae quod omnis maxime est aperiam. Laborum esse hic repellendus dolorum quod aut debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(236, '2020-01-10 00:10:55', '2020-05-28 15:09:35', 5, 5, 1, NULL, 8.00, 50.00, NULL, NULL, 'Quod et necessitatibus saepe odio porro. Quia quo dignissimos velit accusantium deleniti ut cum. Quisquam quia blanditiis unde totam incidunt rem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(237, '2020-03-09 03:25:59', '2020-05-28 15:09:35', 3, 4, 3, NULL, 10.00, 49.00, NULL, NULL, 'Modi doloremque nobis adipisci id aliquam ipsa. Natus vitae rerum voluptatem non aut nihil. Commodi rem eius quaerat consequatur in voluptas. Velit non repellat magni autem magni est nulla.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(238, '2020-04-24 09:46:02', '2020-05-28 15:09:35', 3, 5, 1, NULL, 8.00, 63.00, NULL, NULL, 'Dolores voluptatibus voluptas sequi eum quis. Placeat ut et distinctio animi id tenetur aliquam. Veritatis consequatur sint vel modi minus unde nisi. Nihil natus commodi quibusdam pariatur nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(239, '2019-10-15 04:45:49', '2020-05-28 15:09:35', 5, 5, 2, NULL, 9.00, 61.00, NULL, NULL, 'Sunt ad consequatur autem consequatur. Soluta necessitatibus quia rem tempore veritatis nesciunt quidem. Nisi fugit quas et aut. Ducimus qui excepturi nihil fugiat et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(240, '2019-07-13 19:40:30', '2020-05-28 15:09:35', 4, 4, 3, NULL, 8.00, 85.00, NULL, NULL, 'A nihil rerum deserunt voluptatem. Quod et reprehenderit unde nulla sequi. Quae quo beatae quis dolorem quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(241, '2019-07-05 03:35:50', '2020-05-28 15:09:35', 4, 4, 3, NULL, 8.00, 96.00, NULL, NULL, 'Quae dignissimos dolores eos accusantium. Saepe optio optio aut labore. Dolorem repellat delectus dolores esse quam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(242, '2019-11-23 17:59:34', '2020-05-28 15:09:35', 4, 5, 1, NULL, 10.00, 67.00, NULL, NULL, 'Commodi iusto omnis fugit aperiam est repellendus. Sit veniam nihil quisquam repellendus enim adipisci est. Consequatur aut quia deserunt officia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(243, '2019-07-26 03:32:37', '2020-05-28 15:09:35', 2, 5, 1, NULL, 8.00, 68.00, NULL, NULL, 'Accusamus mollitia id quod nihil. Exercitationem odit ipsa repellendus beatae totam minus blanditiis nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(244, '2020-02-13 16:22:20', '2020-05-28 15:09:35', 2, 5, 2, NULL, 10.00, 73.00, NULL, NULL, 'Ducimus iusto omnis voluptatem sit sed nobis. Laudantium pariatur cumque perspiciatis est sit esse. Dignissimos saepe dolorum non atque et. Sunt recusandae sed enim voluptatibus repellendus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(245, '2019-11-02 01:25:40', '2020-05-28 15:09:35', 5, 4, 1, NULL, 5.00, 86.00, NULL, NULL, 'Ipsam iusto dolores itaque ut voluptates fugit est. Reprehenderit quia doloremque accusantium odio molestias. Ut molestiae eos labore error iusto quia. Quibusdam ipsam sit adipisci sed veritatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(246, '2019-11-12 05:13:56', '2020-05-28 15:09:35', 5, 4, 2, NULL, 6.00, 62.00, NULL, NULL, 'Est sed non porro est blanditiis officiis accusantium. Qui sit aut deleniti. Quibusdam neque corrupti quisquam similique exercitationem autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(247, '2019-08-04 19:31:59', '2020-05-28 15:09:35', 1, 4, 2, NULL, 8.00, 88.00, NULL, NULL, 'Est vitae ab fugit mollitia. Et ipsa voluptatibus dolor omnis ratione illum animi. Necessitatibus hic excepturi nesciunt reiciendis. Sunt quia qui totam ea quam sit veritatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(248, '2019-08-26 21:17:09', '2020-05-28 15:09:35', 1, 5, 2, NULL, 7.00, 35.00, NULL, NULL, 'Et eos voluptas tempora. Aut aut modi amet ut. Veritatis et voluptatem accusamus voluptas vero alias eos. Voluptatem a possimus hic iure autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(249, '2019-09-28 20:23:50', '2020-05-28 15:09:35', 5, 5, 1, NULL, 6.00, 77.00, NULL, NULL, 'Eos velit blanditiis molestiae voluptas atque mollitia quidem. Quo aut rem officiis et iste. Ea magnam deserunt eos eligendi natus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(250, '2019-11-11 17:13:08', '2020-05-28 15:09:35', 4, 5, 2, NULL, 8.00, 60.00, NULL, NULL, 'A asperiores cupiditate fugit a ratione et. Reprehenderit et voluptatem perspiciatis et. Earum quam maiores suscipit molestias repellat error cum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(251, '2019-10-22 15:12:53', '2020-05-28 15:09:35', 4, 5, 3, NULL, 9.00, 72.00, NULL, NULL, 'Quia dignissimos omnis praesentium. Ipsam aperiam ratione qui perferendis suscipit tempora. Accusamus laboriosam id deleniti eveniet ex et at.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(252, '2019-09-28 18:18:11', '2020-05-28 15:09:35', 3, 4, 1, NULL, 7.00, 96.00, NULL, NULL, 'Quas quas aliquid at nemo. Nihil quia error facere cupiditate sapiente debitis. Accusamus dolore ratione ipsum nobis corporis nemo iste illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(253, '2020-05-12 06:56:44', '2020-05-28 15:09:35', 2, 5, 3, NULL, 10.00, 63.00, NULL, NULL, 'Rerum commodi ea et corporis sunt. Sit nesciunt magnam consequatur ut. Odio qui iure placeat voluptatibus sit quibusdam. Alias culpa sit perspiciatis vero voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(254, '2020-01-29 15:04:19', '2020-05-28 15:09:35', 3, 5, 3, NULL, 10.00, 63.00, NULL, NULL, 'Veniam vero officiis quisquam voluptas et autem asperiores. Quod et voluptatem qui consequatur et nam est. Quo architecto velit mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(255, '2019-12-24 18:52:59', '2020-05-28 15:09:35', 2, 5, 3, NULL, 10.00, 30.00, NULL, NULL, 'Voluptate non et consequatur similique aperiam. Voluptas et et adipisci eum sit exercitationem nemo. Molestiae voluptas quos voluptatem. Sed omnis quibusdam delectus in voluptas id dolores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(256, '2019-10-13 15:09:19', '2020-05-28 15:09:35', 5, 5, 1, NULL, 7.00, 46.00, NULL, NULL, 'Sed sint quisquam libero voluptas at aut sed. Accusantium ut amet suscipit consequatur. Recusandae quidem qui dolorum non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(257, '2020-04-26 14:10:18', '2020-05-28 15:09:35', 1, 5, 3, NULL, 6.00, 48.00, NULL, NULL, 'Quidem amet ipsum nobis et. Non hic quia tempora animi et. Est repellendus incidunt dolor qui facere repellat blanditiis reprehenderit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(258, '2019-11-09 11:07:23', '2020-05-28 15:09:35', 3, 5, 2, NULL, 8.00, 42.00, NULL, NULL, 'Quisquam quam omnis esse eveniet ut. Ab reiciendis quo eos similique error et. Praesentium illo voluptatem quidem excepturi est minima.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(259, '2019-09-30 03:40:50', '2020-05-28 15:09:35', 4, 4, 1, NULL, 8.00, 51.00, NULL, NULL, 'Velit voluptatum neque numquam iure. Dolores qui et autem accusamus placeat consequatur. Autem vel rerum fugiat repellat quisquam nemo. Quibusdam vel molestiae dolorum optio architecto nam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(260, '2019-10-22 04:27:42', '2020-05-28 15:09:35', 3, 5, 1, NULL, 7.00, 58.00, NULL, NULL, 'Molestias consequuntur illum et deleniti qui sapiente. Enim ipsa eveniet occaecati autem fuga. Ut et tenetur asperiores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(261, '2019-08-21 14:03:13', '2020-05-28 15:09:35', 1, 5, 1, NULL, 6.00, 30.00, NULL, NULL, 'Sit vitae nobis qui exercitationem nulla quia quam. Eum aperiam aut suscipit optio magnam. Eum culpa saepe et repellendus at qui laudantium vel. Quae accusamus id tenetur aperiam illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(262, '2019-06-25 19:08:11', '2020-05-28 15:09:35', 2, 5, 1, NULL, 10.00, 91.00, NULL, NULL, 'Soluta facere delectus est ex illum enim nostrum. Nobis rerum et quia eos eaque recusandae. Nam consequatur ut ut alias doloribus ullam consequuntur voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(263, '2020-05-05 09:33:07', '2020-05-28 15:09:35', 1, 5, 3, NULL, 9.00, 69.00, NULL, NULL, 'Eum qui corrupti modi iure. Iste tenetur debitis voluptatem porro. Velit consequatur vel incidunt et illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(264, '2019-08-16 05:44:55', '2020-05-28 15:09:35', 3, 4, 3, NULL, 9.00, 53.00, NULL, NULL, 'Iure doloremque sed et sit fugit quasi omnis. Non aperiam necessitatibus asperiores dolores sunt. Hic aut vero quod minima non et pariatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(265, '2020-01-18 02:46:24', '2020-05-28 15:09:35', 1, 5, 1, NULL, 7.00, 82.00, NULL, NULL, 'Ut voluptatem repellendus ut incidunt in ducimus. Incidunt molestiae voluptatibus numquam non dignissimos autem ut. Et quaerat inventore sed sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(266, '2019-12-11 11:04:42', '2020-05-28 15:09:35', 2, 5, 2, NULL, 10.00, 36.00, NULL, NULL, 'Accusamus nesciunt harum maxime cupiditate quos aliquam. Possimus voluptatem deleniti adipisci molestiae error. Tenetur illo assumenda natus voluptas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(267, '2020-03-17 02:12:38', '2020-05-28 15:09:35', 5, 4, 2, NULL, 5.00, 65.00, NULL, NULL, 'Nesciunt molestiae deleniti hic dolor. Doloribus eos sequi qui. Quibusdam enim pariatur assumenda assumenda rerum similique exercitationem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(268, '2020-02-07 21:54:13', '2020-05-28 15:09:35', 5, 5, 3, NULL, 5.00, 37.00, NULL, NULL, 'Qui molestiae dicta modi a voluptatem adipisci. Numquam quo fuga accusamus vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(269, '2019-07-26 13:55:34', '2020-05-28 15:09:35', 3, 5, 3, NULL, 7.00, 70.00, NULL, NULL, 'Ducimus iusto id illo. Aperiam aperiam omnis natus sed itaque et. Dolorum porro assumenda ut quo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(270, '2020-04-09 19:53:09', '2020-05-28 15:09:35', 5, 4, 3, NULL, 6.00, 75.00, NULL, NULL, 'Amet harum ratione earum nisi sit libero. Cumque earum tempore dolorem. Magnam aspernatur consequuntur fugiat autem. Et vitae eligendi molestias accusamus dolore quasi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(271, '2019-09-19 23:47:04', '2020-05-28 15:09:35', 4, 4, 2, NULL, 8.00, 94.00, NULL, NULL, 'Ratione dolor suscipit eveniet. Et sit fugit commodi placeat sit molestiae sequi. Maxime dolor corporis voluptatibus vel. Impedit eveniet molestiae sequi consectetur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(272, '2019-12-06 02:22:17', '2020-05-28 15:09:35', 5, 4, 3, NULL, 9.00, 91.00, NULL, NULL, 'Dolorum non ex quos et repellat quam. Iure laboriosam saepe qui ipsa nam labore.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(273, '2019-09-25 01:34:32', '2020-05-28 15:09:35', 4, 4, 2, NULL, 9.00, 82.00, NULL, NULL, 'Pariatur ea aut quam tempore pariatur repellat autem et. Et cum numquam voluptates sed. Velit ut rerum hic voluptas. Dolores amet velit deleniti quia quae amet eligendi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(274, '2020-02-25 13:52:26', '2020-05-28 15:09:35', 4, 4, 2, NULL, 6.00, 76.00, NULL, NULL, 'Saepe nihil impedit in deleniti. Minus molestiae cupiditate necessitatibus provident et id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(275, '2020-01-09 04:05:26', '2020-05-28 15:09:35', 4, 5, 1, NULL, 5.00, 87.00, NULL, NULL, 'Repellendus eum vitae libero quo mollitia repudiandae. Ipsa quam sed error sed est. Sit quae reiciendis eius maiores natus et soluta. Delectus ea sunt consequatur. Ut eum iure ut aut nisi rem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(276, '2020-05-08 15:38:22', '2020-05-28 15:09:35', 5, 4, 2, NULL, 8.00, 81.00, NULL, NULL, 'Ut blanditiis sequi eius ea facilis. Et fugiat nam officiis unde veniam nulla. Voluptas eaque quasi dolor debitis iusto rerum. Tempore ad non ut nisi asperiores sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(277, '2020-02-29 22:36:06', '2020-05-28 15:09:35', 3, 5, 3, NULL, 9.00, 61.00, NULL, NULL, 'Quasi iure excepturi aut hic qui. Iste ipsum eaque aut odio omnis eligendi. Atque non et eveniet. Quas velit mollitia alias et. Hic qui odio eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(278, '2019-09-04 02:26:18', '2020-05-28 15:09:35', 5, 4, 2, NULL, 9.00, 87.00, NULL, NULL, 'Suscipit rem ex omnis quidem dolorum. Voluptas qui consectetur ratione sit excepturi cumque animi. Ut vel voluptatem debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(279, '2019-11-26 08:41:42', '2020-05-28 15:09:35', 4, 4, 1, NULL, 10.00, 46.00, NULL, NULL, 'Ut sint sed doloribus deleniti et laudantium. Modi quis rerum consectetur debitis delectus suscipit occaecati. Culpa provident fugiat commodi perspiciatis. Fuga est et amet hic.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(280, '2020-01-02 03:04:29', '2020-05-28 15:09:35', 2, 4, 3, NULL, 7.00, 62.00, NULL, NULL, 'Voluptate eius occaecati aliquid minima qui nihil. Sint veritatis quia reprehenderit asperiores repellendus ex maiores. Excepturi dignissimos dolorem autem sint ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(281, '2020-02-02 10:25:47', '2020-05-28 15:09:35', 5, 4, 2, NULL, 10.00, 73.00, NULL, NULL, 'Culpa eaque eveniet commodi quo in expedita saepe. Nisi et hic voluptatem molestias autem in aut. Quia sunt sunt delectus sed incidunt quam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(282, '2019-10-24 15:43:31', '2020-05-28 15:09:35', 1, 4, 3, NULL, 7.00, 52.00, NULL, NULL, 'Ut quisquam inventore voluptas quia. Ea eos maiores sapiente adipisci. Commodi eos omnis dignissimos omnis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(283, '2019-08-08 11:34:20', '2020-05-28 15:09:35', 2, 4, 3, NULL, 5.00, 43.00, NULL, NULL, 'Labore dolor ut nihil eum. Velit magni ipsa in. Aut vero perspiciatis voluptas dolor. Quisquam facere animi earum iure tempora.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(284, '2020-02-11 18:19:52', '2020-05-28 15:09:35', 1, 5, 3, NULL, 6.00, 55.00, NULL, NULL, 'Veniam cumque consequuntur rerum rem. Error vel rem aut quod quis. Quasi quia dignissimos consequatur expedita sunt consequatur minus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(285, '2020-03-16 02:10:20', '2020-05-28 15:09:35', 3, 5, 1, NULL, 8.00, 59.00, NULL, NULL, 'Error et voluptatibus aut non. Modi eius itaque ad. Voluptatum ut minus quod.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(286, '2019-12-15 18:03:03', '2020-05-28 15:09:35', 3, 5, 1, NULL, 5.00, 81.00, NULL, NULL, 'Velit corrupti consectetur et animi. Quas accusantium vel aspernatur temporibus vero quia voluptates. Aut nam sit et quia mollitia beatae dolor. Debitis unde voluptatem sit ducimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(287, '2020-05-17 13:17:17', '2020-05-28 15:09:35', 4, 5, 3, NULL, 10.00, 59.00, NULL, NULL, 'Ipsam dolores explicabo iste facilis deserunt. Exercitationem dolorem nulla aut unde dolor nam illum. Consequatur sit nihil incidunt totam nihil mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(288, '2020-02-23 23:45:46', '2020-05-28 15:09:35', 1, 5, 1, NULL, 6.00, 34.00, NULL, NULL, 'Minima sed perspiciatis eum est ipsum. Occaecati laborum et ut dolores quia dolorem qui. Voluptatibus qui ad similique repudiandae sint. Dolores doloribus rerum sit quia rerum aut perspiciatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(289, '2019-11-01 23:39:03', '2020-05-28 15:09:35', 2, 5, 2, NULL, 7.00, 69.00, NULL, NULL, 'Autem est nobis iusto. Ea est totam molestiae vel occaecati explicabo ut. Laborum voluptas aut odio rerum nostrum et unde.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(290, '2019-08-30 06:46:24', '2020-05-28 15:09:35', 1, 4, 3, NULL, 7.00, 48.00, NULL, NULL, 'Et dolorem consequatur deleniti non eum corrupti inventore. Sequi vero sed sequi alias. Culpa molestiae nesciunt est. Omnis eveniet et in amet.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(291, '2019-11-03 12:03:53', '2020-05-28 15:09:35', 3, 5, 2, NULL, 6.00, 94.00, NULL, NULL, 'Harum iusto doloremque magnam qui. Quaerat nihil fuga doloribus cumque amet voluptates necessitatibus. Id nobis omnis deserunt mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(292, '2019-12-06 17:42:52', '2020-05-28 15:09:35', 4, 4, 2, NULL, 5.00, 47.00, NULL, NULL, 'Velit consequatur vitae suscipit minus. Ipsam sunt quam sed et. Et quia voluptas at beatae est. Aut aliquid tempore molestias sed sed dolores est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(293, '2019-09-16 10:16:14', '2020-05-28 15:09:35', 4, 5, 2, NULL, 8.00, 58.00, NULL, NULL, 'Et non itaque alias labore corporis et. Recusandae ipsum quisquam autem veniam non amet. Debitis et minima laborum accusamus dignissimos. Nam assumenda nam aut ullam voluptatibus quos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(294, '2019-07-01 21:43:56', '2020-05-28 15:09:35', 1, 5, 2, NULL, 10.00, 34.00, NULL, NULL, 'Et qui omnis aut modi ea eum ut. Quam temporibus et quibusdam. Quis quae et mollitia accusamus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(295, '2019-07-08 04:33:50', '2020-05-28 15:09:35', 2, 5, 2, NULL, 10.00, 56.00, NULL, NULL, 'Maxime aut itaque laborum. Aut illo fugit dolores necessitatibus eveniet molestiae atque. Voluptas sit esse sed iste ipsum totam dolor vel. Illo illo est aut aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(296, '2020-03-12 17:38:56', '2020-05-28 15:09:35', 3, 5, 3, NULL, 10.00, 91.00, NULL, NULL, 'Cupiditate sed odio hic quae. Officia odio reiciendis mollitia quas ut. Eos in distinctio occaecati quia blanditiis voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(297, '2020-01-15 07:00:52', '2020-05-28 15:09:35', 2, 5, 2, NULL, 9.00, 91.00, NULL, NULL, 'Quia aut maiores iusto dicta maxime et. Sunt voluptas officia ea nostrum aut quia. Sit placeat eos voluptas reiciendis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(298, '2020-01-20 18:19:22', '2020-05-28 15:09:35', 2, 5, 2, NULL, 9.00, 82.00, NULL, NULL, 'Veniam dolorem itaque dolores sunt. Totam aliquid rerum illo exercitationem illo sint. Repudiandae quisquam fuga rerum laborum error ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(299, '2019-11-18 08:55:21', '2020-05-28 15:09:35', 1, 5, 3, NULL, 6.00, 54.00, NULL, NULL, 'Nesciunt perspiciatis pariatur non qui modi. Qui eos non illum facilis qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(300, '2019-12-24 01:54:26', '2020-05-28 15:09:35', 5, 5, 1, NULL, 6.00, 46.00, NULL, NULL, 'Rerum dolorem commodi omnis quis dolore laudantium et. Animi non qui explicabo. Sunt molestiae ipsam nobis tenetur sed omnis qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(301, '2020-05-13 11:52:53', '2020-05-28 15:09:35', 5, 4, 2, NULL, 10.00, 95.00, NULL, NULL, 'Sunt nihil reprehenderit cupiditate facilis consequatur omnis quam. Molestiae provident iure ut laboriosam voluptatem vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(302, '2019-08-14 05:07:23', '2020-05-28 15:09:35', 2, 4, 2, NULL, 9.00, 78.00, NULL, NULL, 'Eum soluta dolores aliquid ut at quia iste. Doloremque sed ut possimus assumenda ratione voluptatibus est. Consectetur qui aut aut qui provident ipsa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(303, '2020-02-07 00:56:40', '2020-05-28 15:09:35', 1, 4, 2, NULL, 6.00, 93.00, NULL, NULL, 'Ut laudantium labore facilis consequuntur quis reiciendis. Ducimus et numquam voluptas sunt et ex. Dolorem sed quo voluptate hic facere. Id laudantium rerum voluptates debitis et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(304, '2019-11-05 06:12:30', '2020-05-28 15:09:35', 5, 4, 1, NULL, 8.00, 96.00, NULL, NULL, 'Dolore est voluptas qui. Qui earum nulla eum optio impedit. Sit optio et necessitatibus. Animi consequatur aperiam sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(305, '2019-07-17 00:12:26', '2020-05-28 15:09:35', 4, 4, 3, NULL, 6.00, 86.00, NULL, NULL, 'Odio ab rerum quo molestias magni molestiae nihil. Animi non sint pariatur eum et tenetur nam. Est eius et quos. Mollitia facere quis distinctio quae porro. Minima et itaque quis ipsa perspiciatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(306, '2019-11-22 09:40:11', '2020-05-28 15:09:35', 4, 4, 3, NULL, 10.00, 95.00, NULL, NULL, 'Et quo dignissimos quo amet omnis voluptatem vitae. Perferendis dolorem impedit enim sit aut quia consequatur. Dolores non sint ullam aut architecto qui vel. Dolore dolor ex itaque in et facilis at.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(307, '2020-03-26 17:01:47', '2020-05-28 15:09:35', 1, 4, 2, NULL, 8.00, 42.00, NULL, NULL, 'Neque et ex et adipisci. Occaecati harum saepe illum laborum deleniti dolores deserunt laboriosam. Deserunt at accusamus et voluptatibus vel et aut omnis. Ut ea est sit aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(308, '2019-07-15 18:23:04', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 78.00, NULL, NULL, 'Sapiente sunt praesentium sunt deserunt omnis unde. Voluptates aperiam voluptas ut et est eveniet possimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(309, '2020-02-17 09:32:13', '2020-05-28 15:09:35', 4, 4, 1, NULL, 7.00, 44.00, NULL, NULL, 'Dignissimos iste assumenda accusantium itaque corrupti ut. Molestiae et omnis iusto voluptatem autem. Est nobis sequi ea voluptatem et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(310, '2020-05-18 03:54:44', '2020-05-28 15:09:35', 2, 5, 3, NULL, 7.00, 74.00, NULL, NULL, 'Eius sapiente molestiae impedit sit. Nihil consequatur non nostrum consequatur earum recusandae dolor. Aut neque ea ut qui qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(311, '2019-12-11 07:02:53', '2020-05-28 15:09:35', 2, 4, 1, NULL, 7.00, 38.00, NULL, NULL, 'Rerum qui officia qui voluptatem omnis. Nostrum et et quos vel quia et blanditiis doloribus. Voluptas sint dolore quisquam sunt officia. Deleniti quis eos molestias laudantium dolore vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(312, '2020-01-06 09:35:48', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 100.00, NULL, NULL, 'Porro suscipit tempora fuga quod error. Reiciendis iure atque alias nesciunt est est. Possimus et ex dignissimos voluptatem alias omnis eaque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(313, '2020-03-22 19:46:30', '2020-05-28 15:09:35', 1, 5, 2, NULL, 5.00, 81.00, NULL, NULL, 'Laboriosam modi molestiae ipsa enim. Explicabo enim fugit blanditiis eaque quasi deserunt sit. Voluptatem nihil adipisci est quia in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(314, '2020-04-19 15:09:20', '2020-05-28 15:09:35', 2, 4, 3, NULL, 8.00, 44.00, NULL, NULL, 'Cumque qui aut nulla possimus. Incidunt placeat quidem provident recusandae quae ex. Assumenda facere sapiente eaque aliquam velit voluptas. Et veritatis tempore aliquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(315, '2020-03-06 06:53:09', '2020-05-28 15:09:35', 5, 5, 3, NULL, 6.00, 75.00, NULL, NULL, 'Tenetur ex id dolores qui est et ab consequatur. Nihil neque voluptas ipsam. Vel eaque nihil aut quidem. Fuga fuga at harum. Illo ex non magni enim non distinctio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(316, '2020-03-31 20:22:12', '2020-05-28 15:09:35', 4, 5, 3, NULL, 5.00, 75.00, NULL, NULL, 'Quis est est perferendis necessitatibus ipsum earum. Quo veritatis magnam doloremque quia eos ducimus. Rem ut et vel rem. Sit eveniet in ducimus pariatur aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(317, '2020-02-23 06:36:52', '2020-05-28 15:09:35', 3, 4, 3, NULL, 7.00, 38.00, NULL, NULL, 'Repellendus iure veniam tempora inventore explicabo aut temporibus. Error ut iusto non soluta qui et quam nemo. Quia magni ratione eveniet necessitatibus nulla.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(318, '2019-07-29 20:18:14', '2020-05-28 15:09:35', 2, 5, 2, NULL, 9.00, 87.00, NULL, NULL, 'Quasi iste adipisci esse necessitatibus totam atque totam. Sit fuga iure ullam accusamus. Quis delectus nobis vel sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(319, '2019-11-29 07:16:08', '2020-05-28 15:09:35', 5, 4, 1, NULL, 9.00, 100.00, NULL, NULL, 'Id culpa sint molestiae. Veniam exercitationem consectetur accusantium sint. Corporis nihil voluptas excepturi dignissimos quam id temporibus officia. Molestias sit quia aspernatur non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(320, '2020-04-27 03:43:44', '2020-05-28 15:09:35', 5, 5, 3, NULL, 10.00, 47.00, NULL, NULL, 'Hic quia earum aut qui molestiae vitae velit. Quas sed ab nemo culpa. Distinctio ea ut ipsa dolor. Id ea sit et ipsa. Omnis assumenda eos sit illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(321, '2019-06-04 07:29:05', '2020-05-28 15:09:35', 1, 5, 3, NULL, 9.00, 42.00, NULL, NULL, 'Omnis ut recusandae temporibus minima. Mollitia magni et aut voluptas error dolores. Aut provident voluptatem optio totam sed. Et perspiciatis accusamus est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(322, '2019-09-02 13:34:28', '2020-05-28 15:09:35', 4, 5, 1, NULL, 6.00, 64.00, NULL, NULL, 'Id eveniet qui odit. Expedita occaecati aut a corporis sed iusto. Autem inventore quae eum dolorem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(323, '2020-01-20 04:52:39', '2020-05-28 15:09:35', 3, 4, 1, NULL, 7.00, 96.00, NULL, NULL, 'Repellat quasi voluptas repellendus culpa id at sint. Autem dolorem necessitatibus at animi distinctio beatae magni velit. Sed vitae repellat impedit nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(324, '2019-11-05 06:46:57', '2020-05-28 15:09:35', 2, 5, 1, NULL, 6.00, 87.00, NULL, NULL, 'Sit modi ipsum aut. Molestias et doloribus nisi veniam. Natus quis voluptatum laboriosam qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(325, '2020-01-22 02:19:25', '2020-05-28 15:09:35', 1, 5, 2, NULL, 6.00, 90.00, NULL, NULL, 'Alias magnam dignissimos porro et voluptas consequatur eveniet commodi. Exercitationem id veritatis quod. Est officiis aut quo nam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(326, '2019-10-30 13:23:03', '2020-05-28 15:09:35', 2, 4, 1, NULL, 6.00, 98.00, NULL, NULL, 'Molestiae ut et ratione vitae beatae. Sunt ratione sed quae officiis nihil commodi aspernatur blanditiis. Eaque earum tempore temporibus velit sit quam. Neque aut ut rerum sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(327, '2020-01-22 15:15:19', '2020-05-28 15:09:35', 3, 4, 2, NULL, 6.00, 50.00, NULL, NULL, 'Doloremque est omnis culpa aut quia voluptas officiis. In velit consectetur sit est fuga nobis. Sequi est est quo iste ut officia asperiores iste. Similique eaque numquam adipisci quod sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(328, '2019-06-02 21:34:43', '2020-05-28 15:09:35', 4, 5, 3, NULL, 9.00, 71.00, NULL, NULL, 'Illum dignissimos nisi eos. Excepturi velit quae ea in quas quisquam. Corrupti incidunt vitae fugiat dolores aliquid vitae. Exercitationem molestias numquam inventore nulla.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(329, '2020-01-29 18:05:53', '2020-05-28 15:09:35', 2, 5, 2, NULL, 9.00, 50.00, NULL, NULL, 'Voluptates ducimus fuga est expedita et nemo. Et placeat non nam. Accusamus sit id dolorum et consequuntur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(330, '2020-03-31 05:48:26', '2020-05-28 15:09:35', 2, 5, 3, NULL, 10.00, 84.00, NULL, NULL, 'Provident quas magni consequuntur. Voluptatum iste beatae commodi pariatur. Eveniet ratione facilis illum sint tenetur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(331, '2019-12-23 11:24:16', '2020-05-28 15:09:35', 3, 5, 2, NULL, 10.00, 68.00, NULL, NULL, 'Tempore numquam nihil occaecati fugit nesciunt eum quis. Doloribus et quia sequi aut. Aut facere excepturi non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(332, '2019-08-07 06:06:12', '2020-05-28 15:09:35', 4, 5, 3, NULL, 7.00, 95.00, NULL, NULL, 'Fugiat rerum explicabo magnam. Ratione sunt rerum quis libero atque tempora. Distinctio ut nostrum nihil tenetur nihil et. Soluta dolores qui sapiente est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(333, '2019-07-08 17:14:50', '2020-05-28 15:09:35', 4, 5, 1, NULL, 5.00, 63.00, NULL, NULL, 'Similique vero sint at id voluptas iure et. Voluptatibus quis quas dolores commodi aut et esse quia. Repellat nostrum voluptatem vel eos dolor. Porro ut iste voluptatem sed fugiat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(334, '2019-11-18 08:53:09', '2020-05-28 15:09:35', 2, 4, 3, NULL, 9.00, 32.00, NULL, NULL, 'Reprehenderit dolore aliquam omnis dolore. Et sit consequatur qui at temporibus aut assumenda. Officia ipsam explicabo vitae voluptate.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(335, '2019-12-18 20:51:11', '2020-05-28 15:09:35', 1, 4, 2, NULL, 7.00, 47.00, NULL, NULL, 'Quia cupiditate reiciendis et non culpa sunt aperiam. Nobis et aliquid sit iste dicta. Et laboriosam numquam voluptatum fuga.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(336, '2020-01-07 05:36:47', '2020-05-28 15:09:35', 3, 4, 1, NULL, 9.00, 97.00, NULL, NULL, 'Neque sed iste consequatur numquam et voluptas. Blanditiis deleniti commodi rem quia tempora atque. Voluptatibus pariatur sint non id molestiae. Natus qui ut laudantium veniam quis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(337, '2019-06-29 17:15:17', '2020-05-28 15:09:35', 5, 4, 3, NULL, 9.00, 37.00, NULL, NULL, 'Perspiciatis quis sequi ullam tempora quaerat est. Nihil blanditiis nam minus tenetur. Voluptas qui soluta nisi dicta quidem voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(338, '2019-11-25 08:31:11', '2020-05-28 15:09:35', 3, 4, 2, NULL, 5.00, 83.00, NULL, NULL, 'Et id ea odit alias omnis blanditiis adipisci. Quia sed aut laboriosam sint optio. Possimus ut cumque id ex. Enim temporibus sed dolores voluptas quibusdam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(339, '2019-09-14 05:41:40', '2020-05-28 15:09:35', 1, 4, 2, NULL, 6.00, 38.00, NULL, NULL, 'Esse velit voluptatem adipisci minus. Eum impedit nobis optio. Quam qui sunt id corporis quisquam. Quis repellendus nobis est odit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(340, '2019-08-13 13:57:24', '2020-05-28 15:09:35', 2, 4, 2, NULL, 10.00, 66.00, NULL, NULL, 'Aliquid quia debitis ipsam odit. Earum debitis perspiciatis sequi quas est. Odio et quo temporibus animi dicta magni iure.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(341, '2019-12-11 06:00:45', '2020-05-28 15:09:35', 1, 4, 1, NULL, 10.00, 97.00, NULL, NULL, 'Sit itaque voluptatem ipsam ut. Deleniti qui totam odit velit id modi tempora. Corrupti provident temporibus illum tempora id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(342, '2020-04-25 01:22:44', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 91.00, NULL, NULL, 'Tempore maiores omnis neque beatae cum modi ducimus voluptatum. Qui dolorem dolorem fugit quas ea. Fugiat aliquid corporis incidunt error ut deleniti.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(343, '2020-01-01 21:30:36', '2020-05-28 15:09:35', 2, 4, 3, NULL, 5.00, 43.00, NULL, NULL, 'Praesentium fugiat necessitatibus cum sit occaecati perspiciatis. Voluptatem et eius nihil nihil et et. Laudantium quam nisi dolorem. Iste delectus est ipsum asperiores nesciunt animi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`) VALUES
(344, '2019-12-17 13:32:41', '2020-05-28 15:09:35', 2, 4, 1, NULL, 8.00, 45.00, NULL, NULL, 'Laborum fuga nemo et officiis autem hic. In sit porro magni corporis voluptas. Aut quia eum eius fugit. Deleniti vitae temporibus ea ad dolorem at quasi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(345, '2019-06-16 23:55:29', '2020-05-28 15:09:35', 3, 4, 3, NULL, 9.00, 34.00, NULL, NULL, 'Eligendi deserunt voluptatem ducimus harum accusantium. Nesciunt pariatur illum eum omnis et vero. Natus architecto voluptas impedit animi id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(346, '2019-12-03 18:31:21', '2020-05-28 15:09:35', 4, 4, 2, NULL, 5.00, 84.00, NULL, NULL, 'Quisquam soluta non rerum et qui quia aut. Ipsa dolores perspiciatis dignissimos reiciendis. Nulla incidunt et beatae repellat possimus quidem est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(347, '2020-03-10 08:13:02', '2020-05-28 15:09:35', 2, 5, 1, NULL, 5.00, 49.00, NULL, NULL, 'Earum quisquam magni cumque corporis asperiores assumenda omnis. Laudantium exercitationem nesciunt eius consequatur qui velit omnis. Rerum impedit laboriosam nobis accusamus dolor.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(348, '2019-09-09 18:17:39', '2020-05-28 15:09:35', 5, 5, 2, NULL, 6.00, 88.00, NULL, NULL, 'Sequi fuga repellat dolores beatae ipsa eius. Qui sed quisquam non ex vel tempore accusantium. Temporibus distinctio ea qui doloribus ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(349, '2019-07-12 11:37:57', '2020-05-28 15:09:35', 2, 5, 2, NULL, 8.00, 70.00, NULL, NULL, 'Aliquam dignissimos numquam eveniet et quisquam sit. Nostrum qui rem voluptatem nisi consequatur. Consectetur qui voluptatem non nesciunt adipisci quis minus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(350, '2020-02-25 21:41:57', '2020-05-28 15:09:35', 3, 4, 2, NULL, 6.00, 91.00, NULL, NULL, 'Occaecati harum itaque inventore est. Reiciendis harum adipisci est asperiores ipsam illum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(351, '2019-08-18 19:19:58', '2020-05-28 15:09:35', 2, 5, 3, NULL, 5.00, 83.00, NULL, NULL, 'Quo et esse eos sunt nobis reprehenderit numquam. Omnis cumque doloremque architecto mollitia. Voluptas culpa aspernatur aut sunt quisquam dignissimos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(352, '2019-06-15 11:44:05', '2020-05-28 15:09:35', 3, 4, 2, NULL, 6.00, 95.00, NULL, NULL, 'Molestias rem error veritatis fugiat ut non cumque. In tenetur non quidem atque labore modi architecto cumque. Ea sit omnis eum et aut expedita exercitationem in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(353, '2020-03-02 18:39:35', '2020-05-28 15:09:35', 2, 4, 2, NULL, 6.00, 46.00, NULL, NULL, 'Veniam perspiciatis culpa consequuntur officia adipisci ut at nesciunt. Corrupti dolor aut adipisci ullam rem similique voluptas qui. Maxime ab et iste ab voluptates qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(354, '2019-10-28 12:33:56', '2020-05-28 15:09:35', 4, 5, 3, NULL, 6.00, 36.00, NULL, NULL, 'Ratione enim et quia ullam. Ut fugit ea consequatur. Explicabo nemo est quas iste deserunt odit totam voluptatem. Incidunt consequatur expedita eveniet maxime dicta optio sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(355, '2019-09-20 00:23:48', '2020-05-28 15:09:35', 5, 4, 2, NULL, 10.00, 79.00, NULL, NULL, 'Distinctio sit velit itaque ut asperiores. Aut qui unde similique deserunt rerum officiis. Sed earum dolores velit aperiam autem occaecati.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(356, '2019-09-30 01:53:06', '2020-05-28 15:09:35', 2, 5, 3, NULL, 8.00, 60.00, NULL, NULL, 'Perferendis reiciendis rem consequatur est. Blanditiis deserunt consequatur dolor veniam ut aperiam molestiae. Sequi accusamus fugiat eos quaerat doloribus velit reiciendis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(357, '2019-09-23 18:41:52', '2020-05-28 15:09:35', 2, 5, 2, NULL, 7.00, 67.00, NULL, NULL, 'Ad in eos recusandae enim iste quia ea. Perspiciatis dolor laudantium expedita in autem. Ullam et eum omnis esse omnis odio iure nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(358, '2019-09-11 15:11:33', '2020-05-28 15:09:35', 2, 4, 3, NULL, 8.00, 61.00, NULL, NULL, 'Libero et ab blanditiis officia minus. Tempora odio vero placeat recusandae. Quasi ipsum omnis suscipit fugit sed nihil. Et fugiat aut praesentium aperiam tempore ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(359, '2019-09-10 09:28:43', '2020-05-28 15:09:35', 3, 5, 1, NULL, 10.00, 52.00, NULL, NULL, 'Aut velit saepe sed aut tempora recusandae. Nulla iste officiis suscipit expedita. Ut velit animi est iusto quos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(360, '2020-04-29 06:21:56', '2020-05-28 15:09:35', 5, 4, 1, NULL, 5.00, 76.00, NULL, NULL, 'Totam officia qui quas quas. Provident et dolorum fugit provident veniam non. Odit dolores quod est qui. Suscipit quod ipsa placeat veniam qui esse. Aut molestiae hic quod facere.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(361, '2019-08-31 18:08:19', '2020-05-28 15:09:35', 1, 5, 2, NULL, 5.00, 34.00, NULL, NULL, 'Et placeat quas quia provident placeat. Dicta tenetur vel et nostrum enim. Vel omnis ea et enim neque. Neque ut veniam ea ipsam est perferendis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(362, '2019-07-19 16:08:50', '2020-05-28 15:09:35', 5, 5, 2, NULL, 7.00, 92.00, NULL, NULL, 'Sunt optio qui laboriosam praesentium. Incidunt dolorem eius occaecati eos reiciendis. Et minima quo aperiam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(363, '2019-10-24 18:16:24', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 75.00, NULL, NULL, 'A nihil dolorem deleniti est et iure. Fugit rem temporibus blanditiis beatae maiores quo quidem. Vel quos et ipsam qui et. Voluptate dolorum soluta aut quae similique nostrum dolor nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(364, '2020-04-03 07:46:25', '2020-05-28 15:09:35', 2, 4, 2, NULL, 10.00, 31.00, NULL, NULL, 'Ullam nihil assumenda et necessitatibus dicta. Dicta id quasi saepe sit quia. Ratione quis earum dicta veniam eligendi assumenda debitis quo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(365, '2020-03-25 04:59:39', '2020-05-28 15:09:35', 5, 4, 2, NULL, 7.00, 71.00, NULL, NULL, 'Et ab et ut in dicta eum. Reprehenderit et excepturi labore quia. Provident quidem eum reprehenderit culpa. Fugit est reprehenderit non excepturi corporis maxime facilis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(366, '2019-08-20 11:05:23', '2020-05-28 15:09:35', 4, 5, 3, NULL, 10.00, 56.00, NULL, NULL, 'Distinctio nulla ut provident iure. Quis quis voluptas rem dolores. Eius dolorem impedit qui provident recusandae voluptas aut. Asperiores quis aperiam magnam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(367, '2019-09-18 10:50:51', '2020-05-28 15:09:35', 4, 5, 3, NULL, 9.00, 84.00, NULL, NULL, 'Soluta assumenda optio et atque. Occaecati quos adipisci corporis dolorem vitae voluptatum. Consectetur voluptas qui cum harum in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(368, '2019-10-13 15:01:38', '2020-05-28 15:09:35', 5, 5, 2, NULL, 7.00, 85.00, NULL, NULL, 'Amet voluptas et itaque reiciendis molestiae perspiciatis quis. Excepturi asperiores animi qui. Ipsa vero in iusto. Similique qui asperiores placeat rerum vitae. Placeat aut a deleniti provident.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(369, '2020-04-20 02:06:50', '2020-05-28 15:09:35', 4, 5, 1, NULL, 9.00, 56.00, NULL, NULL, 'Ut iste asperiores quos. Provident quo laudantium harum est nobis. Cum voluptas unde aspernatur rerum sunt ea eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(370, '2020-05-08 15:23:47', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 46.00, NULL, NULL, 'Et veniam alias illo nobis molestiae quibusdam ipsam. Voluptas incidunt voluptatem et odit. Voluptatem dicta ut ipsa unde molestias. Consequatur sed atque blanditiis voluptas pariatur sed aperiam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(371, '2019-10-23 19:01:12', '2020-05-28 15:09:35', 1, 4, 3, NULL, 9.00, 59.00, NULL, NULL, 'Et porro vel tenetur est. Totam voluptatibus dolores accusantium nemo cumque sapiente ullam. Voluptatum deleniti alias itaque minima cum omnis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(372, '2019-06-02 16:30:42', '2020-05-28 15:09:35', 2, 4, 1, NULL, 8.00, 70.00, NULL, NULL, 'Amet voluptatum quaerat aut et. Ab est eligendi aut magnam dolores sit et suscipit. Et rerum reprehenderit nostrum. Tenetur consequatur non commodi nisi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(373, '2019-08-22 13:04:16', '2020-05-28 15:09:35', 3, 5, 1, NULL, 6.00, 63.00, NULL, NULL, 'Ut eaque quo porro at. Quae voluptatum quo et eos omnis. Delectus sed omnis deserunt ea. Repudiandae hic vel possimus vel facilis beatae id. Ut nemo dolor aut consequuntur natus autem in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(374, '2020-01-27 08:16:18', '2020-05-28 15:09:35', 4, 5, 3, NULL, 5.00, 43.00, NULL, NULL, 'Aliquid labore numquam cumque non. Dolor voluptate omnis modi suscipit. Quisquam ut debitis ab dolorem et. Voluptas similique vitae et debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(375, '2019-06-29 15:08:00', '2020-05-28 15:09:35', 2, 5, 1, NULL, 8.00, 33.00, NULL, NULL, 'Natus cum est sed omnis et ducimus. Qui vero officiis est inventore similique voluptatem laborum. Ab et cum dolores deleniti quam architecto sunt accusamus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(376, '2019-12-26 19:11:21', '2020-05-28 15:09:35', 2, 4, 3, NULL, 5.00, 43.00, NULL, NULL, 'Quis doloribus eius est omnis. Nobis quia eaque earum et ex. Eaque voluptas soluta quaerat nostrum nesciunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(377, '2019-12-24 11:49:05', '2020-05-28 15:09:35', 4, 4, 2, NULL, 9.00, 95.00, NULL, NULL, 'Dicta eligendi a voluptatem qui tempore tempora. Deserunt dolorem consequatur officiis soluta sint quidem. Velit et rerum dicta vel illum vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(378, '2019-11-16 06:22:26', '2020-05-28 15:09:35', 1, 5, 3, NULL, 5.00, 64.00, NULL, NULL, 'Repellat nemo sunt optio odit. Eveniet assumenda ipsum omnis repudiandae temporibus minima.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(379, '2019-06-25 11:56:12', '2020-05-28 15:09:35', 3, 4, 1, NULL, 10.00, 52.00, NULL, NULL, 'Est asperiores ut libero voluptatum assumenda quas. Qui veritatis adipisci eos quos sit et. Necessitatibus voluptas sapiente ipsa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(380, '2019-09-24 13:05:26', '2020-05-28 15:09:35', 1, 4, 3, NULL, 9.00, 37.00, NULL, NULL, 'Aperiam aliquid rerum reprehenderit. Laudantium quia dignissimos magni voluptatem laboriosam quos. Aut ut cum quis consequatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(381, '2019-12-15 21:12:13', '2020-05-28 15:09:35', 4, 4, 3, NULL, 6.00, 63.00, NULL, NULL, 'Voluptates blanditiis aperiam vitae consectetur aut culpa. Quas repellendus in aut omnis temporibus. Rerum voluptate sit rerum corrupti.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(382, '2019-06-03 17:53:00', '2020-05-28 15:09:35', 4, 4, 3, NULL, 5.00, 89.00, NULL, NULL, 'Voluptatem voluptatum soluta ab similique. Et autem rerum laboriosam qui doloribus maiores vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(383, '2019-08-16 23:55:45', '2020-05-28 15:09:35', 3, 4, 2, NULL, 5.00, 50.00, NULL, NULL, 'Dolorem mollitia et vero qui. Cumque dignissimos nihil ut dolores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(384, '2020-02-16 14:26:31', '2020-05-28 15:09:35', 5, 4, 2, NULL, 9.00, 64.00, NULL, NULL, 'Consequuntur beatae commodi est neque facere incidunt et. Error cumque voluptatibus amet veniam eum est. Vero repudiandae quia culpa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(385, '2019-12-27 18:58:49', '2020-05-28 15:09:35', 1, 5, 1, NULL, 10.00, 31.00, NULL, NULL, 'Eos possimus inventore omnis explicabo vel aperiam molestiae. Earum ad dolorem consequatur eligendi voluptas omnis suscipit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(386, '2019-08-13 18:40:18', '2020-05-28 15:09:35', 2, 5, 2, NULL, 5.00, 37.00, NULL, NULL, 'Labore optio doloremque sed sed dolor reiciendis. Enim dignissimos consequatur quae sint. Adipisci voluptatum iure dolore ullam nesciunt quisquam velit quia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(387, '2019-05-28 18:25:37', '2020-05-28 15:09:35', 4, 4, 3, NULL, 5.00, 50.00, NULL, NULL, 'Id est et perspiciatis exercitationem voluptates. Placeat minus quia aperiam. Adipisci eos aut voluptas earum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(388, '2019-08-28 17:29:13', '2020-05-28 15:09:35', 1, 5, 2, NULL, 5.00, 98.00, NULL, NULL, 'Hic sint ut minima. Doloribus quam quia quisquam autem et sunt et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(389, '2020-01-01 14:17:14', '2020-05-28 15:09:35', 4, 4, 1, NULL, 6.00, 83.00, NULL, NULL, 'Odio alias minus fuga placeat illum. Dolorem reiciendis omnis et explicabo delectus unde. Aut qui fuga aliquid pariatur omnis reprehenderit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(390, '2020-03-22 23:30:46', '2020-05-28 15:09:35', 1, 4, 3, NULL, 5.00, 63.00, NULL, NULL, 'Qui suscipit maiores assumenda est totam. Minima molestiae pariatur deserunt architecto sequi quis. Quia voluptatum expedita assumenda exercitationem excepturi autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(391, '2019-08-31 03:49:43', '2020-05-28 15:09:35', 3, 4, 3, NULL, 7.00, 44.00, NULL, NULL, 'Tempora corporis modi illum praesentium iste. A ducimus eum vel accusamus sapiente. Odit porro ullam qui eos voluptatem. Explicabo porro temporibus id fugiat id repudiandae voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(392, '2019-07-12 10:58:47', '2020-05-28 15:09:35', 4, 5, 1, NULL, 7.00, 63.00, NULL, NULL, 'A magni ipsa voluptate ea culpa dolorem natus eaque. Voluptatibus sit fugit quis commodi est quia similique. Provident rerum quaerat rerum quam. Nostrum quis voluptatem earum temporibus et mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(393, '2020-02-07 03:17:34', '2020-05-28 15:09:35', 2, 5, 1, NULL, 10.00, 88.00, NULL, NULL, 'Voluptatem est nostrum rerum et in. Dolorum dolor quo eius itaque nulla ea reiciendis. Et beatae totam nisi maxime consequatur est pariatur est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(394, '2019-07-21 14:11:02', '2020-05-28 15:09:35', 2, 4, 1, NULL, 6.00, 70.00, NULL, NULL, 'Recusandae vel ut est esse perferendis ut voluptates. Doloremque voluptatem voluptates animi quia et consequatur. Consequatur in excepturi dolorum voluptatum sapiente animi dolorum blanditiis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(395, '2019-12-18 09:01:28', '2020-05-28 15:09:35', 2, 5, 1, NULL, 6.00, 34.00, NULL, NULL, 'Accusamus voluptatem non quam rerum itaque inventore ut. Sit dolorum labore voluptas ut iure illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(396, '2020-02-23 21:02:08', '2020-05-28 15:09:35', 4, 4, 2, NULL, 10.00, 47.00, NULL, NULL, 'Culpa ea nisi vel qui iure. Consectetur quia provident quis est. Sequi sed et dolor enim reiciendis. Quas quasi quia vel sed ut qui qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(397, '2020-04-07 04:15:11', '2020-05-28 15:09:35', 1, 5, 2, NULL, 9.00, 39.00, NULL, NULL, 'Odit alias consequatur dolorem consequatur error eius commodi. Consectetur dolorem dignissimos velit occaecati quia. Et eaque exercitationem sed ut numquam unde nihil minus. Atque et qui ullam ullam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(398, '2019-12-31 18:28:29', '2020-05-28 15:09:35', 4, 4, 2, NULL, 8.00, 59.00, NULL, NULL, 'Earum eligendi sunt odit quaerat. Asperiores a quia quisquam qui voluptates minus autem. Et est mollitia optio velit in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(399, '2019-10-06 13:33:57', '2020-05-28 15:09:35', 3, 5, 1, NULL, 9.00, 69.00, NULL, NULL, 'Unde aut illo vero odit fuga asperiores aut. Nam dicta et et dignissimos. Tenetur temporibus odio non ut possimus sapiente ut quae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(400, '2019-06-06 18:36:08', '2020-05-28 15:09:35', 3, 5, 1, NULL, 5.00, 97.00, NULL, NULL, 'Nihil aut reprehenderit eligendi quasi dicta laudantium aut. Sint et modi qui enim omnis. Totam aut non voluptas voluptas quos ex non modi. Omnis iusto et blanditiis culpa fugiat vero quis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(401, '2019-08-21 20:23:24', '2020-05-28 15:09:35', 5, 5, 2, NULL, 6.00, 91.00, NULL, NULL, 'Totam sapiente aliquam totam fuga quasi totam dolor. Sed similique dolorum quos quia. Nam fugit autem temporibus doloremque ea autem quod non. Ab minus suscipit aut autem et quasi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(402, '2019-09-21 14:25:33', '2020-05-28 15:09:35', 3, 5, 3, NULL, 6.00, 39.00, NULL, NULL, 'Voluptatem ad voluptate architecto culpa reiciendis. Omnis omnis enim qui aut sequi ullam quis. Atque corporis id impedit. Ea quidem molestias qui incidunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(403, '2020-04-15 20:45:23', '2020-05-28 15:09:35', 3, 5, 1, NULL, 8.00, 75.00, NULL, NULL, 'Alias exercitationem iure amet impedit. Qui aut molestiae enim ea qui quam. Modi esse quod sit optio ut suscipit omnis. Explicabo et qui architecto corporis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(404, '2019-06-10 15:07:02', '2020-05-28 15:09:35', 5, 5, 3, NULL, 6.00, 81.00, NULL, NULL, 'Dolor aut velit minus et. Repellendus vitae amet quo dolor.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(405, '2020-05-16 02:38:29', '2020-05-28 15:09:35', 3, 4, 3, NULL, 6.00, 58.00, NULL, NULL, 'Ea non commodi fuga odio consequatur vel. Et unde eos ad dicta labore sint rem non. Nostrum numquam sequi ad vel rerum ullam iste. Quia laborum autem sapiente minima ad est tempora.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(406, '2020-02-04 05:26:06', '2020-05-28 15:09:35', 1, 4, 2, NULL, 7.00, 62.00, NULL, NULL, 'Voluptatum architecto atque enim non. Rerum ea sed repellendus. Dolorem veritatis eum rem dolorum blanditiis maxime. Sapiente perspiciatis voluptatum inventore assumenda. Id saepe omnis officia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(407, '2019-07-02 20:19:41', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 68.00, NULL, NULL, 'Fugiat ut dolor sunt non laudantium beatae facilis. Ea voluptas consequatur quas similique. Dicta vel suscipit odio quis veniam est. Minima deserunt ullam quis in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(408, '2020-03-15 17:17:11', '2020-05-28 15:09:35', 1, 5, 2, NULL, 10.00, 39.00, NULL, NULL, 'Odio omnis qui optio molestiae. Non maiores rerum sed dolor qui perspiciatis laudantium. Et et assumenda vel dolorem eius ut. Et quam doloremque quibusdam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(409, '2019-10-18 01:06:27', '2020-05-28 15:09:35', 1, 5, 3, NULL, 5.00, 71.00, NULL, NULL, 'Ab repellendus recusandae dolorem illo assumenda ut. Fuga iusto libero et voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(410, '2020-01-24 21:04:23', '2020-05-28 15:09:35', 3, 4, 3, NULL, 8.00, 44.00, NULL, NULL, 'Doloremque cumque maiores ut modi nam iusto. Earum culpa corrupti possimus voluptatibus itaque consequuntur amet. Unde voluptatem debitis facilis nihil.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(411, '2019-09-13 22:47:19', '2020-05-28 15:09:35', 4, 4, 2, NULL, 5.00, 44.00, NULL, NULL, 'Nihil aut occaecati sint id magni cum mollitia. Atque sint modi quo exercitationem maiores eius. Accusamus iste occaecati est optio perspiciatis at nemo. Nihil ea nihil est dolorem laborum sapiente.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(412, '2019-11-05 09:42:38', '2020-05-28 15:09:35', 4, 5, 3, NULL, 10.00, 95.00, NULL, NULL, 'Enim quod voluptatem quod ut et et iste. Ut id totam et asperiores dolorum. Asperiores voluptatem in eius sint ipsum et quas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(413, '2019-11-03 10:29:06', '2020-05-28 15:09:35', 4, 4, 3, NULL, 8.00, 82.00, NULL, NULL, 'Provident nemo natus aperiam qui sit ut aut. Ea rerum quia velit quia ut eveniet sunt. Laudantium officiis omnis molestiae dolores dignissimos ut nisi in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(414, '2019-12-13 06:12:16', '2020-05-28 15:09:35', 1, 4, 2, NULL, 6.00, 100.00, NULL, NULL, 'Animi ut odit qui odio aut ullam distinctio. Id veniam excepturi nesciunt autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(415, '2019-08-31 23:36:35', '2020-05-28 15:09:35', 2, 4, 3, NULL, 9.00, 65.00, NULL, NULL, 'Ipsam vel rerum itaque dolorem ducimus nihil. Voluptatem consectetur aut consequatur quam et delectus quibusdam. Nesciunt itaque et consequatur enim necessitatibus repellendus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(416, '2019-09-06 13:16:21', '2020-05-28 15:09:35', 1, 4, 3, NULL, 9.00, 30.00, NULL, NULL, 'Eos sint illo aliquam culpa sapiente ipsa. Quia officiis explicabo magnam non vel sint. Quia aut sunt voluptatum consequatur error laboriosam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(417, '2019-08-01 21:34:49', '2020-05-28 15:09:35', 5, 4, 2, NULL, 9.00, 60.00, NULL, NULL, 'Asperiores neque et sunt amet facilis cum occaecati. Dolorem blanditiis sit autem nam. In voluptatibus tempore ratione.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(418, '2019-10-20 23:00:24', '2020-05-28 15:09:35', 1, 4, 3, NULL, 10.00, 47.00, NULL, NULL, 'Libero consequatur distinctio fugiat totam. Praesentium voluptas rerum vitae est. Sint praesentium sit accusantium enim doloribus. Iusto omnis est autem et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(419, '2019-09-02 23:29:57', '2020-05-28 15:09:35', 2, 5, 3, NULL, 7.00, 51.00, NULL, NULL, 'Incidunt quibusdam deserunt dolor ab. Suscipit doloremque ducimus fuga. Facilis accusamus earum atque aut. Eos fugit labore nobis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(420, '2020-01-15 23:21:30', '2020-05-28 15:09:35', 3, 5, 1, NULL, 10.00, 84.00, NULL, NULL, 'Hic quaerat voluptatum temporibus culpa. Quaerat suscipit ullam sed. Velit et harum reprehenderit ut doloremque sequi qui. Ducimus omnis atque eligendi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(421, '2019-12-31 19:50:45', '2020-05-28 15:09:35', 2, 4, 1, NULL, 10.00, 95.00, NULL, NULL, 'Dignissimos illum pariatur id cum voluptates dolores temporibus. Ullam temporibus vitae quos hic labore doloribus ad. Quae nesciunt voluptas tempora. Repellat ut quia sint quam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(422, '2020-04-07 00:16:05', '2020-05-28 15:09:35', 3, 4, 3, NULL, 8.00, 79.00, NULL, NULL, 'Autem quidem architecto dolore enim. Est laudantium suscipit ex aut. Quidem aliquam doloribus voluptate ducimus quo rem. Deserunt ea dignissimos incidunt quisquam quasi pariatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(423, '2019-09-02 22:30:07', '2020-05-28 15:09:35', 4, 4, 3, NULL, 8.00, 72.00, NULL, NULL, 'Temporibus mollitia sed unde aut. Aliquid sint cum sint dignissimos. Occaecati nihil in velit. Ut est et aut atque eveniet odio. Tempora quae unde et adipisci saepe.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(424, '2020-05-03 00:10:56', '2020-05-28 15:09:35', 1, 5, 3, NULL, 10.00, 99.00, NULL, NULL, 'Minus quo ab est molestiae. Debitis ut id placeat mollitia. Autem necessitatibus labore ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(425, '2020-01-21 19:26:48', '2020-05-28 15:09:35', 5, 5, 3, NULL, 9.00, 54.00, NULL, NULL, 'Amet vel qui minima necessitatibus ratione autem rerum. Alias sunt officia recusandae deserunt maxime quas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(426, '2020-02-18 06:13:15', '2020-05-28 15:09:35', 3, 4, 3, NULL, 8.00, 48.00, NULL, NULL, 'Dolore aut aut ipsum. Ipsa sed sint nihil quo. Minus illum accusantium facere omnis iure atque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(427, '2019-09-01 00:40:53', '2020-05-28 15:09:35', 5, 5, 1, NULL, 9.00, 92.00, NULL, NULL, 'Eum libero sit qui aliquid. Placeat dolorum alias animi. Dolorem facere maxime ea sint non.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(428, '2020-01-24 15:06:37', '2020-05-28 15:09:35', 5, 5, 1, NULL, 7.00, 36.00, NULL, NULL, 'Laboriosam autem dolorem quibusdam ex officiis nobis ratione est. Vitae deleniti possimus enim alias. Eos ad tempora sapiente voluptas recusandae sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(429, '2020-03-30 17:45:18', '2020-05-28 15:09:35', 4, 4, 2, NULL, 10.00, 100.00, NULL, NULL, 'Voluptatem autem qui sint excepturi. Iusto numquam dolores est dicta nulla et. Aut qui est libero in consectetur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(430, '2019-06-12 14:55:12', '2020-05-28 15:09:35', 5, 5, 3, NULL, 5.00, 64.00, NULL, NULL, 'Repudiandae doloribus ea esse accusantium. Dolore omnis harum iusto accusamus vel ipsam. Iusto aliquid voluptatem libero nostrum cum nihil. Omnis porro harum quod est aliquam architecto.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(431, '2020-02-01 16:31:24', '2020-05-28 15:09:35', 5, 5, 2, NULL, 10.00, 78.00, NULL, NULL, 'Sequi aut animi in ipsam veniam. Voluptatem sit molestiae omnis necessitatibus quis. Fuga aliquid facere molestias quibusdam quod id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(432, '2019-08-06 09:38:15', '2020-05-28 15:09:35', 1, 5, 1, NULL, 5.00, 91.00, NULL, NULL, 'Aut quis aut impedit magni id nihil culpa. Molestias praesentium molestiae incidunt reiciendis. Omnis tempora ea quasi et commodi fuga.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(433, '2020-04-23 13:11:22', '2020-05-28 15:09:35', 1, 4, 1, NULL, 6.00, 52.00, NULL, NULL, 'Debitis necessitatibus enim placeat tenetur id. Inventore ut odio nobis omnis ullam. Eius rerum sit nihil nulla.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(434, '2019-09-01 05:49:33', '2020-05-28 15:09:35', 1, 5, 1, NULL, 7.00, 52.00, NULL, NULL, 'Maiores qui quia commodi necessitatibus unde. Ut qui soluta voluptatem quia ducimus ut. Asperiores corrupti voluptates quia quae libero.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(435, '2020-03-20 22:44:01', '2020-05-28 15:09:35', 5, 5, 1, NULL, 5.00, 61.00, NULL, NULL, 'Saepe placeat ad iure voluptas aut error. Sed animi quas alias qui voluptatem perspiciatis. Hic molestias cupiditate voluptatibus numquam eius qui quia eos. Eos dolores provident odio eaque dolores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(436, '2020-02-11 04:41:51', '2020-05-28 15:09:35', 5, 4, 1, NULL, 6.00, 84.00, NULL, NULL, 'Quod magnam doloribus illum. Fugit quasi doloribus soluta et ex et unde. Repellat consequatur ut quidem dignissimos ducimus fuga veritatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(437, '2019-08-20 18:23:25', '2020-05-28 15:09:35', 3, 5, 3, NULL, 5.00, 64.00, NULL, NULL, 'Voluptatum sit autem soluta. Dolores cumque sunt cupiditate laborum voluptatem totam nihil. Qui quasi id aspernatur. Rem quo quo soluta est aut modi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(438, '2020-01-04 20:22:54', '2020-05-28 15:09:35', 5, 4, 1, NULL, 10.00, 91.00, NULL, NULL, 'Doloribus placeat dolorum voluptatem laudantium dolor tenetur qui. Maiores aut ab enim ipsa. Non perspiciatis accusamus quaerat quia. Sapiente error ea blanditiis ipsa consequuntur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(439, '2019-12-06 01:37:39', '2020-05-28 15:09:35', 5, 5, 2, NULL, 6.00, 43.00, NULL, NULL, 'Nihil sit quas omnis quaerat libero quo et. Quisquam ullam corrupti autem rerum enim ad. Sed odio sit facere odio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(440, '2019-07-03 03:19:33', '2020-05-28 15:09:35', 1, 4, 3, NULL, 10.00, 76.00, NULL, NULL, 'Sunt ex dolor saepe deleniti recusandae. Molestiae eum aut cupiditate. Libero totam dolore iure perspiciatis incidunt porro fugit. Impedit dolor id vel pariatur dignissimos quisquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(441, '2019-10-26 21:18:57', '2020-05-28 15:09:35', 2, 4, 1, NULL, 7.00, 71.00, NULL, NULL, 'Ex quibusdam recusandae rerum error repellat. Ipsum iusto aut quo est. Provident earum natus exercitationem repellat molestias fuga ut. Eius ad et id at id sed corrupti.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(442, '2019-11-19 03:10:33', '2020-05-28 15:09:35', 4, 5, 3, NULL, 5.00, 63.00, NULL, NULL, 'Vel deleniti voluptatum et placeat unde molestias qui cum. Hic ullam sapiente minima. Eum mollitia voluptatem qui non. Dicta rerum impedit et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(443, '2019-12-15 16:39:20', '2020-05-28 15:09:35', 4, 5, 1, NULL, 8.00, 86.00, NULL, NULL, 'Ut quis aspernatur quae qui magnam. Quo occaecati vel libero enim sed. Maxime est neque sit sequi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(444, '2020-04-19 15:00:13', '2020-05-28 15:09:35', 4, 5, 2, NULL, 5.00, 59.00, NULL, NULL, 'Odio veritatis accusantium impedit et. Odit est quo saepe. Et in rem est et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(445, '2020-02-07 02:50:28', '2020-05-28 15:09:35', 2, 4, 3, NULL, 6.00, 45.00, NULL, NULL, 'Accusantium sint perspiciatis alias qui provident et. Sit quisquam incidunt dolorem laboriosam. Ipsa hic labore nesciunt sunt impedit et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(446, '2019-12-31 06:13:29', '2020-05-28 15:09:35', 3, 5, 1, NULL, 10.00, 59.00, NULL, NULL, 'Corrupti debitis debitis cumque dolorem eos omnis molestias. In maiores quos eum et. Ut at nihil debitis earum repudiandae. Facilis et vitae molestiae sunt mollitia.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(447, '2020-03-27 22:02:22', '2020-05-28 15:09:35', 1, 4, 2, NULL, 5.00, 97.00, NULL, NULL, 'Qui dolores commodi nisi quaerat quae qui exercitationem. Ipsa sit consequatur ea est culpa doloremque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(448, '2020-04-10 16:25:42', '2020-05-28 15:09:35', 3, 4, 2, NULL, 8.00, 69.00, NULL, NULL, 'Quis optio fugit eius dignissimos quas quas provident. Dolore alias et minus sed. Quam ab voluptatum iure et ipsam odio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(449, '2020-03-09 17:16:40', '2020-05-28 15:09:35', 2, 4, 3, NULL, 5.00, 79.00, NULL, NULL, 'Ut qui atque ea itaque molestias. Recusandae dolor ipsam sit voluptatibus ullam cupiditate. Neque repudiandae aliquid a eos magni sit suscipit. Et iure enim deserunt voluptatibus incidunt quaerat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(450, '2019-12-02 22:19:19', '2020-05-28 15:09:35', 3, 5, 3, NULL, 9.00, 78.00, NULL, NULL, 'Sed saepe fuga suscipit porro. Soluta rem eum qui commodi voluptas architecto nam veritatis. Doloremque cumque voluptatem nam magni debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(451, '2020-05-16 06:16:27', '2020-05-28 15:09:35', 3, 4, 3, NULL, 6.00, 31.00, NULL, NULL, 'Autem saepe quibusdam facilis ea non quis. Minus ipsum nam incidunt possimus minus incidunt. Doloribus quos ullam deleniti praesentium eaque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(452, '2019-05-31 22:11:43', '2020-05-28 15:09:35', 4, 4, 2, NULL, 5.00, 47.00, NULL, NULL, 'Deleniti voluptatem culpa reprehenderit veniam molestias tempora quae odio. Optio sed sit repellat voluptatibus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(453, '2019-12-16 09:38:09', '2020-05-28 15:09:35', 1, 4, 2, NULL, 8.00, 54.00, NULL, NULL, 'Et culpa hic eos. Eum esse neque eum architecto. Impedit quisquam eveniet impedit ut. Qui natus voluptatibus nobis vel sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(454, '2019-07-21 07:38:02', '2020-05-28 15:09:35', 4, 5, 3, NULL, 5.00, 42.00, NULL, NULL, 'Aut quo est doloremque atque ut ut. Nulla delectus iure eum possimus aut molestiae rerum. Distinctio est officiis reiciendis pariatur accusamus. Veniam incidunt est consectetur quia nam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(455, '2020-05-17 12:23:48', '2020-05-28 15:09:35', 3, 4, 3, NULL, 9.00, 47.00, NULL, NULL, 'Aut voluptas molestias nam aut. Quo voluptatum autem qui et. Ea sit sequi asperiores nisi autem officia voluptas placeat. Quia eum eum at nam saepe cupiditate.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(456, '2019-06-01 06:16:35', '2020-05-28 15:09:35', 5, 4, 2, NULL, 10.00, 91.00, NULL, NULL, 'A laborum cum eos qui ex non expedita iusto. Ullam architecto corporis non corrupti modi adipisci delectus. Placeat molestiae aut suscipit culpa non error qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(457, '2020-05-09 01:34:38', '2020-05-28 15:09:35', 3, 4, 1, NULL, 7.00, 34.00, NULL, NULL, 'Sed reiciendis iure est dolore tenetur tempora et ex. Tempora at ut repudiandae necessitatibus aut ad nesciunt. Nemo nam id rem et excepturi minus. Modi officiis porro laudantium hic libero.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(458, '2019-10-31 19:42:41', '2020-05-28 15:09:35', 5, 5, 2, NULL, 5.00, 66.00, NULL, NULL, 'Facere aspernatur minima vitae non tempore minima optio atque. Voluptatem enim non quis quis et ut ut. Error aspernatur dolorem doloremque nisi quis deserunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(459, '2019-07-06 23:54:52', '2020-05-28 15:09:35', 4, 4, 1, NULL, 7.00, 30.00, NULL, NULL, 'Quas velit ratione atque. Similique magni quia labore quo. Sit aspernatur sed voluptatem voluptatem. Quo minus soluta adipisci. A fugit veritatis cum eius. Quia a aperiam aperiam. Ut et aut sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(460, '2020-03-21 07:29:51', '2020-05-28 15:09:35', 2, 4, 3, NULL, 8.00, 81.00, NULL, NULL, 'Voluptatibus qui occaecati voluptatibus rerum nostrum. Quae ratione ipsum sed asperiores officia. Amet perspiciatis est consequuntur commodi autem. Tempora enim iste rerum velit vero quos voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(461, '2020-01-09 07:33:17', '2020-05-28 15:09:35', 5, 4, 2, NULL, 8.00, 47.00, NULL, NULL, 'Ipsa dolorem et aspernatur ea doloribus at. Hic dolor sed rerum rerum qui maxime laudantium ut. Eligendi ea earum velit tempore animi veritatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(462, '2019-08-15 15:02:24', '2020-05-28 15:09:35', 2, 5, 1, NULL, 10.00, 90.00, NULL, NULL, 'Doloribus dolor quidem molestias ut. Qui aut rerum iusto corrupti omnis non nam. Vitae atque itaque aspernatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(463, '2020-02-17 07:46:28', '2020-05-28 15:09:35', 4, 4, 1, NULL, 8.00, 55.00, NULL, NULL, 'Voluptatem beatae minus aut molestiae sunt unde. Debitis nesciunt expedita quod esse. Et et qui maiores fugit. Aliquid quis ut veniam et iure eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(464, '2020-04-19 16:30:20', '2020-05-28 15:09:35', 2, 4, 2, NULL, 6.00, 50.00, NULL, NULL, 'Minus quis vel reiciendis quisquam molestiae. Ipsam id qui est dolores. Est quam modi accusamus. Incidunt deleniti ut doloribus sint aliquam aspernatur excepturi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(465, '2019-09-13 00:33:02', '2020-05-28 15:09:35', 5, 4, 1, NULL, 5.00, 88.00, NULL, NULL, 'Rem enim quibusdam placeat eos. Eos inventore saepe sit doloremque ipsa voluptatibus optio. Nemo dolorem rerum et labore.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(466, '2020-01-27 18:48:47', '2020-05-28 15:09:35', 1, 5, 1, NULL, 5.00, 56.00, NULL, NULL, 'At tempora delectus tenetur error atque et. Deserunt aut officiis dolores sequi maiores autem atque deleniti. Quos suscipit velit eos quis soluta sapiente. Ea culpa magni corporis velit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(467, '2020-01-08 21:02:42', '2020-05-28 15:09:35', 4, 4, 1, NULL, 8.00, 88.00, NULL, NULL, 'Qui tenetur iusto illum quod. Veniam ut ipsum fugit velit facilis. Odio esse eum qui reprehenderit aspernatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(468, '2019-07-31 16:36:48', '2020-05-28 15:09:35', 1, 4, 1, NULL, 5.00, 49.00, NULL, NULL, 'Ipsum consequuntur qui dolores ducimus iste accusantium. Vitae culpa quis a. Possimus omnis minus occaecati debitis exercitationem voluptatum nulla fugiat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(469, '2019-06-08 01:17:24', '2020-05-28 15:09:35', 1, 5, 3, NULL, 9.00, 45.00, NULL, NULL, 'Fuga aut aut voluptas quia ducimus maiores rerum. Nemo aliquid expedita culpa ex sit esse.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(470, '2019-09-18 04:46:10', '2020-05-28 15:09:35', 4, 4, 1, NULL, 9.00, 72.00, NULL, NULL, 'Facilis impedit est nemo velit voluptas nihil. Fugit doloribus fuga in fugit neque officiis eos. Dolores ut ratione necessitatibus libero quae nobis voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(471, '2020-04-17 07:34:41', '2020-05-28 15:09:35', 3, 4, 2, NULL, 5.00, 35.00, NULL, NULL, 'Ut et reiciendis qui cum sapiente optio. Quia sit natus dolorem tempore voluptas. Tempore quo non cumque et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(472, '2020-01-24 22:46:46', '2020-05-28 15:09:35', 4, 4, 2, NULL, 8.00, 84.00, NULL, NULL, 'Facere est deleniti cum voluptates aperiam porro sed. Iusto qui ad debitis esse. Molestias nostrum vero quia iusto voluptatem quis nam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(473, '2019-07-08 03:13:15', '2020-05-28 15:09:35', 2, 5, 1, NULL, 5.00, 49.00, NULL, NULL, 'Fugiat eos accusamus placeat dolorum accusamus aut. Ad reprehenderit distinctio tempore qui ut veritatis molestiae. Sed excepturi culpa nihil consectetur. Sed amet dolor a vel.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(474, '2019-07-20 13:45:40', '2020-05-28 15:09:35', 2, 5, 2, NULL, 8.00, 71.00, NULL, NULL, 'Minima et illo qui corporis voluptas et voluptatibus. Cupiditate rerum assumenda dolorum quo autem officia vitae. Iure iusto et nihil dolor mollitia sed ipsam exercitationem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(475, '2020-05-22 12:48:59', '2020-05-28 15:09:36', 5, 4, 1, NULL, 5.00, 81.00, NULL, NULL, 'Fugit vero deleniti atque facere et. Cupiditate excepturi assumenda dolore cumque reiciendis id voluptatem. Eaque odio aut similique cumque enim qui. Officiis pariatur et ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(476, '2019-09-30 11:26:26', '2020-05-28 15:09:36', 4, 4, 2, NULL, 5.00, 44.00, NULL, NULL, 'Vel odio non pariatur ut cupiditate temporibus. Ipsum vel veritatis sapiente ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(477, '2019-08-22 19:02:01', '2020-05-28 15:09:36', 4, 4, 2, NULL, 5.00, 57.00, NULL, NULL, 'Et adipisci odio et id provident. Dolor vel et quidem quo. Ad doloremque ut aliquid commodi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(478, '2020-01-17 10:38:34', '2020-05-28 15:09:36', 2, 4, 1, NULL, 10.00, 52.00, NULL, NULL, 'Facilis vel sit accusantium iusto odit. Fugiat modi maxime et et. Quis omnis voluptatibus aut iste voluptatem. Qui rem et magnam. Quis ea animi quia odio quibusdam nam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(479, '2020-05-07 03:39:28', '2020-05-28 15:09:36', 1, 5, 1, NULL, 8.00, 71.00, NULL, NULL, 'Dignissimos itaque autem rerum consequuntur quam delectus. Voluptatem eos provident vel blanditiis dolorem fugiat et id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(480, '2019-06-22 21:51:51', '2020-05-28 15:09:36', 4, 5, 3, NULL, 5.00, 69.00, NULL, NULL, 'Eum natus doloremque vel delectus. Porro error quia soluta tempore. Eaque neque atque dolore dolor in alias.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(481, '2019-07-22 07:05:08', '2020-05-28 15:09:36', 4, 4, 3, NULL, 5.00, 34.00, NULL, NULL, 'Quam et itaque aspernatur qui rerum autem ullam. Ullam accusamus consequatur earum quia placeat. Porro quo officiis rem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(482, '2020-04-02 16:03:21', '2020-05-28 15:09:36', 2, 5, 3, NULL, 10.00, 80.00, NULL, NULL, 'Veritatis vero voluptas dolorem aliquam omnis ex. Animi a quo cumque ducimus totam rerum blanditiis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(483, '2020-01-22 14:41:03', '2020-05-28 15:09:36', 1, 4, 3, NULL, 9.00, 67.00, NULL, NULL, 'Vel facere fugit aut enim ut iure porro. Ex ab magnam qui ducimus saepe qui consectetur. Ut mollitia voluptatem cum qui modi enim incidunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(484, '2019-10-06 06:48:08', '2020-05-28 15:09:36', 1, 4, 1, NULL, 6.00, 63.00, NULL, NULL, 'Quasi deserunt omnis labore. Voluptas molestiae rem libero voluptatum eius libero nam. Incidunt placeat ipsum labore voluptas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(485, '2019-08-29 17:37:55', '2020-05-28 15:09:36', 2, 5, 3, NULL, 8.00, 62.00, NULL, NULL, 'Ipsa ullam necessitatibus sed cum. Autem sed vel dolores blanditiis. Voluptas quis aliquam modi. Ut repellat porro ut nostrum dignissimos temporibus aperiam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(486, '2020-04-11 06:27:33', '2020-05-28 15:09:36', 2, 4, 2, NULL, 5.00, 70.00, NULL, NULL, 'Non non rem ratione placeat debitis. Adipisci voluptatem eius numquam suscipit voluptates harum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(487, '2019-08-27 16:37:45', '2020-05-28 15:09:36', 1, 5, 1, NULL, 5.00, 34.00, NULL, NULL, 'Qui natus excepturi qui esse consectetur et accusamus. Esse corporis accusantium modi dolor provident. Voluptas facere ut esse ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(488, '2020-03-14 17:38:03', '2020-05-28 15:09:36', 5, 4, 3, NULL, 9.00, 49.00, NULL, NULL, 'Qui aliquid voluptatum fugit et fuga est. Occaecati veniam occaecati est. Fugiat et autem ex quisquam nemo temporibus quibusdam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(489, '2019-12-09 13:16:31', '2020-05-28 15:09:36', 2, 4, 1, NULL, 5.00, 85.00, NULL, NULL, 'Eum officia illo qui excepturi et et nihil voluptatum. Ut hic rem iusto rerum voluptates maxime. Sit excepturi voluptates dolorem tempora saepe dolor.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(490, '2020-05-06 11:15:10', '2020-05-28 15:09:36', 3, 4, 2, NULL, 5.00, 96.00, NULL, NULL, 'Accusamus dolorum sunt ut fugit omnis voluptas. Similique consequuntur voluptatem dolorum architecto. Quaerat debitis odio laborum laboriosam ipsam. Quia et illum et corporis vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(491, '2020-02-12 05:09:12', '2020-05-28 15:09:36', 4, 4, 2, NULL, 6.00, 85.00, NULL, NULL, 'Ea quibusdam autem illo fugit repellat culpa harum. Qui repellat possimus ut distinctio voluptas quos dolorum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(492, '2019-09-17 05:51:34', '2020-05-28 15:09:36', 3, 5, 3, NULL, 6.00, 54.00, NULL, NULL, 'Id dolores et ipsum eveniet. Adipisci quis sit eum placeat. Id id sed voluptas consequuntur. Vitae laudantium cumque tempore accusamus molestiae dolorem dolorem cum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(493, '2020-04-07 15:18:06', '2020-05-28 15:09:36', 3, 5, 2, NULL, 10.00, 57.00, NULL, NULL, 'Cumque in et similique. Et asperiores quas et minus temporibus ut. Delectus deleniti ducimus sequi quisquam ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(494, '2019-10-25 16:26:51', '2020-05-28 15:09:36', 4, 4, 2, NULL, 6.00, 50.00, NULL, NULL, 'Eveniet maxime non laudantium sit. Aliquam ullam sequi sequi sed facilis. Sit quia et enim saepe ipsam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(495, '2019-08-20 23:30:53', '2020-05-28 15:09:36', 4, 5, 3, NULL, 10.00, 42.00, NULL, NULL, 'Et exercitationem qui et quis. Ab eaque ut nesciunt vero saepe est. Eos eius autem odit ad nisi. Aut id ut sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(496, '2019-07-29 03:52:09', '2020-05-28 15:09:36', 4, 4, 3, NULL, 7.00, 99.00, NULL, NULL, 'Corrupti veritatis cum nobis non. Et aspernatur nisi molestiae in culpa excepturi illum. Magnam dolorem facilis illo commodi. Nobis est ab similique aut recusandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(497, '2019-07-31 17:05:17', '2020-05-28 15:09:36', 3, 5, 3, NULL, 7.00, 34.00, NULL, NULL, 'Autem quos tempore fugit minus ea qui tempore. Aut at cumque repellendus veritatis consequatur nam. Consequuntur qui quia totam adipisci facere vel harum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(498, '2020-02-24 16:47:47', '2020-05-28 15:09:36', 2, 5, 1, NULL, 7.00, 80.00, NULL, NULL, 'Dolorum velit nobis id molestiae sint numquam. Quas itaque ipsa quaerat quis ut eos. Repellat molestias et voluptatem quia voluptatem id optio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(499, '2020-05-04 20:49:08', '2020-05-28 15:09:36', 4, 5, 3, NULL, 5.00, 45.00, NULL, NULL, 'Hic voluptates enim consequatur commodi iure quo labore. Est iusto molestiae libero et consequatur voluptates. Omnis itaque nisi earum similique expedita veniam. Nihil animi hic unde.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(500, '2019-09-12 13:20:50', '2020-05-28 15:09:36', 3, 5, 2, NULL, 9.00, 96.00, NULL, NULL, 'Enim perspiciatis animi itaque temporibus adipisci autem recusandae. Itaque doloribus minus omnis qui voluptates id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(501, '2020-05-27 20:16:58', '2020-05-28 15:09:41', 2, 5, 3, NULL, 8.00, 76.00, NULL, NULL, 'Quia excepturi sit quo voluptas voluptatem labore. Et animi autem et sint nam labore sequi. Suscipit consequatur quam explicabo beatae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(502, '2020-05-27 16:24:25', '2020-05-28 15:09:41', 4, 5, 3, NULL, 9.00, 64.00, NULL, NULL, 'Vel rerum aut atque blanditiis vel error. Aut necessitatibus quasi id aut et. Totam voluptates fuga voluptatem ullam voluptas.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(503, '2020-05-28 09:14:11', '2020-05-28 15:09:41', 2, 4, 1, NULL, 8.00, 69.00, NULL, NULL, 'Cum ut praesentium qui dolores. Et quo ad atque nemo tenetur esse voluptas repellat. Dolores et natus veniam amet omnis dolore delectus. Dolorem ut eos quia mollitia qui non et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(504, '2020-05-28 00:54:16', '2020-05-28 15:09:41', 3, 5, 2, NULL, 6.00, 80.00, NULL, NULL, 'Ut assumenda dolore ducimus inventore voluptatem deserunt corporis ducimus. Harum reiciendis est minus mollitia est autem maiores. Sunt hic sint illo consequuntur dolores est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(505, '2020-05-28 15:04:59', '2020-05-28 15:09:41', 4, 4, 3, NULL, 10.00, 46.00, NULL, NULL, 'Recusandae nobis placeat id similique eos voluptates. Aut ut eos est dolor cupiditate non sit aut. Facilis voluptatem repellendus voluptas error impedit. Ducimus rerum et libero.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(506, '2020-05-28 03:07:18', '2020-05-28 15:09:41', 3, 5, 3, NULL, 5.00, 98.00, NULL, NULL, 'Quisquam officiis officia illo id quam aut. Quae non nam consequatur aliquid. Rem necessitatibus voluptatem sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(507, '2020-05-27 18:14:20', '2020-05-28 15:09:41', 1, 4, 3, NULL, 6.00, 79.00, NULL, NULL, 'Quo temporibus amet nobis veniam dolor. Quaerat consequatur nobis facere distinctio. Non autem id exercitationem exercitationem ipsum non ea temporibus. Non eos nihil aliquam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(508, '2020-05-27 16:17:29', '2020-05-28 15:09:50', 3, 5, 2, 3, 6.00, 87.00, NULL, NULL, 'Magni eos id eos non dicta magnam eos. Sequi at aperiam officiis. Voluptatum perspiciatis est porro ex ut. Qui est omnis quisquam eum enim quia illo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(509, '2020-05-28 13:38:39', '2020-05-28 15:09:41', 3, 5, 3, NULL, 6.00, 63.00, NULL, NULL, 'Ut amet corporis id repellat rem voluptatem ea nesciunt. Sed dolor cumque omnis architecto voluptatibus quasi ab. Consequatur porro deserunt dolores voluptate.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(510, '2020-05-28 12:31:07', '2020-05-28 15:09:41', 3, 4, 1, NULL, 6.00, 74.00, NULL, NULL, 'Occaecati temporibus at inventore. Accusamus quidem repellat non. Ut enim sed id dolores placeat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(511, '2020-05-28 11:13:21', '2020-05-28 15:09:41', 5, 5, 1, NULL, 6.00, 67.00, NULL, NULL, 'Nemo repudiandae quas et ut cum. Et voluptatem exercitationem voluptatibus rerum aut culpa et beatae. Rem nulla modi voluptates sit iure.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(512, '2020-05-28 05:58:58', '2020-05-28 15:09:50', 3, 5, 2, 3, 9.00, 98.00, NULL, NULL, 'Minima corrupti esse aut qui. Excepturi quidem voluptas quo explicabo provident. Ea ad velit et est. Qui dolorum molestiae itaque dolores. Quo rem asperiores error cupiditate ipsum magnam id.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(513, '2020-05-28 10:50:19', '2020-05-28 15:09:41', 4, 5, 3, NULL, 6.00, 56.00, NULL, NULL, 'Deleniti non et harum ex animi recusandae. Enim non et reprehenderit inventore. Repellendus quasi ut ducimus vel sint odit molestiae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(514, '2020-05-28 04:52:35', '2020-05-28 15:09:41', 1, 5, 1, NULL, 9.00, 96.00, NULL, NULL, 'Omnis nam commodi consequuntur inventore autem dolores illum impedit. Perspiciatis occaecati labore culpa aut a. Natus exercitationem et ipsa error tenetur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(515, '2020-05-28 03:51:20', '2020-05-28 15:09:41', 5, 4, 3, NULL, 7.00, 56.00, NULL, NULL, 'Mollitia dolor ipsum corrupti occaecati. Consequatur necessitatibus sit quos perferendis. Aut dolorem repudiandae aperiam et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(516, '2020-05-28 06:53:55', '2020-05-28 15:09:51', 1, 4, 1, 3, 9.00, 48.00, NULL, NULL, 'Accusamus voluptas explicabo aspernatur maxime voluptatem veritatis omnis qui. Placeat fugit veritatis aut dignissimos corporis. Est ex et inventore sequi iusto ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(517, '2020-05-28 14:29:18', '2020-05-28 15:09:41', 3, 5, 3, NULL, 6.00, 49.00, NULL, NULL, 'Accusamus ex quidem incidunt sed commodi magnam. Doloremque aut omnis et. Et quaerat sunt repellat rem. Sit molestiae atque pariatur minus sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(518, '2020-05-27 20:31:06', '2020-05-28 15:09:41', 5, 4, 3, NULL, 6.00, 84.00, NULL, NULL, 'Minima aliquam ratione dicta quia assumenda ab deserunt sunt. Similique tempore atque dolores omnis molestiae. Iste libero tenetur temporibus est laudantium eos.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`) VALUES
(519, '2020-05-28 14:49:30', '2020-05-28 15:09:41', 1, 4, 1, NULL, 6.00, 40.00, NULL, NULL, 'Aspernatur libero nisi eveniet illum. Veniam id voluptatem nihil aperiam est amet ad. Alias iure dolores dolor explicabo quia vitae et. Corporis sed dolorum est laudantium sit id.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(520, '2020-05-28 10:31:06', '2020-05-28 15:09:41', 1, 5, 3, NULL, 10.00, 86.00, NULL, NULL, 'Et asperiores dignissimos sit ut. Omnis eligendi quisquam voluptate. Rerum aut porro quis id assumenda enim. Eligendi molestiae id est sint voluptatem repudiandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(521, '2020-05-27 22:13:45', '2020-05-28 15:09:41', 5, 4, 2, NULL, 10.00, 57.00, NULL, NULL, 'Voluptatum accusantium sunt ut qui fugit sunt rerum. Quae asperiores aliquam et ea et tenetur architecto. Quidem dolor similique reiciendis blanditiis assumenda.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(522, '2020-05-27 21:49:36', '2020-05-28 15:09:41', 5, 5, 3, NULL, 8.00, 80.00, NULL, NULL, 'Maxime quia consectetur natus et quo ipsam dignissimos. Unde ab est voluptas accusamus sunt quia nemo. Dolor sunt facere qui voluptatem dolor. Dolor distinctio quia magni et rerum doloremque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(523, '2020-05-27 20:45:53', '2020-05-28 15:09:41', 5, 4, 3, NULL, 9.00, 30.00, NULL, NULL, 'Reiciendis maxime excepturi dolorem qui soluta ut voluptate quis. Dolores consectetur quis quia accusantium. Nihil exercitationem enim quas illum corporis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(524, '2020-05-28 00:12:13', '2020-07-24 14:09:37', 4, 5, 2, 3, 10.00, 82.00, NULL, NULL, 'Laborum aut sequi provident ratione. Ut unde nihil qui. Est voluptatem dignissimos labore molestiae. Porro id rerum iure tempora.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(525, '2020-05-28 08:44:06', '2020-05-28 15:09:41', 4, 4, 3, NULL, 7.00, 38.00, NULL, NULL, 'Non adipisci sunt consequatur est quod incidunt. Voluptatum suscipit et dolor voluptate vero quaerat. Aut vel non dolorum est itaque doloribus. Et fuga saepe non consectetur voluptas error hic.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(526, '2020-05-28 01:26:36', '2020-05-28 15:09:41', 2, 5, 3, NULL, 7.00, 95.00, NULL, NULL, 'Officiis qui accusamus est id est. Magni ullam dolore deleniti ex culpa voluptatem aperiam occaecati. Dolorem quis praesentium molestiae sed. Ut at excepturi dicta impedit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(527, '2020-05-28 14:11:23', '2020-05-28 15:09:41', 2, 4, 1, NULL, 6.00, 42.00, NULL, NULL, 'Ea sed ipsam dolor neque. In eum error nihil eum. Aut voluptatem sint dolor maiores molestiae deserunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(528, '2020-05-27 23:40:36', '2020-05-28 15:09:41', 2, 5, 2, NULL, 8.00, 35.00, NULL, NULL, 'Harum tempora iusto sint earum laudantium ipsam enim incidunt. Vel non pariatur recusandae. Aut numquam et aut qui eligendi dolorum. Alias atque iure ducimus aut tempore et autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(529, '2020-05-27 16:47:55', '2020-05-28 15:09:41', 5, 5, 3, NULL, 7.00, 33.00, NULL, NULL, 'Aliquid doloribus tempore repellendus quidem aspernatur ut harum. Et fugit aut expedita occaecati id veritatis vero. Ea velit modi distinctio ipsa. Cumque ullam quos vitae totam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(530, '2020-05-28 01:29:13', '2020-05-28 15:09:41', 2, 5, 3, NULL, 8.00, 58.00, NULL, NULL, 'Magnam possimus molestiae corrupti quidem explicabo. Nisi eius impedit quo consectetur laborum. Fuga perspiciatis doloremque et. Asperiores qui occaecati non ab facilis dolorum ipsam commodi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(531, '2020-05-27 22:11:30', '2020-05-28 15:09:41', 5, 5, 1, NULL, 6.00, 62.00, NULL, NULL, 'Architecto qui eaque dignissimos recusandae quod. Eius voluptatem impedit dolor ex iure saepe. Voluptatibus eos maiores molestiae sed natus quo dolor.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(532, '2020-05-28 09:21:01', '2020-07-24 13:47:23', 4, 4, 1, 3, 7.00, 90.00, NULL, NULL, 'Cupiditate mollitia assumenda tempora eveniet voluptate suscipit. Est ut vero enim quae iste quo rem. Facere nam sequi perferendis occaecati ullam ab. Excepturi architecto harum molestiae est quidem.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(533, '2020-05-27 22:58:58', '2020-05-28 15:09:41', 3, 5, 1, NULL, 9.00, 71.00, NULL, NULL, 'Aut neque provident vel dolor corrupti. Itaque amet ipsa sed dolores perspiciatis dolor. Occaecati quis eaque itaque minus nisi accusamus. Et quo consequatur voluptatem fuga.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(534, '2020-05-28 10:42:46', '2020-05-28 15:09:41', 4, 5, 3, NULL, 9.00, 96.00, NULL, NULL, 'Voluptatem dolorem dolorum dolore voluptatum temporibus. Labore repudiandae recusandae aut explicabo. Consectetur accusantium animi et suscipit ut quia laborum. Eos quaerat sed est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(535, '2020-05-28 11:13:30', '2020-05-28 15:09:41', 1, 5, 3, NULL, 5.00, 44.00, NULL, NULL, 'Ex tempora est non placeat aut. Perspiciatis et nesciunt enim vel. Pariatur dolor expedita dolores rerum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(536, '2020-05-28 09:13:00', '2020-05-28 15:09:51', 1, 5, 1, 3, 5.00, 61.00, NULL, NULL, 'Consequatur quisquam explicabo itaque alias omnis. Velit consequatur ad vel incidunt sit. Facere accusamus et molestiae facilis sunt. Officiis est odit quisquam perferendis unde ea.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(537, '2020-05-28 11:39:46', '2020-05-28 15:09:41', 4, 4, 2, NULL, 7.00, 72.00, NULL, NULL, 'Quo maiores consectetur rerum perspiciatis sunt. Ad sit temporibus labore. Quaerat blanditiis modi quisquam molestiae sit dolore sit.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(538, '2020-05-28 00:56:43', '2020-05-28 15:09:41', 2, 5, 2, NULL, 6.00, 39.00, NULL, NULL, 'Omnis eveniet distinctio animi. Veniam quis nihil eius quam recusandae omnis dolores et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(539, '2020-05-27 23:50:50', '2020-05-28 15:09:41', 4, 5, 1, NULL, 7.00, 95.00, NULL, NULL, 'Exercitationem ut cumque tenetur ea ex odio. Mollitia ad beatae esse dolor. Non quibusdam repellat deleniti modi. In sapiente laborum qui cum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(540, '2020-05-28 04:53:41', '2020-05-28 15:09:41', 2, 4, 3, NULL, 8.00, 55.00, NULL, NULL, 'Eligendi rem voluptatum tenetur eos. Sint adipisci ut officiis ad. At ipsa nulla molestias necessitatibus rerum quia eaque earum. Tempora et eum doloribus velit quo ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(541, '2020-05-28 09:07:17', '2020-05-28 15:09:41', 2, 4, 2, NULL, 7.00, 57.00, NULL, NULL, 'Harum aliquam doloremque facere fugiat sed. Reiciendis laborum recusandae est alias suscipit eveniet. Pariatur sint consequatur et consectetur. Ut voluptas consectetur est sit in.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(542, '2020-05-28 08:48:12', '2020-05-28 15:09:41', 5, 4, 1, NULL, 6.00, 32.00, NULL, NULL, 'Voluptas sunt aut eum. Et in odio dolore et cumque. Ab modi ullam occaecati quis ullam perspiciatis possimus. Recusandae ea veniam veniam dicta illo vitae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(543, '2020-05-27 23:10:06', '2020-05-28 15:09:41', 4, 5, 3, NULL, 9.00, 94.00, NULL, NULL, 'Suscipit dolor et beatae et odio sint. Eum minus animi libero quia sunt est. A minima esse voluptates aut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(544, '2020-05-27 17:38:51', '2020-05-28 15:09:52', 4, 5, 3, 3, 9.00, 82.00, NULL, NULL, 'Et et earum quia veniam velit dolorem aut. Laudantium in accusantium magnam laborum alias et earum. Ut ducimus qui sunt.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(545, '2020-05-28 14:29:56', '2020-05-28 15:09:41', 5, 5, 1, NULL, 7.00, 96.00, NULL, NULL, 'Corporis dolores dolores ipsam corrupti eveniet sapiente sequi. Fugiat laboriosam accusantium dicta eos nihil temporibus eius. Iste voluptatem laborum consequuntur et aut cumque.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(546, '2020-05-27 22:43:16', '2020-05-28 15:09:41', 5, 5, 3, NULL, 10.00, 40.00, NULL, NULL, 'Repudiandae libero inventore perferendis veniam cupiditate consequatur. Nesciunt optio sequi quo aperiam. Ipsum dolor rerum suscipit aut et quo ducimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(547, '2020-05-28 04:14:37', '2020-05-28 15:09:41', 3, 4, 2, NULL, 10.00, 98.00, NULL, NULL, 'Aliquam cumque cumque doloribus ab. Eum porro quae sit. Aut odit hic fugit praesentium quisquam sunt. Est enim vero est aperiam. Impedit quibusdam non qui enim. Ex animi tenetur ad qui itaque sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(548, '2020-05-27 16:49:31', '2020-05-28 15:09:52', 1, 5, 1, 3, 7.00, 97.00, NULL, NULL, 'Quidem sunt molestiae sit quam. Asperiores ut dolores necessitatibus nisi enim. Magnam est ut laborum vero provident ea voluptate. Aut explicabo neque optio blanditiis molestias minus corporis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(549, '2020-05-27 23:03:48', '2020-05-28 15:09:41', 5, 5, 1, NULL, 7.00, 74.00, NULL, NULL, 'Voluptatibus ullam aspernatur consequatur magnam. Sequi corrupti et fugit. Incidunt nulla optio earum autem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(550, '2020-05-28 09:34:01', '2020-05-28 15:09:41', 1, 4, 2, NULL, 6.00, 62.00, NULL, NULL, 'Fuga ullam numquam qui id dolorum quis tenetur. Maxime eum doloremque provident dignissimos excepturi temporibus sunt.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(551, '2020-05-28 09:24:00', '2020-05-28 15:09:41', 1, 5, 2, NULL, 9.00, 97.00, NULL, NULL, 'Quasi est qui saepe deserunt laborum et. Impedit veritatis exercitationem tenetur a veritatis reiciendis consectetur. Recusandae sint omnis rerum ducimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(552, '2020-05-27 22:04:20', '2020-05-28 15:09:41', 4, 5, 2, NULL, 10.00, 37.00, NULL, NULL, 'Illum voluptatem et et illum vero voluptate rerum. In accusantium consequatur dolor suscipit. Doloribus sint et debitis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(553, '2020-05-27 23:36:18', '2020-05-28 15:09:41', 5, 4, 1, NULL, 10.00, 88.00, NULL, NULL, 'Deleniti ratione dicta voluptatem. Provident maxime aut ex distinctio ut et. Error et cum et dolorum inventore sit. Sint est omnis consequatur dolor. Rem et nisi quasi dolorem beatae ut et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(554, '2020-05-27 18:04:14', '2020-05-28 15:09:41', 5, 4, 3, NULL, 5.00, 88.00, NULL, NULL, 'Exercitationem rem eligendi et quibusdam pariatur repellat et. Culpa et et dicta nihil necessitatibus quia enim. Eaque commodi harum sunt explicabo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(555, '2020-05-28 10:00:37', '2020-05-28 15:09:41', 2, 5, 3, NULL, 10.00, 87.00, NULL, NULL, 'Est et ea aut tenetur quis est et. Repellat eos facere suscipit modi fuga fugiat vero quas. Commodi rerum ad fuga.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(556, '2020-05-27 20:46:40', '2020-05-28 15:09:52', 2, 4, 1, 3, 6.00, 84.00, NULL, NULL, 'Voluptas quaerat officiis aperiam nostrum. Placeat voluptatem rem recusandae possimus odio. Dolores saepe omnis quo qui placeat. Repudiandae et quia ut fugiat.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(557, '2020-05-27 15:14:50', '2020-05-28 15:09:41', 3, 5, 2, NULL, 5.00, 97.00, NULL, NULL, 'Nisi quam dolorum maxime eligendi dolores voluptate eius ad. Odio eos repudiandae molestiae illo enim. Laudantium placeat eveniet quae explicabo perspiciatis est ea ut.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(558, '2020-05-27 17:46:31', '2020-05-28 15:09:41', 5, 4, 3, NULL, 10.00, 75.00, NULL, NULL, 'Voluptas ullam est commodi nulla odio. Quia qui dolores assumenda eius quaerat facere et. Beatae natus quo labore ut. Officia suscipit et architecto et ea similique.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(559, '2020-05-27 15:59:55', '2020-05-28 15:09:41', 4, 5, 1, NULL, 9.00, 76.00, NULL, NULL, 'Magni autem corporis aliquid minima. Praesentium earum dicta numquam ea aperiam. Non nobis praesentium illo reprehenderit rem excepturi.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(560, '2020-05-28 11:05:20', '2020-05-28 15:09:41', 1, 4, 1, NULL, 9.00, 58.00, NULL, NULL, 'Consequatur fuga dicta nisi quaerat ea et repudiandae cupiditate. Id est eveniet alias voluptatem rerum error et. Fugit voluptas provident consectetur voluptas ullam dicta qui.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(561, '2020-05-28 00:48:30', '2020-05-28 15:09:41', 2, 5, 2, NULL, 7.00, 51.00, NULL, NULL, 'Quae voluptatem ab distinctio voluptatem voluptatem. Ea aut reiciendis nam. Quibusdam id adipisci nesciunt. Quis est cupiditate perferendis doloribus et deleniti quam.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(562, '2020-05-28 04:35:59', '2020-05-28 15:09:41', 3, 4, 3, NULL, 6.00, 83.00, NULL, NULL, 'Quasi molestiae modi fugiat dolor cupiditate est. Sunt nobis perspiciatis voluptas. Alias eligendi atque velit sunt dolor blanditiis possimus.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(563, '2020-05-28 09:20:28', '2020-05-28 15:09:41', 5, 4, 2, NULL, 8.00, 87.00, NULL, NULL, 'Quis dolor consequatur aut qui placeat et quia ipsam. Qui ducimus ut totam suscipit voluptatem dolor. Soluta soluta id blanditiis corporis aspernatur.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(564, '2020-05-28 04:15:24', '2020-07-24 14:11:06', 5, 4, 2, 3, 9.00, 100.00, NULL, NULL, 'Aliquid excepturi repellendus delectus cumque. Consectetur odit et commodi eum veniam ea. Ipsam sint aut minus labore. Dolor voluptates aperiam porro iste neque tempore.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(565, '2020-05-28 09:36:12', '2020-05-28 15:09:41', 4, 4, 1, NULL, 7.00, 66.00, NULL, NULL, 'Inventore voluptas officiis et fuga omnis praesentium odio nulla. Mollitia et sed vel voluptatum libero. Porro nam voluptatem perferendis possimus nulla. Quasi itaque tenetur vitae quo.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(566, '2020-05-28 08:18:24', '2020-05-28 15:09:41', 2, 5, 2, NULL, 9.00, 37.00, NULL, NULL, 'Libero doloribus qui dolor non quaerat officiis. Voluptatem corrupti animi quod necessitatibus sed unde. Consequuntur rem maiores consectetur pariatur aut et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(567, '2020-05-27 16:59:27', '2020-05-28 15:09:41', 4, 4, 3, NULL, 8.00, 84.00, NULL, NULL, 'In maxime labore voluptatem aut rerum. Temporibus repellat fuga ad vel a porro. Doloribus porro laudantium animi et non est dolorem. Aliquid aliquid qui eum qui laboriosam corrupti eius expedita.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(568, '2020-05-28 13:09:43', '2020-05-28 15:09:52', 2, 4, 2, 3, 7.00, 35.00, NULL, NULL, 'Est molestias perspiciatis odit sunt ipsa adipisci porro sed. Non architecto in quae in aut. Et neque rem et illo. Harum ut architecto eveniet ut.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(569, '2020-05-27 19:59:32', '2020-05-28 15:09:41', 1, 5, 1, NULL, 8.00, 89.00, NULL, NULL, 'Blanditiis fuga cupiditate quasi consequatur. Aut rem aperiam eos architecto eum. Fuga aspernatur quis earum. Voluptas incidunt ducimus architecto sit odit molestias in distinctio.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(570, '2020-05-27 15:55:17', '2020-05-28 15:09:41', 4, 5, 3, NULL, 8.00, 89.00, NULL, NULL, 'Nobis est cumque dolores sed voluptatem ex accusamus. Ratione maiores consectetur quo est quia. Sit quam atque minus amet sunt corporis quis necessitatibus. Ducimus accusamus natus perspiciatis.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(571, '2020-05-27 18:55:19', '2020-05-28 15:09:41', 2, 5, 2, NULL, 9.00, 87.00, NULL, NULL, 'Velit repellat sint aut expedita sed modi quibusdam. Veritatis et eius est molestiae incidunt odio temporibus. Incidunt natus nostrum saepe similique voluptatem. Autem iure est eveniet dolor sed.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(572, '2020-05-28 10:00:44', '2020-06-20 17:33:13', 4, 4, 2, 3, 9.00, 86.00, NULL, NULL, 'Eos temporibus dolores enim distinctio. Quia sapiente eaque dolores eius labore sint. Non nihil et omnis et. Sequi suscipit ut architecto voluptatum.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(573, '2020-05-27 21:45:31', '2020-05-28 15:09:41', 3, 4, 3, NULL, 6.00, 73.00, NULL, NULL, 'Non unde in non ea earum qui quae. Minima dignissimos veniam eligendi id modi non. Repellendus deserunt quaerat et explicabo a cum culpa.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(574, '2020-05-28 13:09:50', '2020-05-28 15:09:41', 1, 5, 3, NULL, 8.00, 88.00, NULL, NULL, 'Quia nulla quibusdam minima saepe. Voluptatem autem sint molestias nobis illum deleniti assumenda. Repudiandae architecto ut doloremque et ipsum sapiente fugit. Soluta iste vel voluptas est.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(575, '2020-05-27 19:31:39', '2020-05-28 15:09:41', 5, 4, 3, NULL, 10.00, 67.00, NULL, NULL, 'Dolorum et eos facere qui ut rem. Eos sint sit iste aperiam aut. In porro qui sint veritatis fuga deleniti et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(576, '2020-05-27 16:25:06', '2020-05-28 15:09:41', 1, 4, 1, NULL, 9.00, 38.00, NULL, NULL, 'Sit mollitia omnis ducimus tenetur. Hic perspiciatis adipisci vel animi assumenda. Laboriosam repudiandae enim voluptatem qui reprehenderit possimus minima.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(577, '2020-05-28 13:51:32', '2020-05-28 15:09:41', 3, 4, 2, NULL, 9.00, 34.00, NULL, NULL, 'Non voluptatum esse voluptatibus sunt molestiae minus. Sit temporibus quae sequi optio aperiam. Magnam ab nesciunt possimus amet.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(578, '2020-05-28 14:02:53', '2020-06-20 17:35:40', 1, 5, 1, 3, 9.00, 66.00, NULL, NULL, 'Sunt autem dolores dicta neque. Laudantium sunt aut non. Quod ex illo laborum aut illo. Id ratione sint alias aut occaecati in laudantium.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(579, '2020-05-27 20:19:40', '2020-05-28 15:09:41', 1, 5, 1, NULL, 8.00, 61.00, NULL, NULL, 'Velit et ut repudiandae ipsa suscipit est. Ducimus est fugiat aut voluptatem provident expedita.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(580, '2020-05-27 18:47:40', '2020-05-28 15:09:41', 4, 4, 3, NULL, 9.00, 46.00, NULL, NULL, 'Culpa totam provident molestiae distinctio recusandae distinctio. In nam odit dolor error velit et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(581, '2020-05-28 10:54:29', '2020-05-28 15:09:41', 5, 4, 2, NULL, 7.00, 61.00, NULL, NULL, 'Molestias inventore ea rerum sunt et. Ut unde omnis sunt nemo velit rem. Ullam voluptatem distinctio debitis quis ut non. Provident cum ab dolores itaque blanditiis suscipit sint.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(582, '2020-05-27 15:43:35', '2020-05-28 15:09:41', 2, 5, 1, NULL, 5.00, 65.00, NULL, NULL, 'Quia in possimus molestiae voluptas ut. Qui aut voluptate et beatae et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(583, '2020-05-27 20:01:13', '2020-05-28 15:09:41', 1, 5, 1, NULL, 5.00, 88.00, NULL, NULL, 'Aut ea dicta impedit nostrum ea nostrum dicta quas. Vel eos aut laboriosam ea omnis sed ut. Harum quis id rerum hic. Ea tempore consequatur dolorem assumenda maiores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(584, '2020-05-27 23:34:09', '2020-05-28 15:09:53', 5, 4, 3, 3, 8.00, 94.00, NULL, NULL, 'Suscipit dignissimos molestias et nobis ea veritatis. Non accusamus incidunt perspiciatis velit quis delectus vero. Ipsam quam voluptate a corrupti ut. Quia commodi atque esse sequi quis.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(585, '2020-05-28 07:11:35', '2020-05-28 15:09:41', 4, 4, 1, NULL, 5.00, 68.00, NULL, NULL, 'Temporibus asperiores ipsam esse voluptatem ad. Nulla libero incidunt reprehenderit praesentium odio. Aliquid sunt omnis sunt animi velit rerum.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(586, '2020-05-28 06:59:30', '2020-05-28 15:09:41', 4, 4, 2, NULL, 8.00, 67.00, NULL, NULL, 'Quia nulla cum totam aut rerum molestiae. Sapiente ut placeat veniam iusto molestiae nostrum voluptatibus. Eum aliquam qui qui a sed aut ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(587, '2020-05-28 08:58:11', '2020-05-28 15:09:41', 2, 5, 1, NULL, 5.00, 62.00, NULL, NULL, 'Necessitatibus harum facilis non rem doloremque. Nobis numquam provident dolores ducimus aut rem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(588, '2020-05-27 16:29:41', '2020-05-28 15:09:53', 2, 4, 2, 3, 5.00, 89.00, NULL, NULL, 'Quam omnis laudantium reiciendis fugiat. Qui et nisi qui repellat voluptates. Dolor et aspernatur et ex.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(589, '2020-05-27 18:16:22', '2020-05-28 15:09:41', 1, 4, 2, NULL, 7.00, 98.00, NULL, NULL, 'Ab error sed dolores cum et. Voluptatem et amet molestiae quos et minima. Voluptas velit quod asperiores.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(590, '2020-05-28 12:47:53', '2020-05-28 15:09:41', 1, 4, 3, NULL, 6.00, 59.00, NULL, NULL, 'Id quidem sit occaecati non et. Deserunt error neque expedita sed. Qui totam consequatur qui nam temporibus dolores voluptatibus. Non iste est vero laboriosam maxime est voluptatem.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(591, '2020-05-27 23:32:25', '2020-05-28 15:09:41', 4, 5, 3, NULL, 5.00, 70.00, NULL, NULL, 'Nulla distinctio error assumenda consequatur distinctio in quam. Nisi et animi inventore pariatur. Enim ut accusantium officiis consequatur quo. Earum ex optio porro vitae molestiae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(592, '2020-05-28 03:54:02', '2020-05-28 15:09:53', 2, 4, 2, 3, 9.00, 73.00, NULL, NULL, 'Qui eum molestiae autem id delectus unde rerum. Itaque quia velit ea ut. Maiores quas ab accusamus sequi et molestiae sequi. Voluptatibus laboriosam perferendis est qui commodi.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(593, '2020-05-28 13:35:06', '2020-05-28 15:09:41', 2, 4, 1, NULL, 5.00, 63.00, NULL, NULL, 'Nostrum voluptatum aperiam sunt voluptate. Fuga et veniam rerum quibusdam dicta quae. Vel dolores mollitia non qui beatae deleniti molestiae quidem. Culpa optio id tenetur illo recusandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(594, '2020-05-28 02:48:14', '2020-05-28 15:09:41', 3, 4, 1, NULL, 6.00, 37.00, NULL, NULL, 'Dolore laborum esse quis omnis ipsam temporibus. Eligendi soluta voluptatem neque enim dolorem. Quam eius quaerat placeat animi maxime qui et. Rerum tempore facere aliquid repudiandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(595, '2020-05-28 06:13:53', '2020-05-28 15:09:41', 5, 4, 3, NULL, 5.00, 64.00, NULL, NULL, 'Labore quas enim dolor dolor. Occaecati necessitatibus accusantium dolorem tenetur magnam aperiam. Ut quia ut eligendi harum ullam amet sapiente.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(596, '2020-05-27 23:12:27', '2020-07-24 14:09:31', 4, 5, 3, 3, 5.00, 78.00, NULL, NULL, 'Consequatur qui nulla laboriosam quam esse quidem pariatur. Quo eum exercitationem minima. Sed debitis sit veritatis nobis in debitis neque.', '42.005', '21.44', NULL, 0.00, 0.0000, 0.00, 1, ''),
(597, '2020-05-28 13:27:07', '2020-05-28 15:09:41', 1, 4, 3, NULL, 10.00, 97.00, NULL, NULL, 'Inventore vel dolor ut sint saepe repudiandae dolorum. Iusto et aut neque odio dolorem in id. Sunt quas et quia natus. Similique rerum modi veritatis minima eum ea.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(598, '2020-05-27 19:40:33', '2020-05-28 15:09:41', 1, 5, 3, NULL, 7.00, 42.00, NULL, NULL, 'Quas sunt suscipit aut quo sit. Accusamus vero aut eum corporis ad. Beatae placeat omnis est provident aut ex quidem. Fuga commodi quisquam adipisci laborum sit consectetur repudiandae.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(599, '2020-05-28 09:00:00', '2020-05-28 15:09:41', 3, 5, 1, NULL, 7.00, 53.00, NULL, NULL, 'Quia ut et illum. Quo sapiente minus a. Necessitatibus illum beatae nulla debitis sapiente et.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(600, '2020-05-28 01:33:24', '2020-05-28 15:09:41', 2, 4, 1, NULL, 10.00, 61.00, NULL, NULL, 'Repellat eos et quasi et minus. Tempore eos ab nihil at in. Repellendus earum qui error.', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, ''),
(601, '2020-05-28 15:28:47', '2020-05-28 15:28:47', 5, 4, 11, NULL, 0.00, 7.99, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1260_1290'),
(602, '2020-06-20 17:21:07', '2020-06-20 17:21:07', 5, 4, 1, NULL, 0.00, 19.98, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1140_1170'),
(603, '2020-06-20 17:27:09', '2020-06-20 17:27:09', 5, 4, 1, NULL, 0.00, 59.94, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1170_1200'),
(604, '2020-06-25 07:15:16', '2020-06-25 07:15:16', 5, 4, 2, NULL, 0.00, 21.98, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '540_570'),
(605, '2020-06-25 18:21:03', '2020-06-25 18:21:03', 5, 4, 4, NULL, 0.00, 9.99, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1200_1230'),
(606, '2020-06-25 18:22:51', '2020-06-25 18:22:51', NULL, 6, 7, NULL, 0.00, 8.99, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1200_1230'),
(607, '2020-06-25 18:25:14', '2020-06-25 18:25:14', NULL, 6, 12, NULL, 0.00, 2.49, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1200_1230'),
(608, '2020-06-25 18:26:44', '2020-06-25 18:26:44', NULL, 6, 12, NULL, 0.00, 8.49, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '1200_1230'),
(609, '2020-07-07 07:07:05', '2020-07-07 07:07:05', 5, 4, 3, 3, 0.00, 15.48, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '540_570'),
(610, '2020-07-24 13:59:57', '2020-07-24 13:59:57', 5, 4, 13, 3, 0.00, 26.00, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '930_960'),
(611, '2020-07-24 14:07:51', '2020-07-24 14:07:51', NULL, 2, 13, 3, 0.00, 256.00, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '960_990'),
(612, '2020-07-24 14:08:20', '2020-07-24 14:08:20', 5, 4, 13, 3, 0.00, 2.00, 'cod', 'unpaid', '', NULL, NULL, NULL, 0.00, 0.0000, 0.00, 1, '960_990');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `created_at`, `updated_at`, `order_id`, `item_id`, `qty`) VALUES
(1, NULL, NULL, 601, 222, 1),
(2, NULL, NULL, 602, 1, 2),
(3, NULL, NULL, 603, 1, 3),
(4, NULL, NULL, 603, 6, 3),
(5, NULL, NULL, 604, 28, 2),
(6, NULL, NULL, 605, 64, 1),
(7, NULL, NULL, 606, 128, 1),
(8, NULL, NULL, 607, 234, 1),
(9, NULL, NULL, 608, 237, 1),
(10, NULL, NULL, 609, 47, 1),
(11, NULL, NULL, 609, 48, 1),
(12, NULL, NULL, 610, 257, 1),
(13, NULL, NULL, 610, 264, 1),
(14, NULL, NULL, 610, 269, 1),
(15, NULL, NULL, 611, 257, 1),
(16, NULL, NULL, 611, 258, 1),
(17, NULL, NULL, 611, 259, 1),
(18, NULL, NULL, 612, 257, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_status`
--

INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(1, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 1, 1, 4, 'Initial comment'),
(2, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 2, 1, 4, 'Initial comment'),
(3, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 3, 1, 4, 'Initial comment'),
(4, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 4, 1, 4, 'Initial comment'),
(5, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 5, 1, 4, 'Initial comment'),
(6, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 6, 1, 4, 'Initial comment'),
(7, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 7, 1, 4, 'Initial comment'),
(8, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 8, 1, 4, 'Initial comment'),
(9, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 9, 1, 4, 'Initial comment'),
(10, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 10, 1, 4, 'Initial comment'),
(11, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 11, 1, 4, 'Initial comment'),
(12, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 12, 1, 4, 'Initial comment'),
(13, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 13, 1, 4, 'Initial comment'),
(14, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 14, 1, 4, 'Initial comment'),
(15, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 15, 1, 4, 'Initial comment'),
(16, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 16, 1, 4, 'Initial comment'),
(17, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 17, 1, 4, 'Initial comment'),
(18, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 18, 1, 4, 'Initial comment'),
(19, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 19, 1, 4, 'Initial comment'),
(20, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 20, 1, 4, 'Initial comment'),
(21, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 21, 1, 4, 'Initial comment'),
(22, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 22, 1, 4, 'Initial comment'),
(23, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 23, 1, 4, 'Initial comment'),
(24, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 24, 1, 4, 'Initial comment'),
(25, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 25, 1, 4, 'Initial comment'),
(26, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 26, 1, 4, 'Initial comment'),
(27, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 27, 1, 4, 'Initial comment'),
(28, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 28, 1, 4, 'Initial comment'),
(29, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 29, 1, 4, 'Initial comment'),
(30, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 30, 1, 4, 'Initial comment'),
(31, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 31, 1, 4, 'Initial comment'),
(32, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 32, 1, 4, 'Initial comment'),
(33, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 33, 1, 4, 'Initial comment'),
(34, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 34, 1, 4, 'Initial comment'),
(35, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 35, 1, 4, 'Initial comment'),
(36, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 36, 1, 4, 'Initial comment'),
(37, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 37, 1, 4, 'Initial comment'),
(38, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 38, 1, 4, 'Initial comment'),
(39, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 39, 1, 4, 'Initial comment'),
(40, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 40, 1, 4, 'Initial comment'),
(41, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 41, 1, 4, 'Initial comment'),
(42, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 42, 1, 4, 'Initial comment'),
(43, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 43, 1, 4, 'Initial comment'),
(44, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 44, 1, 4, 'Initial comment'),
(45, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 45, 1, 4, 'Initial comment'),
(46, '2020-05-28 15:09:43', '2020-05-28 15:09:43', 46, 1, 4, 'Initial comment'),
(47, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 47, 1, 4, 'Initial comment'),
(48, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 48, 1, 4, 'Initial comment'),
(49, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 49, 1, 4, 'Initial comment'),
(50, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 50, 1, 4, 'Initial comment'),
(51, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 51, 1, 4, 'Initial comment'),
(52, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 52, 1, 4, 'Initial comment'),
(53, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 53, 1, 4, 'Initial comment'),
(54, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 54, 1, 4, 'Initial comment'),
(55, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 55, 1, 4, 'Initial comment'),
(56, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 56, 1, 4, 'Initial comment'),
(57, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 57, 1, 4, 'Initial comment'),
(58, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 58, 1, 4, 'Initial comment'),
(59, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 59, 1, 4, 'Initial comment'),
(60, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 60, 1, 4, 'Initial comment'),
(61, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 61, 1, 4, 'Initial comment'),
(62, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 62, 1, 4, 'Initial comment'),
(63, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 63, 1, 4, 'Initial comment'),
(64, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 64, 1, 4, 'Initial comment'),
(65, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 65, 1, 4, 'Initial comment'),
(66, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 66, 1, 4, 'Initial comment'),
(67, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 67, 1, 4, 'Initial comment'),
(68, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 68, 1, 4, 'Initial comment'),
(69, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 69, 1, 4, 'Initial comment'),
(70, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 70, 1, 4, 'Initial comment'),
(71, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 71, 1, 4, 'Initial comment'),
(72, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 72, 1, 4, 'Initial comment'),
(73, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 73, 1, 4, 'Initial comment'),
(74, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 74, 1, 4, 'Initial comment'),
(75, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 75, 1, 4, 'Initial comment'),
(76, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 76, 1, 4, 'Initial comment'),
(77, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 77, 1, 4, 'Initial comment'),
(78, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 78, 1, 4, 'Initial comment'),
(79, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 79, 1, 4, 'Initial comment'),
(80, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 80, 1, 4, 'Initial comment'),
(81, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 81, 1, 4, 'Initial comment'),
(82, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 82, 1, 4, 'Initial comment'),
(83, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 83, 1, 4, 'Initial comment'),
(84, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 84, 1, 4, 'Initial comment'),
(85, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 85, 1, 4, 'Initial comment'),
(86, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 86, 1, 4, 'Initial comment'),
(87, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 87, 1, 4, 'Initial comment'),
(88, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 88, 1, 4, 'Initial comment'),
(89, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 89, 1, 4, 'Initial comment'),
(90, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 90, 1, 4, 'Initial comment'),
(91, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 91, 1, 4, 'Initial comment'),
(92, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 92, 1, 4, 'Initial comment'),
(93, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 93, 1, 4, 'Initial comment'),
(94, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 94, 1, 4, 'Initial comment'),
(95, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 95, 1, 4, 'Initial comment'),
(96, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 96, 1, 4, 'Initial comment'),
(97, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 97, 1, 4, 'Initial comment'),
(98, '2020-05-28 15:09:44', '2020-05-28 15:09:44', 98, 1, 4, 'Initial comment'),
(99, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 99, 1, 4, 'Initial comment'),
(100, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 100, 1, 4, 'Initial comment'),
(101, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 101, 1, 4, 'Initial comment'),
(102, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 102, 1, 4, 'Initial comment'),
(103, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 103, 1, 4, 'Initial comment'),
(104, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 104, 1, 4, 'Initial comment'),
(105, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 105, 1, 4, 'Initial comment'),
(106, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 106, 1, 4, 'Initial comment'),
(107, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 107, 1, 4, 'Initial comment'),
(108, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 108, 1, 4, 'Initial comment'),
(109, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 109, 1, 4, 'Initial comment'),
(110, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 110, 1, 4, 'Initial comment'),
(111, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 111, 1, 4, 'Initial comment'),
(112, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 112, 1, 4, 'Initial comment'),
(113, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 113, 1, 4, 'Initial comment'),
(114, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 114, 1, 4, 'Initial comment'),
(115, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 115, 1, 4, 'Initial comment'),
(116, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 116, 1, 4, 'Initial comment'),
(117, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 117, 1, 4, 'Initial comment'),
(118, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 118, 1, 4, 'Initial comment'),
(119, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 119, 1, 4, 'Initial comment'),
(120, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 120, 1, 4, 'Initial comment'),
(121, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 121, 1, 4, 'Initial comment'),
(122, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 122, 1, 4, 'Initial comment'),
(123, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 123, 1, 4, 'Initial comment'),
(124, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 124, 1, 4, 'Initial comment'),
(125, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 125, 1, 4, 'Initial comment'),
(126, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 126, 1, 4, 'Initial comment'),
(127, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 127, 1, 4, 'Initial comment'),
(128, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 128, 1, 4, 'Initial comment'),
(129, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 129, 1, 4, 'Initial comment'),
(130, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 130, 1, 4, 'Initial comment'),
(131, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 131, 1, 4, 'Initial comment'),
(132, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 132, 1, 4, 'Initial comment'),
(133, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 133, 1, 4, 'Initial comment'),
(134, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 134, 1, 4, 'Initial comment'),
(135, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 135, 1, 4, 'Initial comment'),
(136, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 136, 1, 4, 'Initial comment'),
(137, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 137, 1, 4, 'Initial comment'),
(138, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 138, 1, 4, 'Initial comment'),
(139, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 139, 1, 4, 'Initial comment'),
(140, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 140, 1, 4, 'Initial comment'),
(141, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 141, 1, 4, 'Initial comment'),
(142, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 142, 1, 4, 'Initial comment'),
(143, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 143, 1, 4, 'Initial comment'),
(144, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 144, 1, 4, 'Initial comment'),
(145, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 145, 1, 4, 'Initial comment'),
(146, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 146, 1, 4, 'Initial comment'),
(147, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 147, 1, 4, 'Initial comment'),
(148, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 148, 1, 4, 'Initial comment'),
(149, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 149, 1, 4, 'Initial comment'),
(150, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 150, 1, 4, 'Initial comment'),
(151, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 151, 1, 4, 'Initial comment'),
(152, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 152, 1, 4, 'Initial comment'),
(153, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 153, 1, 4, 'Initial comment'),
(154, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 154, 1, 4, 'Initial comment'),
(155, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 155, 1, 4, 'Initial comment'),
(156, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 156, 1, 4, 'Initial comment'),
(157, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 157, 1, 4, 'Initial comment'),
(158, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 158, 1, 4, 'Initial comment'),
(159, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 159, 1, 4, 'Initial comment'),
(160, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 160, 1, 4, 'Initial comment'),
(161, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 161, 1, 4, 'Initial comment'),
(162, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 162, 1, 4, 'Initial comment'),
(163, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 163, 1, 4, 'Initial comment'),
(164, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 164, 1, 4, 'Initial comment'),
(165, '2020-05-28 15:09:45', '2020-05-28 15:09:45', 165, 1, 4, 'Initial comment'),
(166, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 166, 1, 4, 'Initial comment'),
(167, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 167, 1, 4, 'Initial comment'),
(168, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 168, 1, 4, 'Initial comment'),
(169, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 169, 1, 4, 'Initial comment'),
(170, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 170, 1, 4, 'Initial comment'),
(171, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 171, 1, 4, 'Initial comment'),
(172, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 172, 1, 4, 'Initial comment'),
(173, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 173, 1, 4, 'Initial comment'),
(174, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 174, 1, 4, 'Initial comment'),
(175, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 175, 1, 4, 'Initial comment'),
(176, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 176, 1, 4, 'Initial comment'),
(177, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 177, 1, 4, 'Initial comment'),
(178, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 178, 1, 4, 'Initial comment'),
(179, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 179, 1, 4, 'Initial comment'),
(180, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 180, 1, 4, 'Initial comment'),
(181, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 181, 1, 4, 'Initial comment'),
(182, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 182, 1, 4, 'Initial comment'),
(183, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 183, 1, 4, 'Initial comment'),
(184, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 184, 1, 4, 'Initial comment'),
(185, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 185, 1, 4, 'Initial comment'),
(186, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 186, 1, 4, 'Initial comment'),
(187, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 187, 1, 4, 'Initial comment'),
(188, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 188, 1, 4, 'Initial comment'),
(189, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 189, 1, 4, 'Initial comment'),
(190, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 190, 1, 4, 'Initial comment'),
(191, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 191, 1, 4, 'Initial comment'),
(192, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 192, 1, 4, 'Initial comment'),
(193, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 193, 1, 4, 'Initial comment'),
(194, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 194, 1, 4, 'Initial comment'),
(195, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 195, 1, 4, 'Initial comment'),
(196, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 196, 1, 4, 'Initial comment'),
(197, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 197, 1, 4, 'Initial comment'),
(198, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 198, 1, 4, 'Initial comment'),
(199, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 199, 1, 4, 'Initial comment'),
(200, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 200, 1, 4, 'Initial comment'),
(201, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 201, 1, 4, 'Initial comment'),
(202, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 202, 1, 4, 'Initial comment'),
(203, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 203, 1, 4, 'Initial comment'),
(204, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 204, 1, 4, 'Initial comment'),
(205, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 205, 1, 4, 'Initial comment'),
(206, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 206, 1, 4, 'Initial comment'),
(207, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 207, 1, 4, 'Initial comment'),
(208, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 208, 1, 4, 'Initial comment'),
(209, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 209, 1, 4, 'Initial comment'),
(210, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 210, 1, 4, 'Initial comment'),
(211, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 211, 1, 4, 'Initial comment'),
(212, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 212, 1, 4, 'Initial comment'),
(213, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 213, 1, 4, 'Initial comment'),
(214, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 214, 1, 4, 'Initial comment'),
(215, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 215, 1, 4, 'Initial comment'),
(216, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 216, 1, 4, 'Initial comment'),
(217, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 217, 1, 4, 'Initial comment'),
(218, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 218, 1, 4, 'Initial comment'),
(219, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 219, 1, 4, 'Initial comment'),
(220, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 220, 1, 4, 'Initial comment'),
(221, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 221, 1, 4, 'Initial comment'),
(222, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 222, 1, 4, 'Initial comment'),
(223, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 223, 1, 4, 'Initial comment'),
(224, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 224, 1, 4, 'Initial comment'),
(225, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 225, 1, 4, 'Initial comment'),
(226, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 226, 1, 4, 'Initial comment'),
(227, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 227, 1, 4, 'Initial comment'),
(228, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 228, 1, 4, 'Initial comment'),
(229, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 229, 1, 4, 'Initial comment'),
(230, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 230, 1, 4, 'Initial comment'),
(231, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 231, 1, 4, 'Initial comment'),
(232, '2020-05-28 15:09:46', '2020-05-28 15:09:46', 232, 1, 4, 'Initial comment'),
(233, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 233, 1, 4, 'Initial comment'),
(234, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 234, 1, 4, 'Initial comment'),
(235, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 235, 1, 4, 'Initial comment'),
(236, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 236, 1, 4, 'Initial comment'),
(237, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 237, 1, 4, 'Initial comment'),
(238, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 238, 1, 4, 'Initial comment'),
(239, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 239, 1, 4, 'Initial comment'),
(240, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 240, 1, 4, 'Initial comment'),
(241, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 241, 1, 4, 'Initial comment'),
(242, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 242, 1, 4, 'Initial comment'),
(243, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 243, 1, 4, 'Initial comment'),
(244, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 244, 1, 4, 'Initial comment'),
(245, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 245, 1, 4, 'Initial comment'),
(246, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 246, 1, 4, 'Initial comment'),
(247, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 247, 1, 4, 'Initial comment'),
(248, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 248, 1, 4, 'Initial comment'),
(249, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 249, 1, 4, 'Initial comment'),
(250, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 250, 1, 4, 'Initial comment'),
(251, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 251, 1, 4, 'Initial comment'),
(252, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 252, 1, 4, 'Initial comment'),
(253, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 253, 1, 4, 'Initial comment'),
(254, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 254, 1, 4, 'Initial comment'),
(255, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 255, 1, 4, 'Initial comment'),
(256, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 256, 1, 4, 'Initial comment'),
(257, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 257, 1, 4, 'Initial comment'),
(258, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 258, 1, 4, 'Initial comment'),
(259, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 259, 1, 4, 'Initial comment'),
(260, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 260, 1, 4, 'Initial comment'),
(261, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 261, 1, 4, 'Initial comment'),
(262, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 262, 1, 4, 'Initial comment'),
(263, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 263, 1, 4, 'Initial comment'),
(264, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 264, 1, 4, 'Initial comment'),
(265, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 265, 1, 4, 'Initial comment'),
(266, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 266, 1, 4, 'Initial comment'),
(267, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 267, 1, 4, 'Initial comment'),
(268, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 268, 1, 4, 'Initial comment'),
(269, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 269, 1, 4, 'Initial comment'),
(270, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 270, 1, 4, 'Initial comment'),
(271, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 271, 1, 4, 'Initial comment'),
(272, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 272, 1, 4, 'Initial comment'),
(273, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 273, 1, 4, 'Initial comment'),
(274, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 274, 1, 4, 'Initial comment'),
(275, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 275, 1, 4, 'Initial comment'),
(276, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 276, 1, 4, 'Initial comment'),
(277, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 277, 1, 4, 'Initial comment'),
(278, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 278, 1, 4, 'Initial comment'),
(279, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 279, 1, 4, 'Initial comment'),
(280, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 280, 1, 4, 'Initial comment'),
(281, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 281, 1, 4, 'Initial comment'),
(282, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 282, 1, 4, 'Initial comment'),
(283, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 283, 1, 4, 'Initial comment'),
(284, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 284, 1, 4, 'Initial comment'),
(285, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 285, 1, 4, 'Initial comment'),
(286, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 286, 1, 4, 'Initial comment'),
(287, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 287, 1, 4, 'Initial comment'),
(288, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 288, 1, 4, 'Initial comment'),
(289, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 289, 1, 4, 'Initial comment'),
(290, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 290, 1, 4, 'Initial comment'),
(291, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 291, 1, 4, 'Initial comment'),
(292, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 292, 1, 4, 'Initial comment'),
(293, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 293, 1, 4, 'Initial comment'),
(294, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 294, 1, 4, 'Initial comment'),
(295, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 295, 1, 4, 'Initial comment'),
(296, '2020-05-28 15:09:47', '2020-05-28 15:09:47', 296, 1, 4, 'Initial comment'),
(297, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 297, 1, 4, 'Initial comment'),
(298, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 298, 1, 4, 'Initial comment'),
(299, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 299, 1, 4, 'Initial comment'),
(300, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 300, 1, 4, 'Initial comment'),
(301, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 301, 1, 4, 'Initial comment'),
(302, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 302, 1, 4, 'Initial comment'),
(303, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 303, 1, 4, 'Initial comment'),
(304, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 304, 1, 4, 'Initial comment'),
(305, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 305, 1, 4, 'Initial comment'),
(306, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 306, 1, 4, 'Initial comment'),
(307, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 307, 1, 4, 'Initial comment'),
(308, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 308, 1, 4, 'Initial comment'),
(309, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 309, 1, 4, 'Initial comment'),
(310, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 310, 1, 4, 'Initial comment'),
(311, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 311, 1, 4, 'Initial comment'),
(312, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 312, 1, 4, 'Initial comment'),
(313, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 313, 1, 4, 'Initial comment'),
(314, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 314, 1, 4, 'Initial comment'),
(315, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 315, 1, 4, 'Initial comment'),
(316, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 316, 1, 4, 'Initial comment'),
(317, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 317, 1, 4, 'Initial comment'),
(318, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 318, 1, 4, 'Initial comment'),
(319, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 319, 1, 4, 'Initial comment'),
(320, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 320, 1, 4, 'Initial comment'),
(321, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 321, 1, 4, 'Initial comment'),
(322, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 322, 1, 4, 'Initial comment'),
(323, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 323, 1, 4, 'Initial comment'),
(324, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 324, 1, 4, 'Initial comment'),
(325, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 325, 1, 4, 'Initial comment'),
(326, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 326, 1, 4, 'Initial comment'),
(327, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 327, 1, 4, 'Initial comment'),
(328, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 328, 1, 4, 'Initial comment'),
(329, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 329, 1, 4, 'Initial comment'),
(330, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 330, 1, 4, 'Initial comment'),
(331, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 331, 1, 4, 'Initial comment'),
(332, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 332, 1, 4, 'Initial comment'),
(333, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 333, 1, 4, 'Initial comment'),
(334, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 334, 1, 4, 'Initial comment'),
(335, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 335, 1, 4, 'Initial comment'),
(336, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 336, 1, 4, 'Initial comment'),
(337, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 337, 1, 4, 'Initial comment'),
(338, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 338, 1, 4, 'Initial comment'),
(339, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 339, 1, 4, 'Initial comment'),
(340, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 340, 1, 4, 'Initial comment'),
(341, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 341, 1, 4, 'Initial comment'),
(342, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 342, 1, 4, 'Initial comment'),
(343, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 343, 1, 4, 'Initial comment'),
(344, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 344, 1, 4, 'Initial comment'),
(345, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 345, 1, 4, 'Initial comment'),
(346, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 346, 1, 4, 'Initial comment'),
(347, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 347, 1, 4, 'Initial comment'),
(348, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 348, 1, 4, 'Initial comment'),
(349, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 349, 1, 4, 'Initial comment'),
(350, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 350, 1, 4, 'Initial comment'),
(351, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 351, 1, 4, 'Initial comment'),
(352, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 352, 1, 4, 'Initial comment'),
(353, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 353, 1, 4, 'Initial comment'),
(354, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 354, 1, 4, 'Initial comment'),
(355, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 355, 1, 4, 'Initial comment'),
(356, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 356, 1, 4, 'Initial comment'),
(357, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 357, 1, 4, 'Initial comment'),
(358, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 358, 1, 4, 'Initial comment'),
(359, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 359, 1, 4, 'Initial comment'),
(360, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 360, 1, 4, 'Initial comment'),
(361, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 361, 1, 4, 'Initial comment'),
(362, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 362, 1, 4, 'Initial comment'),
(363, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 363, 1, 4, 'Initial comment'),
(364, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 364, 1, 4, 'Initial comment'),
(365, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 365, 1, 4, 'Initial comment'),
(366, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 366, 1, 4, 'Initial comment'),
(367, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 367, 1, 4, 'Initial comment'),
(368, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 368, 1, 4, 'Initial comment'),
(369, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 369, 1, 4, 'Initial comment'),
(370, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 370, 1, 4, 'Initial comment'),
(371, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 371, 1, 4, 'Initial comment'),
(372, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 372, 1, 4, 'Initial comment'),
(373, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 373, 1, 4, 'Initial comment'),
(374, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 374, 1, 4, 'Initial comment'),
(375, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 375, 1, 4, 'Initial comment'),
(376, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 376, 1, 4, 'Initial comment'),
(377, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 377, 1, 4, 'Initial comment'),
(378, '2020-05-28 15:09:48', '2020-05-28 15:09:48', 378, 1, 4, 'Initial comment'),
(379, '2020-05-28 15:09:48', '2020-05-28 15:09:49', 379, 1, 4, 'Initial comment'),
(380, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 380, 1, 4, 'Initial comment'),
(381, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 381, 1, 4, 'Initial comment'),
(382, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 382, 1, 4, 'Initial comment'),
(383, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 383, 1, 4, 'Initial comment'),
(384, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 384, 1, 4, 'Initial comment'),
(385, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 385, 1, 4, 'Initial comment'),
(386, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 386, 1, 4, 'Initial comment'),
(387, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 387, 1, 4, 'Initial comment'),
(388, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 388, 1, 4, 'Initial comment'),
(389, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 389, 1, 4, 'Initial comment'),
(390, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 390, 1, 4, 'Initial comment'),
(391, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 391, 1, 4, 'Initial comment'),
(392, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 392, 1, 4, 'Initial comment'),
(393, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 393, 1, 4, 'Initial comment'),
(394, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 394, 1, 4, 'Initial comment'),
(395, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 395, 1, 4, 'Initial comment'),
(396, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 396, 1, 4, 'Initial comment'),
(397, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 397, 1, 4, 'Initial comment'),
(398, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 398, 1, 4, 'Initial comment'),
(399, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 399, 1, 4, 'Initial comment'),
(400, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 400, 1, 4, 'Initial comment'),
(401, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 401, 1, 4, 'Initial comment'),
(402, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 402, 1, 4, 'Initial comment'),
(403, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 403, 1, 4, 'Initial comment'),
(404, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 404, 1, 4, 'Initial comment'),
(405, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 405, 1, 4, 'Initial comment'),
(406, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 406, 1, 4, 'Initial comment'),
(407, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 407, 1, 4, 'Initial comment'),
(408, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 408, 1, 4, 'Initial comment'),
(409, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 409, 1, 4, 'Initial comment'),
(410, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 410, 1, 4, 'Initial comment'),
(411, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 411, 1, 4, 'Initial comment'),
(412, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 412, 1, 4, 'Initial comment'),
(413, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 413, 1, 4, 'Initial comment'),
(414, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 414, 1, 4, 'Initial comment'),
(415, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 415, 1, 4, 'Initial comment'),
(416, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 416, 1, 4, 'Initial comment'),
(417, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 417, 1, 4, 'Initial comment'),
(418, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 418, 1, 4, 'Initial comment'),
(419, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 419, 1, 4, 'Initial comment'),
(420, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 420, 1, 4, 'Initial comment'),
(421, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 421, 1, 4, 'Initial comment'),
(422, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 422, 1, 4, 'Initial comment'),
(423, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 423, 1, 4, 'Initial comment'),
(424, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 424, 1, 4, 'Initial comment'),
(425, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 425, 1, 4, 'Initial comment'),
(426, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 426, 1, 4, 'Initial comment'),
(427, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 427, 1, 4, 'Initial comment'),
(428, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 428, 1, 4, 'Initial comment'),
(429, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 429, 1, 4, 'Initial comment'),
(430, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 430, 1, 4, 'Initial comment'),
(431, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 431, 1, 4, 'Initial comment'),
(432, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 432, 1, 4, 'Initial comment'),
(433, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 433, 1, 4, 'Initial comment'),
(434, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 434, 1, 4, 'Initial comment'),
(435, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 435, 1, 4, 'Initial comment'),
(436, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 436, 1, 4, 'Initial comment'),
(437, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 437, 1, 4, 'Initial comment'),
(438, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 438, 1, 4, 'Initial comment'),
(439, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 439, 1, 4, 'Initial comment'),
(440, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 440, 1, 4, 'Initial comment'),
(441, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 441, 1, 4, 'Initial comment'),
(442, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 442, 1, 4, 'Initial comment'),
(443, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 443, 1, 4, 'Initial comment'),
(444, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 444, 1, 4, 'Initial comment'),
(445, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 445, 1, 4, 'Initial comment'),
(446, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 446, 1, 4, 'Initial comment'),
(447, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 447, 1, 4, 'Initial comment'),
(448, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 448, 1, 4, 'Initial comment'),
(449, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 449, 1, 4, 'Initial comment'),
(450, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 450, 1, 4, 'Initial comment'),
(451, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 451, 1, 4, 'Initial comment'),
(452, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 452, 1, 4, 'Initial comment'),
(453, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 453, 1, 4, 'Initial comment'),
(454, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 454, 1, 4, 'Initial comment'),
(455, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 455, 1, 4, 'Initial comment'),
(456, '2020-05-28 15:09:49', '2020-05-28 15:09:49', 456, 1, 4, 'Initial comment'),
(457, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 457, 1, 4, 'Initial comment'),
(458, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 458, 1, 4, 'Initial comment'),
(459, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 459, 1, 4, 'Initial comment'),
(460, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 460, 1, 4, 'Initial comment'),
(461, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 461, 1, 4, 'Initial comment'),
(462, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 462, 1, 4, 'Initial comment'),
(463, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 463, 1, 4, 'Initial comment'),
(464, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 464, 1, 4, 'Initial comment'),
(465, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 465, 1, 4, 'Initial comment'),
(466, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 466, 1, 4, 'Initial comment'),
(467, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 467, 1, 4, 'Initial comment'),
(468, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 468, 1, 4, 'Initial comment'),
(469, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 469, 1, 4, 'Initial comment'),
(470, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 470, 1, 4, 'Initial comment'),
(471, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 471, 1, 4, 'Initial comment'),
(472, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 472, 1, 4, 'Initial comment'),
(473, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 473, 1, 4, 'Initial comment'),
(474, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 474, 1, 4, 'Initial comment'),
(475, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 475, 1, 4, 'Initial comment'),
(476, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 476, 1, 4, 'Initial comment'),
(477, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 477, 1, 4, 'Initial comment'),
(478, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 478, 1, 4, 'Initial comment'),
(479, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 479, 1, 4, 'Initial comment'),
(480, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 480, 1, 4, 'Initial comment'),
(481, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 481, 1, 4, 'Initial comment'),
(482, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 482, 1, 4, 'Initial comment'),
(483, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 483, 1, 4, 'Initial comment'),
(484, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 484, 1, 4, 'Initial comment'),
(485, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 485, 1, 4, 'Initial comment'),
(486, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 486, 1, 4, 'Initial comment'),
(487, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 487, 1, 4, 'Initial comment'),
(488, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 488, 1, 4, 'Initial comment'),
(489, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 489, 1, 4, 'Initial comment'),
(490, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 490, 1, 4, 'Initial comment'),
(491, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 491, 1, 4, 'Initial comment'),
(492, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 492, 1, 4, 'Initial comment'),
(493, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 493, 1, 4, 'Initial comment'),
(494, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 494, 1, 4, 'Initial comment'),
(495, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 495, 1, 4, 'Initial comment'),
(496, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 496, 1, 4, 'Initial comment'),
(497, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 497, 1, 4, 'Initial comment'),
(498, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 498, 1, 4, 'Initial comment'),
(499, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 499, 1, 4, 'Initial comment'),
(500, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 500, 1, 4, 'Initial comment'),
(501, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 501, 1, 4, 'New order created'),
(502, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 501, 2, 1, 'Accepted by admin'),
(503, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 502, 1, 4, 'New order created'),
(504, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 502, 2, 1, 'Accepted by admin'),
(505, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 502, 3, 1, 'Accepted by restaurant'),
(506, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 503, 1, 4, 'New order created'),
(507, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 503, 2, 1, 'Accepted by admin'),
(508, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 504, 1, 4, 'New order created'),
(509, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 505, 1, 4, 'New order created'),
(510, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 505, 2, 1, 'Accepted by admin'),
(511, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 506, 1, 4, 'New order created'),
(512, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 506, 2, 1, 'Accepted by admin'),
(513, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 506, 3, 1, 'Accepted by restaurant'),
(514, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 507, 1, 4, 'New order created'),
(515, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 507, 2, 1, 'Accepted by admin'),
(516, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 508, 1, 4, 'New order created'),
(517, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 508, 2, 1, 'Accepted by admin'),
(518, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 508, 3, 1, 'Accepted by restaurant'),
(519, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 508, 4, 1, 'Assigned to driver'),
(520, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 508, 5, 1, 'Prepared by restaurant'),
(521, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 509, 1, 4, 'New order created'),
(522, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 509, 2, 1, 'Accepted by admin'),
(523, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 510, 1, 4, 'New order created'),
(524, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 510, 8, 1, 'Rejected by admin'),
(525, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 511, 1, 4, 'New order created'),
(526, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 511, 2, 1, 'Accepted by admin'),
(527, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 1, 4, 'New order created'),
(528, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 2, 1, 'Accepted by admin'),
(529, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 3, 1, 'Accepted by restaurant'),
(530, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 4, 1, 'Assigned to driver'),
(531, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 5, 1, 'Prepared by restaurant'),
(532, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 6, 1, 'Picked up'),
(533, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 512, 7, 1, 'Delivered'),
(534, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 513, 1, 4, 'New order created'),
(535, '2020-05-28 15:09:50', '2020-05-28 15:09:50', 514, 1, 4, 'New order created'),
(536, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 514, 2, 1, 'Accepted by admin'),
(537, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 514, 3, 1, 'Accepted by restaurant'),
(538, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 515, 1, 4, 'New order created'),
(539, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 515, 2, 1, 'Accepted by admin'),
(540, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 516, 1, 4, 'New order created'),
(541, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 516, 2, 1, 'Accepted by admin'),
(542, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 516, 3, 1, 'Accepted by restaurant'),
(543, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 516, 4, 1, 'Assigned to driver'),
(544, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 516, 5, 1, 'Prepared by restaurant'),
(545, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 517, 1, 4, 'New order created'),
(546, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 517, 2, 1, 'Accepted by admin'),
(547, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 518, 1, 4, 'New order created'),
(548, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 518, 2, 1, 'Accepted by admin'),
(549, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 518, 3, 1, 'Accepted by restaurant'),
(550, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 519, 1, 4, 'New order created'),
(551, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 519, 2, 1, 'Accepted by admin'),
(552, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 520, 1, 4, 'New order created'),
(553, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 520, 8, 1, 'Rejected by admin'),
(554, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 521, 1, 4, 'New order created'),
(555, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 521, 2, 1, 'Accepted by admin'),
(556, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 522, 1, 4, 'New order created'),
(557, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 523, 1, 4, 'New order created'),
(558, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 523, 2, 1, 'Accepted by admin'),
(559, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 524, 1, 4, 'New order created'),
(560, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 524, 2, 1, 'Accepted by admin'),
(561, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 524, 3, 1, 'Accepted by restaurant'),
(562, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 524, 4, 1, 'Assigned to driver'),
(563, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 524, 5, 1, 'Prepared by restaurant'),
(564, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 525, 1, 4, 'New order created'),
(565, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 525, 2, 1, 'Accepted by admin'),
(566, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 526, 1, 4, 'New order created'),
(567, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 526, 2, 1, 'Accepted by admin'),
(568, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 526, 3, 1, 'Accepted by restaurant'),
(569, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 527, 1, 4, 'New order created'),
(570, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 527, 2, 1, 'Accepted by admin'),
(571, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 528, 1, 4, 'New order created'),
(572, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 528, 2, 1, 'Accepted by admin'),
(573, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 528, 9, 1, 'Rejected by restaurant'),
(574, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 529, 1, 4, 'New order created'),
(575, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 529, 2, 1, 'Accepted by admin'),
(576, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 530, 1, 4, 'New order created'),
(577, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 530, 8, 1, 'Rejected by admin'),
(578, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 531, 1, 4, 'New order created'),
(579, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 532, 1, 4, 'New order created'),
(580, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 532, 2, 1, 'Accepted by admin'),
(581, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 532, 3, 1, 'Accepted by restaurant'),
(582, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 532, 4, 1, 'Assigned to driver'),
(583, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 532, 5, 1, 'Prepared by restaurant'),
(584, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 533, 1, 4, 'New order created'),
(585, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 533, 2, 1, 'Accepted by admin'),
(586, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 534, 1, 4, 'New order created'),
(587, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 534, 2, 1, 'Accepted by admin'),
(588, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 534, 3, 1, 'Accepted by restaurant'),
(589, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 535, 1, 4, 'New order created'),
(590, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 535, 2, 1, 'Accepted by admin'),
(591, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 1, 4, 'New order created'),
(592, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 2, 1, 'Accepted by admin'),
(593, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 3, 1, 'Accepted by restaurant'),
(594, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 4, 1, 'Assigned to driver'),
(595, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 5, 1, 'Prepared by restaurant'),
(596, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 536, 6, 1, 'Picked up'),
(597, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 537, 1, 4, 'New order created'),
(598, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 537, 2, 1, 'Accepted by admin'),
(599, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 538, 1, 4, 'New order created'),
(600, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 538, 2, 1, 'Accepted by admin'),
(601, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 538, 3, 1, 'Accepted by restaurant'),
(602, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 539, 1, 4, 'New order created'),
(603, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 539, 2, 1, 'Accepted by admin'),
(604, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 540, 1, 4, 'New order created'),
(605, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 540, 8, 1, 'Rejected by admin'),
(606, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 541, 1, 4, 'New order created'),
(607, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 541, 2, 1, 'Accepted by admin'),
(608, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 542, 1, 4, 'New order created'),
(609, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 542, 2, 1, 'Accepted by admin'),
(610, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 542, 3, 1, 'Accepted by restaurant'),
(611, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 543, 1, 4, 'New order created'),
(612, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 543, 2, 1, 'Accepted by admin'),
(613, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 544, 1, 4, 'New order created'),
(614, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 544, 2, 1, 'Accepted by admin');
INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(615, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 544, 3, 1, 'Accepted by restaurant'),
(616, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 544, 4, 1, 'Assigned to driver'),
(617, '2020-05-28 15:09:51', '2020-05-28 15:09:51', 544, 5, 1, 'Prepared by restaurant'),
(618, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 544, 6, 1, 'Picked up'),
(619, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 544, 7, 1, 'Delivered'),
(620, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 545, 1, 4, 'New order created'),
(621, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 545, 2, 1, 'Accepted by admin'),
(622, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 546, 1, 4, 'New order created'),
(623, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 546, 2, 1, 'Accepted by admin'),
(624, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 546, 3, 1, 'Accepted by restaurant'),
(625, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 547, 1, 4, 'New order created'),
(626, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 547, 2, 1, 'Accepted by admin'),
(627, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 548, 1, 4, 'New order created'),
(628, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 548, 2, 1, 'Accepted by admin'),
(629, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 548, 3, 1, 'Accepted by restaurant'),
(630, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 548, 4, 1, 'Assigned to driver'),
(631, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 548, 5, 1, 'Prepared by restaurant'),
(632, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 549, 1, 4, 'New order created'),
(633, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 550, 1, 4, 'New order created'),
(634, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 550, 8, 1, 'Rejected by admin'),
(635, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 551, 1, 4, 'New order created'),
(636, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 551, 2, 1, 'Accepted by admin'),
(637, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 552, 1, 4, 'New order created'),
(638, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 552, 2, 1, 'Accepted by admin'),
(639, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 552, 9, 1, 'Rejected by restaurant'),
(640, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 553, 1, 4, 'New order created'),
(641, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 553, 2, 1, 'Accepted by admin'),
(642, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 554, 1, 4, 'New order created'),
(643, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 554, 2, 1, 'Accepted by admin'),
(644, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 554, 3, 1, 'Accepted by restaurant'),
(645, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 555, 1, 4, 'New order created'),
(646, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 555, 2, 1, 'Accepted by admin'),
(647, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 556, 1, 4, 'New order created'),
(648, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 556, 2, 1, 'Accepted by admin'),
(649, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 556, 3, 1, 'Accepted by restaurant'),
(650, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 556, 4, 1, 'Assigned to driver'),
(651, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 556, 5, 1, 'Prepared by restaurant'),
(652, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 557, 1, 4, 'New order created'),
(653, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 557, 2, 1, 'Accepted by admin'),
(654, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 558, 1, 4, 'New order created'),
(655, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 559, 1, 4, 'New order created'),
(656, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 559, 2, 1, 'Accepted by admin'),
(657, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 560, 1, 4, 'New order created'),
(658, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 560, 8, 1, 'Rejected by admin'),
(659, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 561, 1, 4, 'New order created'),
(660, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 561, 2, 1, 'Accepted by admin'),
(661, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 562, 1, 4, 'New order created'),
(662, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 562, 2, 1, 'Accepted by admin'),
(663, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 562, 3, 1, 'Accepted by restaurant'),
(664, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 563, 1, 4, 'New order created'),
(665, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 563, 2, 1, 'Accepted by admin'),
(666, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 564, 1, 4, 'New order created'),
(667, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 564, 2, 1, 'Accepted by admin'),
(668, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 564, 3, 1, 'Accepted by restaurant'),
(669, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 564, 4, 1, 'Assigned to driver'),
(670, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 564, 5, 1, 'Prepared by restaurant'),
(671, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 565, 1, 4, 'New order created'),
(672, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 565, 2, 1, 'Accepted by admin'),
(673, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 566, 1, 4, 'New order created'),
(674, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 566, 2, 1, 'Accepted by admin'),
(675, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 566, 3, 1, 'Accepted by restaurant'),
(676, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 567, 1, 4, 'New order created'),
(677, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 1, 4, 'New order created'),
(678, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 2, 1, 'Accepted by admin'),
(679, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 3, 1, 'Accepted by restaurant'),
(680, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 4, 1, 'Assigned to driver'),
(681, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 5, 1, 'Prepared by restaurant'),
(682, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 568, 6, 1, 'Picked up'),
(683, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 569, 1, 4, 'New order created'),
(684, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 569, 2, 1, 'Accepted by admin'),
(685, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 570, 1, 4, 'New order created'),
(686, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 570, 8, 1, 'Rejected by admin'),
(687, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 571, 1, 4, 'New order created'),
(688, '2020-05-28 15:09:52', '2020-05-28 15:09:52', 571, 2, 1, 'Accepted by admin'),
(689, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 572, 1, 4, 'New order created'),
(690, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 572, 2, 1, 'Accepted by admin'),
(691, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 572, 3, 1, 'Accepted by restaurant'),
(692, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 572, 4, 1, 'Assigned to driver'),
(693, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 572, 5, 1, 'Prepared by restaurant'),
(694, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 573, 1, 4, 'New order created'),
(695, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 573, 2, 1, 'Accepted by admin'),
(696, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 574, 1, 4, 'New order created'),
(697, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 574, 2, 1, 'Accepted by admin'),
(698, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 574, 3, 1, 'Accepted by restaurant'),
(699, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 575, 1, 4, 'New order created'),
(700, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 575, 2, 1, 'Accepted by admin'),
(701, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 576, 1, 4, 'New order created'),
(702, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 577, 1, 4, 'New order created'),
(703, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 577, 2, 1, 'Accepted by admin'),
(704, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 578, 1, 4, 'New order created'),
(705, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 578, 2, 1, 'Accepted by admin'),
(706, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 578, 3, 1, 'Accepted by restaurant'),
(707, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 579, 1, 4, 'New order created'),
(708, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 579, 2, 1, 'Accepted by admin'),
(709, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 580, 1, 4, 'New order created'),
(710, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 580, 8, 1, 'Rejected by admin'),
(711, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 581, 1, 4, 'New order created'),
(712, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 581, 2, 1, 'Accepted by admin'),
(713, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 582, 1, 4, 'New order created'),
(714, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 582, 2, 1, 'Accepted by admin'),
(715, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 582, 3, 1, 'Accepted by restaurant'),
(716, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 583, 1, 4, 'New order created'),
(717, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 583, 2, 1, 'Accepted by admin'),
(718, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 1, 4, 'New order created'),
(719, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 2, 1, 'Accepted by admin'),
(720, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 3, 1, 'Accepted by restaurant'),
(721, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 4, 1, 'Assigned to driver'),
(722, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 5, 1, 'Prepared by restaurant'),
(723, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 584, 6, 1, 'Picked up'),
(724, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 585, 1, 4, 'New order created'),
(725, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 586, 1, 4, 'New order created'),
(726, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 586, 2, 1, 'Accepted by admin'),
(727, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 586, 3, 1, 'Accepted by restaurant'),
(728, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 587, 1, 4, 'New order created'),
(729, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 587, 2, 1, 'Accepted by admin'),
(730, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 588, 1, 4, 'New order created'),
(731, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 588, 2, 1, 'Accepted by admin'),
(732, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 588, 3, 1, 'Accepted by restaurant'),
(733, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 588, 4, 1, 'Assigned to driver'),
(734, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 588, 5, 1, 'Prepared by restaurant'),
(735, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 589, 1, 4, 'New order created'),
(736, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 589, 2, 1, 'Accepted by admin'),
(737, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 590, 1, 4, 'New order created'),
(738, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 590, 8, 1, 'Rejected by admin'),
(739, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 591, 1, 4, 'New order created'),
(740, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 591, 2, 1, 'Accepted by admin'),
(741, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 1, 4, 'New order created'),
(742, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 2, 1, 'Accepted by admin'),
(743, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 3, 1, 'Accepted by restaurant'),
(744, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 4, 1, 'Assigned to driver'),
(745, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 5, 1, 'Prepared by restaurant'),
(746, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 6, 1, 'Picked up'),
(747, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 592, 7, 1, 'Delivered'),
(748, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 593, 1, 4, 'New order created'),
(749, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 593, 2, 1, 'Accepted by admin'),
(750, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 594, 1, 4, 'New order created'),
(751, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 595, 1, 4, 'New order created'),
(752, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 595, 2, 1, 'Accepted by admin'),
(753, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 596, 1, 4, 'New order created'),
(754, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 596, 2, 1, 'Accepted by admin'),
(755, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 596, 3, 1, 'Accepted by restaurant'),
(756, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 596, 4, 1, 'Assigned to driver'),
(757, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 596, 5, 1, 'Prepared by restaurant'),
(758, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 597, 1, 4, 'New order created'),
(759, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 597, 2, 1, 'Accepted by admin'),
(760, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 598, 1, 4, 'New order created'),
(761, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 598, 2, 1, 'Accepted by admin'),
(762, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 598, 3, 1, 'Accepted by restaurant'),
(763, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 599, 1, 4, 'New order created'),
(764, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 599, 2, 1, 'Accepted by admin'),
(765, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 600, 1, 4, 'New order created'),
(766, '2020-05-28 15:09:53', '2020-05-28 15:09:53', 600, 8, 1, 'Rejected by admin'),
(767, '2020-05-28 15:28:47', NULL, 601, 1, 4, ''),
(768, '2020-06-20 17:21:07', NULL, 602, 1, 4, ''),
(769, '2020-06-20 17:27:09', NULL, 603, 1, 4, ''),
(770, '2020-06-20 17:28:19', NULL, 603, 2, 1, ''),
(771, '2020-06-20 17:33:13', NULL, 572, 6, 3, ''),
(772, '2020-06-20 17:33:52', NULL, 572, 7, 3, ''),
(773, '2020-06-20 17:34:02', NULL, 568, 7, 3, ''),
(774, '2020-06-20 17:35:29', NULL, 602, 2, 1, ''),
(775, '2020-06-20 17:35:40', NULL, 578, 4, 1, ''),
(776, '2020-06-25 07:15:16', NULL, 604, 1, 4, ''),
(777, '2020-06-25 07:23:18', NULL, 604, 2, 1, ''),
(778, '2020-06-25 18:21:03', NULL, 605, 1, 4, ''),
(779, '2020-06-25 18:22:51', NULL, 606, 1, 6, ''),
(780, '2020-06-25 18:25:14', NULL, 607, 1, 6, ''),
(781, '2020-06-25 18:26:44', NULL, 608, 1, 6, ''),
(782, '2020-07-07 07:07:05', NULL, 609, 1, 4, ''),
(783, '2020-07-07 07:07:53', NULL, 609, 2, 1, ''),
(784, '2020-07-07 07:08:17', NULL, 601, 2, 1, ''),
(785, '2020-07-24 13:47:23', NULL, 532, 6, 3, ''),
(786, '2020-07-24 13:47:36', NULL, 536, 7, 3, ''),
(787, '2020-07-24 13:59:57', NULL, 610, 1, 4, ''),
(788, '2020-07-24 14:00:48', NULL, 610, 2, 1, ''),
(789, '2020-07-24 14:07:51', NULL, 611, 1, 2, ''),
(790, '2020-07-24 14:08:20', NULL, 612, 1, 4, ''),
(791, '2020-07-24 14:09:31', NULL, 596, 6, 3, ''),
(792, '2020-07-24 14:09:37', NULL, 524, 6, 3, ''),
(793, '2020-07-24 14:11:06', NULL, 564, 6, 3, ''),
(794, '2020-07-24 14:28:33', NULL, 610, 3, 7, ''),
(795, '2020-07-24 14:30:01', NULL, 612, 2, 1, ''),
(796, '2020-07-24 14:30:33', NULL, 612, 3, 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2020-05-28 15:09:29', '2020-06-25 07:08:52', 'Terms and conditions', '<p><strong>Ambala Curry website Terms of Use</strong><br />\r\n<br />\r\nThese Terms of Use govern your use of the Ambala Curry website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by Ambala Curry Bulgaria or operated on behalf of Ambala Curry (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\r\n<br />\r\n<strong>Agreement to Terms</strong><br />\r\n<br />\r\nBy using the Websites, you agree to these Terms of Use and the Ambala Curry General Online Privacy Policy (for visitors who are eighteen years of age or over) or the Ambala Curry Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\nAmbala Curry may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\n<strong>Accounts</strong><br />\r\n<br />\r\nYou may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\r\n<br />\r\nYou are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@Ambala Curry.com or send a message to our live-chat service. You agree to indemnify and hold harmless Ambala Curry for losses incurred by Ambala Curry or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\r\n<br />\r\n<strong>Cancellation</strong><br />\r\n<br />\r\nYou have the right to cancel your order up to five minutes after your order is placed on the Ambala Curry platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, Ambala Curry reserves the right to limit his/her future cash payments.<br />\r\n<br />\r\n<strong>Content Posted by Other Users</strong><br />\r\n<br />\r\nAmbala Curry is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall Ambala Curry be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact Ambala Curry by mail at:&nbsp;support@Ambala Curry.com or send a message to our live-chat service.<br />\r\n<br />\r\nIf you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\r\n<br />\r\n<br />\r\n<strong>Activities Prohibited on the Websites</strong><br />\r\n<br />\r\nThe following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. Ambala Curry reserves the right to investigate and take appropriate legal action against anyone who, in Ambala Curry sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\r\n<br />\r\n- Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\r\n- Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\r\n- Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by Ambala Curry in its sole discretion or pursuant to local community standards;<br />\r\n- Posting Content that constitutes cyber-bullying, as determined by Ambala Curry in its sole discretion;<br />\r\n- Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\r\n- Posting telephone numbers, street addresses, or last names of any person;<br />\r\n- Posting URLs to external websites or any form of HTML or programming code;<br />\r\n- Posting anything that may be &ldquo;spam,&rdquo; as determined by Ambala Curry in its sole discretion;<br />\r\n- Impersonating another person when posting Content;<br />\r\n- Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\r\n- Allowing any other person or entity to use your identification for posting or viewing comments;<br />\r\n- Harassing, threatening, stalking, or abusing any person;<br />\r\n- Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of Ambala Curry, exposes Ambala Curry or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\r\n- Encouraging other people to engage in any prohibited activities as described herein.<br />\r\nAmbala Curry reserves the right -- but is not obligated -- to do any or all of the following:<br />\r\n<br />\r\n- Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\r\n- Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\r\n- Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\r\n- Monitor, edit, or disclose any Content on the Websites; and<br />\r\n- Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\r\n- Ambala Curry Trademarks and Copyrights<br />\r\n<br />\r\nAll trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of Ambala Curry and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\r\n<br />\r\nYou may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of Ambala Curry&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. Ambala Curry will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. Ambala Curry neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with Ambala Curry. Use of any materials on the Websites is at your own risk.<br />\r\n<br />\r\n<strong>Hyperlinks</strong><br />\r\n<br />\r\nThis Websites may contain hyperlinks to third-party websites. Ambala Curry does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that Ambala Curry is not responsible or liable for any Content or other materials on these third party websites.<br />\r\n<br />\r\n<strong>Governing Law and Severability</strong><br />\r\n<br />\r\nThese Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\r\n<br />\r\nIf any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\r\n<br />\r\n<strong>Payment</strong><br />\r\n<br />\r\nPayments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\r\nThe end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\r\n<br />\r\n<strong>Warranties</strong><br />\r\n<br />\r\nThe Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, Ambala Curry, its parent, subsidiaries, and affiliates (the Ambala Curry entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The Ambala Curry Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\r\n<br />\r\n<strong>Limitation of Liability</strong><br />\r\n<br />\r\nThe Ambala Curry entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The Ambala Curry entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the Ambala Curry entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the Ambala Curry entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\r\n<br />\r\n<strong>Termination</strong><br />\r\n<br />\r\nAmbala Curry has the right to terminate your account and access to the Websites for any reason, including, without limitation, if Ambala Curry, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. Ambala Curry may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\r\n<br />\r\n<strong>Vouchers</strong><br />\r\n<br />\r\nUnless otherwise stated,<br />\r\n<br />\r\n- Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\r\n- Valid only for online payment<br />\r\n- Ambala Curry reserves the right to cancel orders and accounts if fraud activities are detected<br />\r\n- Ambala Curry reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\r\n- Individual restaurants terms &amp; conditions apply<br />\r\n<br />\r\n<strong>Contact Us</strong><br />\r\n<br />\r\nQuestions? Comments? Please send an email to us at&nbsp;contact@Ambala Curry.com<br />\r\n<br />\r\n&copy; 2020 Ambala Curry. All rights reserved.</p>\r\n\r\n<p><strong>Ambala Curry website Terms of Use</strong><br />\r\n<br />\r\nThese Terms of Use govern your use of the Ambala Curry website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by Ambala Curry Bulgaria or operated on behalf of Ambala Curry (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\r\n<br />\r\n<strong>Agreement to Terms</strong><br />\r\n<br />\r\nBy using the Websites, you agree to these Terms of Use and the Ambala Curry General Online Privacy Policy (for visitors who are eighteen years of age or over) or the Ambala Curry Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\nAmbala Curry may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\r\n<br />\r\n<strong>Accounts</strong><br />\r\n<br />\r\nYou may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\r\n<br />\r\nYou are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@Ambala Curry.com or send a message to our live-chat service. You agree to indemnify and hold harmless Ambala Curry for losses incurred by Ambala Curry or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\r\n<br />\r\n<strong>Cancellation</strong><br />\r\n<br />\r\nYou have the right to cancel your order up to five minutes after your order is placed on the Ambala Curry platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, Ambala Curry reserves the right to limit his/her future cash payments.<br />\r\n<br />\r\n<strong>Content Posted by Other Users</strong><br />\r\n<br />\r\nAmbala Curry is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall Ambala Curry be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact Ambala Curry by mail at:&nbsp;support@Ambala Curry.com or send a message to our live-chat service.<br />\r\n<br />\r\nIf you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\r\n<br />\r\n<br />\r\n<strong>Activities Prohibited on the Websites</strong><br />\r\n<br />\r\nThe following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. Ambala Curry reserves the right to investigate and take appropriate legal action against anyone who, in Ambala Curry sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\r\n<br />\r\n- Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\r\n- Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\r\n- Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by Ambala Curry in its sole discretion or pursuant to local community standards;<br />\r\n- Posting Content that constitutes cyber-bullying, as determined by Ambala Curry in its sole discretion;<br />\r\n- Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\r\n- Posting telephone numbers, street addresses, or last names of any person;<br />\r\n- Posting URLs to external websites or any form of HTML or programming code;<br />\r\n- Posting anything that may be &ldquo;spam,&rdquo; as determined by Ambala Curry in its sole discretion;<br />\r\n- Impersonating another person when posting Content;<br />\r\n- Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\r\n- Allowing any other person or entity to use your identification for posting or viewing comments;<br />\r\n- Harassing, threatening, stalking, or abusing any person;<br />\r\n- Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of Ambala Curry, exposes Ambala Curry or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\r\n- Encouraging other people to engage in any prohibited activities as described herein.<br />\r\nAmbala Curry reserves the right -- but is not obligated -- to do any or all of the following:<br />\r\n<br />\r\n- Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\r\n- Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\r\n- Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\r\n- Monitor, edit, or disclose any Content on the Websites; and<br />\r\n- Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\r\n- Ambala Curry Trademarks and Copyrights<br />\r\n<br />\r\nAll trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of Ambala Curry and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\r\n<br />\r\nYou may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of Ambala Curry&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. Ambala Curry will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. Ambala Curry neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with Ambala Curry. Use of any materials on the Websites is at your own risk.<br />\r\n<br />\r\n<strong>Hyperlinks</strong><br />\r\n<br />\r\nThis Websites may contain hyperlinks to third-party websites. Ambala Curry does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that Ambala Curry is not responsible or liable for any Content or other materials on these third party websites.<br />\r\n<br />\r\n<strong>Governing Law and Severability</strong><br />\r\n<br />\r\nThese Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\r\n<br />\r\nIf any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\r\n<br />\r\n<strong>Payment</strong><br />\r\n<br />\r\nPayments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\r\nThe end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\r\n<br />\r\n<strong>Warranties</strong><br />\r\n<br />\r\nThe Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, Ambala Curry, its parent, subsidiaries, and affiliates (the Ambala Curry entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The Ambala Curry Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\r\n<br />\r\n<strong>Limitation of Liability</strong><br />\r\n<br />\r\nThe Ambala Curry entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The Ambala Curry entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the Ambala Curry entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the Ambala Curry entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\r\n<br />\r\n<strong>Termination</strong><br />\r\n<br />\r\nAmbala Curry has the right to terminate your account and access to the Websites for any reason, including, without limitation, if Ambala Curry, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. Ambala Curry may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\r\n<br />\r\n<strong>Vouchers</strong><br />\r\n<br />\r\nUnless otherwise stated,<br />\r\n<br />\r\n- Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\r\n- Valid only for online payment<br />\r\n- Ambala Curry reserves the right to cancel orders and accounts if fraud activities are detected<br />\r\n- Ambala Curry reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\r\n- Individual restaurants terms &amp; conditions apply<br />\r\n<br />\r\n<strong>Contact Us</strong><br />\r\n<br />\r\nQuestions? Comments? Please send an email to us at&nbsp;contact@Ambala Curry.com<br />\r\n<br />\r\n&copy; 2020 Ambala Curry. All rights reserved.</p>', 1),
(2, '2020-05-28 15:09:29', '2020-05-28 15:21:11', 'How it works', '<p>Ambala Curry is simple and easy way to order food online. Enjoy the variety of choices and cuisines which could be delivered to your home or office.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Here is how Ambala Curry works:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Find a restaurant:</strong></p>\r\n\r\n<p>Enter you address or choose from the map on the front page to set your location. Take a review on the restaurants which deliver to your address. Choose a restaurant and dive in its tasty menu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Choose a dish:</strong></p>\r\n\r\n<p>Choose from the displayed dishes. If there is an option to add products or sauce, for pizza for example, you will be asked for your choice right after you click on the dish. Your order will be dispayed on the right side of the page.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Finish your order and choose type of payment:</strong></p>\r\n\r\n<p>When you complete the order with delicious food, click &quot;Buy&quot;. Now you only have to write your address and choose type of payment as you follow the instructions on the page.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Delivery:</strong></p>\r\n\r\n<p>You will receive SMS as confirmation for your order and information about the delivery time and.....</p>\r\n\r\n<p>That&#39;s all!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1),
(3, '2020-05-28 15:09:29', '2020-05-28 15:21:40', 'Partner with us', '<p>You have a great restaurant and deliver the most delicious food in your city?<br />\r\nYou want the customers of Ambala Curry&nbsp;to be satisfied by your offers and discounts?</p>\r\n\r\n<p><strong>Ambala Curry always looks for new friends!</strong></p>\r\n\r\n<p><a href=\"https://danieldimov.typeform.com/to/rmbOMG\"><strong>REGISTER NOW</strong></a></p>\r\n\r\n<p>&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2020-05-28 15:09:27', '2020-05-28 15:09:27'),
(2, 'manage drivers', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(3, 'manage orders', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(4, 'edit settings', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(5, 'view orders', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(6, 'edit restorant', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(7, 'edit orders', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28'),
(8, 'access backedn', 'web', '2020-05-28 15:09:28', '2020-05-28 15:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `restorants`
--

CREATE TABLE `restorants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorants`
--

INSERT INTO `restorants` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`) VALUES
(1, '2020-05-28 15:09:29', '2020-07-22 08:10:43', 'Pizza Napoli', 'pizzanapoli', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00),
(2, '2020-05-28 15:09:30', '2020-07-22 08:10:36', 'Burger King', 'burgerking', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00),
(3, '2020-05-28 15:09:30', '2020-07-22 08:10:28', 'Mexican Restorant', 'mexicanrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00),
(4, '2020-05-28 15:09:30', '2020-07-22 08:10:21', 'Restoran Bonimi', 'restoranbonimi', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00),
(5, '2020-05-28 15:09:30', '2020-07-22 08:10:15', 'Veneto Italian Restorant', 'venetoitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00),
(6, '2020-05-28 15:09:31', '2020-07-22 08:10:11', 'Fresh Taco', 'freshtaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00),
(7, '2020-05-28 15:09:31', '2020-07-22 08:10:06', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00),
(8, '2020-05-28 15:09:31', '2020-07-22 08:09:59', 'Giovani Bar & Grill', 'giovanibargrill', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00),
(9, '2020-05-28 15:09:32', '2020-07-22 08:09:54', 'Pizza Venecia', 'pizzavenecia', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00),
(10, '2020-05-28 15:09:32', '2020-07-22 08:09:49', 'Burito Yum', 'buritoyum', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00),
(11, '2020-05-28 15:09:32', '2020-07-22 08:09:40', 'Burger House', 'burgerhouse', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00),
(12, '2020-05-28 15:09:32', '2020-07-22 08:08:59', 'DaVinci Restorant', 'davincirestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 0, 2, '42.005', '21.44', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00),
(13, '2020-07-14 07:28:11', '2020-07-14 07:32:18', 'Ambala Curry', 'ambalacurry', '', '', 1, 7, '0', '0', '', '+923219444734', '0', '', 0.00, 0.00),
(14, '2020-07-26 07:23:25', '2020-07-26 07:23:25', 'Pinseria Bufala', 'pinseriabufala', '', '', 1, 8, '0', '0', '', '+923009486622', '0', '', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-05-28 15:09:27', '2020-05-28 15:09:27'),
(2, 'owner', 'web', '2020-05-28 15:09:27', '2020-05-28 15:09:27'),
(3, 'driver', 'web', '2020-05-28 15:09:27', '2020-05-28 15:09:27'),
(4, 'client', 'web', '2020-05-28 15:09:27', '2020-05-28 15:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT '0.00',
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`) VALUES
(1, '2020-05-28 15:09:27', '2020-07-23 09:02:14', 'Ambala Curry', '3609d569-9817-4e42-87b9-c51523384b89', '/default/cover.jpg', 'e74edbe0-e5ad-40b8-9e42-25b64a63b631', '11ecfb0a-a8e9-4c28-86a5-3ef9977946d4', 'Food Delivery from Ambala Curry', 'Food Delivery from<br /><b>Ambala Curry</b>', 'The meals you love, delivered with care', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', 'Download the food you love', 'It`s all at your fingertips - the restaurants you love. Find the right food to suit your mood, and make the first bite last. Go ahead, download us.', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(1, NULL, NULL, 'Admin Admin', 'admin@example.com', '2020-05-28 15:09:27', '$2y$10$10zOHJVfoQAr/HMj9LilNONDZXnMi9E0HOXgSZv8XWS3SWhJyoGBC', 'glo6UbHfp5HMDVfQnRTih9dR2177O0b2KEI7vPKKz1XPfY9vGwvmZKvSELlwLqanNFimMaVioJAYnqq8', '', NULL, '2020-05-28 15:09:27', '2020-05-28 15:09:27', 1),
(2, NULL, NULL, 'Demo Owner', 'owner@ambalacurry.de', '2020-05-28 15:09:29', '$2y$10$7R3ufv4s/NnRNEQ8m/x3iOaVXD6muoXVr337P46WuK.xRKpYILFQK', 'db2pOAylApDP31kAr7KAFKnLVKL1awrJW2LHt7sMwgj6qDGRUSj03Rw0MdYJNwVH1mhu4uJU5SISaDFE', '', 'Nls3JNNnqQ2BhZCc5ek7yeZIcgIlYpxRLfiUHxzsIHGJ9ncA8bukoWp542F9', '2020-05-28 15:09:29', '2020-05-28 15:09:29', 1),
(3, NULL, NULL, 'Demo Driver', 'driver@example.com', '2020-05-28 15:09:33', '$2y$10$50INqNSjcuTkM0w54KII..TE07dpxthKU/YbEtnc4yrP.ZTHsY/NK', 'N8RX51jWThgcI6ihxVzL4a41s7YY8LMUkD7aH7ylQd8abgSglpO5nbi1ETibCPNp9rnhdX9GVJVSiDhx', '', NULL, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(4, NULL, NULL, 'Demo Client 1', 'client@example.com', '2020-05-28 15:09:33', '$2y$10$vdNWijBEue0L2I968Ov62.xgvQW4TsjcwsICGVCVi8oIsVF4vvf1W', 'O0QR1X7XaORpArVX06h6ehteViPjEd0jS3GaEKbflsTCmby92grHzSnGk4arYP1VFGUIsPShMIaIGDrA', '', NULL, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(5, NULL, NULL, 'Demo Client 2', 'client2@example.com', '2020-05-28 15:09:33', '$2y$10$iqe3hbP6nTAmg2SLE3gvDubhSffg0iY5BUHYf7cPEBkGMOgD9458i', 'x9XXFuRLJWCltTs03KEp9aFwsRJ0yOqanr7vaa6ODZwYXcLv4Hccxj7xglAgjkrETzMebmxokSwCWclO', '', NULL, '2020-05-28 15:09:33', '2020-05-28 15:09:33', 1),
(6, NULL, NULL, 'Muhammad Awais Ullah', 'captainawaisullah@gmail.com', NULL, '$2y$10$CvlJYrB2Zi/DnvLUu15mduQB.xKULjPK1L7acmHhCd3sxF6H1ABUa', 'BuQKbo9ZFd52PZ7pGqoHYtyyvMwqZ8xHjt5L001vLsLFCygBRd1aB2pp2LnKKXmqixSVF4kbH03sJXpA', '03225460430', NULL, '2020-06-25 18:22:00', '2020-06-25 18:22:00', 1),
(7, NULL, NULL, 'Attiq Ahmed', 'nouman.ali.syed@gmail.com', '2020-05-28 15:09:33', '$2y$10$50INqNSjcuTkM0w54KII..TE07dpxthKU/YbEtnc4yrP.ZTHsY/NK', 'dzd8qGVzOuXHWwW3dqehPyQmxEZLm0dakwxKGGc8LqTLhZSWnfAegXlWZqNEcSxr033EiAuIgNdq4wCL', '+923219444734', NULL, '2020-07-14 07:28:11', '2020-07-14 07:32:18', 1),
(8, NULL, NULL, 'Junaid Iftikhar', 'nouman.ali@bnu.edu.pk', NULL, '$2y$10$e6ZsYknlB8Kw7UHNsq6AremidaxpOA4KTcMRcS/HmPq.A1cJjSAp2', 'JNlB2jfKflq4Sr1VDin9uimlzsy8EE6zclUR6KNKLohLk71FhoOlLaVbsYj1T0A9P3FVQGIa15EYoePm', '+923009486622', NULL, '2020-07-26 07:23:25', '2020-07-26 07:23:25', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

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
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restorants`
--
ALTER TABLE `restorants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `restorants`
--
ALTER TABLE `restorants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
