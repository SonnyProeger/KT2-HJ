-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 mei 2020 om 11:25
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kt2hj`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE `bestellingen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `besteldatum` datetime NOT NULL,
  `medewerkers_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `vestigingen_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestellingen`
--

INSERT INTO `bestellingen` (`id`, `besteldatum`, `medewerkers_id`, `status_id`, `users_id`, `vestigingen_id`, `created_at`, `updated_at`) VALUES
(1, '2005-09-27 00:23:40', 1, 2, 14, 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(2, '1989-04-13 21:12:43', 2, 3, 15, 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(3, '2010-06-22 19:03:29', 3, 3, 16, 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(4, '1973-08-13 07:17:22', 4, 3, 17, 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(5, '2010-06-05 02:05:05', 5, 1, 18, 1, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(6, '1989-07-22 13:16:38', 6, 2, 19, 2, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(7, '1980-04-16 14:48:23', 7, 1, 20, 2, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(8, '2003-09-14 04:14:39', 8, 1, 21, 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(9, '1988-09-26 00:26:33', 9, 1, 22, 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(10, '2005-12-17 13:18:58', 10, 3, 23, 1, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(11, '1983-04-06 19:29:54', 11, 2, 24, 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(12, '2003-03-07 15:17:05', 12, 1, 25, 1, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(13, '1974-04-15 13:59:36', 13, 2, 26, 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(14, '1978-06-25 02:07:08', 14, 2, 27, 1, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(15, '1977-08-07 12:26:13', 15, 3, 28, 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(16, '1990-12-22 00:45:29', 16, 1, 29, 2, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(17, '1992-06-18 13:35:22', 17, 3, 30, 1, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(18, '1988-11-15 15:37:03', 18, 1, 31, 1, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(19, '1974-05-24 06:08:29', 19, 1, 32, 2, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(20, '1980-12-20 05:43:57', 20, 3, 33, 1, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(21, '1971-07-28 00:59:24', 21, 1, 34, 1, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(22, '2012-05-24 03:06:48', 22, 3, 35, 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(23, '2003-03-17 00:56:58', 23, 1, 36, 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(24, '2017-03-15 22:38:33', 24, 3, 37, 2, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(25, '1974-09-29 12:34:52', 25, 1, 38, 2, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(26, '2018-06-24 00:28:32', 26, 2, 39, 2, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(27, '1977-04-16 13:13:26', 27, 2, 40, 1, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(28, '2002-12-23 16:22:05', 28, 2, 41, 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(29, '2006-08-08 19:35:04', 29, 3, 42, 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(30, '2009-10-17 16:32:05', 30, 1, 43, 2, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(31, '1980-10-11 14:07:24', 31, 3, 44, 2, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(32, '1997-05-24 15:53:44', 32, 2, 45, 2, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(33, '1979-11-20 21:09:46', 33, 2, 46, 1, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(34, '2017-12-11 05:24:01', 34, 3, 47, 1, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(35, '1989-10-14 04:47:47', 35, 1, 48, 2, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(36, '2003-03-26 23:51:50', 36, 3, 49, 1, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(37, '1973-03-07 12:45:50', 37, 2, 50, 2, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(38, '1977-01-31 02:40:24', 38, 2, 51, 1, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(39, '1990-02-23 22:33:51', 39, 3, 52, 2, '2020-05-07 11:21:12', '2020-05-07 11:21:12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelregels`
--

CREATE TABLE `bestelregels` (
  `bestellingen_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `aantal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestelregels`
--

INSERT INTO `bestelregels` (`bestellingen_id`, `products_id`, `aantal`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(2, 3, 4, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(3, 2, 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(4, 1, 6, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(5, 3, 5, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(6, 3, 4, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(7, 3, 3, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(8, 1, 6, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(9, 2, 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(10, 1, 5, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(11, 3, 1, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(12, 3, 5, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(13, 1, 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(14, 2, 6, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(15, 2, 2, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(16, 3, 2, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(17, 1, 7, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(18, 3, 5, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(19, 1, 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(20, 2, 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(21, 2, 6, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(22, 1, 5, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(23, 1, 6, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(24, 2, 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(25, 2, 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(26, 2, 5, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(27, 1, 5, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(28, 1, 4, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(29, 3, 1, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(30, 2, 4, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(31, 3, 7, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(32, 1, 4, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(33, 3, 3, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(34, 1, 4, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(35, 2, 3, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(36, 3, 2, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(37, 1, 5, '2020-05-07 11:21:12', '2020-05-07 11:21:12'),
(38, 1, 3, '2020-05-07 11:21:12', '2020-05-07 11:21:12'),
(39, 1, 7, '2020-05-07 11:21:12', '2020-05-07 11:21:12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
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
-- Tabelstructuur voor tabel `medewerkers`
--

CREATE TABLE `medewerkers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voornaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tussenvoegsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achternaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vestigingen_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `medewerkers`
--

INSERT INTO `medewerkers` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `vestigingen_id`, `created_at`, `updated_at`) VALUES
(1, 'George Mayer', ' ', 'Boyle', 1, '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(2, 'Prof. Florencio Runte', ' ', 'Adams', 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(3, 'Orval Morar', ' ', 'Windler', 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(4, 'River Russel', ' ', 'Swaniawski', 1, '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(5, 'Zion Senger', ' ', 'Vandervort', 1, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(6, 'Gerard Altenwerth', ' ', 'Johnson', 1, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(7, 'Armand Raynor II', ' ', 'Schroeder', 1, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(8, 'Vincenzo Hermiston III', ' ', 'Jones', 2, '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(9, 'Natasha Lesch', ' ', 'Bergstrom', 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(10, 'King Herman', ' ', 'Stark', 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(11, 'Alyce Sporer', ' ', 'Brakus', 2, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(12, 'Gus Konopelski', ' ', 'Heidenreich', 1, '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(13, 'Abdul Gislason', ' ', 'Crooks', 1, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(14, 'Damon Jaskolski', ' ', 'Kuphal', 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(15, 'Tressa Swift', ' ', 'Heller', 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(16, 'Obie Spinka', ' ', 'Heaney', 2, '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(17, 'Ambrose Christiansen', ' ', 'Luettgen', 1, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(18, 'Alexis Metz', ' ', 'Borer', 2, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(19, 'Dr. Flo Champlin', ' ', 'Pouros', 1, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(20, 'Linwood Dickens', ' ', 'Larson', 1, '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(21, 'Emelie Kshlerin', ' ', 'Schuppe', 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(22, 'Jordy Eichmann', ' ', 'Williamson', 1, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(23, 'Mrs. Ila Hodkiewicz', ' ', 'Collier', 1, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(24, 'Prof. Jevon Miller DDS', ' ', 'Nienow', 2, '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(25, 'Annabel Zemlak Jr.', ' ', 'Hartmann', 2, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(26, 'Rylee Runolfsdottir', ' ', 'Glover', 2, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(27, 'Faye Yost', ' ', 'Bergstrom', 1, '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(28, 'Wilfred Fay', ' ', 'Nienow', 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(29, 'Prof. Wilburn Murphy', ' ', 'Grant', 2, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(30, 'Kyler Nienow', ' ', 'Swift', 1, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(31, 'Lupe Wiegand', ' ', 'Swaniawski', 2, '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(32, 'Ms. Jude Yundt', ' ', 'VonRueden', 1, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(33, 'Devin Sanford III', ' ', 'O\'Reilly', 2, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(34, 'Amara Kessler', ' ', 'Vandervort', 1, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(35, 'Elmer Murphy', ' ', 'Hickle', 1, '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(36, 'Zack Ferry', ' ', 'Littel', 1, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(37, 'Prof. Piper Homenick', ' ', 'Abshire', 1, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(38, 'Elvie Conn', ' ', 'Goyette', 2, '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(39, 'Heber Monahan', ' ', 'Kerluke', 2, '2020-05-07 11:21:11', '2020-05-07 11:21:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_06_115407_create_status_table', 1),
(5, '2020_05_06_064049_create_vestiging_table', 1),
(6, '2020_05_06_073815_create_medewerker_table', 1),
(7, '2020_05_06_090539_create_bestelling_table', 1),
(8, '2020_05_06_091333_create_product_table', 1),
(9, '2020_05_06_123638_create_bestelregel_table', 1),
(10, '2020_05_07_105443_add_image_to_products_table', 1),
(11, '2020_05_07_111845_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(3, 'App\\User', 2),
(3, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'delete-customer', 'web', '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(2, 'view-all-orders', 'web', '2020-05-07 11:20:58', '2020-05-07 11:20:58'),
(3, 'view-all-customers', 'web', '2020-05-07 11:20:58', '2020-05-07 11:20:58');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `omschrijving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prijs` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `omschrijving`, `image_path`, `prijs`, `created_at`, `updated_at`) VALUES
(1, 'Artisto veevoer', 'images/veevoer.jpg', 67, '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(2, 'Schroeven 5mm / 2 kg', 'images/schroeven.jpg', 11, '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(3, 'Sojavlokken', 'images/sojavlokken.jpg', 35, '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(4, 'Snacks gevogelte', 'images/gevogelte.jpg', 55, '2020-05-07 11:20:57', '2020-05-07 11:20:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-05-07 11:20:57', '2020-05-07 11:20:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'in behandeling', '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(2, 'gereed', '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(3, 'afgeleverd', '2020-05-07 11:20:57', '2020-05-07 11:20:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voornaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tussenvoegsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achternaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `woonplaats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `email`, `adres`, `postcode`, `woonplaats`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sonny', 'admin', 'proeger', 'sonny-admin@live.nl', '7543 Cyril Via', '1234AB', 'West Samir', '$2y$10$4kb2kKTKNvvmIkhnERnBV.utRvkeSwoT1.TJ6TkHHdkiBW24vKNSe', '2020-05-07 11:20:58', 'UqeJKENYC7RkvNxL7tpp3JexwfvAVSuQJArP0IxUC29CcfIQcjttMlJ0uneP', '2020-05-07 11:20:58', '2020-05-07 11:20:58'),
(2, 'Sonny', 'view and delete', 'proeger', 'sonny-delete-users@live.nl', '56218 Lonny Vista Suite 334', '1234AB', 'Bayerfurt', '$2y$10$9KTKanP9udsk0W1uuixEsuYZWaAg9Ck/Kg4TSXdDTlInmkb5z6ciC', '2020-05-07 11:20:58', 'jJJOkJs9qYZNbYETz8Z4GSbvt0z3HHy0tfJESf8vIOAr49hTzqy9bKb4q1qH', '2020-05-07 11:20:58', '2020-05-07 11:20:58'),
(3, 'Sonny', 'view', 'proeger', 'sonny-view-users@live.nl', '33620 Eldon Via', '1234AB', 'Ortizville', '$2y$10$VmflGeXwneViyjmAFpRESeGPEz6aaz4ygOlOOxFuz9wR7VwEi2YUi', '2020-05-07 11:20:58', 'd4Wtk35dcL2sKocXQhKHBztwVKbfX7jDq08mFZaxxMjIIeL56rHs1vikkD9L', '2020-05-07 11:20:59', '2020-05-07 11:20:59'),
(5, 'Kurt Deckow', 'de', 'Leannon', 'valentina53@veum.org', '3883 Wolff Green Suite 956', '1234AB', 'Adelaton', '$2y$10$0vZi8ohDXhbcTzt2ddFRNeUZ2PPOflnWTVuI0M/m2UbNW3EQOtIue', '2020-05-07 11:20:59', 'P6aKcB4SOp', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(6, 'Miss Dena Gottlieb I', 'de', 'Cronin', 'eva04@skiles.net', '2298 Quinton Radial', '1234AB', 'Williamside', '$2y$10$pSMjN15qS8FrAwk3L9iAeOeabFOJZ3xpqoXPdokWBoIhKvQwm8F9C', '2020-05-07 11:20:59', 'urZqjRuU5E', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(7, 'Dr. Joaquin Kerluke Jr.', 'de', 'Lemke', 'deion22@gmail.com', '6369 Bosco Stravenue Suite 508', '1234AB', 'Port Griffin', '$2y$10$NxYR6H4pf5SHNhepsrVrqeYu1mAclhKIfxSwVgfjmjsxwr8aYieYy', '2020-05-07 11:20:59', 'HICxp4IDop', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(8, 'Pinkie Cronin', 'de', 'Rogahn', 'gregg.schroeder@howe.info', '619 Aufderhar Village', '1234AB', 'Nicolasview', '$2y$10$LOFFjOCzpJ5ZNBLul32C8OK1i6vlxU5qoiWaLtcDGAvvzFt3gjhna', '2020-05-07 11:21:00', 'hZBeWpjnGI', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(10, 'Dr. Hugh Beer II', 'de', 'Hessel', 'tomasa.quigley@yahoo.com', '548 Ron Village Suite 822', '1234AB', 'Consuelomouth', '$2y$10$G3IZHDJFKVDd7fG.HD9jTOiQ9/IUlKrZSJJtQ1s6JGJnu9VslWR0q', '2020-05-07 11:21:00', 'Pi0WCa8kil', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(11, 'Verner Hyatt', 'de', 'Bernier', 'terence.huels@hotmail.com', '2660 Turner Route Apt. 584', '1234AB', 'Warrenton', '$2y$10$YAhmm1VXbU.pCD4iXsxw1OFpSSmas3a5vMl.4RsE/yOcIi9gUKfiy', '2020-05-07 11:21:01', 'xj0Q3BlsY8', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(12, 'Gabriel Toy', 'de', 'Labadie', 'okuneva.angela@yahoo.com', '9340 Klein Skyway', '1234AB', 'Lake Daren', '$2y$10$aC5bhqwVJnk2bTt.4iM4l.XNkaqQJ34KwYu28asYaj9E/LZm/0uRy', '2020-05-07 11:21:01', 'xpHaA78Emu', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(13, 'Hailee Tillman V', 'de', 'Hackett', 'ncassin@yahoo.com', '9589 Kaylah Harbors', '1234AB', 'North Verla', '$2y$10$nCZUFjvQIR77VaRrTQT0Neyb947iH4z8wxSEunABzbaZuTN4pTME6', '2020-05-07 11:21:01', 'TJsMlGQlm9', '2020-05-07 11:21:01', '2020-05-07 11:21:01'),
(14, 'Jessy Will', 'de', 'Beer', 'gislason.estell@glover.net', '89509 Colby Ranch Apt. 767', '1234AB', 'Terryport', '$2y$10$PNbgXeWe/ERwicstC7jYd.CItpZ/7YhmKIU.ZWHZbf2ipxr3P1TAS', '2020-05-07 11:21:01', 'cIkDgp2RY7KF1X2OFNRey6xuyLgubhAQNmqUwU78XvDgdEmjhPL3Hy4U2jpM', '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(15, 'Sasha Nolan', 'de', 'Smith', 'cmosciski@hotmail.com', '858 Ziemann Ports Suite 322', '1234AB', 'Haagport', '$2y$10$qshSkkSt/XyEVJuNb8nWA.dSq00izEtsmpMtRBWmk7LS2X3eA3VNa', '2020-05-07 11:21:02', 'm4py2nTQvD', '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(16, 'Hosea Spencer', 'de', 'Upton', 'ghartmann@gmail.com', '4389 Hills Squares Suite 132', '1234AB', 'Port Alize', '$2y$10$o.AVeypg8m1R3nAFL0Jhue7dyQSrvGQwar7QxENhCO3Vh/VyGWWla', '2020-05-07 11:21:02', 'tdMkc6nXaR', '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(17, 'Ms. Amber O\'Keefe DVM', 'de', 'Balistreri', 'wdickinson@bogisich.com', '7158 Dale Villages Suite 489', '1234AB', 'Lake Jerald', '$2y$10$5ciJac.F/Qhaa3lPRgFmMeJqvUybYa3rQXyWW6paYexYTTNcIBBqe', '2020-05-07 11:21:02', '26z854dG17', '2020-05-07 11:21:02', '2020-05-07 11:21:02'),
(18, 'Cielo Gusikowski', 'de', 'Pouros', 'osanford@fisher.com', '39320 Shaina Mall', '1234AB', 'Port Gracielachester', '$2y$10$EuV9Bu.ip78IYL/yYz5kReMSQKdNsqPuJjz60XgrqEac2gZYhKNyy', '2020-05-07 11:21:03', 'cB2s4m3QfC', '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(19, 'Itzel Legros', 'de', 'Friesen', 'larson.bryon@hansen.biz', '46925 Dallas Pines Apt. 105', '1234AB', 'Runolfssonside', '$2y$10$fWn5QGAQ/jrUn5wdu8Tbve6PoKAt20q9jd2MNMVTh0vaG4KWR1vxy', '2020-05-07 11:21:03', 'LqB4tVvbsx', '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(20, 'Joaquin Harvey', 'de', 'Goyette', 'dhartmann@lang.net', '7018 Reggie Via Suite 369', '1234AB', 'New Mortonburgh', '$2y$10$2mvrdI8.wvzCY8TJ1/G1AeWQP8hJlrLytrnTczZ3JbLHey.YWjaAq', '2020-05-07 11:21:03', 'VPuwQz0ogF', '2020-05-07 11:21:03', '2020-05-07 11:21:03'),
(21, 'Geoffrey Ward', 'de', 'Feest', 'ccorkery@hotmail.com', '25468 Dashawn Ridges Apt. 911', '1234AB', 'Nicolasview', '$2y$10$7tSJ9FxBc4EW.U2L5R.Vcu7VT.3EIiB/IRHccnR4dNDAQ762cXwiC', '2020-05-07 11:21:03', 'abvNW696CV', '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(22, 'Nicklaus Stehr IV', 'de', 'Kub', 'winston59@hotmail.com', '9575 Stoltenberg Path Suite 639', '1234AB', 'South Justina', '$2y$10$dpP40OjkdI9vYvD8Ugoa.eMACb4MGjisf4BxWGvPFwRJUCtPx58BO', '2020-05-07 11:21:04', 'hRZm0bAvXn', '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(23, 'Ayla Lindgren', 'de', 'Murphy', 'ward.asa@mitchell.com', '355 Eldred Curve', '1234AB', 'Conradfort', '$2y$10$RCsVdUBi9wVhI5H5CfCKwOOcwqsJeADKZAadi6QV5LD3NMw3oMBha', '2020-05-07 11:21:04', '9k6DKaSxP4', '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(24, 'Josianne Ondricka', 'de', 'Pfannerstill', 'ureilly@gmail.com', '1398 Weber Club Apt. 700', '1234AB', 'New Cameron', '$2y$10$6xv3jnI8laYE9dI0ZhyyMumx1tO8/BT94lj4d1hXmFb9.wuYaTnXe', '2020-05-07 11:21:04', 'l1dG1zmHft', '2020-05-07 11:21:04', '2020-05-07 11:21:04'),
(25, 'Prof. Erwin Labadie Sr.', 'de', 'Emmerich', 'casper.robbie@gorczany.com', '973 Leffler Meadows Apt. 465', '1234AB', 'East Patrick', '$2y$10$M3oO/1PM5uzLmpMKSMA/eesDMO/hQ.ZplSaY/ctNYp3GuxbodfNPW', '2020-05-07 11:21:04', 'XARJjNvfB6', '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(26, 'Alek Schoen', 'de', 'Ferry', 'greenfelder.lupe@medhurst.com', '1066 Jacobs Road', '1234AB', 'East Brainbury', '$2y$10$.G0JOax/3kD3cOchGo.sT.mdSunelHlvLDqLCw8seH68gQFIscWoS', '2020-05-07 11:21:05', 'uS3pQsI99L', '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(27, 'Jedidiah Herman', 'de', 'Klein', 'adams.stuart@yahoo.com', '5216 Prohaska Plaza', '1234AB', 'Port Nettieshire', '$2y$10$m//eYFvysXu5UUJosKXAdeP7SJxOdoV9FvmxvZ7.Yp.MeVJ6DB8NO', '2020-05-07 11:21:05', 'OeFzGSvcDb', '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(28, 'Kailey Lebsack', 'de', 'Graham', 'pbechtelar@hotmail.com', '94549 Kaya Courts', '1234AB', 'Gretchenbury', '$2y$10$.nWTxmONfDDR1Bz8JA/zauRusZpfL9mXzjgmtyOe/Ic.DSJfIRhAu', '2020-05-07 11:21:05', '8gMhl0ukU8', '2020-05-07 11:21:05', '2020-05-07 11:21:05'),
(29, 'Carrie Wiegand', 'de', 'Stroman', 'vandervort.viva@bogan.net', '7721 DuBuque Courts', '1234AB', 'Labadieville', '$2y$10$M2Rq730v3zEY8WcTqUA/Tu6QjWwnXs8W3c.vkaqnTdo/B0ytDmHzm', '2020-05-07 11:21:05', 'AwF31URAzJ', '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(30, 'Dr. Oscar Bogisich', 'de', 'Hackett', 'sabina.torp@yahoo.com', '184 Kshlerin Port', '1234AB', 'Gregoriobury', '$2y$10$sLzcUmnTggBEBiHOzo6SuOZtWXhLuX1Bs6CinYtCf/sahanPgkty6', '2020-05-07 11:21:06', 'jWhxB8zfBu', '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(31, 'Prof. Trudie Kemmer IV', 'de', 'Miller', 'nicolas.cale@gmail.com', '6165 Hegmann Tunnel', '1234AB', 'South Kieran', '$2y$10$AvYYMbtBUBhC5pqbdmNhsu8DuXJTX8FXDH66oCkVQdCTw4eRRAm4y', '2020-05-07 11:21:06', 'rHJyjodts9', '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(32, 'Clifton Schaefer', 'de', 'Beer', 'verner.sporer@yahoo.com', '23394 Cruickshank Views', '1234AB', 'Lake Freeman', '$2y$10$skzI.uRSUchLl6hllr49SuP6gbaG8aiNlHsRy2lveegdKwKgXnFPK', '2020-05-07 11:21:06', 'EIy8luIQcM', '2020-05-07 11:21:06', '2020-05-07 11:21:06'),
(33, 'Llewellyn Conn', 'de', 'Oberbrunner', 'murray.kelsi@ernser.com', '52126 Koelpin Path Suite 105', '1234AB', 'Revaville', '$2y$10$/Azo2D7dRTkQhakdd2Vf8OzwQtBs0zVLKDuvJHoqtS8/3TZ64IN/q', '2020-05-07 11:21:06', '5Q6ex0ZSsj', '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(34, 'Tre Larkin', 'de', 'Collier', 'vernser@gmail.com', '4989 Quitzon Corner', '1234AB', 'North Collinfort', '$2y$10$vvqu/egD/7h7an0RDguip.6Zmnv70E2BKObq3ynpYTIjTuGWVnDGi', '2020-05-07 11:21:07', 'gEj5PsaBqG', '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(35, 'Dr. Kali Schneider', 'de', 'Bartoletti', 'casey30@gmail.com', '138 Gleason Burgs', '1234AB', 'Nicolasland', '$2y$10$5FRt9bSqruH6jtdOkQHV5uRT4c6/QMqTbDzj.ksXu9qQNTdCPQk2u', '2020-05-07 11:21:07', 'QDVHlDP5b6', '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(36, 'Jamison Torphy', 'de', 'Keebler', 'elfrieda.smitham@price.com', '3366 Watsica Motorway Apt. 687', '1234AB', 'New Idaville', '$2y$10$QsryN7cOAiGuHZls8XLysu8N1dGuHcOc9Y/jdovdvlHueok/SzLEO', '2020-05-07 11:21:07', 'sJ40QQRhQK', '2020-05-07 11:21:07', '2020-05-07 11:21:07'),
(37, 'Lacey Kohler', 'de', 'Sanford', 'njones@brekke.com', '594 Hackett Shores Apt. 583', '1234AB', 'Guiseppeside', '$2y$10$c7IEg2N7Gszf.85zd.1FP.2Nz0ecnoUVXE2di5xLiS.n7ERD/jsLS', '2020-05-07 11:21:07', 'w6wckYDfSU', '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(38, 'Jerel Hettinger IV', 'de', 'Hyatt', 'jerry.schimmel@gmail.com', '357 Patrick Road', '1234AB', 'Port Shanyfort', '$2y$10$zVqCEQhTBhRlDot.VpizNO7n828c6VdXuNrjzUCrYCZcwqmCPJVt.', '2020-05-07 11:21:08', 'tXSlemSv2s', '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(39, 'Dr. Lester Jast', 'de', 'Bauch', 'erdman.jack@hotmail.com', '86215 Windler Extension', '1234AB', 'Michelleton', '$2y$10$oremffVyw6sED7C3uzQtj.GpEj6vCTo3THC.v3.Cirv1z.U2MBcTq', '2020-05-07 11:21:08', '66Ne8FkuTy', '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(40, 'Dr. Adaline Schowalter DDS', 'de', 'Smitham', 'vschuster@marvin.com', '3125 Von Knoll Suite 946', '1234AB', 'Lelandfort', '$2y$10$vq/K1xSuWbNOsn/dSvt0buXF13ciGTACBmfXSacMSvCF3icAUL3/O', '2020-05-07 11:21:08', 'guvkoZKTSk', '2020-05-07 11:21:08', '2020-05-07 11:21:08'),
(41, 'Emory Kilback', 'de', 'Feil', 'zheaney@yahoo.com', '4232 Stroman Well', '1234AB', 'Gislasonfort', '$2y$10$nUOm6UQ8MGenYC3CIf/toO4SD.HzqcscApJnYKnRc4H4/P5nO4bWO', '2020-05-07 11:21:09', 'S7GbaGsCcW', '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(42, 'Boyd Keebler', 'de', 'Schumm', 'lturcotte@toy.com', '9979 Oberbrunner Stream', '1234AB', 'New Rosalyn', '$2y$10$JrWjM7BzwjPU7I6J88oUZeEdXvOT06bVZmboAc8dQvvVu3jqg6Pfu', '2020-05-07 11:21:09', 'ABl9gMTnad', '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(43, 'Isaiah Considine MD', 'de', 'Lockman', 'casimir21@waters.com', '8032 Winnifred Path', '1234AB', 'Mayerland', '$2y$10$vWhg.YojhBZKVttQK6ive.88X6RiRSb9bEbTEIYNP6xVm44md1A82', '2020-05-07 11:21:09', 'rCAxAKogOJ', '2020-05-07 11:21:09', '2020-05-07 11:21:09'),
(44, 'Russel Greenholt', 'de', 'Beahan', 'qreynolds@gmail.com', '6488 Kellen Meadow', '1234AB', 'South Curtberg', '$2y$10$.K7yZbpNVgH/t1SSrDOO1OKxMY5XdKFa58hndjoUew6Ld.c9qJ8bK', '2020-05-07 11:21:09', 'wOv8mfpUDO', '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(45, 'Stan O\'Hara V', 'de', 'Harvey', 'dkuvalis@gulgowski.info', '124 Sanford Springs Suite 262', '1234AB', 'Markborough', '$2y$10$/CK7zj4SXGpvVYl6qyfet.GUnCG6/jgzlbIE0kwdSo8O4KEkZ/lJy', '2020-05-07 11:21:10', 'pB2NFJ6oK8', '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(46, 'Adrienne Schultz', 'de', 'Dicki', 'abigayle.breitenberg@gmail.com', '3399 Nickolas Island', '1234AB', 'West Cyrilton', '$2y$10$h317gW91cgr0rcsBILHJBepbA4cwhHqfGmBsj4r08QTMBhgR1zdnu', '2020-05-07 11:21:10', '5S2kIdbYHP', '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(47, 'Prof. Aaron Ferry', 'de', 'Torp', 'bradtke.brian@hotmail.com', '7131 Mustafa Way', '1234AB', 'Maiyaberg', '$2y$10$oiLN9fpEHeh71rXNg7V6..jKtbRttsnnmZyauHA3SFSwplDNXhwku', '2020-05-07 11:21:10', '7GKTsuV3RS', '2020-05-07 11:21:10', '2020-05-07 11:21:10'),
(48, 'Garrick Altenwerth', 'de', 'Jacobson', 'roman32@gmail.com', '89887 Smitham Trace Apt. 543', '1234AB', 'Broderickville', '$2y$10$l.Org9cxrGGHHlnzwmIOrOjF1DyowZ.2EfQix770U.ANc0EuNOr..', '2020-05-07 11:21:10', '5gG7AUvRA1', '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(49, 'Dario Pfannerstill', 'de', 'Herzog', 'bauch.kaci@gmail.com', '54229 Ava Neck Suite 835', '1234AB', 'Ewaldfurt', '$2y$10$5TeCmcJGKAzBWUVpsePBqeC3bp/K1llRzGwauGD.g4AuktLvAouee', '2020-05-07 11:21:11', 'ksdGwacnXO', '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(50, 'Prof. Maverick Reinger IV', 'de', 'Ebert', 'ljerde@yahoo.com', '876 Zemlak Groves Suite 127', '1234AB', 'Port Kenton', '$2y$10$FA25ZY/LSbbJQ9Xj.StsH.QW0JKONYqlWgN1AWYA6gSc8jXjjNX02', '2020-05-07 11:21:11', 'lfb8emrKtt', '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(51, 'Yvonne Eichmann DVM', 'de', 'Schumm', 'qreinger@schoen.net', '27665 Wunsch Islands', '1234AB', 'Schummville', '$2y$10$VbENugUuB/zDzgrEJY18UODRyiOLbD4RShTu4D0IKfa5qxig3sy/2', '2020-05-07 11:21:11', 'u2WzqtnpmH', '2020-05-07 11:21:11', '2020-05-07 11:21:11'),
(52, 'Mr. Santino Batz IV', 'de', 'White', 'schamberger.ray@padberg.com', '96803 Graham Knoll', '1234AB', 'Satterfieldmouth', '$2y$10$PwpNjMxWjRtwoR1VUqtZbu1w46.8TL5.BSGnolxm8l/Qe3vsQtjUe', '2020-05-07 11:21:11', 's1tqtvaJ4L', '2020-05-07 11:21:12', '2020-05-07 11:21:12'),
(53, 'Sonny', NULL, 'Proeger', 'sonnyproeger@live.nl', 'Hoptille 301', '1102pe', 'amsterdam', '$2y$10$dzSHUX5g6qms029KhMZjeeZ3hh2enr21Y0ehpk5q6Esjfi.rGGoNy', NULL, NULL, '2020-05-07 11:23:23', '2020-05-07 11:23:23');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vestigingen`
--

CREATE TABLE `vestigingen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `omschrijving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plaats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vestigingen`
--

INSERT INTO `vestigingen` (`id`, `omschrijving`, `adres`, `postcode`, `plaats`, `created_at`, `updated_at`) VALUES
(1, 'Handig joh Groningen', 'Overschiestraat 22', '4499 RK', 'Groningen', '2020-05-07 11:20:57', '2020-05-07 11:20:57'),
(2, 'Handig joh Friesland', 'underschiestraat 22', '5599 RK', 'Friesland', '2020-05-07 11:20:57', '2020-05-07 11:20:57');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bestellingen_medewerkers_id_foreign` (`medewerkers_id`),
  ADD KEY `bestellingen_status_id_foreign` (`status_id`),
  ADD KEY `bestellingen_users_id_foreign` (`users_id`),
  ADD KEY `bestellingen_vestigingen_id_foreign` (`vestigingen_id`);

--
-- Indexen voor tabel `bestelregels`
--
ALTER TABLE `bestelregels`
  ADD KEY `bestelregels_bestellingen_id_foreign` (`bestellingen_id`),
  ADD KEY `bestelregels_products_id_foreign` (`products_id`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `medewerkers`
--
ALTER TABLE `medewerkers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medewerkers_vestigingen_id_foreign` (`vestigingen_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexen voor tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexen voor tabel `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexen voor tabel `vestigingen`
--
ALTER TABLE `vestigingen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `medewerkers`
--
ALTER TABLE `medewerkers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT voor een tabel `vestigingen`
--
ALTER TABLE `vestigingen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD CONSTRAINT `bestellingen_medewerkers_id_foreign` FOREIGN KEY (`medewerkers_id`) REFERENCES `medewerkers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bestellingen_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bestellingen_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bestellingen_vestigingen_id_foreign` FOREIGN KEY (`vestigingen_id`) REFERENCES `vestigingen` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `bestelregels`
--
ALTER TABLE `bestelregels`
  ADD CONSTRAINT `bestelregels_bestellingen_id_foreign` FOREIGN KEY (`bestellingen_id`) REFERENCES `bestellingen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bestelregels_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `medewerkers`
--
ALTER TABLE `medewerkers`
  ADD CONSTRAINT `medewerkers_vestigingen_id_foreign` FOREIGN KEY (`vestigingen_id`) REFERENCES `vestigingen` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
