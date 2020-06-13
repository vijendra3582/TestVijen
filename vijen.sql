-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2020 at 10:47 AM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijen`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Women', '0', 'women', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(2, 'Clothes', '1', 'women-clothes', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(3, 'Footwear', '1', 'women-footwear', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(4, 'Shoes', '3', 'women-footwear-shoes', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(7, 'Men', '0', 'men', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(8, 'Clothes', '7', 'men-clothes', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(9, 'Footwear', '7', 'men-footwear', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(10, 'Kids', '0', 'kids', '2020-06-13 05:45:07', '2020-06-13 05:45:07'),
(11, 'Electronics', '0', 'electronic', '2020-06-13 05:45:07', '2020-06-13 05:45:07');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Power Source', '2020-06-13 08:55:37', '2020-06-13 08:55:37'),
(2, 'Battery Type', '2020-06-13 08:55:37', '2020-06-13 08:55:37'),
(3, 'Battery Run Time', '2020-06-13 08:55:37', '2020-06-13 08:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `feature_values`
--

CREATE TABLE `feature_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_values`
--

INSERT INTO `feature_values` (`id`, `feature_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Battery', '2020-06-13 08:55:51', '2020-06-13 08:55:51'),
(2, 1, 'Ni-MH Battery', '2020-06-13 08:55:51', '2020-06-13 08:55:51'),
(3, 1, '90 Min', '2020-06-13 08:55:51', '2020-06-13 08:55:51');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_13_051230_create_categories_table', 1),
(5, '2020_06_13_051539_create_products_table', 1),
(6, '2020_06_13_052030_create_product_specifications_table', 1),
(7, '2020_06_13_052051_create_product_features_table', 1),
(15, '2020_06_13_083543_create_specification_values_table', 2),
(14, '2020_06_13_083532_create_specifications_table', 2),
(13, '2020_06_13_083509_create_feature_values_table', 2),
(12, '2020_06_13_083333_create_features_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `seller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `category_id`, `slug`, `image`, `currency`, `price`, `seller`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Nova Prime Series NHT 1090 Turbo Power Runtime: 90 min Trimmer for Men  (Black)\r\n', 'Facial hair is a prominent feature of a man\'s face and it needs to be groomed regularly if you want to maintain a suave image. Helping you do this is this Nova trimmer. It comes with 20 trim settings which let you trim and style your facial hair. This beard trimmer comes with 20 length settings that range from 0.25 mm to 8.5 mm making it very useful no matter whether you want to maintain a clean-shaven look or a neat beard. The trimmer is designed with Turbo power which runs for 90 min on one charge backed with titanium coated blades that provide a superior cutting performance. Whats more it comes with quick lightning charge option , which can be used both corded and cordless use. Long Lasting & Durable -This trimmer is designed to offer you long lasting performance and comes with a 2-year international guarantee .Dynamic Beard System- The unique feature in this trimmer allows you to achieve the beard style that you want - 3-day shadow, short beard or full beard look. The trimmer has an integrated hair lift comb that lifts the hair up to the level of the blade, resulting in an even and close trim.Integrated Hair Lift Comb The comb allows you to quickly trim your facial hair while remaining gentle on the skin. It also guides every hair strand to the level of the blades, ensuring an effortless and even trimming.Faster Trimming -Whether you are running late for office or not, you can enjoy quick trim thanks to the double sharpened full metal blades that cut more hair in each pass.Effortless Trimming Using the zoom wheel on the handle, you can adjust and lock-in the desired length you need for trimming. The length is between 0.25 mm and 8.5 mm with 0.25 mm precision.Skin-friendly Blades The trimmer is fitted with extra-sharp blades that have rounded tips to ensure a smooth contact with the skin. The design prevents chafing and skin irritation while ensuring you have a neat and close trim always.', 11, 'nova-prime-series-nht-1090-turbo-power-runtime-90-min-trimmer-men', 'uploads/product-1.jpg', 'INR', 1499, 'Amazestore', 1, '2020-06-13 12:12:30', '2020-06-13 17:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '2020-06-13 08:56:14', '2020-06-13 08:56:14'),
(2, 1, '2', '2', '2020-06-13 08:56:14', '2020-06-13 08:56:14'),
(3, 1, '3', '3', '2020-06-13 08:56:14', '2020-06-13 08:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(3, 1, '2', '2', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(4, 1, '3', '3', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(5, 1, '4', '4', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(7, 1, '5', '5', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(8, 1, '6', '6', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(9, 1, '7', '7', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(10, 1, '8', '8', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(11, 1, '9', '9', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(12, 1, '10', '10', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(13, 1, '11', '11', '2020-06-13 08:54:45', '2020-06-13 08:54:45'),
(17, 1, '12', '12', '2020-06-13 08:54:45', '2020-06-13 08:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Brand', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(2, 'Model Number', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(3, 'Type', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(4, 'Blade Material', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(5, 'Color', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(6, 'Trimming Range', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(7, 'Water Resistant', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(8, 'Washable Head', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(9, 'Features', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(10, 'Suitable For', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(11, 'Charging Time', '2020-06-13 08:55:05', '2020-06-13 08:55:05'),
(12, 'Type', '2020-06-13 08:55:05', '2020-06-13 08:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `specification_values`
--

CREATE TABLE `specification_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specification_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specification_values`
--

INSERT INTO `specification_values` (`id`, `specification_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nova', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(2, 2, 'Prime Series NHT 1090 Turbo Power', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(3, 3, 'Cordless', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(4, 4, 'Titanium Coated', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(5, 5, 'Black', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(6, 6, '0.25 - 9 mm', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(7, 7, 'Yes', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(8, 8, 'Yes', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(9, 9, 'Rechargeable, Easy to Clean', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(10, 10, 'Body Grooming, Beard & Moustache', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(11, 11, '120 Min', '2020-06-13 08:55:17', '2020-06-13 08:55:17'),
(12, 12, 'Cordless', '2020-06-13 08:55:17', '2020-06-13 08:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `mobile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vijendra Maurya', 'uploads/1592031004.jpg', 'vijendra3582@gmail.com', '7532943952', NULL, '$2y$10$awZJIvYp/0/Ws7KNPRcKfec/LMYlITai1qG4VU11ZLONNPqfs8sNG', NULL, '2020-06-13 13:50:05', '2020-06-13 13:50:05'),
(2, 'Shubh', 'uploads/1592045134.jpg', 'shubhansh@gmail.com', '8876898989', NULL, '$2y$10$/jL4thJazmT4gpcEFKDWZ.k6hGOAENrdYEZuRiIDB0QhYgP/b6faq', NULL, '2020-06-13 17:45:35', '2020-06-13 17:45:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_values`
--
ALTER TABLE `feature_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_values_feature_id_foreign` (`feature_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specification_values`
--
ALTER TABLE `specification_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specification_values_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feature_values`
--
ALTER TABLE `feature_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `specification_values`
--
ALTER TABLE `specification_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
