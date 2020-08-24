-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 06:12 AM
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
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(255,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(67, 40, 'Jasa Urut', 'JR01', 'Jasa', 'Urut Pria', 55000.00, 1, 'weshare@gmail.com', '0sQ531e8CLx0d7ifxjYWS3Fryre7sEA9P5qhwlM5', '2020-08-20 21:04:24', '2020-08-20 21:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(45, 0, 'Sayur dan Buah', 'Sayur dan Buah', 1, NULL, '2020-08-19 05:22:44', '2020-08-19 05:22:44'),
(29, 0, 'Fashion', 'Bagus', 1, NULL, '2020-08-17 14:49:30', '2020-08-17 14:49:30'),
(38, 0, 'Prdouk Kecantikan', 'Prdouk Kecantikan', 1, NULL, '2020-08-19 03:55:41', '2020-08-19 03:55:41'),
(41, 0, 'Produk Industri', 'Produk Industri', 1, NULL, '2020-08-19 05:14:25', '2020-08-19 05:14:25'),
(28, 0, 'Sembako', 'bagus', 1, NULL, '2020-08-17 14:46:56', '2020-08-17 14:46:56'),
(42, 0, 'Makanan', 'Makanan', 1, NULL, '2020-08-19 05:15:09', '2020-08-19 05:15:09'),
(43, 0, 'Rempah-rempah', 'Rempah-rempah', 1, NULL, '2020-08-19 05:15:25', '2020-08-19 05:15:25'),
(44, 0, 'Produk Kesehatan', 'Produk Kesehatan', 1, NULL, '2020-08-19 05:15:54', '2020-08-19 05:15:54'),
(39, 0, 'Lainnya', 'Lainnya', 1, NULL, '2020-08-19 05:12:40', '2020-08-19 05:12:40'),
(40, 0, 'Jasa', 'Jasa', 1, NULL, '2020-08-19 05:13:39', '2020-08-19 05:13:39'),
(46, 0, 'Ikan dan Daging', 'Ikan dan Daging', 1, NULL, '2020-08-19 05:23:08', '2020-08-19 05:23:08'),
(47, 0, 'Minuman', 'Minuman', 1, NULL, '2020-08-19 05:24:06', '2020-08-19 05:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(152, 'ID', 'Indonesia'),
(184, 'MY', 'Malaysia'),
(246, 'SG', 'Singapore');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `province`, `country`, `postal_code`, `mobile`, `created_at`, `updated_at`) VALUES
(3, 1, 'demo@gmail.com', 'Maria Anastasya Manullang', 'Medan', 'Boston', 'Kota', 'Indonesia', '001', '89992728', NULL, NULL),
(4, 2, 'mariaanastasyamanullang@gmail.com', 'Lukas', 'Medan Denai', 'Medan', 'Sumatera Utara', 'Indonesia', '2025', '082188567812', NULL, NULL),
(5, 9, 'jessycha@gmail.com', 'Aldo', 'Jl. Simalingkar 9', 'Medan', 'Sumatera Utara', 'Indonesia', '001', '89992728', NULL, NULL);

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
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charges` double(255,2) NOT NULL DEFAULT 30000.00,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `province`, `postal_code`, `country`, `mobile`, `products_name`, `shipping_charges`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(45, '2', 'mariaanastasyamanullang@gmail.com', 'Aldo Yuda', 'Jl. Simalingkar 9', 'Balige', 'Sumatera Utara', '001', 'Indonesia', '89992728', NULL, 30000.00, 'sukses', 'COD', '1030000', '2020-08-19 00:29:57', '2020-08-19 00:29:57'),
(47, '2', 'mariaanastasyamanullang@gmail.com', 'Lukas', 'Medan Denai', 'Medan', 'Sumatera Utara', '2025', 'Indonesia', '082188567812', NULL, 30000.00, 'sukses', 'COD', '230000', '2020-08-19 01:54:49', '2020-08-19 01:54:49'),
(46, '2', 'mariaanastasyamanullang@gmail.com', 'Aldo', 'Jl. Kolonel Yos Sudarso', 'Balige', 'Sumatera Utara', '20116', 'Indonesia', '087715151515', NULL, 30000.00, 'sukses', 'COD', '230000', '2020-08-19 01:36:31', '2020-08-19 01:36:31'),
(48, '9', 'jessycha@gmail.com', 'Maria Anastasya Manullang', 'Jl. Kolonel Yos Sudarso', 'Medan', 'Sumatera Utara', '20116', 'Indonesia', '087715151515', NULL, 30000.00, 'sukses', 'COD', '310000', '2020-08-20 21:02:42', '2020-08-20 21:02:42');

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
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(41, 40, 'Jasa Lukis Dinding', 'LD32', 'Lukis', '1. Menawarkan jasa mural untuk menambah kesan sebuah tempat atau ruangan. \r\n2. Mural tersebut bisa di aplikasikan di dalam maupun luar ruangan dengan konsep yang beragam sesuai keinginan.', 280000, '1597855758-jasa-lukis-dinding-profesional.JPG', '2020-08-19 09:49:18', '2020-08-19 09:49:56'),
(40, 40, 'Jasa Urut', 'JU55', 'Jasa', 'Jasa Urut/pijat khusus wanita untuk meringankan pegal-pegal, letih, kecapean dan merelaksasikan tubuh.', 100000, '1597855639-jasa-urut.jpg', '2020-08-19 09:47:19', '2020-08-19 09:47:19'),
(39, 40, 'Massage', 'MS30', 'Wantia', 'Body Massage (Pijat Tradisional)\r\nBody scrub(Lulur)\r\nWilayah: depok, cibinong, Cilidong, cimanggis, cibubur,Jakarta timur, condet', 100000, '1597855241-massage.jpg', '2020-08-19 09:40:42', '2020-08-19 09:40:42'),
(32, 29, 'Vionic Shoes Brand', '5265', 'All Colors', 'Sepatu kekinian yang didesain dengan mengutamakan kenyamanan anda dan style pelanggan kami yang istimewa.', 120000, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 19:50:07', '2020-08-19 05:27:04'),
(33, 29, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Pakaian laki-laki original yang diprodukasi handmade dan ketellitian yang diutamakan', 50000, '1544064903-cole-haan.jpg', '2018-12-05 19:55:03', '2020-08-19 05:26:40'),
(42, 40, 'Lukis Hena', 'LH02', 'Jasa Lukis Tangan', 'Jasa lukis hena sesuai selera cocok untuk pesta pernikahan dan acara resmi lainnya.', 250000, '1597856038-lukis-hena.JPG', '2020-08-19 09:53:58', '2020-08-19 09:53:58'),
(35, 29, 'Cloths', 'The Man', 'Black', '1. Produk Impor dari China\r\n2. Kainnya menyerap keringat dan dingin\r\n3. Cocok untuk dibawa saat hangout', 20000, '1544065493-cloths.png', '2018-12-05 20:04:54', '2020-08-17 21:49:56'),
(36, 40, 'Salon Kecantikan', 'C02', 'Jasa', 'Pesan jasa salon kecantikan datang ke rumah \r\n', 300000, '1597830555-toyota.jpg', '2020-08-19 02:49:16', '2020-08-19 09:24:04'),
(37, 29, 'Gamis Muslim', 'GM01', 'Warna Kream', 'UMKM Juara - Khabarmus Dress Aluna\r\nBahan : Oxford + PiscosKarmen\r\nUkuran : Semua Ukuran\r\nPanjang Kain: 135\r\nLebar Dada: 108\r\nPanjang Tangan: 57', 240000, '1597831864-gamis-muslim.jpg', '2020-08-19 03:11:05', '2020-08-19 03:11:05'),
(38, 29, 'Tika Sepatu', 'TS01', 'Cool', 'Didesain chic dengan pointed toe Aksen strap, dan non slip outsole sehingga nyaman digunakan\r\nTinggi heels: 5 cm\r\nMaterial: Kulitsintetis', 80000, '1597832025-tika-sepatu-putih.jpg', '2020-08-19 03:13:46', '2020-08-19 03:17:05'),
(43, 39, 'Photography', 'PH09', 'Unik', 'Bisa dipanggil ke tempat tujuan, mengambil setiap moment penting pelanggan dan menjadikannya istimewa.', 300000, '1597856593-photography.jpg', '2020-08-19 10:03:13', '2020-08-19 10:03:13'),
(44, 39, 'Rental Kamera', 'RK01', 'Pinjam', 'Peminjaman kamera sesuai kebutuhan, diluar\r\npenggunaan memori kamera.\r\n\r\nHarus memenuhi syarat:\r\n1. KTP, Akte, KK atau paspor\r\n2. Bayar dimuka', 75000, '1597856801-rental-kamera.jpg', '2020-08-19 10:06:42', '2020-08-19 10:06:42'),
(45, 40, 'Jahit dan Sablon', 'JS08', 'Jahit', 'Jasa kami meliputi jahit produksi masker kain, jahit konfeksi, jahit semi butik dan sablon dengan standart kualitas premium. Selain itu kami juga melayani jasa desain dan branding untuk sebuah clothing brand. Kepuasan klien adalah pioritas kami, ketepatan waktu produksi adalah komitmen kami. Jangan ragu untuk mengubungi kami, info CS: 081314460770', 70000, '1597927756-jahit-dan-sablon.jpg', '2020-08-20 05:49:18', '2020-08-20 05:49:18'),
(46, 39, 'Jasa Pembersih', 'PR10', 'Pembersih', 'Rumah bersih sangat unik, bukan hanya sebagai cleaning service namun juga housekeeping, jasa kebersihan dengan standard setara hotel yang disesuaikan.', 500000, '1597927936-jasa-pembersih-rumah.jpg', '2020-08-20 05:52:17', '2020-08-20 06:07:43'),
(47, 39, 'Jasa Pindah Rumah', 'JR12', 'Pindah Profesional', 'Kami memberikan pengalaman pindahan rumah bagi Anda. Solusi pindahan rumah All in dari kami. \r\nSesuai dengan slogan kami Pindah Rumah Murah, tentu kami memberikan tarif yang terjangkau, ekonomis, dan seefisien mungkin.\r\n\r\nTim kami terdiri dari SDM-SDM profesional di bidangnya, baik packing, trucking, loading, dan finishing. Kami memiliki armada dengan berbagai jenis sesuai dengan kebutuhan, mulai dari Pick Up/ Box hingga yang terbesar Truk dan Kontainer.', 700000, '1597928015-jasa-pindah-rumah.jpg', '2020-08-20 05:53:36', '2020-08-20 05:53:36'),
(48, 41, 'Tas Front Block', 'EIB4', 'Tas Depan Sepeda', 'Tas front block murah sepeda brompton kode EIBAG F1.&nbsp; Bracket sudah terpasang di badan belakang\r\ntas. Paket penjualan termasuk 1 tali selempang dan 1 cover bag.\r\nDimensi : P x L x T \r\nPanjang 24,5 cm\r\nLebar / tebal 6 cm – 11 cm ( mengecil ke atas )\r\nTinggi 21 cm\r\n\r\nBahan Dan Aksesoris :\r\n\r\n&nbsp;\r\n\r\ncordura 1000\r\n\r\nzipper YKK\r\n\r\nacetal\r\n\r\nalumunium (bagian dalam badan belakang)\r\n\r\nbracket besi\r\n\r\nPaket Penjualan :\r\n\r\n1 tas front block eibag F1\r\n\r\n1 tali selempang\r\n\r\n1\r\ncover bag<br>', 300000, '1597928093-tas-front-block.JPG', '2020-08-20 05:54:53', '2020-08-20 05:55:28'),
(49, 41, 'Parfum Kopi', 'PK03', 'Koke', 'Parfum Anti Mainstream !!! Khusus kamu para Pecinta Aroma Kopi..\r\n\r\nCOCOK UNTUK PRIA & WANITA\r\nALWAYS READY, SIAP KIRIM\r\nAromanya dibuat sedemikian rupa agar wanginya halus namun tidak menusuk dan tidak panas saat disemprotkan ke kulit\r\n\r\nIsi 35ml dengan aroma kopi yg lebih awet dibanding parfum lainnya.\r\nAroma Kopi selalu mampu menimbulkan rasa tenang, dan seringkali membawa kebahagiaan.', 65000, '1597928698-parfum-kopi.JPG', '2020-08-20 06:04:58', '2020-08-20 06:04:58'),
(50, 41, 'Cangkir Keramik', 'CK32', '1 set', '1 set cangkir keramik sengan desain menarik mengikuti tern. Cocok digunakan pada saat acara tunangan dan acara khusus lainnya. Buatan asli Indonesia.', 350000, '1597929182-cangkir-keramik.PNG', '2020-08-20 06:13:03', '2020-08-20 06:13:03'),
(51, 41, 'Bluesville x Masker', 'BM21', 'Masker', 'SPESIFIKASI:\r\nKain Scuba 270 Gram Full Colour Printing\r\n\r\nKEUNGGULAN:\r\nMenghalau 60-70% partikel\r\nBisa dicuci, dipakai berulang kali\r\nBahan lembut, nyaman digunakan\r\n\r\nBahan kuat, tidak mudah rusak', 39900, '1597929467-bluesville-x-masker.PNG', '2020-08-20 06:17:47', '2020-08-20 06:17:47'),
(52, 41, 'Steker L Bengkok', 'SB12', 'Putih', 'Steker L Bengkok Arde Colokan Listrik Broco SNI accessories<br></span>Merk : Broco\r\n- Spesifikasi : 16 A, 250 V\r\n-Produk buatan Indonesia dan telah sesuai dengan standar SNI dan LMK high\r\nquality', 40000, '1597931653-steker-l-bengkok.png', '2020-08-20 06:54:14', '2020-08-20 07:41:52'),
(53, 38, 'Eyeliner Pen', 'EP32', 'Mizzu', 'Eyeliner Pen yang bisa membuat penampilanmu menjadi lebih menarik sehingga&nbsp;menambah rasa percaya dirimu di depan publik', 50000, '1597934778-eyeliner-pen.JPG', '2020-08-20 07:46:18', '2020-08-20 07:46:18'),
(54, 38, 'Rollover Crayon', 'RC35', 'LIP', 'ROLLOVER REACTION LIP CHEEK CRAYON CHUNKY – ROTHKO\r\nCRAYON CHUNKY - ROTHKO BPOM RI : NA18181200060\r\nMark Rothko truly understood the power of color. His paintings are always void of objects, there are only colorful rectangles to translate meanings. Daring, chic, and rebellious, this color is all you need to have all eyes on you.\r\n\r\nAPPLICATION TIPS\r\n\r\nSTEP 1 Apply CHUNKY! directly to your lips and cheeks.\r\n\r\nSTEP 2 Use your fingers to blend and you’re good to go!\r\n\r\nPRO TIP Draw a sheer layer of color for a more subtle effect or build it up to make CHUNKY! unapologetically bold!', 125000, '1597934987-rollover-crayon.PNG', '2020-08-20 07:49:48', '2020-08-20 07:50:33'),
(55, 38, 'Cushion Compact', 'CC45', 'Honey', 'Deskripsi Refill 102 Honey Toast Cushion Compact Rollover Reaction 102 Honey Toast For medium skin-tone with yellow undertone.\r\nWe are all about enhanced and defined complexion minus the hassle. Our cult-covetable Cushion Compact Tinted Moisturizer comes even merrier with a refill pack! Now, you don’t have to be worried about running out of your cushion compact as it is easily be replaced with a fresh refill. Antimicrobial ruby puff included.', 135000, '1597935316-cushion-compact.PNG', '2020-08-20 07:55:17', '2020-08-20 07:55:17'),
(56, 39, 'Elqueen Craft', 'EC42', 'Pouch', 'Elqueen Craft UMKM Make Up Pouch – Cream\r\nMake up pouch berbahan outer kanvas dan inner laken yang didesain simple dengan print motif paris. Pouch yang memudahkan Anda untuk memuat dan membawa berbagai peralatan make up Anda saat beraktivitas sehari-hari. Dilengkapi dengan ruang utama dengan zipper. Mudah dicuci.<br>Material : outer kanvas dan inner laken, \r\nDimensi : 21 x 4,5 x 13 cm', 32000, '1597935478-elqueen-craft.PNG', '2020-08-20 07:57:59', '2020-08-20 07:58:53'),
(57, 42, 'Sorele', 'SR18', 'Beef', 'SORELE Sorondeng Lezat Produk Kuliner UMKM Pontianak – clamp\r\nSorondeng merupakan salah satu warisan kuliner Budaya Melayu.Berdasarkan tradisi yang ada, Sorondeng selalu disajikan saat ada acara besar bersama Ketupat Colet Rendang, khas Kabupaten Ketapang, Salah satu daerah di Kalimantan Barat. Sorondeng didominasi oleh parutan kelapa tua kering yang dibumbui.\r\nSebagian besar orang Indonesia menyebutnya sebagai Serundeng.', 35000, '1597935949-sorele.jpg', '2020-08-20 08:05:50', '2020-08-20 08:05:50'),
(58, 42, 'Abon Lele', 'L3L3', 'Abon', 'Abon\r\nlele enak dan bergizi produksi umkml okal tanpa pewarna dan pengawet kadaluarsa.', 65000, '1597936464-abon-lele.jpg', '2020-08-20 08:14:24', '2020-08-20 08:14:39'),
(59, 42, 'Jipang Kacang', 'JK95', 'kacang', 'Jipang Kacang Makanan Khas Kebumen UMKM Kebumen.<br><span>Komposisi\r\n:<br>\r\nTerbuatdarikacang yang renyahdandilengkapidengangulamerah yang manismenjadikanmakanankhas\r\nKEBUMEN yang lezat, gurih, manisdannikmat</span><br>', 19900, '1597936631-jipang-kacang.jpg', '2020-08-20 08:17:11', '2020-08-20 08:17:11'),
(60, 44, 'Madu Foresbi', 'MF30', 'Madu', '<span>Madu\r\nForesbi adalah 100% madu asli yang dikumpulkan oleh masyarakat desa yang\r\ntinggal di sekitar hutan di wilayah Riau.<br>\r\nManfaat madu:<br>\r\n1. Meningkatkan stamina<br>\r\n2. Meningkatkan metabolisme tubuh<br>\r\n3. Melancarkan peredaran darah<br>\r\n4. Meredakan batuk<br>\r\n<br>\r\nMembeli produk ini berarti kamu telah turut serta dalam mendukung program\r\npemberdayaan masyarakat desa sekitar hutan.</span>', 65000, '1597937010-madu-foresbi.jpg', '2020-08-20 08:23:30', '2020-08-20 08:23:30'),
(61, 44, 'Yougurt Murni', 'YM22', 'yougurt', 'Yougurt Tanpa Pemanis Buatan<br>Yoghurt yang terbuat dari susu berkualitas Asli\r\nBoyolali dengan hasil uji laboratorium, Kualitas susu di atas standart, yogood\r\nkental karena tanpa campuran, tidak terlalu asam nyaman di lidah.&nbsp;<br>', 9000, '1597937218-yougurt-murni.jpg', '2020-08-20 08:26:58', '2020-08-20 08:29:29'),
(62, 44, 'Minyak Asli', 'MS15', 'Minyak', 'Minyak Kayu Putih Asli Namlea<br><br>Khasiat:&nbsp;Membantu meredakan masuk angin, sakit peru, mual, muntah,\r\ngatal-gatal, akibat gigitan serangga.', 70000, '1597937547-minyak-asli.jpg', '2020-08-20 08:32:27', '2020-08-20 08:32:27'),
(63, 43, 'Rempah Sauna', 'RS85', 'No Brand', 'Rempah Herbal<br>Warisan Putri Keraton untuk menjaga kecantikan dan kesegaran kulit dengan bahan rempah asli Indonesia&nbsp;<span>di antaranya: akarwangi, jerukpurut, lempuyang, sereh,\r\nkayu secang dan klabet.&nbsp; <br>Manfaat: menjaga kelembutan dan mencerahkan kulit,\r\nmengatasi susah tidur (insomnia),\r\nmenghilangkan bau badan dan memperbaiki sirkulasi oksigen pada peredaran darah,\r\nmencegah keriput, detox bagi tubuh, serta menghilangkan letih lesu.&nbsp;</span>', 20000, '1597939433-rempah-sauna.jpeg', '2020-08-20 09:03:54', '2020-08-20 09:03:54'),
(64, 43, 'Wedang Kunyit', 'WK65', 'Rempah', 'Wedang Kunyit + Rempah minuman terbuat dari rempah - rempah Alami Nusantara yang\r\nkaya akan manfaat bagi kesehatan dan imunitas.&nbsp;<br>', 8000, '1597939693-wedang-kunyit.jpeg', '2020-08-20 09:08:14', '2020-08-20 09:10:49'),
(65, 43, 'Ketumbar', 'KB45', 'ketumbar utuh', 'Bumbu dan Rempah Ketumbar Utuh Coriander Bumbu Masak<br><ul>\r\n <li>Ketumbar</li>\r\n <li>Diolah secara highienis dan berkualitas</li>\r\n <li>Memiliki berbagai macam manfaat seperti mengatasi gangguan pencernaan,\r\n     menjaga kesehatan gigi dan mulut, mengatasi infeksi jamur dan bakteri,\r\n     dan masih banyak lainnya</li>\r\n <li>Ideal\r\n     dijadikan tambahan bumbu masak Anda</li></ul>', 5000, '1597940036-ketumbar.jpg', '2020-08-20 09:13:57', '2020-08-20 09:13:57'),
(66, 28, 'Beras Maknyuss', 'BM78', 'High', 'Tanpa pengawet, tanpa pemutih, tanpa pewangi', 150000, '1597940196-beras-maknyuss.JPG', '2020-08-20 09:16:36', '2020-08-20 09:16:36'),
(67, 28, 'Gula Rafinasi', 'SLY88', 'Gula', 'Gula Pasir dengan kondisi baru', 400000, '1597940340-gula-rafinasi.JPG', '2020-08-20 09:19:00', '2020-08-20 09:19:00'),
(68, 45, 'Alpukat Mentega', 'AM44', 'Alpukat', '<div>Alpukat mentega unggulan / alpukat mentega lampung / alpukat mentega</div><div>satu kilo perkiraan 4 sampai 5 buah</div><div>dikirim dalam keadaan setengah matang, apabila belum dimakan cukup letakkan di</div><div>tempat terbuka dalam suhu ruang. jangan di dalam kantong plastik</div><div>jangan di kulkas, jangan di rendam dalam beras maupun dibungkus kain.&nbsp;</div><div>Alpukat di tekan dan terasa seperti sudah empuk seperti menekan dodol artinya&nbsp;</div><div>alpukat siap komsumsi. Bijak dalam menentukan kapan waktu komsumsi dan penyimpanan&nbsp;</div><div>yang benar adalah tujuan untuk dapat hasil alpukat yang baik.</div>', 35000, '1597940576-alpukat-mentega.JPG', '2020-08-20 09:22:56', '2020-08-20 09:22:56'),
(69, 45, 'Kurma Sukari Basah', 'KSB4', 'Kurma', 'Kurma Original / Sukari Basah', 100000, '1597940744-kurma-sukari-basah.JPG', '2020-08-20 09:25:45', '2020-08-20 09:25:45'),
(70, 45, 'Kentang Dieng', 'KD25', 'kentang', 'Makanan Pokok di Negara Eropa', 8000, '1597940914-kentang-dieng.JPG', '2020-08-20 09:28:34', '2020-08-20 09:28:34'),
(71, 46, 'Ikan Asin Daging', 'AS12', 'Ikan', 'Ikan Asin Daging Tenggiri<br>ikan asin daging tenggiri/tenggiri kualitas asli nomor 1<br>', 15000, '1597941061-ikan-asin-daging.JPG', '2020-08-20 09:31:01', '2020-08-20 09:31:01'),
(72, 46, 'Bliss Salmon', 'BS89', 'Salmon', '<div>bliss kitchen trim salmon fish norway and trout tetelan daging ikan salmon</div><div>-daging salmon fresh</div><div>-memiliki banyak kandungan nutrisi</div><div>-dapat dikonsumsi oleh semua kalangan</div>', 13500, '1597941124-bliss-salmon.JPG', '2020-08-20 09:32:05', '2020-08-20 09:32:05'),
(73, 45, 'Ikan Dori', 'Id38', 'ikan', '<div>-ikan dori fillet segar</div><div>-sehat dan bergizi</div><div>-dikemas per kilo isi 3-4 fillet ikan</div>', 52000, '1597941247-ikan-dori.JPG', '2020-08-20 09:34:07', '2020-08-20 09:34:07'),
(74, 47, 'Yukitea', 'MY29', 'minum', 'Yukitea minuman teh susu dan rasa lainnya', 15000, '1597941422-yukitea.JPG', '2020-08-20 09:37:03', '2020-08-20 09:37:03'),
(75, 47, 'Jack Daniels', 'JD', 'bagus', 'minuman beralkohol-minumal keras', 750000, '1597941516-jack-daniels.JPG', '2020-08-20 09:38:36', '2020-08-20 09:38:52'),
(76, 47, 'Saleger Drink', 'SD125', 'Minuman', '<div>Saleger herbal drink</div><div>minuman kesehatan/minuman segar/obat/kamu</div>', 125000, '1597941634-saleger-drink.JPG', '2020-08-20 09:40:35', '2020-08-20 09:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(54, 44, 'pinjam', 'Pinjam per Hari', 75000, 10, '2020-08-19 10:07:20', '2020-08-19 10:07:20'),
(53, 43, 'PH01', '10 Kali', 100000, 10, '2020-08-19 10:04:56', '2020-08-19 10:04:56'),
(52, 42, 'HN02', 'Putih', 250000, 10, '2020-08-19 10:01:05', '2020-08-19 10:01:05'),
(51, 42, 'HN01', 'Merah', 250000, 10, '2020-08-19 10:00:46', '2020-08-19 10:00:46'),
(50, 40, 'JR01', 'Urut Pria', 55000, 10, '2020-08-19 09:52:11', '2020-08-19 09:52:11'),
(49, 40, 'JR01', 'Urut Wanita', 50000, 10, '2020-08-19 09:51:52', '2020-08-19 09:51:52'),
(48, 41, 'LD01', 'Dinding 20x20', 280000, 10, '2020-08-19 09:51:13', '2020-08-19 09:51:13'),
(47, 39, 'BS90', 'Body Scrub 90 Menit', 100000, 10, '2020-08-19 09:43:51', '2020-08-19 09:43:51'),
(46, 39, 'BM90', 'Body Massage 90 Menit', 150000, 10, '2020-08-19 09:43:13', '2020-08-19 09:43:13'),
(45, 39, 'BM60', 'Body Massage 60 Menit', 100000, 10, '2020-08-19 09:42:29', '2020-08-19 09:42:29'),
(44, 36, 'SK02', 'Paket (Salon Rambut + Treatment Wajah + Make Up)', 300000, 10, '2020-08-19 09:28:32', '2020-08-19 09:28:32'),
(43, 36, 'SK01', 'Paket (Salon Rambut + Make Up)', 250000, 10, '2020-08-19 09:27:01', '2020-08-19 09:27:01'),
(42, 37, '03', 'Warna Hijau', 240000, 15, '2020-08-19 07:10:02', '2020-08-19 07:10:02'),
(41, 37, '02', 'Warna Biru', 240000, 10, '2020-08-19 07:09:34', '2020-08-19 07:09:34'),
(35, 38, '01', '36', 80000, 14, '2020-08-19 03:15:22', '2020-08-19 03:18:31'),
(36, 38, '02', '37', 80000, 20, '2020-08-19 03:16:42', '2020-08-19 03:18:31'),
(37, 38, '03', '38', 82000, 10, '2020-08-19 03:18:04', '2020-08-19 03:18:31'),
(38, 38, '04', '39', 82000, 10, '2020-08-19 03:18:25', '2020-08-19 03:18:31'),
(39, 38, '05', '40', 82000, 10, '2020-08-19 03:19:23', '2020-08-19 03:19:23'),
(40, 37, '01', 'Warna Kream', 240000, 25, '2020-08-19 03:30:23', '2020-08-19 07:09:05'),
(55, 48, 'EIB01', 'S', 300000, 30, '2020-08-20 05:59:46', '2020-08-20 05:59:46'),
(56, 47, 'Pindah Asik', 'Kesepakatan (Normal)', 700000, 10, '2020-08-20 06:01:00', '2020-08-20 06:01:00'),
(57, 46, 'Bersih Asik', 'Kesepakatan (Normal)', 500000, 100, '2020-08-20 06:01:42', '2020-08-20 06:01:42'),
(58, 45, 'Jahit Bagus', 'Kesepakatan (Normal)', 70000, 100, '2020-08-20 06:02:16', '2020-08-20 06:02:16'),
(59, 49, 'BC95', 'Black Coffee (Kopi Asli)', 65000, 25, '2020-08-20 06:05:55', '2020-08-20 06:05:55'),
(60, 49, 'BC90', 'Choco Coffee (Kopi + Vanilla)', 65000, 10, '2020-08-20 06:06:26', '2020-08-20 06:06:26'),
(61, 50, 'Sarasvati', 'Warna Hijau', 350000, 15, '2020-08-20 06:14:19', '2020-08-20 06:14:19'),
(62, 50, 'Sarasvati', 'Biru', 350000, 10, '2020-08-20 06:14:38', '2020-08-20 06:14:38'),
(63, 51, '01', 'XS', 39900, 25, '2020-08-20 06:48:00', '2020-08-20 06:48:00'),
(64, 51, '02', 'S', 42900, 15, '2020-08-20 06:49:29', '2020-08-20 06:49:29'),
(65, 51, '03', 'M', 44900, 20, '2020-08-20 06:50:32', '2020-08-20 06:50:32'),
(66, 52, 'SBP1', 'Warna Putih', 40000, 15, '2020-08-20 06:54:48', '2020-08-20 06:55:15'),
(67, 52, 'SBP2', 'Warna Kream', 40000, 20, '2020-08-20 07:13:46', '2020-08-20 07:13:46'),
(68, 53, 'PN75', 'Hitam', 50000, 35, '2020-08-20 07:46:52', '2020-08-20 07:46:52'),
(69, 54, 'WP25', 'Warna Pink', 125000, 10, '2020-08-20 07:51:14', '2020-08-20 07:51:14'),
(70, 54, 'WP35', 'Warna Merah', 125000, 15, '2020-08-20 07:51:33', '2020-08-20 07:51:33'),
(71, 56, 'PO88', 'Warna Putih', 32000, 25, '2020-08-20 08:07:24', '2020-08-20 08:07:24'),
(72, 57, 'RB20', 'Rasa Beef (20 Gram)', 15000, 24, '2020-08-20 08:08:37', '2020-08-20 08:09:44'),
(73, 57, 'RC20', 'Rasa Chicken (20 Gram)', 15000, 60, '2020-08-20 08:10:22', '2020-08-20 08:10:22'),
(74, 57, 'RB40', 'Rasa Beef (40 Gram)', 25000, 12, '2020-08-20 08:11:04', '2020-08-20 08:11:04'),
(75, 57, 'RC75', 'Rasa Clamp (75 Gram)', 35000, 5, '2020-08-20 08:11:48', '2020-08-20 08:11:48'),
(76, 59, 'Lokal', '500 gram', 19900, 15, '2020-08-20 08:17:53', '2020-08-20 08:20:17'),
(77, 59, 'LK01', '800 gram', 37000, 16, '2020-08-20 08:19:33', '2020-08-20 08:20:17'),
(78, 59, 'LK88', '1 kg', 45000, 26, '2020-08-20 08:20:44', '2020-08-20 08:20:44'),
(79, 60, 'MF30', '300 gram', 65000, 25, '2020-08-20 08:23:58', '2020-08-20 08:23:58'),
(80, 60, 'MF31', '500 gram', 110000, 15, '2020-08-20 08:24:55', '2020-08-20 08:24:55'),
(81, 61, 'RS25', 'Rasa Strawberry (360 Gram)', 9000, 32, '2020-08-20 08:28:01', '2020-08-20 08:28:01'),
(82, 61, 'RS24', 'Rasa Anggur (360 Gram)', 9000, 25, '2020-08-20 08:28:27', '2020-08-20 08:28:27'),
(83, 61, 'RS27', 'Rasa Greentea (360 Gram)', 9000, 21, '2020-08-20 08:29:08', '2020-08-20 08:29:08'),
(84, 62, 'MM100', '100 ml', 70000, 15, '2020-08-20 08:33:05', '2020-08-20 08:33:05'),
(85, 63, 'RS24', '100 gram', 20000, 15, '2020-08-20 09:04:55', '2020-08-20 09:04:55'),
(86, 64, 'WE170', '170 ml', 8000, 20, '2020-08-20 09:08:50', '2020-08-20 09:08:50'),
(87, 64, 'WE1000', '1000 ml', 30000, 15, '2020-08-20 09:09:36', '2020-08-20 09:09:36'),
(88, 65, 'KU77', '50 gram', 5000, 35, '2020-08-20 09:14:30', '2020-08-20 09:14:30'),
(89, 66, 'BM23', '5000 gram', 150000, 50, '2020-08-20 09:17:14', '2020-08-20 09:17:14'),
(90, 67, 'SL05', '50 kg', 400000, 10, '2020-08-20 09:19:34', '2020-08-20 09:20:33'),
(91, 67, 'SL06', '120 kg', 800000, 10, '2020-08-20 09:19:34', '2020-08-20 09:20:33'),
(92, 68, 'AP09', '1100 gram', 35000, 25, '2020-08-20 09:23:56', '2020-08-20 09:23:56'),
(93, 69, 'Baru', '3100 gram', 100000, 30, '2020-08-20 09:26:26', '2020-08-20 09:26:26'),
(94, 70, 'KN01', '500 gram', 8000, 10, '2020-08-20 09:29:01', '2020-08-20 09:29:01'),
(95, 72, 'BS35', '250 gram', 13500, 25, '2020-08-20 09:32:55', '2020-08-20 09:32:55'),
(96, 73, 'ID38', '1 kg', 52000, 12, '2020-08-20 09:34:40', '2020-08-20 09:34:40'),
(97, 74, 'MY55', '250 ml', 15000, 10, '2020-08-20 09:37:39', '2020-08-20 09:37:39'),
(98, 76, '45', '1000 ml', 125000, 50, '2020-08-20 09:41:18', '2020-08-20 09:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_code` varchar(2) NOT NULL,
  `province_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province_code`, `province_name`) VALUES
(1, '01', 'Sumatera Utara'),
(2, '02', 'Sumatera Barat'),
(3, '03', 'Jawa Barat'),
(4, '04', 'Jawa Tengah'),
(5, '05', 'Jawa Timur'),
(6, '06', 'Sulawesi Utara');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(8, 27, '7664271544063472.jpg', '2018-12-05 19:31:12', '2018-12-05 19:31:12'),
(9, 27, '6768551544063472.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(10, 27, '4131281544063473.jpg', '2018-12-05 19:31:13', '2018-12-05 19:31:13'),
(11, 28, '6720891544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(12, 28, '4686631544063734.jpg', '2018-12-05 19:35:34', '2018-12-05 19:35:34'),
(13, 28, '5960611544063759.jpeg', '2018-12-05 19:35:59', '2018-12-05 19:35:59'),
(14, 29, '5146071544063935.JPG', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(15, 29, '762811544063935.jpg', '2018-12-05 19:38:55', '2018-12-05 19:38:55'),
(16, 29, '3716041544063935.jpg', '2018-12-05 19:38:56', '2018-12-05 19:38:56'),
(17, 30, '6832831544064156.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(18, 30, '1655391544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(19, 30, '4693601544064157.jpg', '2018-12-05 19:42:37', '2018-12-05 19:42:37'),
(20, 31, '9233341544064441.jpg', '2018-12-05 19:47:21', '2018-12-05 19:47:21'),
(21, 31, '8167501544064441.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(22, 31, '3887071544064442.jpg', '2018-12-05 19:47:22', '2018-12-05 19:47:22'),
(23, 32, '3998691544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(24, 32, '1159141544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(25, 32, '2035101544064618.jpg', '2018-12-05 19:50:18', '2018-12-05 19:50:18'),
(26, 33, '2128501544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(27, 33, '5649911544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(28, 33, '3704141544064917.jpg', '2018-12-05 19:55:17', '2018-12-05 19:55:17'),
(29, 34, '3899431544065346.JPG', '2018-12-05 20:02:26', '2018-12-05 20:02:26'),
(30, 34, '119131544065346.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(31, 34, '6905491544065347.jpg', '2018-12-05 20:02:27', '2018-12-05 20:02:27'),
(32, 35, '981591544065510.jpeg', '2018-12-05 20:05:10', '2018-12-05 20:05:10'),
(33, 35, '5320811544065510.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(34, 35, '1153181544065511.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(35, 36, '3238191597854932.jpg', '2020-08-19 09:35:34', '2020-08-19 09:35:34'),
(36, 36, '9956641597855091.jpg', '2020-08-19 09:38:11', '2020-08-19 09:38:11'),
(37, 41, '3337301597855952.JPG', '2020-08-19 09:52:32', '2020-08-19 09:52:32'),
(38, 42, '296231597856381.PNG', '2020-08-19 09:59:42', '2020-08-19 09:59:42'),
(39, 48, '2543961597928148.JPG', '2020-08-20 05:55:48', '2020-08-20 05:55:48'),
(40, 48, '2150711597928260.PNG', '2020-08-20 05:57:41', '2020-08-20 05:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alamat_usaha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Deskripsi_usaha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `province`, `country`, `postal_code`, `toko`, `mobile`, `nomor_hp`, `Alamat_usaha`, `Deskripsi_usaha`) VALUES
(2, 'Maria Anastasya Manullang', 'mariaanastasyamanullang@gmail.com', NULL, '$2y$10$0LUcVaEN8gdbnbw0u2Na2uOwc4KEK0wlkMlahLnZi7XRi29696Gqy', NULL, 'ZSMcflpyILjGG2KFGgiMsKRHVRHYGaCDyBM1OQUgHbIdUjuW07tdCNVUWkJS', '2020-08-09 20:03:18', '2020-08-09 20:03:18', 'Medan', 'Brayan', 'Sumatera Utara', 'Indonesia', '001', NULL, '089992728', NULL, NULL, NULL),
(1, 'Kios Kita Semua', 'kioskitasemua.kiostas@gmail.com', NULL, '$2y$10$S22S6UuHCESeuf8YBqJdYucPFGM3bFPaJlYfUAldbUnhJB7ZbkNAu', 1, '2nh0Id0NXnEUPGKtKdfuiZTa8o3aTuB8emIesyETsikU41gEyHsaa7o6x46g', '2020-08-09 20:01:42', '2020-08-09 20:01:42', 'Medan', 'Brayan', '0', 'Indonesia', '001', 'Ulos Batak', '89992728', '087715150148', 'Jl. Balige', 'Menjual berbagai macam ulos'),
(9, 'Jessycha', 'jessycha@gmail.com', NULL, '$2y$10$SPEmAfHYQkJr/7bVtH5KTezSX2QU9UvafWz.H.3sGZpXWWQke4P5K', NULL, 'twQlfaNaUXeXgejUzx6IQb2nO4Mfld3ftslmstR2amHDkzY82vUPRoorjx5N', '2020-08-20 20:55:09', '2020-08-20 20:55:09', 'Medan', 'Balige', 'Sumatera Utara', 'Indonesia', '2088', NULL, '082217178689', NULL, NULL, NULL);

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
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
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
  ADD UNIQUE KEY `users_email_unique` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
