-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 01.27
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `registered_user` bigint(20) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `packet_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`id`, `registered_user`, `description`, `packet_id`, `created_at`, `updated_at`) VALUES
(1, 938, '<b>0.5X RESOURCE POWER</b><br>\r\n                            <b>500 MB </b>Disk Space<br>\r\n                            <b>Unlimited </b>Bandwidth<br>\r\n                            <b>1 </b>Domain <br>\r\n                            <b>Instant </b>Backup<br>\r\n                            <b>Unlimited SSL </b>Gratis Selamanya', 1, '2020-06-27 04:22:29', '2020-06-27 04:22:29'),
(2, 4168, '<b>1X RESOURCE POWER</b><br>\r\n                            <b>Unlimited </b>Disk Space<br>\r\n                            <b>Unlimited </b>Bandwidth<br>\r\n                            <b>Unlimited </b>POP3 Email<br>\r\n                            <b>Unlimited </b>Databases<br>\r\n                            <b>10 </b>Addon Domains<br>\r\n                            <b>Instant </b>Backup<br>\r\n                            <b>Domain Gratis </b>Selamanya<br>\r\n                            <b>Unlimited SSL </b>Gratis Selamanya', 2, '2020-06-28 21:20:21', '2020-06-28 21:20:21'),
(3, 10100, '<b>2X RESOURCE POWER</b><br>\r\n                            <b>Unlimited </b>Disk Space<br>\r\n                            <b>Unlimited </b>Bandwidth<br>\r\n                            <b>Unlimited </b>POP3 Email<br>\r\n                            <b>Unlimited </b>Databases<br>\r\n                            <b>Unlimited </b>Addon Domains<br>\r\n                            <b>Instant </b>Backup<br>\r\n                            <b>Domain Gratis </b>Selamanya<br>\r\n                            <b>Unlimited SSL </b>Gratis Selamanya<br>\r\n                            <b>Private </b>Name Server<br>\r\n                            <b>SpamAssasin </b>Mail Protection', 3, '2020-06-28 21:24:20', '2020-06-28 21:24:20'),
(4, 3552, '<b>3X RESOURCE POWER</b><br>\r\n                            <b>Unlimited </b>Disk Space<br>\r\n                            <b>Unlimited </b>Bandwidth<br>\r\n                            <b>Unlimited </b>POP3 Email<br>\r\n                            <b>Unlimited </b>Databases<br>\r\n                            <b>Unlimited </b>Addon Domains<br>\r\n                            <b>Magic Auto </b>Backup & Restore<br>\r\n                            <b>Domain Gratis </b>Selamanya<br>\r\n                            <b>Unlimited SSL </b>Gratis Selamanya<br>\r\n                            <b>Private </b>Name Server<br>\r\n                            <b>Prioritas </b>Layanan Support<br>\r\n                                <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\r\n                                <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\r\n                                <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\r\n                                <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\r\n                                <i class=\"fa fa-star\" aria-hidden=\"true\"></i>\r\n                            <br>\r\n                            <b>SpamExpert </b>Pro Mail Protection<br>', 4, '2020-06-28 21:25:49', '2020-06-28 21:25:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_26_105607_create_packets_table', 1),
(4, '2020_06_26_105658_create_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `packets`
--

CREATE TABLE `packets` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `discount_price` double NOT NULL,
  `is_bestseller` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `packets`
--

INSERT INTO `packets` (`id`, `name`, `price`, `discount_price`, `is_bestseller`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Bayi', 19900, 14900, 0, 1, '2020-06-27 04:22:29', '2020-06-27 04:22:29'),
(2, 'Pelajar', 46900, 23450, 0, 1, '2020-06-28 21:20:21', '2020-06-28 21:20:21'),
(3, 'Personal', 58900, 38900, 1, 1, '2020-06-28 21:24:20', '2020-06-28 21:24:20'),
(4, 'Bisnis', 109900, 65900, 0, 1, '2020-06-28 21:25:49', '2020-06-28 21:25:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_packet_id_foreign` (`packet_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `packets`
--
ALTER TABLE `packets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `packets`
--
ALTER TABLE `packets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_packet_id_foreign` FOREIGN KEY (`packet_id`) REFERENCES `packets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
