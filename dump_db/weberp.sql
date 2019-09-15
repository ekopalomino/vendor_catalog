-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 06:34 PM
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
-- Database: `weberp`
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
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_terms` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `ref_id`, `type_id`, `name`, `company`, `phone`, `mobile`, `email`, `billing_address`, `shipping_address`, `payment_method`, `payment_terms`, `tax`, `tax_no`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
('39de8926-28ce-4e94-934a-c7525bfc64fa', 'D', 2, 'DD', 'ddd', '(213) 387 7041', '1222132', 'dd@local.com', 'Test', 'Test', 1, 1, 0, '2222', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-07 14:13:53', '2019-09-07 14:13:53'),
('68827de2-8fae-4511-b3f8-f8ca37ca1437', 'MRZ', 1, 'Mirza', 'Online', '3252', '5325', 'mirza@dev.com', 'Bekasi', 'Bekasi', 1, 1, 0, NULL, 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-06 16:02:57', '2019-09-06 16:02:57'),
('cb280286-818a-45af-891c-8deee3e4b3cb', 'CPT', 1, 'Company Test', 'Company Test', '324524', '45', 'company@test.com', 'Jakarta', 'Jakarta', 1, 1, 0, NULL, 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-06 16:21:31', '2019-09-06 16:21:31'),
('d66158e7-ec83-4758-a0e1-c87a614ad2d1', 'JD', 1, 'John Doe', 'Online', '3', '4', 'john@local.com', 'Jakarta', 'Jakarta', 1, 1, 0, NULL, 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-06 15:57:02', '2019-09-06 15:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'c2fdba02-e765-4ee8-8c8c-3073209ddd26',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_ref`, `sales_ref`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('02e8a277-6d2d-4f1e-8214-7b8778f1b290', 'DO/0001/FTI/IX/2019', 'SO/0001/MRZ/IX/2019', 'e9395add-e815-4374-8ed3-c0d5f4481ab8', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-11 15:58:31', '2019-09-11 16:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('413ec199-f1dd-42a7-a346-67a74fb807b0', 'IT', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-04 16:46:23', '2019-09-04 16:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `internal_transfers`
--

CREATE TABLE `internal_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internal_transfers`
--

INSERT INTO `internal_transfers` (`id`, `product_id`, `from_id`, `to_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '100.00', '2019-09-11 09:36:35', '2019-09-11 09:36:35'),
(2, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', '2019-09-11 09:41:06', '2019-09-11 09:41:06'),
(3, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', '2019-09-11 09:41:43', '2019-09-11 09:41:43'),
(4, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', '2019-09-11 09:41:54', '2019-09-11 09:41:54'),
(5, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', '2019-09-11 09:42:52', '2019-09-11 09:42:52'),
(6, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '67.00', '2019-09-11 09:51:09', '2019-09-11 09:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_stock` decimal(10,2) NOT NULL,
  `opening_amount` decimal(50,2) NOT NULL,
  `closing_amount` decimal(50,2) NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `warehouse_id`, `min_stock`, `opening_amount`, `closing_amount`, `status_id`, `created_at`, `updated_at`) VALUES
(7, 'a447919d-a239-4211-841d-9b9fd04cc024', 'afdcd530-bb5e-462b-8dda-1371b9195903', '25.00', '500.00', '475.00', '533806c2-19dc-4b24-886f-d783a8b448b7', '2019-09-10 06:50:22', '2019-09-10 07:59:59'),
(8, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', '25.00', '500.00', '245.00', '533806c2-19dc-4b24-886f-d783a8b448b7', '2019-09-10 06:50:41', '2019-09-10 12:49:58'),
(9, '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', '567.00', '245.00', '533806c2-19dc-4b24-886f-d783a8b448b7', '2019-09-11 09:51:10', '2019-09-11 09:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) NOT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in` decimal(10,2) DEFAULT NULL,
  `out` decimal(10,2) DEFAULT NULL,
  `rem` decimal(10,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_movements`
--

INSERT INTO `inventory_movements` (`id`, `type`, `reference_id`, `product_id`, `warehouse_id`, `in`, `out`, `rem`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADJ/IX/2019', 'a447919d-a239-4211-841d-9b9fd04cc024', 'afdcd530-bb5e-462b-8dda-1371b9195903', '500.00', '0.00', '500.00', NULL, '2019-09-10 06:50:53', '2019-09-10 06:50:53'),
(2, 1, 'ADJ/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', '500.00', '0.00', '500.00', NULL, '2019-09-10 06:50:59', '2019-09-10 06:50:59'),
(25, 4, 'SO/0001/CPT/IX/2019', 'a447919d-a239-4211-841d-9b9fd04cc024', NULL, '500.00', '25.00', '475.00', NULL, '2019-09-10 07:59:59', '2019-09-10 07:59:59'),
(26, 4, 'SO/0001/CPT/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', NULL, '500.00', '230.00', '270.00', NULL, '2019-09-10 07:59:59', '2019-09-10 07:59:59'),
(27, 4, 'SO/0001/MRZ/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', NULL, '270.00', '25.00', '245.00', NULL, '2019-09-10 12:49:58', '2019-09-10 12:49:58'),
(30, 3, 'PO/0002//IX/2019', 'a447919d-a239-4211-841d-9b9fd04cc024', NULL, '300.00', NULL, '775.00', NULL, '2019-09-11 05:37:12', '2019-09-11 05:37:12'),
(37, 4, 'IT/0002/1/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '100.00', '145.00', NULL, '2019-09-11 09:36:35', '2019-09-11 09:36:35'),
(38, 4, 'IT/0002/1/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '100.00', NULL, '245.00', NULL, '2019-09-11 09:36:35', '2019-09-11 09:36:35'),
(39, 4, 'IT/0003/2/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '25.00', '120.00', NULL, '2019-09-11 09:41:06', '2019-09-11 09:41:06'),
(40, 4, 'IT/0003/2/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', NULL, '145.00', NULL, '2019-09-11 09:41:06', '2019-09-11 09:41:06'),
(41, 4, 'IT/0004/3/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '25.00', '95.00', NULL, '2019-09-11 09:41:43', '2019-09-11 09:41:43'),
(42, 4, 'IT/0004/3/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', NULL, '120.00', NULL, '2019-09-11 09:41:43', '2019-09-11 09:41:43'),
(43, 4, 'IT/0005/4/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '25.00', '70.00', NULL, '2019-09-11 09:41:54', '2019-09-11 09:41:54'),
(44, 4, 'IT/0005/4/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', NULL, '95.00', NULL, '2019-09-11 09:41:54', '2019-09-11 09:41:54'),
(45, 4, 'IT/0006/5/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '25.00', '45.00', NULL, '2019-09-11 09:42:52', '2019-09-11 09:42:52'),
(46, 4, 'IT/0006/5/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '25.00', NULL, '70.00', NULL, '2019-09-11 09:42:52', '2019-09-11 09:42:52'),
(47, 4, 'IT/0007/6/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'afdcd530-bb5e-462b-8dda-1371b9195903', NULL, '67.00', '-22.00', NULL, '2019-09-11 09:51:09', '2019-09-11 09:51:09'),
(48, 4, 'IT/0007/6/IX/2019', '0095ee65-875e-453a-83bb-1cb6738e33c9', 'ce8b061c-b1bb-4627-b80f-6a42a364109b', '67.00', NULL, '45.00', NULL, '2019-09-11 09:51:10', '2019-09-11 09:51:10');

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

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Metode Pembayaran Cash on Delivery Berhasil Disimpan', 'http://fibertekno.local/apps/settings/payment-methods/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:07:12', '2019-09-05 16:07:12'),
(2, 'Metode Pembayaran Cash on Delivery Berhasil Dihapus', 'http://fibertekno.local/apps/settings/payment-methods/delete/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:08:02', '2019-09-05 16:08:02'),
(3, 'Pembayaran Direct Berhasil Disimpan', 'http://fibertekno.local/apps/settings/payment-terms/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:08:16', '2019-09-05 16:08:16'),
(4, 'Pembayaran Direct Berhasil Dihapus', 'http://fibertekno.local/apps/settings/payment-terms/delete/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:08:23', '2019-09-05 16:08:23'),
(5, 'Kategori UOM Pieces Berhasil Disimpan', 'http://fibertekno.local/apps/settings/uom-category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:23:28', '2019-09-05 16:23:28'),
(6, 'Kategori UOM Pieces Berhasil Dihapus', 'http://fibertekno.local/apps/settings/uom-category/delete/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-05 16:23:33', '2019-09-05 16:23:33'),
(7, 'Hak Akses Administrator berhasil diubah', 'http://fibertekno.local/apps/users/roles/update/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 01:24:28', '2019-09-06 01:24:28'),
(8, 'Metode Pembayaran Cash Berhasil Disimpan', 'http://fibertekno.local/apps/settings/payment-methods/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 15:54:31', '2019-09-06 15:54:31'),
(9, 'Pembayaran Cash Berhasil Disimpan', 'http://fibertekno.local/apps/settings/payment-terms/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 15:54:44', '2019-09-06 15:54:44'),
(10, 'Customer John Doe Berhasil Disimpan', 'http://fibertekno.local/apps/customers/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 15:57:02', '2019-09-06 15:57:02'),
(11, 'Customer Mirza Berhasil Disimpan', 'http://fibertekno.local/apps/customers/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 16:02:57', '2019-09-06 16:02:57'),
(12, 'Customer Company Test Berhasil Disimpan', 'http://fibertekno.local/apps/customers/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 16:21:31', '2019-09-06 16:21:31'),
(13, 'Kategori Produk Barang Jadi Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:41:43', '2019-09-07 01:41:43'),
(14, 'Kategori Produk Barang Jadi Berhasil Dihapus', 'http://fibertekno.local/apps/products/categories/delete/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:43:02', '2019-09-07 01:43:02'),
(15, 'Kategori Produk Barang Jadi Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:43:15', '2019-09-07 01:43:15'),
(16, 'Kategori Produk Barang Jadi Berhasil Dihapus', 'http://fibertekno.local/apps/products/categories/delete/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:43:21', '2019-09-07 01:43:21'),
(17, 'Kategori Produk Barang Jadi Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:44:20', '2019-09-07 01:44:20'),
(18, 'Kategori Produk Barang Jadi Berhasil Dihapus', 'http://fibertekno.local/apps/products/categories/delete/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:44:27', '2019-09-07 01:44:27'),
(19, 'Kategori Produk Barang Jadi Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:44:54', '2019-09-07 01:44:54'),
(20, 'Kategori Produk Barang Jadi Berhasil Dihapus', 'http://fibertekno.local/apps/products/categories/delete/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 01:44:58', '2019-09-07 01:44:58'),
(21, 'Kategori Produk Barang Jadi Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 14:12:39', '2019-09-07 14:12:39'),
(22, 'Kategori UOM Satuan Berhasil Disimpan', 'http://fibertekno.local/apps/settings/uom-category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 14:12:48', '2019-09-07 14:12:48'),
(23, 'UOM Pieces Berhasil Disimpan', 'http://fibertekno.local/apps/settings/uom-value/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 14:12:57', '2019-09-07 14:12:57'),
(24, 'Supplier DD Berhasil Disimpan', 'http://fibertekno.local/apps/suppliers/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 14:13:53', '2019-09-07 14:13:53'),
(25, 'Produk Kabel Tembaga Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/9b81e30f-b1ae-4585-984b-efcd7983152f', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-07 14:38:11', '2019-09-07 14:38:11'),
(26, 'Gudang Gudang Manufaktur Berhasil Disimpan', 'http://fibertekno.local/apps/settings/warehouse/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:36:03', '2019-09-08 14:36:03'),
(27, 'Kategori UOM Panjang Berhasil Disimpan', 'http://fibertekno.local/apps/settings/uom-category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:36:12', '2019-09-08 14:36:12'),
(28, 'UOM Meter Berhasil Disimpan', 'http://fibertekno.local/apps/settings/uom-value/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:36:22', '2019-09-08 14:36:22'),
(29, 'Kategori Produk Material Utama Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:39:34', '2019-09-08 14:39:34'),
(30, 'Kategori Produk Persediaan Berhasil disimpan', 'http://fibertekno.local/apps/products/categories/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:39:40', '2019-09-08 14:39:40'),
(31, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:41:42', '2019-09-08 14:41:42'),
(32, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-08 14:46:32', '2019-09-08 14:46:32'),
(33, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/bc4ef546-547c-40b5-b6b4-5339bcf2ce43', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-09 14:11:10', '2019-09-09 14:11:10'),
(34, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-09 14:24:39', '2019-09-09 14:24:39'),
(35, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/3b486eda-84f2-4072-9c21-dda7c4278732', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-09 14:35:33', '2019-09-09 14:35:33'),
(36, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-09 14:37:04', '2019-09-09 14:37:04'),
(37, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/ff9336d6-913f-4c6f-a842-d41c8e99eb6e', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:36:52', '2019-09-10 05:36:52'),
(38, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/8b2427e1-99e5-4147-8276-d37d8662df21', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:39:38', '2019-09-10 05:39:38'),
(39, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/3ac75a25-c019-4016-90a4-d4c97b8801ec', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:40:44', '2019-09-10 05:40:44'),
(40, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:41:00', '2019-09-10 05:41:00'),
(41, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/7e0b4283-fb70-4e5c-9fe1-49cee0f042e0', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:47:50', '2019-09-10 05:47:50'),
(42, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:48:57', '2019-09-10 05:48:57'),
(43, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/f49699b0-3195-4ccb-b786-b273944f2058', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:52:04', '2019-09-10 05:52:04'),
(44, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:52:18', '2019-09-10 05:52:18'),
(45, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/62a2a56b-0039-4828-a800-3284a8996021', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:57:41', '2019-09-10 05:57:41'),
(46, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 05:57:58', '2019-09-10 05:57:58'),
(47, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/161dc698-86dc-43e2-b9eb-2574f2d840b8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 06:07:03', '2019-09-10 06:07:03'),
(48, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 06:17:50', '2019-09-10 06:17:50'),
(49, 'Produk Konektor SMFC AMC (2.00mm) Berhasil Dihapus', 'http://fibertekno.local/apps/products/delete/75814082-143c-4815-a44b-053b08b18a55', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 06:50:08', '2019-09-10 06:50:08'),
(50, 'Produk Konektor SMFC AMC (2.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 06:50:22', '2019-09-10 06:50:22'),
(51, 'Produk Konektor SMFC AMC (1.00mm) berhasil disimpan', 'http://fibertekno.local/apps/products/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-10 06:50:41', '2019-09-10 06:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(50,2) NOT NULL,
  `deadline` date NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `item_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(50,2) NOT NULL,
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
(16, '2019_09_07_211518_create_inventories_table', 8),
(17, '2019_09_07_211754_create_inventory_movements_table', 8),
(18, '2019_09_07_212548_create_product_boms_table', 9),
(19, '2019_09_08_215819_create_internal_transfers_table', 10),
(20, '2019_09_09_223056_create_sales_table', 11),
(21, '2019_09_09_232534_create_sale_items_table', 11),
(22, '2019_09_10_200022_create_purchases_table', 12),
(23, '2019_09_10_200121_create_purchase_items_table', 12),
(24, '2019_09_11_223042_create_deliveries_table', 13),
(25, '2019_09_11_232813_create_manufactures_table', 14),
(26, '2019_09_11_233120_create_manufacture_items_table', 14);

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
(1, 'Erp\\Models\\User', 'bb536994-ada3-4caa-b97b-e412dc2cc882');

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Transfer', 'bb536994-ada3-4caa-b97b-e412dc2cc882', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-09-06 15:54:31', '2019-09-06 15:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-06 15:54:44', '2019-09-06 15:54:44');

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
(16, 'Can Accept Request', 'web', '2019-09-10 12:56:37', '2019-09-10 12:56:37');

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
  `min_stock` decimal(50,2) NOT NULL,
  `base_price` decimal(50,2) NOT NULL,
  `sale_price` decimal(50,2) NOT NULL,
  `active` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('0095ee65-875e-453a-83bb-1cb6738e33c9', 100002, 'Konektor SMFC AMC (1.00mm)', 2, 1, NULL, '39de8926-28ce-4e94-934a-c7525bfc64fa', '25.00', '500.00', '1000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 06:50:41', '2019-09-10 06:50:41'),
('a447919d-a239-4211-841d-9b9fd04cc024', 100001, 'Konektor SMFC AMC (2.00mm)', 2, 1, NULL, '39de8926-28ce-4e94-934a-c7525bfc64fa', '25.00', '500.00', '1000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 06:50:22', '2019-09-10 06:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_boms`
--

CREATE TABLE `product_boms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Barang Jadi', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-07 14:12:39', '2019-09-07 14:12:39'),
(2, 'Material Utama', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:39:34', '2019-09-08 14:39:34'),
(3, 'Persediaan', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:39:40', '2019-09-08 14:39:40');

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
  `total` decimal(10,2) DEFAULT NULL,
  `status` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `order_ref`, `supplier_id`, `supplier_code`, `billing_address`, `shipping_address`, `delivery_date`, `quantity`, `total`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('64e980db-c4ac-46e5-8c93-d7c98eda8fa3', 'PR/0001/D/IX/2019', '39de8926-28ce-4e94-934a-c7525bfc64fa', 'D', 'Test', 'Test', '2019-09-27', NULL, NULL, '8083f49e-f0aa-4094-894f-f64cd2e9e4e9', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 14:51:56', '2019-09-10 14:51:56'),
('ac15c9c3-60d0-464d-a598-77d977b1d242', 'PO/0002//IX/2019', '39de8926-28ce-4e94-934a-c7525bfc64fa', 'D', 'Test', 'Test', '2019-09-27', '300.00', '150000.00', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 14:54:15', '2019-09-11 05:37:12'),
('f4931079-c883-45da-a3cd-78b33d0acf9c', 'PR/0003/D/IX/2019', '39de8926-28ce-4e94-934a-c7525bfc64fa', 'D', 'Test', 'Test', '2019-09-26', '480.00', '240000.00', 'af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 15:11:23', '2019-09-10 16:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `quantity`, `discount`, `purchase_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, '64e980db-c4ac-46e5-8c93-d7c98eda8fa3', 'a447919d-a239-4211-841d-9b9fd04cc024', '25.00', NULL, '500.00', '12500.00', '2019-09-10 14:51:56', '2019-09-10 14:51:56'),
(2, 'ac15c9c3-60d0-464d-a598-77d977b1d242', 'a447919d-a239-4211-841d-9b9fd04cc024', '300.00', NULL, '500.00', '150000.00', '2019-09-10 14:54:15', '2019-09-10 14:54:15'),
(3, 'f4931079-c883-45da-a3cd-78b33d0acf9c', '0095ee65-875e-453a-83bb-1cb6738e33c9', '230.00', NULL, '500.00', '115000.00', '2019-09-10 15:11:23', '2019-09-10 15:11:23'),
(4, 'f4931079-c883-45da-a3cd-78b33d0acf9c', 'a447919d-a239-4211-841d-9b9fd04cc024', '250.00', NULL, '500.00', '125000.00', '2019-09-10 15:11:24', '2019-09-10 15:11:24');

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
(1, 'Administrator', 'web', '2019-09-04 14:23:40', '2019-09-04 14:23:40');

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
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1);

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
  `quantity` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_ref`, `client_id`, `client_code`, `billing_address`, `shipping_address`, `delivery_date`, `quantity`, `total`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('fcf08981-b366-439b-a2aa-04fe5b44f185', 'SO/0001/MRZ/IX/2019', '68827de2-8fae-4511-b3f8-f8ca37ca1437', 'MRZ', 'Bekasi', 'Bekasi', '2019-09-19', '25.00', '125000.00', 'e9395add-e815-4374-8ed3-c0d5f4481ab8', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-10 12:49:58', '2019-09-11 16:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sales_id`, `product_id`, `quantity`, `discount`, `sale_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 'fcf08981-b366-439b-a2aa-04fe5b44f185', '0095ee65-875e-453a-83bb-1cb6738e33c9', '25.00', NULL, '5000.00', '125000.00', '2019-09-10 12:49:58', '2019-09-10 12:49:58');

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
('2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Active', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Received', '2019-09-11 05:20:52', '2019-09-11 05:20:52'),
('458410e7-384d-47bc-bdbe-02115adc4449', 'Approve', '2019-09-10 13:07:06', '2019-09-10 13:07:06'),
('533806c2-19dc-4b24-886f-d783a8b448b7', 'Normal Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('72ceba35-758d-4bc2-9295-fd9f9f393c56', 'Empty Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('8083f49e-f0aa-4094-894f-f64cd2e9e4e9', 'Submit', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', 'Suspended', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8', 'Rejected', '2019-09-10 16:28:27', '2019-09-10 16:28:27'),
('c2fdba02-e765-4ee8-8c8c-3073209ddd26', 'On Process', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('c51d7be2-7c72-41a8-93ff-03f780ece42a', 'Unpaid', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('e9395add-e815-4374-8ed3-c0d5f4481ab8', 'Delivered', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('f8b26119-fb0c-40ff-85c0-8fb85696f220', 'Low on Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `uom_categories`
--

CREATE TABLE `uom_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uom_categories`
--

INSERT INTO `uom_categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Satuan', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-07 14:12:48', '2019-09-07 14:12:48'),
(2, 'Panjang', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:36:12', '2019-09-08 14:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `uom_values`
--

CREATE TABLE `uom_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uom_values`
--

INSERT INTO `uom_values` (`id`, `type_id`, `name`, `value`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pieces', '1.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-07 14:12:57', '2019-09-07 14:12:57'),
(2, 2, 'Meter', '1.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:36:22', '2019-09-08 14:36:22');

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
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `division_id`, `warehouse_id`, `status_id`, `last_login_at`, `last_login_from`, `remember_token`, `created_at`, `updated_at`) VALUES
('bb536994-ada3-4caa-b97b-e412dc2cc882', 'eko', 'eko@local.com', NULL, '$2y$10$z4S3JbuWaaC56f0B01OojuNtgcAzXXFCF.Bv8VFFY42mZfNsrcTCG', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', 'afdcd530-bb5e-462b-8dda-1371b9195903', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-11 21:41:00', '127.0.0.1', NULL, '2019-09-04 06:31:44', '2019-09-11 14:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('afdcd530-bb5e-462b-8dda-1371b9195903', 'Gudang Utama', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-05 15:47:09', '2019-09-05 15:47:09'),
('ce8b061c-b1bb-4627-b80f-6a42a364109b', 'Gudang Manufaktur', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:36:03', '2019-09-08 14:36:03');

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
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_transfers`
--
ALTER TABLE `internal_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_movements_product_id_foreign` (`product_id`);

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
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `internal_transfers`
--
ALTER TABLE `internal_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_boms`
--
ALTER TABLE `product_boms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uom_categories`
--
ALTER TABLE `uom_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uom_values`
--
ALTER TABLE `uom_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD CONSTRAINT `inventory_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
