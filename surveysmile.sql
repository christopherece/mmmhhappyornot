-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 18, 2019 at 10:45 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surveysmile`
--

-- --------------------------------------------------------

--
-- Table structure for table `fivestars`
--

CREATE TABLE `fivestars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fivestar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fivestars`
--

INSERT INTO `fivestars` (`id`, `fivestar`, `created_at`, `updated_at`) VALUES
(63, 'Excellent', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fourstars`
--

CREATE TABLE `fourstars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fourstar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fourstars`
--

INSERT INTO `fourstars` (`id`, `fourstar`, `created_at`, `updated_at`) VALUES
(1, 'Good', NULL, NULL);

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
(3, '2019_06_12_061527_create_surveys_table', 1),
(4, '2019_06_12_062152_create_fivestars_table', 2),
(5, '2019_06_12_064709_create_fourstars_table', 3),
(6, '2019_06_12_064737_create_threestars_table', 3),
(7, '2019_06_12_064801_create_twostars_table', 3),
(8, '2019_06_12_064818_create_onestars_table', 3),
(9, '2019_06_15_114009_add_username_to_users', 4),
(10, '2019_06_15_120147_create_values_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `onestars`
--

CREATE TABLE `onestars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `onestar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onestars`
--

INSERT INTO `onestars` (`id`, `onestar`, `created_at`, `updated_at`) VALUES
(12, 'Poor', NULL, NULL);

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
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fivestar` int(11) DEFAULT NULL,
  `fourstar` int(11) DEFAULT NULL,
  `threestar` int(11) DEFAULT NULL,
  `twostar` int(11) DEFAULT NULL,
  `onestar` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `fivestar`, `fourstar`, `threestar`, `twostar`, `onestar`, `created_at`, `updated_at`) VALUES
(64, 5, NULL, NULL, NULL, NULL, '2019-06-17 20:34:24', '2019-06-17 20:34:24'),
(65, 5, NULL, NULL, NULL, NULL, '2019-06-17 20:34:38', '2019-06-17 20:34:38'),
(66, NULL, 4, NULL, NULL, NULL, '2019-06-17 20:34:51', '2019-06-17 20:34:51'),
(67, NULL, NULL, 3, NULL, NULL, '2019-06-17 20:34:56', '2019-06-17 20:34:56'),
(68, NULL, NULL, NULL, 2, NULL, '2019-06-17 20:35:00', '2019-06-17 20:35:00'),
(69, NULL, NULL, NULL, 2, NULL, '2019-06-17 20:35:14', '2019-06-17 20:35:14'),
(70, NULL, 4, NULL, NULL, NULL, '2019-06-17 20:35:19', '2019-06-17 20:35:19'),
(71, NULL, 4, NULL, NULL, NULL, '2019-06-17 20:35:23', '2019-06-17 20:35:23'),
(72, 5, NULL, NULL, NULL, NULL, '2019-06-18 02:09:45', '2019-06-18 02:09:45'),
(73, NULL, NULL, NULL, NULL, 1, '2019-06-18 02:09:54', '2019-06-18 02:09:54'),
(74, NULL, NULL, NULL, NULL, 1, '2019-06-18 02:10:02', '2019-06-18 02:10:02'),
(75, NULL, NULL, NULL, 2, NULL, '2019-06-18 02:10:07', '2019-06-18 02:10:07'),
(76, NULL, NULL, NULL, 2, NULL, '2019-06-18 02:10:16', '2019-06-18 02:10:16'),
(77, NULL, NULL, NULL, NULL, 1, '2019-06-18 02:10:22', '2019-06-18 02:10:22'),
(78, NULL, NULL, 3, NULL, NULL, '2019-06-18 03:37:24', '2019-06-18 03:37:24'),
(79, 5, NULL, NULL, NULL, NULL, '2019-06-18 18:37:45', '2019-06-18 18:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `threestars`
--

CREATE TABLE `threestars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `threestar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threestars`
--

INSERT INTO `threestars` (`id`, `threestar`, `created_at`, `updated_at`) VALUES
(11, 'Average', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `twostars`
--

CREATE TABLE `twostars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `twostar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twostars`
--

INSERT INTO `twostars` (`id`, `twostar`, `created_at`, `updated_at`) VALUES
(12, 'Bad', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'CHRISTOPHER ANCHETA', 'christopheranchetaece@gmail.com', NULL, '$2y$10$lRuAl1S5WVRO2HH7KGJHeOVqhWdhLlibsuon0hWvkpRVSGgP6iidi', 'jbK4bkT79WAjMIhU5k6VWu6ctlT2G5ieqgUsgb6ZEallh5fOs57oP14jGPIc', '2019-06-15 03:44:43', '2019-06-15 03:44:43', 'topicute');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Poor', NULL, NULL),
(2, 'Bad', NULL, NULL),
(3, 'Average', NULL, NULL),
(4, 'Good', NULL, NULL),
(5, 'Excellent', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fivestars`
--
ALTER TABLE `fivestars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fourstars`
--
ALTER TABLE `fourstars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onestars`
--
ALTER TABLE `onestars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threestars`
--
ALTER TABLE `threestars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twostars`
--
ALTER TABLE `twostars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fivestars`
--
ALTER TABLE `fivestars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `fourstars`
--
ALTER TABLE `fourstars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `onestars`
--
ALTER TABLE `onestars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `threestars`
--
ALTER TABLE `threestars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `twostars`
--
ALTER TABLE `twostars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
