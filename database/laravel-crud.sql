-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 10:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

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
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'M001', 'Matematika Diskrit', 'ganjil', '2020-04-03 14:41:56', '0000-00-00 00:00:00'),
(2, 'BI001', 'Bahasa Indonesia', 'ganjil', '2020-04-03 14:41:56', '0000-00-00 00:00:00'),
(3, 'AG001', 'Agama Islam', 'genap', '2020-04-07 04:49:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 75, '2020-04-03 14:43:18', '0000-00-00 00:00:00'),
(2, 14, 2, 80, '2020-04-03 14:43:18', '0000-00-00 00:00:00'),
(3, 15, 2, 90, '2020-04-03 14:59:30', '0000-00-00 00:00:00'),
(4, 17, 1, 80, '2020-04-05 09:52:14', '2020-04-05 16:52:14'),
(5, 17, 2, 75, '2020-04-05 09:59:39', '2020-04-05 16:59:39'),
(6, 15, 1, 90, '2020-04-06 21:28:09', '2020-04-07 04:28:09'),
(8, 18, 3, 70, '2020-04-07 04:54:24', '0000-00-00 00:00:00'),
(9, 18, 1, 78, '2020-04-07 05:05:09', '0000-00-00 00:00:00'),
(10, 18, 2, 90, '2020-04-07 05:05:09', '0000-00-00 00:00:00'),
(11, 15, 3, 87, '2020-04-06 22:10:41', '2020-04-07 05:10:41'),
(12, 17, 3, 90, '2020-04-06 22:20:14', '2020-04-07 05:20:14'),
(13, 19, 1, 76, '2020-04-06 22:23:16', '2020-04-07 05:23:16'),
(14, 19, 2, 90, '2020-04-06 22:23:23', '2020-04-07 05:23:23'),
(15, 19, 3, 80, '2020-04-06 22:23:32', '2020-04-07 05:23:32'),
(16, 20, 2, 80, '2020-04-06 22:38:06', '2020-04-07 05:38:06'),
(17, 20, 1, 35, '2020-04-06 22:38:17', '2020-04-07 05:38:17'),
(18, 20, 3, 95, '2020-04-06 22:38:32', '2020-04-07 05:38:32');

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
(4, '2020_03_24_170934_create_siswa_table', 1);

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
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(14, 3, 'Aziel', 'Ilham', 'L', 'Islam', 'Magelang', 'laravel.png', '2020-03-29 19:14:43', '2020-04-03 07:25:32'),
(15, 4, 'Felly', 'Hedriani Laily', 'P', 'Islam', 'Sentiong', '26025775_1939054686109042_1205040066438476757_o.jpg', '2020-04-03 07:58:59', '2020-04-03 08:01:08'),
(17, 6, 'Aziz', 'Ghazali', 'L', 'Islam', 'Jakarta Selatan', '65996729_2204504922996635_2213358696744878080_n.jpg', '2020-04-05 05:27:09', '2020-04-06 21:15:18'),
(18, 7, 'Alica', 'Putri', 'P', 'Islam', 'Tangerang', '898ef7ace2f82938e9db1d923a0b3ded.jpg', '2020-04-06 21:29:39', '2020-04-06 22:36:58'),
(19, 8, 'Hafif', 'Syah Risal', 'L', 'Islam', 'Semarang', 'avatar_1.jpg', '2020-04-06 22:22:41', '2020-04-06 22:22:54'),
(20, 9, 'Saba', 'Banten', 'L', 'Islam', 'Rangkasbitung', NULL, '2020-04-06 22:37:50', '2020-04-06 22:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'Fuad Muhammad Nur', 'fuadmuhammadn@gmail.com', NULL, '$2y$10$jrpIiwuakBYEwm6ACsthme0DJ0380w.C6xLl860TsVrnvwb6fY38i', 'Cv9AOD3qg9du4A3VXnQSJbBItD9tas625n77PWvpguxK6W2pxFINRG2AwUzA', '2020-03-26 20:25:59', '2020-03-26 20:25:59'),
(3, 'siswa', 'Aziel', 'Ilham@gmail.com', NULL, '$2y$10$WyRkiR8hA1u6QpnzGL9cMebfc1VCQvysojZQQCZW8bgwrO14IaFiO', 'fRPbEQweDUZvuOj736Ump1AR6IkQ99TLGQsWMtmSpDFO1eE994iaLjWMsz58', '2020-03-29 19:14:43', '2020-03-29 19:14:43'),
(4, 'siswa', 'Angelina', 'angelivira@gmail', NULL, '$2y$10$YaT8XRklmQQLl6tNSgp47.CTlxDcwoXZJUN6ohy11q0n2WGUXjf2q', 'NjxmokcllbJsPMKeAcjAkXCNjeb1cK6Ib02e7bvt3bYzuoeH96LKTDqNk7pr', '2020-04-03 07:58:59', '2020-04-03 07:58:59'),
(6, 'siswa', 'Aziz', 'aziz@gmail.com', NULL, '$2y$10$rZSBU8Qx8z9ZhceYBfMHse2PhB2Ah4MPmCP46rBDAvw8ukugOotZK', '1iLg6skltuxmXz78VsL2SgvLC0sbdw3SvuBjSdYfYIxdj8Slsvh1yTP9ozdi', '2020-04-05 05:27:09', '2020-04-05 05:27:09'),
(7, 'siswa', 'Alica', 'alica@gmail.com', NULL, '$2y$10$FyS8Iv/lRETPU82fVaHjbuaeBUVaAp7MgSw34jJlW4XNwWH4zpHiS', 'wGIfugjPA1fJwadWw6yCQnwDugW1NHMqUHUCoBnkTWOxbZuAB4m1a1BTg5qS', '2020-04-06 21:29:39', '2020-04-06 21:29:39'),
(8, 'siswa', 'Hafif', 'hafif@gmail.com', NULL, '$2y$10$PS2viimvW4xKbO.zJ4Dg7O8Vbcx4FFJ12FNPsg9J3zPtPvPDrjjVW', 'tKHEGGHMaoFQgav0XDPJbQTLAY4mpiicvaO2Tkvx3837gZnEyQn4Q9YBMoOD', '2020-04-06 22:22:41', '2020-04-06 22:22:41'),
(9, 'siswa', 'Saba', 'sababanten@gmail.com', NULL, '$2y$10$mCk.cX5ZLqads6fZqtkA6.67SGi9ZUixTie1y7fid.yDvFJmBE8wK', 'K1G9xjGEjZ36QMOQXGAfqKcLlzITREL20KZ3A69wOiKv5BFK5lQpqG3CthwM', '2020-04-06 22:37:50', '2020-04-06 22:37:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
