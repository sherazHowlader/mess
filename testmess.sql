-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 07:12 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testmess`
--

-- --------------------------------------------------------

--
-- Table structure for table `depositcost`
--

CREATE TABLE `depositcost` (
  `id` int(255) NOT NULL,
  `user_name` text NOT NULL,
  `mess_name` text NOT NULL,
  `deposit_tk` int(255) DEFAULT NULL,
  `extra_cost` int(255) DEFAULT '0',
  `market_cost` int(255) DEFAULT NULL,
  `morning` float NOT NULL,
  `noon` float NOT NULL,
  `night` float NOT NULL,
  `deposit_date` varchar(255) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depositcost`
--

INSERT INTO `depositcost` (`id`, `user_name`, `mess_name`, `deposit_tk`, `extra_cost`, `market_cost`, `morning`, `noon`, `night`, `deposit_date`, `insert_date`) VALUES
(123, 'Al-Amin Hossain', 'North South Ideal Home', 335, 0, NULL, 0, 0, 0, '2021-06-03', '2021-06-27 06:26:24'),
(124, 'Al-Amin Hossain', 'North South Ideal Home', 385, 0, NULL, 0, 0, 0, '2021-06-10', '2021-06-27 06:26:44'),
(125, 'Al-Amin Hossain', 'North South Ideal Home', 710, 0, NULL, 0, 0, 0, '2021-06-25', '2021-06-27 06:28:04'),
(126, 'Rathin Biswas', 'North South Ideal Home', 615, 0, NULL, 0, 0, 0, '2021-06-01', '2021-06-27 06:28:22'),
(127, 'Rathin Biswas', 'North South Ideal Home', 485, 0, NULL, 0, 0, 0, '2021-06-08', '2021-06-27 06:28:44'),
(128, 'Rathin Biswas', 'North South Ideal Home', 1000, 0, NULL, 0, 0, 0, '2021-06-14', '2021-06-27 06:28:59'),
(129, 'Shamim Hossain', 'North South Ideal Home', 880, 0, NULL, 0, 0, 0, '2021-06-01', '2021-06-27 06:34:05'),
(130, 'Shamim Hossain', 'North South Ideal Home', 405, 0, NULL, 0, 0, 0, '2021-06-05', '2021-06-27 06:34:20'),
(131, 'Shamim Hossain', 'North South Ideal Home', 200, 0, NULL, 0, 0, 0, '2021-06-14', '2021-06-27 06:34:37'),
(132, 'Shamim Hossain', 'North South Ideal Home', 1000, 0, NULL, 0, 0, 0, '2021-06-17', '2021-06-27 06:34:46'),
(133, 'Jakirul Islam', 'North South Ideal Home', 305, 0, NULL, 0, 0, 0, '2021-06-02', '2021-06-27 06:35:09'),
(134, 'Jakirul Islam', 'North South Ideal Home', 300, 0, NULL, 0, 0, 0, '2021-06-09', '2021-06-27 06:35:27'),
(135, 'Jakirul Islam', 'North South Ideal Home', 530, 0, NULL, 0, 0, 0, '2021-06-20', '2021-06-27 06:35:42'),
(136, 'Jakirul Islam', 'North South Ideal Home', 635, 0, NULL, 0, 0, 0, '2021-06-26', '2021-06-27 06:36:09'),
(137, 'Mithun Biswas', 'North South Ideal Home', 46, 0, NULL, 0, 0, 0, '2021-06-03', '2021-06-27 06:37:11'),
(138, 'Mithun Biswas', 'North South Ideal Home', 515, 0, NULL, 0, 0, 0, '2021-06-07', '2021-06-27 06:37:24'),
(139, 'Mithun Biswas', 'North South Ideal Home', 2000, 0, NULL, 0, 0, 0, '2021-06-14', '2021-06-27 06:37:51'),
(140, 'Mostofa', 'North South Ideal Home', 400, 0, NULL, 0, 0, 0, '2021-06-04', '2021-06-27 06:38:30'),
(141, 'Mostofa', 'North South Ideal Home', 500, 0, NULL, 0, 0, 0, '2021-06-12', '2021-06-27 06:38:46'),
(142, 'Mostofa', 'North South Ideal Home', 1040, 0, NULL, 0, 0, 0, '2021-06-19', '2021-06-27 06:39:18'),
(143, 'Mamun Islam', 'North South Ideal Home', 317, 0, NULL, 0, 0, 0, '2021-06-06', '2021-06-27 06:39:52'),
(144, 'Mamun Islam', 'North South Ideal Home', 2000, 0, NULL, 0, 0, 0, '2021-06-14', '2021-06-27 06:40:10'),
(145, 'Mamun Islam', 'North South Ideal Home', 10, 0, NULL, 0, 0, 0, '2021-06-17', '2021-06-27 06:40:37'),
(146, 'Sojol', 'North South Ideal Home', 2000, 0, NULL, 0, 0, 0, '2021-06-16', '2021-06-27 06:41:00'),
(147, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 615, 0, 0, 0, '2021-06-01', '2021-06-27 06:42:33'),
(148, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 880, 0, 0, 0, '2021-06-01', '2021-06-27 06:42:49'),
(149, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, 305, 0, 0, 0, '2021-06-02', '2021-06-27 06:44:16'),
(150, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, 335, 0, 0, 0, '2021-06-03', '2021-06-27 06:44:35'),
(151, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, 46, 0, 0, 0, '2021-06-03', '2021-06-27 06:44:49'),
(152, 'Mostofa', 'North South Ideal Home', NULL, 0, 400, 0, 0, 0, '2021-06-04', '2021-06-27 06:45:13'),
(153, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, 405, 0, 0, 0, '2021-06-05', '2021-06-27 06:45:51'),
(154, 'Mamun Islam', 'North South Ideal Home', NULL, 0, 371, 0, 0, 0, '2021-06-06', '2021-06-27 06:46:07'),
(155, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, 515, 0, 0, 0, '2021-06-07', '2021-06-27 06:46:31'),
(156, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 485, 0, 0, 0, '2021-06-08', '2021-06-27 06:46:47'),
(157, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, 300, 0, 0, 0, '2021-06-09', '2021-06-27 06:47:09'),
(158, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, 385, 0, 0, 0, '2021-06-10', '2021-06-27 06:47:32'),
(159, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 960, 0, 0, 0, '2021-06-11', '2021-06-27 06:47:58'),
(160, 'Mamun Islam', 'North South Ideal Home', NULL, 0, 485, 0, 0, 0, '2021-06-12', '2021-06-27 06:48:32'),
(161, 'Mostofa', 'North South Ideal Home', NULL, 0, 500, 0, 0, 0, '2021-06-13', '2021-06-27 06:48:48'),
(162, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, 485, 0, 0, 0, '2021-06-14', '2021-06-27 06:49:11'),
(163, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, 278, 0, 0, 0, '2021-06-15', '2021-06-27 06:49:25'),
(164, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 387, 0, 0, 0, '2021-06-16', '2021-06-27 06:50:01'),
(165, 'Mamun Islam', 'North South Ideal Home', NULL, 0, 310, 0, 0, 0, '2021-06-17', '2021-06-27 06:50:26'),
(166, 'Sojol', 'North South Ideal Home', NULL, 0, 455, 0, 0, 0, '2021-06-18', '2021-06-27 06:51:00'),
(167, 'Mostofa', 'North South Ideal Home', NULL, 0, 1040, 0, 0, 0, '2021-06-19', '2021-06-27 06:51:21'),
(168, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, 530, 0, 0, 0, '2021-06-20', '2021-06-27 06:51:42'),
(169, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, 417, 0, 0, 0, '2021-06-21', '2021-06-27 06:52:00'),
(170, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, 429, 0, 0, 0, '2021-06-22', '2021-06-27 06:52:14'),
(171, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, 675, 0, 0, 0, '2021-06-23', '2021-06-27 06:52:40'),
(172, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, 710, 0, 0, 0, '2021-06-24', '2021-06-27 06:52:59'),
(173, 'Sojol', 'North South Ideal Home', NULL, 0, 574, 0, 0, 0, '2021-06-25', '2021-06-27 06:53:35'),
(174, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, 3200, 0, 0, 0, '2021-06-01', '2021-06-27 07:00:33'),
(175, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-02', '2021-06-27 07:01:35'),
(176, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 07:01:48'),
(177, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-04', '2021-06-27 07:02:04'),
(178, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-05', '2021-06-27 07:02:15'),
(179, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-06', '2021-06-27 07:02:51'),
(180, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-07', '2021-06-27 07:03:01'),
(181, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-08', '2021-06-27 07:03:14'),
(182, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-09', '2021-06-27 07:03:22'),
(183, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 0, '2021-06-10', '2021-06-27 07:03:31'),
(184, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 0, '2021-06-01', '2021-06-27 07:03:56'),
(185, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-22', '2021-06-27 07:04:39'),
(186, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-23', '2021-06-27 07:05:59'),
(187, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-24', '2021-06-27 07:06:13'),
(188, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-25', '2021-06-27 07:06:24'),
(189, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 07:07:09'),
(190, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 07:07:31'),
(191, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 07:07:43'),
(192, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 0, '2021-06-04', '2021-06-27 07:08:04'),
(193, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 07:08:17'),
(194, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-06', '2021-06-27 07:08:46'),
(195, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-07', '2021-06-27 07:11:54'),
(196, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-08', '2021-06-27 07:11:58'),
(197, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-09', '2021-06-27 07:12:03'),
(198, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-10', '2021-06-27 07:12:15'),
(199, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-11', '2021-06-27 07:12:19'),
(200, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-12', '2021-06-27 07:12:24'),
(201, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-13', '2021-06-27 07:12:28'),
(202, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-14', '2021-06-27 07:12:32'),
(203, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-15', '2021-06-27 07:14:20'),
(204, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 0.5, 1, '2021-06-19', '2021-06-27 07:18:20'),
(205, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 07:18:34'),
(206, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 07:18:48'),
(207, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 07:19:00'),
(208, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-23', '2021-06-27 07:19:11'),
(209, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-24', '2021-06-27 07:19:21'),
(210, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-25', '2021-06-27 07:19:38'),
(211, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 09:25:24'),
(212, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 09:26:03'),
(213, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 09:26:12'),
(214, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-04', '2021-06-27 09:26:22'),
(215, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 09:26:32'),
(216, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-06', '2021-06-27 09:26:42'),
(217, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-07', '2021-06-27 09:26:55'),
(218, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-08', '2021-06-27 09:27:56'),
(219, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-09', '2021-06-27 09:28:58'),
(220, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-10', '2021-06-27 09:29:09'),
(221, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-11', '2021-06-27 09:29:17'),
(222, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-12', '2021-06-27 09:29:26'),
(223, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-13', '2021-06-27 09:29:35'),
(224, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-14', '2021-06-27 09:29:44'),
(225, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-15', '2021-06-27 09:29:52'),
(226, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 09:30:19'),
(227, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-17', '2021-06-27 09:30:27'),
(228, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-18', '2021-06-27 09:30:35'),
(229, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-19', '2021-06-27 09:30:46'),
(230, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 09:31:00'),
(231, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 09:31:12'),
(232, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 09:31:22'),
(233, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 7, 1, 1, '2021-06-23', '2021-06-27 09:31:51'),
(234, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-24', '2021-06-27 09:32:12'),
(235, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-25', '2021-06-27 09:32:25'),
(236, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 09:34:05'),
(237, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-02', '2021-06-27 09:34:44'),
(238, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-03', '2021-06-27 09:34:52'),
(239, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-04', '2021-06-27 09:35:02'),
(240, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-05', '2021-06-27 09:35:09'),
(241, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-06', '2021-06-27 09:35:18'),
(242, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-07', '2021-06-27 09:35:26'),
(243, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-08', '2021-06-27 09:35:34'),
(244, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-09', '2021-06-27 09:35:41'),
(245, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-10', '2021-06-27 09:35:49'),
(246, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-11', '2021-06-27 09:35:57'),
(247, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-12', '2021-06-27 09:36:05'),
(248, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 2, '2021-06-13', '2021-06-27 09:36:38'),
(249, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 2, 2, '2021-06-14', '2021-06-27 09:37:05'),
(250, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 2, 2, '2021-06-15', '2021-06-27 09:37:16'),
(251, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-17', '2021-06-27 09:37:49'),
(252, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-18', '2021-06-27 09:37:58'),
(253, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-19', '2021-06-27 09:38:05'),
(254, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 09:38:13'),
(255, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 09:38:24'),
(256, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 09:38:36'),
(257, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-23', '2021-06-27 09:38:47'),
(258, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-24', '2021-06-27 09:39:00'),
(259, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-25', '2021-06-27 09:39:08'),
(260, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 09:39:50'),
(261, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 09:40:26'),
(262, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 09:40:34'),
(263, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-04', '2021-06-27 09:40:43'),
(264, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 09:40:58'),
(265, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-06', '2021-06-27 09:41:07'),
(266, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-07', '2021-06-27 09:41:15'),
(267, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-08', '2021-06-27 09:41:30'),
(268, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-09', '2021-06-27 09:41:54'),
(269, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-10', '2021-06-27 09:42:02'),
(270, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-11', '2021-06-27 09:42:19'),
(271, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-12', '2021-06-27 09:42:27'),
(272, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-13', '2021-06-27 09:42:36'),
(273, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-14', '2021-06-27 09:42:58'),
(274, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-15', '2021-06-27 09:43:13'),
(275, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 09:43:53'),
(276, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-17', '2021-06-27 09:45:52'),
(277, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-18', '2021-06-27 09:44:23'),
(278, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-19', '2021-06-27 09:44:37'),
(279, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-20', '2021-06-27 09:44:46'),
(280, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-21', '2021-06-27 09:52:18'),
(281, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 09:50:48'),
(282, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-23', '2021-06-27 09:51:15'),
(283, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-24', '2021-06-27 09:51:24'),
(284, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-25', '2021-06-27 09:51:35'),
(285, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 09:54:17'),
(286, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 09:54:37'),
(287, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 09:54:45'),
(288, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-04', '2021-06-27 09:55:00'),
(289, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 09:55:08'),
(290, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-06', '2021-06-27 09:55:17'),
(291, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-07', '2021-06-27 09:55:26'),
(292, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-08', '2021-06-27 09:55:36'),
(293, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-09', '2021-06-27 09:55:49'),
(294, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-10', '2021-06-27 09:56:03'),
(295, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-11', '2021-06-27 09:57:27'),
(296, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-12', '2021-06-27 09:57:37'),
(297, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-13', '2021-06-27 09:57:45'),
(298, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-14', '2021-06-27 09:57:55'),
(299, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-15', '2021-06-27 09:58:11'),
(300, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 09:58:21'),
(301, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-17', '2021-06-27 09:58:35'),
(302, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-18', '2021-06-27 09:58:45'),
(303, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-19', '2021-06-27 09:58:55'),
(304, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 09:59:03'),
(305, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 09:59:11'),
(306, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 10:02:45'),
(307, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-23', '2021-06-27 10:02:54'),
(308, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-24', '2021-06-27 10:03:08'),
(309, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-25', '2021-06-27 10:04:14'),
(310, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 10:07:28'),
(311, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 10:07:39'),
(312, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 10:08:02'),
(313, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-04', '2021-06-27 10:08:28'),
(314, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 10:08:39'),
(315, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-06', '2021-06-27 10:08:47'),
(316, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-07', '2021-06-27 10:09:03'),
(317, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-08', '2021-06-27 10:09:20'),
(318, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-09', '2021-06-27 10:09:52'),
(319, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-10', '2021-06-27 10:14:25'),
(320, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-11', '2021-06-27 10:14:44'),
(321, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-12', '2021-06-27 10:14:54'),
(322, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-13', '2021-06-27 10:15:04'),
(323, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-14', '2021-06-27 10:15:14'),
(324, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-15', '2021-06-27 10:15:27'),
(325, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-10', '2021-06-27 10:16:07'),
(326, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-11', '2021-06-27 10:16:18'),
(327, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-12', '2021-06-27 10:16:26'),
(328, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-13', '2021-06-27 10:16:34'),
(329, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-14', '2021-06-27 10:16:42'),
(330, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-15', '2021-06-27 10:16:58'),
(331, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 10:18:09'),
(332, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-17', '2021-06-27 10:18:33'),
(333, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 10:18:53'),
(334, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-17', '2021-06-27 10:19:08'),
(335, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-18', '2021-06-27 10:20:00'),
(336, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-19', '2021-06-27 10:20:08'),
(337, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 10:20:15'),
(338, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 10:20:22'),
(339, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-22', '2021-06-27 10:20:49'),
(340, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-18', '2021-06-27 10:21:32'),
(341, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-19', '2021-06-27 10:21:40'),
(342, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-20', '2021-06-27 10:21:48'),
(343, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-21', '2021-06-27 10:21:55'),
(344, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 10:22:19'),
(345, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-23', '2021-06-27 10:22:44'),
(346, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-24', '2021-06-27 10:22:52'),
(347, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-25', '2021-06-27 10:23:00'),
(348, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-23', '2021-06-27 10:23:27'),
(349, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-24', '2021-06-27 10:23:35'),
(350, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-25', '2021-06-27 10:23:42'),
(351, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 1, '2021-06-01', '2021-06-27 10:26:23'),
(352, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-02', '2021-06-27 10:27:27'),
(353, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-03', '2021-06-27 10:27:36'),
(354, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-04', '2021-06-27 10:27:44'),
(355, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-05', '2021-06-27 10:27:54'),
(356, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-06', '2021-06-27 10:28:03'),
(357, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-07', '2021-06-27 10:28:11'),
(358, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-08', '2021-06-27 10:28:20'),
(359, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-09', '2021-06-27 10:28:28'),
(360, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-10', '2021-06-27 10:28:36'),
(361, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-11', '2021-06-27 10:28:46'),
(362, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-12', '2021-06-27 10:28:55'),
(363, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-13', '2021-06-27 10:29:16'),
(364, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-14', '2021-06-27 10:29:27'),
(365, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-15', '2021-06-27 10:29:36'),
(366, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-16', '2021-06-27 10:30:11'),
(367, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-17', '2021-06-27 10:30:34'),
(368, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-18', '2021-06-27 10:30:43'),
(369, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-19', '2021-06-27 10:30:53'),
(370, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-20', '2021-06-27 10:31:01'),
(371, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-21', '2021-06-27 10:31:41'),
(372, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-22', '2021-06-27 10:31:52'),
(373, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-23', '2021-06-27 10:32:20'),
(374, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-24', '2021-06-27 10:32:29'),
(375, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 2, 1, '2021-06-25', '2021-06-27 10:32:53'),
(377, 'Mostofa', 'North South Ideal Home', 500, 0, NULL, 0, 0, 0, '2021-06-13', '2021-06-30 00:11:43'),
(378, 'Mostofa', 'North South Ideal Home', 886, 0, NULL, 0, 0, 0, '2021-06-27', '2021-06-30 00:12:13'),
(379, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, 635, 0, 0, 0, '2021-06-26', '2021-06-30 00:19:23'),
(380, 'Mostofa', 'North South Ideal Home', NULL, 0, 886, 0, 0, 0, '2021-06-27', '2021-06-30 00:19:58'),
(382, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, 480, 0, 0, 0, '2021-06-29', '2021-06-30 00:22:48'),
(383, 'Sojol', 'North South Ideal Home', NULL, 0, 535, 0, 0, 0, '2021-06-28', '2021-06-30 00:33:02'),
(384, 'Al-Amin Hossain', 'North South Ideal Home', 15, 0, NULL, 0, 0, 0, '2021-06-28', '2021-06-30 00:34:15'),
(386, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-26', '2021-06-30 00:37:04'),
(387, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-27', '2021-06-30 00:37:17'),
(388, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-28', '2021-06-30 00:37:31'),
(389, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-29', '2021-06-30 00:37:47'),
(390, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 1, '2021-06-30', '2021-06-30 00:38:49'),
(391, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 0, 0, '2021-07-01', '2021-06-30 00:39:22'),
(392, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-26', '2021-06-30 00:43:03'),
(393, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-27', '2021-06-30 00:43:13'),
(394, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-28', '2021-06-30 00:43:25'),
(395, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-29', '2021-06-30 00:43:57'),
(396, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-30', '2021-06-30 00:44:09'),
(397, 'Jakirul Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-07-01', '2021-06-30 00:44:23'),
(398, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-26', '2021-06-30 00:46:39'),
(399, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-27', '2021-06-30 00:46:50'),
(400, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-28', '2021-06-30 00:47:15'),
(401, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-29', '2021-06-30 00:47:27'),
(402, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-30', '2021-06-30 00:47:51'),
(403, 'Mamun Islam', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-07-01', '2021-06-30 00:48:00'),
(404, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-26', '2021-06-30 00:52:36'),
(405, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-27', '2021-06-30 00:52:47'),
(406, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 0, '2021-06-28', '2021-06-30 00:53:19'),
(407, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-29', '2021-06-30 00:53:35'),
(408, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-30', '2021-06-30 00:53:48'),
(409, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 0, '2021-07-01', '2021-06-30 00:54:08'),
(410, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-26', '2021-06-30 00:56:15'),
(411, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-27', '2021-06-30 00:58:08'),
(412, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-28', '2021-06-30 00:59:02'),
(413, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-29', '2021-06-30 00:59:34'),
(414, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-30', '2021-06-30 01:00:56'),
(415, 'Mostofa', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-07-01', '2021-06-30 01:01:12'),
(416, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-26', '2021-06-30 01:08:08'),
(417, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 2, '2021-06-27', '2021-06-30 01:08:29'),
(418, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 1, 2, 0, '2021-06-28', '2021-06-30 01:09:07'),
(419, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 1, 2, 1, '2021-06-29', '2021-06-30 01:09:36'),
(420, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-30', '2021-06-30 01:09:52'),
(421, 'Rathin Biswas', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-07-01', '2021-06-30 01:10:08'),
(422, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-26', '2021-06-30 01:11:52'),
(423, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-27', '2021-06-30 01:12:02'),
(424, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-28', '2021-06-30 01:12:12'),
(425, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-29', '2021-06-30 01:12:20'),
(426, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-30', '2021-06-30 01:12:35'),
(427, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 0, '2021-07-01', '2021-06-30 01:12:49'),
(428, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-26', '2021-06-30 01:14:36'),
(429, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-27', '2021-06-30 01:14:46'),
(430, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-28', '2021-06-30 01:14:54'),
(431, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-29', '2021-06-30 01:15:08'),
(432, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 1, '2021-06-30', '2021-06-30 01:15:15'),
(433, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, 0.5, 1, 0, '2021-07-01', '2021-06-30 01:15:33'),
(434, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-26', '2021-06-30 01:16:56'),
(435, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-27', '2021-06-30 01:17:06'),
(436, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-06-28', '2021-06-30 01:17:26'),
(437, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-29', '2021-06-30 01:17:50'),
(438, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 1, '2021-06-30', '2021-06-30 01:18:00'),
(439, 'Sojol', 'North South Ideal Home', NULL, 0, NULL, 0, 1, 0, '2021-07-01', '2021-06-30 01:18:20'),
(440, 'Rathin Biswas', 'North South Ideal Home', 675, 0, NULL, 0, 0, 0, '2021-06-23', '2021-06-30 11:57:59'),
(441, 'Rathin Biswas', 'North South Ideal Home', 300, 0, NULL, 0, 0, 0, '2021-06-30', '2021-06-30 13:34:49'),
(442, 'Shamim Hossain', 'North South Ideal Home', 600, 0, NULL, 0, 0, 0, '2021-06-30', '2021-06-30 13:35:06'),
(443, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, 1165, 0, 0, 0, '2021-06-30', '2021-06-30 13:35:42'),
(444, 'Mostofa', 'North South Ideal Home', NULL, 60, NULL, 0, 0, 0, '2021-06-30', '2021-06-30 13:46:44'),
(445, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, -0.5, 0, 0, '2021-06-30', '2021-06-30 13:48:55'),
(446, 'Shamim Hossain', 'North South Ideal Home', NULL, 0, NULL, -0.5, 0, 0, '2021-06-30', '2021-06-30 13:49:11'),
(447, 'Mithun Biswas', 'North South Ideal Home', NULL, 0, NULL, -0.5, 0, 0, '2021-06-30', '2021-06-30 13:49:23'),
(448, 'Sheraz Howlader', 'North South Ideal Home', NULL, 0, NULL, -0.5, 0, 0, '2021-06-30', '2021-06-30 13:49:42'),
(449, 'Al-Amin Hossain', 'North South Ideal Home', NULL, 0, NULL, 0, 0, 8, '2021-06-30', '2021-06-30 17:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `role_id`) VALUES
(1, 'Super Admin', 1),
(2, 'Mess Manager', 2),
(3, 'Mess Member', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` text NOT NULL,
  `mess_name` varchar(255) NOT NULL,
  `phn` text,
  `role_id` int(10) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `mess_name`, `phn`, `role_id`) VALUES
(69, 'Sheraz Howlader', 'mdshiraj72@gmail.com', '112233', 'North South Ideal Home', '01728692643', 2),
(71, 'Rathin Biswas', 'rathin@gmail.com', 'rathin', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(72, 'Shamim Hossain', 'shamim@gmail.com', 'shamim', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(73, 'Jakirul Islam', 'jakirul@gmail.com', 'jakirul', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(74, 'Al-Amin Hossain', 'alamin@gmail.com', 'alamin', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(75, 'Mithun Biswas', 'mithun@gmail.com', 'mithun', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(76, 'Mostofa', 'mostofa@gmail.com', 'mostofa', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(77, 'Mamun Islam', 'mamun@gmail.con', 'mamun', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3),
(78, 'Sojol', 'sojol@gmail.com', 'sojol', 'North South Ideal Home', 'mdshiraj72@gmail.com<br>01728692643', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depositcost`
--
ALTER TABLE `depositcost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `depositcost`
--
ALTER TABLE `depositcost`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
