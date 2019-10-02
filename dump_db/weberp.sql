-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 04:25 AM
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
('410eb4e9-51ed-48ab-9e5d-3113ab1fdde4', 'FTI', 2, 'Fiber Tekno', 'Fiber Tekno', '2342', '241221', 'fiber@local.com', 'Jakarta', 'Jakarta', 1, 1, 0, NULL, 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-09-30 14:56:42', '2019-09-30 14:56:42'),
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
-- Table structure for table `internal_items`
--

CREATE TABLE `internal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mutasi_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `from_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ffa20f52-a023-4333-b945-a46d04de961c',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stock` decimal(10,2) DEFAULT NULL,
  `opening_amount` decimal(50,2) DEFAULT NULL,
  `closing_amount` decimal(50,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` smallint(2) NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_received` date DEFAULT NULL,
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

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'User Mirza Rizaldy Berhasil disimpan', 'http://fibertekno.local/apps/users/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'bb536994-ada3-4caa-b97b-e412dc2cc882', '2019-10-02 02:25:27', '2019-10-02 02:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `warehouse_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_production` datetime DEFAULT NULL,
  `end_production` datetime DEFAULT NULL,
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
  `qty` decimal(50,2) NOT NULL,
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
(18, '2019_09_07_212548_create_product_boms_table', 9),
(19, '2019_09_08_215819_create_internal_transfers_table', 10),
(20, '2019_09_09_223056_create_sales_table', 11),
(21, '2019_09_09_232534_create_sale_items_table', 11),
(22, '2019_09_10_200022_create_purchases_table', 12),
(23, '2019_09_10_200121_create_purchase_items_table', 12),
(24, '2019_09_11_223042_create_deliveries_table', 13),
(27, '2019_09_07_211518_create_inventories_table', 15),
(28, '2019_09_07_211754_create_inventory_movements_table', 15),
(29, '2019_09_19_231526_create_manufacture_calculates_table', 16),
(30, '2019_09_22_225704_create_internal_items_table', 17),
(31, '2019_09_11_232813_create_manufactures_table', 18),
(32, '2019_09_11_233120_create_manufacture_items_table', 18),
(37, '2019_09_24_102135_create_work_items_table', 19),
(38, '2019_09_30_225904_create_invoices_table', 20);

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
(2, 'Erp\\Models\\User', 'ba757ac6-d4a7-4f8f-8698-8c14c60b8a63'),
(1, 'Erp\\Models\\User', 'bb536994-ada3-4caa-b97b-e412dc2cc882'),
(1, 'Erp\\Models\\User', 'db3562e3-78ac-494f-81c4-794eba0c59eb');

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
  `min_stock` decimal(50,2) DEFAULT NULL,
  `base_price` decimal(50,2) NOT NULL,
  `sale_price` decimal(50,2) NOT NULL,
  `active` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2b643e21-a94c-4713-93f1-f1cbde6ad633',
  `is_manufacture` tinyint(1) DEFAULT NULL,
  `is_sale` tinyint(1) DEFAULT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'Persediaan', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-08 14:39:40', '2019-09-08 14:39:40'),
(4, 'Barang Scrap', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-22 15:25:47', '2019-09-22 15:25:47');

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
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'Sales', 'web', '2019-09-15 01:07:52', '2019-09-15 01:07:52');

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
(15, 1),
(3, 2),
(6, 2),
(9, 2),
(10, 2),
(11, 2),
(13, 2);

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
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `quantity` decimal(10,2) DEFAULT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
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
('0fb7f4e6-e293-429d-8761-f978dc850a97', 'Complete Process', '2019-09-20 15:37:41', '2019-09-20 15:37:41'),
('2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Active', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Received', '2019-09-11 05:20:52', '2019-09-11 05:20:52'),
('458410e7-384d-47bc-bdbe-02115adc4449', 'Approve', '2019-09-10 13:07:06', '2019-09-10 13:07:06'),
('45e139a2-a423-46ef-8901-d07b25b461a3', 'Pending Process', '2019-09-20 15:37:41', '2019-09-20 15:37:41'),
('533806c2-19dc-4b24-886f-d783a8b448b7', 'Normal Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('5bc79891-e396-4792-a0f3-617ece2a00ce', 'Requested', '2019-09-20 16:14:02', '2019-09-20 16:14:02'),
('72ceba35-758d-4bc2-9295-fd9f9f393c56', 'Empty Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('8083f49e-f0aa-4094-894f-f64cd2e9e4e9', 'Submit', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', 'Suspended', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8', 'Rejected', '2019-09-10 16:28:27', '2019-09-10 16:28:27'),
('c2fdba02-e765-4ee8-8c8c-3073209ddd26', 'On Process', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('c51d7be2-7c72-41a8-93ff-03f780ece42a', 'Unpaid', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('e9395add-e815-4374-8ed3-c0d5f4481ab8', 'Delivered', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('f8b26119-fb0c-40ff-85c0-8fb85696f220', 'Low on Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('ffa20f52-a023-4333-b945-a46d04de961c', 'Transfered', '2019-09-22 15:04:09', '2019-09-22 15:04:09');

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
  `is_parent` tinyint(1) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
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

INSERT INTO `uom_values` (`id`, `type_id`, `is_parent`, `parent_id`, `name`, `value`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Pieces', '1.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-14 17:25:41', '2019-09-14 17:25:41'),
(2, 2, 1, NULL, 'Meter', '1.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-14 17:25:52', '2019-09-14 17:25:52'),
(3, 1, NULL, 1, 'Lusin', '12.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-14 17:26:00', '2019-09-14 17:26:00'),
(4, 2, NULL, 2, 'Haspel', '1000.00', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-21 17:51:54', '2019-09-21 17:51:54');

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
('ba757ac6-d4a7-4f8f-8698-8c14c60b8a63', 'Heru', 'heru@local.com', NULL, '$2y$10$GLVtZtxqM11RN5X41lHfU.MX04IX7tmXCAhZ2l7ozrxgrQNCR6ESy', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', 'afdcd530-bb5e-462b-8dda-1371b9195903', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2019-09-15 08:08:35', '127.0.0.1', NULL, '2019-09-15 01:08:21', '2019-09-30 14:49:57'),
('bb536994-ada3-4caa-b97b-e412dc2cc882', 'eko', 'eko@local.com', NULL, '$2y$10$z4S3JbuWaaC56f0B01OojuNtgcAzXXFCF.Bv8VFFY42mZfNsrcTCG', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', 'afdcd530-bb5e-462b-8dda-1371b9195903', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2019-10-02 09:24:50', '127.0.0.1', NULL, '2019-09-04 06:31:44', '2019-10-02 02:24:50'),
('db3562e3-78ac-494f-81c4-794eba0c59eb', 'Mirza Rizaldy', 'mirza@local.com', NULL, '$2y$10$OIUggRX9R.7CpymMUeyCXenX3uGPSmYm1aivxJt39St0kkNxowScC', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', 'afdcd530-bb5e-462b-8dda-1371b9195903', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, NULL, '2019-10-02 02:25:27', '2019-10-02 02:25:27');

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
('34437a64-ca03-47ff-be0c-63da5814484e', 'Gudang Pengiriman', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-12 15:22:50', '2019-09-12 15:22:50'),
('afdcd530-bb5e-462b-8dda-1371b9195903', 'Gudang Utama', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-05 15:47:09', '2019-09-05 15:47:09'),
('c40f889e-6fa3-43f2-bc2a-5fdded5aafed', 'Gudang Scrap', 'bb536994-ada3-4caa-b97b-e412dc2cc882', NULL, '2019-09-15 17:02:27', '2019-09-15 17:02:27'),
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_sales_id_foreign` (`sales_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for dumped tables
--

--
-- Constraints for table `internal_items`
--
ALTER TABLE `internal_items`
  ADD CONSTRAINT `internal_items_mutasi_id_foreign` FOREIGN KEY (`mutasi_id`) REFERENCES `internal_transfers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD CONSTRAINT `inventory_movements_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
