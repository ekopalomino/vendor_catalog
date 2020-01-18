-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2020 at 06:08 AM
-- Server version: 5.7.27
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_terms` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `ref_id`, `type_id`, `name`, `company`, `phone`, `mobile`, `email`, `billing_address`, `shipping_address`, `payment_method`, `payment_terms`, `tax`, `tax_no`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
('4e8b0f0e-e718-4150-a7fb-9dd619e413c1', 'FTI-S-0000001', 2, 'Pak Iban', 'PT Pak Iban', '021 800000001', '08111435076', 'mirza.rizaldy@gmail.com', 'Di Rumah', 'Di Rumah', 1, 3, 0, '0101010', 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 11:51:49', '2020-01-08 11:51:49'),
('8894faf4-281a-4c22-b2c2-1aff6f67b346', 'FTI-S-0000002', 2, 'Pak Ibos', 'PT Ibos Makmur', '021 989665', '0811199181918', 'ibosjaya@gmail.com', 'Samping Kanan', 'Samping Kanan', 1, 3, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 15:39:22', '2020-01-08 15:39:22'),
('b675bf76-b74c-4bf0-99a1-ebf8f9669fae', 'FTI-C-0000001', 1, 'Data Comm', 'Data Comm', '021 861868686', '0817777777', 'admin@com.com', 'Seberang Kali', 'Seberang Kali', 1, 3, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 15:11:24', '2020-01-08 15:11:24'),
('fe00a2dd-c3fb-40e3-ab55-d49680724aef', 'FTI-C-0000002', 1, 'PAS', 'PT PUTERATEL ANDALAN SUKSES', '12345', '678910', 'tampanatus@yahoo.com', 'Seberang rumah saya', 'Seberang rumah saya', 1, 3, 1, '45678', 'adminsales1', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-13 16:30:35', '2020-01-13 16:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_service_id` int(10) NOT NULL,
  `delivery_cost` decimal(50,2) DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_items`
--

CREATE TABLE `delivery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` decimal(50,2) NOT NULL,
  `product_shipment` decimal(50,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_services`
--

CREATE TABLE `delivery_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_services`
--

INSERT INTO `delivery_services` (`id`, `delivery_name`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'J&T', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-07 16:07:02', '2020-01-07 16:07:02'),
(2, 'JNE', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 11:59:41', '2020-01-08 11:59:41'),
(3, 'SICEPAT', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 12:00:41', '2020-01-08 12:00:41'),
(4, 'TIKI', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 12:00:57', '2020-01-08 12:00:57'),
(5, 'REDEX', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 12:01:14', '2020-01-08 12:01:14'),
(6, 'MITRA NUSANTARA', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 12:02:00', '2020-01-08 12:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('1886a2b3-2fb7-4f40-b577-dad076a5d3b1', 'Finance', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2020-01-09 12:29:27', '2020-01-09 12:29:27'),
('413ec199-f1dd-42a7-a346-67a74fb807b0', 'IT', 'eko', NULL, '2019-09-04 16:46:23', '2019-09-04 16:46:23'),
('784f06d5-0e19-490f-91d4-60ea243eae53', 'Sales', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2020-01-09 12:29:16', '2020-01-09 12:29:16'),
('9f94e00b-5fdc-4dc9-8057-fd21ded69869', 'Gudang', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2020-01-09 12:30:08', '2020-01-09 12:30:08'),
('ee6ae9ab-40b7-4c03-8610-de7a45377cae', 'Logistik', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2020-01-09 12:30:01', '2020-01-09 12:30:01'),
('fe97cbde-836a-439e-8b64-31783aaee279', 'Produksi', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2020-01-10 14:22:13', '2020-01-10 14:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `internal_items`
--

CREATE TABLE `internal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mutasi_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(50,2) NOT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internal_transfers`
--

CREATE TABLE `internal_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_wh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_wh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stock` decimal(50,2) NOT NULL,
  `opening_amount` decimal(50,2) NOT NULL,
  `closing_amount` decimal(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(1, '5d9aaffa-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Black', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-18 02:53:24'),
(2, '5d9ab270-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Blue', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-18 02:53:37'),
(3, '5d9ab3d8-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Green', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(4, '5d9ab536-33c0-11ea-aec2-2e728ce88125', 'Adapter MM DX LC/PC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-13 16:39:58'),
(5, '5d9ac882-33c0-11ea-aec2-2e728ce88125', 'Adapter MM SX SC/PC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(6, '5d9aca26-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/UPC Auto Shutter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(7, '5d9acb70-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/UPC DX', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(8, '5d9acca6-33c0-11ea-aec2-2e728ce88125', 'Adapter SM LC/UPC DX', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-16 20:04:32'),
(9, '5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(10, '5d9ae448-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(11, '5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(12, '5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(13, '5d9b0464-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC PAZ ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(14, '5d9b05ea-33c0-11ea-aec2-2e728ce88125', 'Adapter ST/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(15, '5d9b0734-33c0-11ea-aec2-2e728ce88125', 'Box ONT Huawei', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-18 02:55:32'),
(16, '5d9b0874-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Kosongan)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(17, '5d9b09aa-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Splitter Plc 1:8 SC/APC)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(18, '5d9b0d60-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 12m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-16 18:51:31'),
(19, '5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 19m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(20, '5d9b1008-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(21, '5d9b113e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 24m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(22, '5d9b127e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 25m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(23, '5d9b13b4-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 26m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(24, '5d9b16e8-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 38m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(25, '5d9b1832-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(26, '5d9b1968-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 11m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(27, '5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 12m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(28, '5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 13m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(29, '5d9b1e36-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 14m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(30, '5d9b2296-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(31, '5d9b241c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 16m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(32, '5d9b255c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 17m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(33, '5d9b269c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 18m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(34, '5d9b27d2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 19m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(35, '5d9b2912-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(36, '5d9b2c0a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 21m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(37, '5d9b2d68-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 22m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(38, '5d9b2ea8-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 23m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(39, '5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 24m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(40, '5d9b3146-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 25m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(41, '5d9b327c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 27m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(42, '5d9b3632-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 28m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(43, '5d9b379a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 40m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(44, '5d9b38d0-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 42m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(45, '5d9b3a10-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 55m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(46, '5d9b3b46-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(47, '5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 60m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(48, '5d9b3f24-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 65m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(49, '5d9b4244-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 7m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(50, '5d9b43a2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 8m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(51, '5d9b44e2-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 9m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(52, '5d9b4618-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(53, '5d9b474e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(54, '5d9b488e-33c0-11ea-aec2-2e728ce88125', 'Bundle Core 12C 2 sisi SC-LC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(55, '5d9b4b90-33c0-11ea-aec2-2e728ce88125', 'Bundle Core 2 Sisi 8c SC-SC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(56, '5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 'Cable Manager W/Cover 1U', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-18 02:55:32'),
(57, '5d9b4e38-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 24core  ( Black )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(58, '5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 8 Core', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(59, '5d9b50b8-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 96core ( Putih )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(60, '5d9b51ee-33c0-11ea-aec2-2e728ce88125', 'Clamp A (Bracket) (Dead End)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(61, '5d9b5536-33c0-11ea-aec2-2e728ce88125', 'Clamp Pipa Conduit ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(62, '5d9b5676-33c0-11ea-aec2-2e728ce88125', 'Clamp Ring 3 Lubang ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(63, '5d9b57b6-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang  10 Inch', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(64, '5d9b58ec-33c0-11ea-aec2-2e728ce88125', 'Cleaver FC-65', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(65, '5d9b5aae-33c0-11ea-aec2-2e728ce88125', 'Cleaver Merk Senter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(66, '5d9b5c16-33c0-11ea-aec2-2e728ce88125', 'Cleaver Sumitomo ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(67, '5d9b5efa-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/PC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(68, '5d9b6058-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/UPC (Transparent)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(69, '5d9b6198-33c0-11ea-aec2-2e728ce88125', 'Clip MM SC/PC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(70, '5d9b62ce-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(71, '5d9b6404-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(72, '5d9b653a-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(73, '5d9b6828-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(74, '5d9b699a-33c0-11ea-aec2-2e728ce88125', 'Clossure 96 Core Tanpa Kunci+Kardus Litech', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(75, '5d9b6ada-33c0-11ea-aec2-2e728ce88125', 'Clossure AIS 12/24 Core (Duck) ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(76, '5d9b6c06-33c0-11ea-aec2-2e728ce88125', 'Clousure 48 Core (Fiber Trone)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(77, '5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 'Clousure 48 Core (PAZ)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(78, '5d9b7048-33c0-11ea-aec2-2e728ce88125', 'Clousure 96 Core ( Kulit Jeruk)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(79, '5d9b71ba-33c0-11ea-aec2-2e728ce88125', 'Clousure 96 Core ( No brand )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(80, '5d9b8588-33c0-11ea-aec2-2e728ce88125', 'Clousure 96 Core ( No brand Tidak Complete) (Tanpa Kardus)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(81, '5d9b86fa-33c0-11ea-aec2-2e728ce88125', 'Clousure 96 Core Dome ( PAZ )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(82, '5d9b8830-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(83, '5d9b8970-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(84, '5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(85, '5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(86, '5d9b8eca-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 3,0mm Tanpa Spring', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(87, '5d9b946a-33c0-11ea-aec2-2e728ce88125', 'Connector Set ST Semi Finished Include Ferulle 2mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(88, '5d9b95fa-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/APC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(89, '5d9b9744-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/APC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(90, '5d9b9884-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/UPC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(91, '5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/UPC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(92, '5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(93, '5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(94, '5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC 3,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(95, '5d9ba068-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(96, '5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(97, '5d9ba2de-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC 3,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(98, '5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(99, '5d9ba734-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(100, '5d9ba946-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(101, '5d9baacc-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm (Tanpa Big Crimp Ring  & Dust Cups)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(102, '5d9bac0c-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm (Tanpa Dustcups)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(103, '5d9bae00-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC Semi Finished + Ferulle', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(104, '5d9bb116-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(105, '5d9bb27e-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC 2,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(106, '5d9bb3be-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC 3,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(107, '5d9bb4f4-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC 5cm Precon', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(108, '5d9bb724-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC Semi Finished Include Ferulle ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(109, '5d9c752e-33c0-11ea-aec2-2e728ce88125', 'Cutter Besar (Kenko)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(110, '5d9c77b8-33c0-11ea-aec2-2e728ce88125', 'D-clamp', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(111, '5d9c8032-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(112, '5d9c8190-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 100 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-18 02:55:32'),
(113, '5d9c8492-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 150 Meter ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(114, '5d9c860e-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 200 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(115, '5d9c874e-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 250 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(116, '5d9c8a28-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 300 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(117, '5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 50 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(118, '5d9c8eec-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 63 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(119, '5d9c9036-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 75 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(120, '5d9c9176-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 80 Meter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(121, '5d9c975c-33c0-11ea-aec2-2e728ce88125', 'Dropcable 2C With 2 Stell Wire.LSZH 1000M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(122, '5d9c9950-33c0-11ea-aec2-2e728ce88125', 'Dropcable 4 Core, G657A1, LSZH, TWO STEEL WIRE 1000M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(123, '5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 'Fashconector SC/UPC Model Baru', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(124, '5d9c9d92-33c0-11ea-aec2-2e728ce88125', 'Fashconector SC/UPC Model Lama', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(125, '5d9c9ec8-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125wf for MM LC/PC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(126, '5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125wf for SM LC/UPC-LC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(127, '5d9ca134-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250wf for MM SC/PC-FC/PC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(128, '5d9ca26a-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250wf for SM SC/APC-FC/APC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(129, '5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250wf for SM SC/UPC-FC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(130, '5d9ca940-33c0-11ea-aec2-2e728ce88125', 'Holder SOC SC/UPC Sumitomo', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(131, '5d9caad0-33c0-11ea-aec2-2e728ce88125', 'Jacket Purcation Tube 2mm Yellow Aramid', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(132, '5d9cac1a-33c0-11ea-aec2-2e728ce88125', 'Kabel Dropcore Putih ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(133, '5d9cad96-33c0-11ea-aec2-2e728ce88125', 'Kabel MM OM4 DX 2mm Blue Colour ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(134, '5d9caee0-33c0-11ea-aec2-2e728ce88125', 'Kabel OM2 SX 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(135, '5d9cb016-33c0-11ea-aec2-2e728ce88125', 'Kabel OM3 DX 2,0mm (Aqua)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(136, '5d9cb318-33c0-11ea-aec2-2e728ce88125', 'Kabel OM4 DX 2,0mm (Blue)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(137, '5d9cb46c-33c0-11ea-aec2-2e728ce88125', 'Kabel OM4 DX 2,0mm (Orange)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(138, '5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 'Kabel SM DX (2,0mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(139, '5d9cb6f6-33c0-11ea-aec2-2e728ce88125', 'Kabel SM DX (2,0mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(140, '5d9cb82c-33c0-11ea-aec2-2e728ce88125', 'Kabel SM DX (3,0mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(141, '5d9cba66-33c0-11ea-aec2-2e728ce88125', 'Kabel SM DX 2mm Corning', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(142, '5d9cbd54-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX (2,0mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(143, '5d9cbef8-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX (2,0mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(144, '5d9cc038-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX (3,mm)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(145, '5d9cc16e-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX 0,9mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(146, '5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX 0,9mm Warna Abu-abu', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(147, '5d9cc420-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX 0,9mm Warna Coklat', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(148, '5d9cc556-33c0-11ea-aec2-2e728ce88125', 'Kabel Sm SX 0,9mm Warna Orange', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(149, '5d9cc876-33c0-11ea-aec2-2e728ce88125', 'Kabel SM SX 3,0mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(150, '5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 LS ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(151, '5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 Schneider ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(152, '5d9ccc36-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 Vasco Link', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(153, '5d9ccd62-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 22 x 22 x 10 cm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(154, '5d9ccea2-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 22 x 22 x 22 cm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(155, '5d9cd172-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 60 x 39 x 25 cm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(156, '5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 'Kelvar Scissor (Tang Gunting)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(157, '5d9cd41a-33c0-11ea-aec2-2e728ce88125', 'Krone LSA', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(158, '5d9cd55a-33c0-11ea-aec2-2e728ce88125', 'KTB Walmount 8 C', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(159, '5d9cd690-33c0-11ea-aec2-2e728ce88125', 'Mata Bor Nankai', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(160, '5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 'Media Converter 10/100 ( B )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(161, '5d9cdadc-33c0-11ea-aec2-2e728ce88125', 'ODC Mini 96C/ODP 96C', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(162, '5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(163, '5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(164, '5d9cdec4-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core Kosongan ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(165, '5d9cdffa-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(166, '5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(167, '5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core ( TIS )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(168, '5d9ce662-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core (Polos)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(169, '5d9ce798-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core (Sunsea)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(170, '5d9cea18-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core CA (Huawei) Black', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(171, '5d9cebc6-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core  YOFC Tanpa Kunci+Kardus SC/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(172, '5d9ced06-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core ( No Brand ) Tanpa Kunci', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(173, '5d9cefb8-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core SC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(174, '5d9cf116-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core YOFC Tanpa Kardus SC/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(175, '5d9cf24c-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core YOFC Tanpa Pigtail SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(176, '5d9cf38c-33c0-11ea-aec2-2e728ce88125', 'ODP 48 Core Sudah Disablon FMI', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(177, '5d9cf58a-33c0-11ea-aec2-2e728ce88125', 'ODP Solid 8 Core + Splitter 1:8 SC/UPC Auto Shutter', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(178, '5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 'ODP/FAT 12 Core SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(179, '5d9cfa08-33c0-11ea-aec2-2e728ce88125', 'OLS J4', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(180, '5d9cfb48-33c0-11ea-aec2-2e728ce88125', 'OM2 DUCK CABLE ARMOR 12 Core/GYFA-12OM2/2.0FRP', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(181, '5d9cfc7e-33c0-11ea-aec2-2e728ce88125', 'OM2 DUCK CABLE ARMOR 24 Core/GYFA-24OM2/2.0FRP', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(182, '5d9cfdbe-33c0-11ea-aec2-2e728ce88125', 'OM2 DUCK CABLE ARMOR 48 Core/GYFA-48OM2/2.0FRP', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(183, '5d9cfef4-33c0-11ea-aec2-2e728ce88125', 'OM2 DUCK CABLE ARMOR 6 Core/GYFA-6OM2/2.0FRP', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(184, '5d9d002a-33c0-11ea-aec2-2e728ce88125', 'ONT ZTE Versi 3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(185, '5d9d02f0-33c0-11ea-aec2-2e728ce88125', 'Optical Light Source (OLS) JW', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(186, '5d9d04b2-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter ( AMG )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(187, '5d9d0610-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter (No Brand)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(188, '5d9d0750-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter JoinWitt', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(189, '5d9d0962-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Hitam)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(190, '5d9d0b24-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Krim)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(191, '5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC/APC ( No Brand )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(192, '5d9d0f84-33c0-11ea-aec2-2e728ce88125', 'OTB 48 Core SC/APC ( No Brand )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(193, '5d9d10ba-33c0-11ea-aec2-2e728ce88125', 'OTB 48 Core SC/APC ( No Brand ) Kunci Rusak', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(194, '5d9d11f0-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(195, '5d9d1628-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(196, '5d9d17cc-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(197, '5d9d1af6-33c0-11ea-aec2-2e728ce88125', 'OTB Rack Splitter PLC 1:32 SC/APC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(198, '5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'Paladin Buffer Stripper', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(199, '5d9d1d76-33c0-11ea-aec2-2e728ce88125', 'Palu Kecil ( CAB )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(200, '5d9d1eac-33c0-11ea-aec2-2e728ce88125', 'Pantong', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(201, '5d9d2000-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(202, '5d9d2140-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(203, '5d9d241a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(204, '5d9d25b4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) ST/UPC-LC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(205, '5d9d2708-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) ST/UPC-ST/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(206, '5d9d2848-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(207, '5d9d297e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(208, '5d9d2ab4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(209, '5d9d2bea-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(210, '5d9d300e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(211, '5d9d3176-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(212, '5d9d32b6-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(213, '5d9d33f6-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(214, '5d9d3568-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 25m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(215, '5d9d382e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(216, '5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(217, '5d9d7956-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(218, '5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 60m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(219, '5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(220, '5d9d8162-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(221, '5d9d84aa-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 50m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(222, '5d9d85fe-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(223, '5d9d8734-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(224, '5d9d886a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (3,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(225, '5d9d89a0-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(226, '5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 'Patchcord Outdoor 2 Core SM LC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(227, '5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 'Patchcord Outdoor 2 Core SM SC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(228, '5d9d9094-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(229, '5d9dadc2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(230, '5d9daf3e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(231, '5d9db092-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(232, '5d9db1d2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(233, '5d9db664-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(234, '5d9db97a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(235, '5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(236, '5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(237, '5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(238, '5d9dc06e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(239, '5d9dc352-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(240, '5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(241, '5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(242, '5d9dc726-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(243, '5d9dc85c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(244, '5d9dc992-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(245, '5d9dcef6-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(246, '5d9dd090-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(247, '5d9dd374-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(248, '5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(249, '5d9dd61c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(250, '5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(251, '5d9dda5e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(252, '5d9ddd42-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(253, '5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(254, '5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(255, '5d9e20e0-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(256, '5d9e223e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(257, '5d9e237e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(258, '5d9e261c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(259, '5d9e296e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(260, '5d9e2c70-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/APC-FC/APC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(261, '5d9e2dba-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(262, '5d9e2f04-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(263, '5d9e31fc-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(264, '5d9e336e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(265, '5d9e34ae-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(266, '5d9e35ee-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(267, '5d9e3724-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(268, '5d9e385a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(269, '5d9e3990-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(270, '5d9e3c92-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(271, '5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(272, '5d9e4160-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(273, '5d9e42c8-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(274, '5d9e444e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(275, '5d9e4598-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(276, '5d9e46d8-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(277, '5d9e4a16-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(278, '5d9e4b56-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(279, '5d9e4c96-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(280, '5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(281, '5d9e4f02-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(282, '5d9e5042-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(283, '5d9e5236-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(284, '5d9e5376-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(285, '5d9e5650-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(286, '5d9e57a4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(287, '5d9e5934-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(288, '5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(289, '5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(290, '5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(291, '5d9e5f92-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(292, '5d9e6604-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(293, '5d9e6820-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11');
INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(294, '5d9e6988-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(295, '5d9e6abe-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(296, '5d9e6c08-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(297, '5d9e6f32-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(298, '5d9e707c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(299, '5d9e71b2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(300, '5d9e73ce-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(301, '5d9e7554-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(302, '5d9e76d0-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(303, '5d9e781a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(304, '5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(305, '5d9e7edc-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(306, '5d9e8152-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(307, '5d9e82ba-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(308, '5d9e8404-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(309, '5d9e8742-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(310, '5d9e88b4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(311, '5d9e89fe-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(312, '5d9e8b34-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(313, '5d9e8c74-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(314, '5d9e8daa-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(315, '5d9e90d4-33c0-11ea-aec2-2e728ce88125', 'Pedestal Besar isi ODP', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(316, '5d9e9246-33c0-11ea-aec2-2e728ce88125', 'Pedestal Besar Kosongan ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(317, '5d9e9386-33c0-11ea-aec2-2e728ce88125', 'Pedestal Kecil Kosongan (Tanpa Kardus)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(318, '5d9e94bc-33c0-11ea-aec2-2e728ce88125', 'PG 5', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(319, '5d9e9714-33c0-11ea-aec2-2e728ce88125', 'Pigtai SM DX SC/UPC (2,0mm) 8m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(320, '5d9e9854-33c0-11ea-aec2-2e728ce88125', 'Pigtail Bundle 12 Core SC/APC 1,5M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(321, '5d9e9994-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM DX ST/PC (3,mm) 3m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(322, '5d9e9caa-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX FC/PC (2,0mm) 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(323, '5d9e9e12-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX FC/PC (2,0mm) 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(324, '5d9e9f66-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX LC/PC (2,0mm) 6m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(325, '5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX LC/UPC (2,0mm) 27m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(326, '5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX SC/PC (2,mm) 20m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(327, '5d9ea312-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX SC/PC (2,mm) 3m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(328, '5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 'Pigtail MM SX SC/UPC (2,0mm)1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(329, '5d9ea754-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX FC/UPC (2,0mm) 1m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(330, '5d9ea894-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX FC/UPC (2,0mm) 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(331, '5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX FC/UPC (2,0mm) 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(332, '5d9eab0a-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX SC/APC (3,0mm) 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(333, '5d9eac40-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX SC/APC (3,0mm) 3m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(334, '5d9eaefc-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX SC/UPC (2,0mm) 7m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(335, '5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX SC/UPC (3,0mm) 1,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(336, '5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM DX SC/UPC (3,0mm) 2m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(337, '5d9eb32a-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(338, '5d9eb46a-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX FC/UPC (3,0mm) 5m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(339, '5d9eb636-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX LC/UPC (2,0mm) 2m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(340, '5d9eb794-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX LC/UPC (3,0mm) 10m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(341, '5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/APC (0,9mm) 1m (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(342, '5d9ebc08-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/APC (0,9mm) 2m (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(343, '5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/APC (0,9mm) 2m Oren', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(344, '5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/APC (2,0mm) 2m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(345, '5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/APC (2,0mm) 2m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(346, '5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m  (merah)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(347, '5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (kuning)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(348, '5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (oren)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(349, '5d9ec950-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(350, '5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1m (kuning)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(351, '5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 1m Oren', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(352, '5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (0,9mm) 2m (oren)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(353, '5d9ece50-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (2,0mm) 2m ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(354, '5d9ed134-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (3,0mm) 2m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(355, '5d9ed27e-33c0-11ea-aec2-2e728ce88125', 'Pigtail SM SX SC/UPC (3,0mm) 3,5m', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(356, '5d9ed3be-33c0-11ea-aec2-2e728ce88125', 'Plastik 13,5 x 14,5', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(357, '5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 'Plastik 18 x 18', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(358, '5d9ed666-33c0-11ea-aec2-2e728ce88125', 'Plastik 20 x 23', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(359, '5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 'Plastik Clip 40 X 30', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(360, '5d9edb0c-33c0-11ea-aec2-2e728ce88125', 'Plastik Clip 55 X 50', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(361, '5d9edd00-33c0-11ea-aec2-2e728ce88125', 'Polishing Film ADS 0,005 final', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(362, '5d9ede5e-33c0-11ea-aec2-2e728ce88125', 'Polishing Film D1 Mikron', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(363, '5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'Polishing Film D3 Mikron ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(364, '5d9ee142-33c0-11ea-aec2-2e728ce88125', 'Polishing Film D30 Mikron ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(365, '5d9ee282-33c0-11ea-aec2-2e728ce88125', 'Polishing Film D9 Mikron ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(366, '5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 'Polishing Film PC 0,005 final', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(367, '5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 'Precon 1 Core SC/APC 100M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(368, '5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'Precon 1 Core SC/UPC 150M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(369, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Precon 1 Core SC/UPC 200M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(370, '5d9eea84-33c0-11ea-aec2-2e728ce88125', 'Precon 1 Core SC/UPC 50M', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(371, '5d9eebc4-33c0-11ea-aec2-2e728ce88125', 'Protector sleeve 60mm', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(372, '5d9eecfa-33c0-11ea-aec2-2e728ce88125', 'Roset 2 Core GOC ( Tanpa Protector Sleeve&Adapter)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(373, '5d9ef056-33c0-11ea-aec2-2e728ce88125', 'Roset 2 Core GOC ( Tanpa Protector Sleeve)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(374, '5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(375, '5d9ef312-33c0-11ea-aec2-2e728ce88125', 'Roset 4 Core ( abu abu )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(376, '5d9ef448-33c0-11ea-aec2-2e728ce88125', 'Roset 4 Core (Tanpa Kardus )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(377, '5d9ef57e-33c0-11ea-aec2-2e728ce88125', 'Roset 4 Core ZTE (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(378, '5d9ef6be-33c0-11ea-aec2-2e728ce88125', 'Roset 8 Core Polos', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(379, '5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 'Roset Faceplat 1 Core ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(380, '5d9efc36-33c0-11ea-aec2-2e728ce88125', 'Rotary Cable stripper', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(381, '5d9efe70-33c0-11ea-aec2-2e728ce88125', 'S Clamp bulat ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(382, '5d9f000a-33c0-11ea-aec2-2e728ce88125', 'S Clamp Jepit', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(383, '5d9f014a-33c0-11ea-aec2-2e728ce88125', 'S Clamp Jepit telkom ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(384, '5d9f0280-33c0-11ea-aec2-2e728ce88125', 'SM ADSS 48 Core SPAN 100M/ADSS-SS-100M-48B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(385, '5d9f0442-33c0-11ea-aec2-2e728ce88125', 'SM AERIAL SCPT 12 Core/GYHC8A-12B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(386, '5d9f0712-33c0-11ea-aec2-2e728ce88125', 'SM AERIAL SCPT 24 Core/GYHC8A-24B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(387, '5d9f0866-33c0-11ea-aec2-2e728ce88125', 'SM DUCT CABLE ARMOR 12 Core/GYFA-12B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(388, '5d9f09b0-33c0-11ea-aec2-2e728ce88125', 'SM DUCT CABLE ARMOR 24 Core/GYFA-24B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(389, '5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 'SM DUCT CABLE ARMOR 48 Core/GYFA-48B1.3 ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(390, '5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 'SM DUCT CABLE ARMOR 6 Core/GYFA-6B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(391, '5d9f0d52-33c0-11ea-aec2-2e728ce88125', 'SM DUCT SCPT 12 Core/GYA-12B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(392, '5d9f1040-33c0-11ea-aec2-2e728ce88125', 'SM DUCT SCPT 24 Core/GYA-24B1.3', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(393, '5d9f11b2-33c0-11ea-aec2-2e728ce88125', 'Smart Cleaner LC (Pen Cleaner LC)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(394, '5d9f12fc-33c0-11ea-aec2-2e728ce88125', 'SOC LC/APC ( Belum Terkupas )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(395, '5d9f1432-33c0-11ea-aec2-2e728ce88125', 'SOC LC/UPC ( Belum Terkupas )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(396, '5d9f1568-33c0-11ea-aec2-2e728ce88125', 'SOC SC/APC ( Belum Terkupas )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(397, '5d9f16a8-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:4 Modular SC/UPC (No Brand)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(398, '5d9f1950-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:4 Modular SC/UPC (Ryutelco)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(399, '5d9f1aae-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:4 PLC SC/UPC (Tente)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(400, '5d9f1bee-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 Mini Modular SC/UPC (Ryutelco)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(401, '5d9f1d24-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 Modular SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(402, '5d9f1e64-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 Modular SC/UPC (GOC)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(403, '5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 Modular SC/UPC YOFC', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(404, '5d9f2256-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 PLC SC/APC (Kuning)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(405, '5d9f23b4-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 PLC SC/UPC (Kuning) Ryutelco)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(406, '5d9f24f4-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 PLC SC/UPC (Putih)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(407, '5d9f262a-33c0-11ea-aec2-2e728ce88125', 'Splitter 1:8 PLC SC/UPC (Rainbow)', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(408, '5d9f276a-33c0-11ea-aec2-2e728ce88125', 'Splitter 2:8 Modular SC/APC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(409, '5d9f28a0-33c0-11ea-aec2-2e728ce88125', 'Splitter 2:8 Modular SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(410, '5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 'Splitter 2:8 Modular Tanpa Connector ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(411, '5d9f2db4-33c0-11ea-aec2-2e728ce88125', 'Splitter Modular 1:4 SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(412, '5d9f2f08-33c0-11ea-aec2-2e728ce88125', 'Splitter Modular 1:8 SC/UPC No Brand', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(413, '5d9f3048-33c0-11ea-aec2-2e728ce88125', 'Splitter Modular 1:8 SC/UPC SAM ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(414, '5d9f317e-33c0-11ea-aec2-2e728ce88125', 'Splitter Modular 2:32 SC/APC ( No Brand )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(415, '5d9f32e6-33c0-11ea-aec2-2e728ce88125', 'Splitter Modular 2:8 ( Tanpa Connector )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(416, '5d9f3610-33c0-11ea-aec2-2e728ce88125', 'Splitter PLC 1:4 SC/APC (putih) No brand', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(417, '5d9f38fe-33c0-11ea-aec2-2e728ce88125', 'Splitter PLC 1:8 SC/UPC ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(418, '5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 'Splitter PLC 1:8 Tanpa Connector ( No Brand )', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(419, '5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 'Stainless', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(420, '5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 'Stick Rodding', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(421, '5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 'Stopping Buckle ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(422, '5d9f4006-33c0-11ea-aec2-2e728ce88125', 'Stopping Buckle Gigi', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(423, '5d9f43e4-33c0-11ea-aec2-2e728ce88125', 'Striping Tool Crimping', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(424, '5d9f45c4-33c0-11ea-aec2-2e728ce88125', 'Stripper Fis Import', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(425, '5d9f472c-33c0-11ea-aec2-2e728ce88125', 'Stripper Fis Local', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(426, '5d9f489e-33c0-11ea-aec2-2e728ce88125', 'Suspensi ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(427, '5d9f49de-33c0-11ea-aec2-2e728ce88125', 'Tangga 4,4m AMG', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(428, '5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 'Tangga 5,2m AMG', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(429, '5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 'Testphone Chinoe', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(430, '5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 'Visual Fault Locator AMG', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(431, '5d9f506e-33c0-11ea-aec2-2e728ce88125', 'Visual Fault Locator JW 3105A', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(432, '5d9f5262-33c0-11ea-aec2-2e728ce88125', 'Wall Mount Rack ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(433, '5d9f53ca-33c0-11ea-aec2-2e728ce88125', 'Wire Tracker', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11'),
(434, '5d9f550a-33c0-11ea-aec2-2e728ce88125', 'Young Jin ', 'Gudang Utama', '5000.00', '0.00', '0.00', '2020-01-10 16:17:11', '2020-01-10 16:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(2) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming` decimal(10,2) DEFAULT NULL,
  `outgoing` decimal(10,2) DEFAULT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_method` int(11) NOT NULL,
  `pay_term` int(11) NOT NULL,
  `terms_no` int(11) NOT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_amount` decimal(50,2) NOT NULL,
  `sales_amount` decimal(50,2) NOT NULL,
  `invoice_amount` decimal(50,2) NOT NULL,
  `invoice_remaining` decimal(50,2) NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_made` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` decimal(50,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_production` datetime DEFAULT NULL,
  `end_production` datetime DEFAULT NULL,
  `man_plan` decimal(50,2) NOT NULL,
  `man_result` decimal(50,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacture_items`
--

CREATE TABLE `manufacture_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manufacture_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` decimal(50,2) NOT NULL,
  `result` decimal(50,2) DEFAULT NULL,
  `scrap` decimal(50,2) DEFAULT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_09_04_083904_create_divisions_table', 1),
(4, '2019_09_04_083916_create_statuses_table', 1),
(5, '2019_09_04_083928_create_warehouses_table', 1),
(6, '2019_09_04_211618_create_log_activities_table', 2),
(7, '2019_09_04_211848_create_permission_tables', 2),
(8, '2019_09_05_225910_create_payment_methods_table', 3),
(9, '2019_09_05_230100_create_payment_terms_table', 3),
(10, '2019_09_05_230914_create_uom_categories_table', 4),
(11, '2019_09_05_230930_create_uom_values_table', 4),
(12, '2019_09_06_074801_create_contacts_table', 5),
(13, '2019_09_07_083416_create_product_categories_table', 6),
(15, '2019_09_07_084554_create_products_table', 7),
(19, '2019_09_08_215819_create_internal_transfers_table', 10),
(20, '2019_09_09_223056_create_sales_table', 11),
(21, '2019_09_09_232534_create_sale_items_table', 11),
(22, '2019_09_10_200022_create_purchases_table', 12),
(23, '2019_09_10_200121_create_purchase_items_table', 12),
(24, '2019_09_11_223042_create_deliveries_table', 13),
(29, '2019_09_19_231526_create_manufacture_calculates_table', 16),
(30, '2019_09_22_225704_create_internal_items_table', 17),
(31, '2019_09_11_232813_create_manufactures_table', 18),
(32, '2019_09_11_233120_create_manufacture_items_table', 18),
(37, '2019_09_24_102135_create_work_items_table', 19),
(41, '2019_10_11_000017_create_delivery_services_table', 21),
(44, '2019_10_12_012542_create_retur_sales_table', 22),
(45, '2019_10_12_012659_create_retur_items_table', 22),
(48, '2014_10_00_000001_add_group_column_on_settings_table', 24),
(54, '2020_01_06_235627_create_user_warehouses_table', 27),
(58, '2019_09_07_211518_create_inventories_table', 29),
(61, '2019_09_07_211754_create_inventory_movements_table', 30),
(62, '2019_09_07_212548_create_product_boms_table', 30),
(63, '2020_01_13_041442_create_payments_table', 31),
(64, '2019_09_30_225904_create_invoices_table', 32),
(65, '2020_01_15_235803_create_delivery_items_table', 32),
(66, '2020_01_17_200048_create_references_table', 33),
(67, '2020_01_17_230338_create_receive_purchases_table', 34),
(68, '2020_01_17_230354_create_receive_purchase_items_table', 34),
(69, '2020_01_18_103842_create_payment_items_table', 35),
(70, '2020_01_18_111930_create_invoices_table', 36),
(71, '2020_01_18_111938_create_invoice_items_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(8, 'iteos\\Models\\User', '071ea324-a8d2-4f79-8f8a-23c90bc191ff'),
(3, 'iteos\\Models\\User', '24d21373-b462-4888-8d27-d365c33fbf6a'),
(10, 'iteos\\Models\\User', '25b76385-8f8d-4422-a62e-21c671bfcaec'),
(9, 'iteos\\Models\\User', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434'),
(1, 'iteos\\Models\\User', '589f13c5-f185-4bb2-95d8-c62b12c8271d'),
(4, 'iteos\\Models\\User', '74718047-dc5d-4f47-87fc-8db9e4fdb527'),
(1, 'iteos\\Models\\User', '820cbe25-baf5-4d2b-b877-9ce7fdffdc21'),
(6, 'iteos\\Models\\User', '994a52f5-285e-4401-95b2-166cc353bb65'),
(7, 'iteos\\Models\\User', 'a7acf627-9108-44c0-a028-2d9bf7829108'),
(1, 'iteos\\Models\\User', 'bb536994-ada3-4caa-b97b-e412dc2cc882'),
(3, 'iteos\\Models\\User', 'c7e50632-3efc-4cff-99fd-2a39dee275b2'),
(5, 'iteos\\Models\\User', 'cb512697-44d9-4683-9bae-0a8e28a3252b'),
(4, 'iteos\\Models\\User', 'f68f2a18-623f-4c1a-bfde-7f029c603a17');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_method` int(10) NOT NULL,
  `pay_term` int(10) NOT NULL,
  `terms_no` int(10) NOT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` decimal(50,2) DEFAULT NULL,
  `purchase_amount` decimal(50,2) DEFAULT NULL,
  `pay_amount` decimal(50,2) NOT NULL,
  `pay_left` decimal(50,2) NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_made` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_amount` decimal(50,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Transfer Bank', 'eko', NULL, '2020-01-05 19:42:56', '2020-01-05 19:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'eko', NULL, '2020-01-05 19:43:06', '2020-01-05 19:43:06'),
(2, '7 Hari', 'eko', NULL, '2020-01-05 19:43:12', '2020-01-05 19:43:12'),
(3, '14 Hari', 'eko', NULL, '2020-01-05 19:43:18', '2020-01-05 19:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Can Access Settings', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(2, 'Can Access Users', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(3, 'Can Access Sales', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(4, 'Can Access Purchasing', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(5, 'Can Access Products', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(6, 'Can Access Inventories', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(7, 'Can Access Manufactures', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(8, 'Can Access Finances', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(9, 'Can Create Data', 'web', '2019-09-04 14:23:14', '2019-09-04 14:23:14'),
(10, 'Can Edit Data', 'web', '2019-09-04 14:23:15', '2019-09-04 14:23:15'),
(11, 'Can Delete Data', 'web', '2019-09-04 14:23:15', '2019-09-04 14:23:15'),
(12, 'Can Change Status', 'web', '2019-09-04 14:23:15', '2019-09-04 14:23:15'),
(13, 'Can View Data', 'web', '2019-09-04 14:23:15', '2019-09-04 14:23:15'),
(14, 'Can Create Adjustment', 'web', '2019-09-04 14:23:15', '2019-09-04 14:23:15'),
(15, 'Can Access Contact', 'web', '2019-09-06 01:24:11', '2019-09-06 01:24:11'),
(16, 'Can Accept Request', 'web', '2019-09-10 12:56:37', '2019-09-10 12:56:37'),
(17, 'Can Create Setting', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(18, 'Can Edit Setting', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(19, 'Can Delete Setting', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(20, 'Can Create User', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(21, 'Can Edit User', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(22, 'Can Delete User', 'web', '2019-12-26 18:31:39', '2019-12-26 18:31:39'),
(23, 'Can Create Sales', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(24, 'Can Edit Sales', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(25, 'Can Delete Sales', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(26, 'Can Accept Sales', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(27, 'Can Create Purchase', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(28, 'Can Edit Purchase', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(29, 'Can Delete Purchase', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(30, 'Can Approve Purchase', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(31, 'Can Create Product', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(32, 'Can Edit Product', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(33, 'Can Delete Product', 'web', '2019-12-26 18:31:40', '2019-12-26 18:31:40'),
(34, 'Can Create Inventory', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(35, 'Can Edit Inventory', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(36, 'Can Delete Inventory', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(37, 'Can Approve Inventory', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(38, 'Can Create Manufacture', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(39, 'Can Edit Manufacture', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(40, 'Can Delete Manufacture', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(41, 'Can Approve Manufacture', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(42, 'Can Create Finance', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(43, 'Can Edit Finance', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(44, 'Can Delete Finance', 'web', '2019-12-26 18:31:41', '2019-12-26 18:31:41'),
(45, 'Can Create Contact', 'web', '2019-12-30 17:43:08', '2019-12-30 17:43:08'),
(46, 'Can Edit Contact', 'web', '2019-12-30 17:44:01', '2019-12-30 17:44:01'),
(47, 'Can Delete Contact', 'web', '2019-12-30 17:44:01', '2019-12-30 17:44:01'),
(48, 'Can Access Report', 'web', '2019-12-30 17:47:18', '2019-12-30 17:47:18'),
(49, 'Can Create Report', 'web', '2019-12-30 17:47:18', '2019-12-30 17:47:18'),
(50, 'Can Create Receipt', 'web', '2020-01-17 00:02:47', '2020-01-17 00:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_barcode` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stock` decimal(50,2) DEFAULT NULL,
  `base_price` decimal(50,2) NOT NULL,
  `sale_price` decimal(50,2) NOT NULL,
  `active` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `is_manufacture` tinyint(1) DEFAULT NULL,
  `is_sale` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9aaffa-33c0-11ea-aec2-2e728ce88125', 10000001, 'Adapter Dustcaps Black', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ab270-33c0-11ea-aec2-2e728ce88125', 10000002, 'Adapter Dustcaps Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ab3d8-33c0-11ea-aec2-2e728ce88125', 10000003, 'Adapter Dustcaps Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ab536-33c0-11ea-aec2-2e728ce88125', 10000004, 'Adapter MM DX LC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ac882-33c0-11ea-aec2-2e728ce88125', 10000005, 'Adapter MM SX SC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9aca26-33c0-11ea-aec2-2e728ce88125', 10000006, 'Adapter SC/UPC Auto Shutter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9acb70-33c0-11ea-aec2-2e728ce88125', 10000007, 'Adapter SC/UPC DX', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9acca6-33c0-11ea-aec2-2e728ce88125', 10000008, 'Adapter SM LC/UPC DX', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 10000009, 'Adapter SM SC/APC (BESI) (Dimika)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ae448-33c0-11ea-aec2-2e728ce88125', 10000010, 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 10000011, 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 10000012, 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b0464-33c0-11ea-aec2-2e728ce88125', 10000013, 'Adapter SM SC/UPC PAZ ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b05ea-33c0-11ea-aec2-2e728ce88125', 10000014, 'Adapter ST/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b0734-33c0-11ea-aec2-2e728ce88125', 10000015, 'Box ONT Huawei', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b0874-33c0-11ea-aec2-2e728ce88125', 10000016, 'Box Splitter 1:8 (Kosongan)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b09aa-33c0-11ea-aec2-2e728ce88125', 10000017, 'Box Splitter 1:8 (Splitter Plc 1:8 SC/APC)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b0d60-33c0-11ea-aec2-2e728ce88125', 10000018, 'Bundle Cable LC/UPC 8F 1 sisi 12m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 10000019, 'Bundle Cable LC/UPC 8F 1 sisi 19m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1008-33c0-11ea-aec2-2e728ce88125', 10000020, 'Bundle Cable LC/UPC 8F 1 sisi 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b113e-33c0-11ea-aec2-2e728ce88125', 10000021, 'Bundle Cable LC/UPC 8F 1 sisi 24m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b127e-33c0-11ea-aec2-2e728ce88125', 10000022, 'Bundle Cable LC/UPC 8F 1 sisi 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b13b4-33c0-11ea-aec2-2e728ce88125', 10000023, 'Bundle Cable LC/UPC 8F 1 sisi 26m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b16e8-33c0-11ea-aec2-2e728ce88125', 10000024, 'Bundle Cable LC/UPC 8F 1 sisi 38m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1832-33c0-11ea-aec2-2e728ce88125', 10000025, 'Bundle Cable SC/UPC 8F 1 sisi 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1968-33c0-11ea-aec2-2e728ce88125', 10000026, 'Bundle Cable SC/UPC 8F 1 sisi 11m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 10000027, 'Bundle Cable SC/UPC 8F 1 sisi 12m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 10000028, 'Bundle Cable SC/UPC 8F 1 sisi 13m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b1e36-33c0-11ea-aec2-2e728ce88125', 10000029, 'Bundle Cable SC/UPC 8F 1 sisi 14m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2296-33c0-11ea-aec2-2e728ce88125', 10000030, 'Bundle Cable SC/UPC 8F 1 sisi 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b241c-33c0-11ea-aec2-2e728ce88125', 10000031, 'Bundle Cable SC/UPC 8F 1 sisi 16m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b255c-33c0-11ea-aec2-2e728ce88125', 10000032, 'Bundle Cable SC/UPC 8F 1 sisi 17m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b269c-33c0-11ea-aec2-2e728ce88125', 10000033, 'Bundle Cable SC/UPC 8F 1 sisi 18m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b27d2-33c0-11ea-aec2-2e728ce88125', 10000034, 'Bundle Cable SC/UPC 8F 1 sisi 19m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2912-33c0-11ea-aec2-2e728ce88125', 10000035, 'Bundle Cable SC/UPC 8F 1 sisi 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2c0a-33c0-11ea-aec2-2e728ce88125', 10000036, 'Bundle Cable SC/UPC 8F 1 sisi 21m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2d68-33c0-11ea-aec2-2e728ce88125', 10000037, 'Bundle Cable SC/UPC 8F 1 sisi 22m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2ea8-33c0-11ea-aec2-2e728ce88125', 10000038, 'Bundle Cable SC/UPC 8F 1 sisi 23m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 10000039, 'Bundle Cable SC/UPC 8F 1 sisi 24m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3146-33c0-11ea-aec2-2e728ce88125', 10000040, 'Bundle Cable SC/UPC 8F 1 sisi 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b327c-33c0-11ea-aec2-2e728ce88125', 10000041, 'Bundle Cable SC/UPC 8F 1 sisi 27m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3632-33c0-11ea-aec2-2e728ce88125', 10000042, 'Bundle Cable SC/UPC 8F 1 sisi 28m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b379a-33c0-11ea-aec2-2e728ce88125', 10000043, 'Bundle Cable SC/UPC 8F 1 sisi 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b38d0-33c0-11ea-aec2-2e728ce88125', 10000044, 'Bundle Cable SC/UPC 8F 1 sisi 42m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3a10-33c0-11ea-aec2-2e728ce88125', 10000045, 'Bundle Cable SC/UPC 8F 1 sisi 55m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3b46-33c0-11ea-aec2-2e728ce88125', 10000046, 'Bundle Cable SC/UPC 8F 1 sisi 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 10000047, 'Bundle Cable SC/UPC 8F 1 sisi 60m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b3f24-33c0-11ea-aec2-2e728ce88125', 10000048, 'Bundle Cable SC/UPC 8F 1 sisi 65m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4244-33c0-11ea-aec2-2e728ce88125', 10000049, 'Bundle Cable SC/UPC 8F 1 sisi 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b43a2-33c0-11ea-aec2-2e728ce88125', 10000050, 'Bundle Cable SC/UPC 8F 1 sisi 8m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b44e2-33c0-11ea-aec2-2e728ce88125', 10000051, 'Bundle Cable SC/UPC 8F 1 sisi 9m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4618-33c0-11ea-aec2-2e728ce88125', 10000052, 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b474e-33c0-11ea-aec2-2e728ce88125', 10000053, 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b488e-33c0-11ea-aec2-2e728ce88125', 10000054, 'Bundle Core 12C 2 sisi SC-LC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4b90-33c0-11ea-aec2-2e728ce88125', 10000055, 'Bundle Core 2 Sisi 8c SC-SC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 10000056, 'Cable Manager W/Cover 1U', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4e38-33c0-11ea-aec2-2e728ce88125', 10000057, 'Cassete FO 24core  ( Black )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 10000058, 'Cassete FO 8 Core', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b50b8-33c0-11ea-aec2-2e728ce88125', 10000059, 'Cassete FO 96core ( Putih )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b51ee-33c0-11ea-aec2-2e728ce88125', 10000060, 'Clamp A (Bracket) (Dead End)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b5536-33c0-11ea-aec2-2e728ce88125', 10000061, 'Clamp Pipa Conduit ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b5676-33c0-11ea-aec2-2e728ce88125', 10000062, 'Clamp Ring 3 Lubang ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b57b6-33c0-11ea-aec2-2e728ce88125', 10000063, 'Clamp Slang  10 Inch', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b58ec-33c0-11ea-aec2-2e728ce88125', 10000064, 'Cleaver FC-65', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b5aae-33c0-11ea-aec2-2e728ce88125', 10000065, 'Cleaver Merk Senter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b5c16-33c0-11ea-aec2-2e728ce88125', 10000066, 'Cleaver Sumitomo ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b5efa-33c0-11ea-aec2-2e728ce88125', 60000001, 'Clip MM LC/PC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6058-33c0-11ea-aec2-2e728ce88125', 60000002, 'Clip MM LC/UPC (Transparent)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6198-33c0-11ea-aec2-2e728ce88125', 60000003, 'Clip MM SC/PC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b62ce-33c0-11ea-aec2-2e728ce88125', 60000004, 'Clip SM LC/APC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6404-33c0-11ea-aec2-2e728ce88125', 60000005, 'Clip SM LC/UPC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b653a-33c0-11ea-aec2-2e728ce88125', 60000006, 'Clip SM SC/APC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6828-33c0-11ea-aec2-2e728ce88125', 60000007, 'Clip SM SC/UPC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b699a-33c0-11ea-aec2-2e728ce88125', 10000067, 'Clossure 96 Core Tanpa Kunci+Kardus Litech', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6ada-33c0-11ea-aec2-2e728ce88125', 10000068, 'Clossure AIS 12/24 Core (Duck) ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6c06-33c0-11ea-aec2-2e728ce88125', 10000069, 'Clousure 48 Core (Fiber Trone)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 10000070, 'Clousure 48 Core (PAZ)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b7048-33c0-11ea-aec2-2e728ce88125', 10000071, 'Clousure 96 Core ( Kulit Jeruk)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b71ba-33c0-11ea-aec2-2e728ce88125', 10000072, 'Clousure 96 Core ( No brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8588-33c0-11ea-aec2-2e728ce88125', 10000073, 'Clousure 96 Core ( No brand Tidak Complete) (Tanpa Kardus)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b86fa-33c0-11ea-aec2-2e728ce88125', 10000074, 'Clousure 96 Core Dome ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8830-33c0-11ea-aec2-2e728ce88125', 60000008, 'Connector MM LC/PC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8970-33c0-11ea-aec2-2e728ce88125', 60000009, 'Connector MM LC/PC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 60000010, 'Connector MM SC/PC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 60000011, 'Connector MM SC/PC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b8eca-33c0-11ea-aec2-2e728ce88125', 60000012, 'Connector MM SC/PC 3,0mm Tanpa Spring', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b946a-33c0-11ea-aec2-2e728ce88125', 60000013, 'Connector Set ST Semi Finished Include Ferulle 2mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b95fa-33c0-11ea-aec2-2e728ce88125', 60000014, 'Connector SM FC/APC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9744-33c0-11ea-aec2-2e728ce88125', 60000015, 'Connector SM FC/APC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9884-33c0-11ea-aec2-2e728ce88125', 60000016, 'Connector SM FC/UPC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 60000017, 'Connector SM FC/UPC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 60000018, 'Connector SM LC/APC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 60000019, 'Connector SM LC/APC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 60000020, 'Connector SM LC/APC 3,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba068-33c0-11ea-aec2-2e728ce88125', 60000021, 'Connector SM LC/UPC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 60000022, 'Connector SM LC/UPC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba2de-33c0-11ea-aec2-2e728ce88125', 60000023, 'Connector SM LC/UPC 3,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 60000024, 'Connector SM SC/APC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba734-33c0-11ea-aec2-2e728ce88125', 60000025, 'Connector SM SC/APC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ba946-33c0-11ea-aec2-2e728ce88125', 60000026, 'Connector SM SC/APC 3,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9baacc-33c0-11ea-aec2-2e728ce88125', 60000027, 'Connector SM SC/APC 3,0mm (Tanpa Big Crimp Ring  & Dust Cups)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bac0c-33c0-11ea-aec2-2e728ce88125', 60000028, 'Connector SM SC/APC 3,0mm (Tanpa Dustcups)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bae00-33c0-11ea-aec2-2e728ce88125', 60000029, 'Connector SM SC/APC Semi Finished + Ferulle', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bb116-33c0-11ea-aec2-2e728ce88125', 60000030, 'Connector SM SC/UPC 0,9mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bb27e-33c0-11ea-aec2-2e728ce88125', 60000031, 'Connector SM SC/UPC 2,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bb3be-33c0-11ea-aec2-2e728ce88125', 60000032, 'Connector SM SC/UPC 3,0mm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bb4f4-33c0-11ea-aec2-2e728ce88125', 60000033, 'Connector SM SC/UPC 5cm Precon', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9bb724-33c0-11ea-aec2-2e728ce88125', 60000034, 'Connector SM SC/UPC Semi Finished Include Ferulle ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c752e-33c0-11ea-aec2-2e728ce88125', 10000075, 'Cutter Besar (Kenko)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c77b8-33c0-11ea-aec2-2e728ce88125', 10000076, 'D-clamp', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8032-33c0-11ea-aec2-2e728ce88125', 60000035, 'Drop Cable 1 Core ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8190-33c0-11ea-aec2-2e728ce88125', 60000036, 'Drop Cable 1 Core 100 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8492-33c0-11ea-aec2-2e728ce88125', 60000037, 'Drop Cable 1 Core 150 Meter ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c860e-33c0-11ea-aec2-2e728ce88125', 60000038, 'Drop Cable 1 Core 200 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c874e-33c0-11ea-aec2-2e728ce88125', 60000039, 'Drop Cable 1 Core 250 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8a28-33c0-11ea-aec2-2e728ce88125', 60000040, 'Drop Cable 1 Core 300 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 60000041, 'Drop Cable 1 Core 50 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c8eec-33c0-11ea-aec2-2e728ce88125', 60000042, 'Drop Cable 1 Core 63 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9036-33c0-11ea-aec2-2e728ce88125', 60000043, 'Drop Cable 1 Core 75 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9176-33c0-11ea-aec2-2e728ce88125', 60000044, 'Drop Cable 1 Core 80 Meter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c975c-33c0-11ea-aec2-2e728ce88125', 60000045, 'Dropcable 2C With 2 Stell Wire.LSZH 1000M', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9950-33c0-11ea-aec2-2e728ce88125', 60000046, 'Dropcable 4 Core, G657A1, LSZH, TWO STEEL WIRE 1000M', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 10000077, 'Fashconector SC/UPC Model Baru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9d92-33c0-11ea-aec2-2e728ce88125', 10000078, 'Fashconector SC/UPC Model Lama', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9ec8-33c0-11ea-aec2-2e728ce88125', 60000047, 'Ferulle 125wf for MM LC/PC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 60000048, 'Ferulle 125wf for SM LC/UPC-LC/APC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ca134-33c0-11ea-aec2-2e728ce88125', 60000049, 'Ferulle 250wf for MM SC/PC-FC/PC ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ca26a-33c0-11ea-aec2-2e728ce88125', 60000050, 'Ferulle 250wf for SM SC/APC-FC/APC ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 60000051, 'Ferulle 250wf for SM SC/UPC-FC/UPC ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ca940-33c0-11ea-aec2-2e728ce88125', 10000079, 'Holder SOC SC/UPC Sumitomo', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9caad0-33c0-11ea-aec2-2e728ce88125', 60000052, 'Jacket Purcation Tube 2mm Yellow Aramid', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cac1a-33c0-11ea-aec2-2e728ce88125', 60000053, 'Kabel Dropcore Putih ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cad96-33c0-11ea-aec2-2e728ce88125', 60000054, 'Kabel MM OM4 DX 2mm Blue Colour ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9caee0-33c0-11ea-aec2-2e728ce88125', 60000055, 'Kabel OM2 SX 0,9mm', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb016-33c0-11ea-aec2-2e728ce88125', 60000056, 'Kabel OM3 DX 2,0mm (Aqua)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb318-33c0-11ea-aec2-2e728ce88125', 60000057, 'Kabel OM4 DX 2,0mm (Blue)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb46c-33c0-11ea-aec2-2e728ce88125', 60000058, 'Kabel OM4 DX 2,0mm (Orange)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 60000059, 'Kabel SM DX (2,0mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb6f6-33c0-11ea-aec2-2e728ce88125', 60000060, 'Kabel SM DX (2,0mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cb82c-33c0-11ea-aec2-2e728ce88125', 60000061, 'Kabel SM DX (3,0mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cba66-33c0-11ea-aec2-2e728ce88125', 60000062, 'Kabel SM DX 2mm Corning', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cbd54-33c0-11ea-aec2-2e728ce88125', 60000063, 'Kabel SM SX (2,0mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cbef8-33c0-11ea-aec2-2e728ce88125', 60000064, 'Kabel SM SX (2,0mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc038-33c0-11ea-aec2-2e728ce88125', 60000065, 'Kabel SM SX (3,mm)', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc16e-33c0-11ea-aec2-2e728ce88125', 60000066, 'Kabel SM SX 0,9mm', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 60000067, 'Kabel SM SX 0,9mm Warna Abu-abu', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc420-33c0-11ea-aec2-2e728ce88125', 60000068, 'Kabel SM SX 0,9mm Warna Coklat', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc556-33c0-11ea-aec2-2e728ce88125', 60000069, 'Kabel Sm SX 0,9mm Warna Orange', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc876-33c0-11ea-aec2-2e728ce88125', 60000070, 'Kabel SM SX 3,0mm', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 60000071, 'Kabel UTP CAT 6 LS ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 60000072, 'Kabel UTP CAT 6 Schneider ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ccc36-33c0-11ea-aec2-2e728ce88125', 60000073, 'Kabel UTP CAT 6 Vasco Link', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ccd62-33c0-11ea-aec2-2e728ce88125', 60000074, 'Kardus uk. 22 x 22 x 10 cm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ccea2-33c0-11ea-aec2-2e728ce88125', 60000075, 'Kardus uk. 22 x 22 x 22 cm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd172-33c0-11ea-aec2-2e728ce88125', 60000076, 'Kardus uk. 60 x 39 x 25 cm', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 10000080, 'Kelvar Scissor (Tang Gunting)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd41a-33c0-11ea-aec2-2e728ce88125', 10000081, 'Krone LSA', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd55a-33c0-11ea-aec2-2e728ce88125', 10000082, 'KTB Walmount 8 C', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd690-33c0-11ea-aec2-2e728ce88125', 50000001, 'Mata Bor Nankai', 5, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 10000083, 'Media Converter 10/100 ( B )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cdadc-33c0-11ea-aec2-2e728ce88125', 10000084, 'ODC Mini 96C/ODP 96C', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 10000085, 'ODP 12 Core ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 10000086, 'ODP 12 Core ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cdec4-33c0-11ea-aec2-2e728ce88125', 10000087, 'ODP 12 Core Kosongan ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cdffa-33c0-11ea-aec2-2e728ce88125', 10000088, 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 10000089, 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 10000090, 'ODP 16 Core ( TIS )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ce662-33c0-11ea-aec2-2e728ce88125', 10000091, 'ODP 16 Core (Polos)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ce798-33c0-11ea-aec2-2e728ce88125', 10000092, 'ODP 16 Core (Sunsea)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cea18-33c0-11ea-aec2-2e728ce88125', 10000093, 'ODP 16 Core CA (Huawei) Black', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cebc6-33c0-11ea-aec2-2e728ce88125', 10000094, 'ODP 24 Core  YOFC Tanpa Kunci+Kardus SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ced06-33c0-11ea-aec2-2e728ce88125', 10000095, 'ODP 24 Core ( No Brand ) Tanpa Kunci', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cefb8-33c0-11ea-aec2-2e728ce88125', 10000096, 'ODP 24 Core SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cf116-33c0-11ea-aec2-2e728ce88125', 10000097, 'ODP 24 Core YOFC Tanpa Kardus SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cf24c-33c0-11ea-aec2-2e728ce88125', 10000098, 'ODP 24 Core YOFC Tanpa Pigtail SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cf38c-33c0-11ea-aec2-2e728ce88125', 10000099, 'ODP 48 Core Sudah Disablon FMI', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cf58a-33c0-11ea-aec2-2e728ce88125', 10000100, 'ODP Solid 8 Core + Splitter 1:8 SC/UPC Auto Shutter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 10000101, 'ODP/FAT 12 Core SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cfa08-33c0-11ea-aec2-2e728ce88125', 10000102, 'OLS J4', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cfb48-33c0-11ea-aec2-2e728ce88125', 10000103, 'OM2 DUCK CABLE ARMOR 12 Core/GYFA-12OM2/2.0FRP', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cfc7e-33c0-11ea-aec2-2e728ce88125', 10000104, 'OM2 DUCK CABLE ARMOR 24 Core/GYFA-24OM2/2.0FRP', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9cfdbe-33c0-11ea-aec2-2e728ce88125', 10000105, 'OM2 DUCK CABLE ARMOR 48 Core/GYFA-48OM2/2.0FRP', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9cfef4-33c0-11ea-aec2-2e728ce88125', 10000106, 'OM2 DUCK CABLE ARMOR 6 Core/GYFA-6OM2/2.0FRP', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d002a-33c0-11ea-aec2-2e728ce88125', 10000107, 'ONT ZTE Versi 3', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d02f0-33c0-11ea-aec2-2e728ce88125', 10000108, 'Optical Light Source (OLS) JW', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d04b2-33c0-11ea-aec2-2e728ce88125', 10000109, 'Optical Power Meter ( AMG )', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0610-33c0-11ea-aec2-2e728ce88125', 10000110, 'Optical Power Meter (No Brand)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0750-33c0-11ea-aec2-2e728ce88125', 10000111, 'Optical Power Meter JoinWitt', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0962-33c0-11ea-aec2-2e728ce88125', 10000112, 'OTB 24 Core SC (Hitam)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0b24-33c0-11ea-aec2-2e728ce88125', 10000113, 'OTB 24 Core SC (Krim)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 10000114, 'OTB 24 Core SC/APC ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d0f84-33c0-11ea-aec2-2e728ce88125', 10000115, 'OTB 48 Core SC/APC ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d10ba-33c0-11ea-aec2-2e728ce88125', 10000116, 'OTB 48 Core SC/APC ( No Brand ) Kunci Rusak', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d11f0-33c0-11ea-aec2-2e728ce88125', 10000117, 'OTB RACK 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d1628-33c0-11ea-aec2-2e728ce88125', 10000118, 'OTB RACK 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d17cc-33c0-11ea-aec2-2e728ce88125', 10000119, 'OTB RACK 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d1af6-33c0-11ea-aec2-2e728ce88125', 10000120, 'OTB Rack Splitter PLC 1:32 SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d1c40-33c0-11ea-aec2-2e728ce88125', 10000121, 'Paladin Buffer Stripper', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d1d76-33c0-11ea-aec2-2e728ce88125', 10000122, 'Palu Kecil ( CAB )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d1eac-33c0-11ea-aec2-2e728ce88125', 10000123, 'Pantong', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d2000-33c0-11ea-aec2-2e728ce88125', 10000124, 'Patchcord MM DX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, 'patch1.jpegproduct.jpeg', '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'eko', 'eko', '2020-01-10 16:17:04', '2020-01-16 23:58:27'),
('5d9d2140-33c0-11ea-aec2-2e728ce88125', 10000125, 'Patchcord MM DX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, 'patch1.jpegproduct.jpeg', '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'eko', 'eko', '2020-01-10 16:17:04', '2020-01-16 23:58:43'),
('5d9d241a-33c0-11ea-aec2-2e728ce88125', 10000126, 'Patchcord MM DX (3,0mm) SC/UPC-ST/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d25b4-33c0-11ea-aec2-2e728ce88125', 10000127, 'Patchcord MM DX (3,0mm) ST/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d2708-33c0-11ea-aec2-2e728ce88125', 10000128, 'Patchcord MM DX (3,0mm) ST/UPC-ST/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d2848-33c0-11ea-aec2-2e728ce88125', 10000129, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d297e-33c0-11ea-aec2-2e728ce88125', 10000130, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d2ab4-33c0-11ea-aec2-2e728ce88125', 10000131, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d2bea-33c0-11ea-aec2-2e728ce88125', 10000132, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d300e-33c0-11ea-aec2-2e728ce88125', 10000133, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d3176-33c0-11ea-aec2-2e728ce88125', 10000134, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d32b6-33c0-11ea-aec2-2e728ce88125', 10000135, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d33f6-33c0-11ea-aec2-2e728ce88125', 10000136, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d3568-33c0-11ea-aec2-2e728ce88125', 10000137, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d382e-33c0-11ea-aec2-2e728ce88125', 10000138, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 10000139, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d7956-33c0-11ea-aec2-2e728ce88125', 10000140, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 10000141, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 60m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 10000142, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d8162-33c0-11ea-aec2-2e728ce88125', 10000143, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d84aa-33c0-11ea-aec2-2e728ce88125', 10000144, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 50m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d85fe-33c0-11ea-aec2-2e728ce88125', 10000145, 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d8734-33c0-11ea-aec2-2e728ce88125', 10000146, 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d886a-33c0-11ea-aec2-2e728ce88125', 10000147, 'Patchcord MM SX (3,0mm) LC/UPC-LC/UPC 50m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d89a0-33c0-11ea-aec2-2e728ce88125', 10000148, 'Patchcord MM SX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 10000149, 'Patchcord Outdoor 2 Core SM LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 10000150, 'Patchcord Outdoor 2 Core SM SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9d9094-33c0-11ea-aec2-2e728ce88125', 10000151, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dadc2-33c0-11ea-aec2-2e728ce88125', 10000152, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9daf3e-33c0-11ea-aec2-2e728ce88125', 10000153, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9db092-33c0-11ea-aec2-2e728ce88125', 10000154, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9db1d2-33c0-11ea-aec2-2e728ce88125', 10000155, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9db664-33c0-11ea-aec2-2e728ce88125', 10000156, 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9db97a-33c0-11ea-aec2-2e728ce88125', 10000157, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 10000158, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 10000159, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 10000160, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, NULL, 'eko', 'eko', '2020-01-10 16:17:04', '2020-01-13 17:34:44'),
('5d9dc06e-33c0-11ea-aec2-2e728ce88125', 10000161, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc352-33c0-11ea-aec2-2e728ce88125', 10000162, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 10000163, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 10000164, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc726-33c0-11ea-aec2-2e728ce88125', 10000165, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc85c-33c0-11ea-aec2-2e728ce88125', 10000166, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dc992-33c0-11ea-aec2-2e728ce88125', 10000167, 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dcef6-33c0-11ea-aec2-2e728ce88125', 10000168, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dd090-33c0-11ea-aec2-2e728ce88125', 10000169, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dd374-33c0-11ea-aec2-2e728ce88125', 10000170, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 10000171, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dd61c-33c0-11ea-aec2-2e728ce88125', 10000172, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 10000173, 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9dda5e-33c0-11ea-aec2-2e728ce88125', 10000174, 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ddd42-33c0-11ea-aec2-2e728ce88125', 10000175, 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 10000176, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 10000177, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e20e0-33c0-11ea-aec2-2e728ce88125', 10000178, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e223e-33c0-11ea-aec2-2e728ce88125', 10000179, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e237e-33c0-11ea-aec2-2e728ce88125', 10000180, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e261c-33c0-11ea-aec2-2e728ce88125', 10000181, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e296e-33c0-11ea-aec2-2e728ce88125', 10000182, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e2c70-33c0-11ea-aec2-2e728ce88125', 10000183, 'Patchcord SM SX (2,0mm) FC/APC-FC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e2dba-33c0-11ea-aec2-2e728ce88125', 10000184, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e2f04-33c0-11ea-aec2-2e728ce88125', 10000185, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e31fc-33c0-11ea-aec2-2e728ce88125', 10000186, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e336e-33c0-11ea-aec2-2e728ce88125', 10000187, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e34ae-33c0-11ea-aec2-2e728ce88125', 10000188, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e35ee-33c0-11ea-aec2-2e728ce88125', 10000189, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e3724-33c0-11ea-aec2-2e728ce88125', 10000190, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e385a-33c0-11ea-aec2-2e728ce88125', 10000191, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e3990-33c0-11ea-aec2-2e728ce88125', 10000192, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e3c92-33c0-11ea-aec2-2e728ce88125', 10000193, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 10000194, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4160-33c0-11ea-aec2-2e728ce88125', 10000195, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e42c8-33c0-11ea-aec2-2e728ce88125', 10000196, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e444e-33c0-11ea-aec2-2e728ce88125', 10000197, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4598-33c0-11ea-aec2-2e728ce88125', 10000198, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e46d8-33c0-11ea-aec2-2e728ce88125', 10000199, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4a16-33c0-11ea-aec2-2e728ce88125', 10000200, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4b56-33c0-11ea-aec2-2e728ce88125', 10000201, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4c96-33c0-11ea-aec2-2e728ce88125', 10000202, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 10000203, 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e4f02-33c0-11ea-aec2-2e728ce88125', 10000204, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5042-33c0-11ea-aec2-2e728ce88125', 10000205, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5236-33c0-11ea-aec2-2e728ce88125', 10000206, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5376-33c0-11ea-aec2-2e728ce88125', 10000207, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5650-33c0-11ea-aec2-2e728ce88125', 10000208, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e57a4-33c0-11ea-aec2-2e728ce88125', 10000209, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5934-33c0-11ea-aec2-2e728ce88125', 10000210, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 10000211, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 10000212, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 10000213, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e5f92-33c0-11ea-aec2-2e728ce88125', 10000214, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 1, 1, 'patch1.jpegproduct.jpeg', '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'eko', 'eko', '2020-01-10 16:17:04', '2020-01-17 00:00:28'),
('5d9e6604-33c0-11ea-aec2-2e728ce88125', 10000215, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e6820-33c0-11ea-aec2-2e728ce88125', 10000216, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e6988-33c0-11ea-aec2-2e728ce88125', 10000217, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e6abe-33c0-11ea-aec2-2e728ce88125', 10000218, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e6c08-33c0-11ea-aec2-2e728ce88125', 10000219, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e6f32-33c0-11ea-aec2-2e728ce88125', 10000220, 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e707c-33c0-11ea-aec2-2e728ce88125', 10000221, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e71b2-33c0-11ea-aec2-2e728ce88125', 10000222, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e73ce-33c0-11ea-aec2-2e728ce88125', 10000223, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e7554-33c0-11ea-aec2-2e728ce88125', 10000224, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e76d0-33c0-11ea-aec2-2e728ce88125', 10000225, 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e781a-33c0-11ea-aec2-2e728ce88125', 10000226, 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e7afe-33c0-11ea-aec2-2e728ce88125', 10000227, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e7edc-33c0-11ea-aec2-2e728ce88125', 10000228, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8152-33c0-11ea-aec2-2e728ce88125', 10000229, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e82ba-33c0-11ea-aec2-2e728ce88125', 10000230, 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8404-33c0-11ea-aec2-2e728ce88125', 10000231, 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8742-33c0-11ea-aec2-2e728ce88125', 10000232, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e88b4-33c0-11ea-aec2-2e728ce88125', 10000233, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e89fe-33c0-11ea-aec2-2e728ce88125', 10000234, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8b34-33c0-11ea-aec2-2e728ce88125', 10000235, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8c74-33c0-11ea-aec2-2e728ce88125', 10000236, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e8daa-33c0-11ea-aec2-2e728ce88125', 10000237, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e90d4-33c0-11ea-aec2-2e728ce88125', 10000238, 'Pedestal Besar isi ODP', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9246-33c0-11ea-aec2-2e728ce88125', 10000239, 'Pedestal Besar Kosongan ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9386-33c0-11ea-aec2-2e728ce88125', 10000240, 'Pedestal Kecil Kosongan (Tanpa Kardus)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e94bc-33c0-11ea-aec2-2e728ce88125', 10000241, 'PG 5', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9714-33c0-11ea-aec2-2e728ce88125', 10000242, 'Pigtai SM DX SC/UPC (2,0mm) 8m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9854-33c0-11ea-aec2-2e728ce88125', 10000243, 'Pigtail Bundle 12 Core SC/APC 1,5M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9994-33c0-11ea-aec2-2e728ce88125', 10000244, 'Pigtail MM DX ST/PC (3,mm) 3m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9caa-33c0-11ea-aec2-2e728ce88125', 10000245, 'Pigtail MM SX FC/PC (2,0mm) 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9e12-33c0-11ea-aec2-2e728ce88125', 10000246, 'Pigtail MM SX FC/PC (2,0mm) 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9e9f66-33c0-11ea-aec2-2e728ce88125', 10000247, 'Pigtail MM SX LC/PC (2,0mm) 6m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 10000248, 'Pigtail MM SX LC/UPC (2,0mm) 27m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 10000249, 'Pigtail MM SX SC/PC (2,mm) 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea312-33c0-11ea-aec2-2e728ce88125', 10000250, 'Pigtail MM SX SC/PC (2,mm) 3m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 10000251, 'Pigtail MM SX SC/UPC (2,0mm)1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea754-33c0-11ea-aec2-2e728ce88125', 10000252, 'Pigtail SM DX FC/UPC (2,0mm) 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea894-33c0-11ea-aec2-2e728ce88125', 10000253, 'Pigtail SM DX FC/UPC (2,0mm) 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 10000254, 'Pigtail SM DX FC/UPC (2,0mm) 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eab0a-33c0-11ea-aec2-2e728ce88125', 10000255, 'Pigtail SM DX SC/APC (3,0mm) 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eac40-33c0-11ea-aec2-2e728ce88125', 10000256, 'Pigtail SM DX SC/APC (3,0mm) 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eaefc-33c0-11ea-aec2-2e728ce88125', 10000257, 'Pigtail SM DX SC/UPC (2,0mm) 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 10000258, 'Pigtail SM DX SC/UPC (3,0mm) 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 10000259, 'Pigtail SM DX SC/UPC (3,0mm) 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb32a-33c0-11ea-aec2-2e728ce88125', 10000260, 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb46a-33c0-11ea-aec2-2e728ce88125', 10000261, 'Pigtail SM SX FC/UPC (3,0mm) 5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb636-33c0-11ea-aec2-2e728ce88125', 10000262, 'Pigtail SM SX LC/UPC (2,0mm) 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eb794-33c0-11ea-aec2-2e728ce88125', 10000263, 'Pigtail SM SX LC/UPC (3,0mm) 10m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 10000264, 'Pigtail SM SX SC/APC (0,9mm) 1m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ebc08-33c0-11ea-aec2-2e728ce88125', 10000265, 'Pigtail SM SX SC/APC (0,9mm) 2m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 10000266, 'Pigtail SM SX SC/APC (0,9mm) 2m Oren', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 10000267, 'Pigtail SM SX SC/APC (2,0mm) 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 10000268, 'Pigtail SM SX SC/APC (2,0mm) 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 10000269, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m  (merah)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 10000270, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 10000271, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (oren)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ec950-33c0-11ea-aec2-2e728ce88125', 10000272, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 10000273, 'Pigtail SM SX SC/UPC (0,9mm) 1m (kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 10000274, 'Pigtail SM SX SC/UPC (0,9mm) 1m Oren', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 10000275, 'Pigtail SM SX SC/UPC (0,9mm) 2m (oren)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ece50-33c0-11ea-aec2-2e728ce88125', 10000276, 'Pigtail SM SX SC/UPC (2,0mm) 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ed134-33c0-11ea-aec2-2e728ce88125', 10000277, 'Pigtail SM SX SC/UPC (3,0mm) 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ed27e-33c0-11ea-aec2-2e728ce88125', 10000278, 'Pigtail SM SX SC/UPC (3,0mm) 3,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ed3be-33c0-11ea-aec2-2e728ce88125', 60000077, 'Plastik 13,5 x 14,5', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 60000078, 'Plastik 18 x 18', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ed666-33c0-11ea-aec2-2e728ce88125', 60000079, 'Plastik 20 x 23', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 60000080, 'Plastik Clip 40 X 30', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9edb0c-33c0-11ea-aec2-2e728ce88125', 60000081, 'Plastik Clip 55 X 50', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9edd00-33c0-11ea-aec2-2e728ce88125', 60000082, 'Polishing Film ADS 0,005 final', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ede5e-33c0-11ea-aec2-2e728ce88125', 60000083, 'Polishing Film D1 Mikron', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9edfa8-33c0-11ea-aec2-2e728ce88125', 60000084, 'Polishing Film D3 Mikron ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee142-33c0-11ea-aec2-2e728ce88125', 60000085, 'Polishing Film D30 Mikron ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee282-33c0-11ea-aec2-2e728ce88125', 60000086, 'Polishing Film D9 Mikron ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 60000087, 'Polishing Film PC 0,005 final', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 10000279, 'Precon 1 Core SC/APC 100M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee80e-33c0-11ea-aec2-2e728ce88125', 10000280, 'Precon 1 Core SC/UPC 150M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ee94e-33c0-11ea-aec2-2e728ce88125', 10000281, 'Precon 1 Core SC/UPC 200M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eea84-33c0-11ea-aec2-2e728ce88125', 10000282, 'Precon 1 Core SC/UPC 50M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eebc4-33c0-11ea-aec2-2e728ce88125', 10000283, 'Protector sleeve 60mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9eecfa-33c0-11ea-aec2-2e728ce88125', 10000284, 'Roset 2 Core GOC ( Tanpa Protector Sleeve&Adapter)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef056-33c0-11ea-aec2-2e728ce88125', 10000285, 'Roset 2 Core GOC ( Tanpa Protector Sleeve)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 10000286, 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef312-33c0-11ea-aec2-2e728ce88125', 10000287, 'Roset 4 Core ( abu abu )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef448-33c0-11ea-aec2-2e728ce88125', 10000288, 'Roset 4 Core (Tanpa Kardus )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef57e-33c0-11ea-aec2-2e728ce88125', 10000289, 'Roset 4 Core ZTE (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef6be-33c0-11ea-aec2-2e728ce88125', 10000290, 'Roset 8 Core Polos', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 10000291, 'Roset Faceplat 1 Core ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9efc36-33c0-11ea-aec2-2e728ce88125', 10000292, 'Rotary Cable stripper', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9efe70-33c0-11ea-aec2-2e728ce88125', 10000293, 'S Clamp bulat ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f000a-33c0-11ea-aec2-2e728ce88125', 10000294, 'S Clamp Jepit', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f014a-33c0-11ea-aec2-2e728ce88125', 10000295, 'S Clamp Jepit telkom ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0280-33c0-11ea-aec2-2e728ce88125', 10000296, 'SM ADSS 48 Core SPAN 100M/ADSS-SS-100M-48B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0442-33c0-11ea-aec2-2e728ce88125', 10000297, 'SM AERIAL SCPT 12 Core/GYHC8A-12B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0712-33c0-11ea-aec2-2e728ce88125', 10000298, 'SM AERIAL SCPT 24 Core/GYHC8A-24B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0866-33c0-11ea-aec2-2e728ce88125', 10000299, 'SM DUCT CABLE ARMOR 12 Core/GYFA-12B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f09b0-33c0-11ea-aec2-2e728ce88125', 10000300, 'SM DUCT CABLE ARMOR 24 Core/GYFA-24B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 10000301, 'SM DUCT CABLE ARMOR 48 Core/GYFA-48B1.3 ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 10000302, 'SM DUCT CABLE ARMOR 6 Core/GYFA-6B1.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f0d52-33c0-11ea-aec2-2e728ce88125', 10000303, 'SM DUCT SCPT 12 Core/GYA-12B1.3', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1040-33c0-11ea-aec2-2e728ce88125', 10000304, 'SM DUCT SCPT 24 Core/GYA-24B1.3', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f11b2-33c0-11ea-aec2-2e728ce88125', 10000305, 'Smart Cleaner LC (Pen Cleaner LC)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f12fc-33c0-11ea-aec2-2e728ce88125', 10000306, 'SOC LC/APC ( Belum Terkupas )', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1432-33c0-11ea-aec2-2e728ce88125', 10000307, 'SOC LC/UPC ( Belum Terkupas )', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1568-33c0-11ea-aec2-2e728ce88125', 10000308, 'SOC SC/APC ( Belum Terkupas )', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f16a8-33c0-11ea-aec2-2e728ce88125', 10000309, 'Splitter 1:4 Modular SC/UPC (No Brand)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1950-33c0-11ea-aec2-2e728ce88125', 10000310, 'Splitter 1:4 Modular SC/UPC (Ryutelco)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1aae-33c0-11ea-aec2-2e728ce88125', 10000311, 'Splitter 1:4 PLC SC/UPC (Tente)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1bee-33c0-11ea-aec2-2e728ce88125', 10000312, 'Splitter 1:8 Mini Modular SC/UPC (Ryutelco)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1d24-33c0-11ea-aec2-2e728ce88125', 10000313, 'Splitter 1:8 Modular SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1e64-33c0-11ea-aec2-2e728ce88125', 10000314, 'Splitter 1:8 Modular SC/UPC (GOC)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 10000315, 'Splitter 1:8 Modular SC/UPC YOFC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f2256-33c0-11ea-aec2-2e728ce88125', 10000316, 'Splitter 1:8 PLC SC/APC (Kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f23b4-33c0-11ea-aec2-2e728ce88125', 10000317, 'Splitter 1:8 PLC SC/UPC (Kuning) Ryutelco)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f24f4-33c0-11ea-aec2-2e728ce88125', 10000318, 'Splitter 1:8 PLC SC/UPC (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f262a-33c0-11ea-aec2-2e728ce88125', 10000319, 'Splitter 1:8 PLC SC/UPC (Rainbow)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f276a-33c0-11ea-aec2-2e728ce88125', 10000320, 'Splitter 2:8 Modular SC/APC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f28a0-33c0-11ea-aec2-2e728ce88125', 10000321, 'Splitter 2:8 Modular SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 60000088, 'Splitter 2:8 Modular Tanpa Connector ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f2db4-33c0-11ea-aec2-2e728ce88125', 10000322, 'Splitter Modular 1:4 SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f2f08-33c0-11ea-aec2-2e728ce88125', 10000323, 'Splitter Modular 1:8 SC/UPC No Brand', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3048-33c0-11ea-aec2-2e728ce88125', 10000324, 'Splitter Modular 1:8 SC/UPC SAM ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f317e-33c0-11ea-aec2-2e728ce88125', 10000325, 'Splitter Modular 2:32 SC/APC ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f32e6-33c0-11ea-aec2-2e728ce88125', 10000326, 'Splitter Modular 2:8 ( Tanpa Connector )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3610-33c0-11ea-aec2-2e728ce88125', 10000327, 'Splitter PLC 1:4 SC/APC (putih) No brand', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f38fe-33c0-11ea-aec2-2e728ce88125', 10000328, 'Splitter PLC 1:8 SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 10000329, 'Splitter PLC 1:8 Tanpa Connector ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 10000330, 'Stainless', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 10000331, 'Stick Rodding', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 10000332, 'Stopping Buckle ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f4006-33c0-11ea-aec2-2e728ce88125', 10000333, 'Stopping Buckle Gigi', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f43e4-33c0-11ea-aec2-2e728ce88125', 10000334, 'Striping Tool Crimping', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f45c4-33c0-11ea-aec2-2e728ce88125', 10000335, 'Stripper Fis Import', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f472c-33c0-11ea-aec2-2e728ce88125', 10000336, 'Stripper Fis Local', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f489e-33c0-11ea-aec2-2e728ce88125', 10000337, 'Suspensi ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f49de-33c0-11ea-aec2-2e728ce88125', 10000338, 'Tangga 4,4m AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 10000339, 'Tangga 5,2m AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 10000340, 'Testphone Chinoe', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 10000341, 'Visual Fault Locator AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f506e-33c0-11ea-aec2-2e728ce88125', 10000342, 'Visual Fault Locator JW 3105A', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f5262-33c0-11ea-aec2-2e728ce88125', 10000343, 'Wall Mount Rack ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f53ca-33c0-11ea-aec2-2e728ce88125', 10000344, 'Wire Tracker', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04'),
('5d9f550a-33c0-11ea-aec2-2e728ce88125', 10000345, 'Young Jin ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '5000.00', '10000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-01-10 16:17:04', '2020-01-10 16:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_boms`
--

CREATE TABLE `product_boms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Barang Jadi', 'eko', NULL, '2019-09-07 14:12:39', '2019-09-07 14:12:39'),
(2, 'Material Utama', 'eko', NULL, '2019-09-08 14:39:34', '2019-09-08 14:39:34'),
(3, 'Persediaan', 'eko', NULL, '2019-09-08 14:39:40', '2019-09-08 14:39:40'),
(4, 'Barang Scrap', 'eko', NULL, '2019-09-22 15:25:47', '2019-09-22 15:25:47'),
(5, 'Alat Kerja', 'eko', NULL, '2020-01-10 17:25:23', '2020-01-10 17:25:23'),
(6, 'Bahan Baku', 'eko', NULL, '2020-01-10 17:26:40', '2020-01-10 17:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `total` decimal(50,2) DEFAULT NULL,
  `status` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sub_total` decimal(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receive_purchases`
--

CREATE TABLE `receive_purchases` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receive_purchase_items`
--

CREATE TABLE `receive_purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receive_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders` decimal(50,2) NOT NULL,
  `received` decimal(50,2) NOT NULL,
  `damaged` decimal(50,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `ref_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `type`, `ref_no`, `created_at`, `updated_at`) VALUES
(1, 2, 'ADJ/FTI/0001/I/2020', '2020-01-18 02:53:24', '2020-01-18 02:53:24'),
(2, 2, 'ADJ/FTI/0002/I/2020', '2020-01-18 02:53:37', '2020-01-18 02:53:37'),
(3, 7, 'PR/FTI/0001/FTI-S-0000001/I/2020', '2020-01-18 02:54:54', '2020-01-18 02:54:54'),
(4, 8, 'PO/FTI/0001/FTI-S-0000001/I/2020', '2020-01-18 02:55:01', '2020-01-18 02:55:01'),
(5, 11, 'RP/0001/FTI/I/2020', '2020-01-18 02:55:32', '2020-01-18 02:55:32'),
(6, 10, 'FIN/FTI/0001/FTI-S-0000001/I/2020', '2020-01-18 04:54:05', '2020-01-18 04:54:05'),
(7, 10, 'FIN/FTI/0002/FTI-S-0000001/I/2020', '2020-01-18 04:55:00', '2020-01-18 04:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `retur_items`
--

CREATE TABLE `retur_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `retur_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retur_sales`
--

CREATE TABLE `retur_sales` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2019-09-04 14:23:40', '2019-09-04 14:23:40'),
(2, 'Sales', 'web', '2019-09-15 01:07:52', '2019-09-15 01:07:52'),
(3, 'PPIC', 'web', '2020-01-06 17:45:28', '2020-01-06 17:45:28'),
(4, 'Sales-FTI', 'web', '2020-01-08 13:40:45', '2020-01-08 13:40:45'),
(5, 'Pembelian', 'web', '2020-01-08 13:41:30', '2020-01-08 13:41:30'),
(6, 'Finance', 'web', '2020-01-09 13:06:46', '2020-01-09 13:06:46'),
(7, 'Produksi/Manufaktur', 'web', '2020-01-10 14:21:32', '2020-01-10 14:21:32'),
(8, 'Gudang', 'web', '2020-01-10 19:02:59', '2020-01-10 19:02:59'),
(9, 'Sysadmin', 'web', '2020-01-11 19:26:34', '2020-01-11 19:26:34'),
(10, 'Logistik', 'web', '2020-01-13 15:47:06', '2020-01-13 15:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(15, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(3, 2),
(6, 2),
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(15, 4),
(23, 4),
(24, 4),
(27, 4),
(38, 4),
(45, 4),
(46, 4),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(15, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(34, 5),
(45, 5),
(46, 5),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(15, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(48, 6),
(49, 6),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(15, 7),
(27, 7),
(38, 7),
(41, 7),
(45, 7),
(46, 7),
(48, 7),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(15, 8),
(27, 8),
(28, 8),
(31, 8),
(34, 8),
(35, 8),
(45, 8),
(46, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(15, 9),
(17, 9),
(18, 9),
(19, 9),
(20, 9),
(21, 9),
(22, 9),
(48, 9),
(49, 9),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(15, 10),
(27, 10),
(30, 10),
(34, 10),
(37, 10),
(38, 10),
(45, 10),
(46, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `quantity` decimal(50,2) DEFAULT NULL,
  `tax` decimal(50,2) DEFAULT NULL,
  `discount` decimal(50,2) DEFAULT NULL,
  `total` decimal(50,2) DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(50,2) DEFAULT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(50,2) DEFAULT NULL,
  `sale_price` decimal(50,2) DEFAULT NULL,
  `sub_total` decimal(50,2) DEFAULT NULL,
  `shipping` decimal(50,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
('00c4df56-a91b-45c6-a59c-e02577442072', 'Full Payment', '2020-01-18 04:37:05', '2020-01-18 04:37:05'),
('0fb7f4e6-e293-429d-8761-f978dc850a97', 'Complete Process', '2019-09-20 15:37:41', '2019-09-20 15:37:41'),
('106da5a6-2c71-4a08-9342-db3fd8ebf71e', 'Receipt Created', '2020-01-12 22:21:22', '2020-01-12 22:21:22'),
('2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Active', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Received', '2019-09-11 05:20:52', '2019-09-11 05:20:52'),
('3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'Invoice Created', '2019-10-02 16:05:13', '2019-10-02 16:05:13'),
('458410e7-384d-47bc-bdbe-02115adc4449', 'Approve', '2019-09-10 13:07:06', '2019-09-10 13:07:06'),
('45e139a2-a423-46ef-8901-d07b25b461a3', 'Pending Process', '2019-09-20 15:37:41', '2019-09-20 15:37:41'),
('533806c2-19dc-4b24-886f-d783a8b448b7', 'Normal Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('596ae55c-c0fb-4880-8e06-56725b21f6dc', 'Purchase Close', '2020-01-17 18:27:39', '2020-01-17 18:27:39'),
('5bc79891-e396-4792-a0f3-617ece2a00ce', 'Requested', '2019-09-20 16:14:02', '2019-09-20 16:14:02'),
('6d32841b-2606-43a5-8cf7-b77291ddbfbb', 'Sales Close', '2020-01-16 19:59:06', '2020-01-16 19:59:06'),
('72ceba35-758d-4bc2-9295-fd9f9f393c56', 'Empty Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('8083f49e-f0aa-4094-894f-f64cd2e9e4e9', 'Submit', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', 'Suspended', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('8447cd63-c7e7-4b26-81fc-d2eb3aceec97', 'Delivery Cancel', '2020-01-16 20:50:42', '2020-01-16 20:50:42'),
('ad5335ed-fc6e-42a1-a0e4-8b802acd6caa', 'Sales Suspend', '2020-01-16 19:59:06', '2020-01-16 19:59:06'),
('af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8', 'Rejected', '2019-09-10 16:28:27', '2019-09-10 16:28:27'),
('c2fdba02-e765-4ee8-8c8c-3073209ddd26', 'On Process', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('c51d7be2-7c72-41a8-93ff-03f780ece42a', 'Unpaid', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('cc040768-2b4f-48df-867f-7da18b749e61', 'Partial Payment', '2020-01-18 04:37:05', '2020-01-18 04:37:05'),
('d6c23804-3b9b-40ca-b050-146af5594f5d', 'Payment Made', '2020-01-12 22:21:22', '2020-01-12 22:21:22'),
('e9395add-e815-4374-8ed3-c0d5f4481ab8', 'Delivered', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('e9f870d8-ebe8-462e-a6b6-c03f4f5bd8eb', 'Retur', '2019-10-12 16:26:16', '2019-10-12 16:26:16'),
('eca81b8f-bfb9-48b9-8e8d-86f4517bc129', 'Payment Received', '2019-10-02 16:00:59', '2019-10-02 16:00:59'),
('f8b26119-fb0c-40ff-85c0-8fb85696f220', 'Low on Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('ffa20f52-a023-4333-b945-a46d04de961c', 'Transfered', '2019-09-22 15:04:09', '2019-09-22 15:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `uom_categories`
--

CREATE TABLE `uom_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uom_categories`
--

INSERT INTO `uom_categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Satuan', 'eko', NULL, '2019-09-07 14:12:48', '2019-09-07 14:12:48'),
(2, 'Panjang', 'eko', NULL, '2019-09-08 14:36:12', '2019-09-08 14:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `uom_values`
--

CREATE TABLE `uom_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `is_parent` tinyint(1) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uom_values`
--

INSERT INTO `uom_values` (`id`, `type_id`, `is_parent`, `parent_id`, `name`, `value`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Pieces', '1.00', 'eko', NULL, '2019-09-14 17:25:41', '2019-09-14 17:25:41'),
(2, 2, 1, NULL, 'Meter', '1.00', 'eko', NULL, '2019-09-14 17:25:52', '2019-09-14 17:25:52'),
(3, 1, NULL, 1, 'Lusin', '12.00', 'eko', NULL, '2019-09-14 17:26:00', '2019-09-14 17:26:00'),
(4, 2, NULL, 2, 'Haspel', '1000.00', 'eko', NULL, '2019-09-21 17:51:54', '2019-09-21 17:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.jpg',
  `division_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `last_login_at` datetime DEFAULT NULL,
  `last_login_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `division_id`, `status_id`, `last_login_at`, `last_login_from`, `remember_token`, `created_at`, `updated_at`) VALUES
('071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'adminwh', 'adminwh@local.com', NULL, '$2y$10$.4fkn42g.yTr.YhcnEpuCe.aBZtS/x8A6CmlLKd4p03ak.2Kdd/0G', 'user.jpg', '9f94e00b-5fdc-4dc9-8057-fd21ded69869', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-13 16:41:11', '114.124.161.44', NULL, '2020-01-08 11:18:02', '2020-01-13 16:41:11'),
('24d21373-b462-4888-8d27-d365c33fbf6a', 'manajemen', 'mgt@local.com', NULL, '$2y$10$8Whd9sXETS2AO0P6vMO4Gev5kuJv91g.2y/1wom3yahWY8PqOE.9m', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-13 16:39:03', '114.124.161.44', NULL, '2020-01-11 17:52:23', '2020-01-13 16:39:03'),
('25b76385-8f8d-4422-a62e-21c671bfcaec', 'adminlogistik', 'adminlogistik@local.com', NULL, '$2y$10$oqmTPfRgDMXw9N1U/ETpzuHLO85cL3htvDkQnM7835RLRVIN.esWa', 'user.jpg', 'ee6ae9ab-40b7-4c03-8610-de7a45377cae', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, NULL, '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
('45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'sysadmin', 'sysadmin@local.com', NULL, '$2y$10$cf/z9Nh/9iSO9SCkvgRoZ.IE4SsWysBoQUP/mNjaFQ.zDi.ToULw6', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-13 18:34:22', '114.124.161.44', NULL, '2020-01-11 19:25:36', '2020-01-13 18:34:22'),
('74718047-dc5d-4f47-87fc-8db9e4fdb527', 'adminsales1', 'adminsales1@local.com', NULL, '$2y$10$/pL1rhg.vHYiMX42fVIYde6VH/UMv4ml9mr30g548GHMI/HEroL2m', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-13 17:05:49', '101.255.5.203', NULL, '2020-01-08 13:42:19', '2020-01-13 17:05:49'),
('820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Rizky ITEOS', 'rizky@local.com', NULL, '$2y$10$b89DIndoVlEjvOv3yYlreOyBZXgeC02QlF5fkR6l9WlHrgcWMsHKW', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, NULL, '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
('994a52f5-285e-4401-95b2-166cc353bb65', 'adminfinance', 'adminfinance@local.com', NULL, '$2y$10$henHL4LyBKhui8HoC0wCKexpe8P9a4mwOzgR4rGMQGKA3YzBRC/dy', 'user.jpg', '1886a2b3-2fb7-4f40-b577-dad076a5d3b1', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-11 17:31:55', '36.77.192.232', NULL, '2020-01-09 13:07:34', '2020-01-11 17:31:55'),
('a7acf627-9108-44c0-a028-2d9bf7829108', 'adminproduksi', 'adminproduksi@local.com', NULL, '$2y$10$qwIfq0pGNYkn.Tmhp1dbh.AYcunz7fQTj9a4MkARaln5a6IkSA9kS', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-10 15:41:34', '114.124.161.169', NULL, '2020-01-08 11:21:49', '2020-01-10 15:41:34'),
('bb536994-ada3-4caa-b97b-e412dc2cc882', 'eko', 'eko@local.com', NULL, '$2y$10$z4S3JbuWaaC56f0B01OojuNtgcAzXXFCF.Bv8VFFY42mZfNsrcTCG', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-17 07:34:52', '127.0.0.1', NULL, '2019-09-04 06:31:44', '2020-01-17 00:34:52'),
('c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Mirza Rizaldy', 'mirza@local.com', NULL, '$2y$10$.PRqNO0.eckPAk032EBdC.1YHqtXS.lLmZo8l/AtN5Ymr1OmDyCEC', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-11 00:06:00', '127.0.0.1', NULL, '2020-01-06 17:46:22', '2020-01-10 17:06:00'),
('cb512697-44d9-4683-9bae-0a8e28a3252b', 'pembelian', 'pembelian@local.com', NULL, '$2y$10$nVmVLQvo9BNmFbWJ63qABuoWtHv9cGOjihoTNfp1VQUm9VdExMBO6', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 13:53:25', '180.243.44.60', NULL, '2020-01-08 13:42:59', '2020-01-08 13:53:25'),
('f68f2a18-623f-4c1a-bfde-7f029c603a17', 'adminsales2', 'adminsales2@local.com', NULL, '$2y$10$OFHrs.J9ITASIoVP5mOD5uZ0XTkKzKdpobMjf6NSV/LwA4G8vlTpS', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, NULL, '2020-01-11 18:09:34', '2020-01-11 18:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouses`
--

CREATE TABLE `user_warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_warehouses`
--

INSERT INTO `user_warehouses` (`id`, `user_id`, `warehouse_name`, `created_at`, `updated_at`) VALUES
(16, 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'Gudang Utama', NULL, NULL),
(17, 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'Gudang Produksi', NULL, NULL),
(18, 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'Gudang Pengiriman', NULL, NULL),
(19, 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'Gudang Scrap', NULL, NULL),
(20, 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'Gudang Retur', NULL, NULL),
(21, 'c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Gudang Scrap', '2020-01-06 17:46:22', '2020-01-10 17:05:01'),
(22, '071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Gudang Utama', '2020-01-08 11:18:02', '2020-01-08 11:18:02'),
(23, '071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Gudang Produksi', '2020-01-08 11:18:02', '2020-01-08 11:18:02'),
(24, '071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Gudang Scrap', '2020-01-08 11:18:02', '2020-01-08 11:18:02'),
(25, 'a7acf627-9108-44c0-a028-2d9bf7829108', 'Gudang Utama', '2020-01-08 11:21:49', '2020-01-08 11:21:49'),
(26, 'a7acf627-9108-44c0-a028-2d9bf7829108', 'Gudang Produksi', '2020-01-08 11:21:49', '2020-01-08 11:21:49'),
(27, 'a7acf627-9108-44c0-a028-2d9bf7829108', 'Gudang Scrap', '2020-01-08 11:21:49', '2020-01-08 11:21:49'),
(28, '74718047-dc5d-4f47-87fc-8db9e4fdb527', 'Gudang Utama', '2020-01-08 13:42:19', '2020-01-08 13:42:19'),
(29, '74718047-dc5d-4f47-87fc-8db9e4fdb527', 'Gudang Produksi', '2020-01-08 13:42:19', '2020-01-08 13:42:19'),
(30, '74718047-dc5d-4f47-87fc-8db9e4fdb527', 'Gudang Scrap', '2020-01-08 13:42:19', '2020-01-08 13:42:19'),
(31, 'cb512697-44d9-4683-9bae-0a8e28a3252b', 'Gudang Utama', '2020-01-08 13:42:59', '2020-01-08 13:42:59'),
(32, 'cb512697-44d9-4683-9bae-0a8e28a3252b', 'Gudang Produksi', '2020-01-08 13:42:59', '2020-01-08 13:42:59'),
(33, 'cb512697-44d9-4683-9bae-0a8e28a3252b', 'Gudang Scrap', '2020-01-08 13:42:59', '2020-01-08 13:42:59'),
(34, '994a52f5-285e-4401-95b2-166cc353bb65', 'Gudang Utama', '2020-01-09 13:07:34', '2020-01-09 13:07:34'),
(35, '994a52f5-285e-4401-95b2-166cc353bb65', 'Gudang Produksi', '2020-01-09 13:07:34', '2020-01-09 13:07:34'),
(36, '994a52f5-285e-4401-95b2-166cc353bb65', 'Gudang Scrap', '2020-01-09 13:07:34', '2020-01-09 13:07:34'),
(37, 'c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Gudang Utama', '2020-01-10 17:05:41', '2020-01-10 17:05:41'),
(38, 'c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Gudang Produksi', '2020-01-10 17:05:41', '2020-01-10 17:05:41'),
(39, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Utama', '2020-01-11 17:52:23', '2020-01-11 17:52:23'),
(40, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Manufaktur', '2020-01-11 17:52:23', '2020-01-11 17:52:23'),
(41, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Scrap', '2020-01-11 17:52:23', '2020-01-11 17:52:23'),
(42, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Utama', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(43, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Manufaktur', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(44, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Scrap', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(45, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Utama', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(46, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Manufaktur', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(47, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Scrap', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(48, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Produksi', '2020-01-11 19:26:54', '2020-01-11 19:26:54'),
(49, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Utama', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(50, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Pengiriman', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(51, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Manufaktur', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(52, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Scrap', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(53, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Retur', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(54, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Utama', '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
(55, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Manufaktur', '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
(56, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Scrap', '2020-01-13 15:46:00', '2020-01-13 15:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('021c1e1f-6ed3-4121-91cb-ed3fc5f11f95', 'Gudang Retur', 'eko', NULL, '2020-01-05 19:41:22', '2020-01-05 19:41:22'),
('34437a64-ca03-47ff-be0c-63da5814484e', 'Gudang Pengiriman', 'eko', NULL, '2019-09-12 15:22:50', '2019-09-12 15:22:50'),
('afdcd530-bb5e-462b-8dda-1371b9195903', 'Gudang Utama', 'eko', NULL, '2019-09-05 15:47:09', '2019-09-05 15:47:09'),
('c40f889e-6fa3-43f2-bc2a-5fdded5aafed', 'Gudang Scrap', 'eko', NULL, '2019-09-15 17:02:27', '2019-09-15 17:02:27'),
('ce8b061c-b1bb-4627-b80f-6a42a364109b', 'Gudang Produksi', 'eko', NULL, '2019-09-08 14:36:03', '2019-09-08 14:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_items`
--
ALTER TABLE `delivery_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_items_delivery_id_foreign` (`delivery_id`);

--
-- Indexes for table `delivery_services`
--
ALTER TABLE `delivery_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_items`
--
ALTER TABLE `internal_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `internal_items_mutasi_id_foreign` (`mutasi_id`);

--
-- Indexes for table `internal_transfers`
--
ALTER TABLE `internal_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_movements_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacture_items_manufacture_id_foreign` (`manufacture_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_items_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_boms`
--
ALTER TABLE `product_boms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_boms_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `receive_purchases`
--
ALTER TABLE `receive_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_purchase_items`
--
ALTER TABLE `receive_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receive_purchase_items_receive_id_foreign` (`receive_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retur_items`
--
ALTER TABLE `retur_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retur_items_retur_id_foreign` (`retur_id`);

--
-- Indexes for table `retur_sales`
--
ALTER TABLE `retur_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sales_id_foreign` (`sales_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uom_categories`
--
ALTER TABLE `uom_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uom_values`
--
ALTER TABLE `uom_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_warehouses_user_id_foreign` (`user_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_items`
--
ALTER TABLE `delivery_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_services`
--
ALTER TABLE `delivery_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `internal_items`
--
ALTER TABLE `internal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internal_transfers`
--
ALTER TABLE `internal_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_boms`
--
ALTER TABLE `product_boms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receive_purchase_items`
--
ALTER TABLE `receive_purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `retur_items`
--
ALTER TABLE `retur_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uom_categories`
--
ALTER TABLE `uom_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uom_values`
--
ALTER TABLE `uom_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_items`
--
ALTER TABLE `delivery_items`
  ADD CONSTRAINT `delivery_items_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `internal_items`
--
ALTER TABLE `internal_items`
  ADD CONSTRAINT `internal_items_mutasi_id_foreign` FOREIGN KEY (`mutasi_id`) REFERENCES `internal_transfers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD CONSTRAINT `inventory_movements_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  ADD CONSTRAINT `manufacture_items_manufacture_id_foreign` FOREIGN KEY (`manufacture_id`) REFERENCES `manufactures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD CONSTRAINT `payment_items_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_boms`
--
ALTER TABLE `product_boms`
  ADD CONSTRAINT `product_boms_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receive_purchase_items`
--
ALTER TABLE `receive_purchase_items`
  ADD CONSTRAINT `receive_purchase_items_receive_id_foreign` FOREIGN KEY (`receive_id`) REFERENCES `receive_purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retur_items`
--
ALTER TABLE `retur_items`
  ADD CONSTRAINT `retur_items_retur_id_foreign` FOREIGN KEY (`retur_id`) REFERENCES `retur_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD CONSTRAINT `user_warehouses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
