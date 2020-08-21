-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 07:36 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiostas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` INT(10) UNSIGNED NOT NULL,
  `products_id` INT(11) NOT NULL,
  `product_name` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `quantity` INT(11) NOT NULL,
  `user_email` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(01, 001, 'Beras Maknyus', 'Brs-01', 'White', 'Big',150.000, '5000gr', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(02, 002, 'Beras Tiga Jambu', 'Brs-02', 'White', 'Big', 130.000, '5000gr', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(03, 003, 'Gula Pasir GMP', 'GMP-01', 'White', 'Big', 600.000, '100.000gr', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(04, 004, 'Gula Rafinasi', 'Rafinasi-01', 'White', 'Big', 400.000, '50kg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(05, 005, 'Minyak Goreng Gurih', 'Minyak-01', 'Yellow', 'Small', 73.500, '5L', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(06, 006, 'Minyak Goreng Fortune', 'Minyak-02', 'Yellow', 'Small', 82.900, '5L', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(07, 007, 'Susu Indomilk', 'Indomilk-01', 'Chocolate and White', 'Small', 9.568, '375gr', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31'),
(08, 008, 'Susu Tiga Sapi', 'TigaSapi-01', 'Chocolate and White', 'Small', 8.286, '370gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(09, 009, 'Minyak Tanah Peanut Oil', 'Minyak-03', 'Yellowish White', 'Small', 280.000, '500ml', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(10, 010, 'Minyak Tanah Original', 'Minyak-04', 'Yellowish White', 'Small', 11.000, '600gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(11, 011, 'Tabung Gas LPG', 'Elpiji-01', 'Green', 'Big', 165.000, '5kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(12, 012, 'My Gas LGP', 'Elpiji-02', 'Yellow', 'Big', 125.000, '9kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(13, 013, 'Alpukat Mentega', 'Alpukat-01', 'Green', 'Small', 35.000, '1100gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(14, 014, 'Alpukat Mentega Super', 'Alpukat-01', 'Green', 'Small', 48.500, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(15, 015, 'Kurma Mesir', 'Kurma-01', 'Chocolate', 'Small', 45.000, '1100gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(16, 016, 'Kurma Sukaria Basah', 'Kurma-02', 'Chocolate', 'Small', 100.000, '3100gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(17, 017, 'Bengkoang/Lobak Meksiko', 'Bengkoang-01', 'White', 'Big', 6.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(18, 018, 'Kismis Kuning Golden Raisin Simin Premium', 'Kismis-01', 'Golden Yellow', 'Small', 15.000, '100gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(19, 019, 'Sayur Sawi Cina', 'Sawi-01', 'Green', 'Small', 14.000, '1000gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(20, 020, 'Wortel Import', 'Wortel-01', 'Orange', 'Small', 5.600, '250gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(21, 021, 'Terong Ungu', 'Terong-01', 'Purple', 'Small', 4.700, '250gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(22, 022, 'Kentang Dieng', 'Kentang-01', 'Yellow', 'Small', 8.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(23, 023, 'Labu Siam Besar/Jepan Jumbo', 'LabuSiam-01', 'Green', 'Small', 5.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(24, 024, 'Kol Putih', 'Kol-01', 'White', 'Small', 16.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(25, 025, 'Ikan Salmon Fillet TOp', 'Ikan-01', 'Orange', 'Big', 150.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(26, 026, 'Tetelan Daging Ikan Salmon', 'Ikan-02', 'Orange', 'Small', 50.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(27, 027, 'Fillet Tetelan Ikan Tuna', 'Ikan-03', 'Red', 'Small', 49.000, '10gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(28, 028, 'Ikan Asin Daging Tenggiri', 'Ikan-04', 'Brown', 'Small', 15.000, '110gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(29, 029, 'Daging Ikan Dori Fillet Lokal', 'Ikan-05', 'White', 'Small', 43.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(30, 030, 'Ikan Tenggiri', 'Ikan-06', 'Brown', 'Small', 40.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(31, 031, 'Bliss Salmon', 'Ikan-07', 'Orange', 'Small', 135.000, '250gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(32, 032, 'Ikan Bandeng', 'Ikan-08', 'Brown', 'Small', 83.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(33, 033, 'Ikan Kakap', 'Ikan-09', 'White', 'Small', 40.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(34, 034, 'Ikan Tenggiri Giling', 'Ikan-10', 'White', 'Small', 30.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(35, 035, 'Fried Fish', 'Ikan-11', 'White', 'Small', 65.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(36, 036, 'Daging Ikan Dori', 'Ikan-12', 'White', 'Small', 52.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(37, 037, 'Yukitea Minuman Teh Susu dan Rasa lainnya', 'Tea-01', 'All Colors', 'Small', 15.000, '250gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(38, 038, 'Minuman Panther', 'Tea-02', 'Yellow', 'Small', 18.500, '2000gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(39, 039, 'Brag Apple Cider Vinegar Sharing', 'Tea-03', 'Yellow', 'Small', 31.000, '120gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(40, 040, 'Jack Daniels Honey', 'Jacks-01', 'Yellow', 'Big', 750.000, '2000kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(41, 041, 'Rum Brugal', 'RUM-01', 'White', 'Big', 850.000, '1600gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(42, 042, '(Produk UMKM BUMN) Baju Kaos Khas Nias Selatan', 'Baju-01', 'White', '3*3*3', 50.000 - 300.000, '1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(43, 043, 'Gamis Muslim UMKM Juara-Khabarmus Dress Aluna', 'Gamis-01', 'Black-Brown', 'All Size', 240.000, '450gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(47, 047, 'SORELE-Serondeng', 'Makanan-01', 'All Variant-(Beef, Chicken, Shrimp, Clamp, Squid)', 35.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(48, 048, 'Abon Lele', 'Makanan-02', 'All Variant', 65.000, '500gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(52, 052, 'Madu Foresbi', 'Kesehatan-01', '', 65.000, '300gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(53, 053, 'Yogurt Tanpa Pemanis Buatan', 'Kesehatan-02', '', 9.000, '360gr', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(57, 057, 'Rempah Sauna', 'Rempah-01', '10*10*10', 20.000, '0.1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(58, 058, 'Rempah Herbal Sekar Asih', 'Rempah-02', '10*10*10', 35.00, '0.07kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(62, 062, 'Salon Kecantikan', 'Jasa-01', '', 300.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(63, 063, 'Jasa Message(Pijat) & Scrub (Lulur)', 'Jasa-02', '', 100.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(67, 067, 'Tas Front Block Sepeda Brompton-EIBAG F1 Folding One', 'Industri-01', '', 300.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(68, 068, 'Tas Depan Stang Sepeda Lipat Cyclo', 'Industri-02', '', 90.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(72, 072, 'Eyeliner Spidol Mizzu', 'Lainnya-01', '', 110.000, '0.1kg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(73, 073, 'Tas Selempang Eiger Comp Portege(7391)', 'Lainnya-02', '','16*6*22', 235.000, '', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` INT(10) UNSIGNED NOT NULL,
  `parent_id` INT(11) DEFAULT NULL,
  `name` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` TINYINT(4) NOT NULL DEFAULT 0,
  `remember_token` VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(C01, 0, 'Sembako', 'Sembako Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:33', '2018-11-16 02:00:00'),
(C02, 0, 'Sayur dan Buah', 'Sayur dan Buah Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:31:29', '2018-11-16 02:05:53'),
(C03, 0, 'Ikan dan Daging', 'Ikan dan Daging Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:32:14', '2018-11-16 02:07:15'),
(C04, 0, 'Minuman', 'Minuman Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:33:26', '2018-11-16 02:05:43'),
(C05, 0, 'Fashion', 'Fashion Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:34:31', '2018-11-16 02:05:18'),
(C06, 0, 'Makanan', 'Makanan Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:35:08', '2018-11-16 01:54:49'),
(C07, 0, 'Rempah', 'Rempah Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:56:56', '2018-11-16 02:07:05'),
(C08, 0, 'Kesehatan', 'Kesehatan Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(C09, 0, 'Jasa', 'Jasa Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(C010, 0, 'Lainnya', 'Lainnya Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44'),
(C011, 0, 'Produk Industri', 'Produk Industri Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-22 21:58:13', '2018-11-16 01:53:44');
-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` INT(10) UNSIGNED NOT NULL,
  `country_code` VARCHAR(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(CTR, 'ID', 'Indonesia', NULL, NULL);


-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` INT(10) UNSIGNED NOT NULL,
  `coupon_code` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` INT(11) NOT NULL,
  `amount_type` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` DATE NOT NULL,
  `status` TINYINT(4) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-05 20:19:15', '2018-12-05 20:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` INT(10) UNSIGNED NOT NULL,
  `users_id` INT(11) NOT NULL,
  `users_email` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
(3, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` INT(10) UNSIGNED NOT NULL,
  `migration` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` INT(11) NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_10_20_040609_create_categories_table', 3),
(9, '2018_10_24_075802_create_products_table', 4),
(10, '2018_11_08_024109_create_product_att_table', 5),
(11, '2018_11_20_055123_create_tblgallery_table', 6),
(12, '2018_11_26_070031_create_cart_table', 7),
(13, '2018_11_28_072535_create_coupons_table', 8),
(15, '2018_12_01_042342_create_countries_table', 10),
(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
(17, '2018_12_03_093548_create_delivery_address_table', 12),
(18, '2018_12_05_024718_create_orders_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` INT(10) UNSIGNED NOT NULL,
  `users_id` INT(11) NOT NULL,
  `users_email` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` DOUBLE(8,2) NOT NULL,
  `coupon_code` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(7, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', '12252', 'Cambodia', '010313234', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '70', '2018-12-06 18:20:18', '2018-12-06 18:20:18'),
(6, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'pincode', 'Cambodia', 'mobile', 0.00, 'Coupon001', '2', 'success', 'Paypal', '18', '2018-12-06 01:45:09', '2018-12-06 01:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` INT(10) UNSIGNED NOT NULL,
  `categories_id` INT(11) NOT NULL,
  `p_name` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `image` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(001, C01, 'Beras Maknyus', 'Brs-01', 'White', 'Beras Maknyus 10kg<br>kodisi : baru<br>Asuransi : Opsional<br>Tanpa pengawet, Tanpa Pemutih, dan Tanpa Pewangi',150.000, 'beras 10kg maknyuss.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(002, C01, 'Beras Tiga Jambu', 'Brs-02', 'White', 'Beras slyp super<br>Kondisi : baru<br>Asuransi : Opsional', 130.000, 'beras 10kg tiga jambu.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(003, C01, 'Gula Pasir GMP', 'GMP-01', 'White', 'Gula Kristal Putih<br>Kondisi : baru<br>Asuransi : Opsional', 600.000, 'Gula Kristal putih.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(004, C01, 'Gula Rafinasi', 'Rafinasi-01', 'White', 'Gula Pasir Rafinasi<br>Kondisi : baru<br>Asuransi : Opsional', 400.000, 'Gula rafinasi.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(005, C01, 'Minyak Goreng Gurih', 'Minyak-01', 'Yellow', 'Minyak Nabati<br>Dapat dikonsumsi dan jumlahnya banyak di dunia terutama di negara tropis seperti Indonesia<br>Mengandung Vitamin A yang baik untuk tubuh<br>Asuransi : Opsional<br>Kondisi : Baaru', 73.500, 'minyak gurih.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(006, C01, 'Minyak Goreng Fortune', 'Minyak-02', 'Yellow', 'Membuat gorengan menjadi ebih garing dan renyah<br>Mengandung vitamin E, asam lemak tak jenuh (Omega 9) dan kandungan pro vitamin A<br>Dengan 2 kali penyaringan, serta diproses secara higienis dengan teknologi tinggi<br>Kondisi : Baru<br>Asuransi : Opsional', 82.900, 'minyak fortune.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(007, C01, 'Susu Indomilk', 'Indomilk-01', 'Chocolate and White', 'Susu kental manis<br>Diproduksi dari susu segar dengan kandungan zat gizi lengkap di dalamnya<br>Dapat diminum dan dapat disajikan dengan sajian panas ataupun dingin<br>bisa juga menjadi sajian pelengkap makanan seperti buah, minuman segar, puding, aneka kue dan berbagai makanan lainnya<br>Kondisi : Baru', 9.568, 'susu indomilk.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31'),
(008, C01, 'Susu Tiga Sapi', 'TigaSapi-01', 'Chocolate and White', 'Susu kental manis<br>Diproduksi dari susu segar dengan kandungan zat gizi lengkap di dalamnya<br>dapat diminum dan dapat disajikan dengan sajian panas ataupun dingin<br>bisa juga menjadi sajian pelengkap seperti buah, minuman segar, pudding, aneka kue, dan berbagai makanan lainnya<br>Kondisi : Baru', 8.286, 'susu tiga sapi.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(009, C01, 'Minyak Tanah Peanut Oil', 'Minyak-03', 'Yellowish White', 'Peanut Oil Cold Pressed Minyak Kacang Tanah Green Tosca<br>Kemasan Botol Beling<br>Komposisi : 100% Minyak kacang tanah<br>Produksi : Australia', 280.000, 'minyak tanah peanut oil.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(010, C01, 'Minyak Tanah Original', 'Minyak-04', 'Yellowish White', 'Minyak tanah original 100% original asli<br>Berfungsi untuk :<br>gigitan serangga<br>membunuh semut di rumah<br>sakit bakar<br>membersihkan karat<br>Kondisi : Baru', 11.000, 'minyak tanah original.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(011, C01, 'Tabung Gas LPG', 'Elpiji-01', 'Green', 'Tabung gas LPG elpiji 3kg + isi tabung<br>Tabung melon<br>Tabung gas LPG 3kg pertamina asli<br>Kondisi : Baru<br>Asuransi : Opsional', 165.000, 'elpiji 3kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(012, C01, 'My Gas LGP', 'Elpiji-02', 'Yellow', 'MyGas Gas LPG<br>Hanya isi/refill<br>Dengan keamanan standar internasional<br>Memberikan jaminan bahwa isi setiap tabung sesuai dengan yang tertera', 125.000, 'mygas 9kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(013, C02, 'Alpukat Mentega', 'Alpukat-01', 'Green', 'Alpukat mentega unggulan/alpukat mentega lampung/alpukat mentega<br>satu kilo perkiraan 4 sampai 5 buah<br>dikirim dalam keadalaan setengah matang, apabila belum dimakan cukup letakkan di tempat terbuka dalam suhu ruang. jangan di dalam kantong plastik
jangan di kulkas, jangan di rendam dalam beras maupun dibungkus kain. 
Alpukat di tekan dan terasa seperti sudah empuk seperti menekan dodol artinya 
alpukat siap komsumsi. Bijak dalam menentukan kapan waktu komsumsi dan penyimpanan 
yang benar adalah tujuan untuk dapat hasil alpukat yang baik.', 35.000, 'alpukat mentega.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(014, C02, 'Alpukat Mentega Super', 'Alpukat-01', 'Green', 'Kondisi : Baru<br>Asuransi : Opsional<br>Mengapa disebut mangga super?<br>Karena hanya mengirimkan buah segar dan berkualitas premium dan telah lulus quality control', 48.500, 'alpukat mentega super.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(015, C02, 'Kurma Mesir', 'Kurma-01', 'Chocolate', 'Kurma mesir golder velly 1kg<br>Kondisi : Baru<br>Asuransi : Opsional', 45.000, 'kurma mesir.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(016, C02, 'Kurma Sukaria Basah', 'Kurma-02', 'Chocolate', 'Kurma Sukari 3kg original/Sukari Basah<br>Kondisi : Baru<br>Asuransi : Opsional', 100.000, 'kurma sukari basah.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(017, C02, 'Bengkoang/Lobak Meksiko', 'Bengkoang-01', 'White', 'Tumbuhan yang berasal dari Amerika Selatan ini termasuk dalam suku
polong-polongan. di tempat asalnya, tumbuhan ini dikenal sebagai xicama 
atau jicama<br> Kondisi : Baru<br>Asuransi : Opsional', 6.000, 'bengkoang-lobakmeksiko.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(018, C02, 'Kismis Kuning Golden Raisin Simin Premium', 'Kismis-01', 'Kismis kuning golden Raisin Simin Premium<br>buah anggur yang dikeringkan, mengandung protein, serat, Boron, dan Zat besi lainnya<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'kismis golden.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(019, C02, 'Sayur Sawi Cina', 'Sawi-01', 'Green', 'Sawi putih memiliki banyak khasiat seperti mineral, vitamin, dan zat gizi lain yang sangat bermanfaat bagi kesehatan tubuh<br>Kondisi : Baru, fresh<br>Asuransi : Opsional', 14.000, 'sawi cina.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(020, C02, 'Wortel Import', 'Wortel-01', 'Orange', 'Wortel Import 250gr<br>Kondisi : Baru, Fresh<br>Asuransi :Opsional', 5.600, 'wortel import.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(021, C02, 'Terong Ungu', 'Terong-01', 'Purple', 'Sayur terong ungu 250gr<br>Kondisi : Baru, fresh<br> Asuransi : Opsional', 4.700, 'terong ungu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(022, C02, 'Kentang Dieng', 'Kentang-01', 'Yellow', 'Kentang Dieng<br>Makanan pokok di Negara Eropa<br>Kondisi : Baru<br>Asuransi : Opsional', 8.000, 'kentang dieng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(023, C02, 'Labu Siam Besar/Jepan Jumbo', 'LabuSiam-01', 'Green', 'Labu siam besar/Jepan Jumbo 500gr<br>Kondisi : Baru<br>Asuransi : Opsional', 5.000, 'labu siam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(024, C02, 'Kol Putih', 'Kol-01', 'White', 'Kol Putih<br>Kondisi : Baru, Fresh<br>Asuransi : Opsional', 16.000, 'kol putih.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(025, C03, 'Ikan Salmon Fillet TOp', 'Ikan-01', 'Orange', 'Ikan Salmon Fillet TOP<br>Kondisi : Baru<br>Asuransi : Opsional', 150.000, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(026, C03, 'Tetelan Daging Ikan Salmon', 'Ikan-02', 'Orange', 'Tetelan daging ikan salmon frozen tanpa duri<br>Kondisi : Baru, Fresh<br>Asuransi : Opsional', 50.000, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(027, C03, 'Fillet Tetelan Ikan Tuna', 'Ikan-03', 'Red', 'Fillet tetelan ikan tuna merah segar beku<br>Kondisi : Baru<br>Asuransi : Opsional', 49.000, 'fillet daging ikan tuna.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(028, C03, 'Ikan Asin Daging Tenggiri', 'Ikan-04', 'Brown', 'Ikan asin daging tenggiri/tenggiri kualitas asli nomor 1 100 gram<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'ikan asin daging tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(029, C03, 'Daging Ikan Dori Fillet Lokal', 'Ikan-05', 'White', 'Daging 38 ikan dori fillet lokal 1kg<br>Daging segar<br>Tekstur daging yang juicy<br>Cocok dimasak menjadi bermacam hidangan<br>Kondisi : Baru', 43.000, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(030, C03, 'Ikan Tenggiri', 'Ikan-06', 'Brown', 'ikan tenggiri asin/ikan asin tenggiri/daging ikan tenggiri murah<br>kemasan :Plastik Vakum (Food Grade)<br>Penyimpanan : Simpan produk dalam lemari pendingin (Freezer)', 40.000, 'ikan tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(031, C03, 'Bliss Salmon', 'Ikan-07', 'Orange', 'Bliss kitchen trim salmon fish norway and trout tetelan daging ikan<br>Daging salmon fresh<br>Memiliki banyak kandungan nutrisi<br>dapat dikonsumsi oleh semua kalangan', 135.000, 'bliss salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(032, C03, 'Ikan Bandeng', 'Ikan-08', 'Brown', 'Ikan bandeng cabut duri<br>daging segar<br>tekstur daging yang juicy<br>cocok dimasak menjadi berbagai macam hidangan', 83.000, 'ikan bandeng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(033, C03, 'Ikan Kakap', 'Ikan-09', 'White', 'Ikan kakap merah fillet daging segar<br>makanan beku<br>diolah secara higienis dan berkualitas<br>memiliki kandungan kaliun<br>berfungsi untuk menjaga kesehatan jantung', 40.000, 'ikan kakap.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(034, C03, 'Ikan Tenggiri Giling', 'Ikan-10', 'White', 'Ikan tenggiri giling/daging tenggiri/daging ikan tenggiri giling<br>Kemasan : plastik food grade', 30.000, 'ikan tenggiri giling.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(035, C03, 'Fried Fish', 'Ikan-11', 'White', 'Segar laut fried fish cake daging ikan goreng<br>Frozen Food<br>diolah dan dikemas di Malaysia<br>sudah diakui oleh BPOM', 65.000, 'fried fish.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(036, C03, 'Daging Ikan Dori', 'Ikan-12', 'White', 'Ikan dori fillet segar<br>Sehat dan bergizi<br>Dikemas per kilo isi 3-4 fillet ikan', 52.000, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(037, C04, 'Yukitea Minuman Teh Susu dan Rasa lainnya', 'Tea-01', 'All Varian', 'Yukitea Minuman teh susu dan rasa lainnya<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'jellypop.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(038, C04, 'Minuman Panther', 'Tea-02', 'Yellow', 'Kondisi : Baru<br>Asuransi : Opsional', 18.500, 'minuman panther.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(039, C04, 'Brag Apple Cider Vinegar Sharing', 'Tea-03', 'Yellow', 'Kondisi : Baru<br>Asuransi : Opsional', 31.000, 'bragg apple cider.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(040, C04, 'Jack Daniels Honey', 'Jacks-01', 'Yellow', 'Jack Daniels Honey<br>Minuman beralkohol-minuman keras<br>Kondisi : Baru<br>Asuransi : Opsional', 750.000, 'Jacks Daniel.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(041, C04, 'Rum Brugal', 'RUM-01', 'White', 'Rum Brugal<br>Supreme Blanco Minuman Beralkohol<br>Kondisi : Baru<br>Asuransi : Ya', 850.000, 'Rum Brugal.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(042, C05, '(Produk UMKM BUMN) Baju Kaos Khas Nias Selatan', 'Baju-01', 'White', 'Kategori Kaos Lengan pendek wanita<br>Ukuran pakaian : S-M<br>Warna : Hijau,k Coklat, Ungu<br>Bahan : Wood<br>Baju kaos motif khas nias selatan bahannya dingin nyaman untuk dipakai', 50.000 - 300.000, 'kaos nias.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(043, C05, 'Gamis Muslim UMKM Juara-Khabarmus Dress Aluna', 'Gamis-01', 'Black-Brown', 'UMKM Juara-Khabarmus Dress ALuna<br>Bahan : Oxford + Piscos Karmen<br>LD 108<br>Pj Tangan 57<br>Sikut : 17<br>Ujung tangan 21', 240.000, 'gamis muslim.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(044, C06, 'SORELE-Serondeng', 'Makanan-01', 'All Variant-(Beef, Chicken, Shrimp, Clamp, Squid)', 'Sorondeng merupakan salah satu warisan kuliner Budaya Melayu. Berdasarkan tradisi yang ada, Sorondeng selalu disajikan saat ada acara besar bersama Ketupat Colet Rendang, khas Kabupaten Ketapang, salah satu daerah di Kalimantan Barat. Sorondeng didominasi oleh parutan kelapa tua kering yang dibumbui. Sebagian besar orang Indonesia menyebutnya sebagai Serundeng.
Sorondeng ini sangat cocok dimakan bersama beberapa makanan lainnya, seperti Nasi Putih Hangat, Nasi Uduk (Nasi Lemak), Lontong Sayur, Nasi Kuning, Aneka Panganan Ketan (Lemang, Lepat Law, Lempar, Pengkang), Nasi Briyani, Kari, Rendang dan lain sebagainya.
', 35.000, '24207702_d14ca3f6-eb1a-4b3a-b7f4-664dc1d6f7be_2048_2048.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(045, C06, 'Abon Lele', 'Makanan-02', 'All Variant','Abon lele produksi UMKM lokal tanpa pengawet dan pewarna.', 65.000, '959.1280_65b0d94f431147d1ba439085e555566e.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(046, C07, 'Madu Foresbi', 'Kesehatan-01', 'Madu Foresbi adalah 100% madu asli yang dikumpulkan oleh masyarakat desa yang tinggal di sekitar hutan di wilayah Riau.
', 65.000, '48967299_89c3964e-7114-4591-8eda-5dd488d8bafd_879_879.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(047, C07, 'Yogurt Tanpa Pemanis Buatan', 'Kesehatan-02', 'Yoghurt yang terbuat dari susu berkualitas Asli Boyolali dengan hasil uji laboratorium, Kualitas susu di atas standart, yogood kental karena tanpa campuran, tidak terlalu asam nyaman di lidah. ', 9.000, '5625637_b47d25d2-1912-4a4c-89e6-5a57c0189352_1440_1080.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(048, C08, 'Rempah Sauna', 'Rempah-01', '10*10*10', 'Rempah herbal warisan putri keraton untuk menjaga kecantikan dan kesegaran kulit dengan bahan rempah asli Indonesia, di antaranya: akar wangi, jeruk purut, lempuyang, sereh, kayu secang dan klabet', 20.000, '606.924_c7d66d2b8a3d4388bf41820342747cc0,jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(049, C08, 'Rempah Herbal Sekar Asih', 'Rempah-02', '10*10*10', 'Rempah Sekar asih herbal sari dapat mengurangi dan membersihkan lendir, menyempitkan otot kewanitaan, dan mengobati keputihan', 35.00, '7630219_384d00eb-5b3b-45b4-8eaa-fe8c8edcbe65_960_960.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(050, C09, 'Salon Kecantikan', 'Jasa-01', '-	Pesan jasa salon kecantikan datang ke rumah <br>-	Paket kecantikan (Salon Rambut+ treatment wajah+ Make Up)', 300.000, 'Make-Up-Artist.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(051, C09, 'Jasa Message(Pijat) & Scrub (Lulur)', 'Jasa-02', 'Body Massage (Pijat Tradisional)
60 menit: 100k
90 menit: 150k
120menit: 200k
', 100.000, 'pijat-lulur.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(052, C10, 'Tas Front Block Sepeda Brompton-EIBAG F1 Folding One', 'Industri-01', 'Tas front block murah sepeda brompton kode EIBAG F1.  Bracket sudah terpasang di badan belakang tas. Paket penjualan termasuk 1 tali selempang dan 1 cover bag.', 300.000, 'tas.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(053, C10, 'Tas Depan Stang Sepeda Lipat Cyclo', 'Industri-02', 'Tas Depan Sepeda Lipat Cyclo Bentuk 2 Tabung (u/tempat botol n lainnya) Ukuran: pjg x tinggi (19x15) Bahan parasit anti air Depan ada scotlitenya Stock hanya hitam Harga ga termasuk botol', 90.000, 'tas sepeda.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(054, C11, 'Eyeliner Spidol Mizzu', 'Lainnya-01', 'Ada 2 varian :
- Black Coffee (Kopi Asli)
- Choco Coffee (Kopi + Vanilla)', 110.000, 'mizzu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(055, C11, 'Tas Selempang Eiger Comp Portege(7391)', 'Lainnya-02', 'Portege Pouch 3.0 adalah travel pouch yang praktis digunakan untuk traveling maupun kegiatan sehari-hari. Dilengkapi banyak saku penyimpanan, tas kecil dan ringkas ini siap menemanimu dalam setiap aktifitas.','16*6*22', 235.000, 'dalam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01');


-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` INT(10) UNSIGNED NOT NULL,
  `products_id` INT(11) NOT NULL,
  `sku` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `stock` INT(11) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`,
(001, C01, 'Beras Maknyus', 'Brs-01', 'White', 'Beras Maknyus 10kg<br>kodisi : baru<br>Asuransi : Opsional<br>Tanpa pengawet, Tanpa Pemutih, dan Tanpa Pewangi',150.000, 'beras 10kg maknyuss.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(002, C01, 'Beras Tiga Jambu', 'Brs-02', 'White', 'Beras slyp super<br>Kondisi : baru<br>Asuransi : Opsional', 130.000, 'beras 10kg tiga jambu.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(003, C01, 'Gula Pasir GMP', 'GMP-01', 'White', 'Gula Kristal Putih<br>Kondisi : baru<br>Asuransi : Opsional', 600.000, 'Gula Kristal putih.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(004, C01, 'Gula Rafinasi', 'Rafinasi-01', 'White', 'Gula Pasir Rafinasi<br>Kondisi : baru<br>Asuransi : Opsional', 400.000, 'Gula rafinasi.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(005, C01, 'Minyak Goreng Gurih', 'Minyak-01', 'Yellow', 'Minyak Nabati<br>Dapat dikonsumsi dan jumlahnya banyak di dunia terutama di negara tropis seperti Indonesia<br>Mengandung Vitamin A yang baik untuk tubuh<br>Asuransi : Opsional<br>Kondisi : Baaru', 73.500, 'minyak gurih.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(006, C01, 'Minyak Goreng Fortune', 'Minyak-02', 'Yellow', 'Membuat gorengan menjadi ebih garing dan renyah<br>Mengandung vitamin E, asam lemak tak jenuh (Omega 9) dan kandungan pro vitamin A<br>Dengan 2 kali penyaringan, serta diproses secara higienis dengan teknologi tinggi<br>Kondisi : Baru<br>Asuransi : Opsional', 82.900, 'minyak fortune.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(007, C01, 'Susu Indomilk', 'Indomilk-01', 'Chocolate and White', 'Susu kental manis<br>Diproduksi dari susu segar dengan kandungan zat gizi lengkap di dalamnya<br>Dapat diminum dan dapat disajikan dengan sajian panas ataupun dingin<br>bisa juga menjadi sajian pelengkap makanan seperti buah, minuman segar, puding, aneka kue dan berbagai makanan lainnya<br>Kondisi : Baru', 9.568, 'susu indomilk.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31'),
(008, C01, 'Susu Tiga Sapi', 'TigaSapi-01', 'Chocolate and White', 'Susu kental manis<br>Diproduksi dari susu segar dengan kandungan zat gizi lengkap di dalamnya<br>dapat diminum dan dapat disajikan dengan sajian panas ataupun dingin<br>bisa juga menjadi sajian pelengkap seperti buah, minuman segar, pudding, aneka kue, dan berbagai makanan lainnya<br>Kondisi : Baru', 8.286, 'susu tiga sapi.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(009, C01, 'Minyak Tanah Peanut Oil', 'Minyak-03', 'Yellowish White', 'Peanut Oil Cold Pressed Minyak Kacang Tanah Green Tosca<br>Kemasan Botol Beling<br>Komposisi : 100% Minyak kacang tanah<br>Produksi : Australia', 280.000, 'minyak tanah peanut oil.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(010, C01, 'Minyak Tanah Original', 'Minyak-04', 'Yellowish White', 'Minyak tanah original 100% original asli<br>Berfungsi untuk :<br>gigitan serangga<br>membunuh semut di rumah<br>sakit bakar<br>membersihkan karat<br>Kondisi : Baru', 11.000, 'minyak tanah original.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(011, C01, 'Tabung Gas LPG', 'Elpiji-01', 'Green', 'Tabung gas LPG elpiji 3kg + isi tabung<br>Tabung melon<br>Tabung gas LPG 3kg pertamina asli<br>Kondisi : Baru<br>Asuransi : Opsional', 165.000, 'elpiji 3kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(012, C01, 'My Gas LGP', 'Elpiji-02', 'Yellow', 'MyGas Gas LPG<br>Hanya isi/refill<br>Dengan keamanan standar internasional<br>Memberikan jaminan bahwa isi setiap tabung sesuai dengan yang tertera', 125.000, 'mygas 9kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(013, C02, 'Alpukat Mentega', 'Alpukat-01', 'Green', 'Alpukat mentega unggulan/alpukat mentega lampung/alpukat mentega<br>satu kilo perkiraan 4 sampai 5 buah<br>dikirim dalam keadalaan setengah matang, apabila belum dimakan cukup letakkan di tempat terbuka dalam suhu ruang. jangan di dalam kantong plastik
jangan di kulkas, jangan di rendam dalam beras maupun dibungkus kain. 
Alpukat di tekan dan terasa seperti sudah empuk seperti menekan dodol artinya 
alpukat siap komsumsi. Bijak dalam menentukan kapan waktu komsumsi dan penyimpanan 
yang benar adalah tujuan untuk dapat hasil alpukat yang baik.', 35.000, 'alpukat mentega.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(014, C02, 'Alpukat Mentega Super', 'Alpukat-01', 'Green', 'Kondisi : Baru<br>Asuransi : Opsional<br>Mengapa disebut mangga super?<br>Karena hanya mengirimkan buah segar dan berkualitas premium dan telah lulus quality control', 48.500, 'alpukat mentega super.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(015, C02, 'Kurma Mesir', 'Kurma-01', 'Chocolate', 'Kurma mesir golder velly 1kg<br>Kondisi : Baru<br>Asuransi : Opsional', 45.000, 'kurma mesir.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(016, C02, 'Kurma Sukaria Basah', 'Kurma-02', 'Chocolate', 'Kurma Sukari 3kg original/Sukari Basah<br>Kondisi : Baru<br>Asuransi : Opsional', 100.000, 'kurma sukari basah.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(017, C02, 'Bengkoang/Lobak Meksiko', 'Bengkoang-01', 'White', 'Tumbuhan yang berasal dari Amerika Selatan ini termasuk dalam suku
polong-polongan. di tempat asalnya, tumbuhan ini dikenal sebagai xicama 
atau jicama<br> Kondisi : Baru<br>Asuransi : Opsional', 6.000, 'bengkoang-lobakmeksiko.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(018, C02, 'Kismis Kuning Golden Raisin Simin Premium', 'Kismis-01', 'Kismis kuning golden Raisin Simin Premium<br>buah anggur yang dikeringkan, mengandung protein, serat, Boron, dan Zat besi lainnya<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'kismis golden.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(019, C02, 'Sayur Sawi Cina', 'Sawi-01', 'Green', 'Sawi putih memiliki banyak khasiat seperti mineral, vitamin, dan zat gizi lain yang sangat bermanfaat bagi kesehatan tubuh<br>Kondisi : Baru, fresh<br>Asuransi : Opsional', 14.000, 'sawi cina.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(020, C02, 'Wortel Import', 'Wortel-01', 'Orange', 'Wortel Import 250gr<br>Kondisi : Baru, Fresh<br>Asuransi :Opsional', 5.600, 'wortel import.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(021, C02, 'Terong Ungu', 'Terong-01', 'Purple', 'Sayur terong ungu 250gr<br>Kondisi : Baru, fresh<br> Asuransi : Opsional', 4.700, 'terong ungu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(022, C02, 'Kentang Dieng', 'Kentang-01', 'Yellow', 'Kentang Dieng<br>Makanan pokok di Negara Eropa<br>Kondisi : Baru<br>Asuransi : Opsional', 8.000, 'kentang dieng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(023, C02, 'Labu Siam Besar/Jepan Jumbo', 'LabuSiam-01', 'Green', 'Labu siam besar/Jepan Jumbo 500gr<br>Kondisi : Baru<br>Asuransi : Opsional', 5.000, 'labu siam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(024, C02, 'Kol Putih', 'Kol-01', 'White', 'Kol Putih<br>Kondisi : Baru, Fresh<br>Asuransi : Opsional', 16.000, 'kol putih.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(025, C03, 'Ikan Salmon Fillet TOp', 'Ikan-01', 'Orange', 'Ikan Salmon Fillet TOP<br>Kondisi : Baru<br>Asuransi : Opsional', 150.000, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(026, C03, 'Tetelan Daging Ikan Salmon', 'Ikan-02', 'Orange', 'Tetelan daging ikan salmon frozen tanpa duri<br>Kondisi : Baru, Fresh<br>Asuransi : Opsional', 50.000, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(027, C03, 'Fillet Tetelan Ikan Tuna', 'Ikan-03', 'Red', 'Fillet tetelan ikan tuna merah segar beku<br>Kondisi : Baru<br>Asuransi : Opsional', 49.000, 'fillet daging ikan tuna.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(028, C03, 'Ikan Asin Daging Tenggiri', 'Ikan-04', 'Brown', 'Ikan asin daging tenggiri/tenggiri kualitas asli nomor 1 100 gram<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'ikan asin daging tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(029, C03, 'Daging Ikan Dori Fillet Lokal', 'Ikan-05', 'White', 'Daging 38 ikan dori fillet lokal 1kg<br>Daging segar<br>Tekstur daging yang juicy<br>Cocok dimasak menjadi bermacam hidangan<br>Kondisi : Baru', 43.000, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(030, C03, 'Ikan Tenggiri', 'Ikan-06', 'Brown', 'ikan tenggiri asin/ikan asin tenggiri/daging ikan tenggiri murah<br>kemasan :Plastik Vakum (Food Grade)<br>Penyimpanan : Simpan produk dalam lemari pendingin (Freezer)', 40.000, 'ikan tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(031, C03, 'Bliss Salmon', 'Ikan-07', 'Orange', 'Bliss kitchen trim salmon fish norway and trout tetelan daging ikan<br>Daging salmon fresh<br>Memiliki banyak kandungan nutrisi<br>dapat dikonsumsi oleh semua kalangan', 135.000, 'bliss salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(032, C03, 'Ikan Bandeng', 'Ikan-08', 'Brown', 'Ikan bandeng cabut duri<br>daging segar<br>tekstur daging yang juicy<br>cocok dimasak menjadi berbagai macam hidangan', 83.000, 'ikan bandeng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(033, C03, 'Ikan Kakap', 'Ikan-09', 'White', 'Ikan kakap merah fillet daging segar<br>makanan beku<br>diolah secara higienis dan berkualitas<br>memiliki kandungan kaliun<br>berfungsi untuk menjaga kesehatan jantung', 40.000, 'ikan kakap.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(034, C03, 'Ikan Tenggiri Giling', 'Ikan-10', 'White', 'Ikan tenggiri giling/daging tenggiri/daging ikan tenggiri giling<br>Kemasan : plastik food grade', 30.000, 'ikan tenggiri giling.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(035, C03, 'Fried Fish', 'Ikan-11', 'White', 'Segar laut fried fish cake daging ikan goreng<br>Frozen Food<br>diolah dan dikemas di Malaysia<br>sudah diakui oleh BPOM', 65.000, 'fried fish.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(036, C03, 'Daging Ikan Dori', 'Ikan-12', 'White', 'Ikan dori fillet segar<br>Sehat dan bergizi<br>Dikemas per kilo isi 3-4 fillet ikan', 52.000, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(037, C04, 'Yukitea Minuman Teh Susu dan Rasa lainnya', 'Tea-01', 'All Varian', 'Yukitea Minuman teh susu dan rasa lainnya<br>Kondisi : Baru<br>Asuransi : Opsional', 15.000, 'jellypop.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(038, C04, 'Minuman Panther', 'Tea-02', 'Yellow', 'Kondisi : Baru<br>Asuransi : Opsional', 18.500, 'minuman panther.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(039, C04, 'Brag Apple Cider Vinegar Sharing', 'Tea-03', 'Yellow', 'Kondisi : Baru<br>Asuransi : Opsional', 31.000, 'bragg apple cider.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(040, C04, 'Jack Daniels Honey', 'Jacks-01', 'Yellow', 'Jack Daniels Honey<br>Minuman beralkohol-minuman keras<br>Kondisi : Baru<br>Asuransi : Opsional', 750.000, 'Jacks Daniel.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(041, C04, 'Rum Brugal', 'RUM-01', 'White', 'Rum Brugal<br>Supreme Blanco Minuman Beralkohol<br>Kondisi : Baru<br>Asuransi : Ya', 850.000, 'Rum Brugal.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(042, C05, '(Produk UMKM BUMN) Baju Kaos Khas Nias Selatan', 'Baju-01', 'White', 'Kategori Kaos Lengan pendek wanita<br>Ukuran pakaian : S-M<br>Warna : Hijau,k Coklat, Ungu<br>Bahan : Wood<br>Baju kaos motif khas nias selatan bahannya dingin nyaman untuk dipakai', 50.000 - 300.000, 'kaos nias.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(043, C05, 'Gamis Muslim UMKM Juara-Khabarmus Dress Aluna', 'Gamis-01', 'Black-Brown', 'UMKM Juara-Khabarmus Dress ALuna<br>Bahan : Oxford + Piscos Karmen<br>LD 108<br>Pj Tangan 57<br>Sikut : 17<br>Ujung tangan 21', 240.000, 'gamis muslim.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(044, C06, 'SORELE-Serondeng', 'Makanan-01', 'All Variant-(Beef, Chicken, Shrimp, Clamp, Squid)', 'Sorondeng merupakan salah satu warisan kuliner Budaya Melayu. Berdasarkan tradisi yang ada, Sorondeng selalu disajikan saat ada acara besar bersama Ketupat Colet Rendang, khas Kabupaten Ketapang, salah satu daerah di Kalimantan Barat. Sorondeng didominasi oleh parutan kelapa tua kering yang dibumbui. Sebagian besar orang Indonesia menyebutnya sebagai Serundeng.
Sorondeng ini sangat cocok dimakan bersama beberapa makanan lainnya, seperti Nasi Putih Hangat, Nasi Uduk (Nasi Lemak), Lontong Sayur, Nasi Kuning, Aneka Panganan Ketan (Lemang, Lepat Law, Lempar, Pengkang), Nasi Briyani, Kari, Rendang dan lain sebagainya.
', 35.000, '24207702_d14ca3f6-eb1a-4b3a-b7f4-664dc1d6f7be_2048_2048.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(045, C06, 'Abon Lele', 'Makanan-02', 'All Variant','Abon lele produksi UMKM lokal tanpa pengawet dan pewarna.', 65.000, '959.1280_65b0d94f431147d1ba439085e555566e.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(046, C07, 'Madu Foresbi', 'Kesehatan-01', 'Madu Foresbi adalah 100% madu asli yang dikumpulkan oleh masyarakat desa yang tinggal di sekitar hutan di wilayah Riau.
', 65.000, '48967299_89c3964e-7114-4591-8eda-5dd488d8bafd_879_879.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(047, C07, 'Yogurt Tanpa Pemanis Buatan', 'Kesehatan-02', 'Yoghurt yang terbuat dari susu berkualitas Asli Boyolali dengan hasil uji laboratorium, Kualitas susu di atas standart, yogood kental karena tanpa campuran, tidak terlalu asam nyaman di lidah. ', 9.000, '5625637_b47d25d2-1912-4a4c-89e6-5a57c0189352_1440_1080.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(048, C08, 'Rempah Sauna', 'Rempah-01', '10*10*10', 'Rempah herbal warisan putri keraton untuk menjaga kecantikan dan kesegaran kulit dengan bahan rempah asli Indonesia, di antaranya: akar wangi, jeruk purut, lempuyang, sereh, kayu secang dan klabet', 20.000, '606.924_c7d66d2b8a3d4388bf41820342747cc0,jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(049, C08, 'Rempah Herbal Sekar Asih', 'Rempah-02', '10*10*10', 'Rempah Sekar asih herbal sari dapat mengurangi dan membersihkan lendir, menyempitkan otot kewanitaan, dan mengobati keputihan', 35.00, '7630219_384d00eb-5b3b-45b4-8eaa-fe8c8edcbe65_960_960.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(050, C09, 'Salon Kecantikan', 'Jasa-01', '-	Pesan jasa salon kecantikan datang ke rumah <br>-	Paket kecantikan (Salon Rambut+ treatment wajah+ Make Up)', 300.000, 'Make-Up-Artist.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(051, C09, 'Jasa Message(Pijat) & Scrub (Lulur)', 'Jasa-02', 'Body Massage (Pijat Tradisional)
60 menit: 100k
90 menit: 150k
120menit: 200k
', 100.000, 'pijat-lulur.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(052, C10, 'Tas Front Block Sepeda Brompton-EIBAG F1 Folding One', 'Industri-01', 'Tas front block murah sepeda brompton kode EIBAG F1.  Bracket sudah terpasang di badan belakang tas. Paket penjualan termasuk 1 tali selempang dan 1 cover bag.', 300.000, 'tas.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(053, C10, 'Tas Depan Stang Sepeda Lipat Cyclo', 'Industri-02', 'Tas Depan Sepeda Lipat Cyclo Bentuk 2 Tabung (u/tempat botol n lainnya) Ukuran: pjg x tinggi (19x15) Bahan parasit anti air Depan ada scotlitenya Stock hanya hitam Harga ga termasuk botol', 90.000, 'tas sepeda.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(054, C11, 'Eyeliner Spidol Mizzu', 'Lainnya-01', 'Ada 2 varian :
- Black Coffee (Kopi Asli)
- Choco Coffee (Kopi + Vanilla)', 110.000, 'mizzu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(055, C11, 'Tas Selempang Eiger Comp Portege(7391)', 'Lainnya-02', 'Portege Pouch 3.0 adalah travel pouch yang praktis digunakan untuk traveling maupun kegiatan sehari-hari. Dilengkapi banyak saku penyimpanan, tas kecil dan ringkas ini siap menemanimu dalam setiap aktifitas.','16*6*22', 235.000, 'dalam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` INT(10) UNSIGNED NOT NULL,
  `products_id` INT(11) NOT NULL,
  `image` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(T1, 001, 'beras 10kg maknyuss.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:17:37', '2018-12-06 18:17:37'),
(T2, 002, 'beras 10kg tiga jambu.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:26', '2018-12-06 18:18:26'),
(T3, C003, 'Gula Kristal putih.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:50:30', '2018-12-06 17:50:30'),
(T4, 004, 'Gula rafinasi.jpg', 'kioskitasemua.kiostas@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-06 17:49:50', '2018-12-06 17:49:50'),
(T5, 005, 'minyak gurih.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:18:10', '2018-12-06 02:18:10'),
(T6, 006, 'minyak fortune.jpg', 'kioskitasemua.kiostas@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 02:30:33', '2018-12-06 02:30:33'),
(T7, 007, 'susu indomilk.jpg', 'kioskitasemua.kiostas@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-06 18:18:31', '2018-12-06 18:18:31'),
(T8, 008, 'susu tiga sapi.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T9, 009, 'minyak tanah peanut oil.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T10, 010, 'minyak tanah original.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T11, 011,'elpiji 3kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T12, 012, 'mygas 9kg.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T13, 013,'alpukat mentega.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T14, 014, 'alpukat mentega super.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T15, 015, 'kurma mesir.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T16, 016, 'kurma sukari basah.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T17, 017, 'bengkoang-lobakmeksiko.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T18, 018, 'kismis golden.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T19, 019, 'sawi cina.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T20, 020, 'wortel import.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T21, 021, 'terong ungu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T22, 022, 'kentang dieng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T23, 023, 'labu siam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T24, 024, 'kol putih.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T25, 025, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T26, 026, 'daging ikan salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T27, 027, 'fillet daging ikan tuna.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T28, 028, 'ikan asin daging tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T29, 029, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T30, 030, 'ikan tenggiri.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T31, 031, 'bliss salmon.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T32, 032, 'ikan bandeng.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T33, 033, 'ikan kakap.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T34, 034, 'ikan tenggiri giling.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T35, 035,  'fried fish.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T36, 036, 'daging ikan dori.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T37, 037, 'jellypop.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T38, 038,  'minuman panther.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T39, 039, 'bragg apple cider.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T40, 040,  'Jacks Daniel.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T41, 041, 'Rum Brugal.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T42, 042, 'kaos nias.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T43, 043, '24207702_d14ca3f6-eb1a-4b3a-b7f4-664dc1d6f7be_2048_2048.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T45, 045, '959.1280_65b0d94f431147d1ba439085e555566e.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T46, 046,'48967299_89c3964e-7114-4591-8eda-5dd488d8bafd_879_879.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T47, 047, '5625637_b47d25d2-1912-4a4c-89e6-5a57c0189352_1440_1080.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T48, 048, '606.924_c7d66d2b8a3d4388bf41820342747cc0,jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T49, 049, '7630219_384d00eb-5b3b-45b4-8eaa-fe8c8edcbe65_960_960.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T50, 050, 'mizzu.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01'),
(T55, 055, 'dalam.jpg', 'kioskitasemua.kiostas@gmail.com', '7dkveBo9VwzgcYFaWfm4AKu6YkOMg60KnRiWn688', '2020-08-06 02:05:01', '2020-08-06 02:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` INT(10) UNSIGNED NOT NULL,
  `name` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` TINYINT(4) DEFAULT NULL,
  `remember_token` VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `address` TEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` VARCHAR(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` VARCHAR(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` VARCHAR(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` VARCHAR(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` VARCHAR(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
(2, 'Maria Anastasya Manullang', 'mariaanastasyamanullang@gmail.com', NULL, '$2y$10$0LUcVaEN8gdbnbw0u2Na2uOwc4KEK0wlkMlahLnZi7XRi29696Gqy', NULL, NULL, '2020-08-09 20:03:18', '2020-08-09 20:03:18', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'Kios Kita Semua', 'kioskitasemua.kiostas@gmail.com', NULL, '$2y$10$S22S6UuHCESeuf8YBqJdYucPFGM3bFPaJlYfUAldbUnhJB7ZbkNAu', 1, 'gT84PzfCZl1znAJYhsgEluCZ2YDW4dE7kcs0IiVEUgDvO5FEG1EZW5pPwwfW', '2020-08-09 20:01:42', '2020-08-09 20:01:42', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
