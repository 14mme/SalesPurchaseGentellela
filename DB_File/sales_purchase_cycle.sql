-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2024 pada 01.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_purchase_cycle`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Kode_Pelanggan` varchar(100) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Telepon` text NOT NULL,
  `Jumlah_Transaksi` int(11) NOT NULL,
  `Total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `Kode_Pelanggan`, `Nama`, `Alamat`, `Telepon`, `Jumlah_Transaksi`, `Total`, `created_at`, `updated_at`) VALUES
(1, '448000376', 'quisquam', 'Padangpanjang', '0272 7666 427', 1, 400725000, '1993-05-20 01:12:12', '2012-12-05 08:28:31'),
(2, '71', 'autem', 'Tangerang Selatan', '(+62) 699 1327 8198', 2, 1000, '1992-01-18 15:50:25', '2011-03-10 16:43:24'),
(3, '1241', 'odit', 'Sibolga', '0587 6860 7539', 9, 5987.38, '1982-02-08 13:28:52', '2014-04-05 19:53:50'),
(4, '9240033', 'rerum', 'Administrasi Jakarta Selatan', '0507 5269 2889', 6, 20983.2, '1985-12-22 00:55:30', '1995-06-06 17:57:17'),
(5, '6', 'odio', 'Pontianak', '0952 6851 834', 5, 1150590, '1994-08-29 05:34:19', '2022-08-26 18:48:18'),
(6, '92', 'omnis', 'Sawahlunto', '(+62) 803 0150 9915', 4, 25269500, '1993-02-15 04:26:14', '2023-04-12 01:03:08'),
(7, '794652', 'enim', 'Ambon', '0650 5179 878', 1, 8152.73, '2006-02-24 23:49:18', '1982-05-25 06:07:58'),
(8, '9192', 'iste', 'Tanjung Pinang', '(+62) 586 5140 445', 6, 1000, '2011-05-27 01:31:22', '2015-04-24 07:58:10'),
(9, '2', 'harum', 'Bandung', '(+62) 956 2927 512', 0, 110413000, '1998-05-20 14:24:54', '1999-08-18 13:16:26'),
(10, '38771', 'assumenda', 'Jayapura', '(+62) 452 9356 5069', 7, 12361100, '2011-04-12 03:57:29', '2006-03-02 20:29:41'),
(11, '977994538', 'perspiciatis', 'Bekasi', '(+62) 891 6002 109', 4, 1000, '2010-06-30 07:10:24', '2008-12-15 10:43:16'),
(12, '362267', 'temporibus', 'Banjar', '(+62) 593 7214 5673', 3, 3169.49, '2012-08-05 12:08:34', '1977-11-30 18:13:55'),
(13, '5', 'quis', 'Kupang', '(+62) 854 2815 8154', 0, 9969.18, '2005-04-27 19:43:05', '2017-12-11 04:29:15'),
(14, '26361336', 'nulla', 'Manado', '(+62) 739 2354 6036', 1, 23669.3, '1982-11-19 09:20:48', '1984-10-04 19:48:55'),
(15, '705088', 'officia', 'Kediri', '0770 2409 010', 2, 3360.21, '2012-02-12 09:00:14', '2004-08-05 02:43:38'),
(16, '361549608', 'ducimus', 'Manado', '(+62) 23 9161 3104', 9, 75649.2, '2000-01-14 04:31:02', '1985-04-05 11:33:03'),
(17, '426028966', 'sed', 'Tangerang', '0807 3457 0471', 8, 2035420, '1985-05-08 16:09:56', '2010-10-07 21:01:12'),
(18, '94716', 'quas', 'Administrasi Jakarta Barat', '(+62) 630 6226 2628', 9, 5283590, '1995-11-24 11:10:30', '2015-10-14 09:01:10'),
(19, '4', 'eum', 'Sibolga', '0281 3042 309', 1, 477949, '2015-03-04 07:57:36', '1985-03-05 19:59:44'),
(20, '609', 'quam', 'Palopo', '(+62) 658 5221 2415', 5, 8257.34, '1999-09-22 15:29:57', '1998-01-09 06:54:30'),
(21, '14841087', 'consequatur', 'Makassar', '024 2379 7328', 4, 1000, '2000-12-08 08:14:13', '2000-05-26 22:21:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2024_10_02_175752_create_sales_table', 2),
(10, '2024_10_02_220825_create_purchases_table', 3),
(11, '2024_10_02_230857_create_master_data_table', 4),
(12, '2024_10_02_231301_create_customers_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `success_url_title` varchar(191) NOT NULL,
  `cancel_url_title` varchar(191) NOT NULL,
  `shop_url` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `No_Transaksi` varchar(200) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Kode_supplier` int(11) NOT NULL,
  `Nama` varchar(150) NOT NULL,
  `Total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `purchases`
--

INSERT INTO `purchases` (`id`, `No_Transaksi`, `Tanggal`, `Kode_supplier`, `Nama`, `Total`, `created_at`, `updated_at`) VALUES
(1, 'd32f4f86c79e4ce5385610bf9e010c36', '1983-07-10 00:20:25', 7227, 'debitis', 2127.53, '1983-08-22 07:54:55', '2017-09-27 16:29:17'),
(2, 'd3938400e2968f222f4937c541dd52fb', '1983-10-14 15:53:49', 4449784, 'beatae', 121360, '1971-01-09 18:49:33', '2005-02-09 09:02:59'),
(3, 'c8c82cc3b5216b8b38bb666a57fb348b', '2007-06-17 05:56:43', 65, 'aliquid', 294877, '1999-01-08 04:49:48', '1971-11-03 12:54:55'),
(4, 'd7b12a02cd588f596d0a2ade96925a5c', '2002-12-19 00:58:40', 794, 'voluptates', 2105830, '1995-09-29 08:30:02', '1975-04-26 23:42:49'),
(5, '2d668763fc93a5cda36abe6a8a2f6ee7', '1982-02-22 03:41:26', 7, 'fugit', 1000, '1982-02-03 15:06:17', '2004-12-05 20:30:31'),
(6, 'e72cbc6fe4f272bb31a5807e87d5943c', '2002-10-16 05:24:37', 635307, 'illum', 1000, '2009-12-14 02:14:30', '2005-07-10 15:35:13'),
(7, '03f0f86bc0638590530a67d2a59c30b3', '1975-10-22 17:33:05', 992953, 'quaerat', 354953, '2015-08-16 13:51:34', '2014-01-08 14:02:00'),
(8, '05979e41e4045abb098a19e2b4a7d162', '1998-04-24 00:42:23', 807873285, 'saepe', 634279000, '2001-06-13 15:49:52', '1977-04-18 01:49:10'),
(9, 'a212980700e4ee6e51e48c96d1d9ed21', '2014-02-25 11:38:41', 0, 'qui', 15521.3, '1985-01-12 07:37:02', '1976-09-30 07:57:10'),
(10, 'b87a149afd2d02819ff45c2b8080f767', '1996-10-29 20:41:06', 12532839, 'est', 1000, '1992-05-20 20:14:42', '1983-06-24 10:37:40'),
(11, '94bab98988bac436a755e8f4c434dc18', '2017-12-11 08:16:59', 4, 'voluptatem', 1000, '1986-08-13 10:39:37', '2011-10-06 11:27:33'),
(12, 'bf18d28d7aa9feeaa0c41d3f77bf8a77', '1986-04-06 17:48:01', 9, 'qui', 3975.45, '2004-09-28 03:14:47', '2021-09-04 08:34:58'),
(13, '55555930b2bcf868bbc1d240b24a5b40', '1980-11-26 00:34:40', 4271366, 'et', 1000, '1985-01-10 12:38:22', '1981-09-03 18:08:55'),
(14, 'd0d6d46924e1315bc5d701afa3b5b351', '1973-02-14 23:09:26', 4124450, 'iste', 1000, '1982-10-03 05:16:54', '1981-03-27 02:04:36'),
(15, 'f5c32830e63a2622ea653fcd7d4cfab0', '2009-12-12 11:37:55', 68083, 'et', 1000, '1975-07-23 14:42:19', '2006-08-12 09:00:05'),
(16, 'ec5e867d40bf6a81f98b97d99d2a3392', '1999-03-20 11:51:17', 84959, 'occaecati', 1000, '2009-07-26 21:52:12', '1994-02-28 19:30:13'),
(17, '80fd703c1833561a81c2fca4faa1ac45', '1981-10-10 08:50:22', 8, 'cumque', 9344.61, '2005-11-01 06:39:31', '1994-03-29 11:20:00'),
(18, '68812279a3d86f32b41f17fa34b23423', '2012-08-29 18:06:06', 86477918, 'saepe', 1000, '1996-06-14 05:26:58', '2023-04-10 04:12:55'),
(19, '3fc046e42866a64b683cf76d023e82c3', '1990-02-21 19:31:11', 747045, 'quas', 2499.29, '2011-03-05 02:32:14', '1995-11-12 11:03:52'),
(20, '2db15672cae111db815ec2954bca8bfe', '2023-03-21 22:07:19', 24, 'qui', 302054, '2012-02-04 01:17:24', '1976-08-09 01:59:23'),
(21, '9965a90f1611a27a9ae660473eec2923', '1992-12-27 16:57:54', 2, 'quae', 1000, '1983-11-25 17:32:33', '1978-08-31 21:36:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `No_Transaksi` varchar(200) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Nama` varchar(150) NOT NULL,
  `Total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `No_Transaksi`, `Tanggal`, `Nama`, `Total`, `created_at`, `updated_at`) VALUES
(23, '6bcb68fdae84ad44a721c69cf6e2c6da', '1980-07-04 05:14:23', 'dicta', 25501100, '2016-01-20 08:07:11', '1987-01-18 18:06:26'),
(24, '1906902317cb11cfdb281d4b917cc8e9', '1986-07-11 03:28:06', 'facere', 25957900, '2019-07-06 09:21:01', '1985-10-16 05:34:59'),
(25, 'c487506fd51715e5910fe6c0ec6215a2', '1992-02-19 01:09:06', 'et', 2660.57, '1985-06-25 15:15:59', '1985-01-13 06:05:19'),
(26, '4f467ce7c6d5b9af2c3860d7b699b5c0', '1987-05-14 13:10:32', 'magnam', 1000, '1977-01-22 05:16:50', '2004-01-16 23:19:22'),
(27, '76c93c001076a0b0732ff24e8af3a439', '1998-02-11 20:58:33', 'libero', 48720.7, '2016-02-19 04:47:39', '2023-10-30 23:02:29'),
(28, 'fd57c8680109c8599dcc65b9bd09992d', '2007-01-09 19:54:05', 'vel', 245657, '2008-01-20 18:52:33', '1970-02-21 22:47:52'),
(29, '7687d25bdc207ef7eb51683ecb66ff5a', '1978-12-17 00:03:11', 'dolore', 4957200, '1985-06-20 20:48:53', '1973-10-08 12:57:35'),
(30, '73cae2ade015201d51dc3f8917b849ea', '2005-12-11 08:44:35', 'saepe', 382705, '1981-10-08 15:20:03', '1984-01-13 06:27:33'),
(31, '0fdf9c6854cb47a22d244507d898b423', '2022-03-04 03:25:39', 'voluptas', 3110.35, '1981-12-26 03:39:36', '1984-05-30 13:09:40'),
(32, '9aa59a4b55b9c064a4423d8ba86591f0', '1981-04-17 06:28:23', 'eligendi', 5737340, '1995-02-17 19:59:56', '2013-01-19 00:53:47'),
(33, 'e395589b7af8a5a5fcb59229673d4987', '1992-05-10 06:33:11', 'ducimus', 1000, '1974-07-04 05:19:26', '2017-08-01 05:54:55'),
(34, '7de870ae97828f6639b70a42b015a6ad', '2006-01-07 10:28:42', 'accusantium', 43136600, '1986-11-01 17:28:06', '1985-04-01 21:07:44'),
(35, '0af01f0afab57d3c8220c6ce35b968f4', '1976-10-19 03:59:46', 'omnis', 871970000, '2014-12-02 22:00:49', '1983-10-05 22:49:40'),
(36, 'be49c81261b4e53d2c014e76243facb4', '2022-09-22 13:46:55', 'esse', 1000, '1986-08-15 01:02:03', '1995-09-25 08:14:59'),
(37, '18f2ed803d424deb029ea1b45e6ab1c2', '2006-08-29 19:23:11', 'ipsa', 347341, '1978-12-08 05:25:53', '2021-10-13 07:31:47'),
(38, '954b9bd866fd916ab4ac2f6363936dab', '1990-07-22 12:53:03', 'nihil', 1091.04, '1978-03-31 17:11:26', '1972-10-24 06:42:05'),
(39, '2d17e9666b6806e136abfb311106c6bc', '2020-06-25 01:35:48', 'repellendus', 290597, '1998-12-31 22:22:36', '1978-09-29 01:48:49'),
(40, '1008e69cd71e967dee8e0cecc31f8726', '2014-04-17 07:35:08', 'accusamus', 205840, '2015-12-29 04:09:20', '1983-06-02 00:07:55'),
(41, '9544deac18a8803c7aae9fc0d2fe478c', '1987-12-03 05:34:32', 'aut', 1000, '1995-07-04 21:02:15', '2002-09-05 05:58:04'),
(42, '0667b455dd16f05e050c38a46a10610d', '2008-04-01 03:38:05', 'ad', 6432.95, '2007-12-17 09:07:57', '1976-06-18 03:28:35'),
(43, 'c554f6b080355001df35fc0c553b4a07', '2011-02-17 20:09:56', 'repellat', 4785.3, '1997-04-19 05:40:02', '1988-02-25 22:15:18'),
(44, 'ca3ccff04c73d3306ffec7b65a83babc', '1986-06-19 18:09:43', 'ipsa', 38693200, '1973-01-16 16:07:28', '1990-03-20 09:21:08'),
(45, '299c72a973a228162a432de72eb47e8d', '2017-08-30 23:11:58', 'sapiente', 637169, '1974-10-21 15:41:12', '1989-06-07 15:56:16'),
(46, '6bc47ede294cd5076a875ee3d50bf2c7', '1997-08-01 20:17:34', 'vitae', 1000, '2018-04-03 23:08:30', '1974-06-05 05:43:09'),
(47, '19138404aad238704d324cd1a7fe6286', '2017-12-07 22:02:25', 'autem', 19614500, '1991-05-16 17:41:24', '1988-12-19 07:44:40'),
(48, '39cd784faf2b97bc25e5b84eb16b174b', '1998-03-15 07:34:46', 'error', 1000, '2013-08-31 15:14:04', '1981-07-07 01:04:37'),
(49, 'af3ac5b5ffe6cbf82780db8a98ba4fae', '1991-08-07 12:27:18', 'alias', 2201.75, '1979-05-21 10:42:34', '2001-07-31 14:40:43'),
(50, '746e246d529307dcd66e37a70d85f395', '1994-05-06 17:59:04', 'magni', 1000, '2022-02-20 01:11:22', '2004-05-28 09:18:00'),
(51, '00c3744013ccdd040329b376d5d5c53b', '1995-06-05 18:14:48', 'quo', 2554.8, '2012-12-14 22:41:11', '2019-05-22 01:28:15'),
(52, '9fa817163142e5defde05d34d135c32e', '2001-04-29 16:33:56', 'sed', 2190710, '2009-08-24 17:26:49', '1980-05-31 03:46:13'),
(53, '22b878e91d04266d4a5dabefa0868ce2', '1982-06-14 22:20:50', 'odio', 47705500, '1994-06-12 20:01:00', '1976-08-11 20:49:31'),
(54, 'f06959390b1dad627519097532e883ce', '2011-10-16 17:14:43', 'et', 1333.2, '1982-02-19 12:00:55', '2021-12-27 19:40:51'),
(55, '0c4a3757ca5b9a0bff0520ae09f81513', '2006-07-19 14:05:38', 'dignissimos', 2213460, '2015-03-31 04:35:07', '1998-05-08 19:48:12'),
(56, '02becd566b602edf7369c3e22d773dd9', '2004-06-21 21:28:35', 'libero', 436421, '2016-07-08 21:55:23', '1999-02-16 20:15:12'),
(57, '6716d4139072a203e97108a81f72147e', '1987-04-15 16:06:35', 'ducimus', 1000, '1976-08-16 01:41:14', '1988-04-13 12:52:46'),
(58, '959dcb1057df5bb44315c50a4c0341a3', '1975-05-30 12:27:21', 'architecto', 1927.33, '1999-08-14 11:03:00', '2001-07-29 22:24:13'),
(59, '451364bc597ee5128205d2c97c40c4be', '2022-02-07 19:45:23', 'sunt', 1000, '1999-05-01 05:48:27', '2021-07-17 13:03:37'),
(60, 'e028fb260c08854dab9180e86a5fbc7f', '1971-11-10 18:22:20', 'sit', 376986000, '2014-07-11 16:16:52', '2020-02-24 21:23:53'),
(61, '2e643cb80652bc5bddc834d0d44cc426', '1999-04-28 12:13:37', 'et', 477857000, '1991-11-24 07:33:35', '1993-06-09 06:31:46'),
(62, 'c849d32abf797c3ef70a547ada22c4d0', '1993-03-02 10:28:13', 'et', 33895.4, '1992-11-04 22:57:09', '1976-10-07 09:46:40'),
(63, 'f4bc18da8759626fb75c453c8fe4b795', '1984-12-03 04:15:58', 'et', 193201, '1987-12-23 06:31:17', '1996-08-03 04:30:48'),
(64, 'f07b9372484905a6347213a8e0c0ab75', '2017-05-26 14:41:16', 'porro', 1000, '1975-12-29 20:08:19', '1991-12-06 04:59:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$39VwvogO9lroU4aXIRoS2.upGXVP2GF6.wiOa8ZQ97XkvScaOL2RW', 1, 'e453e4c3-01dd-4030-89f2-172d7f591854', 1, NULL, NULL, '2024-10-02 16:58:29', '2024-10-02 16:58:29', NULL, NULL),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$VJuFQ02NsMSIKnCDae/QKensTmknXQnPHTdpEhEVuBtEM8CsNMnta', 1, 'be16291b-3649-4dbd-bcd6-e363537700ef', 1, NULL, NULL, '2024-10-02 16:58:29', '2024-10-02 16:58:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indeks untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indeks untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
