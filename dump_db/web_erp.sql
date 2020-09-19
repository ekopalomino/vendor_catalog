-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 12:21 AM
-- Server version: 5.7.30
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
-- Database: `fibertekno`
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
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `contacts` (`id`, `ref_id`, `type_id`, `name`, `company`, `phone`, `mobile`, `email`, `billing_address`, `shipping_address`, `payment_method`, `payment_terms`, `bank_name`, `account_no`, `tax`, `tax_no`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
('008a1051-7b08-4ba8-8677-24911558245e', 'FTI-C-0000010', 1, 'BUDI BDG - CV.PUTRA JAYA', 'BUDI BDG - CV.PUTRA JAYA', 'na', 'CV.PUTRA JAYA', 'na@na.co', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:03:22', '2020-03-07 08:38:54'),
('11937f5b-af6e-49fc-8cea-ef370e9c76f0', 'FTI-C-0000014', 1, 'SUPARMAN', 'SUPARMAN', 'na', '0813-8333-8444', 'na@na.co', 'JL. GADING RAYA , PISANGAN TIMUR, PULOGADUNG-JKT', 'JL. GADING RAYA , PISANGAN TIMUR, PULOGADUNG-JKT', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:07:57', '2020-03-07 08:07:57'),
('153339d2-bf88-4b93-99c1-73d6afdda230', 'FTI-C-0000022', 1, 'PT FIBER MEDIA INDONESIA', 'PT FIBER MEDIA INDONESIA', '(021) 75997997', '(021) 75997997', 'billingfinance@tachyon.net.id', 'Jl. TB Simatupang, RT.3/RW.1, Cilandak Bar., Jakarta, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12550', 'Jl. TB Simatupang, RT.3/RW.1, Cilandak Bar., Jakarta, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12550', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:23:56', '2020-05-15 08:23:56'),
('1c527872-628d-43aa-a61e-b02f74ee1154', 'FTI-C-0000019', 1, 'PT Bali Towerindo', 'PT Bali Towerindo', '+62 21 5790 5788', 'na', 'customer.support@balitower.co.id', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', 1, 1, NULL, NULL, 1, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 07:48:58', '2020-05-15 07:51:35'),
('1f02ca00-7654-4553-9e1b-2e7f35232f9c', 'FTI-C-0000016', 1, 'SURYADI - TANGERANG', 'SURYADI - TANGERANG', 'na', '0812-8444-6006', 'na@na.co', 'JL.H.RIWAN , KUNCIRAN PINANG-TANGERANG', 'JL.H.RIWAN , KUNCIRAN PINANG-TANGERANG', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:10:12', '2020-03-07 08:10:12'),
('2d563a3d-b66a-41c9-95e9-62b8f93876c3', '00001', 1, 'JOSEPH', 'JOSEPH', '08111111111', '08111111111', 'JOSEPH@JOSEPH.COM', 'JL. BARU', 'JL. BARU', 1, 1, NULL, NULL, 0, NULL, 'Nining S. (Sales Adm)', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-17 06:15:29', '2020-06-17 06:15:29'),
('30de5d04-9539-41fa-8d45-6fca5116f3b7', 'FTI-C-0000018', 1, 'HERI - CIBUBUR', 'HERI - CIBUBUR', 'na', '0813-8007-0047', 'na@na.co', 'GUNUNG PUTRI , CIANGSANA, CIBONONG', 'GUNUNG PUTRI , CIANGSANA, CIBONONG', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:43:36', '2020-03-07 08:43:36'),
('3b59e30e-d5ad-4bca-966b-69d275e140d4', 'Trio', 2, 'Trio', 'Juragan Fiber Optik', '081311344074', '081311344074', 'jfo@gmail.com', 'Jl kalimaya no 44B RT 001/08 Kel. kapuk kec. cengkareng', 'Jl kalimaya no 44B RT 001/08 Kel. kapuk kec. cengkareng', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:53:11', '2020-06-18 12:53:11'),
('4059e04b-d10d-4e24-b0dc-d71fe8afbc1d', '00002', 1, 'GREENET', 'PT. GREENET', '08111222222', '08111222222', 'GREENET01@GREENET.COOM', 'JL.GREN N BLUE', 'JL.GREN N BLUE', 1, 4, NULL, NULL, 1, '3434.1568.22.220', 'Nining S. (Sales Adm)', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:21:21', '2020-06-18 12:21:21'),
('47425ace-60ef-4038-abe9-e024d9443d3d', 'FTI-C-0000021', 1, 'PT PUTERATEL ANDALAN SUKSES (PAS)', 'PT PUTERATEL ANDALAN SUKSES (PAS)', '0216511912,6516113', '02165302380', 'admin@puteratel.com', 'Jl. Danau Sunter Utara Perkantoran Sunter Permai Blok D No. 18', 'Jl. Danau Sunter Utara Perkantoran Sunter Permai Blok D No. 18', 1, 1, NULL, NULL, 1, '02.7 47 .795.9-048.000', 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:18:18', '2020-05-15 09:02:08'),
('4e8b0f0e-e718-4150-a7fb-9dd619e413c1', 'FTI-S-0000001', 2, 'Pak Iban', 'PT Pak Iban', '021 800000001', '08111435076', 'mirza.rizaldy@gmail.com', 'Di Rumah', 'Di Rumah', 1, 3, NULL, NULL, 0, '0101010', 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 11:51:49', '2020-01-08 11:51:49'),
('51a3c1b2-bdd9-45b3-b7c8-a5553cb40100', 'FTI-C-0000011', 1, 'EVI - PUTRA JAYA', 'EVI - PUTRA JAYA', 'na', '0812-2251-1979', 'na@na.co', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:04:20', '2020-03-07 08:37:03'),
('5ca6b7cd-c87b-4805-a395-0a44a2dcd2fe', 'FTI-C-0000007', 1, 'Agus - PT AKM', 'Agus - PT AKM', 'na', '0822-5819-8720', 'na@na.co', 'GG. HJ. UMAR , PARUNG SERAB - CILEDUG', 'GG. HJ. UMAR , PARUNG SERAB - CILEDUG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 07:59:21', '2020-03-07 08:39:27'),
('621538da-23fd-4098-97cd-d56fad695246', 'FTI-C-0000024', 1, 'CV KABELINDO SEJAHTERA', 'CV KABELINDO SEJAHTERA', '00000', '00000', 'kabelindosejahtera.cv@gmail.com', '000000', '000000', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 09:01:38', '2020-05-15 09:01:38'),
('79acefdd-92bb-4079-99c3-ba9654250d56', 'PAS', 2, 'Chayadi Subrata', 'PT Puteratel Andalan Sukses', '0216511912', '02165302380', 'aaa@gmail.com', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', 1, 4, NULL, NULL, 0, '02.747.795.9-048.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 10:00:25', '2020-06-19 10:00:25'),
('7e569fac-69c7-48c1-a851-b4d914943724', 'FTI-C-0000004', 1, 'TRIO - JURAGAN FIBER OPTIK', 'TRIO - JURAGAN FIBER OPTIK', 'na', '0813-1134-4074', 'na@na.com', 'JL. KALIMAYA , CENGKENG-JAKARTA', 'JL. KALIMAYA , CENGKENG-JAKARTA', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-06 09:35:25', '2020-03-07 08:39:47'),
('8163fd65-1895-4f96-85d7-bbd3af40f79b', 'AMG', 2, 'Koh Aming', 'aming', '0000000000', '0000000000', 'aaa@gmail.com', 'PIK', 'PIK', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:50:24', '2020-06-18 12:50:24'),
('8283d753-a886-4980-960a-4c2e5e631ba6', 'FTI-C-0000006', 1, 'RAFACOM', 'RAFACOM', 'na', '0857-7601-6341', 'na@na.com', 'JL. CENTEX , CIRACAS , JAKARTA TIMUR', 'JL. CENTEX , CIRACAS , JAKARTA TIMUR', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-06 10:55:37', '2020-03-06 10:55:37'),
('8894faf4-281a-4c22-b2c2-1aff6f67b346', 'FTI-S-0000002', 2, 'Pak Ibos', 'PT Ibos Makmur', '021 989665', '0811199181918', 'ibosjaya@gmail.com', 'Samping Kanan', 'Samping Kanan', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-08 15:39:22', '2020-01-08 15:39:22'),
('9c4257b6-3a16-4c61-9dc0-04fe2ef5d514', 'YOI', 2, 'PT Yangtze Optics Indonesia', 'PT Yangtze Optics Indonesia', '+62 813-9858-3389', '+62 813-9858-3389', 'zhoujie@yofc.com', 'X Kav 1-65 E4,, , Kabupaten Jl. Surya Madya, Mulyasari, Ciampel Karawang, Jawa Barat 41363', 'X Kav 1-65 E4,, , Kabupaten Jl. Surya Madya, Mulyasari, Ciampel Karawang, Jawa Barat 41363', 1, 5, NULL, NULL, 0, '81.779.778.0-036.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 09:49:36', '2020-06-19 09:49:36'),
('9ea60706-92ea-41a9-8f35-01800f396ad9', 'IMP/CHN/001', 2, 'IMPORT CHINA - CHEN', 'FIBERTRON', '021220487', '082122858663', 'ftn@go.chn', 'Jakarta', 'Jakarta', 1, 4, NULL, NULL, 0, '441216464', 'Dimas', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-18 09:09:34', '2020-05-18 09:09:34'),
('a3895f2e-39c2-4111-9892-c390a0dc87b6', 'FTI-C-0000017', 1, 'HENGKI - TNT', 'HENGKI - TNT', 'na', '0816-1189-371', 'na@na.co', 'PLAZA KENARI MAS , JAKARTA PUSAT', 'PLAZA KENARI MAS , JAKARTA PUSAT', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:36:32', '2020-03-07 08:36:32'),
('a7d927ab-81a3-4be7-ac62-e2aa723891bf', 'Online-LJ', 2, 'lancar jaya', 'shopee', '00000000000000', '999999999999999', 'lj@shopee.com', 'Jakarta', 'Jakarta', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-18 07:03:24', '2020-05-18 07:03:24'),
('aa0021af-a3fa-4270-9b86-85cd58ea20ca', 'FTI-C-0000012', 1, 'CASMID - BOGOR', 'CASMID - BOGOR', 'na', '0852-8113-6389', 'na@na.co', 'KP. KARET , TAJURHALANG - BOGOR', 'KP. KARET , TAJURHALANG - BOGOR', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:05:55', '2020-03-07 08:40:09'),
('af98b8e1-9760-4707-a9b2-67d36db49a03', 'FTI-C-0000013', 1, 'LUTFI AZIZ', 'LUTFI AZIZ', 'na', '0812-9046-6900', 'na@na.co', 'JL. JAGAKARSA GG.AREN , JAKARTA SELATAN', 'JL. JAGAKARSA GG.AREN , JAKARTA SELATAN', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:07:02', '2020-03-07 08:07:02'),
('b675bf76-b74c-4bf0-99a1-ebf8f9669fae', 'FTI-C-0000001', 1, 'Data Comm', 'Data Comm', '021 861868686', '0817777777', 'admin@com.com', 'Seberang Kali', 'Seberang Kali', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-08 15:11:24', '2020-05-14 10:38:58'),
('ba5cd38f-2ffb-4957-a1a2-c23e691b2068', 'MIK', 2, 'Mr Matt', 'PT Mitra Integrasi Komunikasi', '082246895318', '082246895318', 'mattdai@rittech.com.cn', 'Jl palem manis I kel Gandasari kec. Jatiuwung. Tangerang, Banten', 'Jl palem manis I kel Gandasari kec. Jatiuwung. Tangerang, Banten', 1, 4, NULL, NULL, 0, '85.709.892.5-402.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 10:04:43', '2020-06-19 10:04:43'),
('c0006d45-3a66-476d-9264-b2f850121956', 'Online-LVS', 2, 'Lenov Shop', 'shopee', '0000000000', '0000000000', 'lvs@gmial.com', 'Jakarta', 'Jakarta', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:54:33', '2020-06-18 12:54:33'),
('c1508758-40e4-49ef-bb41-fe502aeab095', 'FTI-C-0000008', 1, 'BAYU', 'BAYU', 'na', '0822-1040-4442', 'na@na.co', 'JL.KAYU MANIS, KRAMAT JATI , JAKARTA', 'JL.KAYU MANIS, KRAMAT JATI , JAKARTA', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:00:43', '2020-03-07 08:00:43'),
('c840219d-c54c-4da2-b6d7-cd2e99a328fe', 'IOI', 2, 'PT Ilsin OTS Indonesia', 'PT Ilsin OTS Indonesia', '085697991575', '085697991575', 'fxekoprasetyo@gmail.com', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', 1, 4, NULL, NULL, 0, '75.788.236.0-045.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 09:56:15', '2020-06-19 09:56:15'),
('d11fb3be-9eb0-4872-9e5a-f2f7c063a884', 'FTI-C-0000009', 1, 'BERTOS', 'BERTOS', 'na', '0813-7777-0878', 'na@na.co', 'PESANGGRAHAN , PEDEMANGAN -JKT', 'PESANGGRAHAN , PEDEMANGAN -JKT', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:02:17', '2020-03-07 08:02:17'),
('d24ee76c-9f4d-4db6-bb93-187f38e7fe82', 'FTI-C-0000015', 1, 'EDHI - PT. DITECH', 'EDHI - PT. DITECH', 'na', '0811-1000-490', 'na@na.co', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:09:08', '2020-03-07 08:40:48'),
('dbec913e-2162-4536-8c2b-d27fe0d78c35', 'FTI-C-0000003', 1, 'NENENG - JAKARTA', 'NENENG - JAKARTA', 'na', '0898-7939-156', 'na@na.com', 'JL.KEMANGGISAN ILIR - JAKARTA', 'JL.KEMANGGISAN ILIR - JAKARTA', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-06 09:33:30', '2020-03-07 08:38:21'),
('f6def93c-b969-425c-a5d2-f3986914ed1f', 'FTI-C-0000020', 1, 'PT Abhyudaya Sukses Prima', 'PT Abhyudaya Sukses Prima', '081294148175', '081264813468', 'silviahapsari78@gmail.com', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:11:31', '2020-05-15 08:11:31'),
('fbe8cff6-ec7d-4a0d-a69c-450b6ab10739', 'FTI-C-0000023', 1, 'PT Trava Zelenaya Netta', 'PT Trava Zelenaya Netta', '0821-29712750', '0821-29712750', 'info@travanetta.com', 'Graha Simatupang, Tower 2B, 1st Floor Jl. TB Simatupang Kav. 38, Jatipadang. Pasar Minggu, Jakarta Selatan 12540', 'kantor padicon \r\nRuko tanjung mas barat, no.37', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:34:53', '2020-05-15 08:34:53'),
('fcea8a1e-7a57-40e9-bd59-7389828ba12a', 'PJBG', 2, 'Budi Bandung', 'Putra Jaya Bandung', '0000000000', '0000000000', 'pjbg@gmail.cxom', 'Jl jakarta no 20-22. Bandung', 'Jl jakarta no 20-22. Bandung', 1, 4, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:56:30', '2020-06-18 12:56:30'),
('fe00a2dd-c3fb-40e3-ab55-d49680724aef', 'FTI-C-0000002', 1, 'PAS', 'PT PUTERATEL ANDALAN SUKSES', '12345', '678910', 'tampanatus@yahoo.com', 'Seberang rumah saya', 'Seberang rumah saya', 1, 3, NULL, NULL, 1, '45678', 'adminsales1', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-13 16:30:35', '2020-05-15 08:24:09'),
('fe787890-557e-41d4-b80d-6365acb8991e', 'FTI-C-0000005', 1, 'ADIT -  PT BINTANG', 'ADIT -  PT BINTANG', 'na', '0812-8421-1982', 'na@na.com', 'Jl. Pintu Air , CINERE - DEPOK', 'Jl. Pintu Air , CINERE - DEPOK', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-06 10:54:13', '2020-03-07 08:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_service_id` int(11) NOT NULL,
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
(6, 'MITRA NUSANTARA', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'eko', NULL, '2020-01-08 12:02:00', '2020-01-08 12:02:00'),
(7, 'FTI LOGISTIC', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Dimas', 'Dimas', '2020-05-18 09:04:25', '2020-05-19 01:38:30');

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
('1886a2b3-2fb7-4f40-b577-dad076a5d3b1', 'Finance', 'eko', NULL, '2020-01-09 12:29:27', '2020-01-09 12:29:27'),
('413ec199-f1dd-42a7-a346-67a74fb807b0', 'IT', 'eko', NULL, '2019-09-04 16:46:23', '2019-09-04 16:46:23'),
('784f06d5-0e19-490f-91d4-60ea243eae53', 'Sales', 'eko', NULL, '2020-01-09 12:29:16', '2020-01-09 12:29:16'),
('9f94e00b-5fdc-4dc9-8057-fd21ded69869', 'Gudang', 'eko', NULL, '2020-01-09 12:30:08', '2020-01-09 12:30:08'),
('ee6ae9ab-40b7-4c03-8610-de7a45377cae', 'Logistik', 'eko', NULL, '2020-01-09 12:30:01', '2020-01-09 12:30:01'),
('fe97cbde-836a-439e-8b64-31783aaee279', 'Produksi', 'eko', NULL, '2020-01-10 14:22:13', '2020-01-10 14:22:13');

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
(1, '5d9aaffa-33c0-11ea-aec2-2e728ce88125', 'AC 1/2PK', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-09-19 20:20:56'),
(2, '5d9ab270-33c0-11ea-aec2-2e728ce88125', 'AC 1PK', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-06-26 15:39:49'),
(3, '5d9ab3d8-33c0-11ea-aec2-2e728ce88125', 'AC 5PK', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(4, '5d9ab536-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Black', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-09-18 20:14:55'),
(5, '5d9ac882-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(6, '5d9aca26-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-28 08:05:48'),
(7, '5d9acb70-33c0-11ea-aec2-2e728ce88125', 'Adapter MM DX LC/PC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(8, '5d9acca6-33c0-11ea-aec2-2e728ce88125', 'Adapter MM SX SC/PC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(9, '5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(10, '5d9ae448-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(11, '5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/UPC Auto Shutter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(12, '5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 'Adapter SM LC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(13, '5d9b0464-33c0-11ea-aec2-2e728ce88125', 'Adapter SM LC/UPC DX', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(14, '5d9b05ea-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(15, '5d9b0734-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(16, '5d9b0874-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(17, '5d9b09aa-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(18, '5d9b0d60-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC DX', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(19, '5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC PAZ ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(20, '5d9b1008-33c0-11ea-aec2-2e728ce88125', 'Adapter ST/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(21, '5d9b113e-33c0-11ea-aec2-2e728ce88125', 'Alat Potong Kertas (Paper Cutter)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(22, '5d9b127e-33c0-11ea-aec2-2e728ce88125', 'Alkohol 70%', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(23, '5d9b13b4-33c0-11ea-aec2-2e728ce88125', 'Alkohol 96%', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(24, '5d9b16e8-33c0-11ea-aec2-2e728ce88125', 'Amplas Sheet 1500Cw', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(25, '5d9b1832-33c0-11ea-aec2-2e728ce88125', 'Amplas Sheet 150Cw', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(26, '5d9b1968-33c0-11ea-aec2-2e728ce88125', 'Baut L Ukuran 12x3mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(27, '5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 'Baut L Ukuran 16x3mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(28, '5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 'BIG CRIMP RING (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-28 08:05:48'),
(29, '5d9b1e36-33c0-11ea-aec2-2e728ce88125', 'BIG CRIMP RING (3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(39, '5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 'BOOT SM FC APC (0,9mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(40, '5d9b3146-33c0-11ea-aec2-2e728ce88125', 'BOOT SM FC APC (2,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(41, '5d9b327c-33c0-11ea-aec2-2e728ce88125', 'BOOT SM FC APC (3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(42, '5d9b3632-33c0-11ea-aec2-2e728ce88125', 'BOOT SM LC/APC (0,9mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(43, '5d9b379a-33c0-11ea-aec2-2e728ce88125', 'BOOT SM LC/APC (2,00mm - 3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(44, '5d9b38d0-33c0-11ea-aec2-2e728ce88125', 'BOOT SM LC/UPC (0,9mm) Blue/White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(45, '5d9b3a10-33c0-11ea-aec2-2e728ce88125', 'BOOT SM LC/UPC (2,00mm, 3,00mm) Blue/White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(46, '5d9b3b46-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/APC (0,9mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(47, '5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/APC (2,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(48, '5d9b3f24-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/APC (3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(49, '5d9b4244-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/UPC (0,9mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(50, '5d9b43a2-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/UPC (2,00mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(51, '5d9b44e2-33c0-11ea-aec2-2e728ce88125', 'BOOT SM SC/UPC (3,00mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(52, '5d9b4618-33c0-11ea-aec2-2e728ce88125', 'BOOT SM/MM FC UPC (0,9mm) Black/Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(53, '5d9b474e-33c0-11ea-aec2-2e728ce88125', 'BOOT SM/MM FC UPC (2,00mm) Black/Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(54, '5d9b488e-33c0-11ea-aec2-2e728ce88125', 'BOOT SM/MM FC UPC (3,00mm) Black', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(55, '5d9b4b90-33c0-11ea-aec2-2e728ce88125', 'BOOT ST UPC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(56, '5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 'BOOT ST UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(57, '5d9b4e38-33c0-11ea-aec2-2e728ce88125', 'Box ONT Huawei', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(58, '5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Kosongan)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(59, '5d9b50b8-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Splitter Plc 1:8 SC/APC)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(60, '5d9b51ee-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 12m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(61, '5d9b5536-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 19m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(62, '5d9b5676-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(63, '5d9b57b6-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 24m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(64, '5d9b58ec-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 25m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(65, '5d9b5aae-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 26m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(66, '5d9b5c16-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 38m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(67, '5d9b5efa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(68, '5d9b6058-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 11m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(69, '5d9b6198-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 12m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(70, '5d9b62ce-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 13m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(71, '5d9b6404-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 14m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(72, '5d9b653a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(73, '5d9b6828-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 16m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(74, '5d9b699a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 17m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(75, '5d9b6ada-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 18m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(76, '5d9b6c06-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 19m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(77, '5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(78, '5d9b7048-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 21m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(79, '5d9b71ba-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 22m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(80, '5d9b8588-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 23m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(81, '5d9b86fa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 24m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(82, '5d9b8830-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 25m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(83, '5d9b8970-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 27m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(84, '5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 28m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(85, '5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 40m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(86, '5d9b8eca-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 42m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(87, '5d9b946a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 55m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(88, '5d9b95fa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(89, '5d9b9744-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 60m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(90, '5d9b9884-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 65m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(91, '5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(92, '5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 8m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(93, '5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 9m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(94, '5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(95, '5d9ba068-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(96, '5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 'Bundle Core 12C 2 sisi SC-LC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(97, '5d9ba2de-33c0-11ea-aec2-2e728ce88125', 'Bundle Core 2 Sisi 8c SC-SC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(98, '5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 'C TYPE RING ST UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(99, '5d9ba734-33c0-11ea-aec2-2e728ce88125', 'Cable Dropcore Putih ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(100, '5d9ba946-33c0-11ea-aec2-2e728ce88125', 'Cable Manager W/Cover 1U', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(101, '5d9baacc-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM1 SX (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(102, '5d9bac0c-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 DX (2,0mm) LSZH Orange', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(103, '5d9bae00-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 DX (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(104, '5d9bb116-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 SX (0,9mm) Orange', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(105, '5d9bb27e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 SX (0,9mm) Orange Import', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(106, '5d9bb3be-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 SX (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(107, '5d9bb4f4-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM2 SX (2,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(108, '5d9bb724-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM3 DX (2,0mm) Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(109, '5d9c752e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM3 DX (2,0mm) Aqua GJFJH 2A1a.3', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(110, '5d9c77b8-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM3 DX (2,0mm) FTI Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(111, '5d9c8032-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(112, '5d9c8190-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) Corning PVC Red', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(113, '5d9c8492-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) FTI Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(114, '5d9c860e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) FTI Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(115, '5d9c874e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) FTI Orange', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(116, '5d9c8a28-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) LSZH Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(117, '5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) LSZH Corning Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(118, '5d9c8eec-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) Orange', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(119, '5d9c9036-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM4 DX (2,0mm) YOFC Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(120, '5d9c9176-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (2,0mm) Yellow', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(121, '5d9c975c-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (2,0mm) Corning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(122, '5d9c9950-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (2,0mm) G.652D PVC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(123, '5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (2,0mm) G.657A2 LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(124, '5d9c9d92-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (2,0mm) LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(125, '5d9c9ec8-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (3,0mm) Yellow', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(126, '5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 'Cable SM DX (3,0mm) G.657A2 LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(127, '5d9ca134-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) Brown', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(128, '5d9ca26a-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) G652D PVC White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(129, '5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) G652D PVC Yellow', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(130, '5d9ca940-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) G657A2 PVC White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(131, '5d9caad0-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) GJJH 1B6a2 G.657A2 Yellow ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(132, '5d9cac1a-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) Grey', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(133, '5d9cad96-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0,9mm) Orange', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(134, '5d9caee0-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (0.9mm) Yellow Import', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(135, '5d9cb016-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (2,0mm) G.652D LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(136, '5d9cb318-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (2,0mm) G.652D PVC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(137, '5d9cb46c-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (2,0mm) G.657A2 LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(138, '5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (2,0mm) LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(139, '5d9cb6f6-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (2,0mm) Yellow', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-10 06:38:14'),
(140, '5d9cb82c-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX (3,0mm) G.657A2 LSZH', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(141, '5d9cba66-33c0-11ea-aec2-2e728ce88125', 'Cable SM SX 3,0mm PVC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(142, '5d9cbd54-33c0-11ea-aec2-2e728ce88125', 'Cable UTP CAT 6 LS ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(143, '5d9cbef8-33c0-11ea-aec2-2e728ce88125', 'Cable UTP CAT 6 Schneider ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(144, '5d9cc038-33c0-11ea-aec2-2e728ce88125', 'Cable UTP CAT 6 Vasco Link', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(145, '5d9cc16e-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 24core  ( Black )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(146, '5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 8 Core', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(147, '5d9cc420-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 96core ( Putih )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(148, '5d9cc556-33c0-11ea-aec2-2e728ce88125', 'Clamp A (Bracket) (Dead End)/Clamp Buaya uk 20/50', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(149, '5d9cc876-33c0-11ea-aec2-2e728ce88125', 'Clamp Pipa Conduit ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(150, '5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 'Clamp Ring 3 Lubang ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(151, '5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang 10 Inch', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(152, '5d9ccc36-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang 5 Inch', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(153, '5d9ccd62-33c0-11ea-aec2-2e728ce88125', 'Cleaver FC-65/Made In China', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(154, '5d9ccea2-33c0-11ea-aec2-2e728ce88125', 'Cleaver Merk Senter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(155, '5d9cd172-33c0-11ea-aec2-2e728ce88125', 'Cleaver Sumitomo ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(156, '5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/PC Brown', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(157, '5d9cd41a-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/UPC (Transparent)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(158, '5d9cd55a-33c0-11ea-aec2-2e728ce88125', 'Clip MM SC/PC Brown', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(159, '5d9cd690-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/APC Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(160, '5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/UPC Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(161, '5d9cdadc-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/APC Green ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(162, '5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/UPC Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(163, '5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 'Closure 288 Core ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(164, '5d9cdec4-33c0-11ea-aec2-2e728ce88125', 'Closure 48 Core (Fiber Trone)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(165, '5d9cdffa-33c0-11ea-aec2-2e728ce88125', 'Closure 48 Core (PAZ)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(166, '5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 'Closure 96 Core ( Kulit Jeruk)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(167, '5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 'Closure 96 Core ( No brand )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(168, '5d9ce662-33c0-11ea-aec2-2e728ce88125', 'Closure 96 Core ( No brand Tidak Complete) (Tanpa Kardus)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(169, '5d9ce798-33c0-11ea-aec2-2e728ce88125', 'Closure 96 Core Dome ( PAZ )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(170, '5d9cea18-33c0-11ea-aec2-2e728ce88125', 'Closure 96 Core Tanpa Kunci+Kardus Litech', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(171, '5d9cebc6-33c0-11ea-aec2-2e728ce88125', 'Closure AIS 12/24 Core (Duck) ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(172, '5d9ced06-33c0-11ea-aec2-2e728ce88125', 'Closure AIS 96 Core (Duck) ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(173, '5d9cefb8-33c0-11ea-aec2-2e728ce88125', 'Connector Box SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(174, '5d9cf116-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-18 06:53:06'),
(175, '5d9cf24c-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(176, '5d9cf38c-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(177, '5d9cf58a-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(178, '5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 3,0mm Tanpa Spring', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(179, '5d9cfa08-33c0-11ea-aec2-2e728ce88125', 'Connector Set ST Semi Finished Include Ferulle 2mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(180, '5d9cfb48-33c0-11ea-aec2-2e728ce88125', 'Connector MM ST/PC (2,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(181, '5d9cfc7e-33c0-11ea-aec2-2e728ce88125', 'Connector MM ST/PC (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(182, '5d9cfdbe-33c0-11ea-aec2-2e728ce88125', 'Connector MM FC/PC (2,0mm) ', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(183, '5d9cfef4-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(184, '5d9d002a-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 3,0mm', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-06-27 18:04:28'),
(185, '5d9d02f0-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/APC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(186, '5d9d04b2-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/APC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(187, '5d9d0610-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/UPC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(188, '5d9d0750-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/UPC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(189, '5d9d0962-33c0-11ea-aec2-2e728ce88125', 'Connector SM FC/UPC (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(190, '5d9d0b24-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(191, '5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(192, '5d9d0f84-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/APC 3,0mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(193, '5d9d10ba-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(194, '5d9d11f0-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(195, '5d9d1628-33c0-11ea-aec2-2e728ce88125', 'Connector SM LC/UPC 3,0mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(196, '5d9d17cc-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(197, '5d9d1af6-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(198, '5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(199, '5d9d1d76-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm (Tanpa Big Crimp Ring  & Dust Cups)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(200, '5d9d1eac-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 3,0mm (Tanpa Dustcups)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(201, '5d9d2000-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC 5cm Precon Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(202, '5d9d2140-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/APC Semi Finished + Ferulle', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(203, '5d9d241a-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(204, '5d9d25b4-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-10 06:38:14'),
(205, '5d9d2708-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC (2,0mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-10 06:38:14'),
(206, '5d9d2848-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(207, '5d9d297e-33c0-11ea-aec2-2e728ce88125', 'Connector SM ST/UPC (2,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(208, '5d9d2ab4-33c0-11ea-aec2-2e728ce88125', 'Connector SM ST/UPC (3,0mm)', 'Gudang Utama', '0.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(209, '5d9d2bea-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC 5cm Precon Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(210, '5d9d300e-33c0-11ea-aec2-2e728ce88125', 'Connector SM SC/UPC Semi Finished Include Ferulle ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(211, '5d9d3176-33c0-11ea-aec2-2e728ce88125', 'COUPLING NUT ST/UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(212, '5d9d32b6-33c0-11ea-aec2-2e728ce88125', 'CRIMP RING LC (3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(213, '5d9d33f6-33c0-11ea-aec2-2e728ce88125', 'CRIMP RING Precon SC UPC/APC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(214, '5d9d3568-33c0-11ea-aec2-2e728ce88125', 'CRIMP RING Precon SC UPC/APC Semi Finished', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(215, '5d9d382e-33c0-11ea-aec2-2e728ce88125', 'CRIMP RING ST UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(216, '5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 'Crimping Tools', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(217, '5d9d7956-33c0-11ea-aec2-2e728ce88125', 'Cutter Besar (Kenko)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(218, '5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 'D-clamp', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(219, '5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 'Doubletape Kecil', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(220, '5d9d8162-33c0-11ea-aec2-2e728ce88125', 'Doubletape Sedang', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(221, '5d9d84aa-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 100 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(222, '5d9d85fe-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 150 Meter ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(223, '5d9d8734-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 200 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(224, '5d9d886a-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 250 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(225, '5d9d89a0-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 300 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(226, '5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 50 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(227, '5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 63 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(228, '5d9d9094-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 75 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(229, '5d9dadc2-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core 80 Meter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(230, '5d9daf3e-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core Polos', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(231, '5d9db092-33c0-11ea-aec2-2e728ce88125', 'Drop Cable 1 Core Telkom', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(232, '5d9db1d2-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core, G657A2, LSZH, 1000M FRP YOFC TelkomAkses', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(233, '5d9db664-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core, GJYXFCH, LSZH, 1000M FTI', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(234, '5d9db97a-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core, GJYXFCH, LSZH, 1000M HUASHIN', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(235, '5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 'Dropcable 2C 1000M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(236, '5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 'Dropcable 2C With 2 Stell Wire.LSZH 1000M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(237, '5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 'Dropcable 4 Core, G657A1, LSZH, TWO STEEL WIRE 1000M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(238, '5d9dc06e-33c0-11ea-aec2-2e728ce88125', 'DUST CAP LC Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(239, '5d9dc352-33c0-11ea-aec2-2e728ce88125', 'DUST CAP LC White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(240, '5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 'DUST CAP SC-FC-ST Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(241, '5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 'DUST CAP SC-FC-ST Transparent', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(242, '5d9dc726-33c0-11ea-aec2-2e728ce88125', 'Fashconector SC/UPC Model BARU', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(243, '5d9dc85c-33c0-11ea-aec2-2e728ce88125', 'Fashconector SC/UPC Model Lama', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(244, '5d9dc992-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125uf MM LC/PC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(245, '5d9dcef6-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125uf SM LC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(246, '5d9dd090-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125uf SM LC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(247, '5d9dd374-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf MM SC/PC - FC/PC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(248, '5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SC/APC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(249, '5d9dd61c-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SC/APC Semi Finished', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(250, '5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SC/UPC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(251, '5d9dda5e-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SC/UPC Semi Finished', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(252, '5d9ddd42-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SM SC/FC - APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(253, '5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf SM SC/FC - UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-10 06:38:14'),
(254, '5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250uf ST/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(255, '5d9e20e0-33c0-11ea-aec2-2e728ce88125', 'Heat Shrink Cable ( Black) 3mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(256, '5d9e223e-33c0-11ea-aec2-2e728ce88125', 'Heat Shrink Cable ( Black) 4mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(257, '5d9e237e-33c0-11ea-aec2-2e728ce88125', 'Heat Shrink LC White', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(258, '5d9e261c-33c0-11ea-aec2-2e728ce88125', 'Heat Shrink LC Yellow', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(259, '5d9e296e-33c0-11ea-aec2-2e728ce88125', 'Holder SOC SC/UPC Sumitomo', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(260, '5d9e2c70-33c0-11ea-aec2-2e728ce88125', 'HOUSING MM LC (0,9mm, 2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(261, '5d9e2dba-33c0-11ea-aec2-2e728ce88125', 'HOUSING MM SC (0,9mm, 2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(262, '5d9e2f04-33c0-11ea-aec2-2e728ce88125', 'HOUSING SM LC/APC (0,9mm, 2,00mm, 3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(263, '5d9e31fc-33c0-11ea-aec2-2e728ce88125', 'HOUSING SM LC/UPC (0,9mm, 2,00mm, 3,00mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(264, '5d9e336e-33c0-11ea-aec2-2e728ce88125', 'HOUSING SM SC/APC (0,9mm), 2,00mm, 3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(265, '5d9e34ae-33c0-11ea-aec2-2e728ce88125', 'HOUSING SM SC/UPC (0,9mm), 2,00mm, 3,00mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(266, '5d9e35ee-33c0-11ea-aec2-2e728ce88125', 'Ink Ribbon Nomor', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(267, '5d9e3724-33c0-11ea-aec2-2e728ce88125', 'Isi Cutter Besar', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(268, '5d9e385a-33c0-11ea-aec2-2e728ce88125', 'Isi Cutter Kecil', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(269, '5d9e3990-33c0-11ea-aec2-2e728ce88125', 'Jacket Purcation Tube 2mm Yellow Aramid', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(270, '5d9e3c92-33c0-11ea-aec2-2e728ce88125', 'Kardus 10 x 22 x 22 Kecil', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(271, '5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 'Kardus 22 x 22 x 22 Sedang', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(272, '5d9e4160-33c0-11ea-aec2-2e728ce88125', 'Kardus 60 x 39 x 25 Besar', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(273, '5d9e42c8-33c0-11ea-aec2-2e728ce88125', 'Karet Pad 850-70 110mm (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(274, '5d9e444e-33c0-11ea-aec2-2e728ce88125', 'Karet Pad 850-75 110mm (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(275, '5d9e4598-33c0-11ea-aec2-2e728ce88125', 'Karet Pad 850-80 110mm (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(276, '5d9e46d8-33c0-11ea-aec2-2e728ce88125', 'Karet Pad 850-90 110mm (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(277, '5d9e4a16-33c0-11ea-aec2-2e728ce88125', 'Karet Pad D-9 Khu (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(278, '5d9e4b56-33c0-11ea-aec2-2e728ce88125', 'Karet Pad PR5X-500-70', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(279, '5d9e4c96-33c0-11ea-aec2-2e728ce88125', 'Karet Pad PR5X-500-75', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(280, '5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 'Karet Pad PR5X-500-80', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(281, '5d9e4f02-33c0-11ea-aec2-2e728ce88125', 'Karet Pad PR5X-500-90 (Mesin Mekanika)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(282, '5d9e5042-33c0-11ea-aec2-2e728ce88125', 'Karet Pad ukuran D,30 SAPO (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(283, '5d9e5236-33c0-11ea-aec2-2e728ce88125', 'Karet Pad ukuran D3 SAM (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(284, '5d9e5376-33c0-11ea-aec2-2e728ce88125', 'Karet Pad ukuran Final 0,5 (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(285, '5d9e5650-33c0-11ea-aec2-2e728ce88125', 'Kelvar Scissor (Tang Gunting)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(286, '5d9e57a4-33c0-11ea-aec2-2e728ce88125', 'Krone LSA', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(287, '5d9e5934-33c0-11ea-aec2-2e728ce88125', 'KTB Walmount 8 C', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(288, '5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 'Label Barcode', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(289, '5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 'Label Barcode Ribbon', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(290, '5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 'Lakban Bening Besar', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(291, '5d9e5f92-33c0-11ea-aec2-2e728ce88125', 'Lakban Bening Kecil', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(292, '5d9e6604-33c0-11ea-aec2-2e728ce88125', 'Lakban Bening Sedang', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(293, '5d9e6820-33c0-11ea-aec2-2e728ce88125', 'Lakban Coklat Besar', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(294, '5d9e6988-33c0-11ea-aec2-2e728ce88125', 'Lakban Fragile ( Merah )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(295, '5d9e6abe-33c0-11ea-aec2-2e728ce88125', 'Lakban Isolasi Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(296, '5d9e6c08-33c0-11ea-aec2-2e728ce88125', 'Lakban Kertas kecil', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(297, '5d9e6f32-33c0-11ea-aec2-2e728ce88125', 'Lakban Kertas Sedang', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(298, '5d9e707c-33c0-11ea-aec2-2e728ce88125', 'Lakban Putih Susu', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(299, '5d9e71b2-33c0-11ea-aec2-2e728ce88125', 'Lan Tester', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(300, '5d9e73ce-33c0-11ea-aec2-2e728ce88125', 'Lem Epoxy (Lem Bundle) A & B', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(301, '5d9e7554-33c0-11ea-aec2-2e728ce88125', 'Lem Epoxy AB ( KIT )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(302, '5d9e76d0-33c0-11ea-aec2-2e728ce88125', 'Lem Korea One Drop', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(303, '5d9e781a-33c0-11ea-aec2-2e728ce88125', 'Marker Number Bening', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(304, '5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'Marker Number Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(305, '5d9e7edc-33c0-11ea-aec2-2e728ce88125', 'Marker Number Putih 2mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(306, '5d9e8152-33c0-11ea-aec2-2e728ce88125', 'Mata Bor Nankai', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(307, '5d9e82ba-33c0-11ea-aec2-2e728ce88125', 'Media Converter 10/100', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(308, '5d9e8404-33c0-11ea-aec2-2e728ce88125', 'Media Converter 10/100 ( B )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(309, '5d9e8742-33c0-11ea-aec2-2e728ce88125', 'Media converter 10/1000', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(310, '5d9e88b4-33c0-11ea-aec2-2e728ce88125', 'Mesin Cek Polishing', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(311, '5d9e89fe-33c0-11ea-aec2-2e728ce88125', 'Mesin Manual', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11');
INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(312, '5d9e8b34-33c0-11ea-aec2-2e728ce88125', 'Mesin Mechanical', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(313, '5d9e8c74-33c0-11ea-aec2-2e728ce88125', 'Mesin Oven', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(314, '5d9e8daa-33c0-11ea-aec2-2e728ce88125', 'Mesin Pemeriksa DB', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(315, '5d9e90d4-33c0-11ea-aec2-2e728ce88125', 'Mesin Press', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(316, '5d9e9246-33c0-11ea-aec2-2e728ce88125', 'Mesin Print Number', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(317, '5d9e9386-33c0-11ea-aec2-2e728ce88125', 'Mesin Suntikan Lem', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(318, '5d9e94bc-33c0-11ea-aec2-2e728ce88125', 'Minyak Kayu Putih', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(319, '5d9e9714-33c0-11ea-aec2-2e728ce88125', 'Minyak Kompresor', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(320, '5d9e9854-33c0-11ea-aec2-2e728ce88125', 'MM OM2 DUCT CABLE ARMORED 12 Core/GYFA-12OM2/2Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(321, '5d9e9994-33c0-11ea-aec2-2e728ce88125', 'MM OM2 DUCT CABLE ARMORED 24 Core/GYFA-24OM2/4Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(322, '5d9e9caa-33c0-11ea-aec2-2e728ce88125', 'MM OM2 DUCT CABLE ARMORED 48 Core/GYFA-48OM2/4Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(323, '5d9e9e12-33c0-11ea-aec2-2e728ce88125', 'MM OM2 DUCT CABLE ARMORED 6 Core/GYFA-6OM2/1Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(324, '5d9e9f66-33c0-11ea-aec2-2e728ce88125', 'NUT FC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(325, '5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 'NUT FC (2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(326, '5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 'ODC 48 Core', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(327, '5d9ea312-33c0-11ea-aec2-2e728ce88125', 'ODC Mini 96C/ODP 96C', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(328, '5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core Kosongan ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(329, '5d9ea754-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core Pole', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(330, '5d9ea894-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(331, '5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(332, '5d9eab0a-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(333, '5d9eac40-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core ( TIS )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(334, '5d9eaefc-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core (Polos)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(335, '5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core (Sunsea)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(336, '5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core CA (Huawei) Black', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(337, '5d9eb32a-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core ( No Brand ) Tanpa Kunci', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(338, '5d9eb46a-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(339, '5d9eb636-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core YOFC Tanpa Kardus SC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(340, '5d9eb794-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core YOFC Tanpa Kunci+Kardus SC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(341, '5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 'ODP 24 Core YOFC Tanpa Pigtail SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(342, '5d9ebc08-33c0-11ea-aec2-2e728ce88125', 'ODP Solid 8 Core + Splitter 1:8 SC/UPC Auto Shutter', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(343, '5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 'ODP/FAT 12 Core SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(344, '5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 'OLS J4', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(345, '5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 'ONT ZTE Versi 3', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(346, '5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 'Optical Light Source (OLS) JW', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(347, '5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter (AMG)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(348, '5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter (No Brand)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(349, '5d9ec950-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter JoinWitt', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(350, '5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Hitam)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(351, '5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Krim)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(352, '5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC/APC (No Brand)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(353, '5d9ece50-33c0-11ea-aec2-2e728ce88125', 'OTB 48 Core SC/APC (No Brand)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(354, '5d9ed134-33c0-11ea-aec2-2e728ce88125', 'OTB 48 Core SC/APC (No Brand) Kunci Rusak', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(355, '5d9ed27e-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(356, '5d9ed3be-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(357, '5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 'OTB RACK 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(358, '5d9ed666-33c0-11ea-aec2-2e728ce88125', 'OTB Rack Splitter PLC 1:32 SC/APC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(359, '5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 'Paku beton', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(360, '5d9edb0c-33c0-11ea-aec2-2e728ce88125', 'Paladin Buffer Stripper', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(361, '5d9edd00-33c0-11ea-aec2-2e728ce88125', 'Palu Kecil ( CAB )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(362, '5d9ede5e-33c0-11ea-aec2-2e728ce88125', 'Pantong', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(363, '5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-28 07:50:34'),
(364, '5d9ee142-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(365, '5d9ee282-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(366, '5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(367, '5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(368, '5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 DX (2,0mm) LC/PC-LC/PC 3m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-28 08:05:48'),
(369, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 DX (3,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-07-28 04:41:48'),
(370, '5d9eea84-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(371, '5d9eebc4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(372, '5d9eecfa-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(373, '5d9ef056-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(374, '5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 40m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(375, '5d9ef312-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 10m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(376, '5d9ef448-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(377, '5d9ef57e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(378, '5d9ef6be-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 25m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(379, '5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(380, '5d9efc36-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(381, '5d9efe70-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(382, '5d9f000a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 60m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(383, '5d9f014a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(384, '5d9f0280-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(385, '5d9f0442-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 50m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(386, '5d9f0712-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(387, '5d9f0866-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (2,0mm) ST/UPC-ST/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(388, '5d9f09b0-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM1 SX (3,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(389, '5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) FC/PC-LC/PC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(390, '5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 10m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(391, '5d9f0d52-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(392, '5d9f1040-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(393, '5d9f11b2-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) SC/PC-LC/PC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(394, '5d9f12fc-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) SC/PC-LC/PC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(395, '5d9f1432-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) SC/PC-SC/PC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(396, '5d9f1568-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) SC/PC-SC/PC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(397, '5d9f16a8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(398, '5d9f1950-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (3,0mm) ST/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(399, '5d9f1aae-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX (3,0mm) ST/UPC-ST/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(400, '5d9f1bee-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 SX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(401, '5d9f1d24-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 SX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(402, '5d9f1e64-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 100m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(403, '5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(404, '5d9f2256-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 1m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(405, '5d9f23b4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 20m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(406, '5d9f24f4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 25m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(407, '5d9f262a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 30m Aqua ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(408, '5d9f276a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 3m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(409, '5d9f28a0-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 50m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(410, '5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(411, '5d9f2db4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 15m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(412, '5d9f2f08-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 20m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(413, '5d9f3048-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 30m Aqua', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(414, '5d9f317e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM4 DX (2,0mm) FC/PC-LC/PC 15m Biru', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(415, '5d9f32e6-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM4 DX (2,0mm) LC/PC-LC/PC 10m Biru', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(416, '5d9f3610-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM4 DX (2,0mm) LC/PC-LC/PC 20m Biru', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(417, '5d9f38fe-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SM DX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(418, '5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(419, '5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(420, '5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(421, '5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(422, '5d9f4006-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(423, '5d9f43e4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(424, '5d9f45c4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(425, '5d9f472c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(426, '5d9f489e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(427, '5d9f49de-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(428, '5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(429, '5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(430, '5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 25m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(431, '5d9f506e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(432, '5d9f5262-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(433, '5d9f53ca-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(434, '5d9f550a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(435, 'da59bc17-ffaa-4db8-80cc-019de857ad3c', 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(436, 'e5081045-c074-47e5-b528-4458f6e055c5', 'Patchcord SM DX (2,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(437, '6de3eb99-4883-48d3-9e3f-2ec2b4322172', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(438, '825061bb-e1bc-4a49-bd95-306338997289', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(439, '2beb3665-fc2d-4fbc-a69d-9dc8103d2a06', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(440, '0497a34d-138a-43ea-8efc-4dad2b77120d', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(441, 'c945a0d7-7c85-445b-bfc2-e8463c980b55', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(442, '713d7ca0-273c-4933-b697-4b96c659a94a', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(443, '6a27aaa8-2789-4743-b870-386ca67a9941', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(444, 'a89fda8d-993f-4178-9f25-719d65573850', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(445, 'e86d8046-da40-47b2-b116-f59166459e43', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(446, '7b8c932f-739f-47f3-9ec8-18987646c13b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(447, '419c1402-e5d7-42ed-8f23-f7012d862ea6', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(448, '13dc56cb-08d2-44aa-9fab-a236d47ec7a1', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-06-17 02:49:38'),
(449, '5636ef6f-a6a1-4ec9-a1c1-6a5f97d0296b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(450, 'f7ce68cc-98e2-4f8c-a9cf-1176c70a4f59', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(451, '5c321c72-30ca-4967-a602-57802d122c9b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 35m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(452, 'b2dcd8d9-4f62-49ae-9cef-cc9b3e3d00c4', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(453, '3b178ef1-8a34-44ba-9f41-766d452f4b43', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(454, '06de61c9-219f-4f09-b1f1-b9b0cf936594', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-18 06:24:52'),
(455, '32a3b6ce-d7fc-4814-8ffb-7dc3ca1919fb', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(456, '350e590d-80a7-4cee-a0d8-98d1cfa3c1bc', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(457, '90cfdfe4-0187-4a56-84f9-f49a77d782bc', 'Patchcord SM DX (2,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(458, '147b6863-bd86-4283-88b6-d1907cffb225', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(459, '9a37507d-da13-4d8f-80ae-895f892b09ce', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(460, '18747432-0693-46b7-9c83-441b2ea3300b', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(461, '32462549-e3c3-4406-9c70-0c5ad8c82d52', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(462, 'd6dd0772-93f6-478d-b5aa-1feaba91830f', 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(463, 'bf1a910a-9b04-4d75-959f-d576324ec881', 'Patchcord SM DX (2,0mm) ST/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(464, 'b9b36732-c249-4df2-a031-f0a21c14657d', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(465, 'ec263257-4f06-4cbf-b711-4e21e96d2d44', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(466, '737ee30a-ac08-4b31-9879-6a404e00d56d', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(467, 'bc520efc-5823-4f33-8012-e1ef5591ace3', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(468, 'a936a120-e334-46cf-9877-f230d0a029d7', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(469, '5da1b49b-a5cc-431c-8a9c-3eb5e1ab2402', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(470, '64648f72-2004-49fb-9837-2a06e147f1b3', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(471, '494325a6-68bc-4d88-9dd8-472f8901a6a2', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(472, '5f1ae7e3-0e8c-45ea-ab18-86f2fb5f3051', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(473, '873acffe-3a1b-4dd1-aef9-850b4aef8683', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(474, 'afe0d63d-7164-49d8-8488-83c1e5014c27', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(475, '818d8c59-17ca-49bb-bb05-ee0fa0d4a77d', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(476, '8bb8ec0b-8b04-418b-834e-123623e2fa58', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(477, 'bf1f7816-4191-472f-bba7-9816927e064d', 'Patchcord SM DX (3,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(478, 'cdd7fc5c-edc7-4ef4-ba2c-b7008fca334b', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(479, '80942d58-992f-4cce-a5a1-8890da609034', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(480, '5d0a2548-06cb-4abe-be3d-9ca16dd799f3', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(481, '59c29221-c993-4ece-a377-71eb3bf9ddbc', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(482, '3301f8de-dc15-4b38-8542-008da5228ffb', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(483, '4eb07b52-e87d-4a9d-b0b6-359ea6839eca', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(484, 'ec73e092-8d33-4b7e-b9af-cc93830a11a3', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(485, '27acb4e1-64b8-47a2-b29f-4c52d0f4c1bc', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(486, '0918b468-c972-4de2-8fec-629505cacd2e', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(487, '18b24684-a540-4af4-b93f-80bc155fd32f', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(488, '020de15a-b2fe-4e7e-9bd3-d9c6f77f03ea', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(489, 'cde6e9b4-ad15-4734-8d7d-f4c1726de623', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(490, '1ddb3c57-a474-4b44-94c9-52223a03d955', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(491, '605ef610-c46a-4b94-9b20-0e2ffc75858c', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(492, '9562caf4-4d9d-4634-be1a-d26007d951f3', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(493, 'fb7cbe27-df13-4adf-bd44-ec662077e58e', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(494, '47359c6c-5efd-4d1b-85ca-84f24e1fe9f2', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(495, '58d514e2-01a2-4659-aed7-5ab96c3c0814', 'Patchcord SM DX (3,0mm) SC/UPC-ST/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(496, '99416a1a-ce28-4ae0-a598-7ffe7ab44699', 'Patchcord SM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(497, '81f1dfeb-81ed-441e-9091-890847e6c037', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(498, 'bc09ab9a-f8ea-4a6b-b0c6-f4f8701e7959', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(499, 'a7bf0622-aee9-4c04-ace3-d28aa8a2ba63', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(500, '9c660ad6-dec4-4418-8f35-df637cfddd06', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(501, 'b96186cd-7f13-487d-bf74-575106d31376', 'Patchcord SM SX (2,0mm) FC/APC-FC/APC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(502, '78a7e0bd-9ce5-4448-a7d2-2923de0fe0e0', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(503, '52b06135-8753-49a0-9ea9-5cb4c708ef5b', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(504, '25e4e0f1-3a01-4ee5-b26d-24825d2cd7e0', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(505, '91cd8769-1ee3-4fcf-b3e6-267c2f2ae9ec', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(506, '0e2cf492-348d-48cd-aa12-27f0f73eb22a', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(507, '2c45b723-c7b3-4959-862a-17c865c03031', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(508, '9e67fd6c-a7e2-4d1a-9967-742d3cb2df89', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(509, 'c4786c8e-b26a-4c4d-8c9a-89ed5d0ba5c4', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(510, '302e9d8b-38ae-436c-a695-a9db956f503f', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(511, 'a025bd60-fbbe-4f96-a553-f3125b3185e1', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(512, 'f9f65618-80e9-4abc-8677-04b83ae0a6e5', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(513, 'b044ffa6-edaf-418e-91b9-3dc4131df04e', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(514, 'a664b27e-9314-4a9b-962a-2d66241ee747', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(515, '9f0f142a-114b-4f13-956d-3568e94a5f22', 'Patchcord SM SX (2,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(516, '3b219596-c0d5-4cfd-a37a-4f0b2b99bdd2', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(517, 'b38d0037-ccd6-45f5-9536-ab0013d7b002', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(518, 'cafffcf1-dac2-43f7-abc0-32a384bba042', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(519, '2a2ad83b-6255-4edc-90b4-6be9f1e4ccd0', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(520, '2a32aeab-59d4-4947-9012-dd0b7652ba75', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(521, 'a2087cdf-9738-4d4c-b11f-5216ff28f018', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(522, 'a8a14f1d-7443-4a2c-9c4c-8119f07a9176', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(523, 'e5ac8a53-3d2b-4e13-8890-0ce0fcea4eb6', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(524, '037a6937-94e8-4bcb-a715-17faa184581b', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(525, '47aa3c3c-56ec-4f4c-a3ff-9544cf4ce9cf', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(526, 'ca8808c1-a6b4-47b2-879b-d988c8ad41d5', 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(527, '950a1e26-23e4-40a5-9df8-d527d4b5f451', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(528, '5bfef3b3-dffc-4011-afc8-d89bf8af1527', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(529, 'ba3745cf-4a31-4f7a-9b64-7b6cd342eca7', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(530, '2c394318-71df-4569-8fd9-28ce6d577a0e', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(531, '28537981-4d1f-40b7-afc2-d09b3aaa1703', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(532, '241e72e5-130e-4ca2-b086-885737a524cc', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(533, 'c45182fa-fae3-4fac-af65-4648664aaf5e', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-18 06:26:00'),
(534, '66f40b89-05ee-4fea-99d1-d4334d47cec1', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(535, 'e35bc4ac-a0b3-4a5c-aad9-73955c209c31', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(536, '4cbef0bc-45f7-4ca7-ba4e-371ae9c82703', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(537, 'b78c2923-ba08-4711-8444-9bee04841dd0', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(538, '5f12a275-1900-409d-adfe-569983e88fb8', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(539, 'dad876ca-64c5-4a10-9bc3-3b3480714007', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(540, '94863fdc-fde2-43e9-b1dc-1e2264f2a515', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(541, 'bad6a056-1add-4cb9-8625-c79b562faecf', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(542, '68b03060-fe58-4fee-95ff-35c49e6a2d1c', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(543, '16b187f7-5d3d-4b64-b417-980d0d34fe4d', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(544, '3d7deffc-073c-40f9-bf7e-94c8cf5381ba', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(545, '5df00b8e-3209-40b7-8e29-afdb9831cb48', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(546, 'ac5ba2bc-efea-4d28-ad2f-050a9923894d', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(547, '36b9f4f9-499b-4239-b2ce-661ec6731660', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(548, 'f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(549, '9dbfe037-bbff-40bf-a9dd-bcb9d3e866a0', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(550, '3796ab98-805e-4d21-81ab-f2bca5b5c948', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(551, 'a7ff46a8-cfbc-4411-b6df-c82c1190cb8d', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(552, 'ec353038-f6a9-45fc-a01e-2adfe689d728', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(553, '57023c1f-6666-4b23-a42a-5f7059f95f68', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(554, '8be62161-742e-4e99-8b5e-664877ac6b44', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(555, 'd274c87c-12c3-4106-8679-7ff066154f36', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(556, '6738cf77-5351-4ea9-831e-9049efe2addb', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(557, 'cec013b8-961d-4464-a289-6da2fec82770', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(558, '52cfc1d9-ecc1-4cc7-a411-58d0b8284060', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(559, 'ea953c50-c4fe-498a-9790-12c6747ac0ed', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(560, 'dcdbaf2c-c5ac-4a4c-8590-2bfa12b370d0', 'Patchcord SM SX (3,0mm) FC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(561, '2deb5538-480e-4bf2-b572-8efce84a46ce', 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(562, '06e65567-8dbd-4d11-a22e-009de1c430d1', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(563, '219403ac-7bb9-45c7-991c-af386a16e669', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(564, '185843a9-c0da-43fb-a309-dc1d1e31ab5b', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(565, '9d0e6494-156a-4fed-abf0-9d90ba6a0b89', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(566, '9281cbe9-39d7-4cfd-ab1b-f1c08c13bdd4', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(567, 'e2e1afd3-2198-4229-a5fd-68736a12ad84', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(568, 'cfb90e95-68f9-4cd0-b41a-d8a95d337bc9', 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(569, '698b6ee4-fdb9-4d0d-80c4-99e76fcf7b95', 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(570, '25c7edab-183f-4519-92ee-a54070a4d4a4', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(571, '15a7f957-d522-4972-9c10-713836bba2db', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(572, '96de82fa-b68d-44ca-8e07-3bc1434ea770', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(573, 'db1f1600-d4fc-463e-b91b-e7def726df8f', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(574, '6b3e0d76-f81f-4e79-9e1b-53df8b83f726', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(575, 'f1a1ea80-1462-413e-a354-e2baf3e540bb', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(576, '43c48fab-f3f5-4e5f-88b4-5599fb41bc32', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(577, 'df4c1303-c602-4f30-86da-bacf58d828f5', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(578, 'ff2b2df8-2a65-4544-847b-78b4b52c25ab', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(579, '0c8f8e6a-5ed6-4813-ac25-1c76a48a39a3', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(580, '83512e63-4284-4317-9109-61f62f9c7733', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(581, 'b753fea6-8159-4b24-8159-62d927214485', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(582, '2dedb15b-c44a-44db-8ab7-7213ae1f4224', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(583, 'ecbde8a1-3112-48aa-ae35-4d0afd1b850e', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(584, '0bb2eb56-298c-48b4-ad5f-654f1fd16303', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(585, 'edac12c5-cee6-47fc-bd9d-8cd23aa344a4', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(586, '9a38d070-6fe0-4b15-b1e2-4676147682e2', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(587, 'd282e0c4-5599-45a7-b80d-36fb01d10f54', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(588, 'a2c0dfaf-1250-46d7-bf4a-36b2bee06126', 'Pedestal Besar isi ODP', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(589, 'd8086f7e-ac04-4f53-9b36-43170f105ac8', 'Pedestal Besar Kosongan ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(590, 'eaa3415b-bda9-4c0c-b164-5dbc42aa31d2', 'Pedestal Kecil Kosongan (Tanpa Kardus)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(591, '9f90e4d2-2d6c-4e45-b88b-56f134be4ffb', 'PG 5', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(592, 'b90b5eb4-a279-47c2-9472-fc601afe479c', 'Pigtail Bundle 12 Core SC/APC 1,5M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(593, 'a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'Pigtail MM OM2 DX (3,0mm) ST/PC 3m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11');
INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(594, '6f1a6b2c-7826-4d3b-95d1-ad868628e69b', 'Pigtail MM OM2 SX (0,9mm) SC/PC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(595, 'ffbf2d58-7ec4-42d3-8920-9e4e71b8e5c1', 'Pigtail MM OM2 SX (0,9mm) ST/PC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(596, '63b7775e-ddd0-4327-a9ed-b23a47c7336f', 'Pigtail MM OM2 SX (2,0mm) FC/PC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(597, 'cc4b6b7f-4710-46a0-b958-d52e1aa4a7df', 'Pigtail MM OM2 SX (2,0mm) FC/PC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(598, 'a80fc727-af3a-4fe0-93a8-9bc0568198af', 'Pigtail MM OM2 SX (2,0mm) LC/PC 6m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(599, 'e7e5b901-d164-4b1d-aa71-30bdb3542c32', 'Pigtail MM OM2 SX (2,0mm) LC/UPC 27m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(600, '0da8343b-1b64-4ec3-b712-f295b0736934', 'Pigtail MM OM2 SX (2,0mm) SC/PC 20m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(601, '859854f6-41d5-4c7f-9aac-079f06a4d949', 'Pigtail MM OM2 SX (2,0mm) SC/PC 3m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(602, '4c01a6b8-4401-4be3-8b11-48410471006a', 'Pigtail MM OM2 SX (2,0mm) SC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(603, 'bf9f5f1d-5baa-46cf-a369-c135cd1ac2fc', 'Pigtail MM OM2 SX (2,0mm) ST/PC 1,2m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(604, '84905d89-c592-40ee-a713-f7448a60465d', 'Pigtail Precon 1 Core SC/UPC Connector Hitam 100M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(605, 'b4a0e08b-8b4f-41e7-8882-948daaf6d3a3', 'Pigtail SM DX (2,0mm) FC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(606, 'ece57d51-2f1b-4eab-91eb-c5fa43f90716', 'Pigtail SM DX (2,0mm) FC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(607, 'b48003d4-d410-4607-80f8-4566adfe5dd9', 'Pigtail SM DX (2,0mm) FC/UPC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(608, '2794a09f-1d92-4532-87bd-fa0d86970a27', 'Pigtail SM DX (2,0mm) SC/UPC 7m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(609, '76de87e4-d411-498d-ac5c-b88be329b6d3', 'Pigtail SM DX (2,0mm) SC/UPC 8m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(610, '65c5d544-5fa5-47f1-9cd8-5ae8e0f207ea', 'Pigtail SM DX (3,0mm) SC/APC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(611, '7548c690-9f32-4e1d-a4bd-3ff27d68dc8c', 'Pigtail SM DX (3,0mm) SC/APC 3m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(612, '220c203f-e9f0-4e8c-ad9b-d025efa4917f', 'Pigtail SM DX (3,0mm) SC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(613, '2e7a63aa-49df-49b4-a5d4-52c881fdd5dd', 'Pigtail SM DX (3,0mm) SC/UPC 2m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(614, '9f6e5418-5716-41c5-8ebb-3a656013b2a9', 'Pigtail SM SX (0,9mm) FC/UPC 1,5m (kuning)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(615, '95997247-6840-4dbd-9862-da1e4ec80887', 'Pigtail SM SX (0,9mm) FC/UPC 1,5m (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(616, 'b3dbf294-8fdd-413b-b2d9-44a92c79809d', 'Pigtail SM SX (0,9mm) FC/UPC 1m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(617, '4a358603-b661-4320-ad99-72c870e754cb', 'Pigtail SM SX (0,9mm) LC/UPC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(618, 'b0cb6943-d166-4656-b635-6e353ab91b23', 'Pigtail SM SX (0,9mm) LC/UPC 1m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(619, 'ec548ace-9270-4016-90f9-26aed77f05ab', 'Pigtail SM SX (0,9mm) SC/APC 1m (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(620, 'b6bcde29-e5fc-49cb-aa1e-7154d0ebb53f', 'Pigtail SM SX (0,9mm) SC/APC 2m (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(621, '2360c45a-a0ee-418c-b405-46cc6dedd867', 'Pigtail SM SX (0,9mm) SC/APC 2m Oren', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(622, '7ff4903b-e774-4de5-a95c-52ea52a00e6b', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m  (merah)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(623, '9a380816-6b24-43c1-9289-5de2f3fb64f2', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (kuning)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(624, '9a1d88a1-027b-4a8e-98af-e4caf0308039', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (oren)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(625, '53dff306-fa2a-4379-b920-431156ac105b', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(626, 'f7f0bea2-e34e-4683-a3e9-7c7e1c1c9cc0', 'Pigtail SM SX (0,9mm) SC/UPC 1m (kuning)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(627, '66fd5b68-dfae-4680-90c5-c62f675f7447', 'Pigtail SM SX (0,9mm) SC/UPC 1m Oren', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(628, 'fae6a736-e742-4dd4-8870-ba44944b46d7', 'Pigtail SM SX (0,9mm) SC/UPC 2m (oren)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(629, 'db1f6192-d365-4837-a20f-1621fd11a32f', 'Pigtail SM SX (0,9mm) ST/UPC 1m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(630, '2050a705-66c2-467d-8bac-772b6b84f404', 'Pigtail SM SX (2,0mm) FC/APC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(631, '2bebb89a-c746-415a-a083-27efce0213f4', 'Pigtail SM SX (2,0mm) FC/UPC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(632, '11e3349f-463f-44cf-b0f9-4c4bdc3b01ea', 'Pigtail SM SX (2,0mm) LC/UPC 2m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(633, 'e519137c-ac02-406c-b03e-c75f5c0f89ef', 'Pigtail SM SX (2,0mm) SC/APC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(634, '19449b46-650d-448f-b332-115f46e479e4', 'Pigtail SM SX (2,0mm) SC/APC 2m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(635, '93779d49-c61f-4389-ba3d-4b9e2009c00a', 'Pigtail SM SX (2,0mm) SC/UPC 1,5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(636, '0bbcfa85-35a7-49a8-adcf-d871ef6f7502', 'Pigtail SM SX (2,0mm) SC/UPC 2m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(637, '3979288c-f896-43d4-944f-1eff5c09762c', 'Pigtail SM SX (3,0mm) FC/UPC 5m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(638, '194cf507-2fb2-48ee-adb1-4cb921d6fb81', 'Pigtail SM SX (3,0mm) LC/UPC 10m ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(639, 'd556eca2-61dd-4a8d-8dcf-d1a9de3000d9', 'Pigtail SM SX (3,0mm) SC/UPC 1,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(640, '7615371d-276c-42b5-a390-0de2c272526b', 'Pigtail SM SX (3,0mm) SC/UPC 2m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(641, '2ecb6a77-3708-4eb3-ab82-3e89ac70dea7', 'Pigtail SM SX (3,0mm) SC/UPC 3,5m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(642, '44244f8a-ac13-4d8c-b0cc-303db8777970', 'Plastik 13,5 x 14,5', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(643, '4d0f2ae0-bc50-407b-ac2d-ee19f2928535', 'Plastik 18 x 18', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(644, 'bf359216-bf1b-4fe1-8144-4e283cfd13d9', 'Plastik 20 x 23', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(645, '82ee1ecc-0b39-46ca-9839-ad0ce6e8c932', 'Plastik 30 x 25', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(646, '8e5f19d5-700b-4fc8-8198-e8a67a6933b9', 'Plastik 40 X 40', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(647, 'f52f963d-e4cb-4e07-998a-4bfa33640943', 'Plastik 8 x 5', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(648, '1deb7547-5cfc-4b7c-b13e-f494ffd31b40', 'Plastik Clip 40 X 30', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(649, '2c7687c4-847b-422c-9504-4db9293201d5', 'Plastik Clip 55 X 50', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(650, 'ab067a68-1ac9-4338-bd37-4825a4c06d83', 'Plastik Gambar 13.5 x 14.5', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(651, '2af3440d-96dc-4628-bdb5-e3221ee35870', 'Plastik Gambar 18 x 18', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(652, '05e0a851-c660-43de-ab03-8d23c5fd1485', 'Plastik Gambar 20 x 23', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(653, '6148167f-95dd-4153-bbdd-dd81c5e25c7e', 'PLUG FRAME FC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(654, '0b6a929a-c547-4272-bfac-de5fe228809e', 'PLUG FRAME Precon SC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(655, 'fac6298e-6dc1-419b-95a5-3107c21241f2', 'PLUG FRAME SC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(656, '18d29252-8539-49da-9f99-f1014351fc15', 'Polishing FINAL ADSS 0,005 Micron (Bening)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(657, '23c73d77-f048-42bf-a361-15a06fcc5fad', 'Polishing FINAL CP 0,005 Micron (Bening)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(658, '2cd98f26-3b69-4c4f-8480-cebae681a75b', 'Polishing IL D1 Micron (Abu-abu)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(659, '096fa2e0-079e-4aac-9466-62ad373311c9', 'Polishing QU D9 Micron (Biru)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(660, '08e52187-b383-469e-805d-45d7a96664e6', 'Polishing SAM D3 Micron (Pink)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(661, 'a59c694f-23aa-447e-a292-592a33f055f3', 'Polishing SAPO D 30 Micron (Hijau)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(662, '8bb1454c-9626-444f-bdfb-ee25fd4690bc', 'Precon 1 Core SC/APC-SC/APC 100M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(663, '9610371c-192b-4141-a2fb-341a4a7c7398', 'Precon 1 Core SC/APC-SC/APC 120M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(664, 'b28247d0-1c3f-421c-88f6-daf81b7b4197', 'Precon 1 Core SC/APC-SC/APC 200M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(665, '66a074a0-c9cb-422e-a8ea-fca5fd93fb30', 'Precon 1 Core SC/APC-SC/APC 50M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(666, '6e5d9fb4-5d0a-4d4d-afb0-17d0c5700b9f', 'Precon 1 Core SC/APC-SC/APC 75M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(667, '4f964b43-2859-4137-9043-3d725e9e6ff4', 'Precon 1 Core SC/APC-SC/UPC 200M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(668, '93cefd45-563b-442e-99d8-b933d5e486c9', 'Precon 1 Core SC/UPC-SC/UPC 150M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(669, '6a44254a-ac65-41c7-ad05-b51e605248ed', 'Precon 1 Core SC/UPC-SC/UPC 200M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(670, 'e69f3002-0491-41ae-8b75-43162db3b29e', 'Precon 1 Core SC/UPC-SC/UPC 50M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(671, 'f9f60f40-1dee-4dbc-8edf-0e1b91dd1ece', 'Precon 1 Core SC/UPC-SC/UPC 75M', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(672, 'a7c31df6-b945-4ea8-843e-33bde98ffc70', 'Protector sleeve 60mm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(673, '73551cba-bbd2-4263-a662-9d20f501bc43', 'Rack  6U', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(674, 'c3afe7fd-faff-45b3-877c-c90e93cdee73', 'Rak Besi', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(675, '05dda492-1f02-4708-a9b5-86535cb58b1d', 'Ring Kotak', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(676, '874f0460-7adb-41ca-97e2-7ad9b32afae0', 'RIVET SM/MM LC UPC/APC (3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(677, '67e9b980-232c-4007-a37f-580b3a24e8ed', 'Roset 2 Core GOC ( Tanpa Protector Sleeve&Adapter)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(678, '80335ddb-bfba-4e0c-8aa4-da13b1c38ae9', 'Roset 2 Core GOC ( Tanpa Protector Sleeve)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(679, '5ce81e75-7d20-46a0-a52b-2303129f05c8', 'Roset 2 Core Polos (Kosongan)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(680, 'b0bf3385-b784-48cc-87ed-cf820853fe3d', 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(681, '3451b54a-22ee-429b-877f-3d4cd8128e90', 'Roset 4 Core ( abu abu )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(682, 'c2219f25-2568-48b6-ad03-f9d934226cb7', 'Roset 4 Core (Tanpa Kardus )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(683, 'e33db696-9a38-4029-a264-fc422edd171f', 'Roset 4 Core ZTE (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-06-17 02:55:41'),
(684, 'e1d30add-04a6-4eb3-8d24-3b8757ec32f2', 'Roset 8 Core Polos', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(685, '9a1d0eed-e2fa-44a5-b794-b5383a8aae3e', 'Roset Faceplat 1 Core ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(686, 'c65a6918-f6da-42cd-9563-6c701c7b71c3', 'Rotary Cable stripper', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(687, 'e25831d4-d585-436d-934c-d8a3bff65818', 'S Clamp bulat ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(688, 'd78490b7-e743-42fe-ad32-2b8bb30e45a8', 'S Clamp Jepit', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(689, '1e9b09f1-5da1-45c6-aa2b-44c3e4bbc231', 'S Clamp Jepit telkom ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(690, '68c359d4-afcb-4cf3-ae7d-c7ba0242a614', 'Sarung Tangan Kain', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(691, '01966044-8fd0-49e0-9354-1e0b8616591f', 'Sarung Tangan Karet', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-09-19 20:20:56'),
(692, '33e6c87d-a476-4593-9666-2dd8eae2acaf', 'SFP 10GB', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(693, 'a0d04984-a833-46be-8c70-bafd601588bc', 'SIMPLEX STOPPER FC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(694, '838a72ce-5789-459a-a9c6-15337dd9f5fe', 'SIMPLEX STOPPER FC (2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(695, '39100a15-104a-431d-b833-768ae77395e9', 'SIMPLEX STOPPER MM LC/UPC (0,9mm) Brown', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(696, '936216c2-fecb-40a5-8ff6-4153ff5442d4', 'SIMPLEX STOPPER MM LC/UPC (2,00mm, 3,00mm) Brown', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(697, 'fa7343ab-e2e8-4864-bbf9-00d6077c4973', 'SIMPLEX STOPPER Precon SC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(698, '9bee7dd4-d774-466b-b0d0-a2be3f5ae5ee', 'SIMPLEX STOPPER SC (0,9mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(699, 'b2105b43-49d8-4317-897e-63bf07787375', 'SIMPLEX STOPPER SC (2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(700, '3fd203f0-691e-4bfa-b20d-b728c661ff05', 'SIMPLEX STOPPER SM LC/APC (0,9mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(701, '907f38bb-59cb-4921-87f0-1259284711a2', 'SIMPLEX STOPPER SM LC/APC (2,00mm, 3,00mm) Green', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(702, '70d92af8-90d8-47d9-9b62-5eb444e33e1b', 'SIMPLEX STOPPER SM LC/UPC (0,9mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(703, '42e15caf-36f7-4b28-99e1-a9e2ea579f7c', 'SIMPLEX STOPPER SM LC/UPC (2,00mm, 3,00mm) Blue', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(704, 'a80fb74b-2a5c-4647-9fb1-bf5883ecb84d', 'Slack Support 80cm', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(705, '70b3b7e6-229a-4e28-9e2b-42c5e9560bba', 'SM ADSS 48 Core SPAN 100M/ADSS-SS-100M-48B1.3/4Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(706, '75074a13-9925-4e22-8164-82a6861ecd09', 'SM AERIAL Dropcable 2 Core/GYAXC8Y-2B6A1 FIG 8', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(707, '64e18761-2e0d-45b2-b287-2386f05df086', 'SM AERIAL SCPT 12 Core/GYHC8A-12B1.3/12Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(708, '9be20941-909e-45f5-9982-966b22b91df3', 'SM AERIAL SCPT 24 Core/GYHC8A-24B1.3/24Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(709, 'b8d951e7-fbc2-4f75-afee-9fcceee6eceb', 'SM DUCT CABLE ARMORED 12 Core/GYFA 12 G652D/2Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(710, '884b5795-b501-4e1e-8975-bccf42460d5e', 'SM DUCT CABLE ARMORED 24 Core/GYFA-24B1.3/4Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(711, '25816f2b-3ee8-4b1c-a2d8-25068e6dbf9a', 'SM DUCT CABLE ARMORED 48 Core/GYFA-48B1.3 /4Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(712, 'b577d546-c42c-4e8a-9ef9-3d70d8bb28e2', 'SM DUCT CABLE ARMORED 6 Core/GYFA-6B1.3/1Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(713, '308dfdfa-509f-4039-9b96-e5ce030e3cfa', 'SM DUCT SCPT 12 Core/GYA-12B1.3/12Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(714, '0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'SM DUCT SCPT 24 Core/GYA-24B1.3/24Tube', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(715, '370a2a2b-ca31-454c-a4e3-53268b618f3c', 'SMALL CRIMP RING (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(716, '8254ecfe-9e2c-4331-a3cc-0108e97920c0', 'SMALL CRIMP RING (3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(717, 'cf02d601-1d27-4dc7-9cff-2074a7c1e6ad', 'Smart Cleaner LC (Pen Cleaner LC)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(718, 'a616c88c-4667-4a4a-88ae-fac7b11ea119', 'SOC LC/APC ( Belum Terkupas )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(719, '20bdbd72-93f3-4ed6-bece-c3d15264988b', 'SOC LC/UPC ( Belum Terkupas )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(720, 'cacd3d3b-6221-4b09-9317-2843bd9b0fc4', 'SOC SC/APC ( Belum Terkupas )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(721, 'e80b16c8-81cf-41af-8206-76edbc1e39f0', 'Splitter 1:4 Modular SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(722, '32dbe418-54fe-4e02-bed2-9946dd6b2b2c', 'Splitter 1:4 Modular SC/UPC (No Brand)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(723, 'b2a5ee77-139b-451a-abae-3f404a39fb65', 'Splitter 1:4 Modular SC/UPC (Ryutelco)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(724, 'be79e0af-e670-4695-868e-82823a7fd9de', 'Splitter 1:4 PLC SC/APC (putih) No brand', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(725, '3a47c5d9-bc89-4174-92bd-29da7a2eafc9', 'Splitter 1:4 PLC SC/UPC (Tente)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(726, 'ef0bddb0-0664-4a6c-8235-9788faf4221d', 'Splitter 1:8 Mini Modular SC/UPC (Ryutelco)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(727, '143d9fca-4e7e-49f6-8358-18dad81208a9', 'Splitter 1:8 Modular SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(728, '4dfcec97-9511-463f-b99f-459068891080', 'Splitter 1:8 Modular SC/UPC (GOC)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(729, '11cd63ff-f3bf-4548-a138-d2df2d4f9b91', 'Splitter 1:8 Modular SC/UPC No Brand', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(730, '54bba56c-437f-4495-bb54-319e5cab8fd7', 'Splitter 1:8 Modular SC/UPC SAM ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(731, 'cfb66ce2-2e83-4b40-9977-75e91cb6c98f', 'Splitter 1:8 Modular SC/UPC YOFC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(732, '98b16609-8f93-4d59-a39a-082dc50fab0e', 'Splitter 1:8 PLC SC/APC (Kuning)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(733, '0d4415fb-64fa-44c4-9853-91628a75a165', 'Splitter 1:8 PLC SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(734, '9c453b4a-cdf9-43bc-80a9-5fd2dd359bcc', 'Splitter 1:8 PLC SC/UPC (Kuning) (Ryutelco)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(735, 'b52e7a7a-51f5-47b4-9380-d0396f05b9cc', 'Splitter 1:8 PLC SC/UPC (Putih)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(736, 'b87282e1-0711-442d-9f0b-9af422ac94d0', 'Splitter 1:8 PLC SC/UPC (Rainbow)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(737, '2b99de30-4726-4025-8c81-00285e94a9c4', 'Splitter 1:8 PLC Tanpa Connector ( No Brand )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(738, '02995664-b642-4f14-9cc5-b4ca22cff563', 'Splitter 2:32 Modular SC/APC ( No Brand )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(739, 'ac62a19c-89e9-4e4b-94a3-16eb3fa3ea40', 'Splitter 2:8 Modular ( Tanpa Connector )', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(740, '48c579c9-fd72-49d0-8193-970ef5399c84', 'Splitter 2:8 Modular SC/APC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(741, '292d5c9f-c3f2-41b3-8f86-88c680b0d95e', 'Splitter 2:8 Modular SC/UPC ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(742, 'f3c741df-78f4-4e81-9c2a-b4c7ada8021b', 'Splitter 2:8 Modular Tanpa Connector ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(743, 'c91cce56-d608-4e60-924c-564ae011d0cb', 'Spray Mount ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(744, 'cfadd0c2-e5a5-4ca2-ba47-f9a83499f279', 'SPRING LC (0,9mm), 2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(745, 'a2c97e11-a34c-4929-ab5c-0db4622cd10d', 'SPRING Precon SC Semi Assembly', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(746, 'bd76bef8-460e-42f7-958e-a6b901164968', 'SPRING SC - FC (0,9mm), 2,00mm, 3,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(747, '83d144fc-4ce8-427c-81c7-d59aedfacc27', 'SPRING ST UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(748, 'ddfbac1f-f946-425a-b7c6-bba1ea8b91c6', 'Stainless Biasa', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(749, '0a97c76c-59a0-456d-8c78-9eb482cc3932', 'Stainless Mengkilat', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(750, '333cbb1a-f46e-49a1-a480-ea3ae3092f4e', 'Stick Rodding', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(751, 'bc7e4d93-bc3d-40cb-957f-441d563e6122', 'STOPPER ST UPC (2,00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(752, '851d304d-f84d-407d-9f40-27cc59148324', 'Stopping Buckle ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(753, '157e08e1-c7a3-4661-a3fa-f33f6e4c5089', 'Stopping Buckle Gigi', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(754, 'ca3b8734-416f-4c38-ae27-06aa445c4c46', 'Stripper Fis Import', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(755, '92cf5322-2901-4dd0-b873-7ba5d301e5ca', 'Stripper Fis Local', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(756, 'db8c2059-3cf8-459f-994d-5120fe1b39db', 'Suntikan 1ml', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(757, 'fa3af189-f48a-41d0-a58a-8debee4a6465', 'Suspensi ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(758, '7c159d16-c49e-4c27-8946-8ca035268f26', 'Tangga 4,4m AMG', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(759, 'caf4f611-d1e1-4675-980d-080204c9b564', 'Tangga 5,2m AMG', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(760, '245d17dc-64b3-4d78-be04-4735c932f86f', 'Tap Polishing (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(761, 'a55f11a9-6656-49fb-9b3a-11c1c9252013', 'Teflon Tube 0,9/0,6mm Ivory Colour', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(762, '1384e285-01e5-409d-ab47-11eafca2dd3d', 'Testphone Chinoe/Microtest', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(763, 'e32b3f90-a6e7-4257-910a-14c418f1f341', 'Tinta Stempel', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(764, 'c4ae4929-d6ea-43cb-8772-aec41dc457da', 'Tissue 1000gr', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(765, 'fa4f5543-e1b9-419e-85da-10b84b572c10', 'Tissue Kimtech', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(766, '5b35dc17-12ad-41a0-beaa-404ab1187df3', 'TRANSPARENT TUBE (0.9mm, 2,00mm, 3.00mm)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(767, '4b4ae981-c88c-479a-9f72-11c2837cbb4f', 'UCU 801', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(768, 'dd6a729f-e71f-468c-a249-7f7fdaf0c169', 'Velcro', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(769, 'c49ffd8c-556a-47bf-91d0-76e1dca5b182', 'Visual Fault Locator AMG', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(770, '4d6797ab-3ea0-4545-afc8-4643a5e75c4f', 'Visual Fault Locator JW 3105A', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(771, '5f8c77ad-966d-47c6-b3c6-e8462e7b18e9', 'Wall Mount Rack ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(772, '6d3ad0a2-5469-4ecf-b038-80f8e769ebc1', 'Wire Tracker/Tone Checker', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(773, '1b8bae64-b054-484e-a9e8-bb1595ca89a7', 'Wrapping  Kecil uk.5 x 250m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(774, '4e2fd3bb-cd3e-4ecb-9da6-745b145f57ce', 'Wrapping  Panjang uk.50 x 150m', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(775, '49015b79-c8d7-4440-8223-515b21b026c6', 'Wrapping Besar', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(776, 'd9ea8164-aff7-4501-b2b3-71a7592e7dff', 'Wrapping Bubble Bening', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(777, 'e863ed89-530f-4632-bee1-154d6d2ed205', 'Wrapping Bubble Hitam', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(778, '3d9cb0a3-cb54-4a50-bd20-ab7243a88a2b', 'Wrapping Sedang', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(779, '04d12107-3e94-44ec-8059-2b577eae843c', 'X-Frame 80X90cm 3mm Model Tekuk', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(780, '5419c6c1-c02b-42a1-99d7-331514ce735e', 'Young Jin ', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(781, '4179d80b-f6c1-402a-8d86-76ce23fe9f86', 'Zig Housing FC/APC  (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(782, 'ff311236-4679-4d0e-8445-711b9e97879d', 'Zig Housing FC/UPC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(783, '5d33ef5c-fd87-4770-9051-e78a193a7aa2', 'Zig Housing FC/UPC  (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(784, '34eff310-0251-45ad-a357-0bbd38c94fed', 'Zig Housing LC/APC  (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(785, '5a75ace8-9408-4b6a-b5bf-f9a521259c77', 'Zig Housing LC/UPC   (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(786, 'cac3b4e2-b505-411b-a2c6-d213e4a37ab3', 'Zig Housing LC/UPC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(787, '4f062ee3-75db-4366-8b4d-a851227c4a43', 'Zig Housing SC/APC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(788, '50fb2356-968e-4d26-9a9d-92cc27f5e291', 'Zig Housing SC/APC  (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(789, '45e3a2e9-41af-4ba9-96d4-b07ec1fe038b', 'Zig Housing SC/UPC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(790, '6cca0b3f-588c-42f9-b0b4-e09aa264bf17', 'Zig Housing SC/UPC  (Mesin Mecanical)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(791, '7fbc00c3-fb42-46ea-ae0c-309b5edfeefa', 'Zig LC/UPC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(792, 'a35f643f-add6-4d0a-8be9-9744f10374bc', 'Zig SC/APC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(793, 'd3829fea-5f09-45e8-90c6-16b628e6df9f', 'Zig SC/UPC  (Mesin Manual)', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-05-16 07:14:11', '2020-05-16 07:14:11'),
(796, '91533b75-3486-44b5-91fa-6d3f90f2810b', 'Kabel MM OM1 DX 2,0mm', 'Gudang Utama', '2000.00', '0.00', '0.00', '2020-05-18 02:46:19', '2020-05-18 02:46:19'),
(797, '23093902-3264-44f2-9d7e-08385b8ebbc9', 'Cable MM OM1 DX (3,0mm)', 'Gudang Utama', '2000.00', '0.00', '0.00', '2020-05-18 03:06:38', '2020-05-18 03:06:38'),
(798, '146bd875-5e1f-4af0-a998-35ed8cd2b520', 'Clousure Duct 12/24 Core', 'Gudang Utama', '10.00', '0.00', '0.00', '2020-05-18 03:32:22', '2020-05-18 09:13:21'),
(803, '0f8acf9f-ab7c-4187-9060-497c3f6702a0', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '10.00', '0.00', '0.00', '2020-06-17 02:42:55', '2020-06-19 10:50:45'),
(804, '3fd87551-f61c-4b63-9e35-a2ee90cf601d', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 25m', 'Gudang Utama', '10.00', '0.00', '0.00', '2020-06-17 02:47:34', '2020-06-19 10:50:45'),
(805, '68c8937d-9b0f-4dfb-aa2a-d76efe01bb6a', 'Precon 1 Core SC/UPC-LC/UPC 100m', 'Gudang Utama', '10.00', '0.00', '0.00', '2020-06-17 02:53:20', '2020-06-17 02:53:20'),
(807, '85d7b123-b356-40e7-ae8b-4f455384e871', 'Connector MM ST/PC (0,9mm)', 'Gudang Utama', '1000.00', '0.00', '0.00', '2020-07-10 05:28:01', '2020-07-10 05:28:01'),
(814, '1f323518-b762-4895-ab52-55c2aa481e7c', 'Ferulle 250 uf ST PC', 'Gudang Utama', '100.00', '0.00', '0.00', '2020-07-13 10:09:13', '2020-07-13 10:09:13'),
(816, '5d9aaffa-33c0-11ea-aec2-2e728ce88125', 'AC 1/2PK', 'Gudang Produksi', '2.00', '0.00', '0.00', '2020-09-05 16:28:13', '2020-09-05 16:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming` decimal(10,2) DEFAULT NULL,
  `outgoing` decimal(10,2) DEFAULT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
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
(48, '2014_10_00_000001_add_group_column_on_settings_table', 24),
(54, '2020_01_06_235627_create_user_warehouses_table', 27),
(58, '2019_09_07_211518_create_inventories_table', 29),
(64, '2019_09_30_225904_create_invoices_table', 32),
(65, '2020_01_15_235803_create_delivery_items_table', 32),
(66, '2020_01_17_200048_create_references_table', 33),
(67, '2020_01_17_230338_create_receive_purchases_table', 34),
(68, '2020_01_17_230354_create_receive_purchase_items_table', 34),
(70, '2020_01_18_111930_create_invoices_table', 36),
(74, '2020_01_23_012028_create_returs_table', 37),
(75, '2020_01_23_012035_create_retur_items_table', 37),
(76, '2020_01_23_022055_create_retur_reasons_table', 38),
(79, '2019_09_07_212548_create_product_boms_table', 39),
(80, '2019_09_07_211754_create_inventory_movements_table', 40),
(81, '2020_01_13_041442_create_payments_table', 41),
(82, '2020_01_18_103842_create_payment_items_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `models_retur_items`
--

CREATE TABLE `models_retur_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `retur_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_qty` decimal(50,2) NOT NULL,
  `retur_qty` decimal(50,2) NOT NULL,
  `uom_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_retur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'iteos\\Models\\User', '24d21373-b462-4888-8d27-d365c33fbf6a'),
(11, 'iteos\\Models\\User', '25b76385-8f8d-4422-a62e-21c671bfcaec'),
(1, 'iteos\\Models\\User', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434'),
(1, 'iteos\\Models\\User', '589f13c5-f185-4bb2-95d8-c62b12c8271d'),
(4, 'iteos\\Models\\User', '74718047-dc5d-4f47-87fc-8db9e4fdb527'),
(1, 'iteos\\Models\\User', '820cbe25-baf5-4d2b-b877-9ce7fdffdc21'),
(6, 'iteos\\Models\\User', '994a52f5-285e-4401-95b2-166cc353bb65'),
(7, 'iteos\\Models\\User', 'a7acf627-9108-44c0-a028-2d9bf7829108'),
(1, 'iteos\\Models\\User', 'bb536994-ada3-4caa-b97b-e412dc2cc882'),
(1, 'iteos\\Models\\User', 'c7e50632-3efc-4cff-99fd-2a39dee275b2'),
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
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` smallint(6) NOT NULL,
  `contact_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_no` smallint(6) DEFAULT NULL,
  `sales_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` decimal(50,2) NOT NULL,
  `amount` decimal(50,2) NOT NULL,
  `tax_total` decimal(50,2) DEFAULT NULL,
  `delivery_cost` decimal(50,2) NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_received` date DEFAULT NULL,
  `payment_made` date DEFAULT NULL,
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
  `uom_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `subtotal` decimal(50,2) NOT NULL,
  `tax_amount` decimal(50,2) DEFAULT NULL,
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
(1, 'Transfer Bank', 'eko', NULL, '2020-01-05 19:42:56', '2020-01-05 19:42:56'),
(2, 'Tunai', 'eko', NULL, '2020-04-13 18:16:02', '2020-04-13 18:16:02');

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
(3, '14 Hari', 'eko', NULL, '2020-01-05 19:43:18', '2020-01-05 19:43:18'),
(4, '1 bulan', 'Dina', NULL, '2020-05-18 07:43:12', '2020-05-18 07:43:12'),
(5, '3 bulan', 'Dina', NULL, '2020-05-18 07:46:38', '2020-05-18 07:46:38'),
(6, '6 bulan', 'Dina', NULL, '2020-05-18 07:53:56', '2020-05-18 07:53:56');

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
  `product_barcode` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stock` decimal(50,2) NOT NULL,
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
('01966044-8fd0-49e0-9354-1e0b8616591f', 'STKT', 'Sarung Tangan Karet', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('020de15a-b2fe-4e7e-9bd3-d9c6f77f03ea', 'PSD325', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('02995664-b642-4f14-9cc5-b4ca22cff563', 'S232MOSAN', 'Splitter 2:32 Modular SC/APC ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('037a6937-94e8-4bcb-a715-17faa184581b', 'PSS224', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0497a34d-138a-43ea-8efc-4dad2b77120d', 'PSD224', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('04d12107-3e94-44ec-8059-2b577eae843c', 'XFR8090F', 'X-Frame 80X90cm 3mm Model Tekuk', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('05dda492-1f02-4708-a9b5-86535cb58b1d', 'RKTK', 'Ring Kotak', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('05e0a851-c660-43de-ab03-8d23c5fd1485', 'PG2023', 'Plastik Gambar 20 x 23', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('06de61c9-219f-4f09-b1f1-b9b0cf936594', 'PSD238', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('06e65567-8dbd-4d11-a22e-009de1c430d1', 'PSS309', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('08e52187-b383-469e-805d-45d7a96664e6', 'SAM', 'Polishing SAM D3 Micron (Pink)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0918b468-c972-4de2-8fec-629505cacd2e', 'PSD323', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('096fa2e0-079e-4aac-9466-62ad373311c9', 'QU', 'Polishing QU D9 Micron (Biru)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'DS242424', 'SM DUCT SCPT 24 Core/GYA-24B1.3/24Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0a97c76c-59a0-456d-8c78-9eb482cc3932', 'STLSS', 'Stainless Mengkilat', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0b6a929a-c547-4272-bfac-de5fe228809e', 'PFPSSA', 'PLUG FRAME Precon SC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0bb2eb56-298c-48b4-ad5f-654f1fd16303', 'PSS331', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0bbcfa85-35a7-49a8-adcf-d871ef6f7502', 'TSS207', 'Pigtail SM SX (2,0mm) SC/UPC 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0c8f8e6a-5ed6-4813-ac25-1c76a48a39a3', 'PSS326', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0d4415fb-64fa-44c4-9853-91628a75a165', 'S18PLSU', 'Splitter 1:8 PLC SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0da8343b-1b64-4ec3-b712-f295b0736934', 'TMO2S205', 'Pigtail MM OM2 SX (2,0mm) SC/PC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0e2cf492-348d-48cd-aa12-27f0f73eb22a', 'PSS206', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('0f8acf9f-ab7c-4187-9060-497c3f6702a0', '10000999', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '10.00', '20000.00', '54000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Dimas', NULL, '2020-06-17 02:42:55', '2020-06-17 02:42:55'),
('11cd63ff-f3bf-4548-a138-d2df2d4f9b91', 'S18MOSUN', 'Splitter 1:8 Modular SC/UPC No Brand', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('11e3349f-463f-44cf-b0f9-4c4bdc3b01ea', 'TSS203', 'Pigtail SM SX (2,0mm) LC/UPC 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1384e285-01e5-409d-ab47-11eafca2dd3d', 'TPCHMIC', 'Testphone Chinoe/Microtest', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('13dc56cb-08d2-44aa-9fab-a236d47ec7a1', 'PSD232', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('143d9fca-4e7e-49f6-8358-18dad81208a9', 'S18MOSUP', 'Splitter 1:8 Modular SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('146bd875-5e1f-4af0-a998-35ed8cd2b520', 'CD1224CPL', 'Clousure Duct 12/24 Core', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '10.00', '70000.00', '90000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'Dimas', NULL, '2020-05-18 03:32:22', '2020-05-18 03:32:22'),
('147b6863-bd86-4283-88b6-d1907cffb225', 'PSD242', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('157e08e1-c7a3-4661-a3fa-f33f6e4c5089', 'STPBCG', 'Stopping Buckle Gigi', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('15a7f957-d522-4972-9c10-713836bba2db', 'PSS318', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('16b187f7-5d3d-4b64-b417-980d0d34fe4d', 'PSS243', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('185843a9-c0da-43fb-a309-dc1d1e31ab5b', 'PSS311', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('18747432-0693-46b7-9c83-441b2ea3300b', 'PSD244', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('18b24684-a540-4af4-b93f-80bc155fd32f', 'PSD324', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('18d29252-8539-49da-9f99-f1014351fc15', 'ADS', 'Polishing FINAL ADSS 0,005 Micron (Bening)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('19449b46-650d-448f-b332-115f46e479e4', 'TSS205', 'Pigtail SM SX (2,0mm) SC/APC 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('194cf507-2fb2-48ee-adb1-4cb921d6fb81', 'TSS302', 'Pigtail SM SX (3,0mm) LC/UPC 10m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1b8bae64-b054-484e-a9e8-bb1595ca89a7', 'WK250', 'Wrapping  Kecil uk.5 x 250m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1ddb3c57-a474-4b44-94c9-52223a03d955', 'PSD327', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1deb7547-5cfc-4b7c-b13e-f494ffd31b40', 'P4030', 'Plastik Clip 40 X 30', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1e9b09f1-5da1-45c6-aa2b-44c3e4bbc231', 'SCLJT', 'S Clamp Jepit telkom ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('1f323518-b762-4895-ab52-55c2aa481e7c', '20000792', 'Ferulle 250 uf ST/PC', 1, 1, NULL, '79acefdd-92bb-4079-99c3-ba9654250d56', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'Mirza Rizaldy', 'Mirza Rizaldy', '2020-07-13 10:09:13', '2020-07-13 10:09:59'),
('2050a705-66c2-467d-8bac-772b6b84f404', 'TSS201', 'Pigtail SM SX (2,0mm) FC/APC 1,5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('20bdbd72-93f3-4ed6-bece-c3d15264988b', 'SOLUB', 'SOC LC/UPC ( Belum Terkupas )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('219403ac-7bb9-45c7-991c-af386a16e669', 'PSS310', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('220c203f-e9f0-4e8c-ad9b-d025efa4917f', 'TSD303', 'Pigtail SM DX (3,0mm) SC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('23093902-3264-44f2-9d7e-08385b8ebbc9', 'CMO1D3PL', 'Cable MM OM1 DX (3,0mm)', 2, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '2000.00', '10000.00', '50000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'Dimas', NULL, '2020-05-18 03:06:38', '2020-05-18 03:06:38'),
('2360c45a-a0ee-418c-b405-46cc6dedd867', 'TSS908', 'Pigtail SM SX (0,9mm) SC/APC 2m Oren', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('23c73d77-f048-42bf-a361-15a06fcc5fad', 'CP', 'Polishing FINAL CP 0,005 Micron (Bening)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('241e72e5-130e-4ca2-b086-885737a524cc', 'PSS232', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('245d17dc-64b3-4d78-be04-4735c932f86f', 'TPMMAN', 'Tap Polishing (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('25816f2b-3ee8-4b1c-a2d8-25068e6dbf9a', 'DCA48484', 'SM DUCT CABLE ARMORED 48 Core/GYFA-48B1.3 /4Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('25c7edab-183f-4519-92ee-a54070a4d4a4', 'PSS317', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('25e4e0f1-3a01-4ee5-b26d-24825d2cd7e0', 'PSS204', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2794a09f-1d92-4532-87bd-fa0d86970a27', 'TSD204', 'Pigtail SM DX (2,0mm) SC/UPC 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('27acb4e1-64b8-47a2-b29f-4c52d0f4c1bc', 'PSD322', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('28537981-4d1f-40b7-afc2-d09b3aaa1703', 'PSS231', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('292d5c9f-c3f2-41b3-8f86-88c680b0d95e', 'S28MOSU', 'Splitter 2:8 Modular SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2a2ad83b-6255-4edc-90b4-6be9f1e4ccd0', 'PSS219', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2a32aeab-59d4-4947-9012-dd0b7652ba75', 'PSS220', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2af3440d-96dc-4628-bdb5-e3221ee35870', 'PG1818', 'Plastik Gambar 18 x 18', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2b99de30-4726-4025-8c81-00285e94a9c4', 'S18PLWCN', 'Splitter 1:8 PLC Tanpa Connector ( No Brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2beb3665-fc2d-4fbc-a69d-9dc8103d2a06', 'PSD223', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2bebb89a-c746-415a-a083-27efce0213f4', 'TSS202', 'Pigtail SM SX (2,0mm) FC/UPC 1,5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2c394318-71df-4569-8fd9-28ce6d577a0e', 'PSS230', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2c45b723-c7b3-4959-862a-17c865c03031', 'PSS207', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2c7687c4-847b-422c-9504-4db9293201d5', 'P5550', 'Plastik Clip 55 X 50', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2cd98f26-3b69-4c4f-8480-cebae681a75b', 'IL', 'Polishing IL D1 Micron (Abu-abu)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2deb5538-480e-4bf2-b572-8efce84a46ce', 'PSS308', 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2dedb15b-c44a-44db-8ab7-7213ae1f4224', 'PSS329', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2e7a63aa-49df-49b4-a5d4-52c881fdd5dd', 'TSD304', 'Pigtail SM DX (3,0mm) SC/UPC 2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('2ecb6a77-3708-4eb3-ab82-3e89ac70dea7', 'TSS305', 'Pigtail SM SX (3,0mm) SC/UPC 3,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('302e9d8b-38ae-436c-a695-a9db956f503f', 'PSS210', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('308dfdfa-509f-4039-9b96-e5ce030e3cfa', 'DS121212', 'SM DUCT SCPT 12 Core/GYA-12B1.3/12Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('32462549-e3c3-4406-9c70-0c5ad8c82d52', 'PSD245', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('32a3b6ce-d7fc-4814-8ffb-7dc3ca1919fb', 'PSD239', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('32dbe418-54fe-4e02-bed2-9946dd6b2b2c', 'S14MOSUN', 'Splitter 1:4 Modular SC/UPC (No Brand)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3301f8de-dc15-4b38-8542-008da5228ffb', 'PSD319', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('333cbb1a-f46e-49a1-a480-ea3ae3092f4e', 'SRDG', 'Stick Rodding', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('33e6c87d-a476-4593-9666-2dd8eae2acaf', 'SFP10G', 'SFP 10GB', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3451b54a-22ee-429b-877f-3d4cd8128e90', 'R4CGR', 'Roset 4 Core ( abu abu )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('34eff310-0251-45ad-a357-0bbd38c94fed', 'ZLAMC', 'Zig Housing LC/APC  (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('350e590d-80a7-4cee-a0d8-98d1cfa3c1bc', 'PSD240', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('36b9f4f9-499b-4239-b2ce-661ec6731660', 'PSS247', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('370a2a2b-ca31-454c-a4e3-53268b618f3c', 'SCR2', 'SMALL CRIMP RING (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3796ab98-805e-4d21-81ab-f2bca5b5c948', 'PSS250', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('39100a15-104a-431d-b833-768ae77395e9', 'SSMLU9', 'SIMPLEX STOPPER MM LC/UPC (0,9mm) Brown', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3979288c-f896-43d4-944f-1eff5c09762c', 'TSS301', 'Pigtail SM SX (3,0mm) FC/UPC 5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3a47c5d9-bc89-4174-92bd-29da7a2eafc9', 'S14PLSUT', 'Splitter 1:4 PLC SC/UPC (Tente)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3b178ef1-8a34-44ba-9f41-766d452f4b43', 'PSD237', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3b219596-c0d5-4cfd-a37a-4f0b2b99bdd2', 'PSS216', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3d7deffc-073c-40f9-bf7e-94c8cf5381ba', 'PSS244', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3d9cb0a3-cb54-4a50-bd20-ab7243a88a2b', 'WSD', 'Wrapping Sedang', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3fd203f0-691e-4bfa-b20d-b728c661ff05', 'SSSLA9', 'SIMPLEX STOPPER SM LC/APC (0,9mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('3fd87551-f61c-4b63-9e35-a2ee90cf601d', '10000998', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '10.00', '25000.00', '60000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Dimas', NULL, '2020-06-17 02:47:34', '2020-06-17 02:47:34'),
('4179d80b-f6c1-402a-8d86-76ce23fe9f86', 'ZFA', 'Zig Housing FC/APC  (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('419c1402-e5d7-42ed-8f23-f7012d862ea6', 'PSD231', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('42e15caf-36f7-4b28-99e1-a9e2ea579f7c', 'SSSLU23', 'SIMPLEX STOPPER SM LC/UPC (2,00mm, 3,00mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('43c48fab-f3f5-4e5f-88b4-5599fb41bc32', 'PSS323', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('44244f8a-ac13-4d8c-b0cc-303db8777970', 'P135', 'Plastik 13,5 x 14,5', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('45e3a2e9-41af-4ba9-96d4-b07ec1fe038b', 'ZSUMN', 'Zig Housing SC/UPC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('47359c6c-5efd-4d1b-85ca-84f24e1fe9f2', 'PSD331', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('47aa3c3c-56ec-4f4c-a3ff-9544cf4ce9cf', 'PSS225', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('48c579c9-fd72-49d0-8193-970ef5399c84', 'S28MOSA', 'Splitter 2:8 Modular SC/APC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('49015b79-c8d7-4440-8223-515b21b026c6', 'WB', 'Wrapping Besar', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('494325a6-68bc-4d88-9dd8-472f8901a6a2', 'PSD308', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4a358603-b661-4320-ad99-72c870e754cb', 'TSS904', 'Pigtail SM SX (0,9mm) LC/UPC 1,5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4b4ae981-c88c-479a-9f72-11c2837cbb4f', 'U801', 'UCU 801', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4c01a6b8-4401-4be3-8b11-48410471006a', 'TMO2S207', 'Pigtail MM OM2 SX (2,0mm) SC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4cbef0bc-45f7-4ca7-ba4e-371ae9c82703', 'PSS236', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4d0f2ae0-bc50-407b-ac2d-ee19f2928535', 'P1818', 'Plastik 18 x 18', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4d6797ab-3ea0-4545-afc8-4643a5e75c4f', 'VFALOJ', 'Visual Fault Locator JW 3105A', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4dfcec97-9511-463f-b99f-459068891080', 'S18MOSUG', 'Splitter 1:8 Modular SC/UPC (GOC)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4e2fd3bb-cd3e-4ecb-9da6-745b145f57ce', 'WP150', 'Wrapping  Panjang uk.50 x 150m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4eb07b52-e87d-4a9d-b0b6-359ea6839eca', 'PSD320', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4f062ee3-75db-4366-8b4d-a851227c4a43', 'ZSAMN', 'Zig Housing SC/APC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('4f964b43-2859-4137-9043-3d725e9e6ff4', 'P1C006', 'Precon 1 Core SC/APC-SC/UPC 200M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('50fb2356-968e-4d26-9a9d-92cc27f5e291', 'ZSAMC', 'Zig Housing SC/APC  (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('52b06135-8753-49a0-9ea9-5cb4c708ef5b', 'PSS203', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('52cfc1d9-ecc1-4cc7-a411-58d0b8284060', 'PSS305', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('53dff306-fa2a-4379-b920-431156ac105b', 'TSS912', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5419c6c1-c02b-42a1-99d7-331514ce735e', 'YJIN', 'Young Jin ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('54bba56c-437f-4495-bb54-319e5cab8fd7', 'S18MOSUS', 'Splitter 1:8 Modular SC/UPC SAM ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5636ef6f-a6a1-4ec9-a1c1-6a5f97d0296b', 'PSD233', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('57023c1f-6666-4b23-a42a-5f7059f95f68', 'PSS253', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('58d514e2-01a2-4659-aed7-5ab96c3c0814', 'PSD332', 'Patchcord SM DX (3,0mm) SC/UPC-ST/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('59c29221-c993-4ece-a377-71eb3bf9ddbc', 'PSD318', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5a75ace8-9408-4b6a-b5bf-f9a521259c77', 'ZLUMC', 'Zig Housing LC/UPC   (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5b35dc17-12ad-41a0-beaa-404ab1187df3', 'TT', 'TRANSPARENT TUBE (0.9mm, 2,00mm, 3.00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5bfef3b3-dffc-4011-afc8-d89bf8af1527', 'PSS228', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5c321c72-30ca-4967-a602-57802d122c9b', 'PSD235', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 35m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5ce81e75-7d20-46a0-a52b-2303129f05c8', 'R2CPK', 'Roset 2 Core Polos (Kosongan)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d0a2548-06cb-4abe-be3d-9ca16dd799f3', 'PSD317', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d33ef5c-fd87-4770-9051-e78a193a7aa2', 'ZFUMC', 'Zig Housing FC/UPC  (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9aaffa-33c0-11ea-aec2-2e728ce88125', 'AC05P', 'AC 1/2PK', 7, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '2.00', '2500000.00', '2500000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-05-16 07:31:02'),
('5d9ab270-33c0-11ea-aec2-2e728ce88125', 'AC10P', 'AC 1PK', 7, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-05-16 09:20:35'),
('5d9ab3d8-33c0-11ea-aec2-2e728ce88125', 'AC50P', 'AC 5PK', 7, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-05-16 09:20:51'),
('5d9ab536-33c0-11ea-aec2-2e728ce88125', 'ADB', 'Adapter Dustcaps Black', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ac882-33c0-11ea-aec2-2e728ce88125', 'ADU', 'Adapter Dustcaps Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9aca26-33c0-11ea-aec2-2e728ce88125', 'ADA', 'Adapter Dustcaps Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9acb70-33c0-11ea-aec2-2e728ce88125', 'AMDLP', 'Adapter MM DX LC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9acca6-33c0-11ea-aec2-2e728ce88125', 'AMSCP', 'Adapter MM SX SC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 'ASA', 'Adapter SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ae448-33c0-11ea-aec2-2e728ce88125', 'ASU', 'Adapter SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 'ASUAS', 'Adapter SC/UPC Auto Shutter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 'ASLU', 'Adapter SM LC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b0464-33c0-11ea-aec2-2e728ce88125', 'ASLUD', 'Adapter SM LC/UPC DX', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b05ea-33c0-11ea-aec2-2e728ce88125', 'ASSABD', 'Adapter SM SC/APC (BESI) (Dimika)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b0734-33c0-11ea-aec2-2e728ce88125', 'ASSABDT', 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b0874-33c0-11ea-aec2-2e728ce88125', 'ASSUB', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b09aa-33c0-11ea-aec2-2e728ce88125', 'ASSUH', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b0d60-33c0-11ea-aec2-2e728ce88125', 'ASSUD', 'Adapter SM SC/UPC DX', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 'ASSUP', 'Adapter SM SC/UPC PAZ ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1008-33c0-11ea-aec2-2e728ce88125', 'ASTU', 'Adapter ST/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b113e-33c0-11ea-aec2-2e728ce88125', 'APK', 'Alat Potong Kertas (Paper Cutter)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b127e-33c0-11ea-aec2-2e728ce88125', 'AL70', 'Alkohol 70%', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b13b4-33c0-11ea-aec2-2e728ce88125', 'AL96', 'Alkohol 96%', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b16e8-33c0-11ea-aec2-2e728ce88125', 'AS1500', 'Amplas Sheet 1500Cw', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1832-33c0-11ea-aec2-2e728ce88125', 'AS150', 'Amplas Sheet 150Cw', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1968-33c0-11ea-aec2-2e728ce88125', 'BL123', 'Baut L Ukuran 12x3mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 'BL163', 'Baut L Ukuran 16x3mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 'BCR2', 'BIG CRIMP RING (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b1e36-33c0-11ea-aec2-2e728ce88125', 'BCR3', 'BIG CRIMP RING (3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 'BSFA9', 'BOOT SM FC APC (0,9mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3146-33c0-11ea-aec2-2e728ce88125', 'BSFA2', 'BOOT SM FC APC (2,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b327c-33c0-11ea-aec2-2e728ce88125', 'BSFA3', 'BOOT SM FC APC (3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3632-33c0-11ea-aec2-2e728ce88125', 'BSLA9', 'BOOT SM LC/APC (0,9mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b379a-33c0-11ea-aec2-2e728ce88125', 'BSLA23', 'BOOT SM LC/APC (2,00mm - 3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b38d0-33c0-11ea-aec2-2e728ce88125', 'BSLU9', 'BOOT SM LC/UPC (0,9mm) Blue/White', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3a10-33c0-11ea-aec2-2e728ce88125', 'BSLU23', 'BOOT SM LC/UPC (2,00mm, 3,00mm) Blue/White', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3b46-33c0-11ea-aec2-2e728ce88125', 'BSSA9', 'BOOT SM SC/APC (0,9mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 'BSSA2', 'BOOT SM SC/APC (2,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b3f24-33c0-11ea-aec2-2e728ce88125', 'BSSA3', 'BOOT SM SC/APC (3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4244-33c0-11ea-aec2-2e728ce88125', 'BSSU9', 'BOOT SM SC/UPC (0,9mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b43a2-33c0-11ea-aec2-2e728ce88125', 'BSSU2', 'BOOT SM SC/UPC (2,00mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b44e2-33c0-11ea-aec2-2e728ce88125', 'BSSU3', 'BOOT SM SC/UPC (3,00mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4618-33c0-11ea-aec2-2e728ce88125', 'BSFU9', 'BOOT SM/MM FC UPC (0,9mm) Black/Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b474e-33c0-11ea-aec2-2e728ce88125', 'BSFU2', 'BOOT SM/MM FC UPC (2,00mm) Black/Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9b488e-33c0-11ea-aec2-2e728ce88125', 'BSFU3', 'BOOT SM/MM FC UPC (3,00mm) Black', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4b90-33c0-11ea-aec2-2e728ce88125', 'BSU9', 'BOOT ST UPC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 'BSU2', 'BOOT ST UPC (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4e38-33c0-11ea-aec2-2e728ce88125', 'BOH', 'Box ONT Huawei', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 'BS18E', 'Box Splitter 1:8 (Kosongan)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b50b8-33c0-11ea-aec2-2e728ce88125', 'BS18A', 'Box Splitter 1:8 (Splitter Plc 1:8 SC/APC)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b51ee-33c0-11ea-aec2-2e728ce88125', 'BCLU8112', 'Bundle Cable LC/UPC 8F 1 sisi 12m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b5536-33c0-11ea-aec2-2e728ce88125', 'BCLU8119', 'Bundle Cable LC/UPC 8F 1 sisi 19m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b5676-33c0-11ea-aec2-2e728ce88125', 'BCLU8120', 'Bundle Cable LC/UPC 8F 1 sisi 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b57b6-33c0-11ea-aec2-2e728ce88125', 'BCLU8124', 'Bundle Cable LC/UPC 8F 1 sisi 24m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b58ec-33c0-11ea-aec2-2e728ce88125', 'BCLU8125', 'Bundle Cable LC/UPC 8F 1 sisi 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b5aae-33c0-11ea-aec2-2e728ce88125', 'BCLU8126', 'Bundle Cable LC/UPC 8F 1 sisi 26m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b5c16-33c0-11ea-aec2-2e728ce88125', 'BCLU8138', 'Bundle Cable LC/UPC 8F 1 sisi 38m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b5efa-33c0-11ea-aec2-2e728ce88125', 'BCSU8110', 'Bundle Cable SC/UPC 8F 1 sisi 10m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6058-33c0-11ea-aec2-2e728ce88125', 'BCSU8111', 'Bundle Cable SC/UPC 8F 1 sisi 11m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6198-33c0-11ea-aec2-2e728ce88125', 'BCSU8112', 'Bundle Cable SC/UPC 8F 1 sisi 12m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b62ce-33c0-11ea-aec2-2e728ce88125', 'BCSU8113', 'Bundle Cable SC/UPC 8F 1 sisi 13m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6404-33c0-11ea-aec2-2e728ce88125', 'BCSU8114', 'Bundle Cable SC/UPC 8F 1 sisi 14m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b653a-33c0-11ea-aec2-2e728ce88125', 'BCSU8115', 'Bundle Cable SC/UPC 8F 1 sisi 15m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6828-33c0-11ea-aec2-2e728ce88125', 'BCSU8116', 'Bundle Cable SC/UPC 8F 1 sisi 16m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b699a-33c0-11ea-aec2-2e728ce88125', 'BCSU8117', 'Bundle Cable SC/UPC 8F 1 sisi 17m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6ada-33c0-11ea-aec2-2e728ce88125', 'BCSU8118', 'Bundle Cable SC/UPC 8F 1 sisi 18m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6c06-33c0-11ea-aec2-2e728ce88125', 'BCSU8119', 'Bundle Cable SC/UPC 8F 1 sisi 19m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 'BCSU8120', 'Bundle Cable SC/UPC 8F 1 sisi 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b7048-33c0-11ea-aec2-2e728ce88125', 'BCSU8121', 'Bundle Cable SC/UPC 8F 1 sisi 21m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b71ba-33c0-11ea-aec2-2e728ce88125', 'BCSU8122', 'Bundle Cable SC/UPC 8F 1 sisi 22m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8588-33c0-11ea-aec2-2e728ce88125', 'BCSU8123', 'Bundle Cable SC/UPC 8F 1 sisi 23m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b86fa-33c0-11ea-aec2-2e728ce88125', 'BCSU8124', 'Bundle Cable SC/UPC 8F 1 sisi 24m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8830-33c0-11ea-aec2-2e728ce88125', 'BCSU8125', 'Bundle Cable SC/UPC 8F 1 sisi 25m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8970-33c0-11ea-aec2-2e728ce88125', 'BCSU8127', 'Bundle Cable SC/UPC 8F 1 sisi 27m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 'BCSU8128', 'Bundle Cable SC/UPC 8F 1 sisi 28m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 'BCSU8140', 'Bundle Cable SC/UPC 8F 1 sisi 40m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b8eca-33c0-11ea-aec2-2e728ce88125', 'BCSU8142', 'Bundle Cable SC/UPC 8F 1 sisi 42m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b946a-33c0-11ea-aec2-2e728ce88125', 'BCSU8155', 'Bundle Cable SC/UPC 8F 1 sisi 55m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b95fa-33c0-11ea-aec2-2e728ce88125', 'BCSU8105', 'Bundle Cable SC/UPC 8F 1 sisi 5m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9744-33c0-11ea-aec2-2e728ce88125', 'BCSU8160', 'Bundle Cable SC/UPC 8F 1 sisi 60m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9884-33c0-11ea-aec2-2e728ce88125', 'BCSU8165', 'Bundle Cable SC/UPC 8F 1 sisi 65m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 'BCSU8107', 'Bundle Cable SC/UPC 8F 1 sisi 7m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 'BCSU8108', 'Bundle Cable SC/UPC 8F 1 sisi 8m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 'BCSU8109', 'Bundle Cable SC/UPC 8F 1 sisi 9m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 'BCSU8140', 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba068-33c0-11ea-aec2-2e728ce88125', 'BCSU8160', 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 'BC122SL10', 'Bundle Core 12C 2 sisi SC-LC 10m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba2de-33c0-11ea-aec2-2e728ce88125', 'BC28SS05', 'Bundle Core 2 Sisi 8c SC-SC 5m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 'CTRS2', 'C TYPE RING ST UPC (2,00mm)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba734-33c0-11ea-aec2-2e728ce88125', 'KDCP', 'Cable Dropcore Putih ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ba946-33c0-11ea-aec2-2e728ce88125', 'CMWC1U', 'Cable Manager W/Cover 1U', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9baacc-33c0-11ea-aec2-2e728ce88125', '', 'Cable MM OM1 SX (3,0mm)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bac0c-33c0-11ea-aec2-2e728ce88125', 'CM2D2LSO', 'Cable MM OM2 DX (2,0mm) LSZH Orange', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bae00-33c0-11ea-aec2-2e728ce88125', '', 'Cable MM OM2 DX (3,0mm)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bb116-33c0-11ea-aec2-2e728ce88125', 'CMS9O', 'Cable MM OM2 SX (0,9mm) Orange', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bb27e-33c0-11ea-aec2-2e728ce88125', 'CMS9OI', 'Cable MM OM2 SX (0,9mm) Orange Import', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bb3be-33c0-11ea-aec2-2e728ce88125', '', 'Cable MM OM2 SX (3,0mm)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bb4f4-33c0-11ea-aec2-2e728ce88125', '', 'Cable MM OM2 SX (2,0mm)', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9bb724-33c0-11ea-aec2-2e728ce88125', 'CM3D2A', 'Cable MM OM3 DX (2,0mm) Aqua', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c752e-33c0-11ea-aec2-2e728ce88125', 'CM3D2AG2', 'Cable MM OM3 DX (2,0mm) Aqua GJFJH 2A1a.3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c77b8-33c0-11ea-aec2-2e728ce88125', 'CO3D2A', 'Cable MM OM3 DX (2,0mm) FTI Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8032-33c0-11ea-aec2-2e728ce88125', 'CM4D2B', 'Cable MM OM4 DX (2,0mm) Blue', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8190-33c0-11ea-aec2-2e728ce88125', 'CM4D2CPR', 'Cable MM OM4 DX (2,0mm) Corning PVC Red', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8492-33c0-11ea-aec2-2e728ce88125', 'CM4D2FTA', 'Cable MM OM4 DX (2,0mm) FTI Aqua', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c860e-33c0-11ea-aec2-2e728ce88125', 'CO4D2B', 'Cable MM OM4 DX (2,0mm) FTI Blue', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c874e-33c0-11ea-aec2-2e728ce88125', 'CO4D2O', 'Cable MM OM4 DX (2,0mm) FTI Orange', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8a28-33c0-11ea-aec2-2e728ce88125', 'CM4D2LSB', 'Cable MM OM4 DX (2,0mm) LSZH Blue', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 'CO4D2BC', 'Cable MM OM4 DX (2,0mm) LSZH Corning Blue', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c8eec-33c0-11ea-aec2-2e728ce88125', 'CM4D2O', 'Cable MM OM4 DX (2,0mm) Orange', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9036-33c0-11ea-aec2-2e728ce88125', 'CO4D2AY', 'Cable MM OM4 DX (2,0mm) YOFC Aqua', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9176-33c0-11ea-aec2-2e728ce88125', '', 'Cable SM DX (2,0mm) Yellow', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c975c-33c0-11ea-aec2-2e728ce88125', 'CSD2CRN', 'Cable SM DX (2,0mm) Corning', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9950-33c0-11ea-aec2-2e728ce88125', 'CSD22DP', 'Cable SM DX (2,0mm) G.652D PVC', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 'CSD2A2LS', 'Cable SM DX (2,0mm) G.657A2 LSZH', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9d92-33c0-11ea-aec2-2e728ce88125', 'CSD2LS', 'Cable SM DX (2,0mm) LSZH', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9ec8-33c0-11ea-aec2-2e728ce88125', '', 'Cable SM DX (3,0mm) Yellow', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 'CSD3A2LS', 'Cable SM DX (3,0mm) G.657A2 LSZH', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ca134-33c0-11ea-aec2-2e728ce88125', 'CSS9B', 'Cable SM SX (0,9mm) Brown', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ca26a-33c0-11ea-aec2-2e728ce88125', 'CSX9DPY', 'Cable SM SX (0,9mm) G652D PVC White', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 'CSX9DPW', 'Cable SM SX (0,9mm) G652D PVC Yellow', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ca940-33c0-11ea-aec2-2e728ce88125', 'CSX92PW', 'Cable SM SX (0,9mm) G657A2 PVC White', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9caad0-33c0-11ea-aec2-2e728ce88125', 'CSX9H2Y', 'Cable SM SX (0,9mm) GJJH 1B6a2 G.657A2 Yellow ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cac1a-33c0-11ea-aec2-2e728ce88125', 'CSS9G', 'Cable SM SX (0,9mm) Grey', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cad96-33c0-11ea-aec2-2e728ce88125', 'CSS9O', 'Cable SM SX (0,9mm) Orange', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9caee0-33c0-11ea-aec2-2e728ce88125', 'CSS9YI', 'Cable SM SX (0.9mm) Yellow Import', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb016-33c0-11ea-aec2-2e728ce88125', 'CSS22DLS', 'Cable SM SX (2,0mm) G.652D LSZH', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb318-33c0-11ea-aec2-2e728ce88125', 'CSS22DP', 'Cable SM SX (2,0mm) G.652D PVC ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb46c-33c0-11ea-aec2-2e728ce88125', 'CSS2A2LS', 'Cable SM SX (2,0mm) G.657A2 LSZH', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 'CSS2LS', 'Cable SM SX (2,0mm) LSZH', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb6f6-33c0-11ea-aec2-2e728ce88125', '', 'Cable SM SX (2,0mm) Yellow', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cb82c-33c0-11ea-aec2-2e728ce88125', 'CSS3A2LS', 'Cable SM SX (3,0mm) G.657A2 LSZH', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cba66-33c0-11ea-aec2-2e728ce88125', 'CSS3PVC', 'Cable SM SX 3,0mm PVC', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cbd54-33c0-11ea-aec2-2e728ce88125', 'CUC6LS', 'Cable UTP CAT 6 LS ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cbef8-33c0-11ea-aec2-2e728ce88125', 'CUC6SH', 'Cable UTP CAT 6 Schneider ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc038-33c0-11ea-aec2-2e728ce88125', 'CUC6VL', 'Cable UTP CAT 6 Vasco Link', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc16e-33c0-11ea-aec2-2e728ce88125', 'CFO24B', 'Cassete FO 24core  ( Black )', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 'CFO08T', 'Cassete FO 8 Core', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc420-33c0-11ea-aec2-2e728ce88125', 'CFO96W', 'Cassete FO 96core ( Putih )', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc556-33c0-11ea-aec2-2e728ce88125', 'CABDE25', 'Clamp A (Bracket) (Dead End)/Clamp Buaya uk 20/50', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc876-33c0-11ea-aec2-2e728ce88125', 'CPC', 'Clamp Pipa Conduit ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 'CR3L', 'Clamp Ring 3 Lubang ', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 'CS10I', 'Clamp Slang 10 Inch', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ccc36-33c0-11ea-aec2-2e728ce88125', 'CS05I', 'Clamp Slang 5 Inch', 6, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ccd62-33c0-11ea-aec2-2e728ce88125', 'CF65', 'Cleaver FC-65/Made In China', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ccea2-33c0-11ea-aec2-2e728ce88125', 'CLSR', 'Cleaver Merk Senter', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd172-33c0-11ea-aec2-2e728ce88125', 'COMO', 'Cleaver Sumitomo ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 'CMLPB', 'Clip MM LC/PC Brown', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd41a-33c0-11ea-aec2-2e728ce88125', 'CMLPT', 'Clip MM LC/UPC (Transparent)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd55a-33c0-11ea-aec2-2e728ce88125', 'CMSB', 'Clip MM SC/PC Brown', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd690-33c0-11ea-aec2-2e728ce88125', 'CSLAG', 'Clip SM LC/APC Green', 5, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 'CSLUB', 'Clip SM LC/UPC Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cdadc-33c0-11ea-aec2-2e728ce88125', 'CSSAG', 'Clip SM SC/APC Green ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 'CSSUB', 'Clip SM SC/UPC Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 'C288C', 'Closure 288 Core ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cdec4-33c0-11ea-aec2-2e728ce88125', 'C48FT', 'Closure 48 Core (Fiber Trone)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cdffa-33c0-11ea-aec2-2e728ce88125', 'C48PZ', 'Closure 48 Core (PAZ)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 'CLO96', 'Closure 96 Core ( Kulit Jeruk)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 'C96P', 'Closure 96 Core ( No brand )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ce662-33c0-11ea-aec2-2e728ce88125', 'C96WB', 'Closure 96 Core ( No brand Tidak Complete) (Tanpa Kardus)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ce798-33c0-11ea-aec2-2e728ce88125', 'C96D[Z', 'Closure 96 Core Dome ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cea18-33c0-11ea-aec2-2e728ce88125', 'C96WK', 'Closure 96 Core Tanpa Kunci+Kardus Litech', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cebc6-33c0-11ea-aec2-2e728ce88125', 'CA1224', 'Closure AIS 12/24 Core (Duck) ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ced06-33c0-11ea-aec2-2e728ce88125', 'CA96D', 'Closure AIS 96 Core (Duck) ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cefb8-33c0-11ea-aec2-2e728ce88125', 'CBSA', 'Connector Box SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cf116-33c0-11ea-aec2-2e728ce88125', 'CLMM9', 'Connector MM LC/PC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cf24c-33c0-11ea-aec2-2e728ce88125', 'CLMM2', 'Connector MM LC/PC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cf38c-33c0-11ea-aec2-2e728ce88125', 'CSMM9', 'Connector MM SC/PC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cf58a-33c0-11ea-aec2-2e728ce88125', 'CSMM2', 'Connector MM SC/PC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 'CSMM3', 'Connector MM SC/PC 3,0mm Tanpa Spring', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cfa08-33c0-11ea-aec2-2e728ce88125', 'CSSTSF', 'Connector Set ST Semi Finished Include Ferulle 2mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cfb48-33c0-11ea-aec2-2e728ce88125', '', 'Connector MM ST/PC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cfc7e-33c0-11ea-aec2-2e728ce88125', '', 'Connector MM ST/PC (3,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cfdbe-33c0-11ea-aec2-2e728ce88125', '', 'Connector MM FC/PC (2,0mm) ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9cfef4-33c0-11ea-aec2-2e728ce88125', '', 'Connector MM LC/PC (3,0mm)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d002a-33c0-11ea-aec2-2e728ce88125', '', 'Connector MM SC/PC 3,0mm', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d02f0-33c0-11ea-aec2-2e728ce88125', 'CFA9', 'Connector SM FC/APC (0,9mm)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d04b2-33c0-11ea-aec2-2e728ce88125', 'CFA2', 'Connector SM FC/APC (2,0mm)', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0610-33c0-11ea-aec2-2e728ce88125', 'CFU9', 'Connector SM FC/UPC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0750-33c0-11ea-aec2-2e728ce88125', 'CFU2', 'Connector SM FC/UPC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0962-33c0-11ea-aec2-2e728ce88125', '', 'Connector SM FC/UPC (3,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0b24-33c0-11ea-aec2-2e728ce88125', 'CLA9', 'Connector SM LC/APC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'CLA2', 'Connector SM LC/APC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d0f84-33c0-11ea-aec2-2e728ce88125', 'CLA3', 'Connector SM LC/APC 3,0mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d10ba-33c0-11ea-aec2-2e728ce88125', 'CLU9', 'Connector SM LC/UPC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d11f0-33c0-11ea-aec2-2e728ce88125', 'CLU2', 'Connector SM LC/UPC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d1628-33c0-11ea-aec2-2e728ce88125', 'CLU3', 'Connector SM LC/UPC 3,0mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d17cc-33c0-11ea-aec2-2e728ce88125', 'CSA9', 'Connector SM SC/APC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d1af6-33c0-11ea-aec2-2e728ce88125', 'CSA2', 'Connector SM SC/APC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'CSA3', 'Connector SM SC/APC 3,0mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d1d76-33c0-11ea-aec2-2e728ce88125', 'CSA3IC', 'Connector SM SC/APC 3,0mm (Tanpa Big Crimp Ring  & Dust Cups)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d1eac-33c0-11ea-aec2-2e728ce88125', 'CSA3TD', 'Connector SM SC/APC 3,0mm (Tanpa Dustcups)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2000-33c0-11ea-aec2-2e728ce88125', 'CSA5SA', 'Connector SM SC/APC 5cm Precon Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2140-33c0-11ea-aec2-2e728ce88125', 'CSASF', 'Connector SM SC/APC Semi Finished + Ferulle', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d241a-33c0-11ea-aec2-2e728ce88125', 'CSU9', 'Connector SM SC/UPC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d25b4-33c0-11ea-aec2-2e728ce88125', 'CSU2', 'Connector SM SC/UPC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2708-33c0-11ea-aec2-2e728ce88125', 'CSU3', 'Connector SM SC/UPC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2848-33c0-11ea-aec2-2e728ce88125', '', 'Connector SM SC/UPC (3,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d297e-33c0-11ea-aec2-2e728ce88125', '', 'Connector SM ST/UPC (2,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2ab4-33c0-11ea-aec2-2e728ce88125', '', 'Connector SM ST/UPC (3,0mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '0.00', '0.00', '0.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d2bea-33c0-11ea-aec2-2e728ce88125', 'CSU5', 'Connector SM SC/UPC 5cm Precon Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d300e-33c0-11ea-aec2-2e728ce88125', 'CSUSF', 'Connector SM SC/UPC Semi Finished Include Ferulle ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d3176-33c0-11ea-aec2-2e728ce88125', 'CNSU2', 'COUPLING NUT ST/UPC (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d32b6-33c0-11ea-aec2-2e728ce88125', 'CRL3', 'CRIMP RING LC (3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d33f6-33c0-11ea-aec2-2e728ce88125', 'CRPSSA', 'CRIMP RING Precon SC UPC/APC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d3568-33c0-11ea-aec2-2e728ce88125', 'CRPSSF', 'CRIMP RING Precon SC UPC/APC Semi Finished', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d382e-33c0-11ea-aec2-2e728ce88125', 'CRSU2', 'CRIMP RING ST UPC (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 'CRTL', 'Crimping Tools', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d7956-33c0-11ea-aec2-2e728ce88125', 'CTRBK', 'Cutter Besar (Kenko)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 'DCLP', 'D-clamp', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 'DTK', 'Doubletape Kecil', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d8162-33c0-11ea-aec2-2e728ce88125', 'DTS', 'Doubletape Sedang', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d84aa-33c0-11ea-aec2-2e728ce88125', 'DC1C100', 'Drop Cable 1 Core 100 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d85fe-33c0-11ea-aec2-2e728ce88125', 'DC1C150', 'Drop Cable 1 Core 150 Meter ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d8734-33c0-11ea-aec2-2e728ce88125', 'DC1C200', 'Drop Cable 1 Core 200 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d886a-33c0-11ea-aec2-2e728ce88125', 'DC1C250', 'Drop Cable 1 Core 250 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d89a0-33c0-11ea-aec2-2e728ce88125', 'DC1C250', 'Drop Cable 1 Core 300 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 'DC1C50', 'Drop Cable 1 Core 50 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 'DC1C63', 'Drop Cable 1 Core 63 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9d9094-33c0-11ea-aec2-2e728ce88125', 'DC1C75', 'Drop Cable 1 Core 75 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dadc2-33c0-11ea-aec2-2e728ce88125', 'DC1C80', 'Drop Cable 1 Core 80 Meter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9daf3e-33c0-11ea-aec2-2e728ce88125', 'DC1CP', 'Drop Cable 1 Core Polos', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9db092-33c0-11ea-aec2-2e728ce88125', 'DC1CT', 'Drop Cable 1 Core Telkom', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9db1d2-33c0-11ea-aec2-2e728ce88125', 'DC1CA2', 'Dropcable 1 Core, G657A2, LSZH, 1000M FRP YOFC TelkomAkses', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9db664-33c0-11ea-aec2-2e728ce88125', 'DC1CFT', 'Dropcable 1 Core, GJYXFCH, LSZH, 1000M FTI', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9db97a-33c0-11ea-aec2-2e728ce88125', 'DC1CHU', 'Dropcable 1 Core, GJYXFCH, LSZH, 1000M HUASHIN', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 'DC2CPM', 'Dropcable 2C 1000M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 'DC2CW2', 'Dropcable 2C With 2 Stell Wire.LSZH 1000M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 'DC4CTS', 'Dropcable 4 Core, G657A1, LSZH, TWO STEEL WIRE 1000M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc06e-33c0-11ea-aec2-2e728ce88125', 'DCLG', 'DUST CAP LC Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc352-33c0-11ea-aec2-2e728ce88125', 'DCLW', 'DUST CAP LC White', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 'DCSG', 'DUST CAP SC-FC-ST Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 'DCST', 'DUST CAP SC-FC-ST Transparent', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc726-33c0-11ea-aec2-2e728ce88125', 'FSUMB', 'Fashconector SC/UPC Model BARU', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc85c-33c0-11ea-aec2-2e728ce88125', 'FCSUML', 'Fashconector SC/UPC Model Lama', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dc992-33c0-11ea-aec2-2e728ce88125', 'F1MLP', 'Ferulle 125uf MM LC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dcef6-33c0-11ea-aec2-2e728ce88125', 'F1SLA', 'Ferulle 125uf SM LC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dd090-33c0-11ea-aec2-2e728ce88125', 'F1SLU', 'Ferulle 125uf SM LC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dd374-33c0-11ea-aec2-2e728ce88125', 'F2MSP', 'Ferulle 250uf MM SC/PC - FC/PC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 'F2SASA', 'Ferulle 250uf SC/APC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dd61c-33c0-11ea-aec2-2e728ce88125', 'F2SASF', 'Ferulle 250uf SC/APC Semi Finished', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 'F2SUSA', 'Ferulle 250uf SC/UPC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9dda5e-33c0-11ea-aec2-2e728ce88125', 'F2SUSF', 'Ferulle 250uf SC/UPC Semi Finished', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ddd42-33c0-11ea-aec2-2e728ce88125', 'F2SSA', 'Ferulle 250uf SM SC/FC - APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 'F2SSU', 'Ferulle 250uf SM SC/FC - UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 'F2STU', 'Ferulle 250uf ST/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e20e0-33c0-11ea-aec2-2e728ce88125', 'HSCB3', 'Heat Shrink Cable ( Black) 3mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e223e-33c0-11ea-aec2-2e728ce88125', 'HSCB4', 'Heat Shrink Cable ( Black) 4mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e237e-33c0-11ea-aec2-2e728ce88125', 'HSLW', 'Heat Shrink LC White', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e261c-33c0-11ea-aec2-2e728ce88125', 'HSLY', 'Heat Shrink LC Yellow', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e296e-33c0-11ea-aec2-2e728ce88125', 'HOSSU', 'Holder SOC SC/UPC Sumitomo', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e2c70-33c0-11ea-aec2-2e728ce88125', 'HML', 'HOUSING MM LC (0,9mm, 2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e2dba-33c0-11ea-aec2-2e728ce88125', 'HMS', 'HOUSING MM SC (0,9mm, 2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e2f04-33c0-11ea-aec2-2e728ce88125', 'HSLA', 'HOUSING SM LC/APC (0,9mm, 2,00mm, 3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e31fc-33c0-11ea-aec2-2e728ce88125', 'HSLU', 'HOUSING SM LC/UPC (0,9mm, 2,00mm, 3,00mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e336e-33c0-11ea-aec2-2e728ce88125', 'HSSA', 'HOUSING SM SC/APC (0,9mm), 2,00mm, 3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e34ae-33c0-11ea-aec2-2e728ce88125', 'HSSU', 'HOUSING SM SC/UPC (0,9mm), 2,00mm, 3,00mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e35ee-33c0-11ea-aec2-2e728ce88125', 'IRN', 'Ink Ribbon Nomor', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e3724-33c0-11ea-aec2-2e728ce88125', 'ICB', 'Isi Cutter Besar', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e385a-33c0-11ea-aec2-2e728ce88125', 'ICK', 'Isi Cutter Kecil', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e3990-33c0-11ea-aec2-2e728ce88125', 'JPT2Y', 'Jacket Purcation Tube 2mm Yellow Aramid', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e3c92-33c0-11ea-aec2-2e728ce88125', 'K102222', 'Kardus 10 x 22 x 22 Kecil', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 'K222222', 'Kardus 22 x 22 x 22 Sedang', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4160-33c0-11ea-aec2-2e728ce88125', 'K603925', 'Kardus 60 x 39 x 25 Besar', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e42c8-33c0-11ea-aec2-2e728ce88125', 'KP701', 'Karet Pad 850-70 110mm (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e444e-33c0-11ea-aec2-2e728ce88125', 'KP751', 'Karet Pad 850-75 110mm (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4598-33c0-11ea-aec2-2e728ce88125', 'KP801', 'Karet Pad 850-80 110mm (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e46d8-33c0-11ea-aec2-2e728ce88125', 'KP901', 'Karet Pad 850-90 110mm (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4a16-33c0-11ea-aec2-2e728ce88125', 'KPD9', 'Karet Pad D-9 Khu (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4b56-33c0-11ea-aec2-2e728ce88125', 'KPP70', 'Karet Pad PR5X-500-70', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4c96-33c0-11ea-aec2-2e728ce88125', 'KPP75', 'Karet Pad PR5X-500-75', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 'KPP80', 'Karet Pad PR5X-500-80', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e4f02-33c0-11ea-aec2-2e728ce88125', 'KPP90', 'Karet Pad PR5X-500-90 (Mesin Mekanika)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5042-33c0-11ea-aec2-2e728ce88125', 'KPSP', 'Karet Pad ukuran D,30 SAPO (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5236-33c0-11ea-aec2-2e728ce88125', 'KPSM', 'Karet Pad ukuran D3 SAM (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5376-33c0-11ea-aec2-2e728ce88125', 'KPF', 'Karet Pad ukuran Final 0,5 (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5650-33c0-11ea-aec2-2e728ce88125', 'KSTG', 'Kelvar Scissor (Tang Gunting)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e57a4-33c0-11ea-aec2-2e728ce88125', 'KRNLS', 'Krone LSA', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5934-33c0-11ea-aec2-2e728ce88125', 'KWL8', 'KTB Walmount 8 C', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 'LBAR', 'Label Barcode', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 'LBRB', 'Label Barcode Ribbon', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 'LBB', 'Lakban Bening Besar', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e5f92-33c0-11ea-aec2-2e728ce88125', 'LBK', 'Lakban Bening Kecil', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6604-33c0-11ea-aec2-2e728ce88125', 'LBS', 'Lakban Bening Sedang', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6820-33c0-11ea-aec2-2e728ce88125', 'LCB', 'Lakban Coklat Besar', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6988-33c0-11ea-aec2-2e728ce88125', 'LFM', 'Lakban Fragile ( Merah )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6abe-33c0-11ea-aec2-2e728ce88125', 'LIH', 'Lakban Isolasi Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6c08-33c0-11ea-aec2-2e728ce88125', 'LKK', 'Lakban Kertas kecil', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e6f32-33c0-11ea-aec2-2e728ce88125', 'LKS', 'Lakban Kertas Sedang', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e707c-33c0-11ea-aec2-2e728ce88125', 'LPS', 'Lakban Putih Susu', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e71b2-33c0-11ea-aec2-2e728ce88125', 'LTEST', 'Lan Tester', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e73ce-33c0-11ea-aec2-2e728ce88125', 'LEBAB', 'Lem Epoxy (Lem Bundle) A & B', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e7554-33c0-11ea-aec2-2e728ce88125', 'LEABK', 'Lem Epoxy AB ( KIT )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e76d0-33c0-11ea-aec2-2e728ce88125', 'LKOD', 'Lem Korea One Drop', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e781a-33c0-11ea-aec2-2e728ce88125', 'MNB', 'Marker Number Bening', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'MNH', 'Marker Number Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e7edc-33c0-11ea-aec2-2e728ce88125', 'MNP2', 'Marker Number Putih 2mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8152-33c0-11ea-aec2-2e728ce88125', 'MBNKI', 'Mata Bor Nankai', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e82ba-33c0-11ea-aec2-2e728ce88125', 'MC10100A', 'Media Converter 10/100', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8404-33c0-11ea-aec2-2e728ce88125', 'MC10100B', 'Media Converter 10/100 ( B )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8742-33c0-11ea-aec2-2e728ce88125', 'MC101000', 'Media converter 10/1000', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e88b4-33c0-11ea-aec2-2e728ce88125', 'MCP', 'Mesin Cek Polishing', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e89fe-33c0-11ea-aec2-2e728ce88125', 'MMAN', 'Mesin Manual', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8b34-33c0-11ea-aec2-2e728ce88125', 'MMEC', 'Mesin Mechanical', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8c74-33c0-11ea-aec2-2e728ce88125', 'MOV', 'Mesin Oven', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e8daa-33c0-11ea-aec2-2e728ce88125', 'MPD', 'Mesin Pemeriksa DB', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e90d4-33c0-11ea-aec2-2e728ce88125', 'MPR', 'Mesin Press', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9246-33c0-11ea-aec2-2e728ce88125', 'MPN', 'Mesin Print Number', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9386-33c0-11ea-aec2-2e728ce88125', 'MSL', 'Mesin Suntikan Lem', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e94bc-33c0-11ea-aec2-2e728ce88125', 'MKP', 'Minyak Kayu Putih', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9714-33c0-11ea-aec2-2e728ce88125', 'MKP', 'Minyak Kompresor', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9854-33c0-11ea-aec2-2e728ce88125', 'OM2DCA12', 'MM OM2 DUCT CABLE ARMORED 12 Core/GYFA-12OM2/2Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9994-33c0-11ea-aec2-2e728ce88125', 'OM2DCA24', 'MM OM2 DUCT CABLE ARMORED 24 Core/GYFA-24OM2/4Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9caa-33c0-11ea-aec2-2e728ce88125', 'OM2DCA48', 'MM OM2 DUCT CABLE ARMORED 48 Core/GYFA-48OM2/4Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9e12-33c0-11ea-aec2-2e728ce88125', 'OM2DCA6', 'MM OM2 DUCT CABLE ARMORED 6 Core/GYFA-6OM2/1Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9e9f66-33c0-11ea-aec2-2e728ce88125', 'NSFU9', 'NUT FC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 'NSFU23', 'NUT FC (2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 'ODC48', 'ODC 48 Core', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea312-33c0-11ea-aec2-2e728ce88125', 'ODCM96', 'ODC Mini 96C/ODP 96C', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 'ODP12E', 'ODP 12 Core Kosongan ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea754-33c0-11ea-aec2-2e728ce88125', 'ODP12PO', 'ODP 12 Core Pole', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea894-33c0-11ea-aec2-2e728ce88125', 'ODP12YO', 'ODP 12 Core YOFC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 'ODP12YESA', 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eab0a-33c0-11ea-aec2-2e728ce88125', 'ODP12YECSA', 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eac40-33c0-11ea-aec2-2e728ce88125', 'ODP16TI', 'ODP 16 Core ( TIS )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eaefc-33c0-11ea-aec2-2e728ce88125', 'ODP16PO', 'ODP 16 Core (Polos)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 'ODP16SS', 'ODP 16 Core (Sunsea)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 'ODP16CHB', 'ODP 16 Core CA (Huawei) Black', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb32a-33c0-11ea-aec2-2e728ce88125', 'ODP24NTK', 'ODP 24 Core ( No Brand ) Tanpa Kunci', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb46a-33c0-11ea-aec2-2e728ce88125', 'ODP24SA', 'ODP 24 Core SC/APC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb636-33c0-11ea-aec2-2e728ce88125', 'ODP24YTSU', 'ODP 24 Core YOFC Tanpa Kardus SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eb794-33c0-11ea-aec2-2e728ce88125', 'ODP24YESU', 'ODP 24 Core YOFC Tanpa Kunci+Kardus SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 'ODP24YTPSU', 'ODP 24 Core YOFC Tanpa Pigtail SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ebc08-33c0-11ea-aec2-2e728ce88125', 'ODPS8CS18A', 'ODP Solid 8 Core + Splitter 1:8 SC/UPC Auto Shutter', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 'ODPD12SU', 'ODP/FAT 12 Core SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 'OLSJ4', 'OLS J4', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 'ONTZV3', 'ONT ZTE Versi 3', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 'FC8090', 'Optical Light Source (OLS) JW', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 'OPAM', 'Optical Power Meter (AMG)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 'OPNB', 'Optical Power Meter (No Brand)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ec950-33c0-11ea-aec2-2e728ce88125', 'OPJW', 'Optical Power Meter JoinWitt', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 'OT24SB', 'OTB 24 Core SC (Hitam)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 'OT24SC', 'OTB 24 Core SC (Krim)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 'OT24SN', 'OTB 24 Core SC/APC (No Brand)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ece50-33c0-11ea-aec2-2e728ce88125', 'OT48SN', 'OTB 48 Core SC/APC (No Brand)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed134-33c0-11ea-aec2-2e728ce88125', 'OT48SNE', 'OTB 48 Core SC/APC (No Brand) Kunci Rusak', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed27e-33c0-11ea-aec2-2e728ce88125', 'OTR12SPZ', 'OTB RACK 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed3be-33c0-11ea-aec2-2e728ce88125', 'OTR24SPZ', 'OTB RACK 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 'OTR48SPZ', 'OTB RACK 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed666-33c0-11ea-aec2-2e728ce88125', 'OTRSP132S', 'OTB Rack Splitter PLC 1:32 SC/APC', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 'PTON', 'Paku beton', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9edb0c-33c0-11ea-aec2-2e728ce88125', 'PBUS', 'Paladin Buffer Stripper', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9edd00-33c0-11ea-aec2-2e728ce88125', 'PKCA', 'Palu Kecil ( CAB )', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ede5e-33c0-11ea-aec2-2e728ce88125', 'PAN', 'Pantong', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'PMDOD01', 'Patchcord MM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee142-33c0-11ea-aec2-2e728ce88125', 'PMDOD02', 'Patchcord MM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee282-33c0-11ea-aec2-2e728ce88125', 'PMDOD03', 'Patchcord MM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 'PMDOD04', 'Patchcord MM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 'PMDOD05', 'Patchcord MM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'PMO1D201', 'Patchcord MM OM1 DX (2,0mm) LC/PC-LC/PC 3m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'PMO1D301', 'Patchcord MM OM1 DX (3,0mm) SC/PC-ST/PC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', 'Dimas', '2020-05-16 07:11:18', '2020-05-18 02:58:21'),
('5d9eea84-33c0-11ea-aec2-2e728ce88125', 'PMO1S201', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eebc4-33c0-11ea-aec2-2e728ce88125', 'PMO1S202', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9eecfa-33c0-11ea-aec2-2e728ce88125', 'PMO1S203', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef056-33c0-11ea-aec2-2e728ce88125', 'PMO1S204', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 'PMO1S205', 'Patchcord MM OM1 SX (2,0mm) FC/UPC-LC/UPC 40m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef312-33c0-11ea-aec2-2e728ce88125', 'PMO1S206', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 10m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef448-33c0-11ea-aec2-2e728ce88125', 'PMO1S207', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef57e-33c0-11ea-aec2-2e728ce88125', 'PMO1S208', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef6be-33c0-11ea-aec2-2e728ce88125', 'PMO1S209', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 25m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 'PMO1S210', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9efc36-33c0-11ea-aec2-2e728ce88125', 'PMO1S211', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9efe70-33c0-11ea-aec2-2e728ce88125', 'PMO1S212', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f000a-33c0-11ea-aec2-2e728ce88125', 'PMO1S213', 'Patchcord MM OM1 SX (2,0mm) LC/UPC-LC/UPC 60m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f014a-33c0-11ea-aec2-2e728ce88125', 'PMO1S214', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0280-33c0-11ea-aec2-2e728ce88125', 'PMO1S215', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0442-33c0-11ea-aec2-2e728ce88125', 'PMO1S216', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-LC/UPC 50m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0712-33c0-11ea-aec2-2e728ce88125', 'PMO1S217', 'Patchcord MM OM1 SX (2,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0866-33c0-11ea-aec2-2e728ce88125', 'PMO1S218', 'Patchcord MM OM1 SX (2,0mm) ST/UPC-ST/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f09b0-33c0-11ea-aec2-2e728ce88125', 'PMO1S301', 'Patchcord MM OM1 SX (3,0mm) LC/UPC-LC/UPC 50m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 'PMO2D201', 'Patchcord MM OM2 DX (2,0mm) FC/PC-LC/PC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 'PMO2D202', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 10m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f0d52-33c0-11ea-aec2-2e728ce88125', 'PMO2D203', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 2m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1040-33c0-11ea-aec2-2e728ce88125', 'PMO2D204', 'Patchcord MM OM2 DX (2,0mm) LC/PC-LC/PC 30m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f11b2-33c0-11ea-aec2-2e728ce88125', 'PMO2D205', 'Patchcord MM OM2 DX (2,0mm) SC/PC-LC/PC 15m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f12fc-33c0-11ea-aec2-2e728ce88125', 'PMO2D206', 'Patchcord MM OM2 DX (2,0mm) SC/PC-LC/PC 1m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1432-33c0-11ea-aec2-2e728ce88125', 'PMO2D207', 'Patchcord MM OM2 DX (2,0mm) SC/PC-SC/PC 1m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1568-33c0-11ea-aec2-2e728ce88125', 'PMO2D208', 'Patchcord MM OM2 DX (2,0mm) SC/PC-SC/PC 2m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f16a8-33c0-11ea-aec2-2e728ce88125', 'PMO2D209', 'Patchcord MM OM2 DX (2,0mm) SC/UPC-LC/UPC 2m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1950-33c0-11ea-aec2-2e728ce88125', 'PMO2D301', 'Patchcord MM OM2 DX (3,0mm) ST/UPC-LC/UPC 1m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1aae-33c0-11ea-aec2-2e728ce88125', 'PMO2D302', 'Patchcord MM OM2 DX (3,0mm) ST/UPC-ST/UPC 5m', 1, 2, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1bee-33c0-11ea-aec2-2e728ce88125', 'PMO2S201', 'Patchcord MM OM2 SX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1d24-33c0-11ea-aec2-2e728ce88125', 'PMO2S301', 'Patchcord MM OM2 SX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1e64-33c0-11ea-aec2-2e728ce88125', 'PMO3D201', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 100m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 'PMO3D202', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f2256-33c0-11ea-aec2-2e728ce88125', 'PMO3D203', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 1m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f23b4-33c0-11ea-aec2-2e728ce88125', 'PMO3D204', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 20m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f24f4-33c0-11ea-aec2-2e728ce88125', 'PMO3D205', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 25m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f262a-33c0-11ea-aec2-2e728ce88125', 'PMO3D206', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 30m Aqua ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f276a-33c0-11ea-aec2-2e728ce88125', 'PMO3D207', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 3m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f28a0-33c0-11ea-aec2-2e728ce88125', 'PMO3D208', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 50m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 'PMO3D209', 'Patchcord MM OM3 DX (2,0mm) LC/PC-LC/PC 5m', 6, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f2db4-33c0-11ea-aec2-2e728ce88125', 'PMO3D210', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 15m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f2f08-33c0-11ea-aec2-2e728ce88125', 'PMO3D211', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 20m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3048-33c0-11ea-aec2-2e728ce88125', 'PMO3D212', 'Patchcord MM OM3 DX (2,0mm) SC/PC-LC/PC 30m Aqua', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f317e-33c0-11ea-aec2-2e728ce88125', 'PMO4D201', 'Patchcord MM OM4 DX (2,0mm) FC/PC-LC/PC 15m Biru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f32e6-33c0-11ea-aec2-2e728ce88125', 'PMO4D202', 'Patchcord MM OM4 DX (2,0mm) LC/PC-LC/PC 10m Biru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3610-33c0-11ea-aec2-2e728ce88125', 'PMO4D203', 'Patchcord MM OM4 DX (2,0mm) LC/PC-LC/PC 20m Biru', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9f38fe-33c0-11ea-aec2-2e728ce88125', 'PSD201', 'Patchcord MM SM DX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 'PSD202', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 'PSD203', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 'PSD204', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 'PSD205', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f4006-33c0-11ea-aec2-2e728ce88125', 'PSD206', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f43e4-33c0-11ea-aec2-2e728ce88125', 'PSD207', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f45c4-33c0-11ea-aec2-2e728ce88125', 'PSD208', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f472c-33c0-11ea-aec2-2e728ce88125', 'PSD209', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f489e-33c0-11ea-aec2-2e728ce88125', 'PSD210', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f49de-33c0-11ea-aec2-2e728ce88125', 'PSD211', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 'PSD212', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 'PSD213', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 'PSD214', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f506e-33c0-11ea-aec2-2e728ce88125', 'PSD215', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f5262-33c0-11ea-aec2-2e728ce88125', 'PSD216', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f53ca-33c0-11ea-aec2-2e728ce88125', 'PSD217', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5d9f550a-33c0-11ea-aec2-2e728ce88125', 'PSD218', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5da1b49b-a5cc-431c-8a9c-3eb5e1ab2402', 'PSD306', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5df00b8e-3209-40b7-8e29-afdb9831cb48', 'PSS245', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 7m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5f12a275-1900-409d-adfe-569983e88fb8', 'PSS238', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5f1ae7e3-0e8c-45ea-ab18-86f2fb5f3051', 'PSD309', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('5f8c77ad-966d-47c6-b3c6-e8462e7b18e9', 'WMRC', 'Wall Mount Rack ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('605ef610-c46a-4b94-9b20-0e2ffc75858c', 'PSD328', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6148167f-95dd-4153-bbdd-dd81c5e25c7e', 'PFSFU', 'PLUG FRAME FC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('63b7775e-ddd0-4327-a9ed-b23a47c7336f', 'TMO2S201', 'Pigtail MM OM2 SX (2,0mm) FC/PC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('64648f72-2004-49fb-9837-2a06e147f1b3', 'PSD307', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('64e18761-2e0d-45b2-b287-2386f05df086', 'AS1212', 'SM AERIAL SCPT 12 Core/GYHC8A-12B1.3/12Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('65c5d544-5fa5-47f1-9cd8-5ae8e0f207ea', 'TSD301', 'Pigtail SM DX (3,0mm) SC/APC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('66a074a0-c9cb-422e-a8ea-fca5fd93fb30', 'P1C004', 'Precon 1 Core SC/APC-SC/APC 50M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('66f40b89-05ee-4fea-99d1-d4334d47cec1', 'PSS234', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('66fd5b68-dfae-4680-90c5-c62f675f7447', 'TSS914', 'Pigtail SM SX (0,9mm) SC/UPC 1m Oren', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6738cf77-5351-4ea9-831e-9049efe2addb', 'PSS303', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('67e9b980-232c-4007-a37f-580b3a24e8ed', 'R2CGOE', 'Roset 2 Core GOC ( Tanpa Protector Sleeve&Adapter)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('68b03060-fe58-4fee-95ff-35c49e6a2d1c', 'PSS242', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('68c359d4-afcb-4cf3-ae7d-c7ba0242a614', 'STKN', 'Sarung Tangan Kain', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('68c8937d-9b0f-4dfb-aa2a-d76efe01bb6a', '10000997', 'Precon 1 Core SC/UPC-LC/UPC 100m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '10.00', '120000.00', '150000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Dimas', NULL, '2020-06-17 02:53:20', '2020-06-17 02:53:20'),
('698b6ee4-fdb9-4d0d-80c4-99e76fcf7b95', 'PSS316', 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6a27aaa8-2789-4743-b870-386ca67a9941', 'PSD227', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6a44254a-ac65-41c7-ad05-b51e605248ed', 'P1C008', 'Precon 1 Core SC/UPC-SC/UPC 200M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6b3e0d76-f81f-4e79-9e1b-53df8b83f726', 'PSS321', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6cca0b3f-588c-42f9-b0b4-e09aa264bf17', 'ZSUMC', 'Zig Housing SC/UPC  (Mesin Mecanical)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6d3ad0a2-5469-4ecf-b038-80f8e769ebc1', 'WTRTC', 'Wire Tracker/Tone Checker', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6de3eb99-4883-48d3-9e3f-2ec2b4322172', 'PSD221', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6e5d9fb4-5d0a-4d4d-afb0-17d0c5700b9f', 'P1C005', 'Precon 1 Core SC/APC-SC/APC 75M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('6f1a6b2c-7826-4d3b-95d1-ad868628e69b', 'TMO2S901', 'Pigtail MM OM2 SX (0,9mm) SC/PC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-07-10 06:03:06'),
('70b3b7e6-229a-4e28-9e2b-42c5e9560bba', 'CADS48', 'SM ADSS 48 Core SPAN 100M/ADSS-SS-100M-48B1.3/4Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('70d92af8-90d8-47d9-9b62-5eb444e33e1b', 'SSSLU9', 'SIMPLEX STOPPER SM LC/UPC (0,9mm) Blue', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('713d7ca0-273c-4933-b697-4b96c659a94a', 'PSD226', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('73551cba-bbd2-4263-a662-9d20f501bc43', 'R6U', 'Rack  6U', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('737ee30a-ac08-4b31-9879-6a404e00d56d', 'PSD303', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('75074a13-9925-4e22-8164-82a6861ecd09', 'AD2FIG8', 'SM AERIAL Dropcable 2 Core/GYAXC8Y-2B6A1 FIG 8', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7548c690-9f32-4e1d-a4bd-3ff27d68dc8c', 'TSD302', 'Pigtail SM DX (3,0mm) SC/APC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7615371d-276c-42b5-a390-0de2c272526b', 'TSS304', 'Pigtail SM SX (3,0mm) SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('76de87e4-d411-498d-ac5c-b88be329b6d3', 'TSD205', 'Pigtail SM DX (2,0mm) SC/UPC 8m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('78a7e0bd-9ce5-4448-a7d2-2923de0fe0e0', 'PSS202', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7b8c932f-739f-47f3-9ec8-18987646c13b', 'PSD230', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7c159d16-c49e-4c27-8946-8ca035268f26', 'L44AM', 'Tangga 4,4m AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7fbc00c3-fb42-46ea-ae0c-309b5edfeefa', 'ZLUMN', 'Zig LC/UPC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('7ff4903b-e774-4de5-a95c-52ea52a00e6b', 'TSS909', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m  (merah)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('80335ddb-bfba-4e0c-8aa4-da13b1c38ae9', 'R2CGOA', 'Roset 2 Core GOC ( Tanpa Protector Sleeve)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('80942d58-992f-4cce-a5a1-8890da609034', 'PSD316', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('818d8c59-17ca-49bb-bb05-ee0fa0d4a77d', 'PSD312', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('81f1dfeb-81ed-441e-9091-890847e6c037', 'PSDOD02', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('825061bb-e1bc-4a49-bd95-306338997289', 'PSD222', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('8254ecfe-9e2c-4331-a3cc-0108e97920c0', 'SCR3', 'SMALL CRIMP RING (3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('82ee1ecc-0b39-46ca-9839-ad0ce6e8c932', 'P3025', 'Plastik 30 x 25', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('83512e63-4284-4317-9109-61f62f9c7733', 'PSS327', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('838a72ce-5789-459a-a9c6-15337dd9f5fe', 'SSFU23', 'SIMPLEX STOPPER FC (2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('83d144fc-4ce8-427c-81c7-d59aedfacc27', 'SSU2', 'SPRING ST UPC (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('84905d89-c592-40ee-a713-f7448a60465d', 'TP1C01', 'Pigtail Precon 1 Core SC/UPC Connector Hitam 100M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('851d304d-f84d-407d-9f40-27cc59148324', 'STPBCP', 'Stopping Buckle ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('859854f6-41d5-4c7f-9aac-079f06a4d949', 'TMO2S206', 'Pigtail MM OM2 SX (2,0mm) SC/PC 3m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('85d7b123-b356-40e7-ae8b-4f455384e871', '10000654', 'Connector MM ST/PC (0,9mm)', 1, 1, NULL, '9c4257b6-3a16-4c61-9dc0-04fe2ef5d514', '1000.00', '2500.00', '4000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Mirza Rizaldy', NULL, '2020-07-10 05:28:01', '2020-07-10 05:28:01'),
('873acffe-3a1b-4dd1-aef9-850b4aef8683', 'PSD310', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('874f0460-7adb-41ca-97e2-7ad9b32afae0', 'RSLU3', 'RIVET SM/MM LC UPC/APC (3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('884b5795-b501-4e1e-8975-bccf42460d5e', 'DCA24244', 'SM DUCT CABLE ARMORED 24 Core/GYFA-24B1.3/4Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('8bb1454c-9626-444f-bdfb-ee25fd4690bc', 'P1C001', 'Precon 1 Core SC/APC-SC/APC 100M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('8bb8ec0b-8b04-418b-834e-123623e2fa58', 'PSD313', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('8be62161-742e-4e99-8b5e-664877ac6b44', 'PSS301', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('8e5f19d5-700b-4fc8-8198-e8a67a6933b9', 'P4040', 'Plastik 40 X 40', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('907f38bb-59cb-4921-87f0-1259284711a2', 'SSSLA23', 'SIMPLEX STOPPER SM LC/APC (2,00mm, 3,00mm) Green', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('90cfdfe4-0187-4a56-84f9-f49a77d782bc', 'PSD241', 'Patchcord SM DX (2,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('91533b75-3486-44b5-91fa-6d3f90f2810b', '10000443', 'Cable MM OM1 DX (2,0mm)', 2, 2, NULL, '8894faf4-281a-4c22-b2c2-1aff6f67b346', '2000.00', '10000.00', '50000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'Dimas', 'Dimas', '2020-05-18 02:46:19', '2020-05-18 02:51:28'),
('91cd8769-1ee3-4fcf-b3e6-267c2f2ae9ec', 'PSS205', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9281cbe9-39d7-4cfd-ab1b-f1c08c13bdd4', 'PSS313', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('92cf5322-2901-4dd0-b873-7ba5d301e5ca', 'STPFLC', 'Stripper Fis Local', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('936216c2-fecb-40a5-8ff6-4153ff5442d4', 'SSMLU23', 'SIMPLEX STOPPER MM LC/UPC (2,00mm, 3,00mm) Brown', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('93779d49-c61f-4389-ba3d-4b9e2009c00a', 'TSS206', 'Pigtail SM SX (2,0mm) SC/UPC 1,5m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('93cefd45-563b-442e-99d8-b933d5e486c9', 'P1C007', 'Precon 1 Core SC/UPC-SC/UPC 150M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('94863fdc-fde2-43e9-b1dc-1e2264f2a515', 'PSS240', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('950a1e26-23e4-40a5-9df8-d527d4b5f451', 'PSS227', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9562caf4-4d9d-4634-be1a-d26007d951f3', 'PSD329', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('95997247-6840-4dbd-9862-da1e4ec80887', 'TSS902', 'Pigtail SM SX (0,9mm) FC/UPC 1,5m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9610371c-192b-4141-a2fb-341a4a7c7398', 'P1C002', 'Precon 1 Core SC/APC-SC/APC 120M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('96de82fa-b68d-44ca-8e07-3bc1434ea770', 'PSS319', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('98b16609-8f93-4d59-a39a-082dc50fab0e', 'S18PLSAK', 'Splitter 1:8 PLC SC/APC (Kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('99416a1a-ce28-4ae0-a598-7ffe7ab44699', 'PSDOD01', 'Patchcord SM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9a1d0eed-e2fa-44a5-b794-b5383a8aae3e', 'RFP1C', 'Roset Faceplat 1 Core ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9a1d88a1-027b-4a8e-98af-e4caf0308039', 'TSS911', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (oren)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9a37507d-da13-4d8f-80ae-895f892b09ce', 'PSD243', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9a380816-6b24-43c1-9289-5de2f3fb64f2', 'TSS910', 'Pigtail SM SX (0,9mm) SC/UPC 1,5m (kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9a38d070-6fe0-4b15-b1e2-4676147682e2', 'PSS333', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9be20941-909e-45f5-9982-966b22b91df3', 'AS2424', 'SM AERIAL SCPT 24 Core/GYHC8A-24B1.3/24Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9bee7dd4-d774-466b-b0d0-a2be3f5ae5ee', 'SSS9', 'SIMPLEX STOPPER SC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9c453b4a-cdf9-43bc-80a9-5fd2dd359bcc', 'S18PLSUR', 'Splitter 1:8 PLC SC/UPC (Kuning) (Ryutelco)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9c660ad6-dec4-4418-8f35-df637cfddd06', 'PSDOD05', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9d0e6494-156a-4fed-abf0-9d90ba6a0b89', 'PSS312', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9dbfe037-bbff-40bf-a9dd-bcb9d3e866a0', 'PSS249', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9e67fd6c-a7e2-4d1a-9967-742d3cb2df89', 'PSS208', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9f0f142a-114b-4f13-956d-3568e94a5f22', 'PSS215', 'Patchcord SM SX (2,0mm) FC/UPC-SC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9f6e5418-5716-41c5-8ebb-3a656013b2a9', 'TSS901', 'Pigtail SM SX (0,9mm) FC/UPC 1,5m (kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('9f90e4d2-2d6c-4e45-b88b-56f134be4ffb', 'PG5', 'PG 5', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a025bd60-fbbe-4f96-a553-f3125b3185e1', 'PSS211', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'TMO2D301', 'Pigtail MM OM2 DX (3,0mm) ST/PC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-07-10 06:03:39'),
('a0d04984-a833-46be-8c70-bafd601588bc', 'SSFU9', 'SIMPLEX STOPPER FC (0,9mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a2087cdf-9738-4d4c-b11f-5216ff28f018', 'PSS221', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a2c0dfaf-1250-46d7-bf4a-36b2bee06126', 'PBIO', 'Pedestal Besar isi ODP', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a2c97e11-a34c-4929-ab5c-0db4622cd10d', 'FT376', 'SPRING Precon SC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a35f643f-add6-4d0a-8be9-9744f10374bc', 'ZSAMN', 'Zig SC/APC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a55f11a9-6656-49fb-9b3a-11c1c9252013', 'TT0906IC', 'Teflon Tube 0,9/0,6mm Ivory Colour', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a59c694f-23aa-447e-a292-592a33f055f3', 'SAPO', 'Polishing SAPO D 30 Micron (Hijau)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a616c88c-4667-4a4a-88ae-fac7b11ea119', 'SOLAB', 'SOC LC/APC ( Belum Terkupas )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a664b27e-9314-4a9b-962a-2d66241ee747', 'PSS214', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a7bf0622-aee9-4c04-ace3-d28aa8a2ba63', 'PSDOD04', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a7c31df6-b945-4ea8-843e-33bde98ffc70', 'PSLVE', 'Protector sleeve 60mm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a7ff46a8-cfbc-4411-b6df-c82c1190cb8d', 'PSS251', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a80fb74b-2a5c-4647-9fb1-bf5883ecb84d', 'SSUP80', 'Slack Support 80cm', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a80fc727-af3a-4fe0-93a8-9bc0568198af', 'TMO2S203', 'Pigtail MM OM2 SX (2,0mm) LC/PC 6m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a89fda8d-993f-4178-9f25-719d65573850', 'PSD228', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a8a14f1d-7443-4a2c-9c4c-8119f07a9176', 'PSS222', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('a936a120-e334-46cf-9877-f230d0a029d7', 'PSD305', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ab067a68-1ac9-4338-bd37-4825a4c06d83', 'PG135', 'Plastik Gambar 13.5 x 14.5', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ac5ba2bc-efea-4d28-ad2f-050a9923894d', 'PSS246', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ac62a19c-89e9-4e4b-94a3-16eb3fa3ea40', 'S28MOEC', 'Splitter 2:8 Modular ( Tanpa Connector )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('afe0d63d-7164-49d8-8488-83c1e5014c27', 'PSD311', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b044ffa6-edaf-418e-91b9-3dc4131df04e', 'PSS213', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b0bf3385-b784-48cc-87ed-cf820853fe3d', 'R2CYOE', 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b0cb6943-d166-4656-b635-6e353ab91b23', 'TSS905', 'Pigtail SM SX (0,9mm) LC/UPC 1m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b2105b43-49d8-4317-897e-63bf07787375', 'SSS23', 'SIMPLEX STOPPER SC (2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b28247d0-1c3f-421c-88f6-daf81b7b4197', 'P1C003', 'Precon 1 Core SC/APC-SC/APC 200M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b2a5ee77-139b-451a-abae-3f404a39fb65', 'S14MOSUR', 'Splitter 1:4 Modular SC/UPC (Ryutelco)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b2dcd8d9-4f62-49ae-9cef-cc9b3e3d00c4', 'PSD236', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b38d0037-ccd6-45f5-9536-ab0013d7b002', 'PSS217', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b3dbf294-8fdd-413b-b2d9-44a92c79809d', 'TSS903', 'Pigtail SM SX (0,9mm) FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b48003d4-d410-4607-80f8-4566adfe5dd9', 'TSD203', 'Pigtail SM DX (2,0mm) FC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b4a0e08b-8b4f-41e7-8882-948daaf6d3a3', 'TSD201', 'Pigtail SM DX (2,0mm) FC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b52e7a7a-51f5-47b4-9380-d0396f05b9cc', 'S18PLSUW', 'Splitter 1:8 PLC SC/UPC (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b577d546-c42c-4e8a-9ef9-3d70d8bb28e2', 'DCA66B1', 'SM DUCT CABLE ARMORED 6 Core/GYFA-6B1.3/1Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b6bcde29-e5fc-49cb-aa1e-7154d0ebb53f', 'TSS907', 'Pigtail SM SX (0,9mm) SC/APC 2m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b753fea6-8159-4b24-8159-62d927214485', 'PSS328', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b78c2923-ba08-4711-8444-9bee04841dd0', 'PSS237', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b87282e1-0711-442d-9f0b-9af422ac94d0', 'S18PLSUR', 'Splitter 1:8 PLC SC/UPC (Rainbow)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b8d951e7-fbc2-4f75-afee-9fcceee6eceb', 'DCA122D2', 'SM DUCT CABLE ARMORED 12 Core/GYFA 12 G652D/2Tube', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b90b5eb4-a279-47c2-9472-fc601afe479c', 'PB12FT001', 'Pigtail Bundle 12 Core SC/APC 1,5M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b96186cd-7f13-487d-bf74-575106d31376', 'PSS201', 'Patchcord SM SX (2,0mm) FC/APC-FC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('b9b36732-c249-4df2-a031-f0a21c14657d', 'PSD301', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ba3745cf-4a31-4f7a-9b64-7b6cd342eca7', 'PSS229', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bad6a056-1add-4cb9-8625-c79b562faecf', 'PSS241', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bc09ab9a-f8ea-4a6b-b0c6-f4f8701e7959', 'PSDOD03', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bc520efc-5823-4f33-8012-e1ef5591ace3', 'PSD304', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bc7e4d93-bc3d-40cb-957f-441d563e6122', 'STSU2', 'STOPPER ST UPC (2,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bd76bef8-460e-42f7-958e-a6b901164968', 'SS923', 'SPRING SC - FC (0,9mm), 2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('be79e0af-e670-4695-868e-82823a7fd9de', 'S14PLSAWN', 'Splitter 1:4 PLC SC/APC (putih) No brand', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bf1a910a-9b04-4d75-959f-d576324ec881', 'PSD247', 'Patchcord SM DX (2,0mm) ST/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bf1f7816-4191-472f-bba7-9816927e064d', 'PSD314', 'Patchcord SM DX (3,0mm) SC/APC-LC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bf359216-bf1b-4fe1-8144-4e283cfd13d9', 'P2023', 'Plastik 20 x 23', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('bf9f5f1d-5baa-46cf-a369-c135cd1ac2fc', 'TMO2S208', 'Pigtail MM OM2 SX (2,0mm) ST/PC 1,2m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c2219f25-2568-48b6-ad03-f9d934226cb7', 'R4CWC', 'Roset 4 Core (Tanpa Kardus )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c3afe7fd-faff-45b3-877c-c90e93cdee73', 'RB', 'Rak Besi', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c45182fa-fae3-4fac-af65-4648664aaf5e', 'PSS233', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c4786c8e-b26a-4c4d-8c9a-89ed5d0ba5c4', 'PSS209', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c49ffd8c-556a-47bf-91d0-76e1dca5b182', 'VFALOA', 'Visual Fault Locator AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c4ae4929-d6ea-43cb-8772-aec41dc457da', 'TS1000', 'Tissue 1000gr', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c65a6918-f6da-42cd-9563-6c701c7b71c3', 'ROCS', 'Rotary Cable stripper', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c91cce56-d608-4e60-924c-564ae011d0cb', 'SMNT', 'Spray Mount ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('c945a0d7-7c85-445b-bfc2-e8463c980b55', 'PSD225', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ca3b8734-416f-4c38-ae27-06aa445c4c46', 'STPFIM', 'Stripper Fis Import', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('ca8808c1-a6b4-47b2-879b-d988c8ad41d5', 'PSS226', 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cac3b4e2-b505-411b-a2c6-d213e4a37ab3', 'ZLUMN', 'Zig Housing LC/UPC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cacd3d3b-6221-4b09-9317-2843bd9b0fc4', 'SOSAB', 'SOC SC/APC ( Belum Terkupas )', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('caf4f611-d1e1-4675-980d-080204c9b564', 'L52AM', 'Tangga 5,2m AMG', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cafffcf1-dac2-43f7-abc0-32a384bba042', 'PSS218', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cc4b6b7f-4710-46a0-b958-d52e1aa4a7df', 'TMO2S202', 'Pigtail MM OM2 SX (2,0mm) FC/PC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cdd7fc5c-edc7-4ef4-ba2c-b7008fca334b', 'PSD315', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cde6e9b4-ad15-4734-8d7d-f4c1726de623', 'PSD326', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cec013b8-961d-4464-a289-6da2fec82770', 'PSS304', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cf02d601-1d27-4dc7-9cff-2074a7c1e6ad', 'SCLPCL', 'Smart Cleaner LC (Pen Cleaner LC)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cfadd0c2-e5a5-4ca2-ba47-f9a83499f279', 'SL923', 'SPRING LC (0,9mm), 2,00mm, 3,00mm)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cfb66ce2-2e83-4b40-9977-75e91cb6c98f', 'S18MOSUY', 'Splitter 1:8 Modular SC/UPC YOFC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('cfb90e95-68f9-4cd0-b41a-d8a95d337bc9', 'PSS315', 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d274c87c-12c3-4106-8679-7ff066154f36', 'PSS302', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d282e0c4-5599-45a7-b80d-36fb01d10f54', 'PSS334', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d3829fea-5f09-45e8-90c6-16b628e6df9f', 'ZSUMN', 'Zig SC/UPC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d556eca2-61dd-4a8d-8dcf-d1a9de3000d9', 'TSS303', 'Pigtail SM SX (3,0mm) SC/UPC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d6dd0772-93f6-478d-b5aa-1feaba91830f', 'PSD246', 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d78490b7-e743-42fe-ad32-2b8bb30e45a8', 'SCLJP', 'S Clamp Jepit', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d8086f7e-ac04-4f53-9b36-43170f105ac8', 'PBKS', 'Pedestal Besar Kosongan ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('d9ea8164-aff7-4501-b2b3-71a7592e7dff', 'WBBL', 'Wrapping Bubble Bening', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('da59bc17-ffaa-4db8-80cc-019de857ad3c', 'PSD219', 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('dad876ca-64c5-4a10-9bc3-3b3480714007', 'PSS239', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('db1f1600-d4fc-463e-b91b-e7def726df8f', 'PSS320', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('db1f6192-d365-4837-a20f-1621fd11a32f', 'TSS916', 'Pigtail SM SX (0,9mm) ST/UPC 1m ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('db8c2059-3cf8-459f-994d-5120fe1b39db', 'SYR1M', 'Suntikan 1ml', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('dcdbaf2c-c5ac-4a4c-8590-2bfa12b370d0', 'PSS307', 'Patchcord SM SX (3,0mm) FC/UPC-SC/APC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('dd6a729f-e71f-468c-a249-7f7fdaf0c169', 'VCO', 'Velcro', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ddfbac1f-f946-425a-b7c6-bba1ea8b91c6', 'STLSB', 'Stainless Biasa', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('df4c1303-c602-4f30-86da-bacf58d828f5', 'PSS324', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e1d30add-04a6-4eb3-8d24-3b8757ec32f2', 'R8C', 'Roset 8 Core Polos', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e25831d4-d585-436d-934c-d8a3bff65818', 'SCLRD', 'S Clamp bulat ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e2e1afd3-2198-4229-a5fd-68736a12ad84', 'PSS314', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e32b3f90-a6e7-4257-910a-14c418f1f341', 'TSPL', 'Tinta Stempel', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e33db696-9a38-4029-a264-fc422edd171f', 'R4CZW', 'Roset 4 Core ZTE (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e35bc4ac-a0b3-4a5c-aad9-73955c209c31', 'PSS235', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e5081045-c074-47e5-b528-4458f6e055c5', 'PSD220', 'Patchcord SM DX (2,0mm) SC/APC-SC/APC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e519137c-ac02-406c-b03e-c75f5c0f89ef', 'TSS204', 'Pigtail SM SX (2,0mm) SC/APC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e5ac8a53-3d2b-4e13-8890-0ce0fcea4eb6', 'PSS223', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e69f3002-0491-41ae-8b75-43162db3b29e', 'P1C009', 'Precon 1 Core SC/UPC-SC/UPC 50M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e7e5b901-d164-4b1d-aa71-30bdb3542c32', 'TMO2S204', 'Pigtail MM OM2 SX (2,0mm) LC/UPC 27m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e80b16c8-81cf-41af-8206-76edbc1e39f0', 'S14MOSU', 'Splitter 1:4 Modular SC/UPC ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e863ed89-530f-4632-bee1-154d6d2ed205', 'WBBH', 'Wrapping Bubble Hitam', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('e86d8046-da40-47b2-b116-f59166459e43', 'PSD229', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ea953c50-c4fe-498a-9790-12c6747ac0ed', 'PSS306', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('eaa3415b-bda9-4c0c-b164-5dbc42aa31d2', 'PKKT', 'Pedestal Kecil Kosongan (Tanpa Kardus)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ec263257-4f06-4cbf-b711-4e21e96d2d44', 'PSD302', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ec353038-f6a9-45fc-a01e-2adfe689d728', 'PSS252', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ec548ace-9270-4016-90f9-26aed77f05ab', 'TSS906', 'Pigtail SM SX (0,9mm) SC/APC 1m (Putih)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ec73e092-8d33-4b7e-b9af-cc93830a11a3', 'PSD321', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ecbde8a1-3112-48aa-ae35-4d0afd1b850e', 'PSS330', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ece57d51-2f1b-4eab-91eb-c5fa43f90716', 'TSD202', 'Pigtail SM DX (2,0mm) FC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('edac12c5-cee6-47fc-bd9d-8cd23aa344a4', 'PSS332', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ef0bddb0-0664-4a6c-8235-9788faf4221d', 'S18MMSUR', 'Splitter 1:8 Mini Modular SC/UPC (Ryutelco)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f1a1ea80-1462-413e-a354-e2baf3e540bb', 'PSS322', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f3c741df-78f4-4e81-9c2a-b4c7ada8021b', 'S28MOWC', 'Splitter 2:8 Modular Tanpa Connector ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f52f963d-e4cb-4e07-998a-4bfa33640943', 'P85', 'Plastik 8 x 5', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f7ce68cc-98e2-4f8c-a9cf-1176c70a4f59', 'PSD234', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'PSS248', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f7f0bea2-e34e-4683-a3e9-7c7e1c1c9cc0', 'TSS913', 'Pigtail SM SX (0,9mm) SC/UPC 1m (kuning)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f9f60f40-1dee-4dbc-8edf-0e1b91dd1ece', 'P1C010', 'Precon 1 Core SC/UPC-SC/UPC 75M', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('f9f65618-80e9-4abc-8677-04b83ae0a6e5', 'PSS212', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fa3af189-f48a-41d0-a58a-8debee4a6465', 'SPNSI', 'Suspensi ', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fa4f5543-e1b9-419e-85da-10b84b572c10', 'TSSKIM', 'Tissue Kimtech', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fa7343ab-e2e8-4864-bbf9-00d6077c4973', 'SSPSSA', 'SIMPLEX STOPPER Precon SC Semi Assembly', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fac6298e-6dc1-419b-95a5-3107c21241f2', 'PFSSU', 'PLUG FRAME SC', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fae6a736-e742-4dd4-8870-ba44944b46d7', 'TSS915', 'Pigtail SM SX (0,9mm) SC/UPC 2m (oren)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('fb7cbe27-df13-4adf-bd44-ec662077e58e', 'PSD330', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ff2b2df8-2a65-4544-847b-78b4b52c25ab', 'PSS325', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 1m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ff311236-4679-4d0e-8445-711b9e97879d', 'ZFUMN', 'Zig Housing FC/UPC  (Mesin Manual)', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'eko', NULL, '2020-05-16 07:11:18', '2020-05-16 07:11:18'),
('ffbf2d58-7ec4-42d3-8920-9e4e71b8e5c1', 'TMO2S902', 'Pigtail MM OM2 SX (0,9mm) ST/PC 1,5m', 1, 1, NULL, '4e8b0f0e-e718-4150-a7fb-9dd619e413c1', '100.00', '1500.00', '2000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'eko', 'Mirza Rizaldy', '2020-05-16 07:11:18', '2020-07-10 05:23:01');

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

--
-- Dumping data for table `product_boms`
--

INSERT INTO `product_boms` (`id`, `product_id`, `material_name`, `quantity`, `uom_id`, `created_at`, `updated_at`) VALUES
(1, '5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'Sarung Tangan Karet', '1.00', 1, '2020-05-16 08:50:21', '2020-05-16 08:50:21'),
(2, '5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM1 DX (2,0mm)', '3.00', 2, '2020-05-18 02:53:36', '2020-05-18 02:53:46'),
(3, '5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'Connector MM LC/PC (2,0mm)', '4.00', 1, '2020-05-18 02:54:19', '2020-05-18 02:54:19'),
(4, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Cable MM OM1 DX (2,0mm)', '3.00', 2, '2020-05-18 02:55:41', '2020-05-18 02:55:41'),
(5, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC (2,0mm)', '2.00', 1, '2020-05-18 02:56:16', '2020-05-18 02:56:16'),
(6, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Connector MM ST/PC (2,0mm)', '2.00', 1, '2020-05-18 02:56:42', '2020-05-18 02:56:42'),
(7, '5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'Connector MM SC/PC 3,0mm', '2.00', 1, '2020-06-19 12:04:07', '2020-06-19 12:04:07'),
(8, 'ffbf2d58-7ec4-42d3-8920-9e4e71b8e5c1', 'Cable MM OM2 SX (0,9mm) Orange Import', '1.50', 2, '2020-07-10 05:25:00', '2020-07-10 05:25:00'),
(9, 'f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'Cable SM SX (2,0mm) Yellow', '1.00', 2, '2020-07-10 06:10:06', '2020-07-10 06:10:06'),
(10, 'f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'Connector SM SC/UPC (2,0mm)', '2.00', 1, '2020-07-10 06:10:39', '2020-07-10 06:10:39'),
(11, 'f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'Ferulle 250uf SM SC/FC - UPC', '2.00', 1, '2020-07-10 06:11:31', '2020-07-10 06:11:31'),
(12, 'a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'Cable MM OM2 DX (3,0mm)', '3.00', 2, '2020-07-13 09:56:53', '2020-07-13 09:56:53'),
(13, 'a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'Connector MM ST/PC (3,0mm)', '1.00', 1, '2020-07-13 09:57:32', '2020-07-13 09:57:32'),
(14, 'a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'Ferulle 250 uf ST/PC', '1.00', 1, '2020-07-13 10:10:47', '2020-07-13 10:10:47');

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
(6, 'Bahan Baku', 'eko', NULL, '2020-01-10 17:26:40', '2020-01-10 17:26:40'),
(7, 'Asset', 'Mirza Rizaldy', NULL, '2020-05-16 07:30:18', '2020-05-16 07:30:18');

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
  `supplier_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `sub_total` decimal(50,2) DEFAULT NULL,
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
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `ref_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returs`
--

CREATE TABLE `returs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retur_items`
--

CREATE TABLE `retur_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `retur_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_qty` decimal(50,2) NOT NULL,
  `retur_qty` decimal(50,2) NOT NULL,
  `retur_reason` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retur_reasons`
--

CREATE TABLE `retur_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retur_reasons`
--

INSERT INTO `retur_reasons` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Barang Rusak', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(2, 'Tidak Sesuai Spesifikasi', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(3, 'Warna Salah', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(4, 'Barang Tidak Lengkap', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(5, 'Kemasan Barang Rusak', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(6, 'Ingin Tukar Barang', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(7, 'Barang Salah Kirim', '2020-01-22 19:25:56', '2020-01-22 19:25:56'),
(8, 'Barang Kelebihan Kirim', '2020-01-22 19:25:57', '2020-01-22 19:25:57');

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
(10, 'Logistik', 'web', '2020-01-13 15:47:06', '2020-01-13 15:47:06'),
(11, 'Finance Approval', 'web', '2020-06-18 12:24:00', '2020-06-18 12:24:00');

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
(1, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(15, 5),
(17, 5),
(18, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(34, 5),
(42, 5),
(43, 5),
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
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(15, 7),
(27, 7),
(31, 7),
(32, 7),
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
(50, 8),
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
(23, 9),
(24, 9),
(25, 9),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 9),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
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
(46, 10),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(15, 11),
(23, 11),
(24, 11),
(25, 11),
(26, 11),
(42, 11),
(43, 11),
(44, 11),
(45, 11),
(46, 11),
(48, 11),
(49, 11);

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
  `remain` decimal(50,2) DEFAULT NULL,
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
('5af2f030-efe0-426e-819d-6df5f6fb8cc5', 'Pending Transfer Stock', '2020-09-05 16:04:46', '2020-09-05 16:04:46'),
('5bc79891-e396-4792-a0f3-617ece2a00ce', 'Requested', '2019-09-20 16:14:02', '2019-09-20 16:14:02'),
('5f548276-3979-4308-94ec-7b5b59841688', 'Retur Stored', '2020-01-22 18:28:02', '2020-01-22 18:28:02'),
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
('e3f73f52-00f7-47a6-9831-3a81b36f65e8', 'Delivery - Partial', '2020-08-26 20:19:09', '2020-08-26 20:19:09'),
('e7b1f161-fa81-447c-a9bc-f13a220ce534', 'Cancel Delivery', '2020-01-20 19:08:31', '2020-01-20 19:08:31'),
('e9395add-e815-4374-8ed3-c0d5f4481ab8', 'Delivered', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('e9f870d8-ebe8-462e-a6b6-c03f4f5bd8eb', 'Retur Received', '2019-10-12 16:26:16', '2019-10-12 16:26:16'),
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
  `parent_id` int(11) DEFAULT NULL,
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
(4, 2, NULL, 2, 'Haspel', '1000.00', 'eko', NULL, '2019-09-21 17:51:54', '2019-09-21 17:51:54'),
(5, 1, 1, 1, 'Set', '1.00', 'Mirza Rizaldy', NULL, '2020-02-24 17:13:21', '2020-02-24 17:13:21'),
(6, 1, NULL, NULL, 'rol', '1.00', 'Dina', NULL, '2020-05-18 07:55:15', '2020-05-18 07:55:15');

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
  `lockout_time` int(11) NOT NULL DEFAULT '30',
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `division_id`, `status_id`, `last_login_at`, `last_login_from`, `lockout_time`, `session_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Icha C (W/L Adm)', 'ichalesdiana@gmail.com', NULL, '$2y$10$QB0oAQHJ6PSdlp1O/WJOBuJhOw/NmJ4QG0Cb0vAKNOdA9qvy8rpFy', 'user.jpg', '9f94e00b-5fdc-4dc9-8057-fd21ded69869', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 17:49:14', '10.0.0.1', 0, 'jOpDbK7w0eOZpiQTeM9ScMpNQrpuuKrO0VnNstWI', NULL, '2020-01-08 11:18:02', '2020-06-19 10:49:14'),
('24d21373-b462-4888-8d27-d365c33fbf6a', 'manajemen', 'mgt@local.com', NULL, '$2y$10$8Whd9sXETS2AO0P6vMO4Gev5kuJv91g.2y/1wom3yahWY8PqOE.9m', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 19:00:56', '10.0.0.1', 0, '61mIdZLab7LnhOYg9bD2ZsmQEeR4tdstdN0Xh8xF', NULL, '2020-01-11 17:52:23', '2020-06-18 12:00:56'),
('25b76385-8f8d-4422-a62e-21c671bfcaec', 'Fenilia (Finance Adm)', 'finance@local.com', NULL, '$2y$10$kpn3XU.WVnMKzDsl7SYDwekqH2F2qZ6.uM68DuCy9Vq0xxr.pp7pq', 'user.jpg', '1886a2b3-2fb7-4f40-b577-dad076a5d3b1', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 16:02:45', '10.0.0.1', 0, 'BNP7pCthf8REYws7mSXFeQA6G9Hcsneq6l4Fknzt', NULL, '2020-01-13 15:46:00', '2020-06-19 09:02:45'),
('45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Dimas', 'sysadmin@local.com', NULL, '$2y$10$WG3CbINDhsWN.0eOUhHTJO9XjEkhl/VrSzloC/i4U.dTGL0jBseH2', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-07-10 13:06:22', '10.0.0.1', 0, 'xeme6mNaDbQvo5evR8Jrd9LEmoRMr7QJSNZ1G75z', NULL, '2020-01-11 19:25:36', '2020-07-10 06:06:22'),
('74718047-dc5d-4f47-87fc-8db9e4fdb527', 'Nining S. (Sales Adm)', 'niningsupriyatin79@gmail.com', NULL, '$2y$10$oZcIGfNq5sE2BtBD8TUKXuB3bf6F7yX80zW5kLkc9V9qT5YUah2oy', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 17:46:48', '10.0.0.1', 0, 'lziWqGCt5Fg5U4nObj4p7eiDs42KunZOSNF73r8v', NULL, '2020-01-08 13:42:19', '2020-06-19 10:46:48'),
('820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Rizky ITEOS', 'rizky@local.com', NULL, '$2y$10$b89DIndoVlEjvOv3yYlreOyBZXgeC02QlF5fkR6l9WlHrgcWMsHKW', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, NULL, 0, '', NULL, '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
('994a52f5-285e-4401-95b2-166cc353bb65', 'Reny (Finance Adm)', 'reneebagas@gmail.com', NULL, '$2y$10$WhuBu0MmegkIqEckvYp.aeIU6tmLJEVmkzCFZ/XGwoLwZGEZ4mfg2', 'user.jpg', '1886a2b3-2fb7-4f40-b577-dad076a5d3b1', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 17:45:13', '10.0.0.1', 0, 'rdjoAa3VSsJo3Rl3iTEkXWMlal3v4Gl0XXLf8SCx', NULL, '2020-01-09 13:07:34', '2020-06-19 10:45:13'),
('a7acf627-9108-44c0-a028-2d9bf7829108', 'Irena (Production Adm)', 'adminproduksi@local.com', NULL, '$2y$10$QAnCQHVav8fniX6l4G8z1enbYeH2geHjiiBRWReEGMgL0J70ZkhXy', 'user.jpg', 'fe97cbde-836a-439e-8b64-31783aaee279', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 17:51:09', '10.0.0.1', 0, 'EyggFp2aR8X12wIqsXxz2Qlw4RGMoXyR30cniThU', NULL, '2020-01-08 11:21:49', '2020-06-19 10:51:09'),
('bb536994-ada3-4caa-b97b-e412dc2cc882', 'eko', 'eko@local.com', NULL, '$2y$10$iSHBp.VTgyBazpklQVtU1e.V16Yiwdy6ph7LAJ1Zi8sNdwQbA4r16', 'bb536994-ada3-4caa-b97b-e412dc2cc882_avatar1580087198.png', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-09-20 01:41:10', '127.0.0.1', 30, 'jIdPCUqYUejd0H6xXkchXqCsEaasFKkp5fMuAHns', NULL, '2019-09-04 06:31:44', '2020-09-19 18:41:10'),
('c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Mirza Rizaldy', 'mirza@local.com', NULL, '$2y$10$uX/4npRHnwttZ5TRhny5OehUdwjBRBCrMfkdSWjVlCQ.egeZKfsAG', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-07-27 11:37:55', '192.168.0.1', 0, 'Bapt2WhsoFuaVawgxrD6he2VimPLtJXXBuYMtzbf', NULL, '2020-01-06 17:46:22', '2020-07-27 11:37:55'),
('cb512697-44d9-4683-9bae-0a8e28a3252b', 'Dina', 'purchasing@local.com', NULL, '$2y$10$8rm11sCcK0vrsAIULWdBBOWUtfp9pP/wdwTg4FSNqXEzThrnaUWC2', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 16:44:22', '10.0.0.1', 0, 'lXBfk2TWTnPRc5ZrtJGqn8mXgGra8ozCo6cp8Tt9', NULL, '2020-01-08 13:42:59', '2020-06-19 09:44:22'),
('f68f2a18-623f-4c1a-bfde-7f029c603a17', 'adminsales2', 'adminsales2@local.com', NULL, '$2y$10$OFHrs.J9ITASIoVP5mOD5uZ0XTkKzKdpobMjf6NSV/LwA4G8vlTpS', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-01-29 08:45:16', '101.255.5.4', 0, 'IvYF5OuXbHXDMkH0wBDydu3TzuUpiaqGOPwUqZ2W', NULL, '2020-01-11 18:09:34', '2020-01-29 08:45:16');

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
(40, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Produksi', '2020-01-11 17:52:23', '2020-01-11 17:52:23'),
(41, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Scrap', '2020-01-11 17:52:23', '2020-01-11 17:52:23'),
(42, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Utama', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(43, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Produksi', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(44, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Scrap', '2020-01-11 18:09:34', '2020-01-11 18:09:34'),
(45, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Utama', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(46, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Produksi', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(47, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Scrap', '2020-01-11 19:25:36', '2020-01-11 19:25:36'),
(48, '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Gudang Produksi', '2020-01-11 19:26:54', '2020-01-11 19:26:54'),
(49, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Utama', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(50, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Pengiriman', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(51, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Produksi', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(52, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Scrap', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(53, '820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Gudang Retur', '2020-01-12 18:56:45', '2020-01-12 18:56:45'),
(54, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Utama', '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
(55, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Produksi', '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
(56, '25b76385-8f8d-4422-a62e-21c671bfcaec', 'Gudang Scrap', '2020-01-13 15:46:00', '2020-01-13 15:46:00'),
(57, '071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Gudang Pengiriman', '2020-06-17 04:44:11', '2020-06-17 04:44:11'),
(58, '071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Gudang Retur', '2020-06-17 04:44:11', '2020-06-17 04:44:11'),
(59, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Pengiriman', '2020-06-18 09:44:09', '2020-06-18 09:44:09'),
(60, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Retur', '2020-06-18 09:44:09', '2020-06-18 09:44:09');

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
-- Indexes for table `models_retur_items`
--
ALTER TABLE `models_retur_items`
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
-- Indexes for table `returs`
--
ALTER TABLE `returs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retur_items`
--
ALTER TABLE `retur_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retur_items_retur_id_foreign` (`retur_id`);

--
-- Indexes for table `retur_reasons`
--
ALTER TABLE `retur_reasons`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=817;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `models_retur_items`
--
ALTER TABLE `models_retur_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_boms`
--
ALTER TABLE `product_boms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retur_items`
--
ALTER TABLE `retur_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retur_reasons`
--
ALTER TABLE `retur_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  ADD CONSTRAINT `retur_items_retur_id_foreign` FOREIGN KEY (`retur_id`) REFERENCES `returs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
