-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 02:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shayna-bwalaravue`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_05_024502_create_products_table', 1),
(5, '2021_01_05_025305_create_product_galleries_table', 2),
(6, '2021_01_05_025702_create_transactions_table', 3),
(7, '2021_01_05_030107_create_transaction_details_table', 4);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Uniqlo Shirt', 'uniqlo-shirt', 'Kaos', 'Ini adalah kaos', 10, 99, '2021-01-18 19:43:21', '2021-01-15 13:09:48', '2021-01-18 19:43:21'),
(2, 'Zara Chino', 'zara-chino', 'Celana', '<p>ini chino dari Zara</p>', 12, 150, '2021-01-18 19:43:22', '2021-01-07 19:56:56', '2021-01-18 19:43:22'),
(3, 'tes', 'tes', 'tes', '<p>tes</p>', 11, 11, '2021-01-18 19:43:23', '2021-01-11 16:30:33', '2021-01-18 19:43:23'),
(4, 'Jaket Wool', 'jaket-wool', 'Jaket', '<p>Menggunakan bahan yang lembut dan nyaman untuk digunakan</p>', 300, 6, NULL, '2021-01-18 19:44:38', '2021-01-19 21:11:19'),
(5, 'Jaket Suede', 'jaket-suede', 'Jaket', '<p>Menggunakan bahan suede yang trendy</p>', 250, 10, NULL, '2021-01-18 19:45:43', '2021-02-15 05:49:47'),
(6, 'Rompi Ripstop', 'rompi-ripstop', 'Rompi', '<p>Menggunakan bahan anti air sangat cocok untuk musim dingin</p>', 270, 10, NULL, '2021-01-18 19:51:45', '2021-01-18 19:51:45'),
(7, 'rifki gendut', 'rifki-gendut', 'sajadah', '<p>sangat mniez</p>', 9999, 9999, '2021-02-22 18:27:50', '2021-02-15 05:48:33', '2021-02-22 18:27:50'),
(8, 'baju polos', 'baju-polos', 'baju', '<p>baju polos nyaman</p>', 10, 10, NULL, '2021-02-22 18:28:13', '2021-02-22 18:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/product/zSQKZCWh1lySXbhpSmx9HWjnnA1I9m59Xmzkp4VT.jpg', 1, '2021-01-18 19:43:21', '2021-01-11 16:42:00', '2021-01-18 19:43:21'),
(2, 1, 'assets/product/Wfm4RjG0NhzhuDGc8AWUCtinweq7bGgdsd49tPNr.jpg', 1, '2021-01-11 16:45:06', '2021-01-11 16:42:21', '2021-01-11 16:45:06'),
(3, 4, 'assets/product/3lyrWltgKm5tJL6DC4gCne9kgTNCJJMJwctaAai3.webp', 1, NULL, '2021-01-18 19:44:56', '2021-01-18 19:44:56'),
(4, 4, 'assets/product/0uSilX37pwGgzLhbeis3JqGQj7kt9U5rG8aqbxlp.webp', 0, NULL, '2021-01-18 19:45:08', '2021-01-18 19:45:08'),
(5, 5, 'assets/product/PTUe6w8jkl6wbL5SliUrO4hAsc0d6zxVXGDCxgcA.webp', 1, NULL, '2021-01-18 19:46:03', '2021-01-18 19:46:03'),
(6, 4, 'assets/product/nLkdknQzXLGpfXehNdlTUnW95MSFgt5TG7d4o8e2.webp', 0, '2021-01-19 18:49:13', '2021-01-18 19:46:10', '2021-01-19 18:49:13'),
(7, 6, 'assets/product/ppe2U3AE3bpPcIgKZIhgXGL8wTgjXqhGzcw5HrDo.webp', 1, NULL, '2021-01-18 19:52:03', '2021-01-18 19:52:03'),
(8, 6, 'assets/product/7rUkILOCiMZl4A9ES1SXRWYH9DNX4zLPyPTZ0ibM.webp', 0, NULL, '2021-01-18 19:52:15', '2021-01-18 19:52:15'),
(9, 5, 'assets/product/qYAVQtI76dnR08y5E6wwU0ZdX9QSxXs4vTVDNb2X.webp', 0, NULL, '2021-01-19 18:49:35', '2021-01-19 18:49:35'),
(10, 8, 'assets/product/4EForjpKjMwL82GzULawCTM8T5Mm2owPUcJEqR4W.jpg', 1, NULL, '2021-02-22 18:31:05', '2021-02-22 18:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRX390427', 'Daniel Prastha Andika', 'email@gmail.com', '0875216740', 'Kediri', 100, 'SUCCESS', NULL, '2021-01-12 09:56:55', '2021-02-22 04:50:27'),
(2, 'TRX26722429', 'Ario Pratama', 'daniel@gmail.com', '0817400000', 'kediri', 10, 'PENDING', NULL, '2021-01-18 05:45:54', '2021-01-18 05:45:54'),
(3, 'TRX60506281', 'Roach', 'roach@gmail.com', '087676767676', 'planet namek', 605, 'SUCCESS', NULL, '2021-01-19 20:59:27', '2021-02-22 04:50:13'),
(7, 'TRX30346416', 'Geralt', 'roach@gmail.com', '087676767676', 'namek', 275, 'FAILED', NULL, '2021-02-15 05:49:47', '2021-02-22 04:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2021-01-12 09:59:34', '2021-01-12 09:59:34'),
(2, 2, 1, NULL, '2021-01-18 05:45:54', '2021-01-18 05:45:54'),
(3, 3, 4, NULL, '2021-01-19 20:59:27', '2021-01-19 20:59:27'),
(4, 3, 5, NULL, '2021-01-19 20:59:27', '2021-01-19 20:59:27'),
(5, 4, 4, NULL, '2021-01-19 21:03:46', '2021-01-19 21:03:46'),
(6, 4, 5, NULL, '2021-01-19 21:03:46', '2021-01-19 21:03:46'),
(7, 5, 4, NULL, '2021-01-19 21:04:36', '2021-01-19 21:04:36'),
(8, 5, 5, NULL, '2021-01-19 21:04:36', '2021-01-19 21:04:36'),
(9, 6, 4, NULL, '2021-01-19 21:11:19', '2021-01-19 21:11:19'),
(10, 6, 5, NULL, '2021-01-19 21:11:19', '2021-01-19 21:11:19'),
(11, 7, 5, NULL, '2021-02-15 05:49:47', '2021-02-15 05:49:47');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Prastha', 'danielprastha2@gmail.com', NULL, '$2y$10$ZRAZtKIC9bALkip/Ew/ljetlbwbcJzXP4tGziyEuy.z5ZmHFIEDWC', NULL, '2021-01-06 21:19:44', '2021-01-06 21:19:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
