-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2026 at 04:42 AM
-- Server version: 5.7.44
-- PHP Version: 8.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lat1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\Ticket', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 4, \"qty\": 1, \"note\": \"kimbek\", \"due_at\": \"2026-08-27T00:00:00.000000Z\", \"status\": \"booked\", \"user_id\": 19, \"asset_id\": 9, \"booked_at\": \"2026-08-27T12:51:00.000000Z\", \"created_at\": \"2026-08-27T05:51:00.000000Z\", \"updated_at\": \"2026-08-27T05:51:00.000000Z\", \"borrowed_at\": null, \"returned_at\": null, \"ticket_number\": \"REQ20260827-0DU8\"}}', NULL, '2026-08-26 22:51:00', '2026-08-26 22:51:00'),
(2, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"booked\", \"updated_at\": \"2026-08-27T05:51:00.000000Z\", \"borrowed_at\": null}, \"attributes\": {\"status\": \"borrowed\", \"updated_at\": \"2026-08-27T05:52:00.000000Z\", \"borrowed_at\": \"2026-08-27T05:52:00.000000Z\"}}', NULL, '2026-08-26 22:52:00', '2026-08-26 22:52:00'),
(3, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"borrowed\", \"updated_at\": \"2026-08-27T05:52:00.000000Z\"}, \"attributes\": {\"status\": \"verifying\", \"updated_at\": \"2026-08-27T05:52:17.000000Z\"}}', NULL, '2026-08-26 22:52:17', '2026-08-26 22:52:17'),
(4, 'default', 'created', 'App\\Models\\AssetReturn', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 3, \"qty\": 1, \"noted\": \"Adoh sorry\", \"user_id\": 1, \"asset_id\": 9, \"condition\": \"lost\", \"ticket_id\": 4, \"created_at\": \"2026-08-27T05:52:47.000000Z\", \"updated_at\": \"2026-08-27T05:52:47.000000Z\", \"returned_at\": \"2026-08-27T05:52:47.000000Z\"}}', NULL, '2026-08-26 22:52:47', '2026-08-26 22:52:47'),
(5, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"verifying\", \"updated_at\": \"2026-08-27T05:52:17.000000Z\", \"returned_at\": null}, \"attributes\": {\"status\": \"returned\", \"updated_at\": \"2026-08-27T05:52:47.000000Z\", \"returned_at\": \"2026-08-27T05:52:47.000000Z\"}}', NULL, '2026-08-26 22:52:47', '2026-08-26 22:52:47'),
(6, 'default', 'created', 'App\\Models\\Ticket', 'created', 5, 'App\\Models\\User', 9, '{\"attributes\": {\"id\": 5, \"qty\": 1, \"note\": \"Pinjam Sebentar\", \"due_at\": \"2026-09-01T00:00:00.000000Z\", \"status\": \"booked\", \"user_id\": 10, \"asset_id\": 5, \"booked_at\": \"2026-08-31T09:21:55.000000Z\", \"created_at\": \"2026-08-31T02:21:55.000000Z\", \"updated_at\": \"2026-08-31T02:21:55.000000Z\", \"borrowed_at\": null, \"returned_at\": null, \"ticket_number\": \"REQ20260831-NCUB\"}}', NULL, '2026-08-30 19:21:56', '2026-08-30 19:21:56'),
(7, 'default', 'created', 'App\\Models\\Ticket', 'created', 6, 'App\\Models\\User', 9, '{\"attributes\": {\"id\": 6, \"qty\": 1, \"note\": null, \"due_at\": \"2026-09-02T00:00:00.000000Z\", \"status\": \"booked\", \"user_id\": 9, \"asset_id\": 4, \"booked_at\": \"2026-08-31T09:28:40.000000Z\", \"created_at\": \"2026-08-31T02:28:40.000000Z\", \"updated_at\": \"2026-08-31T02:28:40.000000Z\", \"borrowed_at\": null, \"returned_at\": null, \"ticket_number\": \"REQ20260831-G1UY\"}}', NULL, '2026-08-30 19:28:40', '2026-08-30 19:28:40'),
(8, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"booked\", \"updated_at\": \"2026-08-31T02:21:55.000000Z\"}, \"attributes\": {\"status\": \"cancelled\", \"updated_at\": \"2026-08-31T02:30:01.000000Z\"}}', NULL, '2026-08-30 19:30:01', '2026-08-30 19:30:01'),
(9, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"booked\", \"updated_at\": \"2026-08-31T02:28:40.000000Z\", \"borrowed_at\": null}, \"attributes\": {\"status\": \"borrowed\", \"updated_at\": \"2026-08-31T02:30:09.000000Z\", \"borrowed_at\": \"2026-08-31T02:30:09.000000Z\"}}', NULL, '2026-08-30 19:30:09', '2026-08-30 19:30:09'),
(10, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"borrowed\", \"updated_at\": \"2026-08-31T02:30:09.000000Z\"}, \"attributes\": {\"status\": \"verifying\", \"updated_at\": \"2026-08-31T02:30:25.000000Z\"}}', NULL, '2026-08-30 19:30:25', '2026-08-30 19:30:25'),
(11, 'default', 'created', 'App\\Models\\AssetReturn', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 4, \"qty\": 1, \"noted\": \"adoh\", \"user_id\": 1, \"asset_id\": 4, \"condition\": \"damaged\", \"ticket_id\": 6, \"created_at\": \"2026-08-31T02:30:51.000000Z\", \"updated_at\": \"2026-08-31T02:30:51.000000Z\", \"returned_at\": \"2026-08-31T02:30:51.000000Z\"}}', NULL, '2026-08-30 19:30:51', '2026-08-30 19:30:51'),
(12, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"verifying\", \"updated_at\": \"2026-08-31T02:30:25.000000Z\", \"returned_at\": null}, \"attributes\": {\"status\": \"returned\", \"updated_at\": \"2026-08-31T02:30:51.000000Z\", \"returned_at\": \"2026-08-31T02:30:51.000000Z\"}}', NULL, '2026-08-30 19:30:51', '2026-08-30 19:30:51'),
(13, 'default', 'created', 'App\\Models\\Ticket', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 7, \"qty\": 1, \"note\": null, \"due_at\": \"2026-09-01T00:00:00.000000Z\", \"status\": \"booked\", \"user_id\": 18, \"asset_id\": 6, \"booked_at\": \"2026-09-01T10:15:27.000000Z\", \"created_at\": \"2026-09-01T03:15:27.000000Z\", \"updated_at\": \"2026-09-01T03:15:27.000000Z\", \"borrowed_at\": null, \"returned_at\": null, \"ticket_number\": \"REQ20260901-4EWV\"}}', NULL, '2026-08-31 20:15:27', '2026-08-31 20:15:27'),
(14, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"booked\", \"updated_at\": \"2026-09-01T03:15:27.000000Z\", \"borrowed_at\": null}, \"attributes\": {\"status\": \"borrowed\", \"updated_at\": \"2026-09-01T03:16:05.000000Z\", \"borrowed_at\": \"2026-09-01T03:16:05.000000Z\"}}', NULL, '2026-08-31 20:16:05', '2026-08-31 20:16:05'),
(15, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"borrowed\", \"updated_at\": \"2026-09-01T03:16:05.000000Z\"}, \"attributes\": {\"status\": \"verifying\", \"updated_at\": \"2026-09-01T03:16:15.000000Z\"}}', NULL, '2026-08-31 20:16:15', '2026-08-31 20:16:15'),
(16, 'default', 'created', 'App\\Models\\AssetReturn', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"id\": 5, \"qty\": 1, \"noted\": null, \"user_id\": 1, \"asset_id\": 6, \"condition\": \"lost\", \"ticket_id\": 7, \"created_at\": \"2026-09-01T03:17:48.000000Z\", \"updated_at\": \"2026-09-01T03:17:48.000000Z\", \"returned_at\": \"2026-09-01T03:17:48.000000Z\"}}', NULL, '2026-08-31 20:17:48', '2026-08-31 20:17:48'),
(17, 'default', 'updated', 'App\\Models\\Ticket', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"status\": \"verifying\", \"updated_at\": \"2026-09-01T03:16:15.000000Z\", \"returned_at\": null}, \"attributes\": {\"status\": \"returned\", \"updated_at\": \"2026-09-01T03:17:48.000000Z\", \"returned_at\": \"2026-09-01T03:17:48.000000Z\"}}', NULL, '2026-08-31 20:17:48', '2026-08-31 20:17:48'),
(18, 'default', 'updated', 'App\\Models\\AssetReturn', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"noted\": null, \"updated_at\": \"2026-09-01T03:17:48.000000Z\"}, \"attributes\": {\"noted\": \"Uhuy\", \"updated_at\": \"2026-09-01T03:19:19.000000Z\"}}', NULL, '2026-08-31 20:19:19', '2026-08-31 20:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int(11) NOT NULL,
  `good_qty` int(11) NOT NULL,
  `damaged_qty` int(11) NOT NULL,
  `borrowed_qty` int(11) NOT NULL,
  `lost_qty` int(11) NOT NULL,
  `available_qty` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purchase_price` decimal(15,2) DEFAULT NULL,
  `procurement_year` year(4) DEFAULT NULL,
  `funding_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `category_id`, `name`, `code`, `total_qty`, `good_qty`, `damaged_qty`, `borrowed_qty`, `lost_qty`, `available_qty`, `is_available`, `created_at`, `updated_at`, `image`, `description`, `purchase_price`, `procurement_year`, `funding_source`) VALUES
(4, 5, 'Monitor Led 22 Inch ACER', 'ELE001', 12, 10, 0, 2, 0, 0, 1, '2026-08-24 05:33:31', '2026-08-24 05:33:31', 'Asset Picture/01M0SW5Z8QHGQP4Z4VXVWWNK30.webp', '<ul><li><p>Menggunakan <strong>Panel IPS</strong> yang menghasilkan warna cerah dan sudut pandang luas dari berbagai sisi.</p></li><li><p>Memiliki refresh rate <strong>100Hz</strong> yang membuat pergerakan kursor sangat mulus di mata siswa.</p></li><li><p>Dilengkapi teknologi <em>Acer VisionCare</em> (<em>Flicker-less</em> dan <em>BlueLightShield</em>) untuk menjaga kesehatan mata siswa. [<a href=\"https://www.google.com/search?q=product&amp;prds=pvt:hg,productid:12094614534952627190&amp;ibp=oshop\">1</a>]</p></li></ul>', 1200000.00, '2024', 'Dana BOS'),
(5, 5, 'Kabel HDMI', 'ELE002', 24, 24, 0, 0, 0, 0, 1, '2026-08-24 05:47:36', '2026-08-24 06:47:52', 'Asset Picture/01M0SWZRDEN4RZH6K7SR2HGM4T.jpg', '<p>Kabel HDMI 1,5 Meter Male to Male Ultra HD</p>', 50000.00, '2025', 'Dana BOS'),
(6, 4, 'Sapu', 'KEB001', 22, 20, 0, 2, 0, 0, 1, '2026-08-24 06:19:34', '2026-08-24 06:19:34', 'Asset Picture/01M0SYT8Q1660N1SR2RE7R8N0D.jpg', '<p><strong>Sapu</strong> adalah alat kebersihan yang digunakan untuk membersihkan debu, kotoran, dan sampah ringan dari permukaan lantai.</p>', 30000.00, '2026', 'Dana BOS'),
(7, 4, 'Pel', 'KEB002', 18, 15, 1, 2, 0, 0, 1, '2026-08-24 06:21:13', '2026-08-24 06:21:13', 'Asset Picture/01M0SYX9ZR4933Z5W4BY9JN23X.webp', '<p><strong>Pel</strong> adalah alat kebersihan yang digunakan untuk membersihkan lantai dari debu, kotoran, dan noda. Pel umumnya terdiri dari gagang dan kain atau serat penyerap yang digunakan bersama air dan cairan pembersih.</p>', 40000.00, '2025', 'Dana BOS'),
(8, 8, 'Terpal Ukuran Sedang', 'KEP001', 10, 8, 0, 2, 0, 0, 1, '2026-08-24 06:53:07', '2026-08-24 06:53:07', 'Asset Picture/01M0T0QPE0ZJWY67HREANHDJA0.jpg', '<p>Terpal merupakan lembaran berbahan plastik yang digunakan sebagai pelindung dari hujan, panas, debu, dan kotoran. Terpal dapat digunakan untuk menutup atau melindungi peralatan dan barang di lingkungan sekolah, baik di dalam maupun luar ruangan.</p>', 100000.00, '2024', 'Dana BOS'),
(9, 8, 'Set Sound System', 'KEP002', 5, 3, 1, 1, 0, 0, 1, '2026-08-24 07:05:41', '2026-08-24 07:05:41', 'Asset Picture/01M0T1EPX3GCX7TWE6R3J92BTW.jpg', '<p>Sound system merupakan seperangkat peralatan audio yang digunakan untuk menghasilkan dan memperkuat suara. Satu set sound system umumnya terdiri dari speaker, amplifier, mixer, dan mikrofon, serta digunakan untuk kegiatan sekolah seperti upacara, rapat, presentasi, dan berbagai acara lainnya.</p>', 5000000.00, '2022', 'Dana BOS'),
(10, 6, 'Bola Basket', 'OLA001', 10, 10, 0, 0, 0, 0, 1, '2026-08-24 07:08:07', '2026-08-24 07:08:07', 'Asset Picture/01M0T1K610NBQGYYW29M2WT0EV.jpg', '<p>Bola basket merupakan perlengkapan olahraga berbentuk bulat yang digunakan dalam permainan bola basket. Bola ini digunakan untuk latihan maupun pertandingan siswa di lingkungan sekolah dan umumnya terbuat dari bahan karet atau kulit sintetis yang tahan digunakan di dalam maupun luar ruangan.</p>', 150000.00, '2025', 'Dana BOS'),
(11, 6, 'Bola Futsal', 'OLA002', 12, 12, 0, 0, 0, 0, 1, '2026-08-24 07:13:26', '2026-08-24 07:13:26', 'Asset Picture/01M0T1WXFB50WTHF2YCG8297B0.jpg', '<p>Bola khusus permainan futsal dengan ukuran dan pantulan yang disesuaikan untuk digunakan di lapangan futsal. Cocok untuk kegiatan olahraga, latihan ekstrakurikuler, dan pertandingan antar siswa.</p>', 150000.00, '2024', 'Dana BOS'),
(12, 7, 'Spidol', 'PER001', 32, 30, 0, 0, 2, 0, 1, '2026-08-24 07:17:14', '2026-08-24 07:17:14', 'Asset Picture/01M0T23W5NG6V5VJW8WB8NJJTQ.jpg', '<p>Spidol digunakan untuk menulis atau membuat tanda pada papan tulis, kertas, karton, dan media lainnya. Cocok untuk kegiatan pembelajaran, presentasi, serta kebutuhan administrasi sekolah.</p>', 7000.00, '2026', 'Dana BOS'),
(13, 7, 'Penghapus Papan Tulis', 'PER002', 26, 24, 2, 0, 0, 0, 1, '2026-08-24 07:19:35', '2026-08-24 07:19:35', 'Asset Picture/01M0T285EWFQQJRMVQDH4F80EQ.jpg', '<p>Penghapus papan tulis digunakan untuk membersihkan tulisan spidol pada papan tulis sehingga dapat digunakan kembali untuk kegiatan pembelajaran.</p>', 10000.00, '2026', 'Dana BOS');

-- --------------------------------------------------------

--
-- Table structure for table `asset_fines`
--

CREATE TABLE `asset_fines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_return_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('late','damaged','lost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `noted` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_fines`
--

INSERT INTO `asset_fines` (`id`, `asset_return_id`, `type`, `amount`, `noted`, `created_at`, `updated_at`) VALUES
(1, 1, 'late', 5000.00, 'Jangan Terlambat Lagi', '2026-08-24 09:14:52', '2026-08-24 09:14:52'),
(2, 2, 'lost', 40000.00, 'Charged 100% of purchase price due to asset lost.', '2026-08-24 20:16:22', '2026-08-24 20:16:22'),
(3, 3, 'lost', 5000000.00, 'Charged 100% of purchase price due to asset lost.', '2026-08-26 22:53:59', '2026-08-26 22:53:59'),
(4, 4, 'damaged', 0.00, 'Please describe the damage and repair cost here.', '2026-08-30 19:35:59', '2026-08-30 19:35:59'),
(5, 5, 'lost', 30000.00, 'Charged 100% of purchase price due to asset lost.', '2026-08-31 20:19:11', '2026-08-31 20:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `asset_returns`
--

CREATE TABLE `asset_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `condition` enum('good','damaged','lost') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'good',
  `returned_at` timestamp NOT NULL,
  `noted` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_returns`
--

INSERT INTO `asset_returns` (`id`, `ticket_id`, `user_id`, `asset_id`, `qty`, `condition`, `returned_at`, `noted`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 5, 1, 'good', '2026-08-24 07:25:35', 'Mantap', '2026-08-24 07:25:35', '2026-08-24 07:25:35'),
(2, 3, 1, 7, 1, 'lost', '2026-08-24 20:15:17', 'Adohh ganti', '2026-08-24 20:15:17', '2026-08-24 20:15:17'),
(3, 4, 1, 9, 1, 'lost', '2026-08-26 22:52:47', 'Adoh sorry', '2026-08-26 22:52:47', '2026-08-26 22:52:47'),
(4, 6, 1, 4, 1, 'damaged', '2026-08-30 19:30:51', 'adoh', '2026-08-30 19:30:51', '2026-08-30 19:30:51'),
(5, 7, 1, 6, 1, 'lost', '2026-08-31 20:17:48', 'Uhuy', '2026-08-31 20:17:48', '2026-08-31 20:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1788232524),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1788232524;', 1788232524),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:108:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"ViewAny:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"View:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:16:\"Create:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:16:\"Update:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:16:\"Delete:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"DeleteAny:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"Restore:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:21:\"ForceDelete:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:24:\"ForceDeleteAny:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:20:\"RestoreAny:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:19:\"Replicate:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:17:\"Reorder:Classroom\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"ViewAny:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:10:\"View:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"Create:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:12:\"Update:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:12:\"Delete:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"DeleteAny:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:13:\"Restore:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:17:\"ForceDelete:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:20:\"ForceDeleteAny:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:16:\"RestoreAny:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:15:\"Replicate:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:13:\"Reorder:Major\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:15:\"ViewAny:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:12:\"View:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:14:\"Create:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:14:\"Update:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:14:\"Delete:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:17:\"DeleteAny:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"Restore:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:19:\"ForceDelete:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:22:\"ForceDeleteAny:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:18:\"RestoreAny:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:17:\"Replicate:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"Reorder:Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"ViewAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:9:\"View:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"Create:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"Update:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"Delete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"DeleteAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"Restore:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:16:\"ForceDelete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:19:\"ForceDeleteAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:15:\"RestoreAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:14:\"Replicate:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:12:\"Reorder:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:12:\"ViewAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:9:\"View:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"Create:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:11:\"Update:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:11:\"Delete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:14:\"DeleteAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:12:\"Restore:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:16:\"ForceDelete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:19:\"ForceDeleteAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:15:\"RestoreAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"Replicate:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:12:\"Reorder:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:13:\"ViewAny:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:10:\"View:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:12:\"Create:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:12:\"Update:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:12:\"Delete:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:15:\"DeleteAny:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:13:\"Restore:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:17:\"ForceDelete:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:20:\"ForceDeleteAny:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:16:\"RestoreAny:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:15:\"Replicate:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:13:\"Reorder:Asset\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:16:\"ViewAny:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:13:\"View:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:15:\"Create:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:15:\"Update:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:15:\"Delete:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:18:\"DeleteAny:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:16:\"Restore:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:20:\"ForceDelete:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:23:\"ForceDeleteAny:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:19:\"RestoreAny:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:18:\"Replicate:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:16:\"Reorder:Category\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:14:\"ViewAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:11:\"View:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:13:\"Create:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:13:\"Update:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:13:\"Delete:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:16:\"DeleteAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:14:\"Restore:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:18:\"ForceDelete:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:21:\"ForceDeleteAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:17:\"RestoreAny:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:16:\"Replicate:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:14:\"Reorder:Ticket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:19:\"ViewAny:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:16:\"View:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:18:\"Create:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:18:\"Update:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:3;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:18:\"Delete:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:21:\"DeleteAny:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:19:\"Restore:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:23:\"ForceDelete:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:26:\"ForceDeleteAny:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:22:\"RestoreAny:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:21:\"Replicate:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:19:\"Reorder:AssetReturn\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"staff\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:7:\"student\";s:1:\"c\";s:3:\"web\";}}}', 1788318867);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Kebersihan', 'Alat-alat kebersihan seperti sapu, pel, dll.', '01M0S09ARA89NTKNCGXTCJBT6A.jpg', 1, '2026-08-23 21:25:33', '2026-08-24 05:24:19'),
(5, 'Elektronik', 'Alat-alat yang berada di sekolah yang membutuhkan listrik atau baterai.', '01M0S0Q8AJ5BEG0EFX6SZNRZ06.jpg', 1, '2026-08-23 21:33:38', '2026-08-24 05:25:10'),
(6, 'Olahraga', 'Alat-alat olahraga yang digunakan saat mata pelajaran olahraga.', '01M0S0V15A1EAN3FJ2P2NAFYEF.jpg', 1, '2026-08-23 21:35:41', '2026-08-24 05:25:36'),
(7, 'Peralatan Kelas', 'Alat-alat yang dibutuhkan saat KBM di kelas.', '01M0S0XFTH1W793Y201P68RMHG.jpg', 1, '2026-08-23 21:37:02', '2026-08-23 21:37:02'),
(8, 'Keperluan Acara', 'Perlengkapan yang dibutuhkan saat sedang ada acara di sekolah.', '01M0S0YZRHFDG2GFKVX79JEFCF.jpg', 1, '2026-08-23 21:37:51', '2026-08-24 05:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `major_id`, `name`, `level`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'X RPL 1', 10, 1, '2026-08-14 21:09:22', '2026-08-14 21:09:22'),
(2, 1, 'X TKJ 1', 10, 1, '2026-08-14 21:10:17', '2026-08-14 21:10:17'),
(3, 2, 'X DKV 1', 10, 1, '2026-08-14 21:10:36', '2026-08-14 21:10:36'),
(4, 4, 'X BD 1', 10, 1, '2026-08-14 21:11:01', '2026-08-14 21:11:01'),
(5, 3, 'XII RPL 1', 12, 1, '2026-08-16 02:14:55', '2026-08-16 02:15:39'),
(6, 1, 'XI TKJ 1', 11, 1, '2026-08-23 07:19:03', '2026-08-23 07:20:32'),
(7, 1, 'X TKJ 2', 10, 1, '2026-08-23 07:21:11', '2026-08-23 07:21:11'),
(8, 2, 'X DKV 2', 10, 1, '2026-08-23 07:21:41', '2026-08-23 07:21:41'),
(9, 3, 'X RPL 2', 10, 1, '2026-08-23 07:22:11', '2026-08-23 07:22:11'),
(10, 4, 'X BD 2', 10, 1, '2026-08-23 07:22:24', '2026-08-23 07:22:24'),
(11, 1, 'XI TKJ 2', 11, 1, '2026-08-23 07:23:18', '2026-08-23 07:23:18'),
(12, 2, 'XI DKV 1', 11, 1, '2026-08-23 07:23:39', '2026-08-23 07:23:39'),
(13, 2, 'XI DKV 2', 11, 1, '2026-08-23 07:23:52', '2026-08-23 07:23:52'),
(14, 3, 'XI RPL 1', 11, 1, '2026-08-23 07:24:03', '2026-08-23 07:24:03'),
(15, 3, 'XI RPL 2', 11, 1, '2026-08-23 07:26:25', '2026-08-23 07:26:25'),
(16, 4, 'XI BD 1', 11, 1, '2026-08-23 07:26:37', '2026-08-23 07:26:37'),
(17, 4, 'XI BD 2', 11, 1, '2026-08-23 07:26:51', '2026-08-23 07:26:51'),
(18, 1, 'XII TKJ 1', 12, 1, '2026-08-23 07:27:06', '2026-08-23 07:27:06'),
(19, 1, 'XII TKJ 2', 12, 1, '2026-08-23 07:27:18', '2026-08-23 07:27:18'),
(20, 2, 'XII DKV 1', 12, 1, '2026-08-23 07:27:33', '2026-08-23 07:27:33'),
(21, 2, 'XII DKV 2', 12, 1, '2026-08-23 07:27:47', '2026-08-23 07:27:47'),
(22, 3, 'XII RPL 1', 12, 1, '2026-08-23 07:28:15', '2026-08-23 07:28:15'),
(23, 4, 'XII BD 1', 12, 1, '2026-08-23 07:29:08', '2026-08-23 07:29:08'),
(24, 4, 'XII BD 2', 12, 1, '2026-08-23 07:29:26', '2026-08-23 07:29:26');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Komputer dan Jaringan', 'TKJ', 1, '2026-08-14 07:20:34', '2026-08-14 07:20:34'),
(2, 'Desain Komunikasi Visual', 'DKV', 1, '2026-08-14 20:46:35', '2026-08-14 20:46:56'),
(3, 'Rekayasa Perangkat Lunak', 'RPL', 1, '2026-08-14 20:47:24', '2026-08-14 20:47:34'),
(4, 'Bisnis Digital', 'BD', 1, '2026-08-14 20:48:12', '2026-08-14 20:48:12');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_08_10_013051_create_majors_table', 1),
(5, '2026_08_10_013109_create_classrooms_table', 1),
(6, '2026_08_10_013116_create_students_table', 1),
(7, '2026_08_16_085044_create_permission_tables', 2),
(8, '2026_08_16_094015_create_categories_table', 3),
(9, '2026_08_20_055817_create_assets_table', 4),
(10, '2026_08_20_074151_add_columns_to_assets_table', 5),
(11, '2026_08_21_115356_create_tickets_table', 6),
(12, '2026_08_22_022745_add_column_to_ticket_table', 7),
(13, '2026_08_22_042831_add_cancelled_to_tickets_status_enum', 8),
(14, '2026_08_22_050254_add_available_qty_to_assets_table', 9),
(15, '2026_08_22_161933_create_asset_returns_table', 10),
(16, '2026_08_23_065712_add_columns_to_assets_table', 11),
(17, '2026_08_23_071419_create_asset_fines_table', 12),
(18, '2026_08_24_045301_add_procurement_year_to_assets_table', 13),
(19, '2026_08_24_161244_rename_ampunt_to_amount_in_asset_fines_table', 14),
(20, '2026_08_26_021051_create_activity_log_table', 15),
(21, '2026_08_26_021052_add_event_column_to_activity_log_table', 15),
(22, '2026_08_26_021053_add_batch_uuid_column_to_activity_log_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 20);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ViewAny:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(2, 'View:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(3, 'Create:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(4, 'Update:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(5, 'Delete:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(6, 'DeleteAny:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(7, 'Restore:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(8, 'ForceDelete:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(9, 'ForceDeleteAny:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(10, 'RestoreAny:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(11, 'Replicate:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(12, 'Reorder:Classroom', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(13, 'ViewAny:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(14, 'View:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(15, 'Create:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(16, 'Update:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(17, 'Delete:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(18, 'DeleteAny:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(19, 'Restore:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(20, 'ForceDelete:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(21, 'ForceDeleteAny:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(22, 'RestoreAny:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(23, 'Replicate:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(24, 'Reorder:Major', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(25, 'ViewAny:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(26, 'View:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(27, 'Create:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(28, 'Update:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(29, 'Delete:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(30, 'DeleteAny:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(31, 'Restore:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(32, 'ForceDelete:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(33, 'ForceDeleteAny:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(34, 'RestoreAny:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(35, 'Replicate:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(36, 'Reorder:Student', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(37, 'ViewAny:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(38, 'View:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(39, 'Create:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(40, 'Update:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(41, 'Delete:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(42, 'DeleteAny:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(43, 'Restore:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(44, 'ForceDelete:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(45, 'ForceDeleteAny:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(46, 'RestoreAny:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(47, 'Replicate:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(48, 'Reorder:User', 'web', '2026-08-16 02:02:00', '2026-08-16 02:02:00'),
(49, 'ViewAny:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(50, 'View:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(51, 'Create:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(52, 'Update:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(53, 'Delete:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(54, 'DeleteAny:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(55, 'Restore:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(56, 'ForceDelete:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(57, 'ForceDeleteAny:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(58, 'RestoreAny:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(59, 'Replicate:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(60, 'Reorder:Role', 'web', '2026-08-16 02:02:22', '2026-08-16 02:02:22'),
(61, 'ViewAny:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(62, 'View:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(63, 'Create:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(64, 'Update:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(65, 'Delete:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(66, 'DeleteAny:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(67, 'Restore:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(68, 'ForceDelete:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(69, 'ForceDeleteAny:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(70, 'RestoreAny:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(71, 'Replicate:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(72, 'Reorder:Asset', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(73, 'ViewAny:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(74, 'View:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(75, 'Create:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(76, 'Update:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(77, 'Delete:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(78, 'DeleteAny:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(79, 'Restore:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(80, 'ForceDelete:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(81, 'ForceDeleteAny:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(82, 'RestoreAny:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(83, 'Replicate:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(84, 'Reorder:Category', 'web', '2026-08-21 21:43:00', '2026-08-21 21:43:00'),
(85, 'ViewAny:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(86, 'View:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(87, 'Create:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(88, 'Update:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(89, 'Delete:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(90, 'DeleteAny:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(91, 'Restore:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(92, 'ForceDelete:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(93, 'ForceDeleteAny:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(94, 'RestoreAny:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(95, 'Replicate:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(96, 'Reorder:Ticket', 'web', '2026-08-21 21:43:01', '2026-08-21 21:43:01'),
(97, 'ViewAny:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(98, 'View:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(99, 'Create:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(100, 'Update:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(101, 'Delete:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(102, 'DeleteAny:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(103, 'Restore:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(104, 'ForceDelete:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(105, 'ForceDeleteAny:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(106, 'RestoreAny:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(107, 'Replicate:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48'),
(108, 'Reorder:AssetReturn', 'web', '2026-08-24 21:03:48', '2026-08-24 21:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'student', 'web', '2026-08-16 01:53:10', '2026-08-16 02:04:10'),
(2, 'super_admin', 'web', '2026-08-16 02:22:03', '2026-08-16 02:22:03'),
(3, 'staff', 'web', '2026-08-16 02:26:04', '2026-08-16 02:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(85, 1),
(86, 1),
(87, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(25, 3),
(26, 3),
(85, 3),
(86, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FY4tVlCxV15HuLHc1TD67XrbNhFcVPdik0awPkMh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiU3BoaXpGandmNTBaSVJrR3BHeGJCYlZQRG1yM1RJUGRDVTBINU9nZiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjQxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYXNzZXQtcmV0dXJucyI7czo1OiJyb3V0ZSI7czo0NDoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLmFzc2V0LXJldHVybnMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiJlMDc5MDYzNDY4MDVkMTQ5YWRiYWM1NTQzNGNkNGUyN2YzZTkwMjYzYmY2ZmU0ODBkZTkzYmFiNzRlZTJjMGFmIjtzOjY6InRhYmxlcyI7YTo0OntzOjQwOiJlYWZlNjI3MTQ1YzhjNzZkYTUyYmE1MmE5NzZmZTZlZl9jb2x1bW5zIjthOjU6e2k6MDthOjg6e3M6NDoidHlwZSI7czo1OiJncm91cCI7czo0OiJuYW1lIjtzOjEzOiJBc3NldCBEZXRhaWxzIjtzOjU6ImxhYmVsIjtzOjEzOiJBc3NldCBEZXRhaWxzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047czo3OiJjb2x1bW5zIjthOjc6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJpbWFnZSI7czo1OiJsYWJlbCI7czo1OiJJbWFnZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo0OiJOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJjb2RlIjtzOjU6ImxhYmVsIjtzOjQ6IkNvZGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJjYXRlZ29yeS5uYW1lIjtzOjU6ImxhYmVsIjtzOjg6IkNhdGVnb3J5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE0OiJwdXJjaGFzZV9wcmljZSI7czo1OiJsYWJlbCI7czoxMzoiUHVyY2hhc2UgWWVhciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNjoicHJvY3VyZW1lbnRfeWVhciI7czo1OiJsYWJlbCI7czoxNjoiUHJvY3VyZW1lbnQgWWVhciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoiZnVuZGluZ19zb3VyY2UiO3M6NToibGFiZWwiO3M6MTQ6IkZ1bmRpbmcgU291cmNlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fX1pOjE7YTo4OntzOjQ6InR5cGUiO3M6NToiZ3JvdXAiO3M6NDoibmFtZSI7czoyMToiQXNzZXQgQ29uZGl0aW9uL1N0b2NrIjtzOjU6ImxhYmVsIjtzOjIxOiJBc3NldCBDb25kaXRpb24vU3RvY2siO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7TjtzOjc6ImNvbHVtbnMiO2E6Njp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6Imdvb2RfcXR5IjtzOjU6ImxhYmVsIjtzOjQ6Ikdvb2QiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJkYW1hZ2VkX3F0eSI7czo1OiJsYWJlbCI7czo3OiJEYW1hZ2VkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoiYm9ycm93ZWRfcXR5IjtzOjU6ImxhYmVsIjtzOjg6IkJvcnJvd2VkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo4OiJsb3N0X3F0eSI7czo1OiJsYWJlbCI7czo0OiJMb3N0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJ0b3RhbF9xdHkiO3M6NToibGFiZWwiO3M6NToiVG90YWwiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJhdmFpbGFibGVfcXR5IjtzOjU6ImxhYmVsIjtzOjk6IkF2YWlsYWJsZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO319fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoiaXNfYXZhaWxhYmxlIjtzOjU6ImxhYmVsIjtzOjEyOiJJcyBhdmFpbGFibGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319czo0MDoiNGM5ZDUwMGRiYTdiNDdiOTIyNzA4YTE0ZTkzZGViYTlfY29sdW1ucyI7YToxMTp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEzOiJ0aWNrZXRfbnVtYmVyIjtzOjU6ImxhYmVsIjtzOjY6IlRpY2tldCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToidXNlci5uYW1lIjtzOjU6ImxhYmVsIjtzOjk6IlJlcXVlc3RlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImFzc2V0Lm5hbWUiO3M6NToibGFiZWwiO3M6MTA6IkFzc2V0IE5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjM6InF0eSI7czo1OiJsYWJlbCI7czozOiJRdHkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6OToiYm9va2VkX2F0IjtzOjU6ImxhYmVsIjtzOjk6IkJvb2tlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiYm9ycm93ZWRfYXQiO3M6NToibGFiZWwiO3M6MTE6IkJvcnJvd2VkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJkdWVfYXQiO3M6NToibGFiZWwiO3M6NjoiRHVlIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToicmV0dXJuZWRfYXQiO3M6NToibGFiZWwiO3M6MTE6IlJldHVybmVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6InN0YXR1cyI7czo1OiJsYWJlbCI7czo2OiJTdGF0dXMiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo5O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJjMGI3MzE3ZDA3Y2QyMjViOWQ5NTRkZThjNjA1NGMyZl9jb2x1bW5zIjthOjg6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoyMDoidGlja2V0LnRpY2tldF9udW1iZXIiO3M6NToibGFiZWwiO3M6MTM6IlRpY2tldCBOdW1iZXIiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJhc3NldC5uYW1lIjtzOjU6ImxhYmVsIjtzOjEwOiJBc3NldCBOYW1lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czozOiJxdHkiO3M6NToibGFiZWwiO3M6MzoiUXR5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJjb25kaXRpb24iO3M6NToibGFiZWwiO3M6OToiQ29uZGl0aW9uIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToicmV0dXJuZWRfYXQiO3M6NToibGFiZWwiO3M6MTE6IlJldHVybmVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJ1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6MTE6IlZlcnlmaWVkIEJ5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiI3NGE2ZjUxODBiMmNlZjgyNjM4YmVhNDhiZGVmMjVkY19jb2x1bW5zIjthOjQ6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJ0eXBlIjtzOjU6ImxhYmVsIjtzOjk6IkZpbmUgVHlwZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiYW1vdW50IjtzOjU6ImxhYmVsIjtzOjExOiJGaW5lIEFtb3VudCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToibm90ZWQiO3M6NToibGFiZWwiO3M6NToiTm90ZWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIEF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1788232791),
('FzV0Lbtvg9gSOSD8rZpqYVyqcqXqaop5vnpGS9jp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRzJRRE5FNVQ0dERnenRTMlVUYlRQNndnR1NJMFNjME02UUpMbVJoWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hc3NldHMiO3M6NToicm91dGUiO3M6Mzc6ImZpbGFtZW50LmFkbWluLnJlc291cmNlcy5hc3NldHMuaW5kZXgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiJlMDc5MDYzNDY4MDVkMTQ5YWRiYWM1NTQzNGNkNGUyN2YzZTkwMjYzYmY2ZmU0ODBkZTkzYmFiNzRlZTJjMGFmIjtzOjY6InRhYmxlcyI7YTo2OntzOjQwOiJmYzhjNmMzZDYwODkyMTBkZThiNThjZTI0YzgyNDQwY19jb2x1bW5zIjthOjU6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMToiY2F1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6NDoiVXNlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjU6ImxhYmVsIjtzOjY6IkFjdGlvbiI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6InN1YmplY3RfdHlwZSI7czo1OiJsYWJlbCI7czo1OiJNb2RlbCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InN1YmplY3RfaWQiO3M6NToibGFiZWwiO3M6MjoiSUQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX1zOjQwOiI0YzlkNTAwZGJhN2I0N2I5MjI3MDhhMTRlOTNkZWJhOV9jb2x1bW5zIjthOjExOntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6InRpY2tldF9udW1iZXIiO3M6NToibGFiZWwiO3M6NjoiVGlja2V0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJ1c2VyLm5hbWUiO3M6NToibGFiZWwiO3M6OToiUmVxdWVzdGVyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiYXNzZXQubmFtZSI7czo1OiJsYWJlbCI7czoxMDoiQXNzZXQgTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MzoicXR5IjtzOjU6ImxhYmVsIjtzOjM6IlF0eSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJib29rZWRfYXQiO3M6NToibGFiZWwiO3M6OToiQm9va2VkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJib3Jyb3dlZF9hdCI7czo1OiJsYWJlbCI7czoxMToiQm9ycm93ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6ImR1ZV9hdCI7czo1OiJsYWJlbCI7czo2OiJEdWUgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJyZXR1cm5lZF9hdCI7czo1OiJsYWJlbCI7czoxMToiUmV0dXJuZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjg7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6Njoic3RhdHVzIjtzOjU6ImxhYmVsIjtzOjY6IlN0YXR1cyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjk7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjEwO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6ImMwYjczMTdkMDdjZDIyNWI5ZDk1NGRlOGM2MDU0YzJmX2NvbHVtbnMiO2E6ODp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjIwOiJ0aWNrZXQudGlja2V0X251bWJlciI7czo1OiJsYWJlbCI7czoxMzoiVGlja2V0IE51bWJlciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImFzc2V0Lm5hbWUiO3M6NToibGFiZWwiO3M6MTA6IkFzc2V0IE5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjM6InF0eSI7czo1OiJsYWJlbCI7czozOiJRdHkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6ImNvbmRpdGlvbiI7czo1OiJsYWJlbCI7czo5OiJDb25kaXRpb24iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJyZXR1cm5lZF9hdCI7czo1OiJsYWJlbCI7czoxMToiUmV0dXJuZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InVzZXIubmFtZSI7czo1OiJsYWJlbCI7czoxMToiVmVyeWZpZWQgQnkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fXM6NDA6Ijc0YTZmNTE4MGIyY2VmODI2MzhiZWE0OGJkZWYyNWRjX2NvbHVtbnMiO2E6NDp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6InR5cGUiO3M6NToibGFiZWwiO3M6OToiRmluZSBUeXBlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo2OiJhbW91bnQiO3M6NToibGFiZWwiO3M6MTE6IkZpbmUgQW1vdW50IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJub3RlZCI7czo1OiJsYWJlbCI7czo1OiJOb3RlZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgQXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9fXM6NDA6ImVhZmU2MjcxNDVjOGM3NmRhNTJiYTUyYTk3NmZlNmVmX2NvbHVtbnMiO2E6NTp7aTowO2E6ODp7czo0OiJ0eXBlIjtzOjU6Imdyb3VwIjtzOjQ6Im5hbWUiO3M6MTM6IkFzc2V0IERldGFpbHMiO3M6NToibGFiZWwiO3M6MTM6IkFzc2V0IERldGFpbHMiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7TjtzOjc6ImNvbHVtbnMiO2E6Nzp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImltYWdlIjtzOjU6ImxhYmVsIjtzOjU6IkltYWdlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6ImNvZGUiO3M6NToibGFiZWwiO3M6NDoiQ29kZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6ImNhdGVnb3J5Lm5hbWUiO3M6NToibGFiZWwiO3M6ODoiQ2F0ZWdvcnkiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6InB1cmNoYXNlX3ByaWNlIjtzOjU6ImxhYmVsIjtzOjEzOiJQdXJjaGFzZSBZZWFyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE2OiJwcm9jdXJlbWVudF95ZWFyIjtzOjU6ImxhYmVsIjtzOjE2OiJQcm9jdXJlbWVudCBZZWFyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE0OiJmdW5kaW5nX3NvdXJjZSI7czo1OiJsYWJlbCI7czoxNDoiRnVuZGluZyBTb3VyY2UiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fWk6MTthOjg6e3M6NDoidHlwZSI7czo1OiJncm91cCI7czo0OiJuYW1lIjtzOjIxOiJBc3NldCBDb25kaXRpb24vU3RvY2siO3M6NToibGFiZWwiO3M6MjE6IkFzc2V0IENvbmRpdGlvbi9TdG9jayI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO3M6NzoiY29sdW1ucyI7YTo2OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6ODoiZ29vZF9xdHkiO3M6NToibGFiZWwiO3M6NDoiR29vZCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTE6ImRhbWFnZWRfcXR5IjtzOjU6ImxhYmVsIjtzOjc6IkRhbWFnZWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEyOiJib3Jyb3dlZF9xdHkiO3M6NToibGFiZWwiO3M6ODoiQm9ycm93ZWQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6Imxvc3RfcXR5IjtzOjU6ImxhYmVsIjtzOjQ6Ikxvc3QiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6InRvdGFsX3F0eSI7czo1OiJsYWJlbCI7czo1OiJUb3RhbCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTM6ImF2YWlsYWJsZV9xdHkiO3M6NToibGFiZWwiO3M6OToiQXZhaWxhYmxlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEyOiJpc19hdmFpbGFibGUiO3M6NToibGFiZWwiO3M6MTI6IklzIGF2YWlsYWJsZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJlNjQ0ODMzZjRlNGUwODcxMjMxNWRhNzFiMzNmYWNkMl9jb2x1bW5zIjthOjY6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJuYW1lIjtzOjU6ImxhYmVsIjtzOjQ6Ik5hbWUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImVtYWlsIjtzOjU6ImxhYmVsIjtzOjEzOiJFbWFpbCBhZGRyZXNzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoicm9sZXMubmFtZSI7czo1OiJsYWJlbCI7czo1OiJSb2xlcyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtzOjU6ImxhYmVsIjtzOjE3OiJFbWFpbCB2ZXJpZmllZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjU7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fXM6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1788144876),
('L2R54oeI9FMlyYavS1uosrxdOVMjI6eZJbXGn9Od', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.135.0 Chrome/148.0.7778.280 Electron/42.8.1 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDI3M0xSaUx0WG1qR2o5SlJFM1VCdmFjZEM1WFdGUmVXeEhKRG80UyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1788137795),
('o36H5wvzsBFkLVWsNdRSEG6bh0MWJ9QInXNbiBfR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTVFR2szc0g2MXQxaHY0ZHRzWUdtcjk1b21PNkd4NHRKUVliYW80YiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7czo1OiJyb3V0ZSI7czoyNToiZmlsYW1lbnQuYWRtaW4uYXV0aC5sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1788137860),
('xc3WPzpxWDpCLt4lfKWmqRvYgzPukYJQJsFXLnwU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjFabHYxcWJ6ZE5FNThRd1JxMTlaRHpQdGVIbGpuNXJ4TWdhVUpjViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7czo1OiJyb3V0ZSI7czoyNToiZmlsYW1lbnQuYWRtaW4uYXV0aC5sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1788138869);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `classroom_id`, `nisn`, `phone_number`, `gender`, `address`, `profile_picture`, `created_at`, `updated_at`) VALUES
(3, 8, 4, '00001', '087956431264', 'male', 'Lubang Buaya', 'Students/01M0RM8N8FYCQV6DA5SCAN950T.jpg', '2026-08-23 17:55:56', '2026-08-23 17:55:56'),
(4, 9, 10, '00002', '087653131764', 'male', 'Pondok Gede', 'Students/01M0RMBZ2Q01HRRD7R6CVD2MG8.jpg', '2026-08-23 17:57:45', '2026-08-23 17:57:45'),
(5, 10, 3, '00003', '087615421265', 'male', 'Kramat Jati', 'Students/01M0RW37778SSRXY7B5AJX15JS.jpg', '2026-08-23 20:12:47', '2026-08-23 20:12:47'),
(6, 11, 8, '00004', '086534126219', 'male', 'Cawang', 'Students/01M0RW4PETE5HW46PJVE34BHXR.jpg', '2026-08-23 20:13:35', '2026-08-23 20:13:35'),
(7, 7, 1, '00005', '085433133331', 'male', 'Bambu Apus', 'Students/01M0RW6S7GH7G0K4Y2KXAHR290.jpg', '2026-08-23 20:14:44', '2026-08-23 20:14:44'),
(9, 16, 2, '00007', '089765465452', 'female', 'Pangkalan Jati', 'Students/01M0RYC05BY02Y7KB2SZM2AFGM.jpg', '2026-08-23 20:52:32', '2026-08-23 20:52:32'),
(10, 13, 7, '00008', '087531314324', 'female', 'Cilangkap', 'Students/01M0RYQ5E7HZEAE130EJ0AF854.jpg', '2026-08-23 20:53:48', '2026-08-23 20:58:38'),
(11, 12, 16, '00009', '085321343267', 'male', 'Kampung Melayu', 'Students/01M0RYW0T13D5NMWZJNZP38K2C.jpg', '2026-08-23 21:01:17', '2026-08-23 21:01:17'),
(12, 18, 17, '00010', '087676534212', 'male', 'Cawang', 'Students/01M0RZBG1F8ZBQC8FF7YBHWER3.jpg', '2026-08-23 21:09:44', '2026-08-23 21:09:44'),
(13, 17, 12, '00011', '086831355313', 'male', 'Pangkalan Jati', 'Students/01M0RZEJYH8ATWFZCMZ9W4XMP8.jpg', '2026-08-23 21:10:44', '2026-08-23 21:11:25'),
(14, 19, 13, '00012', '089764433453', 'male', 'Setu', 'Students/01M0RZKRDSK110C6MT2ZBG0JAY.jpg', '2026-08-23 21:14:15', '2026-08-23 21:18:21'),
(15, 20, 14, '00013', '089765432677', 'male', 'Cipayung', 'Students/01M0RZXRSCHM1Y8GWWD56JGVXJ.jpg', '2026-08-23 21:19:43', '2026-08-23 21:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `booked_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `borrowed_at` timestamp NULL DEFAULT NULL,
  `due_at` date DEFAULT NULL,
  `returned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('booked','borrowed','verifying','returned','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `asset_id`, `ticket_number`, `qty`, `booked_at`, `borrowed_at`, `due_at`, `returned_at`, `created_at`, `updated_at`, `note`, `status`) VALUES
(2, 8, 5, 'REQ20260824-MOCA', 1, '2026-08-24 14:20:23', '2026-08-24 07:20:45', '2026-08-24', '2026-08-24 09:15:12', '2026-08-24 07:20:23', '2026-08-24 09:15:12', 'Minjem 2 Hari', 'returned'),
(3, 7, 7, 'REQ20260825-YLU5', 1, '2026-08-25 03:13:35', '2026-08-24 20:14:31', '2026-08-25', '2026-08-24 20:15:17', '2026-08-24 20:13:35', '2026-08-24 20:15:17', 'Halo', 'returned'),
(4, 19, 9, 'REQ20260827-0DU8', 1, '2026-08-27 05:51:00', '2026-08-26 22:52:00', '2026-08-27', '2026-08-26 22:52:47', '2026-08-26 22:51:00', '2026-08-26 22:52:47', 'kimbek', 'returned'),
(5, 10, 5, 'REQ20260831-NCUB', 1, '2026-08-31 02:21:55', NULL, '2026-09-01', NULL, '2026-08-30 19:21:55', '2026-08-30 19:30:01', 'Pinjam Sebentar', 'cancelled'),
(6, 9, 4, 'REQ20260831-G1UY', 1, '2026-08-31 02:28:40', '2026-08-30 19:30:09', '2026-09-02', '2026-08-30 19:30:51', '2026-08-30 19:28:40', '2026-08-30 19:30:51', NULL, 'returned'),
(7, 18, 6, 'REQ20260901-4EWV', 1, '2026-09-01 03:15:27', '2026-08-31 20:16:05', '2026-09-01', '2026-08-31 20:17:48', '2026-08-31 20:15:27', '2026-08-31 20:17:48', NULL, 'returned');

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
(1, 'Muhammad Faiz Al Zaki', 'admin@gmail.com', NULL, '$2y$12$cKbdbceffMjwro3Fk3WxXej2C4BJ.0VK59Q0Adl8gIonltQxodXyW', NULL, '2026-08-12 17:32:56', '2026-08-16 02:24:05'),
(4, 'Staff', 'staff@gmail.com', NULL, '$2y$12$x9GHUBcVPiI9W4PqCzfOpOWV33U/wM9zbJSGCXChCETLpq/RJN0eq', NULL, '2026-08-16 02:27:41', '2026-08-23 07:30:53'),
(7, 'Zulman Syaputra', 'zul@gmail.com', NULL, '$2y$12$bP6A2cgR1bQkvQrbQ30rKeUnXLMVxaYGq4DZoOyjfawVDZP/eWKPm', NULL, '2026-08-23 07:52:31', '2026-08-23 07:52:31'),
(8, 'Ah Meng', 'ahmeng@gmail.com', NULL, '$2y$12$sCpuKvKF7wG62Jf.iYe57.cyRMhZhgPNOo5mHoL5wQSSBxoFWXDWu', NULL, '2026-08-23 07:53:13', '2026-08-23 07:53:13'),
(9, 'Ahmad Qasim', 'ahqas@gmail.com', NULL, '$2y$12$DiEVasCFDyYyCABUfaNFGuZww0w5GSb6UBMYHpJfUV3AtuDBw7R.6', NULL, '2026-08-23 08:01:17', '2026-08-23 08:01:17'),
(10, 'Badrianto', 'badri@gmail.com', NULL, '$2y$12$yYh9cUIBPLM72RdjH3hJUun2/3KbGUoyX.2N.SkF95zKUa6KDezZW', NULL, '2026-08-23 08:02:04', '2026-08-23 08:02:04'),
(11, 'DAW', 'daw@gmail.com', NULL, '$2y$12$6mGy85q19IYEIeqYv6r8W.gjF8zyPx58hGCHooTBGHti.EKgkflsG', NULL, '2026-08-23 08:03:15', '2026-08-23 08:03:15'),
(12, 'Yusuf Ayyub', 'yuay@gmail.com', NULL, '$2y$12$FRdLUWTPu24GBMQoGBqb1OPLUjSL/fw88dUkwkzv5K4LAY8pAft9S', NULL, '2026-08-23 20:44:08', '2026-08-23 20:44:08'),
(13, 'Suryati', 'sur@gmail.com', NULL, '$2y$12$/8.zP9HZP4RXq0XnChVOoeOqBf8TnRILw077O84f/PV5tZ0N7aw92', NULL, '2026-08-23 20:44:40', '2026-08-23 20:44:40'),
(16, 'Sulastri', 'sul@gmail.com', NULL, '$2y$12$j.DTCjSK.rOHrVukeSIbPuJAl5R2KPlCZPhJkimVEVSUNNYTR3w.y', NULL, '2026-08-23 20:47:33', '2026-08-23 20:47:33'),
(17, 'Rafi', 'rafi@gmail.com', NULL, '$2y$12$BsPXlR1IsZ94PFd6A0z.JOvEzVB3cOHhYK0S8hjLAPNCCiwK0Tzmm', NULL, '2026-08-23 21:05:13', '2026-08-23 21:05:13'),
(18, 'Khikmadh', 'khi@gmail.com', NULL, '$2y$12$J0AV3V8GlO5MJcpZMYSKd.9LUQQZeZ2Fk6MTU6b4EOFEd0/CwWU/W', NULL, '2026-08-23 21:06:53', '2026-08-23 21:06:53'),
(19, 'Superman', 'sup@gmail.com', NULL, '$2y$12$w6BWRzeHTiw0j5CDxWhsfunjtHkqW1MypEjDcg7qGQyN87YyCL1.e', NULL, '2026-08-23 21:08:28', '2026-08-23 21:08:28'),
(20, 'Batman', 'bat@gmail.com', NULL, '$2y$12$EBmAmztsVGEdcFG5Rqa2Z.pDlhMnAv6lSOKgvlsbT5675Ih5CfCIK', NULL, '2026-08-23 21:17:02', '2026-08-23 21:17:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_code_unique` (`code`),
  ADD KEY `assets_category_id_foreign` (`category_id`);

--
-- Indexes for table `asset_fines`
--
ALTER TABLE `asset_fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_fines_asset_return_id_foreign` (`asset_return_id`);

--
-- Indexes for table `asset_returns`
--
ALTER TABLE `asset_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_returns_ticket_id_foreign` (`ticket_id`),
  ADD KEY `asset_returns_user_id_foreign` (`user_id`),
  ADD KEY `asset_returns_asset_id_foreign` (`asset_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_major_id_foreign` (`major_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nisn_unique` (`nisn`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_number_unique` (`ticket_number`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_asset_id_foreign` (`asset_id`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `asset_fines`
--
ALTER TABLE `asset_fines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asset_returns`
--
ALTER TABLE `asset_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `asset_fines`
--
ALTER TABLE `asset_fines`
  ADD CONSTRAINT `asset_fines_asset_return_id_foreign` FOREIGN KEY (`asset_return_id`) REFERENCES `asset_returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `asset_returns`
--
ALTER TABLE `asset_returns`
  ADD CONSTRAINT `asset_returns_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asset_returns_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asset_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
