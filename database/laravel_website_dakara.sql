-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_website_dakara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `email`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Zulfi', 'zulfi@gmail.com', '089511122333', 'jakal', '2024-07-02 08:18:57', '2024-07-02 08:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `tanggal_appointment` date NOT NULL,
  `waktu_appointment` varchar(8) NOT NULL,
  `bundeling` enum('Event','Wedding','Graduation') NOT NULL,
  `tempat_shoot` varchar(255) NOT NULL,
  `total_pembayaran` varchar(255) NOT NULL,
  `jenis_pembayaran` enum('Cash','Transfer') NOT NULL,
  `status_pembayaran` enum('Lunas','DP') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `nama_customer`, `email`, `alamat`, `no_telp`, `tanggal_appointment`, `waktu_appointment`, `bundeling`, `tempat_shoot`, `total_pembayaran`, `jenis_pembayaran`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 'zulfia', '', '', '0899898989', '2024-06-21', '00:00:', 'Event', 'pantai', '100000', 'Cash', 'DP', '2024-06-20 10:45:38', '2024-06-21 00:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customers` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `tanggal_appointment` date NOT NULL,
  `waktu_appointment` time NOT NULL,
  `bundeling` enum('Event','Wedding','Graduation') NOT NULL,
  `tempat_shoot` varchar(255) NOT NULL,
  `total_pembayaran` varchar(255) NOT NULL,
  `jenis_pembayaran` enum('Cash','Transfer') NOT NULL,
  `status_pembayaran` enum('Lunas','DP') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `nama_customers`, `email`, `alamat`, `no_telp`, `tanggal_appointment`, `waktu_appointment`, `bundeling`, `tempat_shoot`, `total_pembayaran`, `jenis_pembayaran`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 'Shinta Putri', 'shintap@gmail.com', 'Cangkringan, Sleman', '082777111332', '2024-07-07', '15:12:05', 'Graduation', 'kampus', '250.000', 'Transfer', 'DP', '2024-07-02 07:48:12', '2024-07-02 07:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `bundelings`
--

CREATE TABLE `bundelings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bundeling` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat` longtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `gender` enum('P','L') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama_customer`, `alamat`, `email`, `no_telp`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Livia', '<p>Sleman</p>', 'descalivia@gmail.com', '0888888888', 'P', '2024-06-20 08:40:34', '2024-06-20 08:40:34'),
(2, 'zulfia', '<p>mudal</p>', 'zulfia@gmail.com', '08765432', 'P', '2024-06-26 02:31:48', '2024-06-26 02:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `custs`
--

CREATE TABLE `custs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `birth` text NOT NULL,
  `alamat` text NOT NULL,
  `biodata` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fotografers`
--

CREATE TABLE `fotografers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fotografer` varchar(255) NOT NULL,
  `spesialis_fotografer` enum('Fotografer','Videografer') NOT NULL,
  `notelp_fotografer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fotografers`
--

INSERT INTO `fotografers` (`id`, `nama_fotografer`, `spesialis_fotografer`, `notelp_fotografer`, `created_at`, `updated_at`) VALUES
(1, 'M Azizul Hakim', 'Fotografer', '087777777', '2024-06-21 00:10:25', '2024-06-21 00:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_06_20_150332_create_customers_table', 2),
(4, '2024_06_20_161907_create_appointments_table', 3),
(5, '2024_06_21_064416_create_fotografers_table', 4),
(6, '2024_06_25_081643_create_admins_table', 5),
(7, '2024_06_26_165331_create_custs_table', 6),
(8, '2024_07_02_133126_create_bookings_table', 7),
(9, '2024_07_02_145636_create_admins_table', 8),
(10, '2024_07_02_152022_create_bundelings_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dakara', 'dakarahouse@gmail.com', NULL, '$2y$10$LGI.A6sHG8YP2bQi8Kf3L.46hs3RzC8khIlmLI1hGgcV.vtd0NOYi', 'yVIanubPBGy57HouH5G3wYYua3z9rbQCVNoCcHbTaQDL2EFmB5waIyrOBiQk', '2024-06-20 08:00:02', '2024-06-20 08:00:02'),
(2, 'firma', 'firma@gmail.com', NULL, '12345678', NULL, '2024-07-02 03:23:40', '2024-07-02 03:23:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_customer` (`nama_customer`),
  ADD UNIQUE KEY `nama_customer_2` (`nama_customer`),
  ADD UNIQUE KEY `nama_customer_3` (`nama_customer`),
  ADD UNIQUE KEY `nama_customer_4` (`nama_customer`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundelings`
--
ALTER TABLE `bundelings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_customer` (`nama_customer`);

--
-- Indexes for table `custs`
--
ALTER TABLE `custs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fotografers`
--
ALTER TABLE `fotografers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bundelings`
--
ALTER TABLE `bundelings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custs`
--
ALTER TABLE `custs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotografers`
--
ALTER TABLE `fotografers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
