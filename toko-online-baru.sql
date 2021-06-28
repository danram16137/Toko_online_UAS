-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 09.40
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko-online-baru`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_18_101953_create_products_table', 1),
(5, '2020_04_18_132841_create_profiles_table', 1),
(6, '2020_04_21_154729_create_stocks_table', 1),
(7, '2020_04_24_084350_create_orders_table', 1),
(8, '2020_04_26_123151_create_reminders_table', 1),
(9, '2020_04_27_044831_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `name`, `cart`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `payment_id`) VALUES
(1, '2021-06-28 00:05:55', '2021-06-28 00:05:55', 2, 'Customer1', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:625000;s:4:\"size\";s:2:\"38\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:3;s:4:\"name\";s:44:\"SUPREME X AIR FORCE 1 LOW \"BOX LOGO - WHITE\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:625000;s:5:\"image\";s:14:\"products/3.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:3;s:4:\"name\";s:44:\"SUPREME X AIR FORCE 1 LOW \"BOX LOGO - WHITE\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:625000;s:5:\"image\";s:14:\"products/3.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:3;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:625000;}', '8215551234', 'Indonesia', 'Medan', 'Danau Toba', 27321, NULL),
(2, '2021-06-28 00:23:05', '2021-06-28 00:23:05', 5, 'Ramadhan', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:700500;s:4:\"size\";s:2:\"40\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:5;s:4:\"name\";s:45:\"AIR JORDAN 1 RETRO HIGH \"SHATTERED BACKBOARD\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:700500;s:5:\"image\";s:14:\"products/5.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:14;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:5;s:4:\"name\";s:45:\"AIR JORDAN 1 RETRO HIGH \"SHATTERED BACKBOARD\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:700500;s:5:\"image\";s:14:\"products/5.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:14;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:5;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:700500;}', '12345678', 'Jawa Timur', 'Surabaya', 'bulak banteng', 60123, NULL),
(3, '2021-06-28 00:30:47', '2021-06-28 00:30:47', 5, 'Ramadhan', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:500000;s:4:\"size\";s:2:\"34\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:4:\"name\";s:44:\"AIR JORDAN 1 X OFF-WHITE NRG \"OFF WHITE UNC\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:500000;s:5:\"image\";s:14:\"products/1.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:4:\"name\";s:44:\"AIR JORDAN 1 X OFF-WHITE NRG \"OFF WHITE UNC\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:500000;s:5:\"image\";s:14:\"products/1.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:1;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:500000;}', '12347899000', 'Jawa Tengah', 'Solo', 'jl.manahan', 12345, NULL),
(4, '2021-06-28 00:33:41', '2021-06-28 00:33:41', 5, 'Ramadhan', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:625000;s:4:\"size\";s:2:\"37\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:3;s:4:\"name\";s:44:\"SUPREME X AIR FORCE 1 LOW \"BOX LOGO - WHITE\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:625000;s:5:\"image\";s:14:\"products/3.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:3;s:4:\"name\";s:44:\"SUPREME X AIR FORCE 1 LOW \"BOX LOGO - WHITE\"\";s:5:\"brand\";s:4:\"Nike\";s:5:\"price\";i:625000;s:5:\"image\";s:14:\"products/3.jpg\";s:6:\"gender\";s:4:\"Male\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";i:1;s:10:\"created_at\";N;s:10:\"updated_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:3;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:625000;}', '1234', 'jakarta', 'jakarta', 'lebak', 6012, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `image`, `gender`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'AIR JORDAN 1 X OFF-WHITE NRG \"OFF WHITE UNC\"', 'Nike', 500000, 'products/1.jpg', 'Female', 'Shoes', 1, NULL, NULL),
(2, 'STUSSY X AIR ZOOM SPIRIDON CAGED \"PURE PLATINUM\"', 'Nike', 600000, 'products/2.jpg', 'Unisex', 'Shoes', 12, NULL, NULL),
(3, 'SUPREME X AIR FORCE 1 LOW \"BOX LOGO - WHITE\"', 'Nike', 625000, 'products/3.jpg', 'Male', 'Shoes', 1, NULL, NULL),
(4, 'SACAI X LDV WAFFLE \"BLACK NYLON\"', 'Nike', 1000000, 'products/4.jpg', 'Male', 'Shoes', 1, NULL, NULL),
(5, 'AIR JORDAN 1 RETRO HIGH \"SHATTERED BACKBOARD\"', 'Nike', 700500, 'products/5.jpg', 'Male', 'Shoes', 14, NULL, NULL),
(6, 'YEEZY BOOST 350 V2 \"CREAM\"', 'Adidas', 650000, 'products/6.jpg', 'Unisex', 'Shoes', 3, NULL, NULL),
(7, 'YEEZY BOOST 350 V2\"YECHEIL NON-REFLECT\"', 'Adidas', 725000, 'products/7.jpg', 'Male', 'Shoes', 5, NULL, NULL),
(8, 'YEEZY BOOST 350 V2 \"FROZEN YELLOW\"', 'Adidas', 300000, 'products/8.jpg', 'Unisex', 'Shoes', 3, NULL, NULL),
(9, 'AIR JORDAN 5 RETRO SP \"MUSLIN\"', 'Nike', 425000, 'products/9.jpg', 'Male', 'Shoes', 3, NULL, NULL),
(10, 'AIR JORDAN 1 RETRO HIGH ZOOM \"RACER BLUE\"', 'Nike', 920000, 'products/10.jpg', 'Male', 'Shoes', 5, NULL, NULL),
(11, 'FENTY SLIDE \"PINK BOW \"', 'Puma', 800000, 'products/11.jpg', 'Female', 'Shoes', 3, NULL, NULL),
(12, 'WMNS RS-X TRACKS \"FAIR AQUA\"', 'Puma', 450000, 'products/12.jpg', 'Female', 'Shoes', 3, NULL, NULL),
(13, 'OLD SKOOL \'BLACK WHITE\' \"BLACK WHITE\"', 'Vans', 575000, 'products/13.jpg', 'Unisex', 'Shoes', 6, NULL, NULL),
(14, 'OLD SKOOL \"YACHT CLUB\"', 'Vans', 565000, 'products/14.jpg', 'Unisex', 'Shoes', 5, NULL, NULL),
(15, 'VANS OLD SKOOL \"RED CHECKERBOARD \"', 'Vans', 899000, 'products/15.jpg', 'Unisex', 'Shoes', 5, NULL, NULL),
(16, 'ALL STAR 70S HI \"MILK\"', 'Converse', 640000, 'products/16.jpg', 'Unisex', 'Shoes', 5, NULL, NULL),
(17, 'ALL-STAR 70S HI \"PLAY\"', 'Puma', 854000, 'products/17.jpg', 'Unisex', 'Shoes', 3, NULL, NULL),
(18, 'FEAR OF GOD CHUCK 70 HI \"NATURAL\"', 'Converse', 735000, 'products/18.jpg', 'Female', 'Shoes', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phonenumber` bigint(20) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `created_at`, `updated_at`) VALUES
(2, 2, 8215551234, 'Indonesia', 'Medan', 'Danau Toba', 27321, NULL, NULL),
(3, 5, NULL, NULL, NULL, NULL, NULL, '2021-06-28 00:21:29', '2021-06-28 00:21:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reminder` text COLLATE utf8mb4_unicode_ci DEFAULT 'Type Something',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reminders`
--

INSERT INTO `reminders` (`id`, `reminder`, `created_at`, `updated_at`) VALUES
(1, 'Type Something', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `name`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, '32', 0, NULL, NULL),
(2, 1, '33', 10, NULL, NULL),
(3, 1, '34', 9, NULL, '2021-06-28 00:30:47'),
(4, 1, '35', 10, NULL, NULL),
(5, 1, '36', 10, NULL, NULL),
(6, 1, '37', 10, NULL, NULL),
(7, 1, '38', 10, NULL, NULL),
(8, 2, '39', 10, NULL, NULL),
(9, 2, '40', 10, NULL, NULL),
(10, 2, '32', 0, NULL, NULL),
(11, 2, '33', 10, NULL, NULL),
(12, 2, '34', 10, NULL, NULL),
(13, 2, '35', 10, NULL, NULL),
(14, 3, '36', 10, NULL, NULL),
(15, 3, '37', 9, NULL, '2021-06-28 00:33:41'),
(16, 3, '38', 9, NULL, '2021-06-28 00:05:55'),
(17, 3, '39', 10, NULL, NULL),
(18, 3, '40', 10, NULL, NULL),
(19, 4, '32', 0, NULL, NULL),
(20, 4, '33', 10, NULL, NULL),
(21, 4, '34', 10, NULL, NULL),
(22, 4, '35', 10, NULL, NULL),
(23, 4, '36', 10, NULL, NULL),
(24, 4, '37', 10, NULL, NULL),
(25, 4, '38', 10, NULL, NULL),
(26, 5, '39', 10, NULL, NULL),
(27, 5, '40', 9, NULL, '2021-06-28 00:23:05'),
(28, 5, '32', 0, NULL, NULL),
(29, 5, '33', 10, NULL, NULL),
(30, 6, '34', 10, NULL, NULL),
(31, 6, '35', 10, NULL, NULL),
(32, 6, '36', 10, NULL, NULL),
(33, 6, '37', 10, NULL, NULL),
(34, 7, '38', 10, NULL, NULL),
(35, 7, '39', 10, NULL, NULL),
(36, 7, '40', 10, NULL, NULL),
(37, 7, '32', 0, NULL, NULL),
(38, 7, '33', 10, NULL, NULL),
(39, 7, '34', 10, NULL, NULL),
(40, 8, '35', 10, NULL, NULL),
(41, 8, '36', 10, NULL, NULL),
(42, 8, '37', 10, NULL, NULL),
(43, 8, '38', 10, NULL, NULL),
(44, 9, '39', 10, NULL, NULL),
(45, 9, '40', 10, NULL, NULL),
(46, 9, '32', 0, NULL, NULL),
(47, 10, '33', 10, NULL, NULL),
(48, 11, '34', 10, NULL, NULL),
(49, 12, '35', 10, NULL, NULL),
(50, 13, '36', 10, NULL, NULL),
(51, 14, '37', 10, NULL, NULL),
(52, 15, '38', 10, NULL, NULL),
(53, 16, '39', 10, NULL, NULL),
(54, 17, '39', 10, NULL, NULL),
(55, 17, '40', 10, NULL, NULL),
(56, 18, '38', 10, NULL, NULL),
(57, 18, '39', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$B95/LedHtJwqCdFt3B3iHuuz9rB0bmJ51c7p8uF3ofqDP8TIrCf5C', 'Admin', NULL, NULL, NULL),
(2, 'Customer1', 'customer1@gmail.com', NULL, '$2y$10$F/FF8t2HMxnKMGUR4FMXCuwiYz5o.0pXPFRE17V3S.Cl99uRlh7ve', 'Customer', NULL, NULL, NULL),
(3, 'Customer2', 'customer2@gmail.com', NULL, '$2y$10$Acj39HLWJD3AwRFeemt4HuFYAFg3wI3cqHVlWsTHpCzL6a2E4p9ke', 'Customer', NULL, NULL, NULL),
(4, 'Customer3', 'customer3@gmail.com', NULL, '$2y$10$lZaPtV0izrPImTZJ59/UtOwo2/nZPH/VWMFw9viyAQuJ2xtNjs3gm', 'Customer', NULL, NULL, NULL),
(5, 'Ramadhan', 'danram16137@gmail.com', NULL, '$2y$10$c1K8MHDcZ70meWDpx.wJY.f08cnk3IakPlN3eMl.U5K6bozYeeJu2', 'Customer', NULL, '2021-06-28 00:21:29', '2021-06-28 00:21:29');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
