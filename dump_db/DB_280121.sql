-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 04:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('008a1051-7b08-4ba8-8677-24911558245e', 'BUDICVPJAYA', 1, 'BUDI BDG - CV.PUTRA JAYA - NP', 'BUDI BDG - CV.PUTRA JAYA - NP', '021234567890', '021234567890', 'tidakada@tidakada.com', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 1, 2, NULL, NULL, 0, NULL, 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:03:22', '2020-11-16 21:59:27'),
('0250fb47-35bc-4c44-b164-9049ea221e97', 'EMMA', 1, 'EMMA - NP', 'EMMA - NP', '0822-7760-6341', '0822-7760-6341', 'tidakada@tidakada.com', 'Rukan Artha gading niaga blok E 11-12, kelapa gading Jakarta Utara', 'Rukan Artha gading niaga blok E 11-12, kelapa gading Jakarta Utara', 1, 2, NULL, NULL, 0, NULL, 'adminsales2', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 13:42:43', '2020-11-17 10:56:29'),
('073b4e43-f8a9-49a4-8190-591c0cfefc7a', 'IRWAN', 1, 'IRWAN', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 18:08:22', '2020-12-02 18:08:22'),
('0e3c008c-227c-436e-a8ef-9bb24367e6ca', 'FADLILHADI', 1, 'FADLIL HADI', NULL, '-', '-', 'tidakada@tidakada.com', 'Medan', 'Medan', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 11:03:54', '2020-12-03 11:03:54'),
('11937f5b-af6e-49fc-8cea-ef370e9c76f0', 'SUPARMAN', 1, 'SUPARMAN - NP', 'SUPARMAN - NP', '0813-8333-8444', '0813-8333-8444', 'tidakada@tidakada.com', 'JL. GADING RAYA , PISANGAN TIMUR, PULOGADUNG-JKT', 'JL. GADING RAYA , PISANGAN TIMUR, PULOGADUNG-JKT', 1, 1, NULL, NULL, 0, NULL, 'eko', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:07:57', '2020-10-05 18:24:48'),
('11df0e58-376e-45da-9cd7-663bfb822ee5', 'ENGKIRAHMAT', 1, 'ENGKI RAHMAT - NP', 'ENGKI RAHMAT - NP', '081776600500', '081776600500', 'tidakada@tidakada.com', 'Perumahan Graha indah. Jln srikaya No.D7/12 RT.007 RW 010. Kelurahan Jaka Mulya, Kecamatan Bekasi Selatan, Kota Bekasi', 'Perumahan Graha indah. Jln srikaya No.D7/12 RT.007 RW 010. Kelurahan Jaka Mulya, Kecamatan Bekasi Selatan, Kota Bekasi', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:32:23', '2020-10-18 15:58:45'),
('153339d2-bf88-4b93-99c1-73d6afdda230', 'PT.FMI', 1, 'PT FIBER MEDIA INDONESIA - NP', 'PT FIBER MEDIA INDONESIA - NP', '(021) 75997997', '(021) 75997997', 'billingfinance@tachyon.net.id', 'Jl. TB Simatupang, RT.3/RW.1, Cilandak Bar., Jakarta, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12550', 'Jl. TB Simatupang, RT.3/RW.1, Cilandak Bar., Jakarta, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12550', 1, 1, NULL, NULL, 0, NULL, 'eko', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:23:56', '2020-10-05 18:27:34'),
('1b4b5e98-b657-44e2-b139-d64b9d28b41d', 'YUSUP', 1, 'YUSUP - NP', 'YUSUP - NP', '083807336979', '083807336979', 'tidakada@tidakada.com', 'JL. Srikaya Ujung No.10 Utan Kayu. Jakarta timur', 'JL. Srikaya Ujung No.10 Utan Kayu. Jakarta timur', 1, 2, NULL, NULL, 0, NULL, 'adminsales2', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:43:45', '2020-11-17 10:35:03'),
('1c527872-628d-43aa-a61e-b02f74ee1154', 'PT.BTS', 1, 'PT BALITOWERINDO SENTRA, TBK - P', 'PT BALITOWERINDO SENTRA, TBK - P', '+62 21 5790 5788', '+62 21 5790 5789', 'customer.support@balitower.co.id', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', 1, 4, NULL, NULL, 1, '02.601.536.2.054.000', 'eko', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 07:48:58', '2020-10-18 14:16:42'),
('1f02ca00-7654-4553-9e1b-2e7f35232f9c', 'SURYADITGR', 1, 'SURYADI - TANGERANG - NP', 'SURYADI - TANGERANG - NP', '0812-8444-6006', '0812-8444-6006', 'tidakada@tidakada.com', 'JL.H.RIWAN , KUNCIRAN PINANG-TANGERANG', 'JL.H.RIWAN , KUNCIRAN PINANG-TANGERANG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:10:12', '2020-10-05 18:18:42'),
('21fca1cd-1e44-4895-b877-7f70903c1684', 'FTI-MFG', 2, 'PT Fibertekno Teknologi Inovasi', 'PT Fibertekno Teknologi Inovasi', '021-3913796', '021-3913796', 'dian.hendryan@gmail.com', 'Jl. Sungai Bengawan Solo No. 9 rt 022 rw.01 Kelurahan Semper Barat, Kecamatan Cilincing Jakarta Utara - DKI Jakarta', 'Jl. Sungai Bengawan Solo No. 9 rt 022 rw.01 Kelurahan Semper Barat, Kecamatan Cilincing Jakarta Utara - DKI Jakarta', 2, 1, NULL, NULL, 0, NULL, 'Mirza Rizaldy', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-05 15:57:07', '2020-10-05 15:57:07'),
('24e3bab7-40c3-4d1d-9b4b-3b4adf002465', 'BOY', 1, 'BOY', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 16:14:10', '2020-12-02 16:14:10'),
('2d563a3d-b66a-41c9-95e9-62b8f93876c3', 'JOSEPH', 1, 'JOSEPH - NP', 'JOSEPH - NP', '08111111111', '08111111111', 'tidakada@tidakada.com', 'JL. BARU', 'JL. BARU', 1, 1, NULL, NULL, 0, NULL, 'Nining S. (Sales Adm)', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-17 06:15:29', '2020-10-05 18:30:55'),
('2ee6ff62-988e-4a85-ab72-dd792f64d7ac', 'SANIR', 1, 'SANIR - NP', 'SANIR - NP', '0811812580', '0811812580', 'tidakada@tidakada.com', '0', '0', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-11-16 17:12:29', '2020-11-16 17:12:29'),
('2f205bbc-4b5d-4310-bc3e-7843d0fc2572', 'NURDINJFO', 1, 'NURDIN JFO', NULL, '081293988586', '081293988586', 'tidakada@com', '-', '-', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-01 17:17:00', '2020-12-01 17:17:00'),
('2f38b559-0206-421c-a036-fd8fa0e49914', 'RENDIPTAIS', 1, 'RENDI PT AIS - NP', 'RENDI PT AIS - NP', '0812-1211-9919', '0812-1211-9919', 'tidakada@tidakada.com', 'JL RAYA PEMDA Kp. Tunggilis Rt.02 Rw.13 Kel. Kedung Halang Kec. Bogor Utara . Kota Bogor', 'JL RAYA PEMDA Kp. Tunggilis Rt.02 Rw.13 Kel. Kedung Halang Kec. Bogor Utara . Kota Bogor', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:59:48', '2020-10-18 12:59:48'),
('2f45fd81-b485-43cf-a628-685ed13c7d56', 'DANIELMATIUS', 1, 'DANIEL MATIUS - NP', 'DANIEL MATIUS - NP', '081280104269', '081280104269', 'tidakada@tidakada.com', 'JL. Jatinegara Barat 160 RT.006/RW.001. Kelurahan Kampung Melayu, Kecamatan Jatinegara. Jakarta Timur, DKI Jakarta', 'JL. Jatinegara Barat 160 RT.006/RW.001. Kelurahan Kampung Melayu, Kecamatan Jatinegara. Jakarta Timur, DKI Jakarta', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:01:51', '2020-10-18 12:01:51'),
('30de5d04-9539-41fa-8d45-6fca5116f3b7', 'HERICBR', 1, 'HERI - CIBUBUR - NP', 'HERI - CIBUBUR - NP', 'na', '0813-8007-0047', 'na@na.co', 'GUNUNG PUTRI , CIANGSANA, CIBONONG', 'GUNUNG PUTRI , CIANGSANA, CIBONONG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-07 08:43:36', '2020-10-05 19:11:26'),
('330f3dc9-3e0a-4bb2-840a-0f3ff8699f54', 'DANISUBANG', 1, 'DANI SUBANG - NP', 'DANI SUBANG - NP', '0857-5929-8000', '0857-5929-8000', 'tidakada@tidakada.com', 'JL. Tugu Utara No.309 Kalijati Timur Subang Jawa Barat 41271', 'JL. Tugu Utara No.309 Kalijati Timur Subang Jawa Barat 41271', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:53:53', '2020-10-18 12:53:53'),
('36928157-6421-4097-835f-791a5fe563fb', 'WAKIDINJFO', 1, 'WAKIDIN JFO - NP', 'WAKIDIN JFO - NP', '0821-1232-3102', '0821-1232-3102', 'tidakada@tidakada.com', 'JL. Kalimaya no.44 Rt.1/ Rw.8 Kapuk. Kec. Cengkareng , Jakarta - Barat 11720', 'JL. Kalimaya no.44 Rt.1/ Rw.8 Kapuk. Kec. Cengkareng , Jakarta - Barat 11720', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 13:04:10', '2020-10-18 13:04:10'),
('3718a488-6e2f-4308-9174-f3a40cf44521', 'EDY', 1, 'EDY', NULL, '-', '-', 'tidakada@tidakada.com', 'DITECH', 'DITECH', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 09:26:42', '2020-12-03 09:26:42'),
('3997c1c7-07fc-40a7-8fc8-0133e48dca6d', 'MS', 2, 'CV. MITRA SELARAS', 'CV. MITRA SELARAS', '+62-218724030', '+62-218724030', 'mitraselaras1998@gmail.com', 'Jl. Pesantren No.17 Pasir Gunung selatan Cimanggis Depok 16951', 'Jl. Pesantren No.17 Pasir Gunung selatan Cimanggis Depok 16951', 1, 1, NULL, NULL, 0, '25563289412000', 'Dina', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:31:57', '2020-10-18 11:52:33'),
('3b56d523-d28b-4338-baff-49aecc3b91d2', 'AYUNG', 1, 'AYUNG', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 09:50:43', '2020-12-03 09:50:43'),
('3b59e30e-d5ad-4bca-966b-69d275e140d4', 'Trio', 2, 'Trio 1', 'Juragan Fiber Optik', '081311344074', '081311344074', 'jfo@gmail.com', 'Jl kalimaya no 44B RT 001/08 Kel. kapuk kec. cengkareng', 'Jl kalimaya no 44B RT 001/08 Kel. kapuk kec. cengkareng', 1, 1, NULL, NULL, 0, NULL, 'Dina', 'Dina', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:53:11', '2020-10-19 15:47:10'),
('3d5983af-7c36-47ba-84e5-65298fb4fc96', 'NOARK', 2, 'Suzhou Noark Telecom Co, Ltd.', 'Suzhou Noark Telecom Co., Ltd.', '000000', '0086-18906251718', 'fiberoptical@yeah.net', 'No.128 Unit 1, Xinduhui City Square, No. 249 Gaoxin Road, Songling Town, Wujiang district, Suzhou City. 215200 , China', 'No.128 Unit 1, Xinduhui City Square, No. 249 Gaoxin Road, Songling Town, Wujiang district, Suzhou City. 215200 , China', 1, 1, NULL, NULL, 0, NULL, 'Dina', 'Dina', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:36:39', '2020-10-18 11:41:39'),
('3fb31237-4421-416c-b5ea-b160c48234b3', 'DEDIBOGOR', 1, 'DEDI - NP', 'DEDI - NP', '1234567', '1234567', 'tidakada@tidakada.com', 'Bogor', 'Bogor', 1, 2, NULL, NULL, 0, NULL, 'adminsales2', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-10-10 16:13:29', '2020-10-18 13:33:31'),
('4059e04b-d10d-4e24-b0dc-d71fe8afbc1d', '00002', 1, 'GREENET', 'PT. GREENET', '08111222222', '08111222222', 'GREENET01@GREENET.COOM', 'JL.GREN N BLUE', 'JL.GREN N BLUE', 1, 4, NULL, NULL, 1, '3434.1568.22.220', 'Nining S. (Sales Adm)', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-06-18 12:21:21', '2020-12-12 14:08:50'),
('4064d659-c357-43ea-be73-001592b897b2', 'MUAMMAR', 1, 'MUAMMAR KHADAFY - NP', 'MUAMMAR KHADAFY - NP', '087822876141', '087822876141', 'tidakada@tidakada.com', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:39:33', '2020-12-02 16:58:10'),
('42ba8249-4513-472a-82c7-3f953cb1e7e0', 'PT.PMS', 1, 'PT PRIMA MITRATAMA SEJATI - P', 'PT PRIMA MITRATAMA SEJATI - P', '0215669230', '0215669225', 'tidakada@tidakada.com', 'Komp. Geen Ville Blok No.26 Jakarta Barat 11510 Indonesia', 'Komp. Geen Ville Blok No.26 Jakarta Barat 11510 Indonesia', 1, 3, NULL, NULL, 1, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:25:01', '2020-10-18 14:25:52'),
('430af7db-0319-4c15-8837-f293ace7b2ea', 'MOULVI', 1, 'MOULVI', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 08:47:51', '2020-12-03 08:47:51'),
('47425ace-60ef-4038-abe9-e024d9443d3d', 'PT.PAS', 1, 'PT. PUTERATEL ANDALAN SUKSES', NULL, '0216511912, 0216516113, 02165302380', '0216511929', 'admin@puteratel.com', 'Jl. Danau Sunter Utara Perkantoran Sunter Permai Blok D No. 18', 'Jl. Danau Sunter Utara Perkantoran Sunter Permai Blok D No. 18', 1, 3, NULL, NULL, 1, '02.747.795.9-048.000', 'eko', 'eko', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-15 08:18:18', '2020-12-03 02:23:46'),
('4795644c-7142-4dba-921b-d9eddb9d585e', 'KUSDIANTORO', 1, 'KUSDIANTORO - NP', 'KUSDIANTORO - NP', '081319641932', '081319641932', 'tidakada@tidakada.com', 'Kampung Karang Anyar Rt.002/004. Karang Sari. Neglasari. Tangerang Banten', 'Kampung Karang Anyar Rt.002/004. Karang Sari. Neglasari. Tangerang Banten', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:55:09', '2020-10-18 11:55:09'),
('4be2f9dc-5e0e-40e1-87c8-485a4f86bbc9', 'PT.ATN', 1, 'PT ASIA TELCO NETWORKS - P', 'PT ASIA TELCO NETWORKS - P', '0217985938', '0217985938', 'tidakada@tidakada.com', 'Gedung Graha Mampang, Lt1 Unit 101. JL.Mampang\r\nPrapatan Raya Kav.100. Kel Duren Tiga . Kec. Pancoran. Jak-Sel\r\nUp. Bp. Alex', 'Gedung Graha Mampang, Lt1 Unit 101. JL.Mampang\r\nPrapatan Raya Kav.100. Kel Duren Tiga . Kec. Pancoran. Jak-Sel\r\nUp. Bp. Alex', 1, 4, NULL, NULL, 1, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:13:51', '2020-10-18 12:13:51'),
('4d14c932-edce-47e8-917b-96e03b474f80', 'PT.PAS-P', 1, 'PT. PUTERATEL ANDALAN SUKSES (PAS)', 'PT. PUTERATEL ANDALAN SUKSES (PAS)', '(021) 6511912', '(021) 6511912', 'info@puteratel.com', 'Jl. Danau Sunter Utara, Rukan Sunter Permai Blok D no. 18, RW.14, Sunter Agung, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350', 'Jl. Danau Sunter Utara, Rukan Sunter Permai Blok D no. 18, RW.14, Sunter Agung, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350', 1, 2, NULL, NULL, 0, NULL, 'Mirza Rizaldy', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-10-05 16:40:40', '2020-10-18 14:09:40'),
('4e8b0f0e-e718-4150-a7fb-9dd619e413c1', 'FTI-S-0000001', 2, 'Pak Iban', 'PT Pak Iban', '021 800000001', '08111435076', 'mirza.rizaldy@gmail.com', 'Di Rumah', 'Di Rumah', 1, 3, NULL, NULL, 0, '0101010', 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-08 11:51:49', '2020-10-18 11:52:04'),
('51a3c1b2-bdd9-45b3-b7c8-a5553cb40100', 'FTI-C-0000011', 1, 'EVI - PUTRA JAYA', 'EVI - PUTRA JAYA', 'na', '0812-2251-1979', 'na@na.co', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 'JL. JAKARTA 20-22, KOTA KEMBANG -BANDUNG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:04:20', '2020-12-12 14:09:12'),
('53702139-9724-4da5-a882-5220a73cf96b', 'ARIYANTOCOKRO', 1, 'ARIYANTO COKRO - NP', 'ARIYANTO COKRO - NP', '0818988551', '0818988551', 'tidakada@tidakada.com', 'Cokro Tiang, RT.01/ RW.3 Pondok Kopi, kecamatan Duren Sawit, Kota Jakarta Timur, DKI Jakarta 13460', 'Cokro Tiang, RT.01/ RW.3 Pondok Kopi, kecamatan Duren Sawit, Kota Jakarta Timur, DKI Jakarta 13460', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:53:36', '2020-10-18 12:09:56'),
('56172d75-401d-4779-8a74-6cbf874b8165', 'PT.MDT-P', 1, 'PT. MDT Total Solution - P', 'PT. MDT Total Solution - P', '0211234567', '0211234567', 'tidakada@tidakada.com', 'JL. Raya Tenjo Singabangsa KM18 . Kp. Tegal Pondoh Rt.002/003. Kel. Singabangsa Kec. Tenjo  Kab. Bogor', 'JL. Raya Tenjo Singabangsa KM18 . Kp. Tegal Pondoh Rt.002/003. Kel. Singabangsa Kec. Tenjo  Kab. Bogor', 1, 4, NULL, NULL, 1, '1234567890', 'Mirza Rizaldy', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-05 18:11:22', '2020-10-05 18:11:22'),
('5806d475-6f5e-4ce9-b6ac-66afdfbf2bbf', 'DEDISUPRIADI', 1, 'DEDI SUPRIADI - NP', 'DEDI SUPRIADI - NP', '081383115559', '081383115559', 'tidakada@tidakada.com', 'JL. Singgalang Blok J NO.47 RT.008 RW.014. Kelurahan Limo, kecamatan Limo', 'JL. Singgalang Blok J NO.47 RT.008 RW.014. Kelurahan Limo, kecamatan Limo', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:57:15', '2020-10-18 11:57:15'),
('594cdb41-523d-48eb-b205-7f93cda535ab', 'PT.IIP', 1, 'PT INDOGUNA INTI PERSADA', 'PT INDOGUNA INTI PERSADA', '02153132974', '081288346647', 'tidakada@tidakada.com', 'Jl. Alap-Alap Blok A 27 No.1 RT005/RW007 Kel.Kunciran Indah, Kec.Pinang, Kota Tangerang 15144', 'Jl. Alap-Alap Blok A 27 No.1 RT005/RW007 Kel.Kunciran Indah, Kec.Pinang, Kota Tangerang 15144', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:05:42', '2020-12-03 08:51:00'),
('5ca6b7cd-c87b-4805-a395-0a44a2dcd2fe', 'FTI-C-0000007', 1, 'Agus - PT AKM', 'Agus - PT AKM', 'na', '0822-5819-8720', 'na@na.co', 'GG. HJ. UMAR , PARUNG SERAB - CILEDUG', 'GG. HJ. UMAR , PARUNG SERAB - CILEDUG', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 07:59:21', '2020-12-12 14:09:28'),
('5cefae92-5944-423a-b5d1-9a25de65c18d', 'ABHYUDAYA', 1, 'PT Abhyudaya Sukses Prima - P', 'PT Abhyudaya Sukses Prima - P', '081294148175', '081264813468', 'silviahapsari78@gmail.com', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-12 14:26:53', '2020-12-12 14:26:53'),
('5f04c0c8-a376-4816-a311-6716e99cfa1e', 'YUDHIHERMAN', 1, 'YUDHI HERMAN - NP', 'YUDHI HERMAN - NP', '08121976938', '08121976938', 'tidakada@tidakada.com', 'JL. Patuha Raya No.18 Rt.006 Rw.16, Kayu Ringin Jaya - Bekasi Selatan. Kotamadya Bekasi', 'JL. Patuha Raya No.18 Rt.006 Rw.16, Kayu Ringin Jaya - Bekasi Selatan. Kotamadya Bekasi', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:51:43', '2020-10-18 11:51:43'),
('6194181d-b01f-4c38-bc1b-600fd60e6f07', 'RIV', 1, 'RIV - NP', 'RIV - NP', '085105630668', '085105630668', 'tidakada@tidakada.com', 'C11 Rapid Test Distributor\r\nBandengan utara 85A71 \r\nPenjaringan \r\nJakarta Utara 14440', 'C11 Rapid Test Distributor\r\nBandengan utara 85A71 \r\nPenjaringan \r\nJakarta Utara 14440', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:29:08', '2020-10-18 12:29:08'),
('61dc6863-5ed4-44a0-abc6-c604a753c776', 'LIYA - OMAH NETWORK', 1, 'LIYA - OMAH NETWORK', NULL, '0852-8011-9255', '0852-8011-9255', 'tidakada@tidakada.com', 'perum simprug diporis blok h1 no 45, poris jaya, batu ceper, kota tangerang', 'perum simprug diporis blok h1 no 45, poris jaya, batu ceper, kota tangerang', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 13:05:25', '2020-12-02 13:58:54'),
('621538da-23fd-4098-97cd-d56fad695246', 'FTI-C-0000024', 1, 'CV KABELINDO SEJAHTERA', 'CV KABELINDO SEJAHTERA', '00000', '00000', 'kabelindosejahtera.cv@gmail.com', '000000', '000000', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-05-15 09:01:38', '2020-12-12 14:09:45'),
('64187ab7-82f8-4829-b686-8116336da82a', 'JULIAN', 1, 'JULIAN - NP', 'JULIAN - NP', '0857-7741-8995', '0857-7741-8995', 'tidakada@tidakada.com', 'JL. Raya Cibeusi 24A Dusun Bojong Eureun 01/12 Jatinangor , Sumedang', 'JL. Raya Cibeusi 24A Dusun Bojong Eureun 01/12 Jatinangor , Sumedang', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:55:50', '2020-10-18 12:55:50'),
('64dcc829-81b4-4cad-879a-858ca36d6ae6', 'DIDIN', 1, 'DIDIN - NP', 'DIDIN - NP', '08111892807', '08111892807', 'tidakada@tidakada.com', 'Vila Bogor Indah Blok CC5 No.64 Kel. Ciparigi - Kec. Bogor Utara, Kota Bogor', 'Vila Bogor Indah Blok CC5 No.64 Kel. Ciparigi - Kec. Bogor Utara, Kota Bogor', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:11:42', '2020-10-18 12:11:42'),
('65bc3a3e-ab7e-43f5-941d-5b667d18de4b', 'FATYA', 1, 'FATYA - NP', 'FATYA - NP', '087784412939', '087784412939', 'tidakada@tidakada.com', 'Lenteng Agung. Gg Zakaria 8 No.28A Rt.008 Rw.003. LENTENG AGUNG. JAGAKARSA . JAKARTA SELATAN - DKI JAKARTA', 'Lenteng Agung. Gg Zakaria 8 No.28A Rt.008 Rw.003. LENTENG AGUNG. JAGAKARSA . JAKARTA SELATAN - DKI JAKARTA', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:34:14', '2020-10-18 11:34:14'),
('682c7cf6-edbe-4f94-9c26-aeae4ef417f3', 'PT.BSG', 1, 'PT BENTALA SELARAS GLOBALINDO', 'PT BENTALA SELARAS GLOBALINDO', '02175672127', '02122756431', 'tidakada@tidakada.com', 'Taman Tekno BSD City Sektor XI\r\nBlok A2 No 28, Setu Tangerang Selatan 15314', 'Taman Tekno BSD City Sektor XI\r\nBlok A2 No 28, Setu Tangerang Selatan 15314', 1, 4, NULL, NULL, 1, '31.593.928.0-013.000', 'adminsales2', 'adminsales2', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-10-18 11:21:19', '2020-12-12 18:52:28'),
('6c321e1f-f42a-41fa-8069-6d0bd24b0d8d', 'CITRANET', 1, 'PT JEMBATAN CITRA NUSANTARA - P', 'PT JEMBATAN CITRA NUSANTARA - P', '0274553066', '0274553066', 'accounting@jogja.citra.net.id', 'Jl. Petung No.31, Papringan, Caturunggal, Depok, Sleman, Daerah Istimewa Yogyakarta 55281', 'Jl. Petung No.31, Papringan, Caturunggal, Depok, Sleman, Daerah Istimewa Yogyakarta 55281', 1, 3, NULL, NULL, 1, '02.028.604.3-526.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 10:52:57', '2020-10-18 10:52:57'),
('6f0726c1-1209-43b2-8020-568421825b21', 'ANDRI', 1, 'ANDRI K', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 09:21:10', '2020-12-03 09:21:10'),
('6fe4d0f9-8b78-4932-9f6a-c78a6dc22829', 'YOFCHQ', 2, 'Yangtze Optical Fibre and Cable Joint Stock Limited Company', 'Yangtze Optical Fibre and Cable Joint Stock Limited Company', '+82 27 872536', '+82 27 872541', 'zhoujie@yofc.com', 'No.9 Guanggu Avenue, Wuhan, P.R China', 'No.9 Guanggu Avenue, Wuhan, P.R China', 1, 5, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:16:51', '2020-10-18 11:16:51'),
('7003a919-6ee3-496b-baff-36ee133bf135', 'RIYADI', 1, 'RIYADI - NP', 'RIYADI - NP', '0', '0', 'tidakada@tidakada.com', '0', '0', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-11-16 14:22:20', '2020-11-16 14:27:04'),
('7017be3c-f373-4c32-8acc-479b61821152', 'FIBTELE', 2, 'Shenzhen Fibtele Optical Communication Co.,LTD.', 'Shenzhen Fibtele Optical Communication Co.,LTD.', '000000', '+861376019803', 'aaa@gmail.com', 'Room 708, 7 floor ,HangCheng Zhihui Builiding A, Sanwei Community, Hangcheng Street, Baoan District, Shenzhen,China', 'Room 708, 7 floor ,HangCheng Zhihui Builiding A, Sanwei Community, Hangcheng Street, Baoan District, Shenzhen,China', 1, 1, NULL, NULL, 0, NULL, 'Dina', 'Dina', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:39:13', '2020-10-18 11:43:34'),
('7541273e-1092-4772-b62c-1d5f7552354e', 'PETER', 1, 'PETER - NP', 'PETER - NP', '087777675958', '087777675958', 'tidakada@tidakada.com', 'JL. Kartini IV Dalam No.6 RT.003/RW.004. Kel. Kartini Kec.Sawah besar', 'JL. Kartini IV Dalam No.6 RT.003/RW.004. Kel. Kartini Kec.Sawah besar', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:58:45', '2020-10-18 11:58:45'),
('75d7773f-d71e-4945-afcf-b4fa6c8e5768', 'EDHID', 1, 'EDHI - PT DITECH - NP', 'EDHI - PT DITECH - NP', 'NA', '0811-1000-490', 'tidak@tidakada.com', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 1, 2, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-12 14:22:01', '2020-12-12 14:22:43'),
('76013415-84d1-4490-8b57-a394ff4b2f2f', 'AKHMADLUTFIAZIZ', 1, 'AKHMAD LUTFI AZIZ - NP', 'AKHMAD LUTFI AZIZ - NP', '081317907058', '081317907058', 'tidakada@tidakada.com', 'Jl. Jagakarsa 1, Gang Aren 2, RT.5 RW.2, No.30 E Jakarta Selatan', 'Jl. Jagakarsa 1, Gang Aren 2, RT.5 RW.2, No.30 E Jakarta Selatan', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:49:42', '2020-10-18 11:49:42'),
('790a14b1-7db7-4438-973e-1fd83c4b9dd8', 'PT.KRI', 1, 'PT KENCANA RAYA INDONESIA - NP', 'PT KENCANA RAYA INDONESIA - NP', '0821-2397-1785', '0821-2397-1785', 'tidakada@tidakada.com', 'Unanamed Road Rt.06/ Rw.05, Sindang Barang Kec. Bogor Barat, Kota Bogor , Jawa Barat  16117', 'Unanamed Road Rt.06/ Rw.05, Sindang Barang Kec. Bogor Barat, Kota Bogor , Jawa Barat  16117', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 13:03:12', '2020-10-18 13:03:12'),
('79acefdd-92bb-4079-99c3-ba9654250d56', 'PAS', 2, 'Chayadi Subrata', 'PT Puteratel Andalan Sukses', '0216511912', '02165302380', 'aaa@gmail.com', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', 1, 4, NULL, NULL, 0, '02.747.795.9-048.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 10:00:25', '2020-06-19 10:00:25'),
('7e569fac-69c7-48c1-a851-b4d914943724', 'FTI-C-0000004', 1, 'TRIO - JURAGAN FIBER OPTIK', 'TRIO - JURAGAN FIBER OPTIK', 'na', '0813-1134-4074', 'na@na.com', 'JL. KALIMAYA , CENGKENG-JAKARTA', 'JL. KALIMAYA , CENGKENG-JAKARTA', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-06 09:35:25', '2020-12-12 14:10:39'),
('8163fd65-1895-4f96-85d7-bbd3af40f79b', 'AMG', 2, 'Koh Aming', 'aming', '0000000000', '0000000000', 'aaa@gmail.com', 'PIK', 'PIK', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:50:24', '2020-06-18 12:50:24'),
('8283d753-a886-4980-960a-4c2e5e631ba6', 'RAFACOM', 1, 'RAFACOM - NP', NULL, '085776016341', '085776016341', 'tidakada@tidakada.com', 'Jl Centex Raya Gg.Sopan\r\nRt003/RW.010 No.19 Ciracas\r\nJakarta Timur 13740', 'Jl Centex Raya Gg.Sopan\r\nRt003/RW.010 No.19 Ciracas\r\nJakarta Timur 13740', 1, 1, NULL, NULL, 0, NULL, 'eko', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-03-06 10:55:37', '2020-10-18 15:58:28'),
('8798971f-ebde-4e9f-bb0b-4fe44b3303e3', 'BPT', 1, 'PT. BAGAMAS PRIMA TEKNIK', NULL, '0811410241', '-', 'bagamas.pt@gmail.com', 'Jl. Batua Raya No. 204 Parapo Panakukkang, Kota Makassar Sulawesi Selatan', 'Jl. Batua Raya No. 204 Parapo Panakukkang, Kota Makassar Sulawesi Selatan', 1, 4, NULL, NULL, 1, '81.238.338.8-805.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 18:40:31', '2020-12-02 18:40:31'),
('8867771f-dde7-4dda-be0d-f8e95b6e0d50', 'NENENG', 1, 'NENENG-JAKARTA', 'NENENG-JAKARTA', 'NA', '0898-7939-156', 'tidakada@tidakada.com', 'JL.KEMANGGISAN ILIR - JAKARTA', 'JL.KEMANGGISAN ILIR - JAKARTA', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-12 14:17:01', '2020-12-12 14:17:01'),
('8894faf4-281a-4c22-b2c2-1aff6f67b346', 'FTI-S-0000002', 2, 'Pak Ibos', 'PT Ibos Makmur', '021 989665', '0811199181918', 'ibosjaya@gmail.com', 'Samping Kanan', 'Samping Kanan', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-08 15:39:22', '2020-10-18 11:52:12'),
('89e66263-2b97-412a-a1bb-385b527c604c', 'LIDWINA', 1, 'LIDWINA - NP', 'LIDWINA - NP', '0812-3514-3035', '0812-3514-3035', 'tidakada@tidakada.com', 'JL. Gunung Latimojong No.21 Makassar Sulawesi Selatan', 'JL. Gunung Latimojong No.21 Makassar Sulawesi Selatan', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:55:07', '2020-10-18 12:55:07'),
('8b801fcf-33fc-4fef-bb73-9c0a8805ebae', 'KFS', 2, 'PT. KARYA FABEAL SUKSES', 'PT. KARYA FABEAL SUKSES', '082114445911', '082114445911', 'karyafabealsukses@gmail.com', 'Cluster Colombus Mansion Perumahan MGT 2 Blok P5 N0.59 Bekasi - Jawa Barat 17158', 'Cluster Colombus Mansion Perumahan MGT 2 Blok P5 N0.59 Bekasi - Jawa Barat 17158', 1, 3, NULL, NULL, 0, '906749528432000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 10:52:11', '2020-10-18 10:52:11'),
('95109b19-a6fb-4442-8b4c-4fb05606cdbd', 'PT.SLI', 1, 'PT SINERGI LAYANAN INTEGRASI - P', 'PT SINERGI LAYANAN INTEGRASI - P', '0217995136', '0217983651', 'suryadi.budiraharjo@gmail.com', 'Jl. Raya Pasar Minggu No.21 Blok G Kalibata Pancoran V Jakarta Selatan', 'Jl. Raya Pasar Minggu No.21 Blok G Kalibata Pancoran V Jakarta Selatan', 1, 1, NULL, NULL, 1, '02.399.533.5-061.000', 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:00:11', '2020-10-18 11:06:20'),
('955e56d8-541c-4491-a615-feb60a6eca5d', 'SARAH', 1, 'SARAH', 'SARAH', '082111099905', '082111099905', 'tidakada@tidakada.com', 'Cluster Permata Karawaci Blok E No.4 Tangerang', 'Cluster Permata Karawaci Blok E No.4 Tangerang', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:17:43', '2020-12-01 17:48:11'),
('96319853-e1ee-46af-b460-969e7de44dad', 'HERAWATI', 1, 'HERAWATI NP', 'HERAWATI - NP', '081330255921', '081330255921', 'tidakada@tidakada.com', 'Toko Jaya Aneka\r\nJl.Bawean No.17 Situbondo, Jawa Timur', 'Toko Jaya Aneka\r\nJl.Bawean No.17 Situbondo, Jawa Timur', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:38:26', '2020-10-18 12:38:26'),
('97939d5d-7c1b-4da6-a0e8-d8b992030a66', 'BAYUANDIKA', 1, 'BAYU ANDIKA - NP', 'BAYU ANDIKA - NP', '0856-1973-179', '0856-1973-179', 'tidakada@tidakada.com', 'TOKO RAYA COMPUTER JL. Raya Petir Cipocok Serang Banten (serang Taman Pinus Residence)', 'TOKO RAYA COMPUTER JL. Raya Petir Cipocok Serang Banten (serang Taman Pinus Residence)', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:58:38', '2020-10-18 12:58:38'),
('9c4257b6-3a16-4c61-9dc0-04fe2ef5d514', 'YOI', 2, 'PT Yangtze Optics Indonesia', 'PT Yangtze Optics Indonesia', '+62 813-9858-3389', '+62 813-9858-3389', 'zhoujie@yofc.com', 'X Kav 1-65 E4,, , Kabupaten Jl. Surya Madya, Mulyasari, Ciampel Karawang, Jawa Barat 41363', 'X Kav 1-65 E4,, , Kabupaten Jl. Surya Madya, Mulyasari, Ciampel Karawang, Jawa Barat 41363', 1, 5, NULL, NULL, 0, '81.779.778.0-036.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 09:49:36', '2020-06-19 09:49:36'),
('9ea60706-92ea-41a9-8f35-01800f396ad9', 'IMP/CHN/001', 2, 'IMPORT CHINA - CHEN', 'FIBERTRON', '021220487', '082122858663', 'ftn@go.chn', 'Jakarta', 'Jakarta', 1, 4, NULL, NULL, 0, '441216464', 'Dimas', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-18 09:09:34', '2020-05-18 09:09:34'),
('a3895f2e-39c2-4111-9892-c390a0dc87b6', 'FTI-C-0000017', 1, 'HENGKI - TNT', 'HENGKI - TNT', 'na', '0816-1189-371', 'na@na.co', 'PLAZA KENARI MAS , JAKARTA PUSAT', 'PLAZA KENARI MAS , JAKARTA PUSAT', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:36:32', '2020-12-12 14:11:02'),
('a7d927ab-81a3-4be7-ac62-e2aa723891bf', 'Online-LJ', 2, 'lancar jaya', 'shopee', '00000000000000', '999999999999999', 'lj@shopee.com', 'Jakarta', 'Jakarta', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-05-18 07:03:24', '2020-05-18 07:03:24'),
('a811d8b2-5af8-4ae7-b7cb-5fa55aab76f7', 'TMM', 2, 'PT. TUNAS MITRA MAKMUR', 'PT. TUNAS MITRA MAKMUR', '02122028188', '02122028187', 'ferdy@tunasmitra.co.id', 'Pergudangan Tunas Bitung C.2 No.06 Pasir Jaya Cikupa Kab. Tangerang', 'Pergudangan Tunas Bitung C.2 No.06 Pasir Jaya Cikupa Kab. Tangerang', 1, 1, NULL, NULL, 0, '762705523452000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 10:55:45', '2020-10-18 10:55:45'),
('a99e4967-170b-438d-bb3d-77d14487d85c', 'PT.PC24', 1, 'PT PC24 CYBER INDONESIA - P', 'PT PC24 CYBER INDONESIA - P', '0218306633', '0218306633', 'budi@fibermedia.co.id', 'Jl. Wibawa Mukti II No.3 D\r\n(ruko abu-abu sebrang ayam KQ5)\r\nJatiasih - Bekasi Selatan', 'Jalan Kampung Pamahan RT.04 RW.09 No 13 Kel.Jatimekar Kec.Jatiasih, Bekasi', 1, 4, NULL, NULL, 1, '02.450.207.2-013.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 15:32:05', '2020-10-18 15:32:05'),
('aa0021af-a3fa-4270-9b86-85cd58ea20ca', 'FTI-C-0000012', 1, 'CASMID - BOGOR', 'CASMID - BOGOR', 'na', '0852-8113-6389', 'na@na.co', 'KP. KARET , TAJURHALANG - BOGOR', 'KP. KARET , TAJURHALANG - BOGOR', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:05:55', '2020-12-12 14:11:13'),
('abe9c7a2-64b9-4b97-9fff-c21c5cf79921', 'CV.TDU', 1, 'CV. TRIDAYA UTAMA - P', 'CV. TRIDAYA UTAMA - P', '02147861820', '0214716000', 'msyakhrudi@yahoo.com', 'Berdagang Alat Telkom dan Komputer', 'Berdagang Alat Telkom dan Komputer', 1, 4, NULL, NULL, 1, '00.000.000.0-000.000', 'Mirza Rizaldy', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-05 19:10:50', '2020-10-18 14:01:34'),
('af98b8e1-9760-4707-a9b2-67d36db49a03', 'FTI-C-0000013', 1, 'LUTFI AZIZ', 'LUTFI AZIZ', 'na', '0812-9046-6900', 'na@na.co', 'JL. JAGAKARSA GG.AREN , JAKARTA SELATAN', 'JL. JAGAKARSA GG.AREN , JAKARTA SELATAN', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:07:02', '2020-12-12 14:11:40'),
('b42188e1-e601-42ff-bc91-b9cb036dbaaf', 'TRIOSUMBODO', 1, 'TRIO SUMBODO - NP', 'TRIO SUMBODO - NP', '081311344074', '081311344074', 'tidakada@tidakada.com', 'JL. Kalimaya RT.001 RW.008. Kapuk. Cengkareng. Jakarta Barat - DKI Jakarta', 'JL. Kalimaya RT.001 RW.008. Kapuk. Cengkareng. Jakarta Barat - DKI Jakarta', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:36:56', '2020-10-18 11:36:56'),
('b45ecd89-14df-4d39-8acf-1eb22b838497', 'GTC', 2, 'Green Telecom Communication Co. Ltd', 'Green Telecom Communication Co. Ltd', '86 - 574 - 62481666', '86 - 574 - 62487187', 'will@greentel-tech.com', 'No.192,Beixing Road,Mazhu Town,Yuyao City,Zhejiang,China', 'No.192,Beixing Road,Mazhu Town,Yuyao City,Zhejiang,China', 1, 5, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:23:49', '2020-10-18 11:23:49'),
('b535a892-0d41-44fd-8f94-bc17afc1cdc3', 'PT.L1V', 1, 'PT LINTAS SATU VISI - P', 'PT LINTAS SATU VISI - P', '02221001717', '02221001717', 'noc@l1v.co.id', 'Istana Regensi, Jl. Magenta Raya No.26 RT.001 RW.006, Bandung', 'Istana Regensi, Jl. Magenta Raya No.26 RT.001 RW.006, Bandung', 1, 4, NULL, NULL, 1, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 14:19:45', '2020-10-18 14:19:45'),
('b675bf76-b74c-4bf0-99a1-ebf8f9669fae', 'FTI-C-0000001', 1, 'Data Comm', 'Data Comm', '021 861868686', '0817777777', 'admin@com.com', 'Seberang Kali', 'Seberang Kali', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-08 15:11:24', '2020-05-14 10:38:58'),
('b7abf951-17b6-475c-83ee-86affd15dcbc', 'IDRUSHAKIMI', 1, 'IDRUS HAKIMI - NP', 'IDRUS HAKIMI - NP', '081212369090', '081212369090', 'tidakada@tidakada.com', 'Jl. Sei Kapuas No.7a Perum Torganda Darusalam \r\nKel.Medan Babura, Kec.Medan Sunggal\r\nK.pos 20154', 'Jl. Sei Kapuas No.7a Perum Torganda Darusalam \r\nKel.Medan Babura, Kec.Medan Sunggal\r\nK.pos 20154', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:16:05', '2020-10-18 12:16:05'),
('b8cb257b-260f-464d-9010-0c28ef99d95d', 'JOCOM', 1, 'JOCOM - NP', 'JOCOM - NP', '081288598652', '081288598652', 'tidakada@tidakada.com', 'Mangga Dua Mall Lt.4 No.37B\r\nUp. Bp Johan', 'Mangga Dua Mall Lt.4 No.37B\r\nUp. Bp Johan', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:40:01', '2020-10-18 12:40:44'),
('ba5cd38f-2ffb-4957-a1a2-c23e691b2068', 'MIK', 2, 'MIK - Mr Matt', 'PT Mitra Integrasi Komunikasi', '082246895318', '082246895318', 'mattdai@rittech.com.cn', 'Jl palem manis I kel Gandasari kec. Jatiuwung. Tangerang, Banten', 'Jl palem manis I kel Gandasari kec. Jatiuwung. Tangerang, Banten', 1, 1, NULL, NULL, 0, '85.709.892.5-402.000', 'Dina', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 10:04:43', '2020-10-31 14:22:11'),
('ba6dbf80-8da9-4d48-b6a9-6d11c7474e3f', 'PT.TZN', 1, 'PT Trava Zelenaya Netta - P', 'PT Trava Zelenaya Netta - P', '0821-29712750', '0821-29712750', 'info@travanetta.com', 'Graha Simatupang, Tower 2B, 1st Floor Jl. TB Simatupang Kav. 38, Jatipadang. Pasar Minggu, Jakarta Selatan 12540', 'kantor padicon \r\nRuko tanjung mas barat, no.37', 1, 4, NULL, NULL, 1, '86.783.658.7-017.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-12 14:36:32', '2020-12-12 14:36:32'),
('ba7a799c-91af-4f8e-a11a-0b14789cbb37', 'MFAIZ', 1, 'MFAIZ - NP', 'MFAIZ - NP', '082231359975', '082231359975', 'tidakada@tidakada.com', 'Multikom Cluring, Jl. Raya Cluring No.14 Banyuwangi, Jawa Timur, samping pertigaan patung Minak Jinggo cluring', 'Multikom Cluring, Jl. Raya Cluring No.14 Banyuwangi, Jawa Timur, samping pertigaan patung Minak Jinggo cluring', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:29:36', '2020-10-18 11:29:36'),
('becc0f2a-50ee-4f9a-ace1-a8ae700a3262', 'PT.CAP', 1, 'PT CAHAYA ABADI PLASTIK - P', 'PT CAHAYA ABADI PLASTIK - P', '02129612096', '02129612096', 'tidakada@tidakada.com', 'Jln. Kenari 1 Block G1 No.27, Delta Silicon V, Lippo Cikarang, Bekasi, Jawa Barat, Indonesia', 'Jln. Kenari 1 Block G1 No.27, Delta Silicon V, Lippo Cikarang, Bekasi, Jawa Barat, Indonesia', 1, 4, NULL, NULL, 1, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 14:24:56', '2020-10-18 14:24:56'),
('c0006d45-3a66-476d-9264-b2f850121956', 'Online-LVS', 2, 'Lenov Shop', 'shopee', '0000000000', '0000000000', 'lvs@gmial.com', 'Jakarta', 'Jakarta', 1, 1, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:54:33', '2020-06-18 12:54:33'),
('c1508758-40e4-49ef-bb41-fe502aeab095', 'FTI-C-0000008', 1, 'BAYU', 'BAYU', 'na', '0822-1040-4442', 'na@na.co', 'JL.KAYU MANIS, KRAMAT JATI , JAKARTA', 'JL.KAYU MANIS, KRAMAT JATI , JAKARTA', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:00:43', '2020-12-12 14:11:51'),
('c585e4e8-4f74-4cc9-957f-3ca54d98a563', 'BSG', 1, 'PT. BENTALA SELARAS GLOBALINDO', NULL, '+62 21 75672127', '+62 21 22756431', 'tidakada@tidakada.com', 'Taman Tekno BSD City Sektor XI \r\nBlok A2 No.28, Setu Tangerang Selatan 15314', 'Taman Tekno BSD City Sektor XI \r\nBlok A2 No.28, Setu Tangerang Selatan 15314', 1, 4, NULL, NULL, 1, '31.593.928.0-013.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 12:08:34', '2020-12-03 12:08:34'),
('c840219d-c54c-4da2-b6d7-cd2e99a328fe', 'IOI', 2, 'PT Ilsin OTS Indonesia', 'PT Ilsin OTS Indonesia', '085697991575', '085697991575', 'fxekoprasetyo@gmail.com', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', 1, 4, NULL, NULL, 0, '75.788.236.0-045.000', 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-19 09:56:15', '2020-06-19 09:56:15'),
('c9705c43-e6b5-4fa7-acd4-055f69546e32', 'IBANDARJATULLOH', 1, 'IBAN DARJATULLOH - NP', 'IBAN DARJATULLOH - NP', '081297811300', '081297811300', 'tidakada@tidakada.com', 'Jl. Jati Kencana  Blok B No.03 Rt.001 Rw.008. Kel. Mustikasari Kec. Mustika Jaya. Kota Bekasi . Jawa - Barat', 'Jl. Jati Kencana  Blok B No.03 Rt.001 Rw.008. Kel. Mustikasari Kec. Mustika Jaya. Kota Bekasi . Jawa - Barat', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:46:09', '2020-10-18 11:46:09'),
('cc156a97-0943-4631-af24-9f1a24639556', 'YOSI', 1, 'YOSI', NULL, '-', '-', 'tidakada@tidakada.com', 'ROXY', 'ROXY', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 17:19:08', '2020-12-02 17:19:08'),
('cc668a06-4053-4097-af02-e2804b76ed67', 'PT.VIP', 1, 'PT VISI INDOTAMA PERKASA - P', 'PT VISI INDOTAMA PERKASA - P', '0895392516937', '02129866319', 'tidakada@tidakada.com', 'Gd. Grand Slipi Tower Lt.5 Unit F, Jl.Letjend S. Parman Kav. 22-24 Palmerah, Jakarta Barat 11480', 'Bella Casa Residence Blok Edelwwiss No.E7/7 RT.003/RW.023, Pancoran Mas, Depok, Jawa Barat', 1, 4, NULL, NULL, 1, '83.328.007.6-031.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:14:39', '2020-10-18 11:14:39'),
('d11fb3be-9eb0-4872-9e5a-f2f7c063a884', 'FTI-C-0000009', 1, 'BERTOS', 'BERTOS', 'na', '0813-7777-0878', 'na@na.co', 'PESANGGRAHAN , PEDEMANGAN -JKT', 'PESANGGRAHAN , PEDEMANGAN -JKT', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:02:17', '2020-12-12 14:12:10'),
('d1552c40-836a-4847-a834-2856af642b6d', 'VASCONET', 1, 'VASCONET - NP', 'VASCONET - NP', '085296000747', '085296000747', 'tidakada@tidakada.com', 'Jl. Bambu 2A Medan\r\nUp. Bp Kasim', 'Jl. Bambu 2A Medan\r\nUp. Bp Kasim', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:43:33', '2020-10-18 12:43:33'),
('d194dcda-67de-4561-8a26-64511a2d02ec', 'BDP', 1, 'BUMI DAYA PLAZA - P', 'BUMI DAYA PLAZA - P', '123456789', '123456789', 'tidakada@tidakada.com', 'Jl. Imam Bonjol No.61, Jakarta', 'Jl. Imam Bonjol No.61, Jakarta', 1, 2, NULL, NULL, 1, '01.002.225.9.093.000', 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 15:21:48', '2020-10-18 15:23:28'),
('d24ee76c-9f4d-4db6-bb93-187f38e7fe82', 'FTI-C-0000015', 1, 'EDHI - PT. DITECH', 'EDHI - PT. DITECH', 'na', '0811-1000-490', 'na@na.co', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 'JL. MIRAH DELIMA, RAWALUMBU , BEKASI', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-07 08:09:08', '2020-12-12 14:22:18'),
('d301d38f-3eac-4420-b193-1f17e3e05856', 'DESWINFIRMANTO', 1, 'DESWIN FIRMANTO - NP', NULL, '081296298882', '081296298882', 'tidakada@tidakada.com', 'Kp. Rawa Bambu RT.003/RW.016. Harapan Jaya . Bekasi Utara. Kota Bekasi. Jawa Barat', 'Kp. Rawa Bambu RT.003/RW.016. Harapan Jaya . Bekasi Utara. Kota Bekasi. Jawa Barat', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:00:10', '2020-10-18 15:36:02'),
('d3a93e58-9ecc-43b1-a119-5320f0dd0a7a', 'GRN', 1, 'PT. GREEN NET INDONESIA', NULL, '-', '-', 'tidakada@tidakada.com', 'Plaza Kelapa Dua floor.6 Jl.Panjang Aerteri, RT.1/RW.2 Kelapa Dua, Kebon Jeruk, West Jakarta City, Jakarta 11550, Indonesia', 'Plaza Kelapa Dua floor.6 Jl.Panjang Aerteri, RT.1/RW.2 Kelapa Dua, Kebon Jeruk, West Jakarta City, Jakarta 11550, Indonesia', 1, 4, NULL, NULL, 1, '85.718.239.8-061.000', 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-03 08:39:09', '2020-12-03 08:39:09'),
('d4ffd684-142b-41e3-be19-b6b90454fd06', 'MMC', 1, 'PT. MITRA MEDIA CAKRAWALA', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 15:28:55', '2020-12-02 15:28:55'),
('d66221dc-4dc9-49a8-a361-1e7f6a104fb7', 'ISAR', 1, 'ISAR - NP', 'ISAR - NP', '0812-9066-1279', '0812-9066-1279', 'tidakada@tidakada.com', 'PERUM SEPATAN CITY , Blok sc 3 , Sepatan Timur Tangerang', 'PERUM SEPATAN CITY , Blok sc 3 , Sepatan Timur Tangerang', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:51:16', '2020-10-18 12:51:16'),
('d7c7f2e2-9dfc-4aef-8b3d-f4c8af970861', 'HEADWAY', 2, 'HEADWAY - Jason', 'ZHEJIANG ZHONG TE INTERNET TECHNOLOGY CO LTD', '+86-0755 2376 8115', '+86-755-2376 8120', 'jason@headway-cn.com', 'Economic and Technological Development Zone, Changxing County, Zhejiang, China', 'Economic and Technological Development Zone, Changxing County, Zhejiang, China', 1, 1, NULL, NULL, 0, NULL, 'Dina', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:34:05', '2020-10-31 14:08:59'),
('d7ef188c-666f-4d27-8275-6e82d641f405', 'YAYAN', 1, 'YAYAN', NULL, '-', '-', 'tidakada@tidakada.com', '-', '-', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 16:55:11', '2020-12-02 16:55:11'),
('dbec913e-2162-4536-8c2b-d27fe0d78c35', 'FTI-C-0000003', 1, 'NENENG - JAKARTA', 'NENENG - JAKARTA', 'na', '0898-7939-156', 'na@na.com', 'JL.KEMANGGISAN ILIR - JAKARTA', 'JL.KEMANGGISAN ILIR - JAKARTA', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-06 09:33:30', '2020-12-12 14:15:24'),
('e3cc8628-90d4-45ca-99e6-a540756571be', 'PT.DADS', 1, 'PT DUTA ANUGRAH DAMAI SEJAHTERA', 'PT DUTA ANUGRAH DAMAI SEJAHTERA', '(022) 2020888', '(022) 2020888', 'tidakada@tidakada.com', 'JL. Prof.Dr.Ir.Sutami Blok B1 No.33. Bandung', 'JL. Prof.Dr.Ir.Sutami Blok B1 No.33. Bandung', 1, 4, NULL, NULL, 1, '31.397.775.3-428.000', 'adminsales2', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:08:36', '2020-12-03 10:14:14'),
('e3fa93f6-516a-4711-b807-5db3382b406d', 'PT.IMAM', 1, 'PT. INTERNET MADJU ABAD MILENINDO - NP', 'PT. INTERNET MADJU ABAD MILENINDO - NP', '083119924666', '083119924666', 'tidakada@tidakada.com', 'Jl. Raya Kerobokan No.388X, Kerobokan Kelod, Kec. Kuta Utara, Kabupaten Bandung, Bali 80361', 'Jl. Syarifuddin Yoes No.135-136, Sepinggan, Kecamatan Balikpapan Selatan, Kota Balikpapan, Kalimantan Timur 76115', 1, 5, NULL, NULL, 0, '01.901.977.7-906.000', 'Mirza Rizaldy', 'adminsales2', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-05 18:27:08', '2020-10-18 14:57:05'),
('e457d551-2f90-4799-a782-9a45a9199611', 'CIGS', 1, 'PT. CITRA INTI GARDA SENTOSA', NULL, '021 78832310', '021 78832311', 'tidakada@com', 'Jl. Raya Cilandak KKO No.1 Jakarta Selatan 12550', 'Jl. Raya Cilandak KKO No.1 Jakarta Selatan 12550', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-02 23:38:21', '2020-12-02 23:38:21'),
('e738ce1b-8c0d-46e4-a01d-931b9831a4ee', 'Endy-AIN', 2, 'Endy', 'PT. ANUGERAH INTERNASIONAL NUSANTARA', '08126098825', '08126098825', 'aaa@gmail.com', 'Jakarta', 'Jakarta', 1, 4, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 11:20:01', '2020-10-18 11:20:01'),
('e8366137-3b36-4e20-a374-de1b365c4356', 'TYOGENDUT', 1, 'TYO GENDUT - NP', 'TYO GENDUT - NP', '081298543897', '081298543897', 'tidakada@tidakada.com', 'Padepokan PSHT Cabang Bekasi\r\nJl. Mawar \r\nSamping Tower Sutet', 'Padepokan PSHT Cabang Bekasi\r\nJl. Mawar \r\nSamping Tower Sutet', 1, 4, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:21:14', '2020-10-18 12:21:14'),
('eab5ca98-6721-4e7a-80b4-462a5926e3ef', 'MDS - PT SGT', 1, 'MEDIA DAYA SOLUSI - NP', 'MEDIA DAYA SOLUSI - NP', '02122542300', '02122542300', 'tidakada@tidakada.com', 'Ruko Botanic Junction Blok H8 No.28\r\nJl. Meruya Selatan Jakarta Barat', 'Gudang Perumahan Mawar\r\nJl. Haji Saaba No.1\r\nPic. Mrs.Fita/Mr.Cipta', 1, 4, NULL, NULL, 1, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 14:40:15', '2020-10-18 14:40:15'),
('eeefdacc-f096-4702-9a92-d9c872fd3427', 'TOKOALFAFAKIRANA', 1, 'TOKO ALFAFAKIRANA - NP', 'TOKO ALFAFAKIRANA - NP', '0852-2484-8381', '0852-2484-8381', 'tidakada@tidakada.com', 'Dusun Krajan Rt.14 Rw.04 Desa/ Kec. Sukasari Kab. Subang Jawa Barat', 'Dusun Krajan Rt.14 Rw.04 Desa/ Kec. Sukasari Kab. Subang Jawa Barat', 1, 3, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:52:58', '2020-10-18 12:52:58'),
('f6def93c-b969-425c-a5d2-f3986914ed1f', 'FTI-C-0000020', 1, 'PT Abhyudaya Sukses Prima', 'PT Abhyudaya Sukses Prima', '081294148175', '081264813468', 'silviahapsari78@gmail.com', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 'Jl. Rose Garden 5 No.16, RT.002/RW.017, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17148', 1, 3, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-05-15 08:11:31', '2020-12-12 14:27:07'),
('f71118cf-2fb2-4567-9e83-2d3c5c19530d', 'PT.RPS', 1, 'PT RAHAYU PERSADA SAMANTHA - P', 'PT RAHAYU PERSADA SAMANTHA - P', '0881024364739', '0881024364739', 'tidakada@tidakada.com', 'Clonclave Simatupang, Kawasan Komersial, Cilandak No.410\r\nJl. Cilandak KKO, Cilandak Timur, Pasar Minggu, Jakarta Selatan 12560', 'Clonclave Simatupang, Kawasan Komersial, Cilandak No.410\r\nJl. Cilandak KKO, Cilandak Timur, Pasar Minggu, Jakarta Selatan 12560', 1, 4, NULL, NULL, 1, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-18 12:05:56', '2020-10-18 12:05:56'),
('f8d6c407-bf02-49e5-a548-5ae20913ea67', 'PT.MDT', 1, 'PT. MDT Total Solution - NP', 'PT. MDT Total Solution - NP', '0812-9721-7741', '0812-9721-7741', 'tidakada@tidakada.com', 'JL. Raya Tenjo Singabangsa KM18 . Kp. Tegal Pondoh Rt.002/003. Kel. Singabangsa Kec. Tenjo  Kab. Bogor', 'JL. Raya Tenjo Singabangsa KM18 . Kp. Tegal Pondoh Rt.002/003. Kel. Singabangsa Kec. Tenjo  Kab. Bogor', 1, 4, NULL, NULL, 0, NULL, 'Mirza Rizaldy', 'Mirza Rizaldy', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-05 16:09:55', '2020-10-05 18:08:41'),
('f95f503d-abce-4d67-8f02-6ae3dfbcc685', 'ONLINESUPRIYANTO', 1, 'SUPRIYANTO - NP', 'ONLINE', '083183950676', '083183950676', 'tidakada@tidakada.com', 'Perum Taman Yasmin Blok P No.11, Batu Besar, Nongsa, Batam, Kepulauan Riau 29466', 'Perum Taman Yasmin Blok P No.11, Batu Besar, Nongsa, Batam, Kepulauan Riau 29466', 1, 1, NULL, NULL, 0, NULL, 'adminsales2', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-19 08:17:24', '2020-10-19 08:17:24');
INSERT INTO `contacts` (`id`, `ref_id`, `type_id`, `name`, `company`, `phone`, `mobile`, `email`, `billing_address`, `shipping_address`, `payment_method`, `payment_terms`, `bank_name`, `account_no`, `tax`, `tax_no`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
('fbe8cff6-ec7d-4a0d-a69c-450b6ab10739', 'FTI-C-0000023', 1, 'PT Trava Zelenaya Netta', 'PT Trava Zelenaya Netta', '0821-29712750', '0821-29712750', 'info@travanetta.com', 'Graha Simatupang, Tower 2B, 1st Floor Jl. TB Simatupang Kav. 38, Jatipadang. Pasar Minggu, Jakarta Selatan 12540', 'kantor padicon \r\nRuko tanjung mas barat, no.37', 1, 2, NULL, NULL, 0, NULL, 'eko', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-05-15 08:34:53', '2020-12-12 14:28:57'),
('fcea8a1e-7a57-40e9-bd59-7389828ba12a', 'PJBG', 2, 'Budi Bandung', 'Putra Jaya Bandung', '0000000000', '0000000000', 'pjbg@gmail.cxom', 'Jl jakarta no 20-22. Bandung', 'Jl jakarta no 20-22. Bandung', 1, 4, NULL, NULL, 0, NULL, 'Dina', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-06-18 12:56:30', '2020-06-18 12:56:30'),
('fe00a2dd-c3fb-40e3-ab55-d49680724aef', 'FTI-C-0000002', 1, 'PAS', 'PT PUTERATEL ANDALAN SUKSES', '12345', '678910', 'tampanatus@yahoo.com', 'Seberang rumah saya', 'Seberang rumah saya', 1, 3, NULL, NULL, 1, '45678', 'adminsales1', NULL, '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-01-13 16:30:35', '2020-05-15 08:24:09'),
('fe787890-557e-41d4-b80d-6365acb8991e', 'FTI-C-0000005', 1, 'ADIT -  PT BINTANG', 'ADIT -  PT BINTANG', 'na', '0812-8421-1982', 'na@na.com', 'Jl. Pintu Air , CINERE - DEPOK', 'Jl. Pintu Air , CINERE - DEPOK', 1, 1, NULL, NULL, 0, NULL, 'eko', 'eko', '82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', '2020-03-06 10:54:13', '2020-12-12 14:10:03');

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

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `do_ref`, `order_ref`, `del_service_id`, `delivery_cost`, `status_id`, `receipt`, `delivered_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('b8e4f910-ba82-4616-9c55-de853c9dd123', 'DO/0001/FTI/XII/2020', 'SO/FTI/0001/PT.BTS/XII/2020', 7, '0.00', 'e9395add-e815-4374-8ed3-c0d5f4481ab8', '0110201', NULL, 'adminsales2', 'Dimas', '2020-12-12 15:37:55', '2021-01-05 11:00:44'),
('bbbc0277-364a-4d31-9cf4-0a52727c109c', 'DO/0004/FTI/XII/2020', 'SO/FTI/0004/NURDINJFO/XII/2020', 8, '0.00', 'e3f73f52-00f7-47a6-9831-3a81b36f65e8', '1022291', NULL, 'adminsales2', 'Dimas', '2020-12-13 08:44:16', '2021-01-05 11:00:23'),
('c731751d-5e2b-47ec-89da-29da0a9f8833', 'DO/0002/FTI/XII/2020', 'SO/FTI/0002/BPT/XII/2020', 7, '0.00', 'e9395add-e815-4374-8ed3-c0d5f4481ab8', '007/XII/20', NULL, 'adminsales2', 'adminsales2', '2020-12-12 18:01:31', '2020-12-12 18:04:26'),
('e61a8cf3-21a6-49e9-8e06-357064d98578', 'DO/0003/FTI/XII/2020', 'SO/FTI/0003/BSG/XII/2020', 7, '0.00', 'e9395add-e815-4374-8ed3-c0d5f4481ab8', '009/XII/20', NULL, 'adminsales2', 'adminsales2', '2020-12-12 19:44:42', '2020-12-12 20:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_items`
--

CREATE TABLE `delivery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(50,2) NOT NULL,
  `shipping` decimal(50,2) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_items`
--

INSERT INTO `delivery_items` (`id`, `delivery_id`, `product_name`, `quantity`, `shipping`, `uom_id`, `created_at`, `updated_at`) VALUES
(1, 'b8e4f910-ba82-4616-9c55-de853c9dd123', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', '10.00', '10.00', 1, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(2, 'b8e4f910-ba82-4616-9c55-de853c9dd123', 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', '10.00', '10.00', 1, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(3, 'c731751d-5e2b-47ec-89da-29da0a9f8833', 'Fiber Fusion Splicer KF4', '1.00', '1.00', 1, '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(4, 'e61a8cf3-21a6-49e9-8e06-357064d98578', 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', '100.00', '100.00', 1, '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(5, 'bbbc0277-364a-4d31-9cf4-0a52727c109c', 'PLC Splitter 1:2 , white', '40.00', '40.00', 1, '2020-12-13 08:44:16', '2020-12-13 08:44:16');

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
(7, 'FTI LOGISTIC', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Dimas', 'Dimas', '2020-05-18 09:04:25', '2020-05-19 01:38:30'),
(8, 'DIAMBIL OLEH CUSTOMER', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 'Mirza Rizaldy', NULL, '2020-12-12 20:33:20', '2020-12-12 20:33:20');

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

--
-- Dumping data for table `internal_items`
--

INSERT INTO `internal_items` (`id`, `mutasi_id`, `product_name`, `quantity`, `uom_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', '10.00', '1', '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(2, 1, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', '10.00', '1', '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(3, 2, 'Fiber Fusion Splicer KF4', '1.00', '1', '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(4, 3, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', '100.00', '1', '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(5, 4, 'PLC Splitter 1:2 , white', '40.00', '1', '2020-12-13 08:44:16', '2020-12-13 08:44:16');

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

--
-- Dumping data for table `internal_transfers`
--

INSERT INTO `internal_transfers` (`id`, `order_ref`, `from_wh`, `to_wh`, `status_id`, `created_by`, `updated_by`, `received_by`, `created_at`, `updated_at`) VALUES
(1, 'SO/FTI/0001/PT.BTS/XII/2020', 'Gudang Utama', 'Gudang Pengiriman', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'adminsales2', 'adminsales2', 'SYSTEM', '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(2, 'SO/FTI/0002/BPT/XII/2020', 'Gudang Utama', 'Gudang Pengiriman', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'adminsales2', 'adminsales2', 'SYSTEM', '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(3, 'SO/FTI/0003/BSG/XII/2020', 'Gudang Utama', 'Gudang Pengiriman', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'adminsales2', 'adminsales2', 'SYSTEM', '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(4, 'SO/FTI/0004/NURDINJFO/XII/2020', 'Gudang Utama', 'Gudang Pengiriman', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'adminsales2', 'adminsales2', 'SYSTEM', '2020-12-13 08:44:16', '2020-12-13 08:44:16');

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
(1, '5d9aaffa-33c0-11ea-aec2-2e728ce88125', '1??m Polishing film', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(2, '5d9ab270-33c0-11ea-aec2-2e728ce88125', '30??m Polishing film', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(3, '5d9ab3d8-33c0-11ea-aec2-2e728ce88125', '3??m Polishing film', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(4, '5d9ab536-33c0-11ea-aec2-2e728ce88125', '9??m Polishing film', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(5, '5d9ac882-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:4 SC/UPC ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(6, '5d9aca26-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:16', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(7, '5d9acb70-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:16 W/O connector', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(8, '5d9acca6-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:4  SC/UPC (Ryutelco)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(9, '5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:64', 'Gudang Utama', '100.00', '10000.00', '0.00', '2020-12-11 17:16:45', '2021-01-05 10:57:34'),
(10, '5d9ae448-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:64 W/O connector', 'Gudang Utama', '100.00', '10000.00', '202.00', '2020-12-11 17:16:45', '2021-01-05 10:55:52'),
(11, '5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:8 ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(12, '5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:8 SC/UPC ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(13, '5d9b0464-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:8 SC/UPC (GOC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(14, '5d9b05ea-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:8 SC/UPC No Brand', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(15, '5d9b0734-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:8 SC/UPC SAM ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(16, '5d9b0874-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 1:8 SC/UPC YOFC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(17, '5d9b09aa-33c0-11ea-aec2-2e728ce88125', 'ABS Splitter 1:8 W/O connector', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(18, '5d9b0d60-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 2:32 SC/APC ( No Brand )', 'Gudang Utama', '100.00', '10000.00', '0.00', '2020-12-11 17:16:45', '2021-01-05 10:58:46'),
(19, '5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 2:8 ( Tanpa Connector )', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(20, '5d9b1008-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 2:8 SC/APC ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(21, '5d9b113e-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 2:8 SC/UPC ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(22, '5d9b127e-33c0-11ea-aec2-2e728ce88125', 'Abs Splitter 2:8 Tanpa Connector ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(23, '5d9b13b4-33c0-11ea-aec2-2e728ce88125', 'Adapter  - LC  UPC DX , blue', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(24, '5d9b16e8-33c0-11ea-aec2-2e728ce88125', 'Adapter  - SC UPC , blue', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(25, '5d9b1832-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Black', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(26, '5d9b1968-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Blue', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(27, '5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 'Adapter Dustcaps Green', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(28, '5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 'Adapter MM DX LC/PC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(29, '5d9b1e36-33c0-11ea-aec2-2e728ce88125', 'Adapter MM SX SC/PC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(30, '5d9b2296-33c0-11ea-aec2-2e728ce88125', 'Adapter SC UPC auto shutter ( short ear )', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(31, '5d9b241c-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/APC Auto Shutter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(32, '5d9b255c-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/UPC Auto Shutter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(33, '5d9b269c-33c0-11ea-aec2-2e728ce88125', 'Adapter SM FC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(34, '5d9b27d2-33c0-11ea-aec2-2e728ce88125', 'Adapter SM LC/UPC DX', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(35, '5d9b2912-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(36, '5d9b2c0a-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(37, '5d9b2d68-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(38, '5d9b2ea8-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(39, '5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC DX', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(40, '5d9b3146-33c0-11ea-aec2-2e728ce88125', 'Adapter SM SC/UPC PAZ ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(41, '5d9b327c-33c0-11ea-aec2-2e728ce88125', 'Adapter ST/UPC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(42, '5d9b3632-33c0-11ea-aec2-2e728ce88125', 'Adjustable Light Source F01', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(43, '5d9b379a-33c0-11ea-aec2-2e728ce88125', 'ADSS-SS-100M- B1.3 , SM , G652D - 12 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(44, '5d9b38d0-33c0-11ea-aec2-2e728ce88125', 'ADSS-SS-100M- B1.3 , SM , G652D - 24 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(45, '5d9b3a10-33c0-11ea-aec2-2e728ce88125', 'ADSS-SS-100M- B1.3 , SM , G652D - 48 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(46, '5d9b3b46-33c0-11ea-aec2-2e728ce88125', 'ADSS-SS-100M- B1.3 , SM , G652D - 6 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(47, '5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 'Auto shutter , SC APC , black cap , long ear', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(48, '5d9b3f24-33c0-11ea-aec2-2e728ce88125', 'Auto shutter , SC UPC , black cap , long ear', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(49, '5d9b4244-33c0-11ea-aec2-2e728ce88125', 'Automatic cable stripper', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(50, '5d9b43a2-33c0-11ea-aec2-2e728ce88125', 'Box ONT Huawei (Kardus)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(51, '5d9b44e2-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Kosongan)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(52, '5d9b4618-33c0-11ea-aec2-2e728ce88125', 'Box Splitter 1:8 (Splitter PLC 1:8 SC/APC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(53, '5d9b474e-33c0-11ea-aec2-2e728ce88125', 'BOX SPLITTER 1X8, EMPTY BOX , ABS , 130X100X24.5mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(54, '5d9b488e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable 1 Sisi 12 Core SC/APC 1,5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(55, '5d9b4b90-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 12m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(56, '5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 19m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(57, '5d9b4e38-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(58, '5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 24m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(59, '5d9b50b8-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 25m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(60, '5d9b51ee-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 26m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(61, '5d9b5536-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable LC/UPC 8F 1 sisi 38m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(62, '5d9b5676-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC - LC/UPC 12F 2 sisi 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(63, '5d9b57b6-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC - SC/UPC 8F 2 Sisi 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(64, '5d9b58ec-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(65, '5d9b5aae-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 11m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(66, '5d9b5c16-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 12m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(67, '5d9b5efa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 13m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(68, '5d9b6058-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 14m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(69, '5d9b6198-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(70, '5d9b62ce-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 16m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(71, '5d9b6404-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 17m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(72, '5d9b653a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 18m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(73, '5d9b6828-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 19m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(74, '5d9b699a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(75, '5d9b6ada-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 21m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(76, '5d9b6c06-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 22m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(77, '5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 23m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(78, '5d9b7048-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 24m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(79, '5d9b71ba-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 25m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(80, '5d9b8588-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 27m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(81, '5d9b86fa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 28m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(82, '5d9b8830-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(83, '5d9b8970-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 42m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(84, '5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 55m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(85, '5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(86, '5d9b8eca-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 60m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(87, '5d9b946a-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 65m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(88, '5d9b95fa-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(89, '5d9b9744-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 8m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(90, '5d9b9884-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 1 sisi 9m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(91, '5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(92, '5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(93, '5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 'cable branching 2 core,40*10*7mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(94, '5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 'Cable markers, EC-0, print 1', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(95, '5d9ba068-33c0-11ea-aec2-2e728ce88125', 'Cable markers, EC-0, print 2', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(96, '5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 'Cable markers, EC-0, print A', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(97, '5d9ba2de-33c0-11ea-aec2-2e728ce88125', 'Cable markers, EC-0, print B', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(98, '5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 12 core White', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(99, '5d9ba734-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 24 core Black', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(100, '5d9ba946-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 24 core White', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(101, '5d9baacc-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 6 Core', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(102, '5d9bac0c-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 8 Core', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(103, '5d9bae00-33c0-11ea-aec2-2e728ce88125', 'Cassete FO 96core ( Putih )', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(104, '5d9bb116-33c0-11ea-aec2-2e728ce88125', 'Clading strip machine', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(105, '5d9bb27e-33c0-11ea-aec2-2e728ce88125', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 20/50', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(106, '5d9bb3be-33c0-11ea-aec2-2e728ce88125', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 25/50', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(107, '5d9bb4f4-33c0-11ea-aec2-2e728ce88125', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 50/70', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(108, '5d9bb724-33c0-11ea-aec2-2e728ce88125', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 70/90', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(109, '5d9c752e-33c0-11ea-aec2-2e728ce88125', 'Clamp Pipa Conduit ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(110, '5d9c77b8-33c0-11ea-aec2-2e728ce88125', 'Clamp Ring 3 Lubang ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(111, '5d9c8032-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang 10 Inch', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(112, '5d9c8190-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang 5 Inch', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(113, '5d9c8492-33c0-11ea-aec2-2e728ce88125', 'Clamp Slang 6 Inch', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(114, '5d9c860e-33c0-11ea-aec2-2e728ce88125', 'Cleaver FC-65/Made In China', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(115, '5d9c874e-33c0-11ea-aec2-2e728ce88125', 'Cleaver Merk Senter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(116, '5d9c8a28-33c0-11ea-aec2-2e728ce88125', 'Cleaver Sumitomo ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(117, '5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/PC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(118, '5d9c8eec-33c0-11ea-aec2-2e728ce88125', 'Clip MM LC/UPC (Transparent)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(119, '5d9c9036-33c0-11ea-aec2-2e728ce88125', 'Clip MM SC/PC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(120, '5d9c9176-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/APC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(121, '5d9c975c-33c0-11ea-aec2-2e728ce88125', 'Clip SM LC/UPC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(122, '5d9c9950-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/APC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(123, '5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 'Clip SM SC/UPC', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(124, '5d9c9d92-33c0-11ea-aec2-2e728ce88125', 'Clossure horizontal 288 Core ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(125, '5d9c9ec8-33c0-11ea-aec2-2e728ce88125', 'Clossure horizontal AIS 12/24 Core (Duck) ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(126, '5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 'Clossure horizontal AIS 96 Core (Duck) ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(127, '5d9ca134-33c0-11ea-aec2-2e728ce88125', 'Closure horizontal,24 core, 3IN-3OUT,450*210*120mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(128, '5d9ca26a-33c0-11ea-aec2-2e728ce88125', 'Closure horizontal,48 core, 3IN-3OUT,450*210*120mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(129, '5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 'Clousure horizontal  48 Core (PAZ)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(130, '5d9ca940-33c0-11ea-aec2-2e728ce88125', 'Clousure horizontal  96 Core ( Kulit Jeruk)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(131, '5d9caad0-33c0-11ea-aec2-2e728ce88125', 'Clousure horizontal  96 Core ( No brand )', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(132, '5d9cac1a-33c0-11ea-aec2-2e728ce88125', 'Clousure horizontal 48 Core (Fiber Trone)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(133, '5d9cad96-33c0-11ea-aec2-2e728ce88125', 'Connector 2mm Semi Finished SC/UPC SM', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(134, '5d9caee0-33c0-11ea-aec2-2e728ce88125', 'Connector FC PC 2mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(135, '5d9cb016-33c0-11ea-aec2-2e728ce88125', 'Connector FC PC 3mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(136, '5d9cb318-33c0-11ea-aec2-2e728ce88125', 'Connector LC APC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(137, '5d9cb46c-33c0-11ea-aec2-2e728ce88125', 'Connector LC APC 2mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(138, '5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 'Connector LC APC 3mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(139, '5d9cb6f6-33c0-11ea-aec2-2e728ce88125', 'Connector LC PC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(140, '5d9cb82c-33c0-11ea-aec2-2e728ce88125', 'Connector LC PC 2mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(141, '5d9cba66-33c0-11ea-aec2-2e728ce88125', 'Connector LC UPC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(142, '5d9cbd54-33c0-11ea-aec2-2e728ce88125', 'Connector LC UPC 2mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(143, '5d9cbef8-33c0-11ea-aec2-2e728ce88125', 'Connector LC UPC 3mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(144, '5d9cc038-33c0-11ea-aec2-2e728ce88125', 'Connector SC APC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(145, '5d9cc16e-33c0-11ea-aec2-2e728ce88125', 'Connector SC APC 2mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(146, '5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 'Connector SC APC 3mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(147, '5d9cc420-33c0-11ea-aec2-2e728ce88125', 'Connector SC PC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(148, '5d9cc556-33c0-11ea-aec2-2e728ce88125', 'Connector SC PC 2mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(149, '5d9cc876-33c0-11ea-aec2-2e728ce88125', 'Connector SC UPC 0.9mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(150, '5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 'Connector SC UPC 2mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(151, '5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 'Connector SC UPC 3mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(152, '5d9ccc36-33c0-11ea-aec2-2e728ce88125', 'Connector semi assembly SC/UPC SM 5cm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(153, '5d9ccd62-33c0-11ea-aec2-2e728ce88125', 'Connector semi finished SC APC , SM , 5 CM , include ferrule for preconnector dropcable', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(154, '5d9ccea2-33c0-11ea-aec2-2e728ce88125', 'Connector semi finished SC UPC , SM , 5 CM , include ferrule for preconnector dropcable', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(155, '5d9cd172-33c0-11ea-aec2-2e728ce88125', 'Connector ST PC 2mm ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(156, '5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 'Connector ST Semi Assembly 2mm', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(157, '5d9cd41a-33c0-11ea-aec2-2e728ce88125', 'CPRI, SM Armored 2-core, G652D ,blue color - 2 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(158, '5d9cd55a-33c0-11ea-aec2-2e728ce88125', 'Crimping Machine ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(159, '5d9cd690-33c0-11ea-aec2-2e728ce88125', 'Crimping Tools', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(160, '5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 'Curring oven ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(161, '5d9cdadc-33c0-11ea-aec2-2e728ce88125', 'Cutter Besar (Kenko)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(162, '5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 'Cutting Machine', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(163, '5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 'D-clamp', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(164, '5d9cdec4-33c0-11ea-aec2-2e728ce88125', 'Dome,48 core, no line, 1IN-4OUT', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(165, '5d9cdffa-33c0-11ea-aec2-2e728ce88125', 'Drop cable cutting machine', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(166, '5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 100 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(167, '5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 150 Meter ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(168, '5d9ce662-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 200 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(169, '5d9ce798-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 250 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(170, '5d9cea18-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 300 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(171, '5d9cebc6-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 50 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(172, '5d9ced06-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 75 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(173, '5d9cefb8-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core 80 Meter', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(174, '5d9cf116-33c0-11ea-aec2-2e728ce88125', 'Dropcable 1 Core Bulat', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(175, '5d9cf24c-33c0-11ea-aec2-2e728ce88125', 'Dropcable Branching 2Core', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(176, '5d9cf38c-33c0-11ea-aec2-2e728ce88125', 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 1 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(177, '5d9cf58a-33c0-11ea-aec2-2e728ce88125', 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(178, '5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 'Dropcable stripping pliers Wire - proHEX\n ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(179, '5d9cfa08-33c0-11ea-aec2-2e728ce88125', 'epoxy glue A and B', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(180, '5d9cfb48-33c0-11ea-aec2-2e728ce88125', 'Face plate 1c ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(181, '5d9cfc7e-33c0-11ea-aec2-2e728ce88125', 'Fast Conector SC/APC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(182, '5d9cfdbe-33c0-11ea-aec2-2e728ce88125', 'Fast Conector SC/UPC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(183, '5d9cfef4-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125 for LC UPC MM', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(184, '5d9d002a-33c0-11ea-aec2-2e728ce88125', 'Ferulle 125 for LC UPC SM', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(185, '5d9d02f0-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250 for SC / FC APC SM', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(186, '5d9d04b2-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250 for SC / FC MM', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(187, '5d9d0610-33c0-11ea-aec2-2e728ce88125', 'Ferulle 250 for SC / FC UPC SM', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(188, '5d9d0750-33c0-11ea-aec2-2e728ce88125', 'Ferulle Press Machine', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(189, '5d9d0962-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splice F04', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(190, '5d9d0b24-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splicer k11', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(191, '5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splicer KF4', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-12 21:14:29'),
(192, '5d9d0f84-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splicer KF4A', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(193, '5d9d10ba-33c0-11ea-aec2-2e728ce88125', 'final ADS , 0.01 um , mipox/ntt', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(194, '5d9d11f0-33c0-11ea-aec2-2e728ce88125', 'GJFJH-2B6a1, Patchcord outdoor cable , G657A1 , LSZH , BLUE COLOR  - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(195, '5d9d1628-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 1 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(196, '5d9d17cc-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 2 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(197, '5d9d1af6-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 4 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(198, '5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 1 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(199, '5d9d1d76-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 2 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(200, '5d9d1eac-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 4 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(201, '5d9d2000-33c0-11ea-aec2-2e728ce88125', 'GYA-B1.3, DUCT SCPT , SM , G652D - 12 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(202, '5d9d2140-33c0-11ea-aec2-2e728ce88125', 'GYA-B1.3, DUCT SCPT , SM , G652D - 24 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(203, '5d9d241a-33c0-11ea-aec2-2e728ce88125', 'GYAXTC8Y - B1.3, Outdoor cable 12 core small Fig8 - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(204, '5d9d25b4-33c0-11ea-aec2-2e728ce88125', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 12 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(205, '5d9d2708-33c0-11ea-aec2-2e728ce88125', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 24 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(206, '5d9d2848-33c0-11ea-aec2-2e728ce88125', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 48 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(207, '5d9d297e-33c0-11ea-aec2-2e728ce88125', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 6 Core - YOFC ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(208, '5d9d2ab4-33c0-11ea-aec2-2e728ce88125', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 12 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(209, '5d9d2bea-33c0-11ea-aec2-2e728ce88125', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 24 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(210, '5d9d300e-33c0-11ea-aec2-2e728ce88125', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 48 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(211, '5d9d3176-33c0-11ea-aec2-2e728ce88125', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 6 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(212, '5d9d32b6-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 12 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(213, '5d9d33f6-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 24 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(214, '5d9d3568-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 48 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(215, '5d9d382e-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 96 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(216, '5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 12 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(217, '5d9d7956-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 24 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(218, '5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 48 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(219, '5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 96 CORE - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(220, '5d9d8162-33c0-11ea-aec2-2e728ce88125', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 12 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(221, '5d9d84aa-33c0-11ea-aec2-2e728ce88125', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 24 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(222, '5d9d85fe-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 12 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(223, '5d9d8734-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 144 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(224, '5d9d886a-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 24 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(225, '5d9d89a0-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 288 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(226, '5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 48 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(227, '5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 96 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(228, '5d9d9094-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 12 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(229, '5d9dadc2-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 144 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(230, '5d9daf3e-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 24 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(231, '5d9db092-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 288 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(232, '5d9db1d2-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 48 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(233, '5d9db664-33c0-11ea-aec2-2e728ce88125', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 96 Core - YOFC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(234, '5d9db97a-33c0-11ea-aec2-2e728ce88125', 'GYXFTCS , round type , G657A1, tanpa seling - 2 Core - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(235, '5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 12 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(236, '5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(237, '5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 24 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(238, '5d9dc06e-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 4 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(239, '5d9dc352-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 6 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(240, '5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 'GYXTC8Y, Fig8 Cable, G.657A1 - 8 CORE - FIBERTEKNO', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(241, '5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 'heat shrink tube 3mm , black', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(242, '5d9dc726-33c0-11ea-aec2-2e728ce88125', 'heat shrink tube 3mm , white', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(243, '5d9dc85c-33c0-11ea-aec2-2e728ce88125', 'heat shrink tube 4mm , black', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(244, '5d9dc992-33c0-11ea-aec2-2e728ce88125', 'heat shrink tube 8mm , black', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(245, '5d9dcef6-33c0-11ea-aec2-2e728ce88125', 'Holder SOC SC/UPC Sumitomo', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(246, '5d9dd090-33c0-11ea-aec2-2e728ce88125', 'IL&RL Test ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(247, '5d9dd374-33c0-11ea-aec2-2e728ce88125', 'Jacket Furcation tubing,  900um / 250um ', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(248, '5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 'Jacket Furcation tubing.  3 mm / 900 um,  Black , aramid', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(249, '5d9dd61c-33c0-11ea-aec2-2e728ce88125', 'Jig Corner SC/APC-36', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(250, '5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 'Jig Corner SC/UPC-36', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(251, '5d9dda5e-33c0-11ea-aec2-2e728ce88125', 'Jig Corner STUPC-24', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(252, '5d9ddd42-33c0-11ea-aec2-2e728ce88125', 'Jig ST', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(253, '5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 'Kabel Dropcore Putih ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(254, '5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 'Kabel MM SX 3.mm 1,5M Potongan', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(255, '5d9e20e0-33c0-11ea-aec2-2e728ce88125', 'Kabel MM SX 3.mm 3M Potongan', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(256, '5d9e223e-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 LS ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(257, '5d9e237e-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 Schneider ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(258, '5d9e261c-33c0-11ea-aec2-2e728ce88125', 'Kabel UTP CAT 6 Vasco Link', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(259, '5d9e296e-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 100 x 36 x 36 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(260, '5d9e2c70-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 22 x 22 x 10 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(261, '5d9e2dba-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 22 x 22 x 22 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(262, '5d9e2f04-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 55 x 38 x 36 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(263, '5d9e31fc-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 57 x 31 x 31 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(264, '5d9e336e-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 60 x 39 x 25 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(265, '5d9e34ae-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 60 x 40 x 25 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(266, '5d9e35ee-33c0-11ea-aec2-2e728ce88125', 'Kardus uk. 65 x 35 x 36 cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(267, '5d9e3724-33c0-11ea-aec2-2e728ce88125', 'Karet PAD Seikoh Giken 70', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(268, '5d9e385a-33c0-11ea-aec2-2e728ce88125', 'Karet PAD Seikoh Giken 80', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(269, '5d9e3990-33c0-11ea-aec2-2e728ce88125', 'Kelvar Scissor (Tang Gunting)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(270, '5d9e3c92-33c0-11ea-aec2-2e728ce88125', 'Kevlar scissors - prohex', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(271, '5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 'Krone LSA', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(272, '5d9e4160-33c0-11ea-aec2-2e728ce88125', 'Lan Tester', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(273, '5d9e42c8-33c0-11ea-aec2-2e728ce88125', 'Lem Epoxy Kit Part A&B', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(274, '5d9e4598-33c0-11ea-aec2-2e728ce88125', 'Markers Number, EC-0, Print A', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(275, '5d9e46d8-33c0-11ea-aec2-2e728ce88125', 'Markers Number, EC-0, Print B', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(276, '5d9e4a16-33c0-11ea-aec2-2e728ce88125', 'Masking Tape 12mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(277, '5d9e4b56-33c0-11ea-aec2-2e728ce88125', 'Masking Tape 24mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(278, '5d9e4c96-33c0-11ea-aec2-2e728ce88125', 'Media Converter 10/100 ( B )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(279, '5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 'Media Converter 10/100 (A)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45');
INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(280, '5d9e4f02-33c0-11ea-aec2-2e728ce88125', 'Media converter 10/1000', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(281, '5d9e5042-33c0-11ea-aec2-2e728ce88125', 'Melter Connector machine', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(282, '5d9e5236-33c0-11ea-aec2-2e728ce88125', 'Melter Connector SC UPC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(283, '5d9e5376-33c0-11ea-aec2-2e728ce88125', 'Mesin Melter', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(284, '5d9e5650-33c0-11ea-aec2-2e728ce88125', 'Microscope ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(285, '5d9e57a4-33c0-11ea-aec2-2e728ce88125', 'Miller clamp - prohex', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(286, '5d9e5934-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:2', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(287, '5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:2 W/O connector', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(288, '5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:4 ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(289, '5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:4 W/O connector', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(290, '5d9e5f92-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:8', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(291, '5d9e6604-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:8  SC/UPC (Ryutelco)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(292, '5d9e6820-33c0-11ea-aec2-2e728ce88125', 'Mini Abs Splitter 1:8 W/O connector', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(293, '5d9e6988-33c0-11ea-aec2-2e728ce88125', 'ODC 48 Core KOSONGAN SMC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(294, '5d9e6abe-33c0-11ea-aec2-2e728ce88125', 'ODC Mini 96C/ODP 96C', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(295, '5d9e6c08-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core POLE', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(296, '5d9e6f32-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(297, '5d9e707c-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(298, '5d9e71b2-33c0-11ea-aec2-2e728ce88125', 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(299, '5d9e73ce-33c0-11ea-aec2-2e728ce88125', 'ODP 12C With stainless steel hoop', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(300, '5d9e7554-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core ( TIS )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(301, '5d9e76d0-33c0-11ea-aec2-2e728ce88125', 'ODP 16 Core CA (Huawei) Black', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(302, '5d9e781a-33c0-11ea-aec2-2e728ce88125', 'ODP 16 core,ABS , white , 302x218x104,5mm ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(303, '5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'ODP 16 core,ABS , white , 315x270x85 mm ( SUNSEA )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(304, '5d9e7edc-33c0-11ea-aec2-2e728ce88125', 'ODP 16C WITH BOX 2x1:8 cores,white, ABS, 311X237X104mm, with SUS Hoop, with logo', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(305, '5d9e8152-33c0-11ea-aec2-2e728ce88125', 'ODP 24 core,ABS, 2pcsEmbrace hoop , white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(306, '5d9e82ba-33c0-11ea-aec2-2e728ce88125', 'ODP 4 cores , white, 206x134x40mm, with logo', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(307, '5d9e8404-33c0-11ea-aec2-2e728ce88125', 'ODP 8 cores , white, ABS, 232x203x53mm, with SUS Hoop, with logo', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(308, '5d9e8742-33c0-11ea-aec2-2e728ce88125', 'ODP FAT 16Core (ABS White 302 x 218 x 104.5mm) (Sunsea)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(309, '5d9e88b4-33c0-11ea-aec2-2e728ce88125', 'ODP FAT 16Core (ABS White 315 x 270 x 85mm) (PAZ)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(310, '5d9e89fe-33c0-11ea-aec2-2e728ce88125', 'ODP FAT 24Core (ABS 2pcs Embrace Hoop White)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(311, '5d9e8b34-33c0-11ea-aec2-2e728ce88125', 'ODP Pole 1:8 (Tanpa Pigtail,Adaptor dan Splitter) Embos', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(312, '5d9e8c74-33c0-11ea-aec2-2e728ce88125', 'ODP Solid 16 Core + Splitter 1:16 SC/UPC Auto Shutter', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(313, '5d9e8daa-33c0-11ea-aec2-2e728ce88125', 'Odp solid 8C ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(314, '5d9e90d4-33c0-11ea-aec2-2e728ce88125', 'OLS J4', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(315, '5d9e9246-33c0-11ea-aec2-2e728ce88125', 'One Click Cleaner LC (Pen Cleaner LC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(316, '5d9e9386-33c0-11ea-aec2-2e728ce88125', 'One Click Cleaner SC (Pen Cleaner SC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(317, '5d9e94bc-33c0-11ea-aec2-2e728ce88125', 'ONT ZTE Versi 3', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(318, '5d9e9714-33c0-11ea-aec2-2e728ce88125', 'OPP Packing Tapre 48mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(319, '5d9e9854-33c0-11ea-aec2-2e728ce88125', 'Optical Fiber Identifier Joinwit (OFI JW)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(320, '5d9e9994-33c0-11ea-aec2-2e728ce88125', 'Optical Light Source (OLS) JW', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(321, '5d9e9caa-33c0-11ea-aec2-2e728ce88125', 'Optical Power Mete F02', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(322, '5d9e9e12-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter ( AMG )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(323, '5d9e9f66-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter (No Brand)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(324, '5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 'Optical Power Meter JoinWitt', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(325, '5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 'Optical Time Domain Reflectometer Joinwit (OTDR JW)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(326, '5d9ea312-33c0-11ea-aec2-2e728ce88125', 'OTB \'19\', Draw-out type19\', 24 core', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(327, '5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 'OTB 19\', Draw-out type19\', 12 core', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(328, '5d9ea754-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Hitam)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(329, '5d9ea894-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC (Krim)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(330, '5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 'OTB 24 Core SC/APC ( No Brand )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(331, '5d9eab0a-33c0-11ea-aec2-2e728ce88125', 'OTB 48 Core SC/APC ( No Brand )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(332, '5d9eac40-33c0-11ea-aec2-2e728ce88125', 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1010.00', '2020-12-11 17:16:45', '2020-12-13 08:37:33'),
(333, '5d9eaefc-33c0-11ea-aec2-2e728ce88125', 'OTB Rack 144 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(334, '5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 'OTB Rack 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(335, '5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 'OTB Rack 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(336, '5d9eb32a-33c0-11ea-aec2-2e728ce88125', 'OTB Rack 96 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(337, '5d9eb46a-33c0-11ea-aec2-2e728ce88125', 'OTB Rack Splitter PLC 1:32 SC/APC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(338, '5d9eb636-33c0-11ea-aec2-2e728ce88125', 'OTDR Fiber Tekno', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(339, '5d9eb794-33c0-11ea-aec2-2e728ce88125', 'OTDR Wavelength 1310/1550nm,32/30dB F05', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(340, '5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 'Paladin Buffer Stripper', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(341, '5d9ebc08-33c0-11ea-aec2-2e728ce88125', 'Palu Kecil ( CAB )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(342, '5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 'Pantong', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(343, '5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM DX 2.0mm G652D LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(344, '5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM DX 2.0mm G657A2 LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(345, '5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM DX 3.0mm G652D LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(346, '5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM DX 3.0mm G657A2 LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(347, '5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM SX 3.0mm G652D LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(348, '5d9ec950-33c0-11ea-aec2-2e728ce88125', 'Patch cord cable SM SX 3.0mm G657A2 LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(349, '5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM2 DX,2mm,ORANGE,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(350, '5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM3 DX,2mm,AQUA,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(351, '5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM4 DX,2mm,AQUA,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(352, '5d9ece50-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM4 DX,2mm,BLUE,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(353, '5d9ed134-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM4 DX,2mm,ORANGE,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(354, '5d9ed27e-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,MM OM4 DX,2mm,RED,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(355, '5d9ed3be-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,SM DX,2mm,G652D,YELLOW,PVC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(356, '5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,SM SX,2mm,G652D,YELLOW,PVC', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(357, '5d9ed666-33c0-11ea-aec2-2e728ce88125', 'Patchcord Cable,SM SX,2mm,G657A2,YELLOW,LSZH', 'Gudang Utama', '100.00', '100000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(358, '5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) FC/PC-LC/PC 15m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(359, '5d9edb0c-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 1.5m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(360, '5d9edd00-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 10m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(361, '5d9ede5e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 2m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(362, '5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 30m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(363, '5d9ee142-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(364, '5d9ee282-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(365, '5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 15m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(366, '5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 1m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(367, '5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 1m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(368, '5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 2m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(369, '5d9eea84-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (2,0mm) SC/UPC-LC/UPC 2m (OM2 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(370, '5d9eebc4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) SC/UPC-ST/UPC 3m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(371, '5d9eecfa-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) ST/UPC-LC/UPC 1m (OM2 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(372, '5d9ef056-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX (3,0mm) ST/UPC-ST/UPC 5m (OM2 ROSENBERGER)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(373, '5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX SC/APC-LC/APC (2,mm) 1M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(374, '5d9ef312-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX SC/APC-SC/APC (2,mm) 2M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(375, '5d9ef448-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM DX SC/UPC-SC/UPC (2,mm) 1M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(376, '5d9ef57e-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM2 DX 2mm ST/PC-LC/PC 1M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(377, '5d9ef6be-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX 2,mm SC/PC-SC/PC 10M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(378, '5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM3 DX 2MJM LC/PC-LC/PC 1M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(379, '5d9efc36-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 10M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(380, '5d9efe70-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 3M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(381, '5d9f000a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 10m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(382, '5d9f014a-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 15m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(383, '5d9f0280-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(384, '5d9f0442-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 30m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(385, '5d9f0712-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 40m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(386, '5d9f0866-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 10m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(387, '5d9f09b0-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 15m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(388, '5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(389, '5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 25m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(390, '5d9f0d52-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 30m  (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(391, '5d9f1040-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 3m (OM1 GJFJ)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(392, '5d9f11b2-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 5m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(393, '5d9f12fc-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 60m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(394, '5d9f1432-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 10m (OM1 CORNING)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(395, '5d9f1568-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(396, '5d9f16a8-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 50m (OM1 CORNING)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(397, '5d9f1950-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 1m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(398, '5d9f1aae-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 2m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(399, '5d9f1bee-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (2,0mm) ST/UPC-ST/UPC 10m (OM1)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(400, '5d9f1d24-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (3,0mm) LC/UPC-LC/UPC 50m (OM1 CORNING)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(401, '5d9f1e64-33c0-11ea-aec2-2e728ce88125', 'Patchcord MM SX (3,0mm) SC/UPC-SC/UPC 3m (OM2 LSZH)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(402, '5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 100m Aqua (FTI)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(403, '5d9f2256-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(404, '5d9f23b4-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 1m Aqua', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(405, '5d9f24f4-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 20m Aqua (YOFC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(406, '5d9f262a-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 25m Aqua (YOFC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(407, '5d9f276a-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 30m Aqua (DTC NET)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(408, '5d9f28a0-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 3m Aqua (FTI)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(409, '5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 50m Aqua (YOFC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(410, '5d9f2db4-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(411, '5d9f2f08-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 15m Aqua (DTC NET)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(412, '5d9f3048-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 20m Aqua (DTC NET)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(413, '5d9f317e-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 30m Aqua (YOFC)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(414, '5d9f32e6-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM4 DX (2,0mm) FC/PC-LC/PC 15m Biru (FTI)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(415, '5d9f3610-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 10m Biru (FTI)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(416, '5d9f38fe-33c0-11ea-aec2-2e728ce88125', 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 20m Biru (FTI)', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(417, '5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 'Patchcord Outdoor DX SC/APC-SC/APC 100m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(418, '5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 'Patchcord Outdoor SC/UPC-SC/UPC 5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(419, '5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(420, '5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(421, '5d9f4006-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(422, '5d9f43e4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(423, '5d9f45c4-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(424, '5d9f472c-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(425, '5d9f489e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(426, '5d9f49de-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(427, '5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(428, '5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(429, '5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(430, '5d9f506e-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(431, '5d9f5262-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(432, '5d9f53ca-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(433, '5d9f550a-33c0-11ea-aec2-2e728ce88125', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 25m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(434, 'da59bc17-ffaa-4db8-80cc-019de857ad3c', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(435, 'e5081045-c074-47e5-b528-4458f6e055c5', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(436, '6de3eb99-4883-48d3-9e3f-2ec2b4322172', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(437, '825061bb-e1bc-4a49-bd95-306338997289', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(438, '2beb3665-fc2d-4fbc-a69d-9dc8103d2a06', 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(439, '0497a34d-138a-43ea-8efc-4dad2b77120d', 'Patchcord SM DX (2,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(440, 'c945a0d7-7c85-445b-bfc2-e8463c980b55', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(441, '713d7ca0-273c-4933-b697-4b96c659a94a', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(442, '6a27aaa8-2789-4743-b870-386ca67a9941', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(443, 'a89fda8d-993f-4178-9f25-719d65573850', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(444, 'e86d8046-da40-47b2-b116-f59166459e43', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(445, '7b8c932f-739f-47f3-9ec8-18987646c13b', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(446, '419c1402-e5d7-42ed-8f23-f7012d862ea6', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(447, '13dc56cb-08d2-44aa-9fab-a236d47ec7a1', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(448, '5636ef6f-a6a1-4ec9-a1c1-6a5f97d0296b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(449, 'f7ce68cc-98e2-4f8c-a9cf-1176c70a4f59', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(450, '5c321c72-30ca-4967-a602-57802d122c9b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(451, 'b2dcd8d9-4f62-49ae-9cef-cc9b3e3d00c4', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(452, '3b178ef1-8a34-44ba-9f41-766d452f4b43', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(453, '06de61c9-219f-4f09-b1f1-b9b0cf936594', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(454, '32a3b6ce-d7fc-4814-8ffb-7dc3ca1919fb', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 35m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(455, '350e590d-80a7-4cee-a0d8-98d1cfa3c1bc', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(456, '90cfdfe4-0187-4a56-84f9-f49a77d782bc', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(457, '147b6863-bd86-4283-88b6-d1907cffb225', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(458, '9a37507d-da13-4d8f-80ae-895f892b09ce', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(459, '18747432-0693-46b7-9c83-441b2ea3300b', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(460, '32462549-e3c3-4406-9c70-0c5ad8c82d52', 'Patchcord SM DX (2,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(461, 'd6dd0772-93f6-478d-b5aa-1feaba91830f', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(462, 'bf1a910a-9b04-4d75-959f-d576324ec881', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(463, 'b9b36732-c249-4df2-a031-f0a21c14657d', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(464, 'ec263257-4f06-4cbf-b711-4e21e96d2d44', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(465, '737ee30a-ac08-4b31-9879-6a404e00d56d', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(466, 'bc520efc-5823-4f33-8012-e1ef5591ace3', 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(467, 'a936a120-e334-46cf-9877-f230d0a029d7', 'Patchcord SM DX (2,0mm) ST/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(468, '5da1b49b-a5cc-431c-8a9c-3eb5e1ab2402', 'Patchcord SM DX (2,0mm) ST/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(469, '64648f72-2004-49fb-9837-2a06e147f1b3', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(470, '494325a6-68bc-4d88-9dd8-472f8901a6a2', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(471, '5f1ae7e3-0e8c-45ea-ab18-86f2fb5f3051', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(472, '873acffe-3a1b-4dd1-aef9-850b4aef8683', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(473, 'afe0d63d-7164-49d8-8488-83c1e5014c27', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(474, '818d8c59-17ca-49bb-bb05-ee0fa0d4a77d', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(475, '8bb8ec0b-8b04-418b-834e-123623e2fa58', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(476, 'bf1f7816-4191-472f-bba7-9816927e064d', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(477, 'cdd7fc5c-edc7-4ef4-ba2c-b7008fca334b', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(478, '80942d58-992f-4cce-a5a1-8890da609034', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(479, '5d0a2548-06cb-4abe-be3d-9ca16dd799f3', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(480, '59c29221-c993-4ece-a377-71eb3bf9ddbc', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(481, '3301f8de-dc15-4b38-8542-008da5228ffb', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(482, '4eb07b52-e87d-4a9d-b0b6-359ea6839eca', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(483, 'ec73e092-8d33-4b7e-b9af-cc93830a11a3', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(484, '27acb4e1-64b8-47a2-b29f-4c52d0f4c1bc', 'Patchcord SM DX (3,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(485, '0918b468-c972-4de2-8fec-629505cacd2e', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '9990.00', '2020-12-11 17:16:45', '2020-12-12 15:37:55'),
(486, '18b24684-a540-4af4-b93f-80bc155fd32f', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(487, '020de15a-b2fe-4e7e-9bd3-d9c6f77f03ea', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(488, 'cde6e9b4-ad15-4734-8d7d-f4c1726de623', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(489, '1ddb3c57-a474-4b44-94c9-52223a03d955', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(490, '605ef610-c46a-4b94-9b20-0e2ffc75858c', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(491, '9562caf4-4d9d-4634-be1a-d26007d951f3', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(492, 'fb7cbe27-df13-4adf-bd44-ec662077e58e', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(493, '47359c6c-5efd-4d1b-85ca-84f24e1fe9f2', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(494, '58d514e2-01a2-4659-aed7-5ab96c3c0814', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(495, '99416a1a-ce28-4ae0-a598-7ffe7ab44699', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(496, '81f1dfeb-81ed-441e-9091-890847e6c037', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(497, 'bc09ab9a-f8ea-4a6b-b0c6-f4f8701e7959', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(498, 'a7bf0622-aee9-4c04-ace3-d28aa8a2ba63', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(499, '9c660ad6-dec4-4418-8f35-df637cfddd06', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(500, 'b96186cd-7f13-487d-bf74-575106d31376', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(501, '78a7e0bd-9ce5-4448-a7d2-2923de0fe0e0', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(502, '52b06135-8753-49a0-9ea9-5cb4c708ef5b', 'Patchcord SM DX (3,0mm) SC/UPC-ST/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(503, '25e4e0f1-3a01-4ee5-b26d-24825d2cd7e0', 'Patchcord SM DX 3.mm FC/UPC-SC/UPC 20M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(504, '91cd8769-1ee3-4fcf-b3e6-267c2f2ae9ec', 'Patchcord SM DX FC/UPC-LC/UPC  (3,mm) 15M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(505, '0e2cf492-348d-48cd-aa12-27f0f73eb22a', 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 20M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(506, '2c45b723-c7b3-4959-862a-17c865c03031', 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(507, '9e67fd6c-a7e2-4d1a-9967-742d3cb2df89', 'Patchcord SM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(508, 'c4786c8e-b26a-4c4d-8c9a-89ed5d0ba5c4', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(509, '302e9d8b-38ae-436c-a695-a9db956f503f', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(510, 'a025bd60-fbbe-4f96-a553-f3125b3185e1', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(511, 'f9f65618-80e9-4abc-8677-04b83ae0a6e5', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(512, 'b044ffa6-edaf-418e-91b9-3dc4131df04e', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(513, 'a664b27e-9314-4a9b-962a-2d66241ee747', 'Patchcord SM DX SC/APC-SC/APC (2,mm) 10M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(514, '9f0f142a-114b-4f13-956d-3568e94a5f22', 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 2M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(515, '3b219596-c0d5-4cfd-a37a-4f0b2b99bdd2', 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(516, 'b38d0037-ccd6-45f5-9536-ab0013d7b002', 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 10M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(517, 'cafffcf1-dac2-43f7-abc0-32a384bba042', 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 3M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(518, '2a2ad83b-6255-4edc-90b4-6be9f1e4ccd0', 'Patchcord SM DX ST/UPC-SC/UPC (2,mm) 5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(519, '2a32aeab-59d4-4947-9012-dd0b7652ba75', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(520, 'a2087cdf-9738-4d4c-b11f-5216ff28f018', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(521, 'a8a14f1d-7443-4a2c-9c4c-8119f07a9176', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(522, 'e5ac8a53-3d2b-4e13-8890-0ce0fcea4eb6', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(523, '037a6937-94e8-4bcb-a715-17faa184581b', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(524, '47aa3c3c-56ec-4f4c-a3ff-9544cf4ce9cf', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(525, 'ca8808c1-a6b4-47b2-879b-d988c8ad41d5', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(526, '950a1e26-23e4-40a5-9df8-d527d4b5f451', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(527, '5bfef3b3-dffc-4011-afc8-d89bf8af1527', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(528, 'ba3745cf-4a31-4f7a-9b64-7b6cd342eca7', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(529, '2c394318-71df-4569-8fd9-28ce6d577a0e', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(530, '28537981-4d1f-40b7-afc2-d09b3aaa1703', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(531, '241e72e5-130e-4ca2-b086-885737a524cc', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(532, 'c45182fa-fae3-4fac-af65-4648664aaf5e', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(533, '66f40b89-05ee-4fea-99d1-d4334d47cec1', 'Patchcord SM SX (2,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(534, 'e35bc4ac-a0b3-4a5c-aad9-73955c209c31', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(535, '4cbef0bc-45f7-4ca7-ba4e-371ae9c82703', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(536, 'b78c2923-ba08-4711-8444-9bee04841dd0', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(537, '5f12a275-1900-409d-adfe-569983e88fb8', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(538, 'dad876ca-64c5-4a10-9bc3-3b3480714007', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(539, '94863fdc-fde2-43e9-b1dc-1e2264f2a515', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(540, 'bad6a056-1add-4cb9-8625-c79b562faecf', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(541, '68b03060-fe58-4fee-95ff-35c49e6a2d1c', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(542, '16b187f7-5d3d-4b64-b417-980d0d34fe4d', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(543, '3d7deffc-073c-40f9-bf7e-94c8cf5381ba', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 4m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(544, '5df00b8e-3209-40b7-8e29-afdb9831cb48', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(545, 'ac5ba2bc-efea-4d28-ad2f-050a9923894d', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(546, '36b9f4f9-499b-4239-b2ce-661ec6731660', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 70m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(547, 'f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45');
INSERT INTO `inventories` (`id`, `product_id`, `product_name`, `warehouse_name`, `min_stock`, `opening_amount`, `closing_amount`, `created_at`, `updated_at`) VALUES
(548, '9dbfe037-bbff-40bf-a9dd-bcb9d3e866a0', 'Patchcord SM SX (2,0MM) LC/UPC-SC/UPC 20M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(549, '3796ab98-805e-4d21-81ab-f2bca5b5c948', 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(550, 'a7ff46a8-cfbc-4411-b6df-c82c1190cb8d', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(551, 'ec353038-f6a9-45fc-a01e-2adfe689d728', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(552, '57023c1f-6666-4b23-a42a-5f7059f95f68', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(553, '8be62161-742e-4e99-8b5e-664877ac6b44', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(554, 'd274c87c-12c3-4106-8679-7ff066154f36', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(555, '6738cf77-5351-4ea9-831e-9049efe2addb', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(556, 'cec013b8-961d-4464-a289-6da2fec82770', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(557, '52cfc1d9-ecc1-4cc7-a411-58d0b8284060', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(558, 'ea953c50-c4fe-498a-9790-12c6747ac0ed', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(559, 'dcdbaf2c-c5ac-4a4c-8590-2bfa12b370d0', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(560, '2deb5538-480e-4bf2-b572-8efce84a46ce', 'Patchcord SM SX (2,0mm) SC/UPC-FC/APC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(561, '06e65567-8dbd-4d11-a22e-009de1c430d1', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(562, '219403ac-7bb9-45c7-991c-af386a16e669', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(563, '185843a9-c0da-43fb-a309-dc1d1e31ab5b', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(564, '9d0e6494-156a-4fed-abf0-9d90ba6a0b89', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(565, '9281cbe9-39d7-4cfd-ab1b-f1c08c13bdd4', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(566, 'e2e1afd3-2198-4229-a5fd-68736a12ad84', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(567, 'cfb90e95-68f9-4cd0-b41a-d8a95d337bc9', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(568, '698b6ee4-fdb9-4d0d-80c4-99e76fcf7b95', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(569, '25c7edab-183f-4519-92ee-a54070a4d4a4', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(570, '15a7f957-d522-4972-9c10-713836bba2db', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(571, '96de82fa-b68d-44ca-8e07-3bc1434ea770', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(572, 'db1f1600-d4fc-463e-b91b-e7def726df8f', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(573, '6b3e0d76-f81f-4e79-9e1b-53df8b83f726', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(574, 'f1a1ea80-1462-413e-a354-e2baf3e540bb', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(575, '43c48fab-f3f5-4e5f-88b4-5599fb41bc32', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(576, 'df4c1303-c602-4f30-86da-bacf58d828f5', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(577, 'ff2b2df8-2a65-4544-847b-78b4b52c25ab', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(578, '0c8f8e6a-5ed6-4813-ac25-1c76a48a39a3', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(579, '83512e63-4284-4317-9109-61f62f9c7733', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(580, 'b753fea6-8159-4b24-8159-62d927214485', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(581, '2dedb15b-c44a-44db-8ab7-7213ae1f4224', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 80m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(582, 'ecbde8a1-3112-48aa-ae35-4d0afd1b850e', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(583, '0bb2eb56-298c-48b4-ad5f-654f1fd16303', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(584, 'edac12c5-cee6-47fc-bd9d-8cd23aa344a4', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(585, '9a38d070-6fe0-4b15-b1e2-4676147682e2', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(586, 'd282e0c4-5599-45a7-b80d-36fb01d10f54', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(587, 'a2c0dfaf-1250-46d7-bf4a-36b2bee06126', 'Patchcord SM SX (3,0mm) FC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(588, 'd8086f7e-ac04-4f53-9b36-43170f105ac8', 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(589, 'eaa3415b-bda9-4c0c-b164-5dbc42aa31d2', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(590, '9f90e4d2-2d6c-4e45-b88b-56f134be4ffb', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(591, 'b90b5eb4-a279-47c2-9472-fc601afe479c', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(592, 'a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(593, '6f1a6b2c-7826-4d3b-95d1-ad868628e69b', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(594, 'ffbf2d58-7ec4-42d3-8920-9e4e71b8e5c1', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(595, '63b7775e-ddd0-4327-a9ed-b23a47c7336f', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(596, 'cc4b6b7f-4710-46a0-b958-d52e1aa4a7df', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 70m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(597, 'a80fc727-af3a-4fe0-93a8-9bc0568198af', 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(598, 'e7e5b901-d164-4b1d-aa71-30bdb3542c32', 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(599, '0da8343b-1b64-4ec3-b712-f295b0736934', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(600, '859854f6-41d5-4c7f-9aac-079f06a4d949', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(601, '4c01a6b8-4401-4be3-8b11-48410471006a', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(602, 'bf9f5f1d-5baa-46cf-a369-c135cd1ac2fc', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 4m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(603, '84905d89-c592-40ee-a713-f7448a60465d', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(604, 'b4a0e08b-8b4f-41e7-8882-948daaf6d3a3', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(605, 'ece57d51-2f1b-4eab-91eb-c5fa43f90716', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(606, 'b48003d4-d410-4607-80f8-4566adfe5dd9', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(607, '2794a09f-1d92-4532-87bd-fa0d86970a27', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(608, '76de87e4-d411-498d-ac5c-b88be329b6d3', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(609, '65c5d544-5fa5-47f1-9cd8-5ae8e0f207ea', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(610, '7548c690-9f32-4e1d-a4bd-3ff27d68dc8c', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(611, '220c203f-e9f0-4e8c-ad9b-d025efa4917f', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(612, '2e7a63aa-49df-49b4-a5d4-52c881fdd5dd', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(613, '9f6e5418-5716-41c5-8ebb-3a656013b2a9', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(614, '95997247-6840-4dbd-9862-da1e4ec80887', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(615, 'b3dbf294-8fdd-413b-b2d9-44a92c79809d', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(616, '4a358603-b661-4320-ad99-72c870e754cb', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(617, 'b0cb6943-d166-4656-b635-6e353ab91b23', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(618, 'ec548ace-9270-4016-90f9-26aed77f05ab', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(619, 'b6bcde29-e5fc-49cb-aa1e-7154d0ebb53f', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(620, '2360c45a-a0ee-418c-b405-46cc6dedd867', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(621, '7ff4903b-e774-4de5-a95c-52ea52a00e6b', 'Patchcord SM SX 2,mm FC/APC-FC/APC 1m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(622, '9a380816-6b24-43c1-9289-5de2f3fb64f2', 'Patchcord SM SX 2,mm FC/UPC-LC/UPC 20M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(623, '9a1d88a1-027b-4a8e-98af-e4caf0308039', 'Patchcord SM SX 2,mm FC/UPC-SC/APC 10m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(624, '53dff306-fa2a-4379-b920-431156ac105b', 'Patchcord SM SX 2,mm LC/UPC-LC/UPC 3m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(625, 'f7f0bea2-e34e-4683-a3e9-7c7e1c1c9cc0', 'Patchcord SM SX 2,mm SC/APC-SC/UPC 2m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(626, '66fd5b68-dfae-4680-90c5-c62f675f7447', 'Patchcord SM SX 2,mm SC/UPC-LC/UPC 7m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(627, 'fae6a736-e742-4dd4-8870-ba44944b46d7', 'Patchcord SM SX 2,mm SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(628, 'db1f6192-d365-4837-a20f-1621fd11a32f', 'Patchcord SM SX 2.mm LC/UPC-SC/UPC 30M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(629, '2050a705-66c2-467d-8bac-772b6b84f404', 'Patchcord SM SX 3,mm SC/APC - SC/UPC 20m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(630, '2bebb89a-c746-415a-a083-27efce0213f4', 'Patchcord SM SX 3,mm SC/APC - SC/UPC 5m', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(631, '11e3349f-463f-44cf-b0f9-4c4bdc3b01ea', 'Patchcord SM SX 3.mm FC/UPC-FC/UPC 15M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(632, 'e519137c-ac02-406c-b03e-c75f5c0f89ef', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 10M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(633, '19449b46-650d-448f-b332-115f46e479e4', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 15M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(634, '93779d49-c61f-4389-ba3d-4b9e2009c00a', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 20M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(635, '0bbcfa85-35a7-49a8-adcf-d871ef6f7502', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 30M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(636, '3979288c-f896-43d4-944f-1eff5c09762c', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 40M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(637, '194cf507-2fb2-48ee-adb1-4cb921d6fb81', 'Patchcord SM SX SC/APC-SC/UPC (3,mm) 1M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(638, 'd556eca2-61dd-4a8d-8dcf-d1a9de3000d9', 'Patchcord SM SX SC/UPC-LC/UPC (2,mm) 1,5M', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(639, '7615371d-276c-42b5-a390-0de2c272526b', 'Pedestal Besar isi ODP', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(640, '2ecb6a77-3708-4eb3-ab82-3e89ac70dea7', 'Pedestal Besar Kosongan ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(641, '44244f8a-ac13-4d8c-b0cc-303db8777970', 'Pedestal Kecil Kosongan (Tanpa Kardus)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(642, '4d0f2ae0-bc50-407b-ac2d-ee19f2928535', 'Pen-type Visual Fault Locator(20km)  F03', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(643, 'bf359216-bf1b-4fe1-8144-4e283cfd13d9', 'PG 5', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(644, '82ee1ecc-0b39-46ca-9839-ad0ce6e8c932', 'Pigtail cable SM 0.9 mm G652D LSZH WHITE', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(645, '8e5f19d5-700b-4fc8-8198-e8a67a6933b9', 'Pigtail cable SM 0.9 mm G652D LSZH yellow ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(646, 'f52f963d-e4cb-4e07-998a-4bfa33640943', 'Pigtail cable SM 0.9 mm G657A2 LSZH WHITE', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(647, '1deb7547-5cfc-4b7c-b13e-f494ffd31b40', 'Pigtail cable SM 0.9 mm G657A2 LSZH yellow ', 'Gudang Utama', '100.00', '10000.00', '10000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(648, '2c7687c4-847b-422c-9504-4db9293201d5', 'Pigtail MM DX ST/PC (3,mm) 3m (OM2 ROSENBERYER)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(649, 'ab067a68-1ac9-4338-bd37-4825a4c06d83', 'Pigtail MM OM3 (AQUA ) SC/PC 1.5M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(650, '2af3440d-96dc-4628-bdb5-e3221ee35870', 'Pigtail MM SX FC/PC (2,0mm) 2m (OM1)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(651, '05e0a851-c660-43de-ab03-8d23c5fd1485', 'Pigtail MM SX FC/PC (2,0mm) 3m (OM1)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(652, '6148167f-95dd-4153-bbdd-dd81c5e25c7e', 'Pigtail MM SX LC/PC (2,0mm) 6m (OM1 PVC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(653, '0b6a929a-c547-4272-bfac-de5fe228809e', 'Pigtail MM SX LC/UPC (2,0mm) 27M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(654, 'fac6298e-6dc1-419b-95a5-3107c21241f2', 'Pigtail MM SX SC/PC (0,9mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(655, '18d29252-8539-49da-9f99-f1014351fc15', 'Pigtail MM SX SC/PC (2,mm) 20m (OM1 PVC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(656, '23c73d77-f048-42bf-a361-15a06fcc5fad', 'Pigtail MM SX SC/PC (2,mm) 3m (OM1 PVC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(657, '2cd98f26-3b69-4c4f-8480-cebae681a75b', 'Pigtail MM SX SC/UPC (2,0mm)1,5m (OM1 PVC)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(658, '096fa2e0-079e-4aac-9466-62ad373311c9', 'Pigtail MM SX ST/PC (0,9mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(659, '08e52187-b383-469e-805d-45d7a96664e6', 'Pigtail MM SX ST/PC (2,0mm) 1,2m (OM2 LSZH)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(660, 'a59c694f-23aa-447e-a292-592a33f055f3', 'Pigtail SM DX FC/UPC (2,0mm) 1m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(661, '8bb1454c-9626-444f-bdfb-ee25fd4690bc', 'Pigtail SM DX FC/UPC (2,0mm) 2m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(662, '9610371c-192b-4141-a2fb-341a4a7c7398', 'Pigtail SM DX FC/UPC (2,0mm) 3m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(663, 'b28247d0-1c3f-421c-88f6-daf81b7b4197', 'Pigtail SM DX SC/APC (3,0mm) 2m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(664, '66a074a0-c9cb-422e-a8ea-fca5fd93fb30', 'Pigtail SM DX SC/APC (3,0mm) 3m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(665, '6e5d9fb4-5d0a-4d4d-afb0-17d0c5700b9f', 'Pigtail SM DX SC/UPC (2,0mm) 7m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(666, '4f964b43-2859-4137-9043-3d725e9e6ff4', 'Pigtail SM DX SC/UPC (2,0mm) 8m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(667, '93cefd45-563b-442e-99d8-b933d5e486c9', 'Pigtail SM DX SC/UPC (3,0mm) 1,5m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(668, '6a44254a-ac65-41c7-ad05-b51e605248ed', 'Pigtail SM DX SC/UPC (3,0mm) 2m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(669, 'e69f3002-0491-41ae-8b75-43162db3b29e', 'Pigtail SM SX FC/APC (2,0mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(670, 'f9f60f40-1dee-4dbc-8edf-0e1b91dd1ece', 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (kuning)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(671, 'a7c31df6-b945-4ea8-843e-33bde98ffc70', 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(672, '73551cba-bbd2-4263-a662-9d20f501bc43', 'Pigtail SM SX FC/UPC (0,9mm) 1m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(673, 'c3afe7fd-faff-45b3-877c-c90e93cdee73', 'Pigtail SM SX FC/UPC (2,0mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(674, '05dda492-1f02-4708-a9b5-86535cb58b1d', 'Pigtail SM SX FC/UPC (3,0mm) 5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(675, '874f0460-7adb-41ca-97e2-7ad9b32afae0', 'Pigtail SM SX LC/UPC (0,9mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(676, '67e9b980-232c-4007-a37f-580b3a24e8ed', 'Pigtail SM SX LC/UPC (0,9mm) 1,5m WHITE', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(677, '80335ddb-bfba-4e0c-8aa4-da13b1c38ae9', 'Pigtail SM SX LC/UPC (0,9mm) 1m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(678, '5ce81e75-7d20-46a0-a52b-2303129f05c8', 'Pigtail SM SX LC/UPC (2,0mm) 2m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(679, 'b0bf3385-b784-48cc-87ed-cf820853fe3d', 'Pigtail SM SX LC/UPC (3,0mm) 10m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(680, '3451b54a-22ee-429b-877f-3d4cd8128e90', 'Pigtail SM SX SC/APC (0,9mm) 1m (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(681, 'c2219f25-2568-48b6-ad03-f9d934226cb7', 'Pigtail SM SX SC/APC (0,9mm) 2m (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(682, 'e33db696-9a38-4029-a264-fc422edd171f', 'Pigtail SM SX SC/APC (0,9mm) 2m Kuning', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(683, 'e1d30add-04a6-4eb3-8d24-3b8757ec32f2', 'Pigtail SM SX SC/APC (0,9mm) 2m Oren', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(684, '9a1d0eed-e2fa-44a5-b794-b5383a8aae3e', 'Pigtail SM SX SC/APC (0.9 mm) 3m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(685, 'c65a6918-f6da-42cd-9563-6c701c7b71c3', 'Pigtail SM SX SC/APC (2,0mm) 1,5m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(686, 'e25831d4-d585-436d-934c-d8a3bff65818', 'Pigtail SM SX SC/APC (2,0mm) 2m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(687, 'd78490b7-e743-42fe-ad32-2b8bb30e45a8', 'Pigtail SM SX SC/APC (2,0mm) 3m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(688, '1e9b09f1-5da1-45c6-aa2b-44c3e4bbc231', 'Pigtail SM SX SC/APC (3,0mm) 1,5m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(689, '68c359d4-afcb-4cf3-ae7d-c7ba0242a614', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m  (merah)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(690, '01966044-8fd0-49e0-9354-1e0b8616591f', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (kuning)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(691, '33e6c87d-a476-4593-9666-2dd8eae2acaf', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (oren)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(692, 'a0d04984-a833-46be-8c70-bafd601588bc', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(693, '838a72ce-5789-459a-a9c6-15337dd9f5fe', 'Pigtail SM SX SC/UPC (0,9mm) 1m (kuning)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(694, '39100a15-104a-431d-b833-768ae77395e9', 'Pigtail SM SX SC/UPC (0,9mm) 1m (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(695, '936216c2-fecb-40a5-8ff6-4153ff5442d4', 'Pigtail SM SX SC/UPC (0,9mm) 1m Oren', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(696, 'fa7343ab-e2e8-4864-bbf9-00d6077c4973', 'Pigtail SM SX SC/UPC (0,9mm) 2m (oren)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(697, '9bee7dd4-d774-466b-b0d0-a2be3f5ae5ee', 'Pigtail SM SX SC/UPC (2,0mm) 1,5m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(698, 'b2105b43-49d8-4317-897e-63bf07787375', 'Pigtail SM SX SC/UPC (2,0mm) 2m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(699, '3fd203f0-691e-4bfa-b20d-b728c661ff05', 'Pigtail SM SX SC/UPC (3,0mm) 1,5m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(700, '907f38bb-59cb-4921-87f0-1259284711a2', 'Pigtail SM SX SC/UPC (3,0mm) 2m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(701, '70d92af8-90d8-47d9-9b62-5eb444e33e1b', 'Pigtail SM SX SC/UPC (3,0mm) 3,5m', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(702, '42e15caf-36f7-4b28-99e1-a9e2ea579f7c', 'Pigtail SM SX ST/UPC (0,9mm) 1m ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(703, 'a80fb74b-2a5c-4647-9fb1-bf5883ecb84d', 'Plastik Clip 13,5 x 14,5', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(704, '70b3b7e6-229a-4e28-9e2b-42c5e9560bba', 'Plastik Clip 17 x 21 mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(705, '75074a13-9925-4e22-8164-82a6861ecd09', 'Plastik Clip 18 x 18', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(706, '64e18761-2e0d-45b2-b287-2386f05df086', 'Plastik Clip 20 x 23', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(707, '9be20941-909e-45f5-9982-966b22b91df3', 'Plastik Clip 21 x 24 mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(708, 'b8d951e7-fbc2-4f75-afee-9fcceee6eceb', 'Plastik Clip 40 X 30', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(709, '884b5795-b501-4e1e-8975-bccf42460d5e', 'Plastik Clip 55 X 50', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(710, '25816f2b-3ee8-4b1c-a2d8-25068e6dbf9a', 'Plastik FTI 29,5 x 20', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(711, 'b577d546-c42c-4e8a-9ef9-3d70d8bb28e2', 'PLC Splitter 1:16 , white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(712, '308dfdfa-509f-4039-9b96-e5ce030e3cfa', 'PLC Splitter 1:16 W/O connector , white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(713, '0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'PLC Splitter 1:2 , white', 'Gudang Utama', '100.00', '1000.00', '960.00', '2020-12-11 17:16:45', '2020-12-13 08:44:16'),
(714, '370a2a2b-ca31-454c-a4e3-53268b618f3c', 'PLC Splitter 1:2 W/O connector , white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(715, '8254ecfe-9e2c-4331-a3cc-0108e97920c0', 'PLC Splitter 1:4  SC/UPC (Tente)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(716, 'cf02d601-1d27-4dc7-9cff-2074a7c1e6ad', 'PLC Splitter 1:4 SC/APC (putih) No brand', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(717, 'a616c88c-4667-4a4a-88ae-fac7b11ea119', 'PLC Splitter 1:4 W/O connector, white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(718, '20bdbd72-93f3-4ed6-bece-c3d15264988b', 'PLC Splitter 1:4, white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(719, 'cacd3d3b-6221-4b09-9317-2843bd9b0fc4', 'PLC Splitter 1:8  SC/APC (Kuning)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(720, 'e80b16c8-81cf-41af-8206-76edbc1e39f0', 'PLC Splitter 1:8 SC/UPC (Kuning) Ryutelco)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(721, '32dbe418-54fe-4e02-bed2-9946dd6b2b2c', 'PLC Splitter 1:8 SC/UPC (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(722, 'b2a5ee77-139b-451a-abae-3f404a39fb65', 'PLC Splitter 1:8 SC/UPC (Rainbow)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(723, 'be79e0af-e670-4695-868e-82823a7fd9de', 'PLC Splitter 1:8 W/O connector , white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(724, '3a47c5d9-bc89-4174-92bd-29da7a2eafc9', 'PLC Splitter 1:8, white', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(725, 'ef0bddb0-0664-4a6c-8235-9788faf4221d', 'Polish Pad 70/127, seikoh', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(726, '143d9fca-4e7e-49f6-8358-18dad81208a9', 'Polish Pad 80/127, seikoh', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(727, '4dfcec97-9511-463f-b99f-459068891080', 'Polishing Film ADSS 0,05 final', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(728, '11cd63ff-f3bf-4548-a138-d2df2d4f9b91', 'Polishing Film Machine', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(729, '54bba56c-437f-4495-bb54-319e5cab8fd7', 'Polishing Film Mikron D1', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(730, 'cfb66ce2-2e83-4b40-9977-75e91cb6c98f', 'Polishing Film Mikron D3', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(731, '98b16609-8f93-4d59-a39a-082dc50fab0e', 'Polishing Film Mikron D30', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(732, '0d4415fb-64fa-44c4-9853-91628a75a165', 'Polishing Film Mikron D9', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(733, '9c453b4a-cdf9-43bc-80a9-5fd2dd359bcc', 'Polishing Film Mipox D3', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(734, 'b52e7a7a-51f5-47b4-9380-d0396f05b9cc', 'Polishing Film Mipox D30', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(735, 'b87282e1-0711-442d-9f0b-9af422ac94d0', 'Polishing Film Mipox D9', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(736, '2b99de30-4726-4025-8c81-00285e94a9c4', 'Polishing Film PC 0,05 final', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(737, '02995664-b642-4f14-9cc5-b4ca22cff563', 'Precon 1 Core SC/APC-SC/APC 100M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(738, 'ac62a19c-89e9-4e4b-94a3-16eb3fa3ea40', 'Precon 1 Core SC/APC-SC/APC 120M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(739, '48c579c9-fd72-49d0-8193-970ef5399c84', 'Precon 1 Core SC/APC-SC/APC 200M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(740, '292d5c9f-c3f2-41b3-8f86-88c680b0d95e', 'Precon 1 Core SC/APC-SC/APC 50M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(741, 'f3c741df-78f4-4e81-9c2a-b4c7ada8021b', 'Precon 1 Core SC/APC-SC/APC 75M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(742, 'c91cce56-d608-4e60-924c-564ae011d0cb', 'Precon 1 Core SC/APC-SC/UPC 200M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(743, 'cfadd0c2-e5a5-4ca2-ba47-f9a83499f279', 'Precon 1 Core SC/APC-SC/UPC 75M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(744, 'a2c97e11-a34c-4929-ab5c-0db4622cd10d', 'Precon 1 Core SC/UPC-SC/UPC 100M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(745, 'bd76bef8-460e-42f7-958e-a6b901164968', 'Precon 1 Core SC/UPC-SC/UPC 150M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(746, '83d144fc-4ce8-427c-81c7-d59aedfacc27', 'Precon 1 Core SC/UPC-SC/UPC 200M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(747, 'ddfbac1f-f946-425a-b7c6-bba1ea8b91c6', 'Precon 1 Core SC/UPC-SC/UPC 250M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(748, '0a97c76c-59a0-456d-8c78-9eb482cc3932', 'Precon 1 Core SC/UPC-SC/UPC 300M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(749, '333cbb1a-f46e-49a1-a480-ea3ae3092f4e', 'Precon 1 Core SC/UPC-SC/UPC 50M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(750, 'bc7e4d93-bc3d-40cb-957f-441d563e6122', 'Precon 1 Core SC/UPC-SC/UPC 75M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(751, '851d304d-f84d-407d-9f40-27cc59148324', 'Precon 1 Core SC/UPC-SC/UPC 80M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(752, '157e08e1-c7a3-4661-a3fa-f33f6e4c5089', 'Precon 1 Sisi 1 Core SC/UPC Connector Hitam 100M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(753, 'ca3b8734-416f-4c38-ae27-06aa445c4c46', 'Precon 2Core Tanpa Selling SC/UPC-SC/UPC 2M', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(754, '92cf5322-2901-4dd0-b873-7ba5d301e5ca', 'Protector Sleeve 60 mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(755, 'db8c2059-3cf8-459f-994d-5120fe1b39db', 'Protector sleeve 60mm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(756, 'fa3af189-f48a-41d0-a58a-8debee4a6465', 'Rack  6U', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(757, '7c159d16-c49e-4c27-8946-8ca035268f26', 'Ring Kotak', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(758, 'caf4f611-d1e1-4675-980d-080204c9b564', 'Roset 2 core ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(759, '245d17dc-64b3-4d78-be04-4735c932f86f', 'Roset 2 core PAZ FIBERSTAR', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(760, 'a55f11a9-6656-49fb-9b3a-11c1c9252013', 'Roset 2 Core Polos (Kosongan)', 'Gudang Utama', '100.00', '1000.00', '100000.00', '2020-12-11 17:16:45', '2020-12-15 12:38:32'),
(761, '1384e285-01e5-409d-ab47-11eafca2dd3d', 'Roset 2 Core Polos TELKOM INDONESIA ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(762, 'e32b3f90-a6e7-4257-910a-14c418f1f341', 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(763, 'c4ae4929-d6ea-43cb-8772-aec41dc457da', 'Roset 4 Core ( abu abu )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(764, 'fa4f5543-e1b9-419e-85da-10b84b572c10', 'Roset 4 Core (Tanpa Kardus )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(765, '5b35dc17-12ad-41a0-beaa-404ab1187df3', 'Roset 4 Core Polos', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(766, '4b4ae981-c88c-479a-9f72-11c2837cbb4f', 'Roset 4 Core ZTE (Putih)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(767, 'dd6a729f-e71f-468c-a249-7f7fdaf0c169', 'Roset 8 Core Polos', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(768, 'c49ffd8c-556a-47bf-91d0-76e1dca5b182', 'Rosette 2Core GOC Kosongan', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(769, '4d6797ab-3ea0-4545-afc8-4643a5e75c4f', 'Rotary Cable stripper', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(770, '5f8c77ad-966d-47c6-b3c6-e8462e7b18e9', 'S Clamp bulat ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(771, '6d3ad0a2-5469-4ecf-b038-80f8e769ebc1', 'S Clamp Jepit', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(772, '1b8bae64-b054-484e-a9e8-bb1595ca89a7', 'S Clamp Jepit Telkom', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(773, '4e2fd3bb-cd3e-4ecb-9da6-745b145f57ce', 'Scissor (Proskit)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(774, '49015b79-c8d7-4440-8223-515b21b026c6', 'SFP 10GB', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(775, 'd9ea8164-aff7-4501-b2b3-71a7592e7dff', 'Slack Support 80cm', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(776, 'e863ed89-530f-4632-bee1-154d6d2ed205', 'SOC LC/APC ( Belum Terkupas )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(777, '3d9cb0a3-cb54-4a50-bd20-ab7243a88a2b', 'SOC LC/UPC ( Belum Terkupas )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(778, '04d12107-3e94-44ec-8059-2b577eae843c', 'Splice Closure (Dome) 48Core 1In-4Out', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(779, '5419c6c1-c02b-42a1-99d7-331514ce735e', 'Splice Clousure 96 Core Dome ( PAZ )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(780, '4179d80b-f6c1-402a-8d86-76ce23fe9f86', 'Splice on connector SC/APC ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(781, 'ff311236-4679-4d0e-8445-711b9e97879d', 'Splice on connector SC/UPC ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(782, '5d33ef5c-fd87-4770-9051-e78a193a7aa2', 'Splitter PLC 1:8 SC/UPC (KUNING)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(783, '34eff310-0251-45ad-a357-0bbd38c94fed', 'Splitter PLC 1:8 Tanpa Connector ( No Brand )', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(784, '5a75ace8-9408-4b6a-b5bf-f9a521259c77', 'Splitter PLC 1:8 W/O Connector (White)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(785, 'cac3b4e2-b505-411b-a2c6-d213e4a37ab3', 'Stainless Band', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(786, '4f062ee3-75db-4366-8b4d-a851227c4a43', 'Stick Rodding', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(787, '50fb2356-968e-4d26-9a9d-92cc27f5e291', 'Stopping Buckle ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(788, '45e3a2e9-41af-4ba9-96d4-b07ec1fe038b', 'Stopping Buckle Gigi', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(789, '6cca0b3f-588c-42f9-b0b4-e09aa264bf17', 'Streching Film / Wrapping uk. 10', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(790, '7fbc00c3-fb42-46ea-ae0c-309b5edfeefa', 'Stripper (Proskit)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(791, 'a35f643f-add6-4d0a-8be9-9744f10374bc', 'Stripper Fis Import', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(792, 'd3829fea-5f09-45e8-90c6-16b628e6df9f', 'Stripper Fis Local', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(793, '933f444a-c6d0-4c4e-a929-58fd3296390e', 'Stripping Dropwire (Proskit)', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(794, '9d55e710-63df-4329-82c0-ba356de13ddd', 'Suspensi ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(795, 'cec491f9-6cef-4697-9fc8-ebf851bcf0b1', 'Suspensi Corong', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(796, '97f4510c-a8f6-4493-ad08-fb082d0274b0', 'Tangga 4,4m AMG (Hitam)', 'Gudang Utama', '1.00', '5.00', '5.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(797, '27fc1feb-5d93-4f44-8b44-773128e94e70', 'Tangga 4,4m AMG (Silver)', 'Gudang Utama', '1.00', '5.00', '5.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(798, 'fe461df3-74a0-4dc6-bb56-7c8bf6b14990', 'Tangga 4,4m New Power', 'Gudang Utama', '1.00', '5.00', '5.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(799, '3bc7960c-9010-4510-a001-cf2c4360df30', 'Tangga 5,3m AMG', 'Gudang Utama', '1.00', '5.00', '5.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(800, '3226a083-ddc1-4485-9e13-63f21c14257a', 'Teflon Tube 0,9/0,6mm Ivory Colour', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(801, 'd0ef1a6c-cc3f-462b-ad9d-5e6e25710a32', 'Testphone Chinoe/Microtest', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(802, '94af9b6b-a844-4080-ace6-4322f3e8454f', 'Pen-type Visual Fault Locator AMG', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(803, '5e28869b-9c6b-4919-80af-c34a7d3d0295', 'Pen-type Visual Fault Locator JW 3105A', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(804, '2d72ebf9-2ba7-46ff-9cef-c1a7ca58f8eb', 'Winding Machine', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(805, '364bc81c-0fc2-4395-8f3e-b92c4dbf11a9', 'Wire TRacker/Tone Checker', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(806, '1ea1f705-f430-432c-a9c6-1446c815cd41', 'X-Frame 80X90cm 3mm Model Tekuk', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(807, '0c60b541-07e9-4c8c-8487-facf941cefaa', 'Young Jin ', 'Gudang Utama', '100.00', '1000.00', '1000.00', '2020-12-11 17:16:45', '2020-12-11 17:16:45'),
(808, '56c58552-af94-41c6-ab6b-228e03b57e6e', 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Utama', '10000.00', '0.00', '19990.00', '2020-12-12 15:03:02', '2020-12-12 15:37:55'),
(809, '0918b468-c972-4de2-8fec-629505cacd2e', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Pengiriman', '0.00', '0.00', '10.00', '2020-12-12 15:37:55', '2021-01-05 11:00:44'),
(810, '56c58552-af94-41c6-ab6b-228e03b57e6e', 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Pengiriman', '0.00', '0.00', '10.00', '2020-12-12 15:37:55', '2021-01-05 11:00:44'),
(811, '5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splicer KF4', 'Gudang Pengiriman', '0.00', '0.00', '1.00', '2020-12-12 18:01:31', '2020-12-12 18:04:26'),
(812, 'fdd5f3f3-1a18-4b38-926d-8b66de9ed4df', 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Utama', '10.00', '0.00', '900.00', '2020-12-12 18:47:44', '2020-12-12 19:44:42'),
(813, 'fdd5f3f3-1a18-4b38-926d-8b66de9ed4df', 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Pengiriman', '0.00', '0.00', '100.00', '2020-12-12 19:44:42', '2020-12-12 20:03:04'),
(814, '0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'PLC Splitter 1:2 , white', 'Gudang Pengiriman', '0.00', '0.00', '40.00', '2020-12-13 08:44:16', '2021-01-05 11:00:23'),
(815, 'ebecb56a-5c1b-4693-a95b-192709642365', 'Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M', 'Gudang Utama', '1000.00', '0.00', '10000.00', '2020-12-13 08:52:03', '2020-12-13 08:53:59'),
(816, '94bf5a12-41d2-4ff0-ae8c-de8da92f6559', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M', 'Gudang Utama', '1000.00', '0.00', '10000.00', '2020-12-13 08:55:55', '2020-12-13 08:57:24'),
(817, '433ace17-1a8e-452a-a30c-45f5a2c01a55', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M', 'Gudang Utama', '1000.00', '0.00', '10000.00', '2020-12-13 08:59:02', '2020-12-13 09:02:25'),
(818, '6f98e780-07d8-450d-906d-8fd149d8b65c', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M', 'Gudang Utama', '1000.00', '0.00', '10000.00', '2020-12-13 10:03:33', '2020-12-13 10:04:15'),
(819, 'fbb76058-6eba-4feb-90b1-6520cfd0b461', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 50M', 'Gudang Utama', '1000.00', '0.00', '10000.00', '2020-12-13 10:07:56', '2020-12-13 10:08:48'),
(820, 'e0cb30a7-4107-4bbf-9c3e-bf7ba96423c4', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 75M', 'Gudang Utama', '100.00', '0.00', '10000.00', '2020-12-15 11:27:28', '2020-12-15 11:29:03'),
(821, 'be3f2689-25b8-47f7-9816-3414e59be632', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 100M', 'Gudang Utama', '100.00', '0.00', '10000.00', '2020-12-15 11:30:16', '2020-12-15 11:31:17'),
(822, 'bd935277-bfa8-4467-a3d1-cd4fb014d080', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 150M', 'Gudang Utama', '100.00', '0.00', '10000.00', '2020-12-15 11:33:07', '2020-12-15 11:34:18'),
(823, '394f0b93-4e8f-4d99-8b9c-b5c4e21d7371', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 200M', 'Gudang Utama', '100.00', '0.00', '10000.00', '2020-12-15 11:35:43', '2020-12-15 11:37:41'),
(824, '7468f19a-171e-40f2-859e-63f9364f8a83', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m', 'Gudang Utama', '100.00', '0.00', '10000.00', '2020-12-15 12:10:52', '2020-12-15 12:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming` decimal(10,2) DEFAULT NULL,
  `outgoing` decimal(10,2) DEFAULT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_movements`
--

INSERT INTO `inventory_movements` (`id`, `inventory_id`, `reference_id`, `type`, `product_name`, `warehouse_name`, `incoming`, `outgoing`, `remaining`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADJ/FTI/000001/XII/2020', 1, '1??m Polishing film', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(2, 2, 'ADJ/FTI/000002/XII/2020', 1, '30??m Polishing film', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(3, 3, 'ADJ/FTI/000003/XII/2020', 1, '3??m Polishing film', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(4, 4, 'ADJ/FTI/000004/XII/2020', 1, '9??m Polishing film', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(5, 5, 'ADJ/FTI/000005/XII/2020', 1, 'Abs Splitter 1:4 SC/UPC ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(6, 6, 'ADJ/FTI/000006/XII/2020', 1, 'ABS Splitter 1:16', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(7, 7, 'ADJ/FTI/000007/XII/2020', 1, 'ABS Splitter 1:16 W/O connector', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(8, 8, 'ADJ/FTI/000008/XII/2020', 1, 'Abs Splitter 1:4  SC/UPC (Ryutelco)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(9, 9, 'ADJ/FTI/000009/XII/2020', 1, 'ABS Splitter 1:64', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(10, 10, 'ADJ/FTI/000010/XII/2020', 1, 'ABS Splitter 1:64 W/O connector', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(11, 11, 'ADJ/FTI/000011/XII/2020', 1, 'ABS Splitter 1:8 ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(12, 12, 'ADJ/FTI/000012/XII/2020', 1, 'Abs Splitter 1:8 SC/UPC ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(13, 13, 'ADJ/FTI/000013/XII/2020', 1, 'Abs Splitter 1:8 SC/UPC (GOC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(14, 14, 'ADJ/FTI/000014/XII/2020', 1, 'Abs Splitter 1:8 SC/UPC No Brand', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(15, 15, 'ADJ/FTI/000015/XII/2020', 1, 'Abs Splitter 1:8 SC/UPC SAM ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(16, 16, 'ADJ/FTI/000016/XII/2020', 1, 'Abs Splitter 1:8 SC/UPC YOFC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(17, 17, 'ADJ/FTI/000017/XII/2020', 1, 'ABS Splitter 1:8 W/O connector', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(18, 18, 'ADJ/FTI/000018/XII/2020', 1, 'Abs Splitter 2:32 SC/APC ( No Brand )', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(19, 19, 'ADJ/FTI/000019/XII/2020', 1, 'Abs Splitter 2:8 ( Tanpa Connector )', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(20, 20, 'ADJ/FTI/000020/XII/2020', 1, 'Abs Splitter 2:8 SC/APC ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(21, 21, 'ADJ/FTI/000021/XII/2020', 1, 'Abs Splitter 2:8 SC/UPC ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(22, 22, 'ADJ/FTI/000022/XII/2020', 1, 'Abs Splitter 2:8 Tanpa Connector ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(23, 23, 'ADJ/FTI/000023/XII/2020', 1, 'Adapter  - LC  UPC DX , blue', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(24, 24, 'ADJ/FTI/000024/XII/2020', 1, 'Adapter  - SC UPC , blue', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(25, 25, 'ADJ/FTI/000025/XII/2020', 1, 'Adapter Dustcaps Black', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(26, 26, 'ADJ/FTI/000026/XII/2020', 1, 'Adapter Dustcaps Blue', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(27, 27, 'ADJ/FTI/000027/XII/2020', 1, 'Adapter Dustcaps Green', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(28, 28, 'ADJ/FTI/000028/XII/2020', 1, 'Adapter MM DX LC/PC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(29, 29, 'ADJ/FTI/000029/XII/2020', 1, 'Adapter MM SX SC/PC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(30, 30, 'ADJ/FTI/000030/XII/2020', 1, 'Adapter SC UPC auto shutter ( short ear )', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(31, 31, 'ADJ/FTI/000031/XII/2020', 1, 'Adapter SC/APC Auto Shutter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(32, 32, 'ADJ/FTI/000032/XII/2020', 1, 'Adapter SC/UPC Auto Shutter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(33, 33, 'ADJ/FTI/000033/XII/2020', 1, 'Adapter SM FC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(34, 34, 'ADJ/FTI/000034/XII/2020', 1, 'Adapter SM LC/UPC DX', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(35, 35, 'ADJ/FTI/000035/XII/2020', 1, 'Adapter SM SC/APC (BESI) (Dimika)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(36, 36, 'ADJ/FTI/000036/XII/2020', 1, 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(37, 37, 'ADJ/FTI/000037/XII/2020', 1, 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(38, 38, 'ADJ/FTI/000038/XII/2020', 1, 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(39, 39, 'ADJ/FTI/000039/XII/2020', 1, 'Adapter SM SC/UPC DX', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(40, 40, 'ADJ/FTI/000040/XII/2020', 1, 'Adapter SM SC/UPC PAZ ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(41, 41, 'ADJ/FTI/000041/XII/2020', 1, 'Adapter ST/UPC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(42, 42, 'ADJ/FTI/000042/XII/2020', 1, 'Adjustable Light Source F01', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(43, 43, 'ADJ/FTI/000043/XII/2020', 1, 'ADSS-SS-100M- B1.3 , SM , G652D - 12 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(44, 44, 'ADJ/FTI/000044/XII/2020', 1, 'ADSS-SS-100M- B1.3 , SM , G652D - 24 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(45, 45, 'ADJ/FTI/000045/XII/2020', 1, 'ADSS-SS-100M- B1.3 , SM , G652D - 48 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(46, 46, 'ADJ/FTI/000046/XII/2020', 1, 'ADSS-SS-100M- B1.3 , SM , G652D - 6 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(47, 47, 'ADJ/FTI/000047/XII/2020', 1, 'Auto shutter , SC APC , black cap , long ear', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(48, 48, 'ADJ/FTI/000048/XII/2020', 1, 'Auto shutter , SC UPC , black cap , long ear', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(49, 49, 'ADJ/FTI/000049/XII/2020', 1, 'Automatic cable stripper', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(50, 50, 'ADJ/FTI/000050/XII/2020', 1, 'Box ONT Huawei (Kardus)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(51, 51, 'ADJ/FTI/000051/XII/2020', 1, 'Box Splitter 1:8 (Kosongan)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(52, 52, 'ADJ/FTI/000052/XII/2020', 1, 'Box Splitter 1:8 (Splitter PLC 1:8 SC/APC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(53, 53, 'ADJ/FTI/000053/XII/2020', 1, 'BOX SPLITTER 1X8, EMPTY BOX , ABS , 130X100X24.5mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(54, 54, 'ADJ/FTI/000054/XII/2020', 1, 'Bundle Cable 1 Sisi 12 Core SC/APC 1,5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(55, 55, 'ADJ/FTI/000055/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 12m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(56, 56, 'ADJ/FTI/000056/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 19m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(57, 57, 'ADJ/FTI/000057/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(58, 58, 'ADJ/FTI/000058/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 24m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(59, 59, 'ADJ/FTI/000059/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 25m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(60, 60, 'ADJ/FTI/000060/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 26m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(61, 61, 'ADJ/FTI/000061/XII/2020', 1, 'Bundle Cable LC/UPC 8F 1 sisi 38m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(62, 62, 'ADJ/FTI/000062/XII/2020', 1, 'Bundle Cable SC/UPC - LC/UPC 12F 2 sisi 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(63, 63, 'ADJ/FTI/000063/XII/2020', 1, 'Bundle Cable SC/UPC - SC/UPC 8F 2 Sisi 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(64, 64, 'ADJ/FTI/000064/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(65, 65, 'ADJ/FTI/000065/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 11m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(66, 66, 'ADJ/FTI/000066/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 12m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(67, 67, 'ADJ/FTI/000067/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 13m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(68, 68, 'ADJ/FTI/000068/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 14m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(69, 69, 'ADJ/FTI/000069/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(70, 70, 'ADJ/FTI/000070/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 16m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(71, 71, 'ADJ/FTI/000071/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 17m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(72, 72, 'ADJ/FTI/000072/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 18m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(73, 73, 'ADJ/FTI/000073/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 19m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(74, 74, 'ADJ/FTI/000074/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(75, 75, 'ADJ/FTI/000075/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 21m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(76, 76, 'ADJ/FTI/000076/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 22m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(77, 77, 'ADJ/FTI/000077/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 23m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(78, 78, 'ADJ/FTI/000078/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 24m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(79, 79, 'ADJ/FTI/000079/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 25m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(80, 80, 'ADJ/FTI/000080/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 27m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(81, 81, 'ADJ/FTI/000081/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 28m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(82, 82, 'ADJ/FTI/000082/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(83, 83, 'ADJ/FTI/000083/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 42m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(84, 84, 'ADJ/FTI/000084/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 55m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(85, 85, 'ADJ/FTI/000085/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(86, 86, 'ADJ/FTI/000086/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 60m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(87, 87, 'ADJ/FTI/000087/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 65m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(88, 88, 'ADJ/FTI/000088/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(89, 89, 'ADJ/FTI/000089/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 8m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(90, 90, 'ADJ/FTI/000090/XII/2020', 1, 'Bundle Cable SC/UPC 8F 1 sisi 9m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(91, 91, 'ADJ/FTI/000091/XII/2020', 1, 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(92, 92, 'ADJ/FTI/000092/XII/2020', 1, 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(93, 93, 'ADJ/FTI/000093/XII/2020', 1, 'cable branching 2 core,40*10*7mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(94, 94, 'ADJ/FTI/000094/XII/2020', 1, 'Cable markers, EC-0, print 1', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(95, 95, 'ADJ/FTI/000095/XII/2020', 1, 'Cable markers, EC-0, print 2', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(96, 96, 'ADJ/FTI/000096/XII/2020', 1, 'Cable markers, EC-0, print A', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(97, 97, 'ADJ/FTI/000097/XII/2020', 1, 'Cable markers, EC-0, print B', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(98, 98, 'ADJ/FTI/000098/XII/2020', 1, 'Cassete FO 12 core White', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(99, 99, 'ADJ/FTI/000099/XII/2020', 1, 'Cassete FO 24 core Black', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(100, 100, 'ADJ/FTI/000100/XII/2020', 1, 'Cassete FO 24 core White', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(101, 101, 'ADJ/FTI/000101/XII/2020', 1, 'Cassete FO 6 Core', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(102, 102, 'ADJ/FTI/000102/XII/2020', 1, 'Cassete FO 8 Core', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(103, 103, 'ADJ/FTI/000103/XII/2020', 1, 'Cassete FO 96core ( Putih )', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(104, 104, 'ADJ/FTI/000104/XII/2020', 1, 'Clading strip machine', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(105, 105, 'ADJ/FTI/000105/XII/2020', 1, 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 20/50', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(106, 106, 'ADJ/FTI/000106/XII/2020', 1, 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 25/50', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(107, 107, 'ADJ/FTI/000107/XII/2020', 1, 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 50/70', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(108, 108, 'ADJ/FTI/000108/XII/2020', 1, 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 70/90', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(109, 109, 'ADJ/FTI/000109/XII/2020', 1, 'Clamp Pipa Conduit ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(110, 110, 'ADJ/FTI/000110/XII/2020', 1, 'Clamp Ring 3 Lubang ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(111, 111, 'ADJ/FTI/000111/XII/2020', 1, 'Clamp Slang 10 Inch', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(112, 112, 'ADJ/FTI/000112/XII/2020', 1, 'Clamp Slang 5 Inch', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(113, 113, 'ADJ/FTI/000113/XII/2020', 1, 'Clamp Slang 6 Inch', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(114, 114, 'ADJ/FTI/000114/XII/2020', 1, 'Cleaver FC-65/Made In China', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(115, 115, 'ADJ/FTI/000115/XII/2020', 1, 'Cleaver Merk Senter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(116, 116, 'ADJ/FTI/000116/XII/2020', 1, 'Cleaver Sumitomo ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(117, 117, 'ADJ/FTI/000117/XII/2020', 1, 'Clip MM LC/PC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(118, 118, 'ADJ/FTI/000118/XII/2020', 1, 'Clip MM LC/UPC (Transparent)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(119, 119, 'ADJ/FTI/000119/XII/2020', 1, 'Clip MM SC/PC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(120, 120, 'ADJ/FTI/000120/XII/2020', 1, 'Clip SM LC/APC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(121, 121, 'ADJ/FTI/000121/XII/2020', 1, 'Clip SM LC/UPC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(122, 122, 'ADJ/FTI/000122/XII/2020', 1, 'Clip SM SC/APC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(123, 123, 'ADJ/FTI/000123/XII/2020', 1, 'Clip SM SC/UPC', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(124, 124, 'ADJ/FTI/000124/XII/2020', 1, 'Clossure horizontal 288 Core ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(125, 125, 'ADJ/FTI/000125/XII/2020', 1, 'Clossure horizontal AIS 12/24 Core (Duck) ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(126, 126, 'ADJ/FTI/000126/XII/2020', 1, 'Clossure horizontal AIS 96 Core (Duck) ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(127, 127, 'ADJ/FTI/000127/XII/2020', 1, 'Closure horizontal,24 core, 3IN-3OUT,450*210*120mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(128, 128, 'ADJ/FTI/000128/XII/2020', 1, 'Closure horizontal,48 core, 3IN-3OUT,450*210*120mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(129, 129, 'ADJ/FTI/000129/XII/2020', 1, 'Clousure horizontal  48 Core (PAZ)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(130, 130, 'ADJ/FTI/000130/XII/2020', 1, 'Clousure horizontal  96 Core ( Kulit Jeruk)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(131, 131, 'ADJ/FTI/000131/XII/2020', 1, 'Clousure horizontal  96 Core ( No brand )', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(132, 132, 'ADJ/FTI/000132/XII/2020', 1, 'Clousure horizontal 48 Core (Fiber Trone)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(133, 133, 'ADJ/FTI/000133/XII/2020', 1, 'Connector 2mm Semi Finished SC/UPC SM', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(134, 134, 'ADJ/FTI/000134/XII/2020', 1, 'Connector FC PC 2mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(135, 135, 'ADJ/FTI/000135/XII/2020', 1, 'Connector FC PC 3mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(136, 136, 'ADJ/FTI/000136/XII/2020', 1, 'Connector LC APC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(137, 137, 'ADJ/FTI/000137/XII/2020', 1, 'Connector LC APC 2mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(138, 138, 'ADJ/FTI/000138/XII/2020', 1, 'Connector LC APC 3mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(139, 139, 'ADJ/FTI/000139/XII/2020', 1, 'Connector LC PC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(140, 140, 'ADJ/FTI/000140/XII/2020', 1, 'Connector LC PC 2mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(141, 141, 'ADJ/FTI/000141/XII/2020', 1, 'Connector LC UPC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(142, 142, 'ADJ/FTI/000142/XII/2020', 1, 'Connector LC UPC 2mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(143, 143, 'ADJ/FTI/000143/XII/2020', 1, 'Connector LC UPC 3mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(144, 144, 'ADJ/FTI/000144/XII/2020', 1, 'Connector SC APC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(145, 145, 'ADJ/FTI/000145/XII/2020', 1, 'Connector SC APC 2mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(146, 146, 'ADJ/FTI/000146/XII/2020', 1, 'Connector SC APC 3mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(147, 147, 'ADJ/FTI/000147/XII/2020', 1, 'Connector SC PC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(148, 148, 'ADJ/FTI/000148/XII/2020', 1, 'Connector SC PC 2mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(149, 149, 'ADJ/FTI/000149/XII/2020', 1, 'Connector SC UPC 0.9mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(150, 150, 'ADJ/FTI/000150/XII/2020', 1, 'Connector SC UPC 2mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(151, 151, 'ADJ/FTI/000151/XII/2020', 1, 'Connector SC UPC 3mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(152, 152, 'ADJ/FTI/000152/XII/2020', 1, 'Connector semi assembly SC/UPC SM 5cm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(153, 153, 'ADJ/FTI/000153/XII/2020', 1, 'Connector semi finished SC APC , SM , 5 CM , include ferrule for preconnector dropcable', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(154, 154, 'ADJ/FTI/000154/XII/2020', 1, 'Connector semi finished SC UPC , SM , 5 CM , include ferrule for preconnector dropcable', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(155, 155, 'ADJ/FTI/000155/XII/2020', 1, 'Connector ST PC 2mm ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(156, 156, 'ADJ/FTI/000156/XII/2020', 1, 'Connector ST Semi Assembly 2mm', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(157, 157, 'ADJ/FTI/000157/XII/2020', 1, 'CPRI, SM Armored 2-core, G652D ,blue color - 2 Core - FIBERTEKNO', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(158, 158, 'ADJ/FTI/000158/XII/2020', 1, 'Crimping Machine ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(159, 159, 'ADJ/FTI/000159/XII/2020', 1, 'Crimping Tools', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(160, 160, 'ADJ/FTI/000160/XII/2020', 1, 'Curring oven ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(161, 161, 'ADJ/FTI/000161/XII/2020', 1, 'Cutter Besar (Kenko)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(162, 162, 'ADJ/FTI/000162/XII/2020', 1, 'Cutting Machine', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(163, 163, 'ADJ/FTI/000163/XII/2020', 1, 'D-clamp', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(164, 164, 'ADJ/FTI/000164/XII/2020', 1, 'Dome,48 core, no line, 1IN-4OUT', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(165, 165, 'ADJ/FTI/000165/XII/2020', 1, 'Drop cable cutting machine', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(166, 166, 'ADJ/FTI/000166/XII/2020', 1, 'Dropcable 1 Core 100 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(167, 167, 'ADJ/FTI/000167/XII/2020', 1, 'Dropcable 1 Core 150 Meter ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(168, 168, 'ADJ/FTI/000168/XII/2020', 1, 'Dropcable 1 Core 200 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(169, 169, 'ADJ/FTI/000169/XII/2020', 1, 'Dropcable 1 Core 250 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(170, 170, 'ADJ/FTI/000170/XII/2020', 1, 'Dropcable 1 Core 300 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(171, 171, 'ADJ/FTI/000171/XII/2020', 1, 'Dropcable 1 Core 50 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(172, 172, 'ADJ/FTI/000172/XII/2020', 1, 'Dropcable 1 Core 75 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(173, 173, 'ADJ/FTI/000173/XII/2020', 1, 'Dropcable 1 Core 80 Meter', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(174, 174, 'ADJ/FTI/000174/XII/2020', 1, 'Dropcable 1 Core Bulat', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(175, 175, 'ADJ/FTI/000175/XII/2020', 1, 'Dropcable Branching 2Core', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(176, 176, 'ADJ/FTI/000176/XII/2020', 1, 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 1 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(177, 177, 'ADJ/FTI/000177/XII/2020', 1, 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(178, 178, 'ADJ/FTI/000178/XII/2020', 1, 'Dropcable stripping pliers Wire - proHEX\n ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(179, 179, 'ADJ/FTI/000179/XII/2020', 1, 'epoxy glue A and B', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(180, 180, 'ADJ/FTI/000180/XII/2020', 1, 'Face plate 1c ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(181, 181, 'ADJ/FTI/000181/XII/2020', 1, 'Fast Conector SC/APC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(182, 182, 'ADJ/FTI/000182/XII/2020', 1, 'Fast Conector SC/UPC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(183, 183, 'ADJ/FTI/000183/XII/2020', 1, 'Ferulle 125 for LC UPC MM', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(184, 184, 'ADJ/FTI/000184/XII/2020', 1, 'Ferulle 125 for LC UPC SM', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(185, 185, 'ADJ/FTI/000185/XII/2020', 1, 'Ferulle 250 for SC / FC APC SM', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(186, 186, 'ADJ/FTI/000186/XII/2020', 1, 'Ferulle 250 for SC / FC MM', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(187, 187, 'ADJ/FTI/000187/XII/2020', 1, 'Ferulle 250 for SC / FC UPC SM', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(188, 188, 'ADJ/FTI/000188/XII/2020', 1, 'Ferulle Press Machine', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(189, 189, 'ADJ/FTI/000189/XII/2020', 1, 'Fiber Fusion Splice F04', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(190, 190, 'ADJ/FTI/000190/XII/2020', 1, 'Fiber Fusion Splicer k11', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(191, 191, 'ADJ/FTI/000191/XII/2020', 1, 'Fiber Fusion Splicer KF4', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(192, 192, 'ADJ/FTI/000192/XII/2020', 1, 'Fiber Fusion Splicer KF4A', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(193, 193, 'ADJ/FTI/000193/XII/2020', 1, 'final ADS , 0.01 um , mipox/ntt', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(194, 194, 'ADJ/FTI/000194/XII/2020', 1, 'GJFJH-2B6a1, Patchcord outdoor cable , G657A1 , LSZH , BLUE COLOR  - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(195, 195, 'ADJ/FTI/000195/XII/2020', 1, 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 1 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(196, 196, 'ADJ/FTI/000196/XII/2020', 1, 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 2 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(197, 197, 'ADJ/FTI/000197/XII/2020', 1, 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 4 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(198, 198, 'ADJ/FTI/000198/XII/2020', 1, 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 1 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(199, 199, 'ADJ/FTI/000199/XII/2020', 1, 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 2 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(200, 200, 'ADJ/FTI/000200/XII/2020', 1, 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 4 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(201, 201, 'ADJ/FTI/000201/XII/2020', 1, 'GYA-B1.3, DUCT SCPT , SM , G652D - 12 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(202, 202, 'ADJ/FTI/000202/XII/2020', 1, 'GYA-B1.3, DUCT SCPT , SM , G652D - 24 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(203, 203, 'ADJ/FTI/000203/XII/2020', 1, 'GYAXTC8Y - B1.3, Outdoor cable 12 core small Fig8 - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(204, 204, 'ADJ/FTI/000204/XII/2020', 1, 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 12 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(205, 205, 'ADJ/FTI/000205/XII/2020', 1, 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 24 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(206, 206, 'ADJ/FTI/000206/XII/2020', 1, 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 48 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(207, 207, 'ADJ/FTI/000207/XII/2020', 1, 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 6 Core - YOFC ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(208, 208, 'ADJ/FTI/000208/XII/2020', 1, 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 12 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(209, 209, 'ADJ/FTI/000209/XII/2020', 1, 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 24 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(210, 210, 'ADJ/FTI/000210/XII/2020', 1, 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 48 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(211, 211, 'ADJ/FTI/000211/XII/2020', 1, 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 6 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(212, 212, 'ADJ/FTI/000212/XII/2020', 1, 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 12 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(213, 213, 'ADJ/FTI/000213/XII/2020', 1, 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 24 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(214, 214, 'ADJ/FTI/000214/XII/2020', 1, 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 48 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(215, 215, 'ADJ/FTI/000215/XII/2020', 1, 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 96 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(216, 216, 'ADJ/FTI/000216/XII/2020', 1, 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 12 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(217, 217, 'ADJ/FTI/000217/XII/2020', 1, 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 24 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(218, 218, 'ADJ/FTI/000218/XII/2020', 1, 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 48 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(219, 219, 'ADJ/FTI/000219/XII/2020', 1, 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 96 CORE - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(220, 220, 'ADJ/FTI/000220/XII/2020', 1, 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 12 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(221, 221, 'ADJ/FTI/000221/XII/2020', 1, 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 24 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(222, 222, 'ADJ/FTI/000222/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 12 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(223, 223, 'ADJ/FTI/000223/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 144 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(224, 224, 'ADJ/FTI/000224/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 24 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(225, 225, 'ADJ/FTI/000225/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 288 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(226, 226, 'ADJ/FTI/000226/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 48 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(227, 227, 'ADJ/FTI/000227/XII/2020', 1, 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 96 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(228, 228, 'ADJ/FTI/000228/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 12 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(229, 229, 'ADJ/FTI/000229/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 144 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(230, 230, 'ADJ/FTI/000230/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 24 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(231, 231, 'ADJ/FTI/000231/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 288 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(232, 232, 'ADJ/FTI/000232/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 48 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(233, 233, 'ADJ/FTI/000233/XII/2020', 1, 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 96 Core - YOFC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(234, 234, 'ADJ/FTI/000234/XII/2020', 1, 'GYXFTCS , round type , G657A1, tanpa seling - 2 Core - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(235, 235, 'ADJ/FTI/000235/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 12 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(236, 236, 'ADJ/FTI/000236/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 2 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(237, 237, 'ADJ/FTI/000237/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 24 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(238, 238, 'ADJ/FTI/000238/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 4 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(239, 239, 'ADJ/FTI/000239/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 6 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(240, 240, 'ADJ/FTI/000240/XII/2020', 1, 'GYXTC8Y, Fig8 Cable, G.657A1 - 8 CORE - FIBERTEKNO', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(241, 241, 'ADJ/FTI/000241/XII/2020', 1, 'heat shrink tube 3mm , black', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(242, 242, 'ADJ/FTI/000242/XII/2020', 1, 'heat shrink tube 3mm , white', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(243, 243, 'ADJ/FTI/000243/XII/2020', 1, 'heat shrink tube 4mm , black', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(244, 244, 'ADJ/FTI/000244/XII/2020', 1, 'heat shrink tube 8mm , black', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(245, 245, 'ADJ/FTI/000245/XII/2020', 1, 'Holder SOC SC/UPC Sumitomo', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(246, 246, 'ADJ/FTI/000246/XII/2020', 1, 'IL&RL Test ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(247, 247, 'ADJ/FTI/000247/XII/2020', 1, 'Jacket Furcation tubing,  900um / 250um ', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(248, 248, 'ADJ/FTI/000248/XII/2020', 1, 'Jacket Furcation tubing.  3 mm / 900 um,  Black , aramid', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(249, 249, 'ADJ/FTI/000249/XII/2020', 1, 'Jig Corner SC/APC-36', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(250, 250, 'ADJ/FTI/000250/XII/2020', 1, 'Jig Corner SC/UPC-36', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(251, 251, 'ADJ/FTI/000251/XII/2020', 1, 'Jig Corner STUPC-24', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(252, 252, 'ADJ/FTI/000252/XII/2020', 1, 'Jig ST', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(253, 253, 'ADJ/FTI/000253/XII/2020', 1, 'Kabel Dropcore Putih ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(254, 254, 'ADJ/FTI/000254/XII/2020', 1, 'Kabel MM SX 3.mm 1,5M Potongan', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(255, 255, 'ADJ/FTI/000255/XII/2020', 1, 'Kabel MM SX 3.mm 3M Potongan', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(256, 256, 'ADJ/FTI/000256/XII/2020', 1, 'Kabel UTP CAT 6 LS ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(257, 257, 'ADJ/FTI/000257/XII/2020', 1, 'Kabel UTP CAT 6 Schneider ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(258, 258, 'ADJ/FTI/000258/XII/2020', 1, 'Kabel UTP CAT 6 Vasco Link', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(259, 259, 'ADJ/FTI/000259/XII/2020', 1, 'Kardus uk. 100 x 36 x 36 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(260, 260, 'ADJ/FTI/000260/XII/2020', 1, 'Kardus uk. 22 x 22 x 10 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(261, 261, 'ADJ/FTI/000261/XII/2020', 1, 'Kardus uk. 22 x 22 x 22 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(262, 262, 'ADJ/FTI/000262/XII/2020', 1, 'Kardus uk. 55 x 38 x 36 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(263, 263, 'ADJ/FTI/000263/XII/2020', 1, 'Kardus uk. 57 x 31 x 31 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(264, 264, 'ADJ/FTI/000264/XII/2020', 1, 'Kardus uk. 60 x 39 x 25 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(265, 265, 'ADJ/FTI/000265/XII/2020', 1, 'Kardus uk. 60 x 40 x 25 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49');
INSERT INTO `inventory_movements` (`id`, `inventory_id`, `reference_id`, `type`, `product_name`, `warehouse_name`, `incoming`, `outgoing`, `remaining`, `notes`, `created_at`, `updated_at`) VALUES
(266, 266, 'ADJ/FTI/000266/XII/2020', 1, 'Kardus uk. 65 x 35 x 36 cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(267, 267, 'ADJ/FTI/000267/XII/2020', 1, 'Karet PAD Seikoh Giken 70', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(268, 268, 'ADJ/FTI/000268/XII/2020', 1, 'Karet PAD Seikoh Giken 80', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(269, 269, 'ADJ/FTI/000269/XII/2020', 1, 'Kelvar Scissor (Tang Gunting)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(270, 270, 'ADJ/FTI/000270/XII/2020', 1, 'Kevlar scissors - prohex', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(271, 271, 'ADJ/FTI/000271/XII/2020', 1, 'Krone LSA', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(272, 272, 'ADJ/FTI/000272/XII/2020', 1, 'Lan Tester', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(273, 273, 'ADJ/FTI/000273/XII/2020', 1, 'Lem Epoxy Kit Part A&B', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(274, 274, 'ADJ/FTI/000274/XII/2020', 1, 'Markers Number, EC-0, Print A', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(275, 275, 'ADJ/FTI/000275/XII/2020', 1, 'Markers Number, EC-0, Print B', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(276, 276, 'ADJ/FTI/000276/XII/2020', 1, 'Masking Tape 12mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(277, 277, 'ADJ/FTI/000277/XII/2020', 1, 'Masking Tape 24mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(278, 278, 'ADJ/FTI/000278/XII/2020', 1, 'Media Converter 10/100 ( B )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(279, 279, 'ADJ/FTI/000279/XII/2020', 1, 'Media Converter 10/100 (A)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(280, 280, 'ADJ/FTI/000280/XII/2020', 1, 'Media converter 10/1000', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(281, 281, 'ADJ/FTI/000281/XII/2020', 1, 'Melter Connector machine', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(282, 282, 'ADJ/FTI/000282/XII/2020', 1, 'Melter Connector SC UPC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(283, 283, 'ADJ/FTI/000283/XII/2020', 1, 'Mesin Melter', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(284, 284, 'ADJ/FTI/000284/XII/2020', 1, 'Microscope ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(285, 285, 'ADJ/FTI/000285/XII/2020', 1, 'Miller clamp - prohex', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(286, 286, 'ADJ/FTI/000286/XII/2020', 1, 'Mini Abs Splitter 1:2', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(287, 287, 'ADJ/FTI/000287/XII/2020', 1, 'Mini Abs Splitter 1:2 W/O connector', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(288, 288, 'ADJ/FTI/000288/XII/2020', 1, 'Mini Abs Splitter 1:4 ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(289, 289, 'ADJ/FTI/000289/XII/2020', 1, 'Mini Abs Splitter 1:4 W/O connector', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(290, 290, 'ADJ/FTI/000290/XII/2020', 1, 'Mini Abs Splitter 1:8', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(291, 291, 'ADJ/FTI/000291/XII/2020', 1, 'Mini Abs Splitter 1:8  SC/UPC (Ryutelco)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(292, 292, 'ADJ/FTI/000292/XII/2020', 1, 'Mini Abs Splitter 1:8 W/O connector', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(293, 293, 'ADJ/FTI/000293/XII/2020', 1, 'ODC 48 Core KOSONGAN SMC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(294, 294, 'ADJ/FTI/000294/XII/2020', 1, 'ODC Mini 96C/ODP 96C', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(295, 295, 'ADJ/FTI/000295/XII/2020', 1, 'ODP 12 Core POLE', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(296, 296, 'ADJ/FTI/000296/XII/2020', 1, 'ODP 12 Core YOFC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(297, 297, 'ADJ/FTI/000297/XII/2020', 1, 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(298, 298, 'ADJ/FTI/000298/XII/2020', 1, 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(299, 299, 'ADJ/FTI/000299/XII/2020', 1, 'ODP 12C With stainless steel hoop', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(300, 300, 'ADJ/FTI/000300/XII/2020', 1, 'ODP 16 Core ( TIS )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(301, 301, 'ADJ/FTI/000301/XII/2020', 1, 'ODP 16 Core CA (Huawei) Black', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(302, 302, 'ADJ/FTI/000302/XII/2020', 1, 'ODP 16 core,ABS , white , 302x218x104,5mm ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(303, 303, 'ADJ/FTI/000303/XII/2020', 1, 'ODP 16 core,ABS , white , 315x270x85 mm ( SUNSEA )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(304, 304, 'ADJ/FTI/000304/XII/2020', 1, 'ODP 16C WITH BOX 2x1:8 cores,white, ABS, 311X237X104mm, with SUS Hoop, with logo', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(305, 305, 'ADJ/FTI/000305/XII/2020', 1, 'ODP 24 core,ABS, 2pcsEmbrace hoop , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(306, 306, 'ADJ/FTI/000306/XII/2020', 1, 'ODP 4 cores , white, 206x134x40mm, with logo', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(307, 307, 'ADJ/FTI/000307/XII/2020', 1, 'ODP 8 cores , white, ABS, 232x203x53mm, with SUS Hoop, with logo', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(308, 308, 'ADJ/FTI/000308/XII/2020', 1, 'ODP FAT 16Core (ABS White 302 x 218 x 104.5mm) (Sunsea)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(309, 309, 'ADJ/FTI/000309/XII/2020', 1, 'ODP FAT 16Core (ABS White 315 x 270 x 85mm) (PAZ)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(310, 310, 'ADJ/FTI/000310/XII/2020', 1, 'ODP FAT 24Core (ABS 2pcs Embrace Hoop White)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(311, 311, 'ADJ/FTI/000311/XII/2020', 1, 'ODP Pole 1:8 (Tanpa Pigtail,Adaptor dan Splitter) Embos', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(312, 312, 'ADJ/FTI/000312/XII/2020', 1, 'ODP Solid 16 Core + Splitter 1:16 SC/UPC Auto Shutter', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(313, 313, 'ADJ/FTI/000313/XII/2020', 1, 'Odp solid 8C ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(314, 314, 'ADJ/FTI/000314/XII/2020', 1, 'OLS J4', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(315, 315, 'ADJ/FTI/000315/XII/2020', 1, 'One Click Cleaner LC (Pen Cleaner LC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(316, 316, 'ADJ/FTI/000316/XII/2020', 1, 'One Click Cleaner SC (Pen Cleaner SC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(317, 317, 'ADJ/FTI/000317/XII/2020', 1, 'ONT ZTE Versi 3', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(318, 318, 'ADJ/FTI/000318/XII/2020', 1, 'OPP Packing Tapre 48mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(319, 319, 'ADJ/FTI/000319/XII/2020', 1, 'Optical Fiber Identifier Joinwit (OFI JW)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(320, 320, 'ADJ/FTI/000320/XII/2020', 1, 'Optical Light Source (OLS) JW', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(321, 321, 'ADJ/FTI/000321/XII/2020', 1, 'Optical Power Mete F02', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(322, 322, 'ADJ/FTI/000322/XII/2020', 1, 'Optical Power Meter ( AMG )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(323, 323, 'ADJ/FTI/000323/XII/2020', 1, 'Optical Power Meter (No Brand)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(324, 324, 'ADJ/FTI/000324/XII/2020', 1, 'Optical Power Meter JoinWitt', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(325, 325, 'ADJ/FTI/000325/XII/2020', 1, 'Optical Time Domain Reflectometer Joinwit (OTDR JW)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(326, 326, 'ADJ/FTI/000326/XII/2020', 1, 'OTB \'19\', Draw-out type19\', 24 core', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(327, 327, 'ADJ/FTI/000327/XII/2020', 1, 'OTB 19\', Draw-out type19\', 12 core', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(328, 328, 'ADJ/FTI/000328/XII/2020', 1, 'OTB 24 Core SC (Hitam)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(329, 329, 'ADJ/FTI/000329/XII/2020', 1, 'OTB 24 Core SC (Krim)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(330, 330, 'ADJ/FTI/000330/XII/2020', 1, 'OTB 24 Core SC/APC ( No Brand )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(331, 331, 'ADJ/FTI/000331/XII/2020', 1, 'OTB 48 Core SC/APC ( No Brand )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(332, 332, 'ADJ/FTI/000332/XII/2020', 1, 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(333, 333, 'ADJ/FTI/000333/XII/2020', 1, 'OTB Rack 144 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(334, 334, 'ADJ/FTI/000334/XII/2020', 1, 'OTB Rack 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(335, 335, 'ADJ/FTI/000335/XII/2020', 1, 'OTB Rack 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(336, 336, 'ADJ/FTI/000336/XII/2020', 1, 'OTB Rack 96 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(337, 337, 'ADJ/FTI/000337/XII/2020', 1, 'OTB Rack Splitter PLC 1:32 SC/APC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(338, 338, 'ADJ/FTI/000338/XII/2020', 1, 'OTDR Fiber Tekno', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(339, 339, 'ADJ/FTI/000339/XII/2020', 1, 'OTDR Wavelength 1310/1550nm,32/30dB F05', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(340, 340, 'ADJ/FTI/000340/XII/2020', 1, 'Paladin Buffer Stripper', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(341, 341, 'ADJ/FTI/000341/XII/2020', 1, 'Palu Kecil ( CAB )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(342, 342, 'ADJ/FTI/000342/XII/2020', 1, 'Pantong', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(343, 343, 'ADJ/FTI/000343/XII/2020', 1, 'Patch cord cable SM DX 2.0mm G652D LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(344, 344, 'ADJ/FTI/000344/XII/2020', 1, 'Patch cord cable SM DX 2.0mm G657A2 LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(345, 345, 'ADJ/FTI/000345/XII/2020', 1, 'Patch cord cable SM DX 3.0mm G652D LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(346, 346, 'ADJ/FTI/000346/XII/2020', 1, 'Patch cord cable SM DX 3.0mm G657A2 LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(347, 347, 'ADJ/FTI/000347/XII/2020', 1, 'Patch cord cable SM SX 3.0mm G652D LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(348, 348, 'ADJ/FTI/000348/XII/2020', 1, 'Patch cord cable SM SX 3.0mm G657A2 LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(349, 349, 'ADJ/FTI/000349/XII/2020', 1, 'Patchcord Cable,MM OM2 DX,2mm,ORANGE,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(350, 350, 'ADJ/FTI/000350/XII/2020', 1, 'Patchcord Cable,MM OM3 DX,2mm,AQUA,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(351, 351, 'ADJ/FTI/000351/XII/2020', 1, 'Patchcord Cable,MM OM4 DX,2mm,AQUA,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(352, 352, 'ADJ/FTI/000352/XII/2020', 1, 'Patchcord Cable,MM OM4 DX,2mm,BLUE,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(353, 353, 'ADJ/FTI/000353/XII/2020', 1, 'Patchcord Cable,MM OM4 DX,2mm,ORANGE,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(354, 354, 'ADJ/FTI/000354/XII/2020', 1, 'Patchcord Cable,MM OM4 DX,2mm,RED,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(355, 355, 'ADJ/FTI/000355/XII/2020', 1, 'Patchcord Cable,SM DX,2mm,G652D,YELLOW,PVC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(356, 356, 'ADJ/FTI/000356/XII/2020', 1, 'Patchcord Cable,SM SX,2mm,G652D,YELLOW,PVC', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(357, 357, 'ADJ/FTI/000357/XII/2020', 1, 'Patchcord Cable,SM SX,2mm,G657A2,YELLOW,LSZH', 'Gudang Utama', '100000.00', '0.00', '100000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(358, 358, 'ADJ/FTI/000358/XII/2020', 1, 'Patchcord MM DX (2,0mm) FC/PC-LC/PC 15m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(359, 359, 'ADJ/FTI/000359/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 1.5m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(360, 360, 'ADJ/FTI/000360/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 10m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(361, 361, 'ADJ/FTI/000361/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 2m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(362, 362, 'ADJ/FTI/000362/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 30m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(363, 363, 'ADJ/FTI/000363/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(364, 364, 'ADJ/FTI/000364/XII/2020', 1, 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(365, 365, 'ADJ/FTI/000365/XII/2020', 1, 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 15m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(366, 366, 'ADJ/FTI/000366/XII/2020', 1, 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 1m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(367, 367, 'ADJ/FTI/000367/XII/2020', 1, 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 1m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(368, 368, 'ADJ/FTI/000368/XII/2020', 1, 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 2m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(369, 369, 'ADJ/FTI/000369/XII/2020', 1, 'Patchcord MM DX (2,0mm) SC/UPC-LC/UPC 2m (OM2 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(370, 370, 'ADJ/FTI/000370/XII/2020', 1, 'Patchcord MM DX (3,0mm) SC/UPC-ST/UPC 3m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(371, 371, 'ADJ/FTI/000371/XII/2020', 1, 'Patchcord MM DX (3,0mm) ST/UPC-LC/UPC 1m (OM2 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(372, 372, 'ADJ/FTI/000372/XII/2020', 1, 'Patchcord MM DX (3,0mm) ST/UPC-ST/UPC 5m (OM2 ROSENBERGER)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(373, 373, 'ADJ/FTI/000373/XII/2020', 1, 'Patchcord MM DX SC/APC-LC/APC (2,mm) 1M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(374, 374, 'ADJ/FTI/000374/XII/2020', 1, 'Patchcord MM DX SC/APC-SC/APC (2,mm) 2M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(375, 375, 'ADJ/FTI/000375/XII/2020', 1, 'Patchcord MM DX SC/UPC-SC/UPC (2,mm) 1M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(376, 376, 'ADJ/FTI/000376/XII/2020', 1, 'Patchcord MM OM2 DX 2mm ST/PC-LC/PC 1M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(377, 377, 'ADJ/FTI/000377/XII/2020', 1, 'Patchcord MM OM3 DX 2,mm SC/PC-SC/PC 10M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(378, 378, 'ADJ/FTI/000378/XII/2020', 1, 'Patchcord MM OM3 DX 2MJM LC/PC-LC/PC 1M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(379, 379, 'ADJ/FTI/000379/XII/2020', 1, 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 10M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(380, 380, 'ADJ/FTI/000380/XII/2020', 1, 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 3M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(381, 381, 'ADJ/FTI/000381/XII/2020', 1, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 10m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(382, 382, 'ADJ/FTI/000382/XII/2020', 1, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 15m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(383, 383, 'ADJ/FTI/000383/XII/2020', 1, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(384, 384, 'ADJ/FTI/000384/XII/2020', 1, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 30m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(385, 385, 'ADJ/FTI/000385/XII/2020', 1, 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 40m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(386, 386, 'ADJ/FTI/000386/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 10m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(387, 387, 'ADJ/FTI/000387/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 15m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(388, 388, 'ADJ/FTI/000388/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(389, 389, 'ADJ/FTI/000389/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 25m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(390, 390, 'ADJ/FTI/000390/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 30m  (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(391, 391, 'ADJ/FTI/000391/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 3m (OM1 GJFJ)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(392, 392, 'ADJ/FTI/000392/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 5m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(393, 393, 'ADJ/FTI/000393/XII/2020', 1, 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 60m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(394, 394, 'ADJ/FTI/000394/XII/2020', 1, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 10m (OM1 CORNING)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(395, 395, 'ADJ/FTI/000395/XII/2020', 1, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 20m (OM1 PVC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(396, 396, 'ADJ/FTI/000396/XII/2020', 1, 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 50m (OM1 CORNING)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(397, 397, 'ADJ/FTI/000397/XII/2020', 1, 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 1m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(398, 398, 'ADJ/FTI/000398/XII/2020', 1, 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 2m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(399, 399, 'ADJ/FTI/000399/XII/2020', 1, 'Patchcord MM SX (2,0mm) ST/UPC-ST/UPC 10m (OM1)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(400, 400, 'ADJ/FTI/000400/XII/2020', 1, 'Patchcord MM SX (3,0mm) LC/UPC-LC/UPC 50m (OM1 CORNING)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(401, 401, 'ADJ/FTI/000401/XII/2020', 1, 'Patchcord MM SX (3,0mm) SC/UPC-SC/UPC 3m (OM2 LSZH)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(402, 402, 'ADJ/FTI/000402/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 100m Aqua (FTI)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(403, 403, 'ADJ/FTI/000403/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(404, 404, 'ADJ/FTI/000404/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 1m Aqua', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(405, 405, 'ADJ/FTI/000405/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 20m Aqua (YOFC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(406, 406, 'ADJ/FTI/000406/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 25m Aqua (YOFC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(407, 407, 'ADJ/FTI/000407/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 30m Aqua (DTC NET)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(408, 408, 'ADJ/FTI/000408/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 3m Aqua (FTI)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(409, 409, 'ADJ/FTI/000409/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 50m Aqua (YOFC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(410, 410, 'ADJ/FTI/000410/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(411, 411, 'ADJ/FTI/000411/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 15m Aqua (DTC NET)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(412, 412, 'ADJ/FTI/000412/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 20m Aqua (DTC NET)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(413, 413, 'ADJ/FTI/000413/XII/2020', 1, 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 30m Aqua (YOFC)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(414, 414, 'ADJ/FTI/000414/XII/2020', 1, 'Patchcord OM4 DX (2,0mm) FC/PC-LC/PC 15m Biru (FTI)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(415, 415, 'ADJ/FTI/000415/XII/2020', 1, 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 10m Biru (FTI)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(416, 416, 'ADJ/FTI/000416/XII/2020', 1, 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 20m Biru (FTI)', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(417, 417, 'ADJ/FTI/000417/XII/2020', 1, 'Patchcord Outdoor DX SC/APC-SC/APC 100m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(418, 418, 'ADJ/FTI/000418/XII/2020', 1, 'Patchcord Outdoor SC/UPC-SC/UPC 5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(419, 419, 'ADJ/FTI/000419/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(420, 420, 'ADJ/FTI/000420/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(421, 421, 'ADJ/FTI/000421/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(422, 422, 'ADJ/FTI/000422/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(423, 423, 'ADJ/FTI/000423/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(424, 424, 'ADJ/FTI/000424/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(425, 425, 'ADJ/FTI/000425/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(426, 426, 'ADJ/FTI/000426/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(427, 427, 'ADJ/FTI/000427/XII/2020', 1, 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(428, 428, 'ADJ/FTI/000428/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(429, 429, 'ADJ/FTI/000429/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(430, 430, 'ADJ/FTI/000430/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(431, 431, 'ADJ/FTI/000431/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(432, 432, 'ADJ/FTI/000432/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(433, 433, 'ADJ/FTI/000433/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 25m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(434, 434, 'ADJ/FTI/000434/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(435, 435, 'ADJ/FTI/000435/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(436, 436, 'ADJ/FTI/000436/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(437, 437, 'ADJ/FTI/000437/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(438, 438, 'ADJ/FTI/000438/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(439, 439, 'ADJ/FTI/000439/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(440, 440, 'ADJ/FTI/000440/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(441, 441, 'ADJ/FTI/000441/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(442, 442, 'ADJ/FTI/000442/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(443, 443, 'ADJ/FTI/000443/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(444, 444, 'ADJ/FTI/000444/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(445, 445, 'ADJ/FTI/000445/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(446, 446, 'ADJ/FTI/000446/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(447, 447, 'ADJ/FTI/000447/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(448, 448, 'ADJ/FTI/000448/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(449, 449, 'ADJ/FTI/000449/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(450, 450, 'ADJ/FTI/000450/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(451, 451, 'ADJ/FTI/000451/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(452, 452, 'ADJ/FTI/000452/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(453, 453, 'ADJ/FTI/000453/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(454, 454, 'ADJ/FTI/000454/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 35m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(455, 455, 'ADJ/FTI/000455/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(456, 456, 'ADJ/FTI/000456/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(457, 457, 'ADJ/FTI/000457/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(458, 458, 'ADJ/FTI/000458/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(459, 459, 'ADJ/FTI/000459/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(460, 460, 'ADJ/FTI/000460/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(461, 461, 'ADJ/FTI/000461/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(462, 462, 'ADJ/FTI/000462/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(463, 463, 'ADJ/FTI/000463/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(464, 464, 'ADJ/FTI/000464/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(465, 465, 'ADJ/FTI/000465/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(466, 466, 'ADJ/FTI/000466/XII/2020', 1, 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(467, 467, 'ADJ/FTI/000467/XII/2020', 1, 'Patchcord SM DX (2,0mm) ST/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(468, 468, 'ADJ/FTI/000468/XII/2020', 1, 'Patchcord SM DX (2,0mm) ST/UPC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(469, 469, 'ADJ/FTI/000469/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(470, 470, 'ADJ/FTI/000470/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(471, 471, 'ADJ/FTI/000471/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(472, 472, 'ADJ/FTI/000472/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(473, 473, 'ADJ/FTI/000473/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(474, 474, 'ADJ/FTI/000474/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(475, 475, 'ADJ/FTI/000475/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(476, 476, 'ADJ/FTI/000476/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(477, 477, 'ADJ/FTI/000477/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(478, 478, 'ADJ/FTI/000478/XII/2020', 1, 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(479, 479, 'ADJ/FTI/000479/XII/2020', 1, 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(480, 480, 'ADJ/FTI/000480/XII/2020', 1, 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(481, 481, 'ADJ/FTI/000481/XII/2020', 1, 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(482, 482, 'ADJ/FTI/000482/XII/2020', 1, 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(483, 483, 'ADJ/FTI/000483/XII/2020', 1, 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(484, 484, 'ADJ/FTI/000484/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(485, 485, 'ADJ/FTI/000485/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(486, 486, 'ADJ/FTI/000486/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(487, 487, 'ADJ/FTI/000487/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(488, 488, 'ADJ/FTI/000488/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(489, 489, 'ADJ/FTI/000489/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(490, 490, 'ADJ/FTI/000490/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(491, 491, 'ADJ/FTI/000491/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(492, 492, 'ADJ/FTI/000492/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(493, 493, 'ADJ/FTI/000493/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(494, 494, 'ADJ/FTI/000494/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(495, 495, 'ADJ/FTI/000495/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(496, 496, 'ADJ/FTI/000496/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(497, 497, 'ADJ/FTI/000497/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(498, 498, 'ADJ/FTI/000498/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(499, 499, 'ADJ/FTI/000499/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(500, 500, 'ADJ/FTI/000500/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(501, 501, 'ADJ/FTI/000501/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(502, 502, 'ADJ/FTI/000502/XII/2020', 1, 'Patchcord SM DX (3,0mm) SC/UPC-ST/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(503, 503, 'ADJ/FTI/000503/XII/2020', 1, 'Patchcord SM DX 3.mm FC/UPC-SC/UPC 20M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(504, 504, 'ADJ/FTI/000504/XII/2020', 1, 'Patchcord SM DX FC/UPC-LC/UPC  (3,mm) 15M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(505, 505, 'ADJ/FTI/000505/XII/2020', 1, 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 20M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(506, 506, 'ADJ/FTI/000506/XII/2020', 1, 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(507, 507, 'ADJ/FTI/000507/XII/2020', 1, 'Patchcord SM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(508, 508, 'ADJ/FTI/000508/XII/2020', 1, 'Patchcord SM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(509, 509, 'ADJ/FTI/000509/XII/2020', 1, 'Patchcord SM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(510, 510, 'ADJ/FTI/000510/XII/2020', 1, 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(511, 511, 'ADJ/FTI/000511/XII/2020', 1, 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(512, 512, 'ADJ/FTI/000512/XII/2020', 1, 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(513, 513, 'ADJ/FTI/000513/XII/2020', 1, 'Patchcord SM DX SC/APC-SC/APC (2,mm) 10M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(514, 514, 'ADJ/FTI/000514/XII/2020', 1, 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 2M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(515, 515, 'ADJ/FTI/000515/XII/2020', 1, 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(516, 516, 'ADJ/FTI/000516/XII/2020', 1, 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 10M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(517, 517, 'ADJ/FTI/000517/XII/2020', 1, 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 3M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(518, 518, 'ADJ/FTI/000518/XII/2020', 1, 'Patchcord SM DX ST/UPC-SC/UPC (2,mm) 5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(519, 519, 'ADJ/FTI/000519/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(520, 520, 'ADJ/FTI/000520/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(521, 521, 'ADJ/FTI/000521/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(522, 522, 'ADJ/FTI/000522/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49');
INSERT INTO `inventory_movements` (`id`, `inventory_id`, `reference_id`, `type`, `product_name`, `warehouse_name`, `incoming`, `outgoing`, `remaining`, `notes`, `created_at`, `updated_at`) VALUES
(523, 523, 'ADJ/FTI/000523/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(524, 524, 'ADJ/FTI/000524/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(525, 525, 'ADJ/FTI/000525/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(526, 526, 'ADJ/FTI/000526/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(527, 527, 'ADJ/FTI/000527/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(528, 528, 'ADJ/FTI/000528/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(529, 529, 'ADJ/FTI/000529/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(530, 530, 'ADJ/FTI/000530/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(531, 531, 'ADJ/FTI/000531/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(532, 532, 'ADJ/FTI/000532/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(533, 533, 'ADJ/FTI/000533/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(534, 534, 'ADJ/FTI/000534/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(535, 535, 'ADJ/FTI/000535/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(536, 536, 'ADJ/FTI/000536/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(537, 537, 'ADJ/FTI/000537/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(538, 538, 'ADJ/FTI/000538/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(539, 539, 'ADJ/FTI/000539/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(540, 540, 'ADJ/FTI/000540/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(541, 541, 'ADJ/FTI/000541/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(542, 542, 'ADJ/FTI/000542/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(543, 543, 'ADJ/FTI/000543/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 4m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(544, 544, 'ADJ/FTI/000544/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(545, 545, 'ADJ/FTI/000545/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(546, 546, 'ADJ/FTI/000546/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 70m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(547, 547, 'ADJ/FTI/000547/XII/2020', 1, 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(548, 548, 'ADJ/FTI/000548/XII/2020', 1, 'Patchcord SM SX (2,0MM) LC/UPC-SC/UPC 20M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(549, 549, 'ADJ/FTI/000549/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(550, 550, 'ADJ/FTI/000550/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(551, 551, 'ADJ/FTI/000551/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(552, 552, 'ADJ/FTI/000552/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(553, 553, 'ADJ/FTI/000553/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(554, 554, 'ADJ/FTI/000554/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(555, 555, 'ADJ/FTI/000555/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(556, 556, 'ADJ/FTI/000556/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(557, 557, 'ADJ/FTI/000557/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(558, 558, 'ADJ/FTI/000558/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(559, 559, 'ADJ/FTI/000559/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(560, 560, 'ADJ/FTI/000560/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-FC/APC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(561, 561, 'ADJ/FTI/000561/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(562, 562, 'ADJ/FTI/000562/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(563, 563, 'ADJ/FTI/000563/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(564, 564, 'ADJ/FTI/000564/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(565, 565, 'ADJ/FTI/000565/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(566, 566, 'ADJ/FTI/000566/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(567, 567, 'ADJ/FTI/000567/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(568, 568, 'ADJ/FTI/000568/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(569, 569, 'ADJ/FTI/000569/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(570, 570, 'ADJ/FTI/000570/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(571, 571, 'ADJ/FTI/000571/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(572, 572, 'ADJ/FTI/000572/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(573, 573, 'ADJ/FTI/000573/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(574, 574, 'ADJ/FTI/000574/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(575, 575, 'ADJ/FTI/000575/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(576, 576, 'ADJ/FTI/000576/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(577, 577, 'ADJ/FTI/000577/XII/2020', 1, 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(578, 578, 'ADJ/FTI/000578/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(579, 579, 'ADJ/FTI/000579/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(580, 580, 'ADJ/FTI/000580/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(581, 581, 'ADJ/FTI/000581/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 80m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(582, 582, 'ADJ/FTI/000582/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(583, 583, 'ADJ/FTI/000583/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(584, 584, 'ADJ/FTI/000584/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(585, 585, 'ADJ/FTI/000585/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(586, 586, 'ADJ/FTI/000586/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(587, 587, 'ADJ/FTI/000587/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-SC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(588, 588, 'ADJ/FTI/000588/XII/2020', 1, 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(589, 589, 'ADJ/FTI/000589/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(590, 590, 'ADJ/FTI/000590/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(591, 591, 'ADJ/FTI/000591/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(592, 592, 'ADJ/FTI/000592/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(593, 593, 'ADJ/FTI/000593/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(594, 594, 'ADJ/FTI/000594/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 50m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(595, 595, 'ADJ/FTI/000595/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(596, 596, 'ADJ/FTI/000596/XII/2020', 1, 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 70m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(597, 597, 'ADJ/FTI/000597/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(598, 598, 'ADJ/FTI/000598/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(599, 599, 'ADJ/FTI/000599/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(600, 600, 'ADJ/FTI/000600/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(601, 601, 'ADJ/FTI/000601/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(602, 602, 'ADJ/FTI/000602/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 4m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(603, 603, 'ADJ/FTI/000603/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(604, 604, 'ADJ/FTI/000604/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(605, 605, 'ADJ/FTI/000605/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(606, 606, 'ADJ/FTI/000606/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(607, 607, 'ADJ/FTI/000607/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(608, 608, 'ADJ/FTI/000608/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(609, 609, 'ADJ/FTI/000609/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(610, 610, 'ADJ/FTI/000610/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(611, 611, 'ADJ/FTI/000611/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(612, 612, 'ADJ/FTI/000612/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(613, 613, 'ADJ/FTI/000613/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(614, 614, 'ADJ/FTI/000614/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(615, 615, 'ADJ/FTI/000615/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(616, 616, 'ADJ/FTI/000616/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(617, 617, 'ADJ/FTI/000617/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(618, 618, 'ADJ/FTI/000618/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(619, 619, 'ADJ/FTI/000619/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(620, 620, 'ADJ/FTI/000620/XII/2020', 1, 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(621, 621, 'ADJ/FTI/000621/XII/2020', 1, 'Patchcord SM SX 2,mm FC/APC-FC/APC 1m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(622, 622, 'ADJ/FTI/000622/XII/2020', 1, 'Patchcord SM SX 2,mm FC/UPC-LC/UPC 20M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(623, 623, 'ADJ/FTI/000623/XII/2020', 1, 'Patchcord SM SX 2,mm FC/UPC-SC/APC 10m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(624, 624, 'ADJ/FTI/000624/XII/2020', 1, 'Patchcord SM SX 2,mm LC/UPC-LC/UPC 3m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(625, 625, 'ADJ/FTI/000625/XII/2020', 1, 'Patchcord SM SX 2,mm SC/APC-SC/UPC 2m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(626, 626, 'ADJ/FTI/000626/XII/2020', 1, 'Patchcord SM SX 2,mm SC/UPC-LC/UPC 7m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(627, 627, 'ADJ/FTI/000627/XII/2020', 1, 'Patchcord SM SX 2,mm SC/UPC-SC/UPC 1,5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(628, 628, 'ADJ/FTI/000628/XII/2020', 1, 'Patchcord SM SX 2.mm LC/UPC-SC/UPC 30M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(629, 629, 'ADJ/FTI/000629/XII/2020', 1, 'Patchcord SM SX 3,mm SC/APC - SC/UPC 20m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(630, 630, 'ADJ/FTI/000630/XII/2020', 1, 'Patchcord SM SX 3,mm SC/APC - SC/UPC 5m', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(631, 631, 'ADJ/FTI/000631/XII/2020', 1, 'Patchcord SM SX 3.mm FC/UPC-FC/UPC 15M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(632, 632, 'ADJ/FTI/000632/XII/2020', 1, 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 10M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(633, 633, 'ADJ/FTI/000633/XII/2020', 1, 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 15M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(634, 634, 'ADJ/FTI/000634/XII/2020', 1, 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 20M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(635, 635, 'ADJ/FTI/000635/XII/2020', 1, 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 30M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(636, 636, 'ADJ/FTI/000636/XII/2020', 1, 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 40M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(637, 637, 'ADJ/FTI/000637/XII/2020', 1, 'Patchcord SM SX SC/APC-SC/UPC (3,mm) 1M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(638, 638, 'ADJ/FTI/000638/XII/2020', 1, 'Patchcord SM SX SC/UPC-LC/UPC (2,mm) 1,5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(639, 639, 'ADJ/FTI/000639/XII/2020', 1, 'Pedestal Besar isi ODP', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(640, 640, 'ADJ/FTI/000640/XII/2020', 1, 'Pedestal Besar Kosongan ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(641, 641, 'ADJ/FTI/000641/XII/2020', 1, 'Pedestal Kecil Kosongan (Tanpa Kardus)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(642, 642, 'ADJ/FTI/000642/XII/2020', 1, 'Pen-type Visual Fault Locator(20km)  F03', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(643, 643, 'ADJ/FTI/000643/XII/2020', 1, 'PG 5', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(644, 644, 'ADJ/FTI/000644/XII/2020', 1, 'Pigtail cable SM 0.9 mm G652D LSZH WHITE', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(645, 645, 'ADJ/FTI/000645/XII/2020', 1, 'Pigtail cable SM 0.9 mm G652D LSZH yellow ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(646, 646, 'ADJ/FTI/000646/XII/2020', 1, 'Pigtail cable SM 0.9 mm G657A2 LSZH WHITE', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(647, 647, 'ADJ/FTI/000647/XII/2020', 1, 'Pigtail cable SM 0.9 mm G657A2 LSZH yellow ', 'Gudang Utama', '10000.00', '0.00', '10000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(648, 648, 'ADJ/FTI/000648/XII/2020', 1, 'Pigtail MM DX ST/PC (3,mm) 3m (OM2 ROSENBERYER)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(649, 649, 'ADJ/FTI/000649/XII/2020', 1, 'Pigtail MM OM3 (AQUA ) SC/PC 1.5M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(650, 650, 'ADJ/FTI/000650/XII/2020', 1, 'Pigtail MM SX FC/PC (2,0mm) 2m (OM1)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(651, 651, 'ADJ/FTI/000651/XII/2020', 1, 'Pigtail MM SX FC/PC (2,0mm) 3m (OM1)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(652, 652, 'ADJ/FTI/000652/XII/2020', 1, 'Pigtail MM SX LC/PC (2,0mm) 6m (OM1 PVC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(653, 653, 'ADJ/FTI/000653/XII/2020', 1, 'Pigtail MM SX LC/UPC (2,0mm) 27M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(654, 654, 'ADJ/FTI/000654/XII/2020', 1, 'Pigtail MM SX SC/PC (0,9mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(655, 655, 'ADJ/FTI/000655/XII/2020', 1, 'Pigtail MM SX SC/PC (2,mm) 20m (OM1 PVC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(656, 656, 'ADJ/FTI/000656/XII/2020', 1, 'Pigtail MM SX SC/PC (2,mm) 3m (OM1 PVC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(657, 657, 'ADJ/FTI/000657/XII/2020', 1, 'Pigtail MM SX SC/UPC (2,0mm)1,5m (OM1 PVC)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(658, 658, 'ADJ/FTI/000658/XII/2020', 1, 'Pigtail MM SX ST/PC (0,9mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(659, 659, 'ADJ/FTI/000659/XII/2020', 1, 'Pigtail MM SX ST/PC (2,0mm) 1,2m (OM2 LSZH)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(660, 660, 'ADJ/FTI/000660/XII/2020', 1, 'Pigtail SM DX FC/UPC (2,0mm) 1m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(661, 661, 'ADJ/FTI/000661/XII/2020', 1, 'Pigtail SM DX FC/UPC (2,0mm) 2m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(662, 662, 'ADJ/FTI/000662/XII/2020', 1, 'Pigtail SM DX FC/UPC (2,0mm) 3m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(663, 663, 'ADJ/FTI/000663/XII/2020', 1, 'Pigtail SM DX SC/APC (3,0mm) 2m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(664, 664, 'ADJ/FTI/000664/XII/2020', 1, 'Pigtail SM DX SC/APC (3,0mm) 3m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(665, 665, 'ADJ/FTI/000665/XII/2020', 1, 'Pigtail SM DX SC/UPC (2,0mm) 7m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(666, 666, 'ADJ/FTI/000666/XII/2020', 1, 'Pigtail SM DX SC/UPC (2,0mm) 8m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(667, 667, 'ADJ/FTI/000667/XII/2020', 1, 'Pigtail SM DX SC/UPC (3,0mm) 1,5m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(668, 668, 'ADJ/FTI/000668/XII/2020', 1, 'Pigtail SM DX SC/UPC (3,0mm) 2m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(669, 669, 'ADJ/FTI/000669/XII/2020', 1, 'Pigtail SM SX FC/APC (2,0mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(670, 670, 'ADJ/FTI/000670/XII/2020', 1, 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (kuning)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(671, 671, 'ADJ/FTI/000671/XII/2020', 1, 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(672, 672, 'ADJ/FTI/000672/XII/2020', 1, 'Pigtail SM SX FC/UPC (0,9mm) 1m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(673, 673, 'ADJ/FTI/000673/XII/2020', 1, 'Pigtail SM SX FC/UPC (2,0mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(674, 674, 'ADJ/FTI/000674/XII/2020', 1, 'Pigtail SM SX FC/UPC (3,0mm) 5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(675, 675, 'ADJ/FTI/000675/XII/2020', 1, 'Pigtail SM SX LC/UPC (0,9mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(676, 676, 'ADJ/FTI/000676/XII/2020', 1, 'Pigtail SM SX LC/UPC (0,9mm) 1,5m WHITE', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(677, 677, 'ADJ/FTI/000677/XII/2020', 1, 'Pigtail SM SX LC/UPC (0,9mm) 1m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(678, 678, 'ADJ/FTI/000678/XII/2020', 1, 'Pigtail SM SX LC/UPC (2,0mm) 2m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(679, 679, 'ADJ/FTI/000679/XII/2020', 1, 'Pigtail SM SX LC/UPC (3,0mm) 10m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(680, 680, 'ADJ/FTI/000680/XII/2020', 1, 'Pigtail SM SX SC/APC (0,9mm) 1m (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(681, 681, 'ADJ/FTI/000681/XII/2020', 1, 'Pigtail SM SX SC/APC (0,9mm) 2m (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(682, 682, 'ADJ/FTI/000682/XII/2020', 1, 'Pigtail SM SX SC/APC (0,9mm) 2m Kuning', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(683, 683, 'ADJ/FTI/000683/XII/2020', 1, 'Pigtail SM SX SC/APC (0,9mm) 2m Oren', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(684, 684, 'ADJ/FTI/000684/XII/2020', 1, 'Pigtail SM SX SC/APC (0.9 mm) 3m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(685, 685, 'ADJ/FTI/000685/XII/2020', 1, 'Pigtail SM SX SC/APC (2,0mm) 1,5m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(686, 686, 'ADJ/FTI/000686/XII/2020', 1, 'Pigtail SM SX SC/APC (2,0mm) 2m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(687, 687, 'ADJ/FTI/000687/XII/2020', 1, 'Pigtail SM SX SC/APC (2,0mm) 3m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(688, 688, 'ADJ/FTI/000688/XII/2020', 1, 'Pigtail SM SX SC/APC (3,0mm) 1,5m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(689, 689, 'ADJ/FTI/000689/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m  (merah)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(690, 690, 'ADJ/FTI/000690/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (kuning)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(691, 691, 'ADJ/FTI/000691/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (oren)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(692, 692, 'ADJ/FTI/000692/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(693, 693, 'ADJ/FTI/000693/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1m (kuning)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(694, 694, 'ADJ/FTI/000694/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1m (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(695, 695, 'ADJ/FTI/000695/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 1m Oren', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(696, 696, 'ADJ/FTI/000696/XII/2020', 1, 'Pigtail SM SX SC/UPC (0,9mm) 2m (oren)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(697, 697, 'ADJ/FTI/000697/XII/2020', 1, 'Pigtail SM SX SC/UPC (2,0mm) 1,5m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(698, 698, 'ADJ/FTI/000698/XII/2020', 1, 'Pigtail SM SX SC/UPC (2,0mm) 2m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(699, 699, 'ADJ/FTI/000699/XII/2020', 1, 'Pigtail SM SX SC/UPC (3,0mm) 1,5m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(700, 700, 'ADJ/FTI/000700/XII/2020', 1, 'Pigtail SM SX SC/UPC (3,0mm) 2m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(701, 701, 'ADJ/FTI/000701/XII/2020', 1, 'Pigtail SM SX SC/UPC (3,0mm) 3,5m', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(702, 702, 'ADJ/FTI/000702/XII/2020', 1, 'Pigtail SM SX ST/UPC (0,9mm) 1m ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(703, 703, 'ADJ/FTI/000703/XII/2020', 1, 'Plastik Clip 13,5 x 14,5', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(704, 704, 'ADJ/FTI/000704/XII/2020', 1, 'Plastik Clip 17 x 21 mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(705, 705, 'ADJ/FTI/000705/XII/2020', 1, 'Plastik Clip 18 x 18', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(706, 706, 'ADJ/FTI/000706/XII/2020', 1, 'Plastik Clip 20 x 23', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(707, 707, 'ADJ/FTI/000707/XII/2020', 1, 'Plastik Clip 21 x 24 mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(708, 708, 'ADJ/FTI/000708/XII/2020', 1, 'Plastik Clip 40 X 30', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(709, 709, 'ADJ/FTI/000709/XII/2020', 1, 'Plastik Clip 55 X 50', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(710, 710, 'ADJ/FTI/000710/XII/2020', 1, 'Plastik FTI 29,5 x 20', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(711, 711, 'ADJ/FTI/000711/XII/2020', 1, 'PLC Splitter 1:16 , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(712, 712, 'ADJ/FTI/000712/XII/2020', 1, 'PLC Splitter 1:16 W/O connector , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(713, 713, 'ADJ/FTI/000713/XII/2020', 1, 'PLC Splitter 1:2 , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(714, 714, 'ADJ/FTI/000714/XII/2020', 1, 'PLC Splitter 1:2 W/O connector , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(715, 715, 'ADJ/FTI/000715/XII/2020', 1, 'PLC Splitter 1:4  SC/UPC (Tente)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(716, 716, 'ADJ/FTI/000716/XII/2020', 1, 'PLC Splitter 1:4 SC/APC (putih) No brand', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(717, 717, 'ADJ/FTI/000717/XII/2020', 1, 'PLC Splitter 1:4 W/O connector, white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(718, 718, 'ADJ/FTI/000718/XII/2020', 1, 'PLC Splitter 1:4, white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(719, 719, 'ADJ/FTI/000719/XII/2020', 1, 'PLC Splitter 1:8  SC/APC (Kuning)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(720, 720, 'ADJ/FTI/000720/XII/2020', 1, 'PLC Splitter 1:8 SC/UPC (Kuning) Ryutelco)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(721, 721, 'ADJ/FTI/000721/XII/2020', 1, 'PLC Splitter 1:8 SC/UPC (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(722, 722, 'ADJ/FTI/000722/XII/2020', 1, 'PLC Splitter 1:8 SC/UPC (Rainbow)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(723, 723, 'ADJ/FTI/000723/XII/2020', 1, 'PLC Splitter 1:8 W/O connector , white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(724, 724, 'ADJ/FTI/000724/XII/2020', 1, 'PLC Splitter 1:8, white', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(725, 725, 'ADJ/FTI/000725/XII/2020', 1, 'Polish Pad 70/127, seikoh', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(726, 726, 'ADJ/FTI/000726/XII/2020', 1, 'Polish Pad 80/127, seikoh', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(727, 727, 'ADJ/FTI/000727/XII/2020', 1, 'Polishing Film ADSS 0,05 final', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(728, 728, 'ADJ/FTI/000728/XII/2020', 1, 'Polishing Film Machine', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(729, 729, 'ADJ/FTI/000729/XII/2020', 1, 'Polishing Film Mikron D1', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(730, 730, 'ADJ/FTI/000730/XII/2020', 1, 'Polishing Film Mikron D3', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(731, 731, 'ADJ/FTI/000731/XII/2020', 1, 'Polishing Film Mikron D30', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(732, 732, 'ADJ/FTI/000732/XII/2020', 1, 'Polishing Film Mikron D9', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(733, 733, 'ADJ/FTI/000733/XII/2020', 1, 'Polishing Film Mipox D3', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(734, 734, 'ADJ/FTI/000734/XII/2020', 1, 'Polishing Film Mipox D30', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(735, 735, 'ADJ/FTI/000735/XII/2020', 1, 'Polishing Film Mipox D9', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(736, 736, 'ADJ/FTI/000736/XII/2020', 1, 'Polishing Film PC 0,05 final', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(737, 737, 'ADJ/FTI/000737/XII/2020', 1, 'Precon 1 Core SC/APC-SC/APC 100M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(738, 738, 'ADJ/FTI/000738/XII/2020', 1, 'Precon 1 Core SC/APC-SC/APC 120M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(739, 739, 'ADJ/FTI/000739/XII/2020', 1, 'Precon 1 Core SC/APC-SC/APC 200M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(740, 740, 'ADJ/FTI/000740/XII/2020', 1, 'Precon 1 Core SC/APC-SC/APC 50M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(741, 741, 'ADJ/FTI/000741/XII/2020', 1, 'Precon 1 Core SC/APC-SC/APC 75M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(742, 742, 'ADJ/FTI/000742/XII/2020', 1, 'Precon 1 Core SC/APC-SC/UPC 200M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(743, 743, 'ADJ/FTI/000743/XII/2020', 1, 'Precon 1 Core SC/APC-SC/UPC 75M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(744, 744, 'ADJ/FTI/000744/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 100M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(745, 745, 'ADJ/FTI/000745/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 150M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(746, 746, 'ADJ/FTI/000746/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 200M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(747, 747, 'ADJ/FTI/000747/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 250M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(748, 748, 'ADJ/FTI/000748/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 300M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(749, 749, 'ADJ/FTI/000749/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 50M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(750, 750, 'ADJ/FTI/000750/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 75M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(751, 751, 'ADJ/FTI/000751/XII/2020', 1, 'Precon 1 Core SC/UPC-SC/UPC 80M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(752, 752, 'ADJ/FTI/000752/XII/2020', 1, 'Precon 1 Sisi 1 Core SC/UPC Connector Hitam 100M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(753, 753, 'ADJ/FTI/000753/XII/2020', 1, 'Precon 2Core Tanpa Selling SC/UPC-SC/UPC 2M', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(754, 754, 'ADJ/FTI/000754/XII/2020', 1, 'Protector Sleeve 60 mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(755, 755, 'ADJ/FTI/000755/XII/2020', 1, 'Protector sleeve 60mm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(756, 756, 'ADJ/FTI/000756/XII/2020', 1, 'Rack  6U', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(757, 757, 'ADJ/FTI/000757/XII/2020', 1, 'Ring Kotak', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(758, 758, 'ADJ/FTI/000758/XII/2020', 1, 'Roset 2 core ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(759, 759, 'ADJ/FTI/000759/XII/2020', 1, 'Roset 2 core PAZ FIBERSTAR', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(760, 760, 'ADJ/FTI/000760/XII/2020', 1, 'Roset 2 Core Polos (Kosongan)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(761, 761, 'ADJ/FTI/000761/XII/2020', 1, 'Roset 2 Core Polos TELKOM INDONESIA ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(762, 762, 'ADJ/FTI/000762/XII/2020', 1, 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(763, 763, 'ADJ/FTI/000763/XII/2020', 1, 'Roset 4 Core ( abu abu )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(764, 764, 'ADJ/FTI/000764/XII/2020', 1, 'Roset 4 Core (Tanpa Kardus )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(765, 765, 'ADJ/FTI/000765/XII/2020', 1, 'Roset 4 Core Polos', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(766, 766, 'ADJ/FTI/000766/XII/2020', 1, 'Roset 4 Core ZTE (Putih)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(767, 767, 'ADJ/FTI/000767/XII/2020', 1, 'Roset 8 Core Polos', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(768, 768, 'ADJ/FTI/000768/XII/2020', 1, 'Rosette 2Core GOC Kosongan', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(769, 769, 'ADJ/FTI/000769/XII/2020', 1, 'Rotary Cable stripper', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(770, 770, 'ADJ/FTI/000770/XII/2020', 1, 'S Clamp bulat ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(771, 771, 'ADJ/FTI/000771/XII/2020', 1, 'S Clamp Jepit', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(772, 772, 'ADJ/FTI/000772/XII/2020', 1, 'S Clamp Jepit Telkom', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(773, 773, 'ADJ/FTI/000773/XII/2020', 1, 'Scissor (Proskit)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(774, 774, 'ADJ/FTI/000774/XII/2020', 1, 'SFP 10GB', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(775, 775, 'ADJ/FTI/000775/XII/2020', 1, 'Slack Support 80cm', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(776, 776, 'ADJ/FTI/000776/XII/2020', 1, 'SOC LC/APC ( Belum Terkupas )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(777, 777, 'ADJ/FTI/000777/XII/2020', 1, 'SOC LC/UPC ( Belum Terkupas )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(778, 778, 'ADJ/FTI/000778/XII/2020', 1, 'Splice Closure (Dome) 48Core 1In-4Out', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(779, 779, 'ADJ/FTI/000779/XII/2020', 1, 'Splice Clousure 96 Core Dome ( PAZ )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(780, 780, 'ADJ/FTI/000780/XII/2020', 1, 'Splice on connector SC/APC ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(781, 781, 'ADJ/FTI/000781/XII/2020', 1, 'Splice on connector SC/UPC ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(782, 782, 'ADJ/FTI/000782/XII/2020', 1, 'Splitter PLC 1:8 SC/UPC (KUNING)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(783, 783, 'ADJ/FTI/000783/XII/2020', 1, 'Splitter PLC 1:8 Tanpa Connector ( No Brand )', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(784, 784, 'ADJ/FTI/000784/XII/2020', 1, 'Splitter PLC 1:8 W/O Connector (White)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(785, 785, 'ADJ/FTI/000785/XII/2020', 1, 'Stainless Band', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(786, 786, 'ADJ/FTI/000786/XII/2020', 1, 'Stick Rodding', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(787, 787, 'ADJ/FTI/000787/XII/2020', 1, 'Stopping Buckle ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49');
INSERT INTO `inventory_movements` (`id`, `inventory_id`, `reference_id`, `type`, `product_name`, `warehouse_name`, `incoming`, `outgoing`, `remaining`, `notes`, `created_at`, `updated_at`) VALUES
(788, 788, 'ADJ/FTI/000788/XII/2020', 1, 'Stopping Buckle Gigi', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(789, 789, 'ADJ/FTI/000789/XII/2020', 1, 'Streching Film / Wrapping uk. 10', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(790, 790, 'ADJ/FTI/000790/XII/2020', 1, 'Stripper (Proskit)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(791, 791, 'ADJ/FTI/000791/XII/2020', 1, 'Stripper Fis Import', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(792, 792, 'ADJ/FTI/000792/XII/2020', 1, 'Stripper Fis Local', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(793, 793, 'ADJ/FTI/000793/XII/2020', 1, 'Stripping Dropwire (Proskit)', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(794, 794, 'ADJ/FTI/000794/XII/2020', 1, 'Suspensi ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(795, 795, 'ADJ/FTI/000795/XII/2020', 1, 'Suspensi Corong', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(796, 796, 'ADJ/FTI/000796/XII/2020', 1, 'Tangga 4,4m AMG (Hitam)', 'Gudang Utama', '5.00', '0.00', '5.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(797, 797, 'ADJ/FTI/000797/XII/2020', 1, 'Tangga 4,4m AMG (Silver)', 'Gudang Utama', '5.00', '0.00', '5.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(798, 798, 'ADJ/FTI/000798/XII/2020', 1, 'Tangga 4,4m New Power', 'Gudang Utama', '5.00', '0.00', '5.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(799, 799, 'ADJ/FTI/000799/XII/2020', 1, 'Tangga 5,3m AMG', 'Gudang Utama', '5.00', '0.00', '5.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(800, 800, 'ADJ/FTI/000800/XII/2020', 1, 'Teflon Tube 0,9/0,6mm Ivory Colour', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(801, 801, 'ADJ/FTI/000801/XII/2020', 1, 'Testphone Chinoe/Microtest', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(802, 802, 'ADJ/FTI/000802/XII/2020', 1, 'Pen-type Visual Fault Locator AMG', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(803, 803, 'ADJ/FTI/000803/XII/2020', 1, 'Pen-type Visual Fault Locator JW 3105A', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(804, 804, 'ADJ/FTI/000804/XII/2020', 1, 'Winding Machine', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(805, 805, 'ADJ/FTI/000805/XII/2020', 1, 'Wire TRacker/Tone Checker', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(806, 806, 'ADJ/FTI/000806/XII/2020', 1, 'X-Frame 80X90cm 3mm Model Tekuk', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(807, 807, 'ADJ/FTI/000807/XII/2020', 1, 'Young Jin ', 'Gudang Utama', '1000.00', '0.00', '1000.00', 'Stok Default', '2020-12-11 17:20:49', '2020-12-11 17:20:49'),
(808, 808, 'ADJ/FTI/000808/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '12dec20', '2020-12-12 15:12:04', '2020-12-12 15:12:04'),
(809, 808, 'ADJ/FTI/000809/XII/2020', 1, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Utama', '10000.00', '0.00', '20000.00', '12dec20', '2020-12-12 15:27:55', '2020-12-12 15:27:55'),
(810, 485, 'SO/FTI/0001/PT.BTS/XII/2020', 4, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Utama', '0.00', '10.00', '9990.00', NULL, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(811, 809, 'SO/FTI/0001/PT.BTS/XII/2020', 4, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Pengiriman', '10.00', '0.00', '10.00', NULL, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(812, 808, 'SO/FTI/0001/PT.BTS/XII/2020', 4, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Utama', '0.00', '10.00', '19990.00', NULL, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(813, 810, 'SO/FTI/0001/PT.BTS/XII/2020', 4, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Pengiriman', '10.00', '0.00', '10.00', NULL, '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(814, 191, 'SO/FTI/0002/BPT/XII/2020', 4, 'Fiber Fusion Splicer KF4', 'Gudang Utama', '0.00', '1.00', '999.00', NULL, '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(815, 811, 'SO/FTI/0002/BPT/XII/2020', 4, 'Fiber Fusion Splicer KF4', 'Gudang Pengiriman', '1.00', '0.00', '1.00', NULL, '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(816, 811, 'DO/0002/FTI/XII/2020', 5, 'Fiber Fusion Splicer KF4', 'Gudang Pengiriman', '0.00', NULL, '1.00', NULL, '2020-12-12 18:04:26', '2020-12-12 18:04:26'),
(817, 812, 'ADJ/FTI/000810/XII/2020', 1, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Utama', '1000.00', '0.00', '1000.00', '12dec20', '2020-12-12 18:49:01', '2020-12-12 18:49:01'),
(818, 812, 'SO/FTI/0003/BSG/XII/2020', 4, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Utama', '0.00', '100.00', '900.00', NULL, '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(819, 813, 'SO/FTI/0003/BSG/XII/2020', 4, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Pengiriman', '100.00', '0.00', '100.00', NULL, '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(820, 813, 'DO/0003/FTI/XII/2020', 5, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 'Gudang Pengiriman', '0.00', NULL, '100.00', NULL, '2020-12-12 20:03:04', '2020-12-12 20:03:04'),
(821, 191, 'PO/FTI/0001/IOI/XII/2020', 3, 'Fiber Fusion Splicer KF4', 'Gudang Utama', '1.00', '0.00', '1000.00', NULL, '2020-12-12 21:14:29', '2020-12-12 21:14:29'),
(822, 332, 'PO/FTI/0002/PAS/XII/2020', 3, 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 'Gudang Utama', '10.00', '0.00', '1010.00', NULL, '2020-12-13 08:37:33', '2020-12-13 08:37:33'),
(823, 713, 'SO/FTI/0004/NURDINJFO/XII/2020', 4, 'PLC Splitter 1:2 , white', 'Gudang Utama', '0.00', '40.00', '960.00', NULL, '2020-12-13 08:44:16', '2020-12-13 08:44:16'),
(824, 814, 'SO/FTI/0004/NURDINJFO/XII/2020', 4, 'PLC Splitter 1:2 , white', 'Gudang Pengiriman', '40.00', '0.00', '40.00', NULL, '2020-12-13 08:44:16', '2020-12-13 08:44:16'),
(825, 815, 'ADJ/FTI/000811/XII/2020', 1, 'Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '13dec20', '2020-12-13 08:53:59', '2020-12-13 08:53:59'),
(826, 816, 'ADJ/FTI/000812/XII/2020', 1, 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '13dec20', '2020-12-13 08:57:24', '2020-12-13 08:57:24'),
(827, 817, 'ADJ/FTI/000813/XII/2020', 1, 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '13dec20', '2020-12-13 09:02:25', '2020-12-13 09:02:25'),
(828, 818, 'ADJ/FTI/000814/XII/2020', 1, 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '13dec20', '2020-12-13 10:04:15', '2020-12-13 10:04:15'),
(829, 819, 'ADJ/FTI/000815/XII/2020', 1, 'Precon 1 Core 3 Selling SC/APC-SC/UPC 50M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '13DEC20', '2020-12-13 10:08:48', '2020-12-13 10:08:48'),
(830, 820, 'ADJ/FTI/000816/XII/2020', 1, 'Precon 1 Core 3 Selling SC/APC-SC/UPC 75M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '15dec2020', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(831, 821, 'ADJ/FTI/000817/XII/2020', 1, 'Precon 1 Core 3 Selling SC/APC-SC/UPC 100M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '15dec2020', '2020-12-15 11:31:17', '2020-12-15 11:31:17'),
(832, 822, 'ADJ/FTI/000818/XII/2020', 1, 'Precon 1 Core 3 Selling SC/APC-SC/UPC 150M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '15dec2020', '2020-12-15 11:34:18', '2020-12-15 11:34:18'),
(833, 823, 'ADJ/FTI/000819/XII/2020', 1, 'Precon 1 Core 3 Selling SC/APC-SC/UPC 200M', 'Gudang Utama', '10000.00', '0.00', '10000.00', '15dec2020', '2020-12-15 11:37:41', '2020-12-15 11:37:41'),
(834, 824, 'ADJ/FTI/000820/XII/2020', 1, 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m', 'Gudang Utama', '10000.00', '0.00', '10000.00', '15dec20', '2020-12-15 12:19:09', '2020-12-15 12:19:09'),
(835, 760, 'ADJ/FTI/000821/XII/2020', 1, 'Roset 2 Core Polos (Kosongan)', 'Gudang Utama', '99000.00', '0.00', '100000.00', '15dec20', '2020-12-15 12:38:32', '2020-12-15 12:38:32'),
(836, 10, 'ADJ/FTI/000001/I/2021', 1, 'ABS Splitter 1:64 W/O connector', 'Gudang Utama', '0.00', '9798.00', '202.00', 'penyesuaian', '2021-01-05 10:54:38', '2021-01-05 10:54:38'),
(837, 10, 'ADJ/FTI/000002/I/2021', 1, 'ABS Splitter 1:64 W/O connector', 'Gudang Utama', '0.00', '9798.00', '-9596.00', 'penyesuaian', '2021-01-05 10:54:43', '2021-01-05 10:54:43'),
(838, 10, 'ADJ/FTI/000003/I/2021', 1, 'ABS Splitter 1:64 W/O connector', 'Gudang Utama', '9798.00', '0.00', '202.00', 'penyesuaian', '2021-01-05 10:55:52', '2021-01-05 10:55:52'),
(839, 9, 'ADJ/FTI/000004/I/2021', 1, 'ABS Splitter 1:64', 'Gudang Utama', '0.00', '10000.00', '0.00', 'penyesuaian', '2021-01-05 10:57:34', '2021-01-05 10:57:34'),
(840, 18, 'ADJ/FTI/000005/I/2021', 1, 'Abs Splitter 2:32 SC/APC ( No Brand )', 'Gudang Utama', '0.00', '10000.00', '0.00', 'penyesuaian', '2021-01-05 10:58:46', '2021-01-05 10:58:46'),
(841, 814, 'DO/0004/FTI/XII/2020', 5, 'PLC Splitter 1:2 , white', 'Gudang Pengiriman', '0.00', NULL, '40.00', NULL, '2021-01-05 11:00:23', '2021-01-05 11:00:23'),
(842, 809, 'DO/0001/FTI/XII/2020', 5, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 'Gudang Pengiriman', '0.00', NULL, '10.00', NULL, '2021-01-05 11:00:44', '2021-01-05 11:00:44'),
(843, 810, 'DO/0001/FTI/XII/2020', 5, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 'Gudang Pengiriman', '0.00', NULL, '10.00', NULL, '2021-01-05 11:00:44', '2021-01-05 11:00:44');

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
(1, 'Customer GREENET Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/4059e04b-d10d-4e24-b0dc-d71fe8afbc1d', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:08:50', '2020-12-12 14:08:50'),
(2, 'Customer EVI - PUTRA JAYA Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/51a3c1b2-bdd9-45b3-b7c8-a5553cb40100', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:09:12', '2020-12-12 14:09:12'),
(3, 'Customer Agus - PT AKM Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/5ca6b7cd-c87b-4805-a395-0a44a2dcd2fe', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:09:28', '2020-12-12 14:09:28'),
(4, 'Customer CV KABELINDO SEJAHTERA Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/621538da-23fd-4098-97cd-d56fad695246', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:09:45', '2020-12-12 14:09:45'),
(5, 'Customer ADIT -  PT BINTANG Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/fe787890-557e-41d4-b80d-6365acb8991e', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:10:03', '2020-12-12 14:10:03'),
(6, 'Customer TRIO - JURAGAN FIBER OPTIK Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/7e569fac-69c7-48c1-a851-b4d914943724', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:10:39', '2020-12-12 14:10:39'),
(7, 'Customer HENGKI - TNT Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/a3895f2e-39c2-4111-9892-c390a0dc87b6', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:11:02', '2020-12-12 14:11:02'),
(8, 'Customer CASMID - BOGOR Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/aa0021af-a3fa-4270-9b86-85cd58ea20ca', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:11:13', '2020-12-12 14:11:13'),
(9, 'Customer LUTFI AZIZ Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/af98b8e1-9760-4707-a9b2-67d36db49a03', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:11:40', '2020-12-12 14:11:40'),
(10, 'Customer BAYU Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/c1508758-40e4-49ef-bb41-fe502aeab095', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:11:51', '2020-12-12 14:11:51'),
(11, 'Customer BERTOS Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/d11fb3be-9eb0-4872-9e5a-f2f7c063a884', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:12:10', '2020-12-12 14:12:10'),
(12, 'Customer NENENG - JAKARTA Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/dbec913e-2162-4536-8c2b-d27fe0d78c35', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:15:24', '2020-12-12 14:15:24'),
(13, 'Customer NENENG-JAKARTA Berhasil Disimpan', 'http://fibertekno.iteos.tech/apps/customers/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:17:01', '2020-12-12 14:17:01'),
(14, 'Customer EDHI - PT DITECH Berhasil Disimpan', 'http://fibertekno.iteos.tech/apps/customers/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:22:01', '2020-12-12 14:22:01'),
(15, 'Customer EDHI - PT. DITECH Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/d24ee76c-9f4d-4db6-bb93-187f38e7fe82', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:22:18', '2020-12-12 14:22:18'),
(16, 'Customer EDHI - PT DITECH - NP Berhasil Diubah', 'http://fibertekno.iteos.tech/apps/customers/update/75d7773f-d71e-4945-afcf-b4fa6c8e5768', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:22:43', '2020-12-12 14:22:43'),
(17, 'Customer PT Abhyudaya Sukses Prima - P Berhasil Disimpan', 'http://fibertekno.iteos.tech/apps/customers/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:26:53', '2020-12-12 14:26:53'),
(18, 'Customer PT Abhyudaya Sukses Prima Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/f6def93c-b969-425c-a5d2-f3986914ed1f', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:27:07', '2020-12-12 14:27:07'),
(19, 'Customer PT Trava Zelenaya Netta Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/fbe8cff6-ec7d-4a0d-a69c-450b6ab10739', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:28:57', '2020-12-12 14:28:57'),
(20, 'Customer PT Trava Zelenaya Netta - P Berhasil Disimpan', 'http://fibertekno.iteos.tech/apps/customers/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 14:36:32', '2020-12-12 14:36:32'),
(21, 'Produk Young Jin Berhasil Diubah', 'http://fibertekno.iteos.tech/apps/products/update/0c60b541-07e9-4c8c-8487-facf941cefaa', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:01:19', '2020-12-12 15:01:19'),
(22, 'Produk Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:03:02', '2020-12-12 15:03:02'),
(23, 'Hak Akses Admin Sales-Invoice berhasil diubah', 'http://fibertekno.iteos.tech/apps/users/roles/update/12', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 15:05:54', '2020-12-12 15:05:54'),
(24, 'User adminsales2 Berhasil diubah', 'http://fibertekno.iteos.tech/apps/users/update/f68f2a18-623f-4c1a-bfde-7f029c603a17', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 15:06:25', '2020-12-12 15:06:25'),
(25, 'Stok Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/808', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:12:04', '2020-12-12 15:12:04'),
(26, 'Produk Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M Berhasil Diubah', 'http://fibertekno.iteos.tech/apps/products/update/56c58552-af94-41c6-ab6b-228e03b57e6e', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:19:12', '2020-12-12 15:19:12'),
(27, 'Stok Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/808', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:27:55', '2020-12-12 15:27:55'),
(28, 'Sales Order SO/FTI/0001/PT.BTS/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:35:25', '2020-12-12 15:35:25'),
(29, 'Sales Order SO/FTI/0001/PT.BTS/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/d5652148-9163-4a06-8e72-22c99473321a', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:35:45', '2020-12-12 15:35:45'),
(30, 'Delivery Order DO/0001/FTI/XII/2020 Sedang Diproses', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:37:55', '2020-12-12 15:37:55'),
(31, 'Invoice  Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/invoices/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 15:39:12', '2020-12-12 15:39:12'),
(32, 'Sales Order SO/FTI/0002/BPT/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 17:58:29', '2020-12-12 17:58:29'),
(33, 'Sales Order SO/FTI/0002/BPT/XII/2020 Berhasil Diubah Dengan Catatan  ', 'http://fibertekno.iteos.tech/apps/sales/orders/update/3e15aaef-40c8-42f9-92f6-8b0fa7ab5489', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:00:20', '2020-12-12 18:00:20'),
(34, 'Sales Order SO/FTI/0002/BPT/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/3e15aaef-40c8-42f9-92f6-8b0fa7ab5489', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:01:06', '2020-12-12 18:01:06'),
(35, 'Delivery Order DO/0002/FTI/XII/2020 Sedang Diproses', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:01:31', '2020-12-12 18:01:31'),
(36, 'Invoice  Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/invoices/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:02:16', '2020-12-12 18:02:16'),
(37, 'Delivery Order SO/FTI/0002/BPT/XII/2020 Berhasil Dikirimkan', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/delivered/c731751d-5e2b-47ec-89da-29da0a9f8833', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:04:26', '2020-12-12 18:04:26'),
(38, 'Produk Splitter modular plc 1x16 sc apc 2mm in/out 0,75m berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:47:44', '2020-12-12 18:47:44'),
(39, 'Stok Splitter modular plc 1x16 sc apc 2mm in/out 0,75m Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/812', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:49:01', '2020-12-12 18:49:01'),
(40, 'Customer PT BENTALA SELARAS GLOBALINDO Berhasil Dihapus', 'http://fibertekno.iteos.tech/apps/customers/delete/682c7cf6-edbe-4f94-9c26-aeae4ef417f3', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 18:52:28', '2020-12-12 18:52:28'),
(41, 'Sales Order SO/FTI/0003/BSG/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 19:43:36', '2020-12-12 19:43:36'),
(42, 'Sales Order SO/FTI/0003/BSG/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/7d08dcee-5722-41f1-9f18-17c18f620d05', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 19:44:06', '2020-12-12 19:44:06'),
(43, 'Delivery Order DO/0003/FTI/XII/2020 Sedang Diproses', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 19:44:42', '2020-12-12 19:44:42'),
(44, 'Invoice  Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/invoices/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 19:45:03', '2020-12-12 19:45:03'),
(45, 'Delivery Order SO/FTI/0003/BSG/XII/2020 Berhasil Dikirimkan', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/delivered/e61a8cf3-21a6-49e9-8e06-357064d98578', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 20:03:04', '2020-12-12 20:03:04'),
(46, 'Sales Order SO/FTI/0004/NURDINJFO/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 20:29:02', '2020-12-12 20:29:02'),
(47, 'Sales Order SO/FTI/0004/NURDINJFO/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/79c3ad22-898c-42b3-8797-0da5fd300f28', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-12 20:29:26', '2020-12-12 20:29:26'),
(48, 'Jasa Pengiriman DIAMBIL OLEH CUSTOMER Berhasil Disimpan', 'http://fibertekno.iteos.tech/apps/settings/delivery-services/create', 'POST', '192.168.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 20:33:20', '2020-12-12 20:33:20'),
(49, 'User Dina Berhasil diubah', 'http://fibertekno.iteos.tech/apps/users/update/cb512697-44d9-4683-9bae-0a8e28a3252b', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 21:02:44', '2020-12-12 21:02:44'),
(50, 'Pengajuan PR/FTI/0001/IOI/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/purchase/request/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 21:10:09', '2020-12-12 21:10:09'),
(51, 'Pengajuan PO/FTI/0001/IOI/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/purchase/request/approve/f7584174-3901-4262-b417-650a9eddd243', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 21:10:31', '2020-12-12 21:10:31'),
(52, 'Pembelian PO/FTI/0001/IOI/XII/2020 Berhasil Diterima', 'http://fibertekno.iteos.tech/apps/inventories/purchase-receipt/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 21:14:29', '2020-12-12 21:14:29'),
(53, 'Pembayaran UntukINV/AP/0001/IOI/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/purchase-receipt/create', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-12 21:30:43', '2020-12-12 21:30:43'),
(54, 'Pengajuan PR/FTI/0002/PAS/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/purchase/request/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-13 08:36:05', '2020-12-13 08:36:05'),
(55, 'Pengajuan PO/FTI/0002/PAS/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/purchase/request/approve/cf6613b1-5a2f-4ffa-a84b-988a9f9d0d25', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-13 08:36:22', '2020-12-13 08:36:22'),
(56, 'Pembelian PO/FTI/0002/PAS/XII/2020 Berhasil Diterima', 'http://fibertekno.iteos.tech/apps/inventories/purchase-receipt/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-13 08:37:33', '2020-12-13 08:37:33'),
(57, 'Pembayaran UntukINV/AP/0002/PAS/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/purchase-receipt/create', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-13 08:38:21', '2020-12-13 08:38:21'),
(58, 'Delivery Order DO/0004/FTI/XII/2020 Sedang Diproses', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:44:17', '2020-12-13 08:44:17'),
(59, 'Invoice  Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/finance/invoices/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:44:53', '2020-12-13 08:44:53'),
(60, 'Produk Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:52:03', '2020-12-13 08:52:03'),
(61, 'Stok Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/815', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:53:59', '2020-12-13 08:53:59'),
(62, 'Produk Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:55:55', '2020-12-13 08:55:55'),
(63, 'Stok Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/816', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:57:24', '2020-12-13 08:57:24'),
(64, 'Produk Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 08:59:02', '2020-12-13 08:59:02'),
(65, 'Stok Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/817', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 09:02:25', '2020-12-13 09:02:25'),
(66, 'Produk Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 10:03:33', '2020-12-13 10:03:33'),
(67, 'Stok Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/818', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 10:04:15', '2020-12-13 10:04:15'),
(68, 'Produk Precon 1 Core 3 Selling SC/APC-SC/UPC 50M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 10:07:56', '2020-12-13 10:07:56'),
(69, 'Stok Precon 1 Core 3 Selling SC/APC-SC/UPC 50M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/819', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-13 10:08:48', '2020-12-13 10:08:48'),
(70, 'Produk Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M Berhasil Diubah', 'http://fibertekno.iteos.tech/apps/products/update/ebecb56a-5c1b-4693-a95b-192709642365', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-14 10:16:31', '2020-12-14 10:16:31'),
(71, 'Sales Order SO/FTI/0005/LIYA - OMAH NETWORK/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-14 11:26:50', '2020-12-14 11:26:50'),
(72, 'Sales Order SO/FTI/0005/LIYA - OMAH NETWORK/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/b4fd4318-b2c6-4749-a62c-2b7acb2d228a', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-14 11:27:05', '2020-12-14 11:27:05'),
(73, 'Produk Precon 1 Core 3 Selling SC/APC-SC/UPC 75M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:27:28', '2020-12-15 11:27:28'),
(74, 'Stok Precon 1 Core 3 Selling SC/APC-SC/UPC 75M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/820', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:29:03', '2020-12-15 11:29:03'),
(75, 'Produk Precon 1 Core 3 Selling SC/APC-SC/UPC 100M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:30:16', '2020-12-15 11:30:16'),
(76, 'Stok Precon 1 Core 3 Selling SC/APC-SC/UPC 100M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/821', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:31:17', '2020-12-15 11:31:17'),
(77, 'Produk Precon 1 Core 3 Selling SC/APC-SC/UPC 150M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:33:07', '2020-12-15 11:33:07'),
(78, 'Stok Precon 1 Core 3 Selling SC/APC-SC/UPC 150M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/822', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:34:18', '2020-12-15 11:34:18'),
(79, 'Produk Precon 1 Core 3 Selling SC/APC-SC/UPC 200M berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:35:43', '2020-12-15 11:35:43'),
(80, 'Stok Precon 1 Core 3 Selling SC/APC-SC/UPC 200M Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/823', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:37:41', '2020-12-15 11:37:41'),
(81, 'Sales Order SO/FTI/0006/SARAH/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(82, 'Sales Order SO/FTI/0006/SARAH/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/78b4e104-9580-40a5-96aa-1816684ff362', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'c7e50632-3efc-4cff-99fd-2a39dee275b2', '2020-12-15 11:42:45', '2020-12-15 11:42:45'),
(83, 'Sales Order SO/FTI/0007/LIDWINA/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 11:45:30', '2020-12-15 11:45:30'),
(84, 'Sales Order SO/FTI/0007/LIDWINA/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/93648602-dde4-4076-b618-a61b19b9c325', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 11:47:36', '2020-12-15 11:47:36'),
(85, 'Produk Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m berhasil disimpan', 'http://fibertekno.iteos.tech/apps/products/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:10:52', '2020-12-15 12:10:52'),
(86, 'Stok Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/824', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:19:09', '2020-12-15 12:19:09'),
(87, 'Sales Order SO/FTI/0008/FATYA/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:20:59', '2020-12-15 12:20:59'),
(88, 'Sales Order SO/FTI/0008/FATYA/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/91e6d049-f81d-4c15-97e3-60c136faf110', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:21:09', '2020-12-15 12:21:09'),
(89, 'Sales Order SO/FTI/0009/MMC/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:24:31', '2020-12-15 12:24:31'),
(90, 'Sales Order SO/FTI/0009/MMC/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/d9c2fd4f-1cc4-4042-bacf-0ee36bb37b6b', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:24:41', '2020-12-15 12:24:41'),
(91, 'Sales Order SO/FTI/0010/DEDIBOGOR/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:29:21', '2020-12-15 12:29:21'),
(92, 'Sales Order SO/FTI/0010/DEDIBOGOR/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/ffe3963d-251a-4df1-9e5d-c4c28585fe10', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:29:28', '2020-12-15 12:29:28'),
(93, 'Stok Roset 2 Core Polos (Kosongan) Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/760', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-15 12:38:32', '2020-12-15 12:38:32'),
(94, 'Sales Order SO/FTI/0011/BOY/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 14:54:15', '2020-12-16 14:54:15'),
(95, 'Sales Order SO/FTI/0011/BOY/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/868c6625-6cce-4cc3-a306-8b11a803eea4', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 14:54:29', '2020-12-16 14:54:29'),
(96, 'Sales Order SO/FTI/0012/YAYAN/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:12:44', '2020-12-16 15:12:44'),
(97, 'Sales Order SO/FTI/0012/YAYAN/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/2edae25b-c95a-49ab-a443-735d55cc5c0b', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:12:53', '2020-12-16 15:12:53'),
(98, 'Sales Order SO/FTI/0013/MUAMMAR/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:19:05', '2020-12-16 15:19:05'),
(99, 'Sales Order SO/FTI/0013/MUAMMAR/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/f55beeb1-f55a-4fc3-9913-82b3672ca66a', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:19:11', '2020-12-16 15:19:11'),
(100, 'Sales Order SO/FTI/0014/MUAMMAR/XII/2020 Berhasil Dibuat', 'http://fibertekno.iteos.tech/apps/sales/orders/store', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:33:16', '2020-12-16 15:33:16'),
(101, 'Sales Order SO/FTI/0014/MUAMMAR/XII/2020 Berhasil Diproses', 'http://fibertekno.iteos.tech/apps/sales/orders/approve/6d7159d6-a773-4a1e-85d7-9ea9907c10d0', 'POST', '192.168.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'f68f2a18-623f-4c1a-bfde-7f029c603a17', '2020-12-16 15:33:25', '2020-12-16 15:33:25'),
(102, 'Stok ABS Splitter 1:64 W/O connector Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/10', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 10:54:38', '2021-01-05 10:54:38'),
(103, 'Stok ABS Splitter 1:64 W/O connector Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/10', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 10:54:43', '2021-01-05 10:54:43'),
(104, 'Stok ABS Splitter 1:64 W/O connector Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/10', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 10:55:52', '2021-01-05 10:55:52'),
(105, 'Stok ABS Splitter 1:64 Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/9', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 10:57:34', '2021-01-05 10:57:34'),
(106, 'Stok Abs Splitter 2:32 SC/APC ( No Brand ) Berhasil Disesuaikan', 'http://fibertekno.iteos.tech/apps/inventory/adjustment/store/18', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 10:58:46', '2021-01-05 10:58:46'),
(107, 'Delivery Order SO/FTI/0004/NURDINJFO/XII/2020 Berhasil Dikirimkan', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/delivered/bbbc0277-364a-4d31-9cf4-0a52727c109c', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 11:00:23', '2021-01-05 11:00:23'),
(108, 'Delivery Order SO/FTI/0001/PT.BTS/XII/2020 Berhasil Dikirimkan', 'http://fibertekno.iteos.tech/apps/inventories/delivery-order/delivered/b8e4f910-ba82-4616-9c55-de853c9dd123', 'POST', '192.168.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434', '2021-01-05 11:00:44', '2021-01-05 11:00:44');

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
(81, '2020_01_13_041442_create_payments_table', 41),
(82, '2020_01_18_103842_create_payment_items_table', 41),
(84, '2020_09_22_041722_create_payment_cicilans_table', 42),
(85, '2020_11_09_141358_create_models_payment_installments_table', 42),
(90, '2019_09_07_212548_create_product_boms_table', 43),
(91, '2019_09_07_211754_create_inventory_movements_table', 44);

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
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'iteos\\Models\\User', '24d21373-b462-4888-8d27-d365c33fbf6a'),
(1, 'iteos\\Models\\User', '45e3cf2e-1b27-43ff-b3e8-32d3695b6434'),
(1, 'iteos\\Models\\User', '589f13c5-f185-4bb2-95d8-c62b12c8271d'),
(1, 'iteos\\Models\\User', '820cbe25-baf5-4d2b-b877-9ce7fdffdc21'),
(1, 'iteos\\Models\\User', 'bb536994-ada3-4caa-b97b-e412dc2cc882'),
(1, 'iteos\\Models\\User', 'c7e50632-3efc-4cff-99fd-2a39dee275b2'),
(1, 'iteos\\Models\\User', 'eaeed9cc-a8a7-4843-84ca-67936aa1f889'),
(4, 'iteos\\Models\\User', '74718047-dc5d-4f47-87fc-8db9e4fdb527'),
(5, 'iteos\\Models\\User', 'cb512697-44d9-4683-9bae-0a8e28a3252b'),
(7, 'iteos\\Models\\User', 'a7acf627-9108-44c0-a028-2d9bf7829108'),
(8, 'iteos\\Models\\User', '071ea324-a8d2-4f79-8f8a-23c90bc191ff'),
(11, 'iteos\\Models\\User', '25b76385-8f8d-4422-a62e-21c671bfcaec'),
(12, 'iteos\\Models\\User', '994a52f5-285e-4401-95b2-166cc353bb65'),
(12, 'iteos\\Models\\User', 'f68f2a18-623f-4c1a-bfde-7f029c603a17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sysadmin@local.com', '$2y$10$UmeGPdwccixnCl4pwOAA0ep.Mt3yEX5zi94hR/KQRSaioyc7nmcsm', '2020-10-18 14:29:50');

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
  `total_terms` int(10) DEFAULT NULL,
  `sales_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(50,2) DEFAULT NULL,
  `amount` decimal(50,2) NOT NULL,
  `tax_total` decimal(50,2) DEFAULT NULL,
  `delivery_cost` decimal(50,2) NOT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3da32f6e-494f-4b61-b010-7ccc0e006fb3',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_received` date DEFAULT NULL,
  `payment_made` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cicilan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `reference_no`, `type_id`, `contact_id`, `terms_no`, `total_terms`, `sales_order`, `purchase_order`, `warehouse_ref`, `subtotal`, `amount`, `tax_total`, `delivery_cost`, `status_id`, `created_by`, `release_by`, `payment_received`, `payment_made`, `created_at`, `updated_at`, `id_cicilan`) VALUES
(1, 'INV/AR/P/FTI/0001/PT.BTS/XII/2020', 1, '1c527872-628d-43aa-a61e-b02f74ee1154', NULL, NULL, 'SO/FTI/0001/PT.BTS/XII/2020', NULL, 'DO/0001/FTI/XII/2020', '576000.00', '633600.00', '57600.00', '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'adminsales2', NULL, NULL, NULL, '2020-12-12 15:39:12', '2020-12-12 15:39:12', NULL),
(2, 'INV/AR/P/FTI/0002/BPT/XII/2020', 1, '8798971f-ebde-4e9f-bb0b-4fe44b3303e3', NULL, NULL, 'SO/FTI/0002/BPT/XII/2020', NULL, 'DO/0002/FTI/XII/2020', '24650000.00', '27115000.00', '2465000.00', '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'adminsales2', NULL, NULL, NULL, '2020-12-12 18:02:16', '2020-12-12 18:02:16', NULL),
(3, 'INV/AR/P/FTI/0003/BSG/XII/2020', 1, 'c585e4e8-4f74-4cc9-957f-3ca54d98a563', NULL, NULL, 'SO/FTI/0003/BSG/XII/2020', NULL, 'DO/0003/FTI/XII/2020', '48500000.00', '53350000.00', '4850000.00', '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'adminsales2', NULL, NULL, NULL, '2020-12-12 19:45:03', '2020-12-12 19:45:03', NULL),
(4, 'INV/AP/0001/IOI/XII/2020', 2, 'c840219d-c54c-4da2-b6d7-cd2e99a328fe', NULL, NULL, NULL, 'PO/FTI/0001/IOI/XII/2020', 'RP/0001/FTI/XII/2020', '20700000.00', '22770000.00', '2070000.00', '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'Mirza Rizaldy', NULL, NULL, NULL, '2020-12-12 21:30:43', '2020-12-12 21:30:43', NULL),
(5, 'INV/AP/0002/PAS/XII/2020', 2, '79acefdd-92bb-4079-99c3-ba9654250d56', NULL, NULL, NULL, 'PO/FTI/0002/PAS/XII/2020', 'RP/0002/FTI/XII/2020', '4250000.00', '4675000.00', '425000.00', '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'Mirza Rizaldy', NULL, NULL, NULL, '2020-12-13 08:38:21', '2020-12-13 08:38:21', NULL),
(6, 'INV/AR/FTI/0004/NURDINJFO/XII/2020', 1, '2f205bbc-4b5d-4310-bc3e-7843d0fc2572', NULL, NULL, 'SO/FTI/0004/NURDINJFO/XII/2020', NULL, 'DO/0004/FTI/XII/2020', '1920000.00', '1920000.00', NULL, '0.00', '3da32f6e-494f-4b61-b010-7ccc0e006fb3', 'adminsales2', NULL, NULL, NULL, '2020-12-13 08:44:53', '2020-12-13 08:44:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_cicilans`
--

CREATE TABLE `payment_cicilans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cicilan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billed` decimal(50,2) NOT NULL,
  `payment` decimal(50,2) NOT NULL,
  `tax_paid` decimal(50,2) DEFAULT NULL,
  `remaining` decimal(50,2) NOT NULL,
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

--
-- Dumping data for table `payment_items`
--

INSERT INTO `payment_items` (`id`, `payment_id`, `product_name`, `uom_id`, `quantity`, `subtotal`, `tax_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 1, '10.00', '210000.00', NULL, '2020-12-12 15:39:12', '2020-12-12 15:39:12'),
(2, 1, 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 1, '10.00', '366000.00', NULL, '2020-12-12 15:39:12', '2020-12-12 15:39:12'),
(3, 2, 'Fiber Fusion Splicer KF4', 1, '1.00', '24650000.00', NULL, '2020-12-12 18:02:16', '2020-12-12 18:02:16'),
(4, 3, 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 1, '100.00', '48500000.00', NULL, '2020-12-12 19:45:03', '2020-12-12 19:45:03'),
(5, 4, 'Fiber Fusion Splicer KF4', 1, '1.00', '20700000.00', '2070000.00', '2020-12-12 21:30:43', '2020-12-12 21:30:43'),
(6, 5, 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, '10.00', '4250000.00', '425000.00', '2020-12-13 08:38:21', '2020-12-13 08:38:21'),
(7, 6, 'PLC Splitter 1:2 , white', 1, '40.00', '1920000.00', NULL, '2020-12-13 08:44:53', '2020-12-13 08:44:53');

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
  `base_price` decimal(50,2) DEFAULT NULL,
  `sale_price` decimal(50,2) DEFAULT NULL,
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
('01966044-8fd0-49e0-9354-1e0b8616591f', 'FTI00691', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (kuning)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('020de15a-b2fe-4e7e-9bd3-d9c6f77f03ea', 'FTI00488', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('02995664-b642-4f14-9cc5-b4ca22cff563', 'FTI00738', 'Precon 1 Core SC/APC-SC/APC 100M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('037a6937-94e8-4bcb-a715-17faa184581b', 'FTI00524', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0497a34d-138a-43ea-8efc-4dad2b77120d', 'FTI00440', 'Patchcord SM DX (2,0mm) SC/APC-SC/APC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('04d12107-3e94-44ec-8059-2b577eae843c', 'FTI00779', 'Splice Closure (Dome) 48Core 1In-4Out', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '220000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('05dda492-1f02-4708-a9b5-86535cb58b1d', 'FTI00675', 'Pigtail SM SX FC/UPC (3,0mm) 5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('05e0a851-c660-43de-ab03-8d23c5fd1485', 'FTI00652', 'Pigtail MM SX FC/PC (2,0mm) 3m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('06de61c9-219f-4f09-b1f1-b9b0cf936594', 'FTI00454', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '88000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('06e65567-8dbd-4d11-a22e-009de1c430d1', 'FTI00562', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('08e52187-b383-469e-805d-45d7a96664e6', 'FTI00660', 'Pigtail MM SX ST/PC (2,0mm) 1,2m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0918b468-c972-4de2-8fec-629505cacd2e', 'FTI00486', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('096fa2e0-079e-4aac-9466-62ad373311c9', 'FTI00659', 'Pigtail MM SX ST/PC (0,9mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'FTI00714', 'PLC Splitter 1:2 , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '40000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0a97c76c-59a0-456d-8c78-9eb482cc3932', 'FTI00749', 'Precon 1 Core SC/UPC-SC/UPC 300M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '226000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0b6a929a-c547-4272-bfac-de5fe228809e', 'FTI00654', 'Pigtail MM SX LC/UPC (2,0mm) 27M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '76000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0bb2eb56-298c-48b4-ad5f-654f1fd16303', 'FTI00584', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0bbcfa85-35a7-49a8-adcf-d871ef6f7502', 'FTI00636', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 30M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0c60b541-07e9-4c8c-8487-facf941cefaa', 'FTI00808', 'Young Jin', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3250000.00', '3250000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'SYSTEM', 'adminsales2', '2020-12-11 16:35:56', '2020-12-12 15:01:19'),
('0c8f8e6a-5ed6-4813-ac25-1c76a48a39a3', 'FTI00579', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0d4415fb-64fa-44c4-9853-91628a75a165', 'FTI00733', 'Polishing Film Mikron D9', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0da8343b-1b64-4ec3-b712-f295b0736934', 'FTI00600', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('0e2cf492-348d-48cd-aa12-27f0f73eb22a', 'FTI00506', 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 20M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('11cd63ff-f3bf-4548-a138-d2df2d4f9b91', 'FTI00729', 'Polishing Film Machine', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('11e3349f-463f-44cf-b0f9-4c4bdc3b01ea', 'FTI00632', 'Patchcord SM SX 3.mm FC/UPC-FC/UPC 15M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1384e285-01e5-409d-ab47-11eafca2dd3d', 'FTI00762', 'Roset 2 Core Polos TELKOM INDONESIA ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('13dc56cb-08d2-44aa-9fab-a236d47ec7a1', 'FTI00448', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 100m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '256000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('143d9fca-4e7e-49f6-8358-18dad81208a9', 'FTI00727', 'Polish Pad 80/127, seikoh', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('147b6863-bd86-4283-88b6-d1907cffb225', 'FTI00458', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('157e08e1-c7a3-4661-a3fa-f33f6e4c5089', 'FTI00753', 'Precon 1 Sisi 1 Core SC/UPC Connector Hitam 100M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('15a7f957-d522-4972-9c10-713836bba2db', 'FTI00571', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('16b187f7-5d3d-4b64-b417-980d0d34fe4d', 'FTI00543', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('185843a9-c0da-43fb-a309-dc1d1e31ab5b', 'FTI00564', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('18747432-0693-46b7-9c83-441b2ea3300b', 'FTI00460', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 8m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('18b24684-a540-4af4-b93f-80bc155fd32f', 'FTI00487', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('18d29252-8539-49da-9f99-f1014351fc15', 'FTI00656', 'Pigtail MM SX SC/PC (2,mm) 20m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '76000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('19449b46-650d-448f-b332-115f46e479e4', 'FTI00634', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 15M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('194cf507-2fb2-48ee-adb1-4cb921d6fb81', 'FTI00638', 'Patchcord SM SX SC/APC-SC/UPC (3,mm) 1M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1b8bae64-b054-484e-a9e8-bb1595ca89a7', 'FTI00773', 'S Clamp Jepit Telkom', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1ddb3c57-a474-4b44-94c9-52223a03d955', 'FTI00490', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1deb7547-5cfc-4b7c-b13e-f494ffd31b40', 'FTI00648', 'Pigtail cable SM 0.9 mm G657A2 LSZH yellow ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1e9b09f1-5da1-45c6-aa2b-44c3e4bbc231', 'FTI00689', 'Pigtail SM SX SC/APC (3,0mm) 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('1ea1f705-f430-432c-a9c6-1446c815cd41', 'FTI00807', 'X-Frame 80X90cm 3mm Model Tekuk', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2050a705-66c2-467d-8bac-772b6b84f404', 'FTI00630', 'Patchcord SM SX 3,mm SC/APC - SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('20bdbd72-93f3-4ed6-bece-c3d15264988b', 'FTI00719', 'PLC Splitter 1:4, white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '52000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('219403ac-7bb9-45c7-991c-af386a16e669', 'FTI00563', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('220c203f-e9f0-4e8c-ad9b-d025efa4917f', 'FTI00612', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2360c45a-a0ee-418c-b405-46cc6dedd867', 'FTI00621', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('23c73d77-f048-42bf-a361-15a06fcc5fad', 'FTI00657', 'Pigtail MM SX SC/PC (2,mm) 3m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('241e72e5-130e-4ca2-b086-885737a524cc', 'FTI00532', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('245d17dc-64b3-4d78-be04-4735c932f86f', 'FTI00760', 'Roset 2 core PAZ FIBERSTAR', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('25816f2b-3ee8-4b1c-a2d8-25068e6dbf9a', 'FTI00711', 'Plastik FTI 29,5 x 20', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('25c7edab-183f-4519-92ee-a54070a4d4a4', 'FTI00570', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '20000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('25e4e0f1-3a01-4ee5-b26d-24825d2cd7e0', 'FTI00504', 'Patchcord SM DX 3.mm FC/UPC-SC/UPC 20M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2794a09f-1d92-4532-87bd-fa0d86970a27', 'FTI00608', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('27acb4e1-64b8-47a2-b29f-4c52d0f4c1bc', 'FTI00485', 'Patchcord SM DX (3,0mm) SC/APC-LC/APC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('27fc1feb-5d93-4f44-8b44-773128e94e70', 'FTI00798', 'Tangga 4,4m AMG (Silver)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('28537981-4d1f-40b7-afc2-d09b3aaa1703', 'FTI00531', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('292d5c9f-c3f2-41b3-8f86-88c680b0d95e', 'FTI00741', 'Precon 1 Core SC/APC-SC/APC 50M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2a2ad83b-6255-4edc-90b4-6be9f1e4ccd0', 'FTI00519', 'Patchcord SM DX ST/UPC-SC/UPC (2,mm) 5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2a32aeab-59d4-4947-9012-dd0b7652ba75', 'FTI00520', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2af3440d-96dc-4628-bdb5-e3221ee35870', 'FTI00651', 'Pigtail MM SX FC/PC (2,0mm) 2m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2b99de30-4726-4025-8c81-00285e94a9c4', 'FTI00737', 'Polishing Film PC 0,05 final', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2beb3665-fc2d-4fbc-a69d-9dc8103d2a06', 'FTI00439', 'Patchcord SM DX (2,0mm) SC/APC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '88000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2bebb89a-c746-415a-a083-27efce0213f4', 'FTI00631', 'Patchcord SM SX 3,mm SC/APC - SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2c394318-71df-4569-8fd9-28ce6d577a0e', 'FTI00530', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 25m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2c45b723-c7b3-4959-862a-17c865c03031', 'FTI00507', 'Patchcord SM DX FC/UPC-SC/UPC (2,mm) 5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2c7687c4-847b-422c-9504-4db9293201d5', 'FTI00649', 'Pigtail MM DX ST/PC (3,mm) 3m (OM2 ROSENBERYER)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2cd98f26-3b69-4c4f-8480-cebae681a75b', 'FTI00658', 'Pigtail MM SX SC/UPC (2,0mm)1,5m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2d72ebf9-2ba7-46ff-9cef-c1a7ca58f8eb', 'FTI00805', 'Winding Machine', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2deb5538-480e-4bf2-b572-8efce84a46ce', 'FTI00561', 'Patchcord SM SX (2,0mm) SC/UPC-FC/APC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2dedb15b-c44a-44db-8ab7-7213ae1f4224', 'FTI00582', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 80m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '94000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2e7a63aa-49df-49b4-a5d4-52c881fdd5dd', 'FTI00613', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('2ecb6a77-3708-4eb3-ab82-3e89ac70dea7', 'FTI00641', 'Pedestal Besar Kosongan ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('302e9d8b-38ae-436c-a695-a9db956f503f', 'FTI00510', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 5m Heat Shrink Hitam PAZ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('308dfdfa-509f-4039-9b96-e5ce030e3cfa', 'FTI00713', 'PLC Splitter 1:16 W/O connector , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '55000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3226a083-ddc1-4485-9e13-63f21c14257a', 'FTI00801', 'Teflon Tube 0,9/0,6mm Ivory Colour', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('32462549-e3c3-4406-9c70-0c5ad8c82d52', 'FTI00461', 'Patchcord SM DX (2,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('32a3b6ce-d7fc-4814-8ffb-7dc3ca1919fb', 'FTI00455', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 35m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('32dbe418-54fe-4e02-bed2-9946dd6b2b2c', 'FTI00722', 'PLC Splitter 1:8 SC/UPC (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3301f8de-dc15-4b38-8542-008da5228ffb', 'FTI00482', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('333cbb1a-f46e-49a1-a480-ea3ae3092f4e', 'FTI00750', 'Precon 1 Core SC/UPC-SC/UPC 50M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '51000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('33e6c87d-a476-4593-9666-2dd8eae2acaf', 'FTI00692', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (oren)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3451b54a-22ee-429b-877f-3d4cd8128e90', 'FTI00681', 'Pigtail SM SX SC/APC (0,9mm) 1m (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('34eff310-0251-45ad-a357-0bbd38c94fed', 'FTI00784', 'Splitter PLC 1:8 Tanpa Connector ( No Brand )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('350e590d-80a7-4cee-a0d8-98d1cfa3c1bc', 'FTI00456', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('364bc81c-0fc2-4395-8f3e-b92c4dbf11a9', 'FTI00806', 'Wire TRacker/Tone Checker', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('36b9f4f9-499b-4239-b2ce-661ec6731660', 'FTI00547', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 70m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '104000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('370a2a2b-ca31-454c-a4e3-53268b618f3c', 'FTI00715', 'PLC Splitter 1:2 W/O connector , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '23000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3796ab98-805e-4d21-81ab-f2bca5b5c948', 'FTI00550', 'Patchcord SM SX (2,0mm) SC/APC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('39100a15-104a-431d-b833-768ae77395e9', 'FTI00695', 'Pigtail SM SX SC/UPC (0,9mm) 1m (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('394f0b93-4e8f-4d99-8b9c-b5c4e21d7371', 'FTI00820', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 200M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '156000.00', '157000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Mirza Rizaldy', NULL, '2020-12-15 11:35:43', '2020-12-15 11:35:43'),
('3979288c-f896-43d4-944f-1eff5c09762c', 'FTI00637', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 40M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3a47c5d9-bc89-4174-92bd-29da7a2eafc9', 'FTI00725', 'PLC Splitter 1:8, white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3b178ef1-8a34-44ba-9f41-766d452f4b43', 'FTI00453', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3b219596-c0d5-4cfd-a37a-4f0b2b99bdd2', 'FTI00516', 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3bc7960c-9010-4510-a001-cf2c4360df30', 'FTI00800', 'Tangga 5,3m AMG', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3d7deffc-073c-40f9-bf7e-94c8cf5381ba', 'FTI00544', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 4m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '23000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3d9cb0a3-cb54-4a50-bd20-ab7243a88a2b', 'FTI00778', 'SOC LC/UPC ( Belum Terkupas )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('3fd203f0-691e-4bfa-b20d-b728c661ff05', 'FTI00700', 'Pigtail SM SX SC/UPC (3,0mm) 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4179d80b-f6c1-402a-8d86-76ce23fe9f86', 'FTI00781', 'Splice on connector SC/APC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('419c1402-e5d7-42ed-8f23-f7012d862ea6', 'FTI00447', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('42e15caf-36f7-4b28-99e1-a9e2ea579f7c', 'FTI00703', 'Pigtail SM SX ST/UPC (0,9mm) 1m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('433ace17-1a8e-452a-a30c-45f5a2c01a55', 'FTI00814', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '68500.00', '81000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', NULL, '2020-12-13 08:59:02', '2020-12-13 08:59:02'),
('43c48fab-f3f5-4e5f-88b4-5599fb41bc32', 'FTI00576', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('44244f8a-ac13-4d8c-b0cc-303db8777970', 'FTI00642', 'Pedestal Kecil Kosongan (Tanpa Kardus)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('45e3a2e9-41af-4ba9-96d4-b07ec1fe038b', 'FTI00789', 'Stopping Buckle Gigi', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('47359c6c-5efd-4d1b-85ca-84f24e1fe9f2', 'FTI00494', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('47aa3c3c-56ec-4f4c-a3ff-9544cf4ce9cf', 'FTI00525', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 60m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '77000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('48c579c9-fd72-49d0-8193-970ef5399c84', 'FTI00740', 'Precon 1 Core SC/APC-SC/APC 200M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '156000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('49015b79-c8d7-4440-8223-515b21b026c6', 'FTI00775', 'SFP 10GB', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('494325a6-68bc-4d88-9dd8-472f8901a6a2', 'FTI00471', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4a358603-b661-4320-ad99-72c870e754cb', 'FTI00617', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4b4ae981-c88c-479a-9f72-11c2837cbb4f', 'FTI00767', 'Roset 4 Core ZTE (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4c01a6b8-4401-4be3-8b11-48410471006a', 'FTI00602', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4cbef0bc-45f7-4ca7-ba4e-371ae9c82703', 'FTI00536', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4d0f2ae0-bc50-407b-ac2d-ee19f2928535', 'FTI00643', 'Pen-type Visual Fault Locator(20km)  F03', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '185000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4d6797ab-3ea0-4545-afc8-4643a5e75c4f', 'FTI00770', 'Rotary Cable stripper', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4dfcec97-9511-463f-b99f-459068891080', 'FTI00728', 'Polishing Film ADSS 0,05 final', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4e2fd3bb-cd3e-4ecb-9da6-745b145f57ce', 'FTI00774', 'Scissor (Proskit)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4eb07b52-e87d-4a9d-b0b6-359ea6839eca', 'FTI00483', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4f062ee3-75db-4366-8b4d-a851227c4a43', 'FTI00787', 'Stick Rodding', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('4f964b43-2859-4137-9043-3d725e9e6ff4', 'FTI00667', 'Pigtail SM DX SC/UPC (2,0mm) 8m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('50fb2356-968e-4d26-9a9d-92cc27f5e291', 'FTI00788', 'Stopping Buckle ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('52b06135-8753-49a0-9ea9-5cb4c708ef5b', 'FTI00503', 'Patchcord SM DX (3,0mm) SC/UPC-ST/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('52cfc1d9-ecc1-4cc7-a411-58d0b8284060', 'FTI00558', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('53dff306-fa2a-4379-b920-431156ac105b', 'FTI00625', 'Patchcord SM SX 2,mm LC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5419c6c1-c02b-42a1-99d7-331514ce735e', 'FTI00780', 'Splice Clousure 96 Core Dome ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '220000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('54bba56c-437f-4495-bb54-319e5cab8fd7', 'FTI00730', 'Polishing Film Mikron D1', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5636ef6f-a6a1-4ec9-a1c1-6a5f97d0296b', 'FTI00449', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('56c58552-af94-41c6-ab6b-228e03b57e6e', 'FTI00809', 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '19000.00', '20000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', 'adminsales2', '2020-12-12 15:03:02', '2020-12-12 15:19:12'),
('57023c1f-6666-4b23-a42a-5f7059f95f68', 'FTI00553', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('58d514e2-01a2-4659-aed7-5ab96c3c0814', 'FTI00495', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '108000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('59c29221-c993-4ece-a377-71eb3bf9ddbc', 'FTI00481', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5a75ace8-9408-4b6a-b5bf-f9a521259c77', 'FTI00785', 'Splitter PLC 1:8 W/O Connector (White)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5b35dc17-12ad-41a0-beaa-404ab1187df3', 'FTI00766', 'Roset 4 Core Polos', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5bfef3b3-dffc-4011-afc8-d89bf8af1527', 'FTI00528', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5c321c72-30ca-4967-a602-57802d122c9b', 'FTI00451', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5ce81e75-7d20-46a0-a52b-2303129f05c8', 'FTI00679', 'Pigtail SM SX LC/UPC (2,0mm) 2m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d0a2548-06cb-4abe-be3d-9ca16dd799f3', 'FTI00480', 'Patchcord SM DX (3,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d33ef5c-fd87-4770-9051-e78a193a7aa2', 'FTI00783', 'Splitter PLC 1:8 SC/UPC (KUNING)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9aaffa-33c0-11ea-aec2-2e728ce88125', 'FTI00001', '1??m Polishing film', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ab270-33c0-11ea-aec2-2e728ce88125', 'FTI00002', '30??m Polishing film', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ab3d8-33c0-11ea-aec2-2e728ce88125', 'FTI00003', '3??m Polishing film', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ab536-33c0-11ea-aec2-2e728ce88125', 'FTI00004', '9??m Polishing film', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ac882-33c0-11ea-aec2-2e728ce88125', 'FTI00005', 'Abs Splitter 1:4 SC/UPC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9aca26-33c0-11ea-aec2-2e728ce88125', 'FTI00006', 'ABS Splitter 1:16', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '165000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9acb70-33c0-11ea-aec2-2e728ce88125', 'FTI00007', 'ABS Splitter 1:16 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '90000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9acca6-33c0-11ea-aec2-2e728ce88125', 'FTI00008', 'Abs Splitter 1:4  SC/UPC (Ryutelco)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ae2c2-33c0-11ea-aec2-2e728ce88125', 'FTI00009', 'ABS Splitter 1:64', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '875000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ae448-33c0-11ea-aec2-2e728ce88125', 'FTI00010', 'ABS Splitter 1:64 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '550000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ae9b6-33c0-11ea-aec2-2e728ce88125', 'FTI00011', 'ABS Splitter 1:8 ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9aeb3c-33c0-11ea-aec2-2e728ce88125', 'FTI00012', 'Abs Splitter 1:8 SC/UPC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b0464-33c0-11ea-aec2-2e728ce88125', 'FTI00013', 'Abs Splitter 1:8 SC/UPC (GOC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b05ea-33c0-11ea-aec2-2e728ce88125', 'FTI00014', 'Abs Splitter 1:8 SC/UPC No Brand', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b0734-33c0-11ea-aec2-2e728ce88125', 'FTI00015', 'Abs Splitter 1:8 SC/UPC SAM ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b0874-33c0-11ea-aec2-2e728ce88125', 'FTI00016', 'Abs Splitter 1:8 SC/UPC YOFC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b09aa-33c0-11ea-aec2-2e728ce88125', 'FTI00017', 'ABS Splitter 1:8 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '49000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b0d60-33c0-11ea-aec2-2e728ce88125', 'FTI00018', 'Abs Splitter 2:32 SC/APC ( No Brand )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b0ed2-33c0-11ea-aec2-2e728ce88125', 'FTI00019', 'Abs Splitter 2:8 ( Tanpa Connector )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1008-33c0-11ea-aec2-2e728ce88125', 'FTI00020', 'Abs Splitter 2:8 SC/APC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b113e-33c0-11ea-aec2-2e728ce88125', 'FTI00021', 'Abs Splitter 2:8 SC/UPC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b127e-33c0-11ea-aec2-2e728ce88125', 'FTI00022', 'Abs Splitter 2:8 Tanpa Connector ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b13b4-33c0-11ea-aec2-2e728ce88125', 'FTI00023', 'Adapter  - LC  UPC DX , blue', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b16e8-33c0-11ea-aec2-2e728ce88125', 'FTI00024', 'Adapter  - SC UPC , blue', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1832-33c0-11ea-aec2-2e728ce88125', 'FTI00025', 'Adapter Dustcaps Black', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1968-33c0-11ea-aec2-2e728ce88125', 'FTI00026', 'Adapter Dustcaps Blue', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1a9e-33c0-11ea-aec2-2e728ce88125', 'FTI00027', 'Adapter Dustcaps Green', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1ce2-33c0-11ea-aec2-2e728ce88125', 'FTI00028', 'Adapter MM DX LC/PC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b1e36-33c0-11ea-aec2-2e728ce88125', 'FTI00029', 'Adapter MM SX SC/PC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b2296-33c0-11ea-aec2-2e728ce88125', 'FTI00030', 'Adapter SC UPC auto shutter ( short ear )', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b241c-33c0-11ea-aec2-2e728ce88125', 'FTI00031', 'Adapter SC/APC Auto Shutter', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b255c-33c0-11ea-aec2-2e728ce88125', 'FTI00032', 'Adapter SC/UPC Auto Shutter', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b269c-33c0-11ea-aec2-2e728ce88125', 'FTI00033', 'Adapter SM FC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b27d2-33c0-11ea-aec2-2e728ce88125', 'FTI00034', 'Adapter SM LC/UPC DX', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b2912-33c0-11ea-aec2-2e728ce88125', 'FTI00035', 'Adapter SM SC/APC (BESI) (Dimika)', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b2c0a-33c0-11ea-aec2-2e728ce88125', 'FTI00036', 'Adapter SM SC/APC (BESI) (Dimika) (Tente)', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b2d68-33c0-11ea-aec2-2e728ce88125', 'FTI00037', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Biru', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9b2ea8-33c0-11ea-aec2-2e728ce88125', 'FTI00038', 'Adapter SM SC/UPC ( BESI ) ( Dimika ) Tutup Hitam', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b2ff2-33c0-11ea-aec2-2e728ce88125', 'FTI00039', 'Adapter SM SC/UPC DX', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3146-33c0-11ea-aec2-2e728ce88125', 'FTI00040', 'Adapter SM SC/UPC PAZ ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b327c-33c0-11ea-aec2-2e728ce88125', 'FTI00041', 'Adapter ST/UPC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3632-33c0-11ea-aec2-2e728ce88125', 'FTI00042', 'Adjustable Light Source F01', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '600000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b379a-33c0-11ea-aec2-2e728ce88125', 'FTI00043', 'ADSS-SS-100M- B1.3 , SM , G652D - 12 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b38d0-33c0-11ea-aec2-2e728ce88125', 'FTI00044', 'ADSS-SS-100M- B1.3 , SM , G652D - 24 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6600.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3a10-33c0-11ea-aec2-2e728ce88125', 'FTI00045', 'ADSS-SS-100M- B1.3 , SM , G652D - 48 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7200.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3b46-33c0-11ea-aec2-2e728ce88125', 'FTI00046', 'ADSS-SS-100M- B1.3 , SM , G652D - 6 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9650.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3dc6-33c0-11ea-aec2-2e728ce88125', 'FTI00047', 'Auto shutter , SC APC , black cap , long ear', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b3f24-33c0-11ea-aec2-2e728ce88125', 'FTI00048', 'Auto shutter , SC UPC , black cap , long ear', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4244-33c0-11ea-aec2-2e728ce88125', 'FTI00049', 'Automatic cable stripper', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b43a2-33c0-11ea-aec2-2e728ce88125', 'FTI00050', 'Box ONT Huawei (Kardus)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b44e2-33c0-11ea-aec2-2e728ce88125', 'FTI00051', 'Box Splitter 1:8 (Kosongan)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4618-33c0-11ea-aec2-2e728ce88125', 'FTI00052', 'Box Splitter 1:8 (Splitter PLC 1:8 SC/APC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b474e-33c0-11ea-aec2-2e728ce88125', 'FTI00053', 'BOX SPLITTER 1X8, EMPTY BOX , ABS , 130X100X24.5mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b488e-33c0-11ea-aec2-2e728ce88125', 'FTI00054', 'Bundle Cable 1 Sisi 12 Core SC/APC 1,5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '31000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4b90-33c0-11ea-aec2-2e728ce88125', 'FTI00055', 'Bundle Cable LC/UPC 8F 1 sisi 12m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '52000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4cf8-33c0-11ea-aec2-2e728ce88125', 'FTI00056', 'Bundle Cable LC/UPC 8F 1 sisi 19m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4e38-33c0-11ea-aec2-2e728ce88125', 'FTI00057', 'Bundle Cable LC/UPC 8F 1 sisi 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '110000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b4f8c-33c0-11ea-aec2-2e728ce88125', 'FTI00058', 'Bundle Cable LC/UPC 8F 1 sisi 24m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '145000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b50b8-33c0-11ea-aec2-2e728ce88125', 'FTI00059', 'Bundle Cable LC/UPC 8F 1 sisi 25m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '155000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b51ee-33c0-11ea-aec2-2e728ce88125', 'FTI00060', 'Bundle Cable LC/UPC 8F 1 sisi 26m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '165000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b5536-33c0-11ea-aec2-2e728ce88125', 'FTI00061', 'Bundle Cable LC/UPC 8F 1 sisi 38m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '354000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b5676-33c0-11ea-aec2-2e728ce88125', 'FTI00062', 'Bundle Cable SC/UPC - LC/UPC 12F 2 sisi 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b57b6-33c0-11ea-aec2-2e728ce88125', 'FTI00063', 'Bundle Cable SC/UPC - SC/UPC 8F 2 Sisi 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b58ec-33c0-11ea-aec2-2e728ce88125', 'FTI00064', 'Bundle Cable SC/UPC 8F 1 sisi 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b5aae-33c0-11ea-aec2-2e728ce88125', 'FTI00065', 'Bundle Cable SC/UPC 8F 1 sisi 11m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b5c16-33c0-11ea-aec2-2e728ce88125', 'FTI00066', 'Bundle Cable SC/UPC 8F 1 sisi 12m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b5efa-33c0-11ea-aec2-2e728ce88125', 'FTI00067', 'Bundle Cable SC/UPC 8F 1 sisi 13m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6058-33c0-11ea-aec2-2e728ce88125', 'FTI00068', 'Bundle Cable SC/UPC 8F 1 sisi 14m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6198-33c0-11ea-aec2-2e728ce88125', 'FTI00069', 'Bundle Cable SC/UPC 8F 1 sisi 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b62ce-33c0-11ea-aec2-2e728ce88125', 'FTI00070', 'Bundle Cable SC/UPC 8F 1 sisi 16m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6404-33c0-11ea-aec2-2e728ce88125', 'FTI00071', 'Bundle Cable SC/UPC 8F 1 sisi 17m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b653a-33c0-11ea-aec2-2e728ce88125', 'FTI00072', 'Bundle Cable SC/UPC 8F 1 sisi 18m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6828-33c0-11ea-aec2-2e728ce88125', 'FTI00073', 'Bundle Cable SC/UPC 8F 1 sisi 19m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b699a-33c0-11ea-aec2-2e728ce88125', 'FTI00074', 'Bundle Cable SC/UPC 8F 1 sisi 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6ada-33c0-11ea-aec2-2e728ce88125', 'FTI00075', 'Bundle Cable SC/UPC 8F 1 sisi 21m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6c06-33c0-11ea-aec2-2e728ce88125', 'FTI00076', 'Bundle Cable SC/UPC 8F 1 sisi 22m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b6d3c-33c0-11ea-aec2-2e728ce88125', 'FTI00077', 'Bundle Cable SC/UPC 8F 1 sisi 23m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b7048-33c0-11ea-aec2-2e728ce88125', 'FTI00078', 'Bundle Cable SC/UPC 8F 1 sisi 24m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b71ba-33c0-11ea-aec2-2e728ce88125', 'FTI00079', 'Bundle Cable SC/UPC 8F 1 sisi 25m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8588-33c0-11ea-aec2-2e728ce88125', 'FTI00080', 'Bundle Cable SC/UPC 8F 1 sisi 27m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b86fa-33c0-11ea-aec2-2e728ce88125', 'FTI00081', 'Bundle Cable SC/UPC 8F 1 sisi 28m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8830-33c0-11ea-aec2-2e728ce88125', 'FTI00082', 'Bundle Cable SC/UPC 8F 1 sisi 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8970-33c0-11ea-aec2-2e728ce88125', 'FTI00083', 'Bundle Cable SC/UPC 8F 1 sisi 42m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8aa6-33c0-11ea-aec2-2e728ce88125', 'FTI00084', 'Bundle Cable SC/UPC 8F 1 sisi 55m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8bdc-33c0-11ea-aec2-2e728ce88125', 'FTI00085', 'Bundle Cable SC/UPC 8F 1 sisi 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b8eca-33c0-11ea-aec2-2e728ce88125', 'FTI00086', 'Bundle Cable SC/UPC 8F 1 sisi 60m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b946a-33c0-11ea-aec2-2e728ce88125', 'FTI00087', 'Bundle Cable SC/UPC 8F 1 sisi 65m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b95fa-33c0-11ea-aec2-2e728ce88125', 'FTI00088', 'Bundle Cable SC/UPC 8F 1 sisi 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9744-33c0-11ea-aec2-2e728ce88125', 'FTI00089', 'Bundle Cable SC/UPC 8F 1 sisi 8m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9884-33c0-11ea-aec2-2e728ce88125', 'FTI00090', 'Bundle Cable SC/UPC 8F 1 sisi 9m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9b5e-33c0-11ea-aec2-2e728ce88125', 'FTI00091', 'Bundle Cable SC/UPC 8F 2 sisi 40m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9cbc-33c0-11ea-aec2-2e728ce88125', 'FTI00092', 'Bundle Cable SC/UPC 8F 2 sisi 60m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9dfc-33c0-11ea-aec2-2e728ce88125', 'FTI00093', 'cable branching 2 core,40*10*7mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9b9f3c-33c0-11ea-aec2-2e728ce88125', 'FTI00094', 'Cable markers, EC-0, print 1', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba068-33c0-11ea-aec2-2e728ce88125', 'FTI00095', 'Cable markers, EC-0, print 2', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba1a8-33c0-11ea-aec2-2e728ce88125', 'FTI00096', 'Cable markers, EC-0, print A', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba2de-33c0-11ea-aec2-2e728ce88125', 'FTI00097', 'Cable markers, EC-0, print B', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba5f4-33c0-11ea-aec2-2e728ce88125', 'FTI00098', 'Cassete FO 12 core White', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba734-33c0-11ea-aec2-2e728ce88125', 'FTI00099', 'Cassete FO 24 core Black', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ba946-33c0-11ea-aec2-2e728ce88125', 'FTI00100', 'Cassete FO 24 core White', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9baacc-33c0-11ea-aec2-2e728ce88125', 'FTI00101', 'Cassete FO 6 Core', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bac0c-33c0-11ea-aec2-2e728ce88125', 'FTI00102', 'Cassete FO 8 Core', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bae00-33c0-11ea-aec2-2e728ce88125', 'FTI00103', 'Cassete FO 96core ( Putih )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bb116-33c0-11ea-aec2-2e728ce88125', 'FTI00104', 'Clading strip machine', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bb27e-33c0-11ea-aec2-2e728ce88125', 'FTI00105', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 20/50', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bb3be-33c0-11ea-aec2-2e728ce88125', 'FTI00106', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 25/50', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bb4f4-33c0-11ea-aec2-2e728ce88125', 'FTI00107', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 50/70', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9bb724-33c0-11ea-aec2-2e728ce88125', 'FTI00108', 'Clamp A (BRacket) (Dead End)/Clamp Buaya uk 70/90', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c752e-33c0-11ea-aec2-2e728ce88125', 'FTI00109', 'Clamp Pipa Conduit ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c77b8-33c0-11ea-aec2-2e728ce88125', 'FTI00110', 'Clamp Ring 3 Lubang ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8032-33c0-11ea-aec2-2e728ce88125', 'FTI00111', 'Clamp Slang 10 Inch', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8190-33c0-11ea-aec2-2e728ce88125', 'FTI00112', 'Clamp Slang 5 Inch', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8492-33c0-11ea-aec2-2e728ce88125', 'FTI00113', 'Clamp Slang 6 Inch', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c860e-33c0-11ea-aec2-2e728ce88125', 'FTI00114', 'Cleaver FC-65/Made In China', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c874e-33c0-11ea-aec2-2e728ce88125', 'FTI00115', 'Cleaver Merk Senter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8a28-33c0-11ea-aec2-2e728ce88125', 'FTI00116', 'Cleaver Sumitomo ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8d8e-33c0-11ea-aec2-2e728ce88125', 'FTI00117', 'Clip MM LC/PC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c8eec-33c0-11ea-aec2-2e728ce88125', 'FTI00118', 'Clip MM LC/UPC (Transparent)', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9036-33c0-11ea-aec2-2e728ce88125', 'FTI00119', 'Clip MM SC/PC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9176-33c0-11ea-aec2-2e728ce88125', 'FTI00120', 'Clip SM LC/APC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c975c-33c0-11ea-aec2-2e728ce88125', 'FTI00121', 'Clip SM LC/UPC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9950-33c0-11ea-aec2-2e728ce88125', 'FTI00122', 'Clip SM SC/APC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9c2a-33c0-11ea-aec2-2e728ce88125', 'FTI00123', 'Clip SM SC/UPC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9d92-33c0-11ea-aec2-2e728ce88125', 'FTI00124', 'Clossure horizontal 288 Core ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1540000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9ec8-33c0-11ea-aec2-2e728ce88125', 'FTI00125', 'Clossure horizontal AIS 12/24 Core (Duck) ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '150000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9c9ffe-33c0-11ea-aec2-2e728ce88125', 'FTI00126', 'Clossure horizontal AIS 96 Core (Duck) ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '550000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ca134-33c0-11ea-aec2-2e728ce88125', 'FTI00127', 'Closure horizontal,24 core, 3IN-3OUT,450*210*120mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '150000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ca26a-33c0-11ea-aec2-2e728ce88125', 'FTI00128', 'Closure horizontal,48 core, 3IN-3OUT,450*210*120mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '175000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ca3a0-33c0-11ea-aec2-2e728ce88125', 'FTI00129', 'Clousure horizontal  48 Core (PAZ)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '175000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ca940-33c0-11ea-aec2-2e728ce88125', 'FTI00130', 'Clousure horizontal  96 Core ( Kulit Jeruk)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '175000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9caad0-33c0-11ea-aec2-2e728ce88125', 'FTI00131', 'Clousure horizontal  96 Core ( No brand )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '175000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cac1a-33c0-11ea-aec2-2e728ce88125', 'FTI00132', 'Clousure horizontal 48 Core (Fiber Trone)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '175000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cad96-33c0-11ea-aec2-2e728ce88125', 'FTI00133', 'Connector 2mm Semi Finished SC/UPC SM', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9caee0-33c0-11ea-aec2-2e728ce88125', 'FTI00134', 'Connector FC PC 2mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb016-33c0-11ea-aec2-2e728ce88125', 'FTI00135', 'Connector FC PC 3mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb318-33c0-11ea-aec2-2e728ce88125', 'FTI00136', 'Connector LC APC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb46c-33c0-11ea-aec2-2e728ce88125', 'FTI00137', 'Connector LC APC 2mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb5b6-33c0-11ea-aec2-2e728ce88125', 'FTI00138', 'Connector LC APC 3mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb6f6-33c0-11ea-aec2-2e728ce88125', 'FTI00139', 'Connector LC PC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cb82c-33c0-11ea-aec2-2e728ce88125', 'FTI00140', 'Connector LC PC 2mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cba66-33c0-11ea-aec2-2e728ce88125', 'FTI00141', 'Connector LC UPC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cbd54-33c0-11ea-aec2-2e728ce88125', 'FTI00142', 'Connector LC UPC 2mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cbef8-33c0-11ea-aec2-2e728ce88125', 'FTI00143', 'Connector LC UPC 3mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc038-33c0-11ea-aec2-2e728ce88125', 'FTI00144', 'Connector SC APC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc16e-33c0-11ea-aec2-2e728ce88125', 'FTI00145', 'Connector SC APC 2mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc2e0-33c0-11ea-aec2-2e728ce88125', 'FTI00146', 'Connector SC APC 3mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc420-33c0-11ea-aec2-2e728ce88125', 'FTI00147', 'Connector SC PC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc556-33c0-11ea-aec2-2e728ce88125', 'FTI00148', 'Connector SC PC 2mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc876-33c0-11ea-aec2-2e728ce88125', 'FTI00149', 'Connector SC UPC 0.9mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cc9c0-33c0-11ea-aec2-2e728ce88125', 'FTI00150', 'Connector SC UPC 2mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ccaf6-33c0-11ea-aec2-2e728ce88125', 'FTI00151', 'Connector SC UPC 3mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ccc36-33c0-11ea-aec2-2e728ce88125', 'FTI00152', 'Connector semi assembly SC/UPC SM 5cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ccd62-33c0-11ea-aec2-2e728ce88125', 'FTI00153', 'Connector semi finished SC APC , SM , 5 CM , include ferrule for preconnector dropcable', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ccea2-33c0-11ea-aec2-2e728ce88125', 'FTI00154', 'Connector semi finished SC UPC , SM , 5 CM , include ferrule for preconnector dropcable', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd172-33c0-11ea-aec2-2e728ce88125', 'FTI00155', 'Connector ST PC 2mm ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd2d0-33c0-11ea-aec2-2e728ce88125', 'FTI00156', 'Connector ST Semi Assembly 2mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd41a-33c0-11ea-aec2-2e728ce88125', 'FTI00157', 'CPRI, SM Armored 2-core, G652D ,blue color - 2 Core - FIBERTEKNO', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd55a-33c0-11ea-aec2-2e728ce88125', 'FTI00158', 'Crimping Machine ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3750000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd690-33c0-11ea-aec2-2e728ce88125', 'FTI00159', 'Crimping Tools', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '50000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cd7d0-33c0-11ea-aec2-2e728ce88125', 'FTI00160', 'Curring oven ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2750000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cdadc-33c0-11ea-aec2-2e728ce88125', 'FTI00161', 'Cutter Besar (Kenko)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cdc4e-33c0-11ea-aec2-2e728ce88125', 'FTI00162', 'Cutting Machine', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '70000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cdd8e-33c0-11ea-aec2-2e728ce88125', 'FTI00163', 'D-clamp', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cdec4-33c0-11ea-aec2-2e728ce88125', 'FTI00164', 'Dome,48 core, no line, 1IN-4OUT', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '220000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cdffa-33c0-11ea-aec2-2e728ce88125', 'FTI00165', 'Drop cable cutting machine', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '70000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ce1ee-33c0-11ea-aec2-2e728ce88125', 'FTI00166', 'Dropcable 1 Core 100 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ce4fa-33c0-11ea-aec2-2e728ce88125', 'FTI00167', 'Dropcable 1 Core 150 Meter ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '121000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ce662-33c0-11ea-aec2-2e728ce88125', 'FTI00168', 'Dropcable 1 Core 200 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '156000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ce798-33c0-11ea-aec2-2e728ce88125', 'FTI00169', 'Dropcable 1 Core 250 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '191000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cea18-33c0-11ea-aec2-2e728ce88125', 'FTI00170', 'Dropcable 1 Core 300 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '226000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cebc6-33c0-11ea-aec2-2e728ce88125', 'FTI00171', 'Dropcable 1 Core 50 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '51000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ced06-33c0-11ea-aec2-2e728ce88125', 'FTI00172', 'Dropcable 1 Core 75 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cefb8-33c0-11ea-aec2-2e728ce88125', 'FTI00173', 'Dropcable 1 Core 80 Meter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '96000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cf116-33c0-11ea-aec2-2e728ce88125', 'FTI00174', 'Dropcable 1 Core Bulat', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cf24c-33c0-11ea-aec2-2e728ce88125', 'FTI00175', 'Dropcable Branching 2Core', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cf38c-33c0-11ea-aec2-2e728ce88125', 'FTI00176', 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 1 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '600.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cf58a-33c0-11ea-aec2-2e728ce88125', 'FTI00177', 'DROPCABLE INDOOR TYPE  , G657A1,  STEEL WIRE , LSZH , WITHOUT MESSENGER - 2 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '700.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cf8a0-33c0-11ea-aec2-2e728ce88125', 'FTI00178', 'Dropcable stripping pliers Wire - proHEX\n ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '170000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cfa08-33c0-11ea-aec2-2e728ce88125', 'FTI00179', 'epoxy glue A and B', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cfb48-33c0-11ea-aec2-2e728ce88125', 'FTI00180', 'Face plate 1c ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cfc7e-33c0-11ea-aec2-2e728ce88125', 'FTI00181', 'Fast Conector SC/APC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cfdbe-33c0-11ea-aec2-2e728ce88125', 'FTI00182', 'Fast Conector SC/UPC', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9cfef4-33c0-11ea-aec2-2e728ce88125', 'FTI00183', 'Ferulle 125 for LC UPC MM', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d002a-33c0-11ea-aec2-2e728ce88125', 'FTI00184', 'Ferulle 125 for LC UPC SM', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d02f0-33c0-11ea-aec2-2e728ce88125', 'FTI00185', 'Ferulle 250 for SC / FC APC SM', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d04b2-33c0-11ea-aec2-2e728ce88125', 'FTI00186', 'Ferulle 250 for SC / FC MM', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0610-33c0-11ea-aec2-2e728ce88125', 'FTI00187', 'Ferulle 250 for SC / FC UPC SM', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0750-33c0-11ea-aec2-2e728ce88125', 'FTI00188', 'Ferulle Press Machine', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '20000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0962-33c0-11ea-aec2-2e728ce88125', 'FTI00189', 'Fiber Fusion Splice F04', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '21500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0b24-33c0-11ea-aec2-2e728ce88125', 'FTI00190', 'Fiber Fusion Splicer k11', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'FTI00191', 'Fiber Fusion Splicer KF4', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '31000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d0f84-33c0-11ea-aec2-2e728ce88125', 'FTI00192', 'Fiber Fusion Splicer KF4A', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11250000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d10ba-33c0-11ea-aec2-2e728ce88125', 'FTI00193', 'final ADS , 0.01 um , mipox/ntt', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d11f0-33c0-11ea-aec2-2e728ce88125', 'FTI00194', 'GJFJH-2B6a1, Patchcord outdoor cable , G657A1 , LSZH , BLUE COLOR  - 2 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d1628-33c0-11ea-aec2-2e728ce88125', 'FTI00195', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 1 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '610.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d17cc-33c0-11ea-aec2-2e728ce88125', 'FTI00196', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 2 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '825.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d1af6-33c0-11ea-aec2-2e728ce88125', 'FTI00197', 'GJYXFCH-B/1, LSZH, GFRP , FLAT CABLE , G675A1 , 1 SELING - 4 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1150.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'FTI00198', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 1 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '610.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d1d76-33c0-11ea-aec2-2e728ce88125', 'FTI00199', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 2 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '825.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d1eac-33c0-11ea-aec2-2e728ce88125', 'FTI00200', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 4 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1150.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2000-33c0-11ea-aec2-2e728ce88125', 'FTI00201', 'GYA-B1.3, DUCT SCPT , SM , G652D - 12 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7900.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2140-33c0-11ea-aec2-2e728ce88125', 'FTI00202', 'GYA-B1.3, DUCT SCPT , SM , G652D - 24 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9700.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d241a-33c0-11ea-aec2-2e728ce88125', 'FTI00203', 'GYAXTC8Y - B1.3, Outdoor cable 12 core small Fig8 - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3700.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d25b4-33c0-11ea-aec2-2e728ce88125', 'FTI00204', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 12 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2708-33c0-11ea-aec2-2e728ce88125', 'FTI00205', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 24 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2848-33c0-11ea-aec2-2e728ce88125', 'FTI00206', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 48 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d297e-33c0-11ea-aec2-2e728ce88125', 'FTI00207', 'GYFA-6B1.3, DUCT ARMORED, SM , G652D - 6 Core - YOFC ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '14000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2ab4-33c0-11ea-aec2-2e728ce88125', 'FTI00208', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 12 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d2bea-33c0-11ea-aec2-2e728ce88125', 'FTI00209', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 24 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d300e-33c0-11ea-aec2-2e728ce88125', 'FTI00210', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 48 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d3176-33c0-11ea-aec2-2e728ce88125', 'FTI00211', 'GYFA-6OM2/2.0FRP, DUCT ARMORED, MM OM2 - 6 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '20500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d32b6-33c0-11ea-aec2-2e728ce88125', 'FTI00212', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 12 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d33f6-33c0-11ea-aec2-2e728ce88125', 'FTI00213', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 24 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d3568-33c0-11ea-aec2-2e728ce88125', 'FTI00214', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 48 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11300.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d382e-33c0-11ea-aec2-2e728ce88125', 'FTI00215', 'GYFC8A-12B1.3, AERIAL DUCT, SM, G652D - 96 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17400.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9d3ac2-33c0-11ea-aec2-2e728ce88125', 'FTI00216', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 12 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11550.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d7956-33c0-11ea-aec2-2e728ce88125', 'FTI00217', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 24 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d7d2a-33c0-11ea-aec2-2e728ce88125', 'FTI00218', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 48 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '21750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d7fb4-33c0-11ea-aec2-2e728ce88125', 'FTI00219', 'GYFC8A-B4.4, AERIAL DUCT, SM, G655C - 96 CORE - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '36000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d8162-33c0-11ea-aec2-2e728ce88125', 'FTI00220', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 12 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8200.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d84aa-33c0-11ea-aec2-2e728ce88125', 'FTI00221', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 24 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d85fe-33c0-11ea-aec2-2e728ce88125', 'FTI00222', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 12 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d8734-33c0-11ea-aec2-2e728ce88125', 'FTI00223', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 144 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '23500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d886a-33c0-11ea-aec2-2e728ce88125', 'FTI00224', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 24 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7150.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d89a0-33c0-11ea-aec2-2e728ce88125', 'FTI00225', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 288 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '40000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d8ad6-33c0-11ea-aec2-2e728ce88125', 'FTI00226', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 48 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9800.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d8f0e-33c0-11ea-aec2-2e728ce88125', 'FTI00227', 'GYTA- B1.3 , DUCT CONVEN , SM , G652D - 96 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '14900.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9d9094-33c0-11ea-aec2-2e728ce88125', 'FTI00228', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 12 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11400.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dadc2-33c0-11ea-aec2-2e728ce88125', 'FTI00229', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 144 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '57500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9daf3e-33c0-11ea-aec2-2e728ce88125', 'FTI00230', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 24 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15850.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9db092-33c0-11ea-aec2-2e728ce88125', 'FTI00231', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 288 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '107500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9db1d2-33c0-11ea-aec2-2e728ce88125', 'FTI00232', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 48 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '22000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9db664-33c0-11ea-aec2-2e728ce88125', 'FTI00233', 'GYTA- B4.4 , DUCT CONVEN , SM , G655C- 96 Core - YOFC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9db97a-33c0-11ea-aec2-2e728ce88125', 'FTI00234', 'GYXFTCS , round type , G657A1, tanpa seling - 2 Core - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '900.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dbaf6-33c0-11ea-aec2-2e728ce88125', 'FTI00235', 'GYXTC8Y, Fig8 Cable, G.657A1 - 12 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dbdb2-33c0-11ea-aec2-2e728ce88125', 'FTI00236', 'GYXTC8Y, Fig8 Cable, G.657A1 - 2 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dbf2e-33c0-11ea-aec2-2e728ce88125', 'FTI00237', 'GYXTC8Y, Fig8 Cable, G.657A1 - 24 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc06e-33c0-11ea-aec2-2e728ce88125', 'FTI00238', 'GYXTC8Y, Fig8 Cable, G.657A1 - 4 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc352-33c0-11ea-aec2-2e728ce88125', 'FTI00239', 'GYXTC8Y, Fig8 Cable, G.657A1 - 6 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc4b0-33c0-11ea-aec2-2e728ce88125', 'FTI00240', 'GYXTC8Y, Fig8 Cable, G.657A1 - 8 CORE - FIBERTEKNO', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2250.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc5f0-33c0-11ea-aec2-2e728ce88125', 'FTI00241', 'heat shrink tube 3mm , black', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc726-33c0-11ea-aec2-2e728ce88125', 'FTI00242', 'heat shrink tube 3mm , white', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc85c-33c0-11ea-aec2-2e728ce88125', 'FTI00243', 'heat shrink tube 4mm , black', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dc992-33c0-11ea-aec2-2e728ce88125', 'FTI00244', 'heat shrink tube 8mm , black', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dcef6-33c0-11ea-aec2-2e728ce88125', 'FTI00245', 'Holder SOC SC/UPC Sumitomo', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dd090-33c0-11ea-aec2-2e728ce88125', 'FTI00246', 'IL&RL Test ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dd374-33c0-11ea-aec2-2e728ce88125', 'FTI00247', 'Jacket Furcation tubing,  900um / 250um ', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '300.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dd4dc-33c0-11ea-aec2-2e728ce88125', 'FTI00248', 'Jacket Furcation tubing.  3 mm / 900 um,  Black , aramid', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '750.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dd61c-33c0-11ea-aec2-2e728ce88125', 'FTI00249', 'Jig Corner SC/APC-36', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '12500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dd8ec-33c0-11ea-aec2-2e728ce88125', 'FTI00250', 'Jig Corner SC/UPC-36', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9dda5e-33c0-11ea-aec2-2e728ce88125', 'FTI00251', 'Jig Corner STUPC-24', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ddd42-33c0-11ea-aec2-2e728ce88125', 'FTI00252', 'Jig ST', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ddeaa-33c0-11ea-aec2-2e728ce88125', 'FTI00253', 'Kabel Dropcore Putih ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '10000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e1f0a-33c0-11ea-aec2-2e728ce88125', 'FTI00254', 'Kabel MM SX 3.mm 1,5M Potongan', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '25000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e20e0-33c0-11ea-aec2-2e728ce88125', 'FTI00255', 'Kabel MM SX 3.mm 3M Potongan', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '50000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e223e-33c0-11ea-aec2-2e728ce88125', 'FTI00256', 'Kabel UTP CAT 6 LS ', 6, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e237e-33c0-11ea-aec2-2e728ce88125', 'FTI00257', 'Kabel UTP CAT 6 Schneider ', 6, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e261c-33c0-11ea-aec2-2e728ce88125', 'FTI00258', 'Kabel UTP CAT 6 Vasco Link', 6, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e296e-33c0-11ea-aec2-2e728ce88125', 'FTI00259', 'Kardus uk. 100 x 36 x 36 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e2c70-33c0-11ea-aec2-2e728ce88125', 'FTI00260', 'Kardus uk. 22 x 22 x 10 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e2dba-33c0-11ea-aec2-2e728ce88125', 'FTI00261', 'Kardus uk. 22 x 22 x 22 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e2f04-33c0-11ea-aec2-2e728ce88125', 'FTI00262', 'Kardus uk. 55 x 38 x 36 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e31fc-33c0-11ea-aec2-2e728ce88125', 'FTI00263', 'Kardus uk. 57 x 31 x 31 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e336e-33c0-11ea-aec2-2e728ce88125', 'FTI00264', 'Kardus uk. 60 x 39 x 25 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e34ae-33c0-11ea-aec2-2e728ce88125', 'FTI00265', 'Kardus uk. 60 x 40 x 25 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e35ee-33c0-11ea-aec2-2e728ce88125', 'FTI00266', 'Kardus uk. 65 x 35 x 36 cm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e3724-33c0-11ea-aec2-2e728ce88125', 'FTI00267', 'Karet PAD Seikoh Giken 70', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e385a-33c0-11ea-aec2-2e728ce88125', 'FTI00268', 'Karet PAD Seikoh Giken 80', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e3990-33c0-11ea-aec2-2e728ce88125', 'FTI00269', 'Kelvar Scissor (Tang Gunting)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '115000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e3c92-33c0-11ea-aec2-2e728ce88125', 'FTI00270', 'Kevlar scissors - prohex', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '115000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e3dfa-33c0-11ea-aec2-2e728ce88125', 'FTI00271', 'Krone LSA', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '115000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4160-33c0-11ea-aec2-2e728ce88125', 'FTI00272', 'Lan Tester', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '115000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e42c8-33c0-11ea-aec2-2e728ce88125', 'FTI00273', 'Lem Epoxy Kit Part A&B', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4598-33c0-11ea-aec2-2e728ce88125', 'FTI00275', 'Markers Number, EC-0, Print A', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e46d8-33c0-11ea-aec2-2e728ce88125', 'FTI00276', 'Markers Number, EC-0, Print B', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4a16-33c0-11ea-aec2-2e728ce88125', 'FTI00277', 'Masking Tape 12mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4b56-33c0-11ea-aec2-2e728ce88125', 'FTI00278', 'Masking Tape 24mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4c96-33c0-11ea-aec2-2e728ce88125', 'FTI00279', 'Media Converter 10/100 ( B )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4dcc-33c0-11ea-aec2-2e728ce88125', 'FTI00280', 'Media Converter 10/100 (A)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e4f02-33c0-11ea-aec2-2e728ce88125', 'FTI00281', 'Media converter 10/1000', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5042-33c0-11ea-aec2-2e728ce88125', 'FTI00282', 'Melter Connector machine', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5236-33c0-11ea-aec2-2e728ce88125', 'FTI00283', 'Melter Connector SC UPC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5376-33c0-11ea-aec2-2e728ce88125', 'FTI00284', 'Mesin Melter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5650-33c0-11ea-aec2-2e728ce88125', 'FTI00285', 'Microscope ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e57a4-33c0-11ea-aec2-2e728ce88125', 'FTI00286', 'Miller clamp - prohex', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', NULL, NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5934-33c0-11ea-aec2-2e728ce88125', 'FTI00287', 'Mini Abs Splitter 1:2', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '52000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5a7e-33c0-11ea-aec2-2e728ce88125', 'FTI00288', 'Mini Abs Splitter 1:2 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '37500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5bbe-33c0-11ea-aec2-2e728ce88125', 'FTI00289', 'Mini Abs Splitter 1:4 ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '65000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5cfe-33c0-11ea-aec2-2e728ce88125', 'FTI00290', 'Mini Abs Splitter 1:4 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '40000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e5f92-33c0-11ea-aec2-2e728ce88125', 'FTI00291', 'Mini Abs Splitter 1:8', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6604-33c0-11ea-aec2-2e728ce88125', 'FTI00292', 'Mini Abs Splitter 1:8  SC/UPC (Ryutelco)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '95000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6820-33c0-11ea-aec2-2e728ce88125', 'FTI00293', 'Mini Abs Splitter 1:8 W/O connector', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '50000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6988-33c0-11ea-aec2-2e728ce88125', 'FTI00294', 'ODC 48 Core KOSONGAN SMC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6abe-33c0-11ea-aec2-2e728ce88125', 'FTI00295', 'ODC Mini 96C/ODP 96C', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6c08-33c0-11ea-aec2-2e728ce88125', 'FTI00296', 'ODP 12 Core POLE', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e6f32-33c0-11ea-aec2-2e728ce88125', 'FTI00297', 'ODP 12 Core YOFC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e707c-33c0-11ea-aec2-2e728ce88125', 'FTI00298', 'ODP 12 Core YOFC Tanpa Pigtail SC/APC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e71b2-33c0-11ea-aec2-2e728ce88125', 'FTI00299', 'ODP 12 Core YOFC Tanpa Pigtail+Kardus+Kunci SC/APC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e73ce-33c0-11ea-aec2-2e728ce88125', 'FTI00300', 'ODP 12C With stainless steel hoop', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e7554-33c0-11ea-aec2-2e728ce88125', 'FTI00301', 'ODP 16 Core ( TIS )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '145000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e76d0-33c0-11ea-aec2-2e728ce88125', 'FTI00302', 'ODP 16 Core CA (Huawei) Black', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '145000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e781a-33c0-11ea-aec2-2e728ce88125', 'FTI00303', 'ODP 16 core,ABS , white , 302x218x104,5mm ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '125000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'FTI00304', 'ODP 16 core,ABS , white , 315x270x85 mm ( SUNSEA )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '120000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e7edc-33c0-11ea-aec2-2e728ce88125', 'FTI00305', 'ODP 16C WITH BOX 2x1:8 cores,white, ABS, 311X237X104mm, with SUS Hoop, with logo', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '145000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8152-33c0-11ea-aec2-2e728ce88125', 'FTI00306', 'ODP 24 core,ABS, 2pcsEmbrace hoop , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '130000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e82ba-33c0-11ea-aec2-2e728ce88125', 'FTI00307', 'ODP 4 cores , white, 206x134x40mm, with logo', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '60000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8404-33c0-11ea-aec2-2e728ce88125', 'FTI00308', 'ODP 8 cores , white, ABS, 232x203x53mm, with SUS Hoop, with logo', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8742-33c0-11ea-aec2-2e728ce88125', 'FTI00309', 'ODP FAT 16Core (ABS White 302 x 218 x 104.5mm) (Sunsea)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '120000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e88b4-33c0-11ea-aec2-2e728ce88125', 'FTI00310', 'ODP FAT 16Core (ABS White 315 x 270 x 85mm) (PAZ)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '120000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e89fe-33c0-11ea-aec2-2e728ce88125', 'FTI00311', 'ODP FAT 24Core (ABS 2pcs Embrace Hoop White)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '130000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8b34-33c0-11ea-aec2-2e728ce88125', 'FTI00312', 'ODP Pole 1:8 (Tanpa Pigtail,Adaptor dan Splitter) Embos', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '125000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8c74-33c0-11ea-aec2-2e728ce88125', 'FTI00313', 'ODP Solid 16 Core + Splitter 1:16 SC/UPC Auto Shutter', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '120000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e8daa-33c0-11ea-aec2-2e728ce88125', 'FTI00314', 'Odp solid 8C ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '550000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e90d4-33c0-11ea-aec2-2e728ce88125', 'FTI00315', 'OLS J4', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9246-33c0-11ea-aec2-2e728ce88125', 'FTI00316', 'One Click Cleaner LC (Pen Cleaner LC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9386-33c0-11ea-aec2-2e728ce88125', 'FTI00317', 'One Click Cleaner SC (Pen Cleaner SC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e94bc-33c0-11ea-aec2-2e728ce88125', 'FTI00318', 'ONT ZTE Versi 3', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9714-33c0-11ea-aec2-2e728ce88125', 'FTI00319', 'OPP Packing Tapre 48mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9854-33c0-11ea-aec2-2e728ce88125', 'FTI00320', 'Optical Fiber Identifier Joinwit (OFI JW)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9994-33c0-11ea-aec2-2e728ce88125', 'FTI00321', 'Optical Light Source (OLS) JW', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9caa-33c0-11ea-aec2-2e728ce88125', 'FTI00322', 'Optical Power Mete F02', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9e12-33c0-11ea-aec2-2e728ce88125', 'FTI00323', 'Optical Power Meter ( AMG )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9e9f66-33c0-11ea-aec2-2e728ce88125', 'FTI00324', 'Optical Power Meter (No Brand)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea0a6-33c0-11ea-aec2-2e728ce88125', 'FTI00325', 'Optical Power Meter JoinWitt', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '225000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea1dc-33c0-11ea-aec2-2e728ce88125', 'FTI00326', 'Optical Time Domain Reflectometer Joinwit (OTDR JW)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea312-33c0-11ea-aec2-2e728ce88125', 'FTI00327', 'OTB \'19\', Draw-out type19\', 24 core', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea5e2-33c0-11ea-aec2-2e728ce88125', 'FTI00328', 'OTB 19\', Draw-out type19\', 12 core', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea754-33c0-11ea-aec2-2e728ce88125', 'FTI00329', 'OTB 24 Core SC (Hitam)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea894-33c0-11ea-aec2-2e728ce88125', 'FTI00330', 'OTB 24 Core SC (Krim)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ea9d4-33c0-11ea-aec2-2e728ce88125', 'FTI00331', 'OTB 24 Core SC/APC ( No Brand )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eab0a-33c0-11ea-aec2-2e728ce88125', 'FTI00332', 'OTB 48 Core SC/APC ( No Brand )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eac40-33c0-11ea-aec2-2e728ce88125', 'FTI00333', 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eaefc-33c0-11ea-aec2-2e728ce88125', 'FTI00334', 'OTB Rack 144 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb0a0-33c0-11ea-aec2-2e728ce88125', 'FTI00335', 'OTB Rack 24 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb1f4-33c0-11ea-aec2-2e728ce88125', 'FTI00336', 'OTB Rack 48 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb32a-33c0-11ea-aec2-2e728ce88125', 'FTI00337', 'OTB Rack 96 Core SC/UPC Tanpa Pigtail ( PAZ )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb46a-33c0-11ea-aec2-2e728ce88125', 'FTI00338', 'OTB Rack Splitter PLC 1:32 SC/APC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '230000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb636-33c0-11ea-aec2-2e728ce88125', 'FTI00339', 'OTDR Fiber Tekno', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eb794-33c0-11ea-aec2-2e728ce88125', 'FTI00340', 'OTDR Wavelength 1310/1550nm,32/30dB F05', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '11000000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ebaaa-33c0-11ea-aec2-2e728ce88125', 'FTI00341', 'Paladin Buffer Stripper', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ebc08-33c0-11ea-aec2-2e728ce88125', 'FTI00342', 'Palu Kecil ( CAB )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ebd3e-33c0-11ea-aec2-2e728ce88125', 'FTI00343', 'Pantong', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ebe7e-33c0-11ea-aec2-2e728ce88125', 'FTI00344', 'Patch cord cable SM DX 2.0mm G652D LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ebfb4-33c0-11ea-aec2-2e728ce88125', 'FTI00345', 'Patch cord cable SM DX 2.0mm G657A2 LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ec0f4-33c0-11ea-aec2-2e728ce88125', 'FTI00346', 'Patch cord cable SM DX 3.0mm G652D LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ec3ba-33c0-11ea-aec2-2e728ce88125', 'FTI00347', 'Patch cord cable SM DX 3.0mm G657A2 LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '2000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ec7ca-33c0-11ea-aec2-2e728ce88125', 'FTI00348', 'Patch cord cable SM SX 3.0mm G652D LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ec950-33c0-11ea-aec2-2e728ce88125', 'FTI00349', 'Patch cord cable SM SX 3.0mm G657A2 LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ecaa4-33c0-11ea-aec2-2e728ce88125', 'FTI00350', 'Patchcord Cable,MM OM2 DX,2mm,ORANGE,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ecbe4-33c0-11ea-aec2-2e728ce88125', 'FTI00351', 'Patchcord Cable,MM OM3 DX,2mm,AQUA,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '3500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ecd1a-33c0-11ea-aec2-2e728ce88125', 'FTI00352', 'Patchcord Cable,MM OM4 DX,2mm,AQUA,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ece50-33c0-11ea-aec2-2e728ce88125', 'FTI00353', 'Patchcord Cable,MM OM4 DX,2mm,BLUE,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed134-33c0-11ea-aec2-2e728ce88125', 'FTI00354', 'Patchcord Cable,MM OM4 DX,2mm,ORANGE,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed27e-33c0-11ea-aec2-2e728ce88125', 'FTI00355', 'Patchcord Cable,MM OM4 DX,2mm,RED,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '5500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed3be-33c0-11ea-aec2-2e728ce88125', 'FTI00356', 'Patchcord Cable,SM DX,2mm,G652D,YELLOW,PVC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed4f4-33c0-11ea-aec2-2e728ce88125', 'FTI00357', 'Patchcord Cable,SM SX,2mm,G652D,YELLOW,PVC', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed666-33c0-11ea-aec2-2e728ce88125', 'FTI00358', 'Patchcord Cable,SM SX,2mm,G657A2,YELLOW,LSZH', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ed7d8-33c0-11ea-aec2-2e728ce88125', 'FTI00359', 'Patchcord MM DX (2,0mm) FC/PC-LC/PC 15m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '77000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9edb0c-33c0-11ea-aec2-2e728ce88125', 'FTI00360', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 1.5m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9edd00-33c0-11ea-aec2-2e728ce88125', 'FTI00361', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 10m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '62000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ede5e-33c0-11ea-aec2-2e728ce88125', 'FTI00362', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 2m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9edfa8-33c0-11ea-aec2-2e728ce88125', 'FTI00363', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 30m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '122000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee142-33c0-11ea-aec2-2e728ce88125', 'FTI00364', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '41000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee282-33c0-11ea-aec2-2e728ce88125', 'FTI00365', 'Patchcord MM DX (2,0mm) LC/PC-LC/PC 3m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '41000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee3c2-33c0-11ea-aec2-2e728ce88125', 'FTI00366', 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 15m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '77000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee6ba-33c0-11ea-aec2-2e728ce88125', 'FTI00367', 'Patchcord MM DX (2,0mm) SC/PC-LC/PC 1m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee80e-33c0-11ea-aec2-2e728ce88125', 'FTI00368', 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 1m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ee94e-33c0-11ea-aec2-2e728ce88125', 'FTI00369', 'Patchcord MM DX (2,0mm) SC/PC-SC/PC 2m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eea84-33c0-11ea-aec2-2e728ce88125', 'FTI00370', 'Patchcord MM DX (2,0mm) SC/UPC-LC/UPC 2m (OM2 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eebc4-33c0-11ea-aec2-2e728ce88125', 'FTI00371', 'Patchcord MM DX (3,0mm) SC/UPC-ST/UPC 3m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '41000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9eecfa-33c0-11ea-aec2-2e728ce88125', 'FTI00372', 'Patchcord MM DX (3,0mm) ST/UPC-LC/UPC 1m (OM2 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef056-33c0-11ea-aec2-2e728ce88125', 'FTI00373', 'Patchcord MM DX (3,0mm) ST/UPC-ST/UPC 5m (OM2 ROSENBERGER)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '47000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef1c8-33c0-11ea-aec2-2e728ce88125', 'FTI00374', 'Patchcord MM DX SC/APC-LC/APC (2,mm) 1M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef312-33c0-11ea-aec2-2e728ce88125', 'FTI00375', 'Patchcord MM DX SC/APC-SC/APC (2,mm) 2M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef448-33c0-11ea-aec2-2e728ce88125', 'FTI00376', 'Patchcord MM DX SC/UPC-SC/UPC (2,mm) 1M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef57e-33c0-11ea-aec2-2e728ce88125', 'FTI00377', 'Patchcord MM OM2 DX 2mm ST/PC-LC/PC 1M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef6be-33c0-11ea-aec2-2e728ce88125', 'FTI00378', 'Patchcord MM OM3 DX 2,mm SC/PC-SC/PC 10M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '67000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9ef7f4-33c0-11ea-aec2-2e728ce88125', 'FTI00379', 'Patchcord MM OM3 DX 2MJM LC/PC-LC/PC 1M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9efc36-33c0-11ea-aec2-2e728ce88125', 'FTI00380', 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 10M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '87000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9efe70-33c0-11ea-aec2-2e728ce88125', 'FTI00381', 'Patchcord MM OM4 (2mm) DX LC/PC-LC/PC 3M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f000a-33c0-11ea-aec2-2e728ce88125', 'FTI00382', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 10m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '62000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f014a-33c0-11ea-aec2-2e728ce88125', 'FTI00383', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 15m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '77000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0280-33c0-11ea-aec2-2e728ce88125', 'FTI00384', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 20m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '92000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0442-33c0-11ea-aec2-2e728ce88125', 'FTI00385', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 30m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '122000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0712-33c0-11ea-aec2-2e728ce88125', 'FTI00386', 'Patchcord MM SX (2,0mm) FC/UPC-LC/UPC 40m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '154000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0866-33c0-11ea-aec2-2e728ce88125', 'FTI00387', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 10m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '62000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f09b0-33c0-11ea-aec2-2e728ce88125', 'FTI00388', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 15m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '77000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0ae6-33c0-11ea-aec2-2e728ce88125', 'FTI00389', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 20m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '92000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0c1c-33c0-11ea-aec2-2e728ce88125', 'FTI00390', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 25m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '110000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f0d52-33c0-11ea-aec2-2e728ce88125', 'FTI00391', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 30m  (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '122000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1040-33c0-11ea-aec2-2e728ce88125', 'FTI00392', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 3m (OM1 GJFJ)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '41000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f11b2-33c0-11ea-aec2-2e728ce88125', 'FTI00393', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 5m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '47000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('5d9f12fc-33c0-11ea-aec2-2e728ce88125', 'FTI00394', 'Patchcord MM SX (2,0mm) LC/UPC-LC/UPC 60m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '210000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1432-33c0-11ea-aec2-2e728ce88125', 'FTI00395', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 10m (OM1 CORNING)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '62000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1568-33c0-11ea-aec2-2e728ce88125', 'FTI00396', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 20m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '92000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f16a8-33c0-11ea-aec2-2e728ce88125', 'FTI00397', 'Patchcord MM SX (2,0mm) SC/UPC-LC/UPC 50m (OM1 CORNING)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '182000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1950-33c0-11ea-aec2-2e728ce88125', 'FTI00398', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 1m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1aae-33c0-11ea-aec2-2e728ce88125', 'FTI00399', 'Patchcord MM SX (2,0mm) SC/UPC-SC/UPC 2m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1bee-33c0-11ea-aec2-2e728ce88125', 'FTI00400', 'Patchcord MM SX (2,0mm) ST/UPC-ST/UPC 10m (OM1)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '62000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1d24-33c0-11ea-aec2-2e728ce88125', 'FTI00401', 'Patchcord MM SX (3,0mm) LC/UPC-LC/UPC 50m (OM1 CORNING)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '182000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1e64-33c0-11ea-aec2-2e728ce88125', 'FTI00402', 'Patchcord MM SX (3,0mm) SC/UPC-SC/UPC 3m (OM2 LSZH)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '41000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f1f9a-33c0-11ea-aec2-2e728ce88125', 'FTI00403', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 100m Aqua (FTI)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '514000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f2256-33c0-11ea-aec2-2e728ce88125', 'FTI00404', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '67000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f23b4-33c0-11ea-aec2-2e728ce88125', 'FTI00405', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 1m Aqua', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '35500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f24f4-33c0-11ea-aec2-2e728ce88125', 'FTI00406', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 20m Aqua (YOFC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '102000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f262a-33c0-11ea-aec2-2e728ce88125', 'FTI00407', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 25m Aqua (YOFC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '118000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f276a-33c0-11ea-aec2-2e728ce88125', 'FTI00408', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 30m Aqua (DTC NET)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '137000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f28a0-33c0-11ea-aec2-2e728ce88125', 'FTI00409', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 3m Aqua (FTI)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f2bfc-33c0-11ea-aec2-2e728ce88125', 'FTI00410', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 50m Aqua (YOFC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '207000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f2db4-33c0-11ea-aec2-2e728ce88125', 'FTI00411', 'Patchcord OM3 DX (2,0mm) LC/PC-LC/PC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '49500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f2f08-33c0-11ea-aec2-2e728ce88125', 'FTI00412', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 15m Aqua (DTC NET)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '84500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3048-33c0-11ea-aec2-2e728ce88125', 'FTI00413', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 20m Aqua (DTC NET)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '102000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f317e-33c0-11ea-aec2-2e728ce88125', 'FTI00414', 'Patchcord OM3 DX (2,0mm) SC/PC-LC/PC 30m Aqua (YOFC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '137000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f32e6-33c0-11ea-aec2-2e728ce88125', 'FTI00415', 'Patchcord OM4 DX (2,0mm) FC/PC-LC/PC 15m Biru (FTI)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '84500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3610-33c0-11ea-aec2-2e728ce88125', 'FTI00416', 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 10m Biru (FTI)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '67000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f38fe-33c0-11ea-aec2-2e728ce88125', 'FTI00417', 'Patchcord OM4 DX (2,0mm) LC/PC-LC/PC 20m Biru (FTI)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '102000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3a5c-33c0-11ea-aec2-2e728ce88125', 'FTI00418', 'Patchcord Outdoor DX SC/APC-SC/APC 100m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3b9c-33c0-11ea-aec2-2e728ce88125', 'FTI00419', 'Patchcord Outdoor SC/UPC-SC/UPC 5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '80000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3cd2-33c0-11ea-aec2-2e728ce88125', 'FTI00420', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f3eb2-33c0-11ea-aec2-2e728ce88125', 'FTI00421', 'Patchcord SM DX (2,0mm) FC/UPC-FC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f4006-33c0-11ea-aec2-2e728ce88125', 'FTI00422', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f43e4-33c0-11ea-aec2-2e728ce88125', 'FTI00423', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f45c4-33c0-11ea-aec2-2e728ce88125', 'FTI00424', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f472c-33c0-11ea-aec2-2e728ce88125', 'FTI00425', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '88000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f489e-33c0-11ea-aec2-2e728ce88125', 'FTI00426', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f49de-33c0-11ea-aec2-2e728ce88125', 'FTI00427', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f4b1e-33c0-11ea-aec2-2e728ce88125', 'FTI00428', 'Patchcord SM DX (2,0mm) FC/UPC-LC/UPC 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '47000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f4dc6-33c0-11ea-aec2-2e728ce88125', 'FTI00429', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f4f2e-33c0-11ea-aec2-2e728ce88125', 'FTI00430', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f506e-33c0-11ea-aec2-2e728ce88125', 'FTI00431', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f5262-33c0-11ea-aec2-2e728ce88125', 'FTI00432', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f53ca-33c0-11ea-aec2-2e728ce88125', 'FTI00433', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5d9f550a-33c0-11ea-aec2-2e728ce88125', 'FTI00434', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 25m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '78000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5da1b49b-a5cc-431c-8a9c-3eb5e1ab2402', 'FTI00469', 'Patchcord SM DX (2,0mm) ST/UPC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5df00b8e-3209-40b7-8e29-afdb9831cb48', 'FTI00545', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 50m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '64000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5e28869b-9c6b-4919-80af-c34a7d3d0295', 'FTI00804', 'Pen-type Visual Fault Locator JW 3105A', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '185000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5f12a275-1900-409d-adfe-569983e88fb8', 'FTI00538', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5f1ae7e3-0e8c-45ea-ab18-86f2fb5f3051', 'FTI00472', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('5f8c77ad-966d-47c6-b3c6-e8462e7b18e9', 'FTI00771', 'S Clamp bulat ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('605ef610-c46a-4b94-9b20-0e2ffc75858c', 'FTI00491', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6148167f-95dd-4153-bbdd-dd81c5e25c7e', 'FTI00653', 'Pigtail MM SX LC/PC (2,0mm) 6m (OM1 PVC)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('63b7775e-ddd0-4327-a9ed-b23a47c7336f', 'FTI00596', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('64648f72-2004-49fb-9837-2a06e147f1b3', 'FTI00470', 'Patchcord SM DX (3,0mm) FC/UPC-FC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('64e18761-2e0d-45b2-b287-2386f05df086', 'FTI00707', 'Plastik Clip 20 x 23', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('65c5d544-5fa5-47f1-9cd8-5ae8e0f207ea', 'FTI00610', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('66a074a0-c9cb-422e-a8ea-fca5fd93fb30', 'FTI00665', 'Pigtail SM DX SC/APC (3,0mm) 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('66f40b89-05ee-4fea-99d1-d4334d47cec1', 'FTI00534', 'Patchcord SM SX (2,0mm) FC/UPC-SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('66fd5b68-dfae-4680-90c5-c62f675f7447', 'FTI00627', 'Patchcord SM SX 2,mm SC/UPC-LC/UPC 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '26000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6738cf77-5351-4ea9-831e-9049efe2addb', 'FTI00556', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('67e9b980-232c-4007-a37f-580b3a24e8ed', 'FTI00677', 'Pigtail SM SX LC/UPC (0,9mm) 1,5m WHITE', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('68b03060-fe58-4fee-95ff-35c49e6a2d1c', 'FTI00542', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('68c359d4-afcb-4cf3-ae7d-c7ba0242a614', 'FTI00690', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m  (merah)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('698b6ee4-fdb9-4d0d-80c4-99e76fcf7b95', 'FTI00569', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6a27aaa8-2789-4743-b870-386ca67a9941', 'FTI00443', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6a44254a-ac65-41c7-ad05-b51e605248ed', 'FTI00669', 'Pigtail SM DX SC/UPC (3,0mm) 2m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6b3e0d76-f81f-4e79-9e1b-53df8b83f726', 'FTI00574', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6cca0b3f-588c-42f9-b0b4-e09aa264bf17', 'FTI00790', 'Streching Film / Wrapping uk. 10', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6d3ad0a2-5469-4ecf-b038-80f8e769ebc1', 'FTI00772', 'S Clamp Jepit', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6de3eb99-4883-48d3-9e3f-2ec2b4322172', 'FTI00437', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6e5d9fb4-5d0a-4d4d-afb0-17d0c5700b9f', 'FTI00666', 'Pigtail SM DX SC/UPC (2,0mm) 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '14000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6f1a6b2c-7826-4d3b-95d1-ad868628e69b', 'FTI00594', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('6f98e780-07d8-450d-906d-8fd149d8b65c', 'FTI00815', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '121000.00', '137000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', NULL, '2020-12-13 10:03:33', '2020-12-13 10:03:33'),
('70b3b7e6-229a-4e28-9e2b-42c5e9560bba', 'FTI00705', 'Plastik Clip 17 x 21 mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('70d92af8-90d8-47d9-9b62-5eb444e33e1b', 'FTI00702', 'Pigtail SM SX SC/UPC (3,0mm) 3,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('713d7ca0-273c-4933-b697-4b96c659a94a', 'FTI00442', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('73551cba-bbd2-4263-a662-9d20f501bc43', 'FTI00673', 'Pigtail SM SX FC/UPC (0,9mm) 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('737ee30a-ac08-4b31-9879-6a404e00d56d', 'FTI00466', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7468f19a-171e-40f2-859e-63f9364f8a83', 'FTI00821', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '110000.00', '118000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', NULL, '2020-12-15 12:10:52', '2020-12-15 12:10:52'),
('75074a13-9925-4e22-8164-82a6861ecd09', 'FTI00706', 'Plastik Clip 18 x 18', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7548c690-9f32-4e1d-a4bd-3ff27d68dc8c', 'FTI00611', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7615371d-276c-42b5-a390-0de2c272526b', 'FTI00640', 'Pedestal Besar isi ODP', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('76de87e4-d411-498d-ac5c-b88be329b6d3', 'FTI00609', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('78a7e0bd-9ce5-4448-a7d2-2923de0fe0e0', 'FTI00502', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7b8c932f-739f-47f3-9ec8-18987646c13b', 'FTI00446', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7c159d16-c49e-4c27-8946-8ca035268f26', 'FTI00758', 'Ring Kotak', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7fbc00c3-fb42-46ea-ae0c-309b5edfeefa', 'FTI00791', 'Stripper (Proskit)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('7ff4903b-e774-4de5-a95c-52ea52a00e6b', 'FTI00622', 'Patchcord SM SX 2,mm FC/APC-FC/APC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('80335ddb-bfba-4e0c-8aa4-da13b1c38ae9', 'FTI00678', 'Pigtail SM SX LC/UPC (0,9mm) 1m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('80942d58-992f-4cce-a5a1-8890da609034', 'FTI00479', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('818d8c59-17ca-49bb-bb05-ee0fa0d4a77d', 'FTI00475', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('81f1dfeb-81ed-441e-9091-890847e6c037', 'FTI00497', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('825061bb-e1bc-4a49-bd95-306338997289', 'FTI00438', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('8254ecfe-9e2c-4331-a3cc-0108e97920c0', 'FTI00716', 'PLC Splitter 1:4  SC/UPC (Tente)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '52000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('82ee1ecc-0b39-46ca-9839-ad0ce6e8c932', 'FTI00645', 'Pigtail cable SM 0.9 mm G652D LSZH WHITE', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('83512e63-4284-4317-9109-61f62f9c7733', 'FTI00580', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('838a72ce-5789-459a-a9c6-15337dd9f5fe', 'FTI00694', 'Pigtail SM SX SC/UPC (0,9mm) 1m (kuning)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('83d144fc-4ce8-427c-81c7-d59aedfacc27', 'FTI00747', 'Precon 1 Core SC/UPC-SC/UPC 200M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '156000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('84905d89-c592-40ee-a713-f7448a60465d', 'FTI00604', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('851d304d-f84d-407d-9f40-27cc59148324', 'FTI00752', 'Precon 1 Core SC/UPC-SC/UPC 80M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '97000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('859854f6-41d5-4c7f-9aac-079f06a4d949', 'FTI00601', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('873acffe-3a1b-4dd1-aef9-850b4aef8683', 'FTI00473', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('874f0460-7adb-41ca-97e2-7ad9b32afae0', 'FTI00676', 'Pigtail SM SX LC/UPC (0,9mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('884b5795-b501-4e1e-8975-bccf42460d5e', 'FTI00710', 'Plastik Clip 55 X 50', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('8bb1454c-9626-444f-bdfb-ee25fd4690bc', 'FTI00662', 'Pigtail SM DX FC/UPC (2,0mm) 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('8bb8ec0b-8b04-418b-834e-123623e2fa58', 'FTI00476', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('8be62161-742e-4e99-8b5e-664877ac6b44', 'FTI00554', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('8e5f19d5-700b-4fc8-8198-e8a67a6933b9', 'FTI00646', 'Pigtail cable SM 0.9 mm G652D LSZH yellow ', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('907f38bb-59cb-4921-87f0-1259284711a2', 'FTI00701', 'Pigtail SM SX SC/UPC (3,0mm) 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('90cfdfe4-0187-4a56-84f9-f49a77d782bc', 'FTI00457', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 45m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '128000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('91cd8769-1ee3-4fcf-b3e6-267c2f2ae9ec', 'FTI00505', 'Patchcord SM DX FC/UPC-LC/UPC  (3,mm) 15M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9281cbe9-39d7-4cfd-ab1b-f1c08c13bdd4', 'FTI00566', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('92cf5322-2901-4dd0-b873-7ba5d301e5ca', 'FTI00755', 'Protector Sleeve 60 mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('933f444a-c6d0-4c4e-a929-58fd3296390e', 'FTI00794', 'Stripping Dropwire (Proskit)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('936216c2-fecb-40a5-8ff6-4153ff5442d4', 'FTI00696', 'Pigtail SM SX SC/UPC (0,9mm) 1m Oren', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('93779d49-c61f-4389-ba3d-4b9e2009c00a', 'FTI00635', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 20M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('93cefd45-563b-442e-99d8-b933d5e486c9', 'FTI00668', 'Pigtail SM DX SC/UPC (3,0mm) 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('94863fdc-fde2-43e9-b1dc-1e2264f2a515', 'FTI00540', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('94af9b6b-a844-4080-ace6-4322f3e8454f', 'FTI00803', 'Pen-type Visual Fault Locator AMG', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '185000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('94bf5a12-41d2-4ff0-ae8c-de8da92f6559', 'FTI00813', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '68500.00', '77000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', NULL, '2020-12-13 08:55:55', '2020-12-13 08:55:55'),
('950a1e26-23e4-40a5-9df8-d527d4b5f451', 'FTI00527', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9562caf4-4d9d-4634-be1a-d26007d951f3', 'FTI00492', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('95997247-6840-4dbd-9862-da1e4ec80887', 'FTI00615', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9610371c-192b-4141-a2fb-341a4a7c7398', 'FTI00663', 'Pigtail SM DX FC/UPC (2,0mm) 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('96de82fa-b68d-44ca-8e07-3bc1434ea770', 'FTI00572', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('97f4510c-a8f6-4493-ad08-fb082d0274b0', 'FTI00797', 'Tangga 4,4m AMG (Hitam)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('98b16609-8f93-4d59-a39a-082dc50fab0e', 'FTI00732', 'Polishing Film Mikron D30', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('99416a1a-ce28-4ae0-a598-7ffe7ab44699', 'FTI00496', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9a1d0eed-e2fa-44a5-b794-b5383a8aae3e', 'FTI00685', 'Pigtail SM SX SC/APC (0.9 mm) 3m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9a1d88a1-027b-4a8e-98af-e4caf0308039', 'FTI00624', 'Patchcord SM SX 2,mm FC/UPC-SC/APC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9a37507d-da13-4d8f-80ae-895f892b09ce', 'FTI00459', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 7m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9a380816-6b24-43c1-9289-5de2f3fb64f2', 'FTI00623', 'Patchcord SM SX 2,mm FC/UPC-LC/UPC 20M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9a38d070-6fe0-4b15-b1e2-4676147682e2', 'FTI00586', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9be20941-909e-45f5-9982-966b22b91df3', 'FTI00708', 'Plastik Clip 21 x 24 mm', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9bee7dd4-d774-466b-b0d0-a2be3f5ae5ee', 'FTI00698', 'Pigtail SM SX SC/UPC (2,0mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9c453b4a-cdf9-43bc-80a9-5fd2dd359bcc', 'FTI00734', 'Polishing Film Mipox D3', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9c660ad6-dec4-4418-8f35-df637cfddd06', 'FTI00500', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '88000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9d0e6494-156a-4fed-abf0-9d90ba6a0b89', 'FTI00565', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9d55e710-63df-4329-82c0-ba356de13ddd', 'FTI00795', 'Suspensi ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9dbfe037-bbff-40bf-a9dd-bcb9d3e866a0', 'FTI00549', 'Patchcord SM SX (2,0MM) LC/UPC-SC/UPC 20M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9e67fd6c-a7e2-4d1a-9967-742d3cb2df89', 'FTI00508', 'Patchcord SM DX Out Door LC/UPC-LC/UPC 10m Heat Shrink Kuning', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9f0f142a-114b-4f13-956d-3568e94a5f22', 'FTI00515', 'Patchcord SM DX SC/UPC-LC/UPC (2,mm) 2M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9f6e5418-5716-41c5-8ebb-3a656013b2a9', 'FTI00614', 'Patchcord SM SX (3,0mm) SC/UPC-SC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('9f90e4d2-2d6c-4e45-b88b-56f134be4ffb', 'FTI00591', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a025bd60-fbbe-4f96-a553-f3125b3185e1', 'FTI00511', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Hitam', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a0a81a82-ba7c-4492-bad7-2c02325ca65f', 'FTI00593', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a0d04984-a833-46be-8c70-bafd601588bc', 'FTI00693', 'Pigtail SM SX SC/UPC (0,9mm) 1,5m (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a2087cdf-9738-4d4c-b11f-5216ff28f018', 'FTI00521', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a2c0dfaf-1250-46d7-bf4a-36b2bee06126', 'FTI00588', 'Patchcord SM SX (3,0mm) FC/UPC-SC/APC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a2c97e11-a34c-4929-ab5c-0db4622cd10d', 'FTI00745', 'Precon 1 Core SC/UPC-SC/UPC 100M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a35f643f-add6-4d0a-8be9-9744f10374bc', 'FTI00792', 'Stripper Fis Import', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a55f11a9-6656-49fb-9b3a-11c1c9252013', 'FTI00761', 'Roset 2 Core Polos (Kosongan)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a59c694f-23aa-447e-a292-592a33f055f3', 'FTI00661', 'Pigtail SM DX FC/UPC (2,0mm) 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a616c88c-4667-4a4a-88ae-fac7b11ea119', 'FTI00718', 'PLC Splitter 1:4 W/O connector, white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '28000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a664b27e-9314-4a9b-962a-2d66241ee747', 'FTI00514', 'Patchcord SM DX SC/APC-SC/APC (2,mm) 10M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a7bf0622-aee9-4c04-ace3-d28aa8a2ba63', 'FTI00499', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a7c31df6-b945-4ea8-843e-33bde98ffc70', 'FTI00672', 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a7ff46a8-cfbc-4411-b6df-c82c1190cb8d', 'FTI00551', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a80fb74b-2a5c-4647-9fb1-bf5883ecb84d', 'FTI00704', 'Plastik Clip 13,5 x 14,5', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a80fc727-af3a-4fe0-93a8-9bc0568198af', 'FTI00598', 'Patchcord SM SX (3,0mm) SC/APC-FC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a89fda8d-993f-4178-9f25-719d65573850', 'FTI00444', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a8a14f1d-7443-4a2c-9c4c-8119f07a9176', 'FTI00522', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('a936a120-e334-46cf-9877-f230d0a029d7', 'FTI00468', 'Patchcord SM DX (2,0mm) ST/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ab067a68-1ac9-4338-bd37-4825a4c06d83', 'FTI00650', 'Pigtail MM OM3 (AQUA ) SC/PC 1.5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ac5ba2bc-efea-4d28-ad2f-050a9923894d', 'FTI00546', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ac62a19c-89e9-4e4b-94a3-16eb3fa3ea40', 'FTI00739', 'Precon 1 Core SC/APC-SC/APC 120M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '121000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('afe0d63d-7164-49d8-8488-83c1e5014c27', 'FTI00474', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b044ffa6-edaf-418e-91b9-3dc4131df04e', 'FTI00513', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b0bf3385-b784-48cc-87ed-cf820853fe3d', 'FTI00680', 'Pigtail SM SX LC/UPC (3,0mm) 10m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '20000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b0cb6943-d166-4656-b635-6e353ab91b23', 'FTI00618', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b2105b43-49d8-4317-897e-63bf07787375', 'FTI00699', 'Pigtail SM SX SC/UPC (2,0mm) 2m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b28247d0-1c3f-421c-88f6-daf81b7b4197', 'FTI00664', 'Pigtail SM DX SC/APC (3,0mm) 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b2a5ee77-139b-451a-abae-3f404a39fb65', 'FTI00723', 'PLC Splitter 1:8 SC/UPC (Rainbow)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b2dcd8d9-4f62-49ae-9cef-cc9b3e3d00c4', 'FTI00452', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b38d0037-ccd6-45f5-9536-ab0013d7b002', 'FTI00517', 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 10M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b3dbf294-8fdd-413b-b2d9-44a92c79809d', 'FTI00616', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b48003d4-d410-4607-80f8-4566adfe5dd9', 'FTI00607', 'Patchcord SM SX (3,0mm) SC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b4a0e08b-8b4f-41e7-8882-948daaf6d3a3', 'FTI00605', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56');
INSERT INTO `products` (`id`, `product_barcode`, `name`, `category_id`, `uom_id`, `image`, `supplier_id`, `min_stock`, `base_price`, `sale_price`, `active`, `is_manufacture`, `is_sale`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('b52e7a7a-51f5-47b4-9380-d0396f05b9cc', 'FTI00735', 'Polishing Film Mipox D30', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b577d546-c42c-4e8a-9ef9-3d70d8bb28e2', 'FTI00712', 'PLC Splitter 1:16 , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '145000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b6bcde29-e5fc-49cb-aa1e-7154d0ebb53f', 'FTI00620', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b753fea6-8159-4b24-8159-62d927214485', 'FTI00581', 'Patchcord SM SX (3,0mm) FC/UPC-FC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b78c2923-ba08-4711-8444-9bee04841dd0', 'FTI00537', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b87282e1-0711-442d-9f0b-9af422ac94d0', 'FTI00736', 'Polishing Film Mipox D9', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b8d951e7-fbc2-4f75-afee-9fcceee6eceb', 'FTI00709', 'Plastik Clip 40 X 30', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b90b5eb4-a279-47c2-9472-fc601afe479c', 'FTI00592', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '29000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b96186cd-7f13-487d-bf74-575106d31376', 'FTI00501', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('b9b36732-c249-4df2-a031-f0a21c14657d', 'FTI00464', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ba3745cf-4a31-4f7a-9b64-7b6cd342eca7', 'FTI00529', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bad6a056-1add-4cb9-8625-c79b562faecf', 'FTI00541', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bc09ab9a-f8ea-4a6b-b0c6-f4f8701e7959', 'FTI00498', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bc520efc-5823-4f33-8012-e1ef5591ace3', 'FTI00467', 'Patchcord SM DX (2,0mm) SC/UPC-ST/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bc7e4d93-bc3d-40cb-957f-441d563e6122', 'FTI00751', 'Precon 1 Core SC/UPC-SC/UPC 75M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bd76bef8-460e-42f7-958e-a6b901164968', 'FTI00746', 'Precon 1 Core SC/UPC-SC/UPC 150M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '121000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bd935277-bfa8-4467-a3d1-cd4fb014d080', 'FTI00819', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 150M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '121000.00', '122000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Mirza Rizaldy', NULL, '2020-12-15 11:33:07', '2020-12-15 11:33:07'),
('be3f2689-25b8-47f7-9816-3414e59be632', 'FTI00818', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 100M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', '87000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Mirza Rizaldy', NULL, '2020-12-15 11:30:16', '2020-12-15 11:30:16'),
('be79e0af-e670-4695-868e-82823a7fd9de', 'FTI00724', 'PLC Splitter 1:8 W/O connector , white', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '50000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bf1a910a-9b04-4d75-959f-d576324ec881', 'FTI00463', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '30000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bf1f7816-4191-472f-bba7-9816927e064d', 'FTI00477', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '108000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bf359216-bf1b-4fe1-8144-4e283cfd13d9', 'FTI00644', 'PG 5', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '150000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('bf9f5f1d-5baa-46cf-a369-c135cd1ac2fc', 'FTI00603', 'Patchcord SM SX (3,0mm) SC/APC-SC/APC 4m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '18000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c2219f25-2568-48b6-ad03-f9d934226cb7', 'FTI00682', 'Pigtail SM SX SC/APC (0,9mm) 2m (Putih)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c3afe7fd-faff-45b3-877c-c90e93cdee73', 'FTI00674', 'Pigtail SM SX FC/UPC (2,0mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c45182fa-fae3-4fac-af65-4648664aaf5e', 'FTI00533', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c4786c8e-b26a-4c4d-8c9a-89ed5d0ba5c4', 'FTI00509', 'Patchcord SM DX Out Door SC/UPC-LC/UPC 10m Heat Shrink Kuning', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c49ffd8c-556a-47bf-91d0-76e1dca5b182', 'FTI00769', 'Rosette 2Core GOC Kosongan', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c4ae4929-d6ea-43cb-8772-aec41dc457da', 'FTI00764', 'Roset 4 Core ( abu abu )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c65a6918-f6da-42cd-9563-6c701c7b71c3', 'FTI00686', 'Pigtail SM SX SC/APC (2,0mm) 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c91cce56-d608-4e60-924c-564ae011d0cb', 'FTI00743', 'Precon 1 Core SC/APC-SC/UPC 200M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '156000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('c945a0d7-7c85-445b-bfc2-e8463c980b55', 'FTI00441', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '48000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ca3b8734-416f-4c38-ae27-06aa445c4c46', 'FTI00754', 'Precon 2Core Tanpa Selling SC/UPC-SC/UPC 2M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '40000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ca8808c1-a6b4-47b2-879b-d988c8ad41d5', 'FTI00526', 'Patchcord SM SX (2,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cac3b4e2-b505-411b-a2c6-d213e4a37ab3', 'FTI00786', 'Stainless Band', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cacd3d3b-6221-4b09-9317-2843bd9b0fc4', 'FTI00720', 'PLC Splitter 1:8  SC/APC (Kuning)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('caf4f611-d1e1-4675-980d-080204c9b564', 'FTI00759', 'Roset 2 core ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cafffcf1-dac2-43f7-abc0-32a384bba042', 'FTI00518', 'Patchcord SM DX ST/UPC-LC/UPC (3,mm) 3M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cc4b6b7f-4710-46a0-b958-d52e1aa4a7df', 'FTI00597', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 70m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '104000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cdd7fc5c-edc7-4ef4-ba2c-b7008fca334b', 'FTI00478', 'Patchcord SM DX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cde6e9b4-ad15-4734-8d7d-f4c1726de623', 'FTI00489', 'Patchcord SM DX (3,0mm) SC/UPC-FC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cec013b8-961d-4464-a289-6da2fec82770', 'FTI00557', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cec491f9-6cef-4697-9fc8-ebf851bcf0b1', 'FTI00796', 'Suspensi Corong', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cf02d601-1d27-4dc7-9cff-2074a7c1e6ad', 'FTI00717', 'PLC Splitter 1:4 SC/APC (putih) No brand', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '52000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cfadd0c2-e5a5-4ca2-ba47-f9a83499f279', 'FTI00744', 'Precon 1 Core SC/APC-SC/UPC 75M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cfb66ce2-2e83-4b40-9977-75e91cb6c98f', 'FTI00731', 'Polishing Film Mikron D3', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('cfb90e95-68f9-4cd0-b41a-d8a95d337bc9', 'FTI00568', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d0ef1a6c-cc3f-462b-ad9d-5e6e25710a32', 'FTI00802', 'Testphone Chinoe/Microtest', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d274c87c-12c3-4106-8679-7ff066154f36', 'FTI00555', 'Patchcord SM SX (2,0mm) SC/APC-SC/APC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d282e0c4-5599-45a7-b80d-36fb01d10f54', 'FTI00587', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d3829fea-5f09-45e8-90c6-16b628e6df9f', 'FTI00793', 'Stripper Fis Local', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '42500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d556eca2-61dd-4a8d-8dcf-d1a9de3000d9', 'FTI00639', 'Patchcord SM SX SC/UPC-LC/UPC (2,mm) 1,5M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d6dd0772-93f6-478d-b5aa-1feaba91830f', 'FTI00462', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d78490b7-e743-42fe-ad32-2b8bb30e45a8', 'FTI00688', 'Pigtail SM SX SC/APC (2,0mm) 3m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d8086f7e-ac04-4f53-9b36-43170f105ac8', 'FTI00589', 'Patchcord SM SX (3,0mm) FC/UPC-SC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('d9ea8164-aff7-4501-b2b3-71a7592e7dff', 'FTI00776', 'Slack Support 80cm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('da59bc17-ffaa-4db8-80cc-019de857ad3c', 'FTI00435', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('dad876ca-64c5-4a10-9bc3-3b3480714007', 'FTI00539', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 20m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('db1f1600-d4fc-463e-b91b-e7def726df8f', 'FTI00573', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 1m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '15000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('db1f6192-d365-4837-a20f-1621fd11a32f', 'FTI00629', 'Patchcord SM SX 2.mm LC/UPC-SC/UPC 30M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('db8c2059-3cf8-459f-994d-5120fe1b39db', 'FTI00756', 'Protector sleeve 60mm', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('dcdbaf2c-c5ac-4a4c-8590-2bfa12b370d0', 'FTI00560', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('dd6a729f-e71f-468c-a249-7f7fdaf0c169', 'FTI00768', 'Roset 8 Core Polos', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '18000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ddfbac1f-f946-425a-b7c6-bba1ea8b91c6', 'FTI00748', 'Precon 1 Core SC/UPC-SC/UPC 250M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '191000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('df4c1303-c602-4f30-86da-bacf58d828f5', 'FTI00577', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e0cb30a7-4107-4bbf-9c3e-bf7ba96423c4', 'FTI00817', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 75M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '68500.00', '69500.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'Mirza Rizaldy', NULL, '2020-12-15 11:27:28', '2020-12-15 11:27:28'),
('e1d30add-04a6-4eb3-8d24-3b8757ec32f2', 'FTI00684', 'Pigtail SM SX SC/APC (0,9mm) 2m Oren', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e25831d4-d585-436d-934c-d8a3bff65818', 'FTI00687', 'Pigtail SM SX SC/APC (2,0mm) 2m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e2e1afd3-2198-4229-a5fd-68736a12ad84', 'FTI00567', 'Patchcord SM SX (2,0mm) SC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e32b3f90-a6e7-4257-910a-14c418f1f341', 'FTI00763', 'Roset 2 Core YOFC Tanpa Protector Sleeve,Adapter Sebelah SC/UPC', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '4500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e33db696-9a38-4029-a264-fc422edd171f', 'FTI00683', 'Pigtail SM SX SC/APC (0,9mm) 2m Kuning', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '8000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e35bc4ac-a0b3-4a5c-aad9-73955c209c31', 'FTI00535', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e5081045-c074-47e5-b528-4458f6e055c5', 'FTI00436', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e519137c-ac02-406c-b03e-c75f5c0f89ef', 'FTI00633', 'Patchcord SM SX LC/UPC-FC/UPC (2,mm) 10M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e5ac8a53-3d2b-4e13-8890-0ce0fcea4eb6', 'FTI00523', 'Patchcord SM SX (2,0mm) FC/UPC-FC/UPC 40m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '54000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e69f3002-0491-41ae-8b75-43162db3b29e', 'FTI00670', 'Pigtail SM SX FC/APC (2,0mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e7e5b901-d164-4b1d-aa71-30bdb3542c32', 'FTI00599', 'Patchcord SM SX (3,0mm) SC/APC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e80b16c8-81cf-41af-8206-76edbc1e39f0', 'FTI00721', 'PLC Splitter 1:8 SC/UPC (Kuning) Ryutelco)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '75000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e863ed89-530f-4632-bee1-154d6d2ed205', 'FTI00777', 'SOC LC/APC ( Belum Terkupas )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('e86d8046-da40-47b2-b116-f59166459e43', 'FTI00445', 'Patchcord SM DX (2,0mm) SC/UPC-FC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ea953c50-c4fe-498a-9790-12c6747ac0ed', 'FTI00559', 'Patchcord SM SX (2,0mm) SC/APC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('eaa3415b-bda9-4c0c-b164-5dbc42aa31d2', 'FTI00590', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ebecb56a-5c1b-4693-a95b-192709642365', 'FTI00812', 'Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '50000.00', '57000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', 'adminsales2', '2020-12-13 08:52:03', '2020-12-14 10:16:31'),
('ec263257-4f06-4cbf-b711-4e21e96d2d44', 'FTI00465', 'Patchcord SM DX (2,0mm) SC/UPC-SC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '34000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ec353038-f6a9-45fc-a01e-2adfe689d728', 'FTI00552', 'Patchcord SM SX (2,0mm) SC/APC-LC/APC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ec548ace-9270-4016-90f9-26aed77f05ab', 'FTI00619', 'Patchcord SM SX (3,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ec73e092-8d33-4b7e-b9af-cc93830a11a3', 'FTI00484', 'Patchcord SM DX (3,0mm) LC/UPC-ST/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ecbde8a1-3112-48aa-ae35-4d0afd1b850e', 'FTI00583', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 10m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '24000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ece57d51-2f1b-4eab-91eb-c5fa43f90716', 'FTI00606', 'Patchcord SM SX (3,0mm) SC/UPC-FC/UPC 3m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '17000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('edac12c5-cee6-47fc-bd9d-8cd23aa344a4', 'FTI00585', 'Patchcord SM SX (3,0mm) FC/UPC-LC/UPC 30m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '44000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ef0bddb0-0664-4a6c-8235-9788faf4221d', 'FTI00726', 'Polish Pad 70/127, seikoh', 6, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '1100000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f1a1ea80-1462-413e-a354-e2baf3e540bb', 'FTI00575', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f3c741df-78f4-4e81-9c2a-b4c7ada8021b', 'FTI00742', 'Precon 1 Core SC/APC-SC/APC 75M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '86000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f52f963d-e4cb-4e07-998a-4bfa33640943', 'FTI00647', 'Pigtail cable SM 0.9 mm G657A2 LSZH WHITE', 1, 2, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f7ce68cc-98e2-4f8c-a9cf-1176c70a4f59', 'FTI00450', 'Patchcord SM DX (2,0mm) SC/UPC-LC/UPC 15m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '58000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f7ef4049-f4b7-441c-8db9-8b5e4d1365e2', 'FTI00548', 'Patchcord SM SX (2,0mm) LC/UPC-LC/UPC 80m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '124000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f7f0bea2-e34e-4683-a3e9-7c7e1c1c9cc0', 'FTI00626', 'Patchcord SM SX 2,mm SC/APC-SC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f9f60f40-1dee-4dbc-8edf-0e1b91dd1ece', 'FTI00671', 'Pigtail SM SX FC/UPC (0,9mm) 1,5m (kuning)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('f9f65618-80e9-4abc-8677-04b83ae0a6e5', 'FTI00512', 'Patchcord SM DX Out Door SC/UPC-SC/UPC 5m Heat Shrink Kuning', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '38000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fa3af189-f48a-41d0-a58a-8debee4a6465', 'FTI00757', 'Rack  6U', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '500000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fa4f5543-e1b9-419e-85da-10b84b572c10', 'FTI00765', 'Roset 4 Core (Tanpa Kardus )', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '9000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fa7343ab-e2e8-4864-bbf9-00d6077c4973', 'FTI00697', 'Pigtail SM SX SC/UPC (0,9mm) 2m (oren)', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fac6298e-6dc1-419b-95a5-3107c21241f2', 'FTI00655', 'Pigtail MM SX SC/PC (0,9mm) 1,5m ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '6000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fae6a736-e742-4dd4-8870-ba44944b46d7', 'FTI00628', 'Patchcord SM SX 2,mm SC/UPC-SC/UPC 1,5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '16000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fb7cbe27-df13-4adf-bd44-ec662077e58e', 'FTI00493', 'Patchcord SM DX (3,0mm) SC/UPC-LC/UPC 2m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '32000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('fbb76058-6eba-4feb-90b1-6520cfd0b461', 'FTI00816', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 50M', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1000.00', '51000.00', '52000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'adminsales2', NULL, '2020-12-13 10:07:56', '2020-12-13 10:07:56'),
('fdd5f3f3-1a18-4b38-926d-8b66de9ed4df', 'FTI00811', 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '10.00', '450000.00', '485000.00', '2b643e21-a94c-4713-93f1-f1cbde6ad633', NULL, 1, 'adminsales2', NULL, '2020-12-12 18:47:44', '2020-12-12 18:47:44'),
('fe461df3-74a0-4dc6-bb56-7c8bf6b14990', 'FTI00799', 'Tangga 4,4m New Power', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '1.00', '700000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 0, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ff2b2df8-2a65-4544-847b-78b4b52c25ab', 'FTI00578', 'Patchcord SM SX (2,0mm) SC/UPC-SC/UPC 5m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '19000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ff311236-4679-4d0e-8445-711b9e97879d', 'FTI00782', 'Splice on connector SC/UPC ', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '7500.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 0, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56'),
('ffbf2d58-7ec4-42d3-8920-9e4e71b8e5c1', 'FTI00595', 'Patchcord SM SX (3,0mm) LC/UPC-LC/UPC 50m', 1, 1, NULL, '21fca1cd-1e44-4895-b877-7f70903c1684', '100.00', '64000.00', NULL, '2b643e21-a94c-4713-93f1-f1cbde6ad633', 1, 1, 'SYSTEM', NULL, '2020-12-11 16:35:56', '2020-12-11 16:35:56');

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
(6, 'Bahan Baku', 'eko', NULL, '2020-01-10 17:26:40', '2020-01-10 17:26:40'),
(7, 'Asset', 'Mirza Rizaldy', NULL, '2020-05-16 07:30:18', '2020-05-16 07:30:18'),
(8, 'Jasa', 'Mirza Rizaldy', NULL, '2020-10-28 23:24:31', '2020-10-28 23:24:31');

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

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `order_ref`, `supplier_id`, `supplier_code`, `billing_address`, `shipping_address`, `delivery_date`, `quantity`, `total`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('cf6613b1-5a2f-4ffa-a84b-988a9f9d0d25', 'PO/FTI/0002/PAS/XII/2020', '79acefdd-92bb-4079-99c3-ba9654250d56', 'PAS', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', 'Jl danau sunter utara. Perkantoran Sunter Permai blok D no 18', '2020-12-02', '10.00', '4250000.00', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Mirza Rizaldy', 'Mirza Rizaldy', '2020-12-13 08:36:05', '2020-12-13 08:37:33'),
('f7584174-3901-4262-b417-650a9eddd243', 'PO/FTI/0001/IOI/XII/2020', 'c840219d-c54c-4da2-b6d7-cd2e99a328fe', 'IOI', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', 'Ruko Orchard Square Blok C-03\r\nJl. terusan kelapa hybrida Jakarta 14140', '2020-12-02', '1.00', '20700000.00', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Mirza Rizaldy', 'Mirza Rizaldy', '2020-12-12 21:10:09', '2020-12-12 21:14:29');

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

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_name`, `quantity`, `uom_id`, `discount`, `purchase_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 'f7584174-3901-4262-b417-650a9eddd243', 'Fiber Fusion Splicer KF4', '1.00', '1', NULL, '20700000.00', '20700000.00', '2020-12-12 21:10:09', '2020-12-12 21:10:09'),
(2, 'cf6613b1-5a2f-4ffa-a84b-988a9f9d0d25', 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', '10.00', '1', NULL, '425000.00', '4250000.00', '2020-12-13 08:36:05', '2020-12-13 08:36:05');

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

--
-- Dumping data for table `receive_purchases`
--

INSERT INTO `receive_purchases` (`id`, `ref_no`, `order_ref`, `supplier_id`, `warehouse`, `status_id`, `received_by`, `created_at`, `updated_at`) VALUES
('c0215820-2af8-48ed-9863-e97af87c1054', 'RP/0002/FTI/XII/2020', 'PO/FTI/0002/PAS/XII/2020', '79acefdd-92bb-4079-99c3-ba9654250d56', 'Gudang Utama', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Mirza Rizaldy', '2020-12-13 08:37:33', '2020-12-13 08:37:33'),
('ecb5f899-002c-4a41-bdc5-cae026115a51', 'RP/0001/FTI/XII/2020', 'PO/FTI/0001/IOI/XII/2020', 'c840219d-c54c-4da2-b6d7-cd2e99a328fe', 'Gudang Utama', '314f31d1-4e50-4ad9-ae8c-65f0f7ebfc43', 'Mirza Rizaldy', '2020-12-12 21:14:29', '2020-12-12 21:14:29');

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

--
-- Dumping data for table `receive_purchase_items`
--

INSERT INTO `receive_purchase_items` (`id`, `receive_id`, `product_name`, `orders`, `received`, `damaged`, `uom_id`, `sub_total`, `created_at`, `updated_at`) VALUES
(2, 'ecb5f899-002c-4a41-bdc5-cae026115a51', 'Fiber Fusion Splicer KF4', '1.00', '1.00', '0.00', 1, '20700000.00', '2020-12-12 21:14:29', '2020-12-12 21:14:29'),
(3, 'c0215820-2af8-48ed-9863-e97af87c1054', 'OTB Rack 12 Core SC/UPC Tanpa Pigtail ( PAZ )', '10.00', '10.00', '0.00', 1, '4250000.00', '2020-12-13 08:37:33', '2020-12-13 08:37:33');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `pajak` tinyint(4) DEFAULT NULL,
  `cicilan` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `type`, `month`, `year`, `ref_no`, `created_at`, `updated_at`, `pajak`, `cicilan`) VALUES
(1, 2, 12, 2020, 'ADJ/FTI/000001/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(2, 2, 12, 2020, 'ADJ/FTI/000002/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(3, 2, 12, 2020, 'ADJ/FTI/000003/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(4, 2, 12, 2020, 'ADJ/FTI/000004/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(5, 2, 12, 2020, 'ADJ/FTI/000005/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(6, 2, 12, 2020, 'ADJ/FTI/000006/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(7, 2, 12, 2020, 'ADJ/FTI/000007/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(8, 2, 12, 2020, 'ADJ/FTI/000008/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(9, 2, 12, 2020, 'ADJ/FTI/000009/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(10, 2, 12, 2020, 'ADJ/FTI/000010/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(11, 2, 12, 2020, 'ADJ/FTI/000011/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(12, 2, 12, 2020, 'ADJ/FTI/000012/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(13, 2, 12, 2020, 'ADJ/FTI/000013/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(14, 2, 12, 2020, 'ADJ/FTI/000014/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(15, 2, 12, 2020, 'ADJ/FTI/000015/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(16, 2, 12, 2020, 'ADJ/FTI/000016/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(17, 2, 12, 2020, 'ADJ/FTI/000017/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(18, 2, 12, 2020, 'ADJ/FTI/000018/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(19, 2, 12, 2020, 'ADJ/FTI/000019/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(20, 2, 12, 2020, 'ADJ/FTI/000020/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(21, 2, 12, 2020, 'ADJ/FTI/000021/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(22, 2, 12, 2020, 'ADJ/FTI/000022/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(23, 2, 12, 2020, 'ADJ/FTI/000023/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(24, 2, 12, 2020, 'ADJ/FTI/000024/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(25, 2, 12, 2020, 'ADJ/FTI/000025/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(26, 2, 12, 2020, 'ADJ/FTI/000026/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(27, 2, 12, 2020, 'ADJ/FTI/000027/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(28, 2, 12, 2020, 'ADJ/FTI/000028/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(29, 2, 12, 2020, 'ADJ/FTI/000029/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(30, 2, 12, 2020, 'ADJ/FTI/000030/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(31, 2, 12, 2020, 'ADJ/FTI/000031/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(32, 2, 12, 2020, 'ADJ/FTI/000032/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(33, 2, 12, 2020, 'ADJ/FTI/000033/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(34, 2, 12, 2020, 'ADJ/FTI/000034/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(35, 2, 12, 2020, 'ADJ/FTI/000035/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(36, 2, 12, 2020, 'ADJ/FTI/000036/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(37, 2, 12, 2020, 'ADJ/FTI/000037/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(38, 2, 12, 2020, 'ADJ/FTI/000038/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(39, 2, 12, 2020, 'ADJ/FTI/000039/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(40, 2, 12, 2020, 'ADJ/FTI/000040/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(41, 2, 12, 2020, 'ADJ/FTI/000041/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(42, 2, 12, 2020, 'ADJ/FTI/000042/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(43, 2, 12, 2020, 'ADJ/FTI/000043/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(44, 2, 12, 2020, 'ADJ/FTI/000044/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(45, 2, 12, 2020, 'ADJ/FTI/000045/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(46, 2, 12, 2020, 'ADJ/FTI/000046/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(47, 2, 12, 2020, 'ADJ/FTI/000047/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(48, 2, 12, 2020, 'ADJ/FTI/000048/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(49, 2, 12, 2020, 'ADJ/FTI/000049/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(50, 2, 12, 2020, 'ADJ/FTI/000050/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(51, 2, 12, 2020, 'ADJ/FTI/000051/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(52, 2, 12, 2020, 'ADJ/FTI/000052/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(53, 2, 12, 2020, 'ADJ/FTI/000053/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(54, 2, 12, 2020, 'ADJ/FTI/000054/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(55, 2, 12, 2020, 'ADJ/FTI/000055/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(56, 2, 12, 2020, 'ADJ/FTI/000056/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(57, 2, 12, 2020, 'ADJ/FTI/000057/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(58, 2, 12, 2020, 'ADJ/FTI/000058/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(59, 2, 12, 2020, 'ADJ/FTI/000059/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(60, 2, 12, 2020, 'ADJ/FTI/000060/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(61, 2, 12, 2020, 'ADJ/FTI/000061/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(62, 2, 12, 2020, 'ADJ/FTI/000062/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(63, 2, 12, 2020, 'ADJ/FTI/000063/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(64, 2, 12, 2020, 'ADJ/FTI/000064/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(65, 2, 12, 2020, 'ADJ/FTI/000065/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(66, 2, 12, 2020, 'ADJ/FTI/000066/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(67, 2, 12, 2020, 'ADJ/FTI/000067/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(68, 2, 12, 2020, 'ADJ/FTI/000068/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(69, 2, 12, 2020, 'ADJ/FTI/000069/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(70, 2, 12, 2020, 'ADJ/FTI/000070/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(71, 2, 12, 2020, 'ADJ/FTI/000071/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(72, 2, 12, 2020, 'ADJ/FTI/000072/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(73, 2, 12, 2020, 'ADJ/FTI/000073/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(74, 2, 12, 2020, 'ADJ/FTI/000074/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(75, 2, 12, 2020, 'ADJ/FTI/000075/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(76, 2, 12, 2020, 'ADJ/FTI/000076/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(77, 2, 12, 2020, 'ADJ/FTI/000077/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(78, 2, 12, 2020, 'ADJ/FTI/000078/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(79, 2, 12, 2020, 'ADJ/FTI/000079/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(80, 2, 12, 2020, 'ADJ/FTI/000080/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(81, 2, 12, 2020, 'ADJ/FTI/000081/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(82, 2, 12, 2020, 'ADJ/FTI/000082/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(83, 2, 12, 2020, 'ADJ/FTI/000083/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(84, 2, 12, 2020, 'ADJ/FTI/000084/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(85, 2, 12, 2020, 'ADJ/FTI/000085/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(86, 2, 12, 2020, 'ADJ/FTI/000086/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(87, 2, 12, 2020, 'ADJ/FTI/000087/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(88, 2, 12, 2020, 'ADJ/FTI/000088/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(89, 2, 12, 2020, 'ADJ/FTI/000089/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(90, 2, 12, 2020, 'ADJ/FTI/000090/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(91, 2, 12, 2020, 'ADJ/FTI/000091/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(92, 2, 12, 2020, 'ADJ/FTI/000092/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(93, 2, 12, 2020, 'ADJ/FTI/000093/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(94, 2, 12, 2020, 'ADJ/FTI/000094/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(95, 2, 12, 2020, 'ADJ/FTI/000095/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(96, 2, 12, 2020, 'ADJ/FTI/000096/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(97, 2, 12, 2020, 'ADJ/FTI/000097/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(98, 2, 12, 2020, 'ADJ/FTI/000098/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(99, 2, 12, 2020, 'ADJ/FTI/000099/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(100, 2, 12, 2020, 'ADJ/FTI/000100/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(101, 2, 12, 2020, 'ADJ/FTI/000101/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(102, 2, 12, 2020, 'ADJ/FTI/000102/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(103, 2, 12, 2020, 'ADJ/FTI/000103/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(104, 2, 12, 2020, 'ADJ/FTI/000104/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(105, 2, 12, 2020, 'ADJ/FTI/000105/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(106, 2, 12, 2020, 'ADJ/FTI/000106/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(107, 2, 12, 2020, 'ADJ/FTI/000107/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(108, 2, 12, 2020, 'ADJ/FTI/000108/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(109, 2, 12, 2020, 'ADJ/FTI/000109/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(110, 2, 12, 2020, 'ADJ/FTI/000110/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(111, 2, 12, 2020, 'ADJ/FTI/000111/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(112, 2, 12, 2020, 'ADJ/FTI/000112/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(113, 2, 12, 2020, 'ADJ/FTI/000113/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(114, 2, 12, 2020, 'ADJ/FTI/000114/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(115, 2, 12, 2020, 'ADJ/FTI/000115/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(116, 2, 12, 2020, 'ADJ/FTI/000116/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(117, 2, 12, 2020, 'ADJ/FTI/000117/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(118, 2, 12, 2020, 'ADJ/FTI/000118/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(119, 2, 12, 2020, 'ADJ/FTI/000119/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(120, 2, 12, 2020, 'ADJ/FTI/000120/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(121, 2, 12, 2020, 'ADJ/FTI/000121/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(122, 2, 12, 2020, 'ADJ/FTI/000122/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(123, 2, 12, 2020, 'ADJ/FTI/000123/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(124, 2, 12, 2020, 'ADJ/FTI/000124/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(125, 2, 12, 2020, 'ADJ/FTI/000125/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(126, 2, 12, 2020, 'ADJ/FTI/000126/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(127, 2, 12, 2020, 'ADJ/FTI/000127/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(128, 2, 12, 2020, 'ADJ/FTI/000128/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(129, 2, 12, 2020, 'ADJ/FTI/000129/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(130, 2, 12, 2020, 'ADJ/FTI/000130/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(131, 2, 12, 2020, 'ADJ/FTI/000131/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(132, 2, 12, 2020, 'ADJ/FTI/000132/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(133, 2, 12, 2020, 'ADJ/FTI/000133/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(134, 2, 12, 2020, 'ADJ/FTI/000134/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(135, 2, 12, 2020, 'ADJ/FTI/000135/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(136, 2, 12, 2020, 'ADJ/FTI/000136/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(137, 2, 12, 2020, 'ADJ/FTI/000137/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(138, 2, 12, 2020, 'ADJ/FTI/000138/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(139, 2, 12, 2020, 'ADJ/FTI/000139/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(140, 2, 12, 2020, 'ADJ/FTI/000140/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(141, 2, 12, 2020, 'ADJ/FTI/000141/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(142, 2, 12, 2020, 'ADJ/FTI/000142/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(143, 2, 12, 2020, 'ADJ/FTI/000143/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(144, 2, 12, 2020, 'ADJ/FTI/000144/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(145, 2, 12, 2020, 'ADJ/FTI/000145/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(146, 2, 12, 2020, 'ADJ/FTI/000146/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(147, 2, 12, 2020, 'ADJ/FTI/000147/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(148, 2, 12, 2020, 'ADJ/FTI/000148/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(149, 2, 12, 2020, 'ADJ/FTI/000149/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(150, 2, 12, 2020, 'ADJ/FTI/000150/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(151, 2, 12, 2020, 'ADJ/FTI/000151/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(152, 2, 12, 2020, 'ADJ/FTI/000152/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(153, 2, 12, 2020, 'ADJ/FTI/000153/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(154, 2, 12, 2020, 'ADJ/FTI/000154/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(155, 2, 12, 2020, 'ADJ/FTI/000155/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(156, 2, 12, 2020, 'ADJ/FTI/000156/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(157, 2, 12, 2020, 'ADJ/FTI/000157/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(158, 2, 12, 2020, 'ADJ/FTI/000158/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(159, 2, 12, 2020, 'ADJ/FTI/000159/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(160, 2, 12, 2020, 'ADJ/FTI/000160/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(161, 2, 12, 2020, 'ADJ/FTI/000161/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(162, 2, 12, 2020, 'ADJ/FTI/000162/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(163, 2, 12, 2020, 'ADJ/FTI/000163/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(164, 2, 12, 2020, 'ADJ/FTI/000164/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(165, 2, 12, 2020, 'ADJ/FTI/000165/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(166, 2, 12, 2020, 'ADJ/FTI/000166/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(167, 2, 12, 2020, 'ADJ/FTI/000167/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(168, 2, 12, 2020, 'ADJ/FTI/000168/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(169, 2, 12, 2020, 'ADJ/FTI/000169/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(170, 2, 12, 2020, 'ADJ/FTI/000170/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(171, 2, 12, 2020, 'ADJ/FTI/000171/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(172, 2, 12, 2020, 'ADJ/FTI/000172/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(173, 2, 12, 2020, 'ADJ/FTI/000173/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(174, 2, 12, 2020, 'ADJ/FTI/000174/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(175, 2, 12, 2020, 'ADJ/FTI/000175/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(176, 2, 12, 2020, 'ADJ/FTI/000176/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(177, 2, 12, 2020, 'ADJ/FTI/000177/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(178, 2, 12, 2020, 'ADJ/FTI/000178/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(179, 2, 12, 2020, 'ADJ/FTI/000179/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(180, 2, 12, 2020, 'ADJ/FTI/000180/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(181, 2, 12, 2020, 'ADJ/FTI/000181/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(182, 2, 12, 2020, 'ADJ/FTI/000182/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(183, 2, 12, 2020, 'ADJ/FTI/000183/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(184, 2, 12, 2020, 'ADJ/FTI/000184/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(185, 2, 12, 2020, 'ADJ/FTI/000185/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(186, 2, 12, 2020, 'ADJ/FTI/000186/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(187, 2, 12, 2020, 'ADJ/FTI/000187/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(188, 2, 12, 2020, 'ADJ/FTI/000188/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(189, 2, 12, 2020, 'ADJ/FTI/000189/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(190, 2, 12, 2020, 'ADJ/FTI/000190/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(191, 2, 12, 2020, 'ADJ/FTI/000191/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(192, 2, 12, 2020, 'ADJ/FTI/000192/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(193, 2, 12, 2020, 'ADJ/FTI/000193/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(194, 2, 12, 2020, 'ADJ/FTI/000194/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(195, 2, 12, 2020, 'ADJ/FTI/000195/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(196, 2, 12, 2020, 'ADJ/FTI/000196/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(197, 2, 12, 2020, 'ADJ/FTI/000197/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(198, 2, 12, 2020, 'ADJ/FTI/000198/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(199, 2, 12, 2020, 'ADJ/FTI/000199/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(200, 2, 12, 2020, 'ADJ/FTI/000200/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(201, 2, 12, 2020, 'ADJ/FTI/000201/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(202, 2, 12, 2020, 'ADJ/FTI/000202/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(203, 2, 12, 2020, 'ADJ/FTI/000203/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(204, 2, 12, 2020, 'ADJ/FTI/000204/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(205, 2, 12, 2020, 'ADJ/FTI/000205/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(206, 2, 12, 2020, 'ADJ/FTI/000206/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(207, 2, 12, 2020, 'ADJ/FTI/000207/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(208, 2, 12, 2020, 'ADJ/FTI/000208/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(209, 2, 12, 2020, 'ADJ/FTI/000209/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(210, 2, 12, 2020, 'ADJ/FTI/000210/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(211, 2, 12, 2020, 'ADJ/FTI/000211/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(212, 2, 12, 2020, 'ADJ/FTI/000212/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(213, 2, 12, 2020, 'ADJ/FTI/000213/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(214, 2, 12, 2020, 'ADJ/FTI/000214/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(215, 2, 12, 2020, 'ADJ/FTI/000215/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(216, 2, 12, 2020, 'ADJ/FTI/000216/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(217, 2, 12, 2020, 'ADJ/FTI/000217/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(218, 2, 12, 2020, 'ADJ/FTI/000218/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(219, 2, 12, 2020, 'ADJ/FTI/000219/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(220, 2, 12, 2020, 'ADJ/FTI/000220/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(221, 2, 12, 2020, 'ADJ/FTI/000221/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(222, 2, 12, 2020, 'ADJ/FTI/000222/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(223, 2, 12, 2020, 'ADJ/FTI/000223/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(224, 2, 12, 2020, 'ADJ/FTI/000224/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(225, 2, 12, 2020, 'ADJ/FTI/000225/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(226, 2, 12, 2020, 'ADJ/FTI/000226/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(227, 2, 12, 2020, 'ADJ/FTI/000227/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(228, 2, 12, 2020, 'ADJ/FTI/000228/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(229, 2, 12, 2020, 'ADJ/FTI/000229/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(230, 2, 12, 2020, 'ADJ/FTI/000230/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(231, 2, 12, 2020, 'ADJ/FTI/000231/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(232, 2, 12, 2020, 'ADJ/FTI/000232/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(233, 2, 12, 2020, 'ADJ/FTI/000233/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(234, 2, 12, 2020, 'ADJ/FTI/000234/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(235, 2, 12, 2020, 'ADJ/FTI/000235/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(236, 2, 12, 2020, 'ADJ/FTI/000236/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(237, 2, 12, 2020, 'ADJ/FTI/000237/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(238, 2, 12, 2020, 'ADJ/FTI/000238/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(239, 2, 12, 2020, 'ADJ/FTI/000239/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(240, 2, 12, 2020, 'ADJ/FTI/000240/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(241, 2, 12, 2020, 'ADJ/FTI/000241/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(242, 2, 12, 2020, 'ADJ/FTI/000242/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(243, 2, 12, 2020, 'ADJ/FTI/000243/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(244, 2, 12, 2020, 'ADJ/FTI/000244/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(245, 2, 12, 2020, 'ADJ/FTI/000245/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(246, 2, 12, 2020, 'ADJ/FTI/000246/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(247, 2, 12, 2020, 'ADJ/FTI/000247/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(248, 2, 12, 2020, 'ADJ/FTI/000248/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(249, 2, 12, 2020, 'ADJ/FTI/000249/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(250, 2, 12, 2020, 'ADJ/FTI/000250/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(251, 2, 12, 2020, 'ADJ/FTI/000251/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(252, 2, 12, 2020, 'ADJ/FTI/000252/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(253, 2, 12, 2020, 'ADJ/FTI/000253/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(254, 2, 12, 2020, 'ADJ/FTI/000254/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(255, 2, 12, 2020, 'ADJ/FTI/000255/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(256, 2, 12, 2020, 'ADJ/FTI/000256/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(257, 2, 12, 2020, 'ADJ/FTI/000257/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(258, 2, 12, 2020, 'ADJ/FTI/000258/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(259, 2, 12, 2020, 'ADJ/FTI/000259/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(260, 2, 12, 2020, 'ADJ/FTI/000260/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(261, 2, 12, 2020, 'ADJ/FTI/000261/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(262, 2, 12, 2020, 'ADJ/FTI/000262/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(263, 2, 12, 2020, 'ADJ/FTI/000263/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(264, 2, 12, 2020, 'ADJ/FTI/000264/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(265, 2, 12, 2020, 'ADJ/FTI/000265/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(266, 2, 12, 2020, 'ADJ/FTI/000266/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(267, 2, 12, 2020, 'ADJ/FTI/000267/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(268, 2, 12, 2020, 'ADJ/FTI/000268/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(269, 2, 12, 2020, 'ADJ/FTI/000269/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(270, 2, 12, 2020, 'ADJ/FTI/000270/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(271, 2, 12, 2020, 'ADJ/FTI/000271/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(272, 2, 12, 2020, 'ADJ/FTI/000272/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(273, 2, 12, 2020, 'ADJ/FTI/000273/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(274, 2, 12, 2020, 'ADJ/FTI/000274/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(275, 2, 12, 2020, 'ADJ/FTI/000275/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(276, 2, 12, 2020, 'ADJ/FTI/000276/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(277, 2, 12, 2020, 'ADJ/FTI/000277/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(278, 2, 12, 2020, 'ADJ/FTI/000278/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(279, 2, 12, 2020, 'ADJ/FTI/000279/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(280, 2, 12, 2020, 'ADJ/FTI/000280/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(281, 2, 12, 2020, 'ADJ/FTI/000281/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(282, 2, 12, 2020, 'ADJ/FTI/000282/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(283, 2, 12, 2020, 'ADJ/FTI/000283/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(284, 2, 12, 2020, 'ADJ/FTI/000284/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(285, 2, 12, 2020, 'ADJ/FTI/000285/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(286, 2, 12, 2020, 'ADJ/FTI/000286/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(287, 2, 12, 2020, 'ADJ/FTI/000287/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(288, 2, 12, 2020, 'ADJ/FTI/000288/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(289, 2, 12, 2020, 'ADJ/FTI/000289/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(290, 2, 12, 2020, 'ADJ/FTI/000290/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(291, 2, 12, 2020, 'ADJ/FTI/000291/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(292, 2, 12, 2020, 'ADJ/FTI/000292/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(293, 2, 12, 2020, 'ADJ/FTI/000293/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(294, 2, 12, 2020, 'ADJ/FTI/000294/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(295, 2, 12, 2020, 'ADJ/FTI/000295/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(296, 2, 12, 2020, 'ADJ/FTI/000296/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(297, 2, 12, 2020, 'ADJ/FTI/000297/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(298, 2, 12, 2020, 'ADJ/FTI/000298/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(299, 2, 12, 2020, 'ADJ/FTI/000299/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(300, 2, 12, 2020, 'ADJ/FTI/000300/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(301, 2, 12, 2020, 'ADJ/FTI/000301/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(302, 2, 12, 2020, 'ADJ/FTI/000302/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(303, 2, 12, 2020, 'ADJ/FTI/000303/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(304, 2, 12, 2020, 'ADJ/FTI/000304/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(305, 2, 12, 2020, 'ADJ/FTI/000305/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(306, 2, 12, 2020, 'ADJ/FTI/000306/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(307, 2, 12, 2020, 'ADJ/FTI/000307/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(308, 2, 12, 2020, 'ADJ/FTI/000308/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(309, 2, 12, 2020, 'ADJ/FTI/000309/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(310, 2, 12, 2020, 'ADJ/FTI/000310/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(311, 2, 12, 2020, 'ADJ/FTI/000311/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(312, 2, 12, 2020, 'ADJ/FTI/000312/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(313, 2, 12, 2020, 'ADJ/FTI/000313/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(314, 2, 12, 2020, 'ADJ/FTI/000314/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(315, 2, 12, 2020, 'ADJ/FTI/000315/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(316, 2, 12, 2020, 'ADJ/FTI/000316/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(317, 2, 12, 2020, 'ADJ/FTI/000317/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(318, 2, 12, 2020, 'ADJ/FTI/000318/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(319, 2, 12, 2020, 'ADJ/FTI/000319/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(320, 2, 12, 2020, 'ADJ/FTI/000320/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(321, 2, 12, 2020, 'ADJ/FTI/000321/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(322, 2, 12, 2020, 'ADJ/FTI/000322/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(323, 2, 12, 2020, 'ADJ/FTI/000323/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(324, 2, 12, 2020, 'ADJ/FTI/000324/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(325, 2, 12, 2020, 'ADJ/FTI/000325/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(326, 2, 12, 2020, 'ADJ/FTI/000326/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(327, 2, 12, 2020, 'ADJ/FTI/000327/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(328, 2, 12, 2020, 'ADJ/FTI/000328/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(329, 2, 12, 2020, 'ADJ/FTI/000329/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(330, 2, 12, 2020, 'ADJ/FTI/000330/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(331, 2, 12, 2020, 'ADJ/FTI/000331/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(332, 2, 12, 2020, 'ADJ/FTI/000332/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(333, 2, 12, 2020, 'ADJ/FTI/000333/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(334, 2, 12, 2020, 'ADJ/FTI/000334/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(335, 2, 12, 2020, 'ADJ/FTI/000335/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(336, 2, 12, 2020, 'ADJ/FTI/000336/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(337, 2, 12, 2020, 'ADJ/FTI/000337/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(338, 2, 12, 2020, 'ADJ/FTI/000338/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(339, 2, 12, 2020, 'ADJ/FTI/000339/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(340, 2, 12, 2020, 'ADJ/FTI/000340/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(341, 2, 12, 2020, 'ADJ/FTI/000341/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(342, 2, 12, 2020, 'ADJ/FTI/000342/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(343, 2, 12, 2020, 'ADJ/FTI/000343/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(344, 2, 12, 2020, 'ADJ/FTI/000344/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(345, 2, 12, 2020, 'ADJ/FTI/000345/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(346, 2, 12, 2020, 'ADJ/FTI/000346/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(347, 2, 12, 2020, 'ADJ/FTI/000347/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(348, 2, 12, 2020, 'ADJ/FTI/000348/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(349, 2, 12, 2020, 'ADJ/FTI/000349/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(350, 2, 12, 2020, 'ADJ/FTI/000350/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(351, 2, 12, 2020, 'ADJ/FTI/000351/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(352, 2, 12, 2020, 'ADJ/FTI/000352/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(353, 2, 12, 2020, 'ADJ/FTI/000353/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(354, 2, 12, 2020, 'ADJ/FTI/000354/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(355, 2, 12, 2020, 'ADJ/FTI/000355/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(356, 2, 12, 2020, 'ADJ/FTI/000356/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(357, 2, 12, 2020, 'ADJ/FTI/000357/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(358, 2, 12, 2020, 'ADJ/FTI/000358/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(359, 2, 12, 2020, 'ADJ/FTI/000359/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(360, 2, 12, 2020, 'ADJ/FTI/000360/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(361, 2, 12, 2020, 'ADJ/FTI/000361/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(362, 2, 12, 2020, 'ADJ/FTI/000362/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(363, 2, 12, 2020, 'ADJ/FTI/000363/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(364, 2, 12, 2020, 'ADJ/FTI/000364/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(365, 2, 12, 2020, 'ADJ/FTI/000365/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(366, 2, 12, 2020, 'ADJ/FTI/000366/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(367, 2, 12, 2020, 'ADJ/FTI/000367/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(368, 2, 12, 2020, 'ADJ/FTI/000368/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(369, 2, 12, 2020, 'ADJ/FTI/000369/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(370, 2, 12, 2020, 'ADJ/FTI/000370/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(371, 2, 12, 2020, 'ADJ/FTI/000371/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(372, 2, 12, 2020, 'ADJ/FTI/000372/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(373, 2, 12, 2020, 'ADJ/FTI/000373/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(374, 2, 12, 2020, 'ADJ/FTI/000374/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(375, 2, 12, 2020, 'ADJ/FTI/000375/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(376, 2, 12, 2020, 'ADJ/FTI/000376/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(377, 2, 12, 2020, 'ADJ/FTI/000377/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(378, 2, 12, 2020, 'ADJ/FTI/000378/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(379, 2, 12, 2020, 'ADJ/FTI/000379/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(380, 2, 12, 2020, 'ADJ/FTI/000380/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(381, 2, 12, 2020, 'ADJ/FTI/000381/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(382, 2, 12, 2020, 'ADJ/FTI/000382/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(383, 2, 12, 2020, 'ADJ/FTI/000383/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(384, 2, 12, 2020, 'ADJ/FTI/000384/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(385, 2, 12, 2020, 'ADJ/FTI/000385/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(386, 2, 12, 2020, 'ADJ/FTI/000386/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(387, 2, 12, 2020, 'ADJ/FTI/000387/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(388, 2, 12, 2020, 'ADJ/FTI/000388/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(389, 2, 12, 2020, 'ADJ/FTI/000389/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(390, 2, 12, 2020, 'ADJ/FTI/000390/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(391, 2, 12, 2020, 'ADJ/FTI/000391/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(392, 2, 12, 2020, 'ADJ/FTI/000392/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(393, 2, 12, 2020, 'ADJ/FTI/000393/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(394, 2, 12, 2020, 'ADJ/FTI/000394/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(395, 2, 12, 2020, 'ADJ/FTI/000395/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(396, 2, 12, 2020, 'ADJ/FTI/000396/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(397, 2, 12, 2020, 'ADJ/FTI/000397/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(398, 2, 12, 2020, 'ADJ/FTI/000398/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(399, 2, 12, 2020, 'ADJ/FTI/000399/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(400, 2, 12, 2020, 'ADJ/FTI/000400/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(401, 2, 12, 2020, 'ADJ/FTI/000401/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(402, 2, 12, 2020, 'ADJ/FTI/000402/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(403, 2, 12, 2020, 'ADJ/FTI/000403/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(404, 2, 12, 2020, 'ADJ/FTI/000404/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(405, 2, 12, 2020, 'ADJ/FTI/000405/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(406, 2, 12, 2020, 'ADJ/FTI/000406/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(407, 2, 12, 2020, 'ADJ/FTI/000407/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(408, 2, 12, 2020, 'ADJ/FTI/000408/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(409, 2, 12, 2020, 'ADJ/FTI/000409/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(410, 2, 12, 2020, 'ADJ/FTI/000410/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(411, 2, 12, 2020, 'ADJ/FTI/000411/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(412, 2, 12, 2020, 'ADJ/FTI/000412/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(413, 2, 12, 2020, 'ADJ/FTI/000413/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(414, 2, 12, 2020, 'ADJ/FTI/000414/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(415, 2, 12, 2020, 'ADJ/FTI/000415/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(416, 2, 12, 2020, 'ADJ/FTI/000416/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(417, 2, 12, 2020, 'ADJ/FTI/000417/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(418, 2, 12, 2020, 'ADJ/FTI/000418/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(419, 2, 12, 2020, 'ADJ/FTI/000419/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(420, 2, 12, 2020, 'ADJ/FTI/000420/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(421, 2, 12, 2020, 'ADJ/FTI/000421/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(422, 2, 12, 2020, 'ADJ/FTI/000422/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(423, 2, 12, 2020, 'ADJ/FTI/000423/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(424, 2, 12, 2020, 'ADJ/FTI/000424/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(425, 2, 12, 2020, 'ADJ/FTI/000425/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(426, 2, 12, 2020, 'ADJ/FTI/000426/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(427, 2, 12, 2020, 'ADJ/FTI/000427/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(428, 2, 12, 2020, 'ADJ/FTI/000428/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(429, 2, 12, 2020, 'ADJ/FTI/000429/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(430, 2, 12, 2020, 'ADJ/FTI/000430/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(431, 2, 12, 2020, 'ADJ/FTI/000431/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(432, 2, 12, 2020, 'ADJ/FTI/000432/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(433, 2, 12, 2020, 'ADJ/FTI/000433/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(434, 2, 12, 2020, 'ADJ/FTI/000434/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(435, 2, 12, 2020, 'ADJ/FTI/000435/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(436, 2, 12, 2020, 'ADJ/FTI/000436/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(437, 2, 12, 2020, 'ADJ/FTI/000437/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(438, 2, 12, 2020, 'ADJ/FTI/000438/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(439, 2, 12, 2020, 'ADJ/FTI/000439/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(440, 2, 12, 2020, 'ADJ/FTI/000440/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(441, 2, 12, 2020, 'ADJ/FTI/000441/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(442, 2, 12, 2020, 'ADJ/FTI/000442/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(443, 2, 12, 2020, 'ADJ/FTI/000443/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(444, 2, 12, 2020, 'ADJ/FTI/000444/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(445, 2, 12, 2020, 'ADJ/FTI/000445/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(446, 2, 12, 2020, 'ADJ/FTI/000446/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(447, 2, 12, 2020, 'ADJ/FTI/000447/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(448, 2, 12, 2020, 'ADJ/FTI/000448/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(449, 2, 12, 2020, 'ADJ/FTI/000449/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(450, 2, 12, 2020, 'ADJ/FTI/000450/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(451, 2, 12, 2020, 'ADJ/FTI/000451/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(452, 2, 12, 2020, 'ADJ/FTI/000452/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(453, 2, 12, 2020, 'ADJ/FTI/000453/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(454, 2, 12, 2020, 'ADJ/FTI/000454/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(455, 2, 12, 2020, 'ADJ/FTI/000455/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(456, 2, 12, 2020, 'ADJ/FTI/000456/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(457, 2, 12, 2020, 'ADJ/FTI/000457/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(458, 2, 12, 2020, 'ADJ/FTI/000458/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(459, 2, 12, 2020, 'ADJ/FTI/000459/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(460, 2, 12, 2020, 'ADJ/FTI/000460/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(461, 2, 12, 2020, 'ADJ/FTI/000461/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(462, 2, 12, 2020, 'ADJ/FTI/000462/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(463, 2, 12, 2020, 'ADJ/FTI/000463/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(464, 2, 12, 2020, 'ADJ/FTI/000464/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(465, 2, 12, 2020, 'ADJ/FTI/000465/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(466, 2, 12, 2020, 'ADJ/FTI/000466/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(467, 2, 12, 2020, 'ADJ/FTI/000467/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(468, 2, 12, 2020, 'ADJ/FTI/000468/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(469, 2, 12, 2020, 'ADJ/FTI/000469/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(470, 2, 12, 2020, 'ADJ/FTI/000470/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(471, 2, 12, 2020, 'ADJ/FTI/000471/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(472, 2, 12, 2020, 'ADJ/FTI/000472/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(473, 2, 12, 2020, 'ADJ/FTI/000473/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(474, 2, 12, 2020, 'ADJ/FTI/000474/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(475, 2, 12, 2020, 'ADJ/FTI/000475/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(476, 2, 12, 2020, 'ADJ/FTI/000476/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(477, 2, 12, 2020, 'ADJ/FTI/000477/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(478, 2, 12, 2020, 'ADJ/FTI/000478/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(479, 2, 12, 2020, 'ADJ/FTI/000479/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(480, 2, 12, 2020, 'ADJ/FTI/000480/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(481, 2, 12, 2020, 'ADJ/FTI/000481/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(482, 2, 12, 2020, 'ADJ/FTI/000482/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(483, 2, 12, 2020, 'ADJ/FTI/000483/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(484, 2, 12, 2020, 'ADJ/FTI/000484/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(485, 2, 12, 2020, 'ADJ/FTI/000485/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL);
INSERT INTO `references` (`id`, `type`, `month`, `year`, `ref_no`, `created_at`, `updated_at`, `pajak`, `cicilan`) VALUES
(486, 2, 12, 2020, 'ADJ/FTI/000486/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(487, 2, 12, 2020, 'ADJ/FTI/000487/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(488, 2, 12, 2020, 'ADJ/FTI/000488/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(489, 2, 12, 2020, 'ADJ/FTI/000489/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(490, 2, 12, 2020, 'ADJ/FTI/000490/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(491, 2, 12, 2020, 'ADJ/FTI/000491/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(492, 2, 12, 2020, 'ADJ/FTI/000492/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(493, 2, 12, 2020, 'ADJ/FTI/000493/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(494, 2, 12, 2020, 'ADJ/FTI/000494/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(495, 2, 12, 2020, 'ADJ/FTI/000495/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(496, 2, 12, 2020, 'ADJ/FTI/000496/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(497, 2, 12, 2020, 'ADJ/FTI/000497/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(498, 2, 12, 2020, 'ADJ/FTI/000498/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(499, 2, 12, 2020, 'ADJ/FTI/000499/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(500, 2, 12, 2020, 'ADJ/FTI/000500/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(501, 2, 12, 2020, 'ADJ/FTI/000501/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(502, 2, 12, 2020, 'ADJ/FTI/000502/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(503, 2, 12, 2020, 'ADJ/FTI/000503/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(504, 2, 12, 2020, 'ADJ/FTI/000504/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(505, 2, 12, 2020, 'ADJ/FTI/000505/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(506, 2, 12, 2020, 'ADJ/FTI/000506/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(507, 2, 12, 2020, 'ADJ/FTI/000507/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(508, 2, 12, 2020, 'ADJ/FTI/000508/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(509, 2, 12, 2020, 'ADJ/FTI/000509/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(510, 2, 12, 2020, 'ADJ/FTI/000510/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(511, 2, 12, 2020, 'ADJ/FTI/000511/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(512, 2, 12, 2020, 'ADJ/FTI/000512/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(513, 2, 12, 2020, 'ADJ/FTI/000513/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(514, 2, 12, 2020, 'ADJ/FTI/000514/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(515, 2, 12, 2020, 'ADJ/FTI/000515/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(516, 2, 12, 2020, 'ADJ/FTI/000516/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(517, 2, 12, 2020, 'ADJ/FTI/000517/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(518, 2, 12, 2020, 'ADJ/FTI/000518/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(519, 2, 12, 2020, 'ADJ/FTI/000519/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(520, 2, 12, 2020, 'ADJ/FTI/000520/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(521, 2, 12, 2020, 'ADJ/FTI/000521/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(522, 2, 12, 2020, 'ADJ/FTI/000522/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(523, 2, 12, 2020, 'ADJ/FTI/000523/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(524, 2, 12, 2020, 'ADJ/FTI/000524/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(525, 2, 12, 2020, 'ADJ/FTI/000525/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(526, 2, 12, 2020, 'ADJ/FTI/000526/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(527, 2, 12, 2020, 'ADJ/FTI/000527/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(528, 2, 12, 2020, 'ADJ/FTI/000528/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(529, 2, 12, 2020, 'ADJ/FTI/000529/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(530, 2, 12, 2020, 'ADJ/FTI/000530/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(531, 2, 12, 2020, 'ADJ/FTI/000531/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(532, 2, 12, 2020, 'ADJ/FTI/000532/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(533, 2, 12, 2020, 'ADJ/FTI/000533/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(534, 2, 12, 2020, 'ADJ/FTI/000534/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(535, 2, 12, 2020, 'ADJ/FTI/000535/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(536, 2, 12, 2020, 'ADJ/FTI/000536/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(537, 2, 12, 2020, 'ADJ/FTI/000537/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(538, 2, 12, 2020, 'ADJ/FTI/000538/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(539, 2, 12, 2020, 'ADJ/FTI/000539/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(540, 2, 12, 2020, 'ADJ/FTI/000540/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(541, 2, 12, 2020, 'ADJ/FTI/000541/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(542, 2, 12, 2020, 'ADJ/FTI/000542/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(543, 2, 12, 2020, 'ADJ/FTI/000543/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(544, 2, 12, 2020, 'ADJ/FTI/000544/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(545, 2, 12, 2020, 'ADJ/FTI/000545/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(546, 2, 12, 2020, 'ADJ/FTI/000546/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(547, 2, 12, 2020, 'ADJ/FTI/000547/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(548, 2, 12, 2020, 'ADJ/FTI/000548/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(549, 2, 12, 2020, 'ADJ/FTI/000549/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(550, 2, 12, 2020, 'ADJ/FTI/000550/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(551, 2, 12, 2020, 'ADJ/FTI/000551/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(552, 2, 12, 2020, 'ADJ/FTI/000552/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(553, 2, 12, 2020, 'ADJ/FTI/000553/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(554, 2, 12, 2020, 'ADJ/FTI/000554/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(555, 2, 12, 2020, 'ADJ/FTI/000555/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(556, 2, 12, 2020, 'ADJ/FTI/000556/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(557, 2, 12, 2020, 'ADJ/FTI/000557/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(558, 2, 12, 2020, 'ADJ/FTI/000558/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(559, 2, 12, 2020, 'ADJ/FTI/000559/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(560, 2, 12, 2020, 'ADJ/FTI/000560/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(561, 2, 12, 2020, 'ADJ/FTI/000561/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(562, 2, 12, 2020, 'ADJ/FTI/000562/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(563, 2, 12, 2020, 'ADJ/FTI/000563/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(564, 2, 12, 2020, 'ADJ/FTI/000564/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(565, 2, 12, 2020, 'ADJ/FTI/000565/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(566, 2, 12, 2020, 'ADJ/FTI/000566/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(567, 2, 12, 2020, 'ADJ/FTI/000567/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(568, 2, 12, 2020, 'ADJ/FTI/000568/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(569, 2, 12, 2020, 'ADJ/FTI/000569/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(570, 2, 12, 2020, 'ADJ/FTI/000570/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(571, 2, 12, 2020, 'ADJ/FTI/000571/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(572, 2, 12, 2020, 'ADJ/FTI/000572/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(573, 2, 12, 2020, 'ADJ/FTI/000573/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(574, 2, 12, 2020, 'ADJ/FTI/000574/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(575, 2, 12, 2020, 'ADJ/FTI/000575/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(576, 2, 12, 2020, 'ADJ/FTI/000576/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(577, 2, 12, 2020, 'ADJ/FTI/000577/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(578, 2, 12, 2020, 'ADJ/FTI/000578/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(579, 2, 12, 2020, 'ADJ/FTI/000579/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(580, 2, 12, 2020, 'ADJ/FTI/000580/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(581, 2, 12, 2020, 'ADJ/FTI/000581/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(582, 2, 12, 2020, 'ADJ/FTI/000582/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(583, 2, 12, 2020, 'ADJ/FTI/000583/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(584, 2, 12, 2020, 'ADJ/FTI/000584/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(585, 2, 12, 2020, 'ADJ/FTI/000585/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(586, 2, 12, 2020, 'ADJ/FTI/000586/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(587, 2, 12, 2020, 'ADJ/FTI/000587/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(588, 2, 12, 2020, 'ADJ/FTI/000588/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(589, 2, 12, 2020, 'ADJ/FTI/000589/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(590, 2, 12, 2020, 'ADJ/FTI/000590/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(591, 2, 12, 2020, 'ADJ/FTI/000591/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(592, 2, 12, 2020, 'ADJ/FTI/000592/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(593, 2, 12, 2020, 'ADJ/FTI/000593/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(594, 2, 12, 2020, 'ADJ/FTI/000594/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(595, 2, 12, 2020, 'ADJ/FTI/000595/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(596, 2, 12, 2020, 'ADJ/FTI/000596/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(597, 2, 12, 2020, 'ADJ/FTI/000597/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(598, 2, 12, 2020, 'ADJ/FTI/000598/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(599, 2, 12, 2020, 'ADJ/FTI/000599/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(600, 2, 12, 2020, 'ADJ/FTI/000600/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(601, 2, 12, 2020, 'ADJ/FTI/000601/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(602, 2, 12, 2020, 'ADJ/FTI/000602/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(603, 2, 12, 2020, 'ADJ/FTI/000603/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(604, 2, 12, 2020, 'ADJ/FTI/000604/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(605, 2, 12, 2020, 'ADJ/FTI/000605/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(606, 2, 12, 2020, 'ADJ/FTI/000606/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(607, 2, 12, 2020, 'ADJ/FTI/000607/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(608, 2, 12, 2020, 'ADJ/FTI/000608/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(609, 2, 12, 2020, 'ADJ/FTI/000609/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(610, 2, 12, 2020, 'ADJ/FTI/000610/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(611, 2, 12, 2020, 'ADJ/FTI/000611/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(612, 2, 12, 2020, 'ADJ/FTI/000612/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(613, 2, 12, 2020, 'ADJ/FTI/000613/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(614, 2, 12, 2020, 'ADJ/FTI/000614/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(615, 2, 12, 2020, 'ADJ/FTI/000615/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(616, 2, 12, 2020, 'ADJ/FTI/000616/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(617, 2, 12, 2020, 'ADJ/FTI/000617/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(618, 2, 12, 2020, 'ADJ/FTI/000618/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(619, 2, 12, 2020, 'ADJ/FTI/000619/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(620, 2, 12, 2020, 'ADJ/FTI/000620/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(621, 2, 12, 2020, 'ADJ/FTI/000621/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(622, 2, 12, 2020, 'ADJ/FTI/000622/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(623, 2, 12, 2020, 'ADJ/FTI/000623/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(624, 2, 12, 2020, 'ADJ/FTI/000624/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(625, 2, 12, 2020, 'ADJ/FTI/000625/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(626, 2, 12, 2020, 'ADJ/FTI/000626/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(627, 2, 12, 2020, 'ADJ/FTI/000627/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(628, 2, 12, 2020, 'ADJ/FTI/000628/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(629, 2, 12, 2020, 'ADJ/FTI/000629/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(630, 2, 12, 2020, 'ADJ/FTI/000630/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(631, 2, 12, 2020, 'ADJ/FTI/000631/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(632, 2, 12, 2020, 'ADJ/FTI/000632/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(633, 2, 12, 2020, 'ADJ/FTI/000633/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(634, 2, 12, 2020, 'ADJ/FTI/000634/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(635, 2, 12, 2020, 'ADJ/FTI/000635/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(636, 2, 12, 2020, 'ADJ/FTI/000636/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(637, 2, 12, 2020, 'ADJ/FTI/000637/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(638, 2, 12, 2020, 'ADJ/FTI/000638/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(639, 2, 12, 2020, 'ADJ/FTI/000639/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(640, 2, 12, 2020, 'ADJ/FTI/000640/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(641, 2, 12, 2020, 'ADJ/FTI/000641/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(642, 2, 12, 2020, 'ADJ/FTI/000642/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(643, 2, 12, 2020, 'ADJ/FTI/000643/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(644, 2, 12, 2020, 'ADJ/FTI/000644/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(645, 2, 12, 2020, 'ADJ/FTI/000645/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(646, 2, 12, 2020, 'ADJ/FTI/000646/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(647, 2, 12, 2020, 'ADJ/FTI/000647/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(648, 2, 12, 2020, 'ADJ/FTI/000648/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(649, 2, 12, 2020, 'ADJ/FTI/000649/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(650, 2, 12, 2020, 'ADJ/FTI/000650/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(651, 2, 12, 2020, 'ADJ/FTI/000651/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(652, 2, 12, 2020, 'ADJ/FTI/000652/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(653, 2, 12, 2020, 'ADJ/FTI/000653/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(654, 2, 12, 2020, 'ADJ/FTI/000654/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(655, 2, 12, 2020, 'ADJ/FTI/000655/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(656, 2, 12, 2020, 'ADJ/FTI/000656/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(657, 2, 12, 2020, 'ADJ/FTI/000657/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(658, 2, 12, 2020, 'ADJ/FTI/000658/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(659, 2, 12, 2020, 'ADJ/FTI/000659/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(660, 2, 12, 2020, 'ADJ/FTI/000660/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(661, 2, 12, 2020, 'ADJ/FTI/000661/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(662, 2, 12, 2020, 'ADJ/FTI/000662/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(663, 2, 12, 2020, 'ADJ/FTI/000663/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(664, 2, 12, 2020, 'ADJ/FTI/000664/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(665, 2, 12, 2020, 'ADJ/FTI/000665/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(666, 2, 12, 2020, 'ADJ/FTI/000666/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(667, 2, 12, 2020, 'ADJ/FTI/000667/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(668, 2, 12, 2020, 'ADJ/FTI/000668/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(669, 2, 12, 2020, 'ADJ/FTI/000669/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(670, 2, 12, 2020, 'ADJ/FTI/000670/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(671, 2, 12, 2020, 'ADJ/FTI/000671/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(672, 2, 12, 2020, 'ADJ/FTI/000672/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(673, 2, 12, 2020, 'ADJ/FTI/000673/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(674, 2, 12, 2020, 'ADJ/FTI/000674/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(675, 2, 12, 2020, 'ADJ/FTI/000675/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(676, 2, 12, 2020, 'ADJ/FTI/000676/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(677, 2, 12, 2020, 'ADJ/FTI/000677/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(678, 2, 12, 2020, 'ADJ/FTI/000678/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(679, 2, 12, 2020, 'ADJ/FTI/000679/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(680, 2, 12, 2020, 'ADJ/FTI/000680/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(681, 2, 12, 2020, 'ADJ/FTI/000681/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(682, 2, 12, 2020, 'ADJ/FTI/000682/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(683, 2, 12, 2020, 'ADJ/FTI/000683/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(684, 2, 12, 2020, 'ADJ/FTI/000684/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(685, 2, 12, 2020, 'ADJ/FTI/000685/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(686, 2, 12, 2020, 'ADJ/FTI/000686/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(687, 2, 12, 2020, 'ADJ/FTI/000687/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(688, 2, 12, 2020, 'ADJ/FTI/000688/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(689, 2, 12, 2020, 'ADJ/FTI/000689/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(690, 2, 12, 2020, 'ADJ/FTI/000690/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(691, 2, 12, 2020, 'ADJ/FTI/000691/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(692, 2, 12, 2020, 'ADJ/FTI/000692/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(693, 2, 12, 2020, 'ADJ/FTI/000693/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(694, 2, 12, 2020, 'ADJ/FTI/000694/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(695, 2, 12, 2020, 'ADJ/FTI/000695/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(696, 2, 12, 2020, 'ADJ/FTI/000696/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(697, 2, 12, 2020, 'ADJ/FTI/000697/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(698, 2, 12, 2020, 'ADJ/FTI/000698/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(699, 2, 12, 2020, 'ADJ/FTI/000699/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(700, 2, 12, 2020, 'ADJ/FTI/000700/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(701, 2, 12, 2020, 'ADJ/FTI/000701/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(702, 2, 12, 2020, 'ADJ/FTI/000702/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(703, 2, 12, 2020, 'ADJ/FTI/000703/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(704, 2, 12, 2020, 'ADJ/FTI/000704/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(705, 2, 12, 2020, 'ADJ/FTI/000705/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(706, 2, 12, 2020, 'ADJ/FTI/000706/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(707, 2, 12, 2020, 'ADJ/FTI/000707/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(708, 2, 12, 2020, 'ADJ/FTI/000708/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(709, 2, 12, 2020, 'ADJ/FTI/000709/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(710, 2, 12, 2020, 'ADJ/FTI/000710/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(711, 2, 12, 2020, 'ADJ/FTI/000711/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(712, 2, 12, 2020, 'ADJ/FTI/000712/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(713, 2, 12, 2020, 'ADJ/FTI/000713/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(714, 2, 12, 2020, 'ADJ/FTI/000714/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(715, 2, 12, 2020, 'ADJ/FTI/000715/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(716, 2, 12, 2020, 'ADJ/FTI/000716/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(717, 2, 12, 2020, 'ADJ/FTI/000717/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(718, 2, 12, 2020, 'ADJ/FTI/000718/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(719, 2, 12, 2020, 'ADJ/FTI/000719/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(720, 2, 12, 2020, 'ADJ/FTI/000720/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(721, 2, 12, 2020, 'ADJ/FTI/000721/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(722, 2, 12, 2020, 'ADJ/FTI/000722/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(723, 2, 12, 2020, 'ADJ/FTI/000723/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(724, 2, 12, 2020, 'ADJ/FTI/000724/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(725, 2, 12, 2020, 'ADJ/FTI/000725/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(726, 2, 12, 2020, 'ADJ/FTI/000726/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(727, 2, 12, 2020, 'ADJ/FTI/000727/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(728, 2, 12, 2020, 'ADJ/FTI/000728/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(729, 2, 12, 2020, 'ADJ/FTI/000729/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(730, 2, 12, 2020, 'ADJ/FTI/000730/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(731, 2, 12, 2020, 'ADJ/FTI/000731/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(732, 2, 12, 2020, 'ADJ/FTI/000732/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(733, 2, 12, 2020, 'ADJ/FTI/000733/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(734, 2, 12, 2020, 'ADJ/FTI/000734/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(735, 2, 12, 2020, 'ADJ/FTI/000735/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(736, 2, 12, 2020, 'ADJ/FTI/000736/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(737, 2, 12, 2020, 'ADJ/FTI/000737/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(738, 2, 12, 2020, 'ADJ/FTI/000738/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(739, 2, 12, 2020, 'ADJ/FTI/000739/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(740, 2, 12, 2020, 'ADJ/FTI/000740/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(741, 2, 12, 2020, 'ADJ/FTI/000741/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(742, 2, 12, 2020, 'ADJ/FTI/000742/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(743, 2, 12, 2020, 'ADJ/FTI/000743/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(744, 2, 12, 2020, 'ADJ/FTI/000744/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(745, 2, 12, 2020, 'ADJ/FTI/000745/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(746, 2, 12, 2020, 'ADJ/FTI/000746/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(747, 2, 12, 2020, 'ADJ/FTI/000747/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(748, 2, 12, 2020, 'ADJ/FTI/000748/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(749, 2, 12, 2020, 'ADJ/FTI/000749/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(750, 2, 12, 2020, 'ADJ/FTI/000750/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(751, 2, 12, 2020, 'ADJ/FTI/000751/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(752, 2, 12, 2020, 'ADJ/FTI/000752/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(753, 2, 12, 2020, 'ADJ/FTI/000753/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(754, 2, 12, 2020, 'ADJ/FTI/000754/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(755, 2, 12, 2020, 'ADJ/FTI/000755/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(756, 2, 12, 2020, 'ADJ/FTI/000756/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(757, 2, 12, 2020, 'ADJ/FTI/000757/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(758, 2, 12, 2020, 'ADJ/FTI/000758/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(759, 2, 12, 2020, 'ADJ/FTI/000759/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(760, 2, 12, 2020, 'ADJ/FTI/000760/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(761, 2, 12, 2020, 'ADJ/FTI/000761/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(762, 2, 12, 2020, 'ADJ/FTI/000762/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(763, 2, 12, 2020, 'ADJ/FTI/000763/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(764, 2, 12, 2020, 'ADJ/FTI/000764/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(765, 2, 12, 2020, 'ADJ/FTI/000765/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(766, 2, 12, 2020, 'ADJ/FTI/000766/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(767, 2, 12, 2020, 'ADJ/FTI/000767/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(768, 2, 12, 2020, 'ADJ/FTI/000768/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(769, 2, 12, 2020, 'ADJ/FTI/000769/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(770, 2, 12, 2020, 'ADJ/FTI/000770/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(771, 2, 12, 2020, 'ADJ/FTI/000771/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(772, 2, 12, 2020, 'ADJ/FTI/000772/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(773, 2, 12, 2020, 'ADJ/FTI/000773/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(774, 2, 12, 2020, 'ADJ/FTI/000774/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(775, 2, 12, 2020, 'ADJ/FTI/000775/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(776, 2, 12, 2020, 'ADJ/FTI/000776/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(777, 2, 12, 2020, 'ADJ/FTI/000777/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(778, 2, 12, 2020, 'ADJ/FTI/000778/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(779, 2, 12, 2020, 'ADJ/FTI/000779/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(780, 2, 12, 2020, 'ADJ/FTI/000780/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(781, 2, 12, 2020, 'ADJ/FTI/000781/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(782, 2, 12, 2020, 'ADJ/FTI/000782/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(783, 2, 12, 2020, 'ADJ/FTI/000783/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(784, 2, 12, 2020, 'ADJ/FTI/000784/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(785, 2, 12, 2020, 'ADJ/FTI/000785/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(786, 2, 12, 2020, 'ADJ/FTI/000786/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(787, 2, 12, 2020, 'ADJ/FTI/000787/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(788, 2, 12, 2020, 'ADJ/FTI/000788/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(789, 2, 12, 2020, 'ADJ/FTI/000789/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(790, 2, 12, 2020, 'ADJ/FTI/000790/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(791, 2, 12, 2020, 'ADJ/FTI/000791/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(792, 2, 12, 2020, 'ADJ/FTI/000792/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(793, 2, 12, 2020, 'ADJ/FTI/000793/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(794, 2, 12, 2020, 'ADJ/FTI/000794/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(795, 2, 12, 2020, 'ADJ/FTI/000795/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(796, 2, 12, 2020, 'ADJ/FTI/000796/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(797, 2, 12, 2020, 'ADJ/FTI/000797/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(798, 2, 12, 2020, 'ADJ/FTI/000798/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(799, 2, 12, 2020, 'ADJ/FTI/000799/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(800, 2, 12, 2020, 'ADJ/FTI/000800/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(801, 2, 12, 2020, 'ADJ/FTI/000801/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(802, 2, 12, 2020, 'ADJ/FTI/000802/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(803, 2, 12, 2020, 'ADJ/FTI/000803/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(804, 2, 12, 2020, 'ADJ/FTI/000804/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(805, 2, 12, 2020, 'ADJ/FTI/000805/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(806, 2, 12, 2020, 'ADJ/FTI/000806/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(807, 2, 12, 2020, 'ADJ/FTI/000807/XII/2020', '2020-12-11 17:19:12', '2020-12-11 17:19:12', NULL, NULL),
(808, 2, 12, 2020, 'ADJ/FTI/000808/XII/2020', '2020-12-12 15:12:04', '2020-12-12 15:12:04', NULL, NULL),
(809, 2, 12, 2020, 'ADJ/FTI/000809/XII/2020', '2020-12-12 15:27:55', '2020-12-12 15:27:55', NULL, NULL),
(810, 1, 12, 2020, 'SO/FTI/0001/PT.BTS/XII/2020', '2020-12-12 15:35:25', '2020-12-12 15:35:25', NULL, NULL),
(811, 4, 12, 2020, 'DO/0001/FTI/XII/2020', '2020-12-12 15:37:55', '2020-12-12 15:37:55', NULL, NULL),
(812, 9, 12, 2020, 'INV/AR/P/FTI/0001/PT.BTS/XII/2020', '2020-12-12 15:39:12', '2020-12-12 15:39:12', 1, NULL),
(813, 1, 12, 2020, 'SO/FTI/0002/BPT/XII/2020', '2020-12-12 17:58:29', '2020-12-12 17:58:29', NULL, NULL),
(814, 4, 12, 2020, 'DO/0002/FTI/XII/2020', '2020-12-12 18:01:31', '2020-12-12 18:01:31', NULL, NULL),
(815, 9, 12, 2020, 'INV/AR/P/FTI/0002/BPT/XII/2020', '2020-12-12 18:02:16', '2020-12-12 18:02:16', 1, NULL),
(816, 2, 12, 2020, 'ADJ/FTI/000810/XII/2020', '2020-12-12 18:49:01', '2020-12-12 18:49:01', NULL, NULL),
(817, 1, 12, 2020, 'SO/FTI/0003/BSG/XII/2020', '2020-12-12 19:43:36', '2020-12-12 19:43:36', NULL, NULL),
(818, 4, 12, 2020, 'DO/0003/FTI/XII/2020', '2020-12-12 19:44:42', '2020-12-12 19:44:42', NULL, NULL),
(819, 9, 12, 2020, 'INV/AR/P/FTI/0003/BSG/XII/2020', '2020-12-12 19:45:03', '2020-12-12 19:45:03', 1, NULL),
(820, 1, 12, 2020, 'SO/FTI/0004/NURDINJFO/XII/2020', '2020-12-12 20:29:02', '2020-12-12 20:29:02', NULL, NULL),
(821, 7, 12, 2020, 'PR/FTI/0001/IOI/XII/2020', '2020-12-12 21:10:08', '2020-12-12 21:10:08', NULL, NULL),
(822, 8, 12, 2020, 'PO/FTI/0001/IOI/XII/2020', '2020-12-12 21:10:31', '2020-12-12 21:10:31', NULL, NULL),
(823, 11, 12, 2020, 'RP/0001/FTI/XII/2020', '2020-12-12 21:14:29', '2020-12-12 21:14:29', NULL, NULL),
(824, 10, 12, 2020, 'INV/AP/0001/IOI/XII/2020', '2020-12-12 21:30:43', '2020-12-12 21:30:43', NULL, NULL),
(825, 7, 12, 2020, 'PR/FTI/0002/PAS/XII/2020', '2020-12-13 08:36:05', '2020-12-13 08:36:05', NULL, NULL),
(826, 8, 12, 2020, 'PO/FTI/0002/PAS/XII/2020', '2020-12-13 08:36:22', '2020-12-13 08:36:22', NULL, NULL),
(827, 11, 12, 2020, 'RP/0002/FTI/XII/2020', '2020-12-13 08:37:33', '2020-12-13 08:37:33', NULL, NULL),
(828, 10, 12, 2020, 'INV/AP/0002/PAS/XII/2020', '2020-12-13 08:38:21', '2020-12-13 08:38:21', NULL, NULL),
(829, 4, 12, 2020, 'DO/0004/FTI/XII/2020', '2020-12-13 08:44:16', '2020-12-13 08:44:16', NULL, NULL),
(830, 9, 12, 2020, 'INV/AR/FTI/0004/NURDINJFO/XII/2020', '2020-12-13 08:44:53', '2020-12-13 08:44:53', NULL, NULL),
(831, 2, 12, 2020, 'ADJ/FTI/000811/XII/2020', '2020-12-13 08:53:59', '2020-12-13 08:53:59', NULL, NULL),
(832, 2, 12, 2020, 'ADJ/FTI/000812/XII/2020', '2020-12-13 08:57:24', '2020-12-13 08:57:24', NULL, NULL),
(833, 2, 12, 2020, 'ADJ/FTI/000813/XII/2020', '2020-12-13 09:02:25', '2020-12-13 09:02:25', NULL, NULL),
(834, 2, 12, 2020, 'ADJ/FTI/000814/XII/2020', '2020-12-13 10:04:15', '2020-12-13 10:04:15', NULL, NULL),
(835, 2, 12, 2020, 'ADJ/FTI/000815/XII/2020', '2020-12-13 10:08:48', '2020-12-13 10:08:48', NULL, NULL),
(836, 1, 12, 2020, 'SO/FTI/0005/LIYA - OMAH NETWORK/XII/2020', '2020-12-14 11:26:50', '2020-12-14 11:26:50', NULL, NULL),
(837, 2, 12, 2020, 'ADJ/FTI/000816/XII/2020', '2020-12-15 11:29:03', '2020-12-15 11:29:03', NULL, NULL),
(838, 2, 12, 2020, 'ADJ/FTI/000817/XII/2020', '2020-12-15 11:31:17', '2020-12-15 11:31:17', NULL, NULL),
(839, 2, 12, 2020, 'ADJ/FTI/000818/XII/2020', '2020-12-15 11:34:18', '2020-12-15 11:34:18', NULL, NULL),
(840, 2, 12, 2020, 'ADJ/FTI/000819/XII/2020', '2020-12-15 11:37:41', '2020-12-15 11:37:41', NULL, NULL),
(841, 1, 12, 2020, 'SO/FTI/0006/SARAH/XII/2020', '2020-12-15 11:42:30', '2020-12-15 11:42:30', NULL, NULL),
(842, 1, 12, 2020, 'SO/FTI/0007/LIDWINA/XII/2020', '2020-12-15 11:45:30', '2020-12-15 11:45:30', NULL, NULL),
(843, 2, 12, 2020, 'ADJ/FTI/000820/XII/2020', '2020-12-15 12:19:09', '2020-12-15 12:19:09', NULL, NULL),
(844, 1, 12, 2020, 'SO/FTI/0008/FATYA/XII/2020', '2020-12-15 12:20:59', '2020-12-15 12:20:59', NULL, NULL),
(845, 1, 12, 2020, 'SO/FTI/0009/MMC/XII/2020', '2020-12-15 12:24:31', '2020-12-15 12:24:31', NULL, NULL),
(846, 1, 12, 2020, 'SO/FTI/0010/DEDIBOGOR/XII/2020', '2020-12-15 12:29:21', '2020-12-15 12:29:21', NULL, NULL),
(847, 2, 12, 2020, 'ADJ/FTI/000821/XII/2020', '2020-12-15 12:38:32', '2020-12-15 12:38:32', NULL, NULL),
(848, 1, 12, 2020, 'SO/FTI/0011/BOY/XII/2020', '2020-12-16 14:54:15', '2020-12-16 14:54:15', NULL, NULL),
(849, 1, 12, 2020, 'SO/FTI/0012/YAYAN/XII/2020', '2020-12-16 15:12:44', '2020-12-16 15:12:44', NULL, NULL),
(850, 1, 12, 2020, 'SO/FTI/0013/MUAMMAR/XII/2020', '2020-12-16 15:19:05', '2020-12-16 15:19:05', NULL, NULL),
(851, 1, 12, 2020, 'SO/FTI/0014/MUAMMAR/XII/2020', '2020-12-16 15:33:16', '2020-12-16 15:33:16', NULL, NULL),
(852, 2, 1, 2021, 'ADJ/FTI/000001/I/2021', '2021-01-05 10:54:38', '2021-01-05 10:54:38', NULL, NULL),
(853, 2, 1, 2021, 'ADJ/FTI/000002/I/2021', '2021-01-05 10:54:43', '2021-01-05 10:54:43', NULL, NULL),
(854, 2, 1, 2021, 'ADJ/FTI/000003/I/2021', '2021-01-05 10:55:52', '2021-01-05 10:55:52', NULL, NULL),
(855, 2, 1, 2021, 'ADJ/FTI/000004/I/2021', '2021-01-05 10:57:34', '2021-01-05 10:57:34', NULL, NULL),
(856, 2, 1, 2021, 'ADJ/FTI/000005/I/2021', '2021-01-05 10:58:46', '2021-01-05 10:58:46', NULL, NULL);

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
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(11, 'Finance Approval', 'web', '2020-06-18 12:24:00', '2020-06-18 12:24:00'),
(12, 'Admin Sales-Invoice', 'web', '2020-10-10 14:51:53', '2020-10-10 14:51:53');

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
(1, 5),
(1, 9),
(2, 1),
(2, 9),
(3, 1),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(8, 1),
(8, 5),
(8, 6),
(8, 9),
(8, 11),
(8, 12),
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(15, 1),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(17, 1),
(17, 5),
(17, 9),
(18, 1),
(18, 5),
(18, 9),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(21, 1),
(21, 9),
(22, 1),
(22, 9),
(23, 1),
(23, 4),
(23, 9),
(23, 11),
(23, 12),
(24, 1),
(24, 4),
(24, 9),
(24, 11),
(24, 12),
(25, 1),
(25, 9),
(25, 11),
(25, 12),
(26, 1),
(26, 9),
(26, 11),
(26, 12),
(27, 1),
(27, 3),
(27, 4),
(27, 5),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(28, 1),
(28, 3),
(28, 5),
(28, 8),
(28, 9),
(29, 1),
(29, 3),
(29, 5),
(29, 9),
(30, 1),
(30, 3),
(30, 5),
(30, 9),
(30, 10),
(31, 1),
(31, 3),
(31, 7),
(31, 8),
(31, 9),
(31, 12),
(32, 1),
(32, 3),
(32, 7),
(32, 8),
(32, 9),
(32, 12),
(33, 1),
(33, 3),
(33, 9),
(34, 1),
(34, 3),
(34, 5),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 12),
(35, 1),
(35, 3),
(35, 7),
(35, 8),
(35, 9),
(35, 12),
(36, 1),
(36, 3),
(36, 7),
(36, 8),
(36, 9),
(36, 12),
(37, 1),
(37, 3),
(37, 7),
(37, 8),
(37, 9),
(37, 10),
(37, 12),
(38, 1),
(38, 3),
(38, 4),
(38, 7),
(38, 9),
(38, 10),
(39, 1),
(39, 3),
(39, 7),
(39, 9),
(40, 1),
(40, 3),
(40, 7),
(40, 9),
(41, 1),
(41, 3),
(41, 7),
(41, 9),
(42, 1),
(42, 5),
(42, 6),
(42, 9),
(42, 11),
(42, 12),
(43, 1),
(43, 5),
(43, 6),
(43, 9),
(43, 11),
(43, 12),
(44, 1),
(44, 6),
(44, 9),
(44, 11),
(44, 12),
(45, 1),
(45, 4),
(45, 5),
(45, 6),
(45, 7),
(45, 8),
(45, 9),
(45, 10),
(45, 11),
(45, 12),
(46, 1),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(46, 8),
(46, 9),
(46, 10),
(46, 11),
(46, 12),
(47, 1),
(47, 9),
(47, 12),
(48, 1),
(48, 6),
(48, 7),
(48, 9),
(48, 11),
(48, 12),
(49, 1),
(49, 6),
(49, 9),
(49, 11),
(50, 1),
(50, 8),
(50, 9),
(50, 12);

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
  `customer_po` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `quantity` decimal(50,2) DEFAULT NULL,
  `tax` decimal(50,2) DEFAULT NULL,
  `discount` decimal(50,2) DEFAULT NULL,
  `total` decimal(50,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8083f49e-f0aa-4094-894f-f64cd2e9e4e9',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_date` date NOT NULL,
  `closing_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_ref`, `client_id`, `client_code`, `billing_address`, `customer_po`, `shipping_address`, `delivery_date`, `quantity`, `tax`, `discount`, `total`, `description`, `change_note`, `status_id`, `created_by`, `updated_by`, `sale_date`, `closing_date`, `created_at`, `updated_at`) VALUES
('2edae25b-c95a-49ab-a443-735d55cc5c0b', 'SO/FTI/0012/YAYAN/XII/2020', 'd7ef188c-666f-4d27-8275-6e82d641f405', 'YAYAN', '-', '009/YAYAN/XII/20', '-', '2020-12-01', '50000.00', NULL, NULL, '35000000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-16 15:12:44', '2020-12-16 15:12:53'),
('3e15aaef-40c8-42f9-92f6-8b0fa7ab5489', 'SO/FTI/0002/BPT/XII/2020', '8798971f-ebde-4e9f-bb0b-4fe44b3303e3', 'BPT', 'Jl. Batua Raya No. 204 Parapo Panakukkang, Kota Makassar Sulawesi Selatan', '190/PO/BPT/XII/2020', 'Jl. Batua Raya No. 204 Parapo Panakukkang, Kota Makassar Sulawesi Selatan', '2020-12-01', '1.00', '2465000.00', NULL, '27115000.00', NULL, NULL, 'e9395add-e815-4374-8ed3-c0d5f4481ab8', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-12 17:58:29', '2020-12-12 18:04:26'),
('6d7159d6-a773-4a1e-85d7-9ea9907c10d0', 'SO/FTI/0014/MUAMMAR/XII/2020', '4064d659-c357-43ea-be73-001592b897b2', 'MUAMMAR', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', '011/MUAMAR/XII/20', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', '2020-12-01', '8000.00', NULL, NULL, '72000000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-16 15:33:16', '2020-12-16 15:33:25'),
('78b4e104-9580-40a5-96aa-1816684ff362', 'SO/FTI/0006/SARAH/XII/2020', '955e56d8-541c-4491-a615-feb60a6eca5d', 'SARAH', 'Cluster Permata Karawaci Blok E No.4 Tangerang', '003/SARAH/XII/20', 'Cluster Permata Karawaci Blok E No.4 Tangerang', '2020-12-07', '120.00', NULL, NULL, '10965000.00', 'URGENT', NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'Mirza Rizaldy', 'Mirza Rizaldy', '2020-12-01', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:44'),
('79c3ad22-898c-42b3-8797-0da5fd300f28', 'SO/FTI/0004/NURDINJFO/XII/2020', '2f205bbc-4b5d-4310-bc3e-7843d0fc2572', 'NURDINJFO', '-', '001/NURDIN/XII/20', '-', '2020-12-02', '40.00', NULL, NULL, '1920000.00', 'Splitter plc 1:2 sc upc 0,9mm in/out 65cm', NULL, 'e3f73f52-00f7-47a6-9831-3a81b36f65e8', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-12 20:29:02', '2021-01-05 11:00:23'),
('7d08dcee-5722-41f1-9f18-17c18f620d05', 'SO/FTI/0003/BSG/XII/2020', 'c585e4e8-4f74-4cc9-957f-3ca54d98a563', 'BSG', 'Taman Tekno BSD City Sektor XI \r\nBlok A2 No.28, Setu Tangerang Selatan 15314', 'PO-3020110230', 'Taman Tekno BSD City Sektor XI \r\nBlok A2 No.28, Setu Tangerang Selatan 15314', '2020-12-02', '100.00', '4850000.00', NULL, '53350000.00', NULL, NULL, 'e9395add-e815-4374-8ed3-c0d5f4481ab8', 'adminsales2', 'adminsales2', '2020-12-02', NULL, '2020-12-12 19:43:36', '2020-12-12 20:03:04'),
('868c6625-6cce-4cc3-a306-8b11a803eea4', 'SO/FTI/0011/BOY/XII/2020', '24e3bab7-40c3-4d1d-9b4b-3b4adf002465', 'BOY', '-', '008/BOY/XII/20', '-', '2020-12-01', '500.00', NULL, NULL, '2750000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-16 14:54:15', '2020-12-16 14:54:29'),
('91e6d049-f81d-4c15-97e3-60c136faf110', 'SO/FTI/0008/FATYA/XII/2020', '65bc3a3e-ab7e-43f5-941d-5b667d18de4b', 'FATYA', 'Lenteng Agung. Gg Zakaria 8 No.28A Rt.008 Rw.003. LENTENG AGUNG. JAGAKARSA . JAKARTA SELATAN - DKI JAKARTA', '005/FATYA/XII/20', 'Lenteng Agung. Gg Zakaria 8 No.28A Rt.008 Rw.003. LENTENG AGUNG. JAGAKARSA . JAKARTA SELATAN - DKI JAKARTA', '2020-12-01', '1.00', NULL, NULL, '118000.00', 'URGENT', NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-15 12:20:59', '2020-12-15 12:21:09'),
('93648602-dde4-4076-b618-a61b19b9c325', 'SO/FTI/0007/LIDWINA/XII/2020', '89e66263-2b97-412a-a1bb-385b527c604c', 'LIDWINA', 'JL. Gunung Latimojong No.21 Makassar Sulawesi Selatan', '004/LIDWINA/XII/20', 'JL. Gunung Latimojong No.21 Makassar Sulawesi Selatan', '2020-12-02', '10.00', NULL, NULL, '365000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-15 11:45:30', '2020-12-15 11:47:35'),
('b4fd4318-b2c6-4749-a62c-2b7acb2d228a', 'SO/FTI/0005/LIYA - OMAH NETWORK/XII/2020', '61dc6863-5ed4-44a0-abc6-c604a753c776', 'LIYA - OMAH NETWORK', 'perum simprug diporis blok h1 no 45, poris jaya, batu ceper, kota tangerang', '002/LIYA/XII/20', 'perum simprug diporis blok h1 no 45, poris jaya, batu ceper, kota tangerang', '2020-12-08', '16.00', NULL, NULL, '1444000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-14 11:26:50', '2020-12-14 11:27:05'),
('d5652148-9163-4a06-8e72-22c99473321a', 'SO/FTI/0001/PT.BTS/XII/2020', '1c527872-628d-43aa-a61e-b02f74ee1154', 'PT.BTS', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', '1010024704', 'Wisma KEIAI, 22nd Floor\r\nJl. Jend. Sudirman Kav. 3\r\nJakarta 10220. Indonesia', '2020-11-30', '20.00', '57600.00', NULL, '633600.00', NULL, NULL, 'e9395add-e815-4374-8ed3-c0d5f4481ab8', 'adminsales2', 'adminsales2', '2020-11-26', NULL, '2020-12-12 15:35:25', '2021-01-05 11:00:44'),
('d9c2fd4f-1cc4-4042-bacf-0ee36bb37b6b', 'SO/FTI/0009/MMC/XII/2020', 'd4ffd684-142b-41e3-be19-b6b90454fd06', 'MMC', '-', '006/MMC/XII/20', '-', '2020-12-01', '300.00', NULL, NULL, '450000.00', 'URGENT', NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-15 12:24:31', '2020-12-15 12:24:41'),
('f55beeb1-f55a-4fc3-9913-82b3672ca66a', 'SO/FTI/0013/MUAMMAR/XII/2020', '4064d659-c357-43ea-be73-001592b897b2', 'MUAMMAR', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', '010/MUAMAR/XII/20', 'Ammar Telco\r\nJl. H. Poleng Gg. H. Jamhuri No.9, RT.002/RW.001, Jurang Mangu Barat,\r\nKec. Pd. Aren, Kota Tangerang Selatan, Banten 15222', '2020-12-01', '50.00', NULL, NULL, '9000000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-16 15:19:05', '2020-12-16 15:19:11'),
('ffe3963d-251a-4df1-9e5d-c4c28585fe10', 'SO/FTI/0010/DEDIBOGOR/XII/2020', '3fb31237-4421-416c-b5ea-b160c48234b3', 'DEDIBOGOR', 'Bogor', '007/DEDI/XII/20', 'Bogor', '2020-12-01', '8000.00', NULL, NULL, '72000000.00', NULL, NULL, '458410e7-384d-47bc-bdbe-02115adc4449', 'adminsales2', 'adminsales2', '2020-12-01', NULL, '2020-12-15 12:29:21', '2020-12-15 12:29:28');

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

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sales_id`, `product_id`, `product_name`, `quantity`, `remain`, `uom_id`, `discount`, `sale_price`, `sub_total`, `shipping`, `created_at`, `updated_at`) VALUES
(1, 'd5652148-9163-4a06-8e72-22c99473321a', '56c58552-af94-41c6-ab6b-228e03b57e6e', 'Patchcord SM SX (2,0mm) FC/UPC-SC/APC 5M', '10.00', '0.00', '1', '0.00', '21000.00', '210000.00', '10.00', '2020-12-12 15:35:25', '2020-12-12 15:37:55'),
(2, 'd5652148-9163-4a06-8e72-22c99473321a', '0918b468-c972-4de2-8fec-629505cacd2e', 'Patchcord SM DX (3,0mm) SC/APC-LC/UPC 3m', '10.00', '0.00', '1', '0.00', '36600.00', '366000.00', '10.00', '2020-12-12 15:35:25', '2020-12-12 15:37:55'),
(4, '3e15aaef-40c8-42f9-92f6-8b0fa7ab5489', '5d9d0e3a-33c0-11ea-aec2-2e728ce88125', 'Fiber Fusion Splicer KF4', '1.00', '0.00', '1', '0.00', '24650000.00', '24650000.00', '1.00', '2020-12-12 18:00:20', '2020-12-12 18:01:31'),
(5, '7d08dcee-5722-41f1-9f18-17c18f620d05', 'fdd5f3f3-1a18-4b38-926d-8b66de9ed4df', 'Splitter modular plc 1x16 sc apc 2mm in/out 0,75m', '100.00', '0.00', '1', '0.00', '485000.00', '48500000.00', '100.00', '2020-12-12 19:43:36', '2020-12-12 19:44:42'),
(6, '79c3ad22-898c-42b3-8797-0da5fd300f28', '0971970d-ac1d-442d-bc5e-eb04a4f9e9f3', 'PLC Splitter 1:2 , white', '40.00', '0.00', '1', '0.00', '48000.00', '1920000.00', '40.00', '2020-12-12 20:29:02', '2020-12-13 08:44:16'),
(7, 'b4fd4318-b2c6-4749-a62c-2b7acb2d228a', 'ebecb56a-5c1b-4693-a95b-192709642365', 'Precon 1 Core  3 Selling SC/UPC-SC/UPC 50M', '5.00', NULL, '1', '0.00', '57000.00', '285000.00', NULL, '2020-12-14 11:26:50', '2020-12-14 11:26:50'),
(8, 'b4fd4318-b2c6-4749-a62c-2b7acb2d228a', '94bf5a12-41d2-4ff0-ae8c-de8da92f6559', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 75M', '3.00', NULL, '1', '0.00', '77000.00', '231000.00', NULL, '2020-12-14 11:26:50', '2020-12-14 11:26:50'),
(9, 'b4fd4318-b2c6-4749-a62c-2b7acb2d228a', '433ace17-1a8e-452a-a30c-45f5a2c01a55', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 80M', '3.00', NULL, '1', '0.00', '81000.00', '243000.00', NULL, '2020-12-14 11:26:50', '2020-12-14 11:26:50'),
(10, 'b4fd4318-b2c6-4749-a62c-2b7acb2d228a', '6f98e780-07d8-450d-906d-8fd149d8b65c', 'Precon 1 Core 3 Selling SC/UPC-SC/UPC 150M', '5.00', NULL, '1', '0.00', '137000.00', '685000.00', NULL, '2020-12-14 11:26:50', '2020-12-14 11:26:50'),
(11, '78b4e104-9580-40a5-96aa-1816684ff362', 'fbb76058-6eba-4feb-90b1-6520cfd0b461', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 50M', '20.00', NULL, '1', '0.00', '52000.00', '1040000.00', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(12, '78b4e104-9580-40a5-96aa-1816684ff362', 'e0cb30a7-4107-4bbf-9c3e-bf7ba96423c4', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 75M', '30.00', NULL, '1', '0.00', '69500.00', '2085000.00', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(13, '78b4e104-9580-40a5-96aa-1816684ff362', 'be3f2689-25b8-47f7-9816-3414e59be632', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 100M', '30.00', NULL, '1', '0.00', '87000.00', '2610000.00', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(14, '78b4e104-9580-40a5-96aa-1816684ff362', 'bd935277-bfa8-4467-a3d1-cd4fb014d080', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 150M', '30.00', NULL, '1', '0.00', '122000.00', '3660000.00', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(15, '78b4e104-9580-40a5-96aa-1816684ff362', '394f0b93-4e8f-4d99-8b9c-b5c4e21d7371', 'Precon 1 Core 3 Selling SC/APC-SC/UPC 200M', '10.00', NULL, '1', '0.00', '157000.00', '1570000.00', NULL, '2020-12-15 11:42:30', '2020-12-15 11:42:30'),
(16, '93648602-dde4-4076-b618-a61b19b9c325', 'b96186cd-7f13-487d-bf74-575106d31376', 'Patchcord SM DX (3,0mm) SC/UPC-SC/UPC 3m', '10.00', NULL, '1', '0.00', '36500.00', '365000.00', NULL, '2020-12-15 11:45:30', '2020-12-15 11:45:30'),
(17, '91e6d049-f81d-4c15-97e3-60c136faf110', '7468f19a-171e-40f2-859e-63f9364f8a83', 'Patchcord SM DX (2,0mm) LC/UPC-LC/UPC 40m', '1.00', NULL, '1', '0.00', '118000.00', '118000.00', NULL, '2020-12-15 12:20:59', '2020-12-15 12:20:59'),
(18, 'd9c2fd4f-1cc4-4042-bacf-0ee36bb37b6b', '5d9b241c-33c0-11ea-aec2-2e728ce88125', 'Adapter SC/APC Auto Shutter', '300.00', NULL, '1', '0.00', '1500.00', '450000.00', NULL, '2020-12-15 12:24:31', '2020-12-15 12:24:31'),
(19, 'ffe3963d-251a-4df1-9e5d-c4c28585fe10', '5d9d8162-33c0-11ea-aec2-2e728ce88125', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 12 Core - YOFC', '8000.00', NULL, '2', '0.00', '9000.00', '72000000.00', NULL, '2020-12-15 12:29:21', '2020-12-15 12:29:21'),
(20, '868c6625-6cce-4cc3-a306-8b11a803eea4', 'a55f11a9-6656-49fb-9b3a-11c1c9252013', 'Roset 2 Core Polos (Kosongan)', '500.00', NULL, '1', '0.00', '5500.00', '2750000.00', NULL, '2020-12-16 14:54:15', '2020-12-16 14:54:15'),
(21, '2edae25b-c95a-49ab-a443-735d55cc5c0b', '5d9d1c40-33c0-11ea-aec2-2e728ce88125', 'GJYXFCH-B/1, LSZH, STEEL WIRE , FLAT CABLE , G675A1 , 3 SELING - 1 Core - FIBERTEKNO', '50000.00', NULL, '2', '0.00', '700.00', '35000000.00', NULL, '2020-12-16 15:12:44', '2020-12-16 15:12:44'),
(22, 'f55beeb1-f55a-4fc3-9913-82b3672ca66a', '5d9e7afe-33c0-11ea-aec2-2e728ce88125', 'ODP 16 core,ABS , white , 315x270x85 mm ( SUNSEA )', '50.00', NULL, '1', '0.00', '180000.00', '9000000.00', NULL, '2020-12-16 15:19:05', '2020-12-16 15:19:05'),
(23, '6d7159d6-a773-4a1e-85d7-9ea9907c10d0', '5d9d8162-33c0-11ea-aec2-2e728ce88125', 'GYHC8A-12B1.3, AERIAL SCPT, SM, G652D - 12 Core - YOFC', '8000.00', NULL, '2', '0.00', '9000.00', '72000000.00', NULL, '2020-12-16 15:33:16', '2020-12-16 15:33:16');

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
('5af2f030-efe0-426e-819d-6df5f6fb8cc5', 'Pending - Transfer Stock', '2020-09-05 16:04:46', '2020-09-05 16:04:46'),
('5bc79891-e396-4792-a0f3-617ece2a00ce', 'Requested', '2019-09-20 16:14:02', '2019-09-20 16:14:02'),
('5f548276-3979-4308-94ec-7b5b59841688', 'Retur Stored', '2020-01-22 18:28:02', '2020-01-22 18:28:02'),
('6d32841b-2606-43a5-8cf7-b77291ddbfbb', 'Sales Close', '2020-01-16 19:59:06', '2020-01-16 19:59:06'),
('72ceba35-758d-4bc2-9295-fd9f9f393c56', 'Empty Stock', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('805ec360-ebe1-4872-9798-a69dbac86a29', 'Payment Complete', '2020-09-21 20:25:09', '2020-09-21 20:25:09'),
('8083f49e-f0aa-4094-894f-f64cd2e9e4e9', 'Submit', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('82e9ec8c-5a82-4009-ba2f-ab620eeaa71a', 'Suspended', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('8447cd63-c7e7-4b26-81fc-d2eb3aceec97', 'Delivery Cancel', '2020-01-16 20:50:42', '2020-01-16 20:50:42'),
('ad5335ed-fc6e-42a1-a0e4-8b802acd6caa', 'Sales Suspend', '2020-01-16 19:59:06', '2020-01-16 19:59:06'),
('af0e1bc3-7acd-41b0-b926-5f54d2b6c8e8', 'Rejected', '2019-09-10 16:28:27', '2019-09-10 16:28:27'),
('c2fdba02-e765-4ee8-8c8c-3073209ddd26', 'On Process', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('c51d7be2-7c72-41a8-93ff-03f780ece42a', 'Unpaid', '2019-09-04 07:11:54', '2019-09-04 07:11:54'),
('cc040768-2b4f-48df-867f-7da18b749e61', 'Partial Payment', '2020-01-18 04:37:05', '2020-01-18 04:37:05'),
('d4f7f9f3-4f5f-4063-b6ab-dc03f89ec87e', 'Ready - Stock Transferred', '2020-09-22 19:34:57', '2020-09-22 19:34:57'),
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
(4, 2, NULL, 2, 'Haspel', '4000.00', 'eko', 'Mirza Rizaldy', '2019-09-21 17:51:54', '2020-11-25 10:43:26');

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
  `lockout_time` int(11) NOT NULL DEFAULT 30,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `division_id`, `status_id`, `last_login_at`, `last_login_from`, `lockout_time`, `session_id`, `remember_token`, `created_at`, `updated_at`) VALUES
('071ea324-a8d2-4f79-8f8a-23c90bc191ff', 'Admin Gudang (Katerine)', 'admingudang@local.com', NULL, '$2y$10$kpsngr6Osxkut0tFa.S7M..d/V2LrWTmUVHdqhfUur.KJzDQkRmda', 'user.jpg', '9f94e00b-5fdc-4dc9-8057-fd21ded69869', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2021-01-05 10:40:55', '192.168.0.1', 0, '5LWBmWuT3rGF0YtqMTTTLZheczW5BqvrlClSY6mD', NULL, '2020-01-08 11:18:02', '2021-01-05 10:40:55'),
('24d21373-b462-4888-8d27-d365c33fbf6a', 'manajemen', 'mgt@local.com', NULL, '$2y$10$ZzOLNVg0oUfmACCApcvp9eewkbjiA85ffuX4Fnp1vwqyRLg/llqdS', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-19 15:56:01', '192.168.0.1', 0, 'zY5FpasjTsMjJss4mlPqZsoC0enxGbVyyNZqS4La', NULL, '2020-01-11 17:52:23', '2020-10-19 15:56:01'),
('25b76385-8f8d-4422-a62e-21c671bfcaec', 'Fenilia (Finance Adm)', 'finance@local.com', NULL, '$2y$10$kpn3XU.WVnMKzDsl7SYDwekqH2F2qZ6.uM68DuCy9Vq0xxr.pp7pq', 'user.jpg', '1886a2b3-2fb7-4f40-b577-dad076a5d3b1', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-21 16:53:22', '192.168.0.1', 0, 'AxOxJi9PqMUxFyCUSDp2zcFHVoNum3cDKfOoKYwD', NULL, '2020-01-13 15:46:00', '2020-12-21 16:53:22'),
('45e3cf2e-1b27-43ff-b3e8-32d3695b6434', 'Dimas', 'sysadmin@local.com', NULL, '$2y$10$pOl0ms4YxHFgEnV53HNCyujpumd8an2.ptYgjbWYYUZQxCsVZXMxS', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2021-01-05 10:52:27', '192.168.0.1', 0, 'hwZyaO8mJdaS7MSJ5xniFUSPFd6C5I9wH8qdwiLt', NULL, '2020-01-11 19:25:36', '2021-01-05 10:52:27'),
('74718047-dc5d-4f47-87fc-8db9e4fdb527', 'Nining S. (Sales Adm)', 'niningsupriyatin79@gmail.com', NULL, '$2y$10$3O8VS4iTdjbz4po9BGroiOK.NBIk9UrBS.2JxnPFVTrX6nsLLzOYO', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-05 08:13:19', '192.168.0.1', 0, 'W23vfGJUez5MWKtT8rcfnLy6A2bi9UZUVLMrJg5F', NULL, '2020-01-08 13:42:19', '2020-12-05 08:13:19'),
('820cbe25-baf5-4d2b-b877-9ce7fdffdc21', 'Finmgr', 'finmgr@local.com', NULL, '$2y$10$30hWy2zHlqXLZw6K/O9NTOz9/aiUEOT4J8hAMhQDjqE51UubJ66rO', 'user.jpg', '1886a2b3-2fb7-4f40-b577-dad076a5d3b1', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-11-13 13:23:13', '192.168.0.1', 0, 'gPqw1Q6HNDKvpaeytoG7YMdBSJ7rGyo6pBlhlcbY', NULL, '2020-01-12 18:56:45', '2020-11-13 13:23:13'),
('994a52f5-285e-4401-95b2-166cc353bb65', 'Sales Manager (Rian)', 'salesmanager@local.com', NULL, '$2y$10$16XB3/olutIRwmJd2eIEoOdrr6b4N5zLv07MoICHpGEMSopfX.snu', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-19 07:36:14', '192.168.0.1', 0, 'ZAhYQEt1V7MIs7WUJJobTIywWmqxIp7vP4VlJeSE', NULL, '2020-01-09 13:07:34', '2020-10-19 07:36:14'),
('a7acf627-9108-44c0-a028-2d9bf7829108', 'Irena (Production Adm)', 'adminproduksi@local.com', NULL, '$2y$10$v4ShSI2Xi7Vz898N4OFAreFXrPq.DHo0eCGT3GI7qx18/o0pcrz7u', 'user.jpg', 'fe97cbde-836a-439e-8b64-31783aaee279', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-23 16:28:25', '192.168.0.1', 0, 'Nn4VBoxkG7I1P15ES6GQHOyIcduwQF96iO6QJJW7', NULL, '2020-01-08 11:21:49', '2020-10-23 16:28:25'),
('bb536994-ada3-4caa-b97b-e412dc2cc882', 'eko', 'eko@local.com', NULL, '$2y$10$iSHBp.VTgyBazpklQVtU1e.V16Yiwdy6ph7LAJ1Zi8sNdwQbA4r16', 'bb536994-ada3-4caa-b97b-e412dc2cc882_avatar1580087198.png', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2021-01-08 09:50:59', '127.0.0.1', 30, 'eihhJozAR8oEETxWhbF1riJQbo1aaLJjZUchOyyS', NULL, '2019-09-04 06:31:44', '2021-01-08 02:50:59'),
('c7e50632-3efc-4cff-99fd-2a39dee275b2', 'Mirza Rizaldy', 'mirza@local.com', NULL, '$2y$10$poY0GYUVIdYgXjigXPWyI.NoafHBMKAbiHtkN/FWEoBtRFtNG7KDu', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-22 17:47:15', '192.168.0.1', 0, '2m6jU597sGpzqdPmk2YenLmH7GMLY7Cw1LlAkdkN', NULL, '2020-01-06 17:46:22', '2020-12-22 17:47:15'),
('cb512697-44d9-4683-9bae-0a8e28a3252b', 'Dina', 'purchasing@local.com', NULL, '$2y$10$tYbyDZp916u0pnDsoFXlYu15s9.7LKWLT2QGPErJB929e3s04pSTq', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-10-19 15:46:47', '192.168.0.1', 0, 'FGzF0ZZGUlGnpNtgTXMUYi11DRtJNDD0bKwpKnhF', NULL, '2020-01-08 13:42:59', '2020-10-19 15:46:47'),
('eaeed9cc-a8a7-4843-84ca-67936aa1f889', 'admin10', 'admin10@local.com', NULL, '$2y$10$XDDDbMK2DD4RHeEwHlum/eqI7gS1WAvU2qDALBvBDPlJxk08.7vMS', 'user.jpg', '413ec199-f1dd-42a7-a346-67a74fb807b0', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-05 08:36:09', '192.168.0.1', 30, 'tX24ItcxSPHHNWycON6Loq8Yz0m6pC1BlwdXs56U', NULL, '2020-11-14 23:36:52', '2020-12-05 08:36:09'),
('f68f2a18-623f-4c1a-bfde-7f029c603a17', 'adminsales2', 'adminsales2@local.com', NULL, '$2y$10$9A1SdwovRx8oEXJ5/j5TqOx8F8kOVyk8R/6QO0P3XJfLTVl5V4F8y', 'user.jpg', '784f06d5-0e19-490f-91d4-60ea243eae53', '2b643e21-a94c-4713-93f1-f1cbde6ad633', '2020-12-25 19:25:24', '192.168.0.1', 0, 'TH4Uv37gijzP3gzF3i7ehXms3BXDeRXzHUcuzZnK', NULL, '2020-01-11 18:09:34', '2020-12-25 19:25:24');

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
(60, '24d21373-b462-4888-8d27-d365c33fbf6a', 'Gudang Retur', '2020-06-18 09:44:09', '2020-06-18 09:44:09'),
(61, 'eaeed9cc-a8a7-4843-84ca-67936aa1f889', 'Gudang Utama', '2020-11-14 23:36:52', '2020-11-14 23:36:52'),
(62, 'eaeed9cc-a8a7-4843-84ca-67936aa1f889', 'Gudang Manufaktur', '2020-11-14 23:36:52', '2020-11-14 23:36:52'),
(63, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Pengiriman', '2020-12-12 15:06:25', '2020-12-12 15:06:25'),
(64, 'f68f2a18-623f-4c1a-bfde-7f029c603a17', 'Gudang Retur', '2020-12-12 15:06:25', '2020-12-12 15:06:25');

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
-- Indexes for table `payment_cicilans`
--
ALTER TABLE `payment_cicilans`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_services`
--
ALTER TABLE `delivery_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `internal_items`
--
ALTER TABLE `internal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `internal_transfers`
--
ALTER TABLE `internal_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `manufacture_items`
--
ALTER TABLE `manufacture_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `models_retur_items`
--
ALTER TABLE `models_retur_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_cicilans`
--
ALTER TABLE `payment_cicilans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receive_purchase_items`
--
ALTER TABLE `receive_purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
