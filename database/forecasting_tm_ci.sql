-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 05:42 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forecasting_tm_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_atribut`
--

CREATE TABLE `tb_atribut` (
  `id_atribut` int(11) NOT NULL,
  `kode_atribut` varchar(16) NOT NULL,
  `nama_atribut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_atribut`
--

INSERT INTO `tb_atribut` (`id_atribut`, `kode_atribut`, `nama_atribut`) VALUES
(1, 'A01', 'Vitamin'),
(2, 'A02', 'Antibiotik'),
(3, 'A03', 'Desinfektan'),
(4, 'A04', 'Feed Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dataset`
--

CREATE TABLE `tb_dataset` (
  `id_dataset` int(11) NOT NULL,
  `nomor` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_atribut` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dataset`
--

INSERT INTO `tb_dataset` (`id_dataset`, `nomor`, `tanggal`, `id_atribut`, `nilai`) VALUES
(1, 1, '2016-01-01', 'A01', 230),
(2, 1, '2016-01-01', 'A02', 245.51744),
(3, 1, '2016-01-01', 'A03', 284.7426667),
(4, 1, '2016-01-01', 'A04', 209.2724),
(5, 2, '2016-02-01', 'A01', 194),
(6, 2, '2016-02-01', 'A02', 301.6704),
(7, 2, '2016-02-01', 'A03', 168.8463333),
(8, 2, '2016-02-01', 'A04', 207.8444),
(9, 3, '2016-03-01', 'A01', 268),
(10, 3, '2016-03-01', 'A02', 217.26432),
(11, 3, '2016-03-01', 'A03', 232.6786667),
(12, 3, '2016-03-01', 'A04', 272.9113),
(13, 4, '2016-04-01', 'A01', 152),
(14, 4, '2016-04-01', 'A02', 311.41788),
(15, 4, '2016-04-01', 'A03', 253.2106667),
(16, 4, '2016-04-01', 'A04', 317.82274),
(17, 5, '2016-05-01', 'A01', 204),
(18, 5, '2016-05-01', 'A02', 299.21916),
(19, 5, '2016-05-01', 'A03', 210.8976667),
(20, 5, '2016-05-01', 'A04', 202.54236),
(21, 6, '2016-06-01', 'A01', 202),
(22, 6, '2016-06-01', 'A02', 316.87578),
(23, 6, '2016-06-01', 'A03', 252.5506667),
(24, 6, '2016-06-01', 'A04', 455.40604),
(25, 7, '2016-07-01', 'A01', 242),
(26, 7, '2016-07-01', 'A02', 261.28962),
(27, 7, '2016-07-01', 'A03', 81.293),
(28, 7, '2016-07-01', 'A04', 408.3048),
(29, 8, '2016-08-01', 'A01', 181),
(30, 8, '2016-08-01', 'A02', 243.4116),
(31, 8, '2016-08-01', 'A03', 205.5133333),
(32, 8, '2016-08-01', 'A04', 421.9216),
(33, 9, '2016-09-01', 'A01', 161),
(34, 9, '2016-09-01', 'A02', 232.87656),
(35, 9, '2016-09-01', 'A03', 247.6812667),
(36, 9, '2016-09-01', 'A04', 272.1216),
(37, 10, '2016-10-01', 'A01', 150),
(38, 10, '2016-10-01', 'A02', 216.1534),
(39, 10, '2016-10-01', 'A03', 208.992),
(40, 10, '2016-10-01', 'A04', 191.3362),
(41, 11, '2016-11-01', 'A01', 180),
(42, 11, '2016-11-01', 'A02', 291.7775),
(43, 11, '2016-11-01', 'A03', 171.4453333),
(44, 11, '2016-11-01', 'A04', 315.8433),
(45, 12, '2016-12-01', 'A01', 281),
(46, 12, '2016-12-01', 'A02', 541.96972),
(47, 12, '2016-12-01', 'A03', 214.938),
(48, 12, '2016-12-01', 'A04', 674.7668),
(49, 13, '2017-01-01', 'A01', 194),
(50, 13, '2017-01-01', 'A02', 194.466),
(51, 13, '2017-01-01', 'A03', 185.1546667),
(52, 13, '2017-01-01', 'A04', 420.9516),
(53, 14, '2017-02-01', 'A01', 185),
(54, 14, '2017-02-01', 'A02', 370.5192),
(55, 14, '2017-02-01', 'A03', 238.901),
(56, 14, '2017-02-01', 'A04', 304.31964),
(57, 15, '2017-03-01', 'A01', 300),
(58, 15, '2017-03-01', 'A02', 570.4701),
(59, 15, '2017-03-01', 'A03', 255.547),
(60, 15, '2017-03-01', 'A04', 407.312),
(61, 16, '2017-04-01', 'A01', 140),
(62, 16, '2017-04-01', 'A02', 394.492256),
(63, 16, '2017-04-01', 'A03', 180.9033333),
(64, 16, '2017-04-01', 'A04', 440.837),
(65, 17, '2017-05-01', 'A01', 170),
(66, 17, '2017-05-01', 'A02', 301.83036),
(67, 17, '2017-05-01', 'A03', 246.192),
(68, 17, '2017-05-01', 'A04', 394.2626),
(69, 18, '2017-06-01', 'A01', 190),
(70, 18, '2017-06-01', 'A02', 425.9885),
(71, 18, '2017-06-01', 'A03', 200.7246667),
(72, 18, '2017-06-01', 'A04', 362.1252),
(73, 19, '2017-07-01', 'A01', 210),
(74, 19, '2017-07-01', 'A02', 74.63144),
(75, 19, '2017-07-01', 'A03', 202.697),
(76, 19, '2017-07-01', 'A04', 475.137),
(77, 20, '2017-08-01', 'A01', 154),
(78, 20, '2017-08-01', 'A02', 123.46),
(79, 20, '2017-08-01', 'A03', 155.0013333),
(80, 20, '2017-08-01', 'A04', 666.3576),
(81, 21, '2017-09-01', 'A01', 153),
(82, 21, '2017-09-01', 'A02', 149.0432),
(83, 21, '2017-09-01', 'A03', 143.49),
(84, 21, '2017-09-01', 'A04', 545.046),
(85, 22, '2017-10-01', 'A01', 164),
(86, 22, '2017-10-01', 'A02', 99.00428),
(87, 22, '2017-10-01', 'A03', 187.284),
(88, 22, '2017-10-01', 'A04', 647.2402),
(89, 23, '2017-11-01', 'A01', 263),
(90, 23, '2017-11-01', 'A02', 186.478),
(91, 23, '2017-11-01', 'A03', 153.232),
(92, 23, '2017-11-01', 'A04', 483.9208),
(93, 24, '2017-12-01', 'A01', 300),
(94, 24, '2017-12-01', 'A02', 129.8138),
(95, 24, '2017-12-01', 'A03', 132.4523333),
(96, 24, '2017-12-01', 'A04', 251.4686),
(97, 25, '2018-01-01', 'A01', 190),
(98, 25, '2018-01-01', 'A02', 225.95896),
(99, 25, '2018-01-01', 'A03', 60.80633333),
(100, 25, '2018-01-01', 'A04', 551.4156),
(101, 26, '2018-02-01', 'A01', 189),
(102, 26, '2018-02-01', 'A02', 113.5326),
(103, 26, '2018-02-01', 'A03', 72.58233333),
(104, 26, '2018-02-01', 'A04', 349.10252),
(105, 27, '2018-03-01', 'A01', 286),
(106, 27, '2018-03-01', 'A02', 148.2528),
(107, 27, '2018-03-01', 'A03', 152.7553333),
(108, 27, '2018-03-01', 'A04', 582.49),
(109, 28, '2018-04-01', 'A01', 160),
(110, 28, '2018-04-01', 'A02', 154.5576),
(111, 28, '2018-04-01', 'A03', 88.73733333),
(112, 28, '2018-04-01', 'A04', 637.67944),
(113, 29, '2018-05-01', 'A01', 197),
(114, 29, '2018-05-01', 'A02', 173.7348),
(115, 29, '2018-05-01', 'A03', 148.3823333),
(116, 29, '2018-05-01', 'A04', 252.2536),
(117, 30, '2018-06-01', 'A01', 176),
(118, 30, '2018-06-01', 'A02', 115.898),
(119, 30, '2018-06-01', 'A03', 148.9746667),
(120, 30, '2018-06-01', 'A04', 123.4968),
(121, 31, '2018-07-01', 'A01', 208),
(122, 31, '2018-07-01', 'A02', 71.249632),
(123, 31, '2018-07-01', 'A03', 154.6253333),
(124, 31, '2018-07-01', 'A04', 687.85528),
(125, 32, '2018-08-01', 'A01', 180),
(126, 32, '2018-08-01', 'A02', 51.712),
(127, 32, '2018-08-01', 'A03', 43.08333333),
(128, 32, '2018-08-01', 'A04', 17.5016),
(129, 33, '2018-09-01', 'A01', 157),
(130, 33, '2018-09-01', 'A02', 235.032),
(131, 33, '2018-09-01', 'A03', 91.95333333),
(132, 33, '2018-09-01', 'A04', 264.87108),
(133, 34, '2018-10-01', 'A01', 160),
(134, 34, '2018-10-01', 'A02', 295.218),
(135, 34, '2018-10-01', 'A03', 138.78),
(136, 34, '2018-10-01', 'A04', 87.15808),
(137, 35, '2018-11-01', 'A01', 230),
(138, 35, '2018-11-01', 'A02', 161.6764),
(139, 35, '2018-11-01', 'A03', 210.0566667),
(140, 35, '2018-11-01', 'A04', 164.392),
(141, 36, '2018-12-01', 'A01', 290),
(142, 36, '2018-12-01', 'A02', 101.752),
(143, 36, '2018-12-01', 'A03', 88.11333333),
(144, 36, '2018-12-01', 'A04', 87.6588),
(145, 37, '2019-01-01', 'A01', 204),
(146, 37, '2019-01-01', 'A02', 115.588),
(147, 37, '2019-01-01', 'A03', 133.1066667),
(148, 37, '2019-01-01', 'A04', 406.1968),
(149, 38, '2019-02-01', 'A01', 200),
(150, 38, '2019-02-01', 'A02', 146.62),
(151, 38, '2019-02-01', 'A03', 119.2133333),
(152, 38, '2019-02-01', 'A04', 406.1968),
(153, 39, '2019-03-01', 'A01', 270),
(154, 39, '2019-03-01', 'A02', 82.5308),
(155, 39, '2019-03-01', 'A03', 145.4733333),
(156, 39, '2019-03-01', 'A04', 238.7416),
(157, 40, '2019-04-01', 'A01', 145),
(158, 40, '2019-04-01', 'A02', 142.0528),
(159, 40, '2019-04-01', 'A03', 176.2186667),
(160, 40, '2019-04-01', 'A04', 321.7912),
(161, 41, '2019-05-01', 'A01', 213),
(162, 41, '2019-05-01', 'A02', 252.19796),
(163, 41, '2019-05-01', 'A03', 130.7566667),
(164, 41, '2019-05-01', 'A04', 296.9048),
(165, 42, '2019-06-01', 'A01', 212),
(166, 42, '2019-06-01', 'A02', 136.08),
(167, 42, '2019-06-01', 'A03', 54.13333333),
(168, 42, '2019-06-01', 'A04', 210.9248),
(169, 43, '2019-07-01', 'A01', 234),
(170, 43, '2019-07-01', 'A02', 245),
(171, 43, '2019-07-01', 'A03', 282),
(172, 43, '2019-07-01', 'A04', 212),
(173, 44, '2019-08-01', 'A01', 186),
(174, 44, '2019-08-01', 'A02', 257),
(175, 44, '2019-08-01', 'A03', 287),
(176, 44, '2019-08-01', 'A04', 210),
(177, 45, '2019-09-01', 'A01', 154),
(178, 45, '2019-09-01', 'A02', 248),
(179, 45, '2019-09-01', 'A03', 274),
(180, 45, '2019-09-01', 'A04', 198),
(181, 46, '2019-10-01', 'A01', 157),
(182, 46, '2019-10-01', 'A02', 256),
(183, 46, '2019-10-01', 'A03', 282),
(184, 46, '2019-10-01', 'A04', 200),
(185, 47, '2019-11-01', 'A01', 249),
(186, 47, '2019-11-01', 'A02', 263),
(187, 47, '2019-11-01', 'A03', 276),
(188, 47, '2019-11-01', 'A04', 220),
(189, 48, '2019-12-01', 'A01', 279),
(190, 48, '2019-12-01', 'A02', 262),
(191, 48, '2019-12-01', 'A03', 267),
(192, 48, '2019-12-01', 'A04', 218);

-- --------------------------------------------------------

--
-- Table structure for table `tb_grafik`
--

CREATE TABLE `tb_grafik` (
  `id_grafik` int(11) NOT NULL,
  `id_testing` int(11) DEFAULT NULL,
  `jenis` varchar(16) DEFAULT NULL,
  `hasil` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_grafik`
--

INSERT INTO `tb_grafik` (`id_grafik`, `id_testing`, `jenis`, `hasil`) VALUES
(13601, 1, 'knn', 'Luka Ringan'),
(13602, 2, 'knn', 'Luka Ringan'),
(13603, 3, 'knn', 'Luka Ringan'),
(13604, 4, 'knn', 'Luka Ringan'),
(13605, 5, 'knn', 'Luka Ringan'),
(13606, 6, 'knn', 'Luka Ringan'),
(13607, 7, 'knn', 'Luka Ringan'),
(13608, 8, 'knn', 'Luka Ringan'),
(13609, 9, 'knn', 'Luka Ringan'),
(13610, 10, 'knn', 'Luka Ringan'),
(13611, 11, 'knn', 'Luka Ringan'),
(13612, 12, 'knn', 'Luka Ringan'),
(13613, 13, 'knn', 'Luka Ringan'),
(13614, 14, 'knn', 'Luka Ringan'),
(13615, 15, 'knn', 'Luka Ringan'),
(13616, 16, 'knn', 'Luka Ringan'),
(13617, 17, 'knn', 'Luka Ringan'),
(13618, 18, 'knn', 'Luka Ringan'),
(13619, 19, 'knn', 'Luka Ringan'),
(13620, 20, 'knn', 'Luka Ringan'),
(13621, 21, 'knn', 'Luka Ringan'),
(13622, 22, 'knn', 'Luka Ringan'),
(13623, 23, 'knn', 'Luka Ringan'),
(13624, 24, 'knn', 'Luka Ringan'),
(13625, 25, 'knn', 'Luka Ringan'),
(13626, 26, 'knn', 'Luka Ringan'),
(13627, 27, 'knn', 'Luka Ringan'),
(13628, 28, 'knn', 'Luka Ringan'),
(13629, 29, 'knn', 'Luka Ringan'),
(13630, 30, 'knn', 'Luka Ringan'),
(13631, 31, 'knn', 'Luka Ringan'),
(13632, 32, 'knn', 'Meninggal dunia'),
(13633, 33, 'knn', 'Luka Ringan'),
(13634, 34, 'knn', 'Luka Ringan'),
(13635, 35, 'knn', 'Luka Ringan'),
(13636, 36, 'knn', 'Luka Ringan'),
(13637, 37, 'knn', 'Luka Ringan'),
(13638, 38, 'knn', 'Luka Ringan'),
(13639, 39, 'knn', 'Luka Ringan'),
(13640, 40, 'knn', 'Luka Ringan'),
(13641, 41, 'knn', 'Luka Ringan'),
(13642, 42, 'knn', 'Luka Ringan'),
(13643, 43, 'knn', 'Luka Ringan'),
(13644, 44, 'knn', 'Luka Ringan'),
(13645, 45, 'knn', 'Luka Ringan'),
(13646, 46, 'knn', 'Luka Ringan'),
(13647, 47, 'knn', 'Luka Ringan'),
(13648, 48, 'knn', 'Luka Ringan'),
(13649, 49, 'knn', 'Luka Ringan'),
(13650, 50, 'knn', 'Luka Ringan'),
(13651, 51, 'knn', 'Luka Ringan'),
(13652, 52, 'knn', 'Luka Ringan'),
(13653, 53, 'knn', 'Luka Ringan'),
(13654, 54, 'knn', 'Luka Ringan'),
(13655, 55, 'knn', 'Luka Ringan'),
(13656, 56, 'knn', 'Luka Ringan'),
(13657, 57, 'knn', 'Luka Ringan'),
(13658, 58, 'knn', 'Luka Ringan'),
(13659, 59, 'knn', 'Luka Ringan'),
(13660, 60, 'knn', 'Luka Ringan'),
(13661, 61, 'knn', 'Meninggal dunia'),
(13662, 62, 'knn', 'Luka Ringan'),
(13663, 63, 'knn', 'Luka Ringan'),
(13664, 64, 'knn', 'Luka Ringan'),
(13665, 65, 'knn', 'Luka Ringan'),
(13666, 66, 'knn', 'Luka Ringan'),
(13667, 67, 'knn', 'Luka Ringan'),
(13668, 68, 'knn', 'Luka Ringan'),
(13669, 69, 'knn', 'Luka Ringan'),
(13670, 70, 'knn', 'Luka Ringan'),
(13671, 71, 'knn', 'Luka Ringan'),
(13672, 72, 'knn', 'Luka Ringan'),
(13673, 73, 'knn', 'Luka Ringan'),
(13674, 74, 'knn', 'Luka Ringan'),
(13675, 75, 'knn', 'Meninggal dunia'),
(13676, 76, 'knn', 'Luka Ringan'),
(13677, 77, 'knn', 'Luka Ringan'),
(13678, 78, 'knn', 'Luka Ringan'),
(13679, 79, 'knn', 'Luka Ringan'),
(13680, 80, 'knn', 'Luka Ringan'),
(13681, 81, 'knn', 'Luka Ringan'),
(13682, 82, 'knn', 'Luka Ringan'),
(13683, 83, 'knn', 'Luka Ringan'),
(13684, 84, 'knn', 'Luka Ringan'),
(13685, 85, 'knn', 'Luka Ringan'),
(13686, 86, 'knn', 'Luka Ringan'),
(13687, 87, 'knn', 'Luka Ringan'),
(13688, 88, 'knn', 'Luka Ringan'),
(13689, 89, 'knn', 'Luka Ringan'),
(13690, 90, 'knn', 'Luka Ringan'),
(13691, 91, 'knn', 'Luka Ringan'),
(13692, 92, 'knn', 'Luka Ringan'),
(13693, 93, 'knn', 'Luka Ringan'),
(13694, 94, 'knn', 'Luka Ringan'),
(13695, 95, 'knn', 'Luka Ringan'),
(13696, 96, 'knn', 'Luka Ringan'),
(13697, 97, 'knn', 'Luka Ringan'),
(13698, 98, 'knn', 'Luka Ringan'),
(13699, 99, 'knn', 'Luka Ringan'),
(13700, 100, 'knn', 'Luka Ringan'),
(13701, 101, 'knn', 'Luka Ringan'),
(13702, 102, 'knn', 'Luka Ringan'),
(13703, 103, 'knn', 'Luka Ringan'),
(13704, 104, 'knn', 'Luka Ringan'),
(13705, 105, 'knn', 'Luka Ringan'),
(13706, 106, 'knn', 'Luka Ringan'),
(13707, 107, 'knn', 'Luka Ringan'),
(13708, 108, 'knn', 'Luka Ringan'),
(13709, 109, 'knn', 'Luka Ringan'),
(13710, 110, 'knn', 'Luka Ringan'),
(13711, 111, 'knn', 'Luka Ringan'),
(13712, 112, 'knn', 'Luka Ringan'),
(13713, 113, 'knn', 'Luka Ringan'),
(13714, 114, 'knn', 'Luka Ringan'),
(13715, 115, 'knn', 'Luka Ringan'),
(13716, 116, 'knn', 'Meninggal dunia'),
(13717, 117, 'knn', 'Luka Ringan'),
(13718, 118, 'knn', 'Luka Ringan'),
(13719, 119, 'knn', 'Luka Ringan'),
(13720, 120, 'knn', 'Luka Ringan'),
(13721, 121, 'knn', 'Luka Ringan'),
(13722, 122, 'knn', 'Luka Ringan'),
(13723, 123, 'knn', 'Luka Ringan'),
(13724, 124, 'knn', 'Luka Ringan'),
(13725, 125, 'knn', 'Meninggal dunia'),
(13726, 126, 'knn', 'Luka Ringan'),
(13727, 127, 'knn', 'Luka Ringan'),
(13728, 128, 'knn', 'Luka Ringan'),
(13729, 129, 'knn', 'Meninggal dunia'),
(13730, 130, 'knn', 'Luka Ringan'),
(13731, 131, 'knn', 'Luka Ringan'),
(13732, 132, 'knn', 'Luka Ringan'),
(13733, 133, 'knn', 'Luka Ringan'),
(13734, 134, 'knn', 'Luka Ringan'),
(13735, 135, 'knn', 'Luka Ringan'),
(13736, 136, 'knn', 'Luka Ringan'),
(13737, 137, 'knn', 'Meninggal dunia'),
(13738, 138, 'knn', 'Luka Ringan'),
(13739, 139, 'knn', 'Luka Ringan'),
(13740, 140, 'knn', 'Luka Ringan'),
(13741, 141, 'knn', 'Luka Ringan'),
(13742, 142, 'knn', 'Luka Ringan'),
(13743, 143, 'knn', 'Luka Ringan'),
(13744, 144, 'knn', 'Luka Ringan'),
(13745, 145, 'knn', 'Luka Ringan'),
(13746, 146, 'knn', 'Luka Ringan'),
(13747, 147, 'knn', 'Luka Ringan'),
(13748, 148, 'knn', 'Luka Ringan'),
(13749, 149, 'knn', 'Luka Ringan'),
(13750, 150, 'knn', 'Luka Ringan'),
(13751, 151, 'knn', 'Luka Ringan'),
(13752, 152, 'knn', 'Luka Ringan'),
(13753, 153, 'knn', 'Luka Ringan'),
(13754, 154, 'knn', 'Luka Ringan'),
(13755, 155, 'knn', 'Luka Ringan'),
(13756, 156, 'knn', 'Meninggal dunia'),
(13757, 157, 'knn', 'Luka Ringan'),
(13758, 158, 'knn', 'Luka Ringan'),
(13759, 159, 'knn', 'Luka Ringan'),
(13760, 160, 'knn', 'Luka Ringan'),
(13761, 1, 'c45', 'Luka Ringan'),
(13762, 2, 'c45', 'Luka Ringan'),
(13763, 3, 'c45', 'Luka Ringan'),
(13764, 4, 'c45', 'Meninggal dunia'),
(13765, 5, 'c45', 'Luka Ringan'),
(13766, 6, 'c45', 'Luka Ringan'),
(13767, 7, 'c45', 'Luka Ringan'),
(13768, 8, 'c45', 'Meninggal dunia'),
(13769, 9, 'c45', 'Luka Ringan'),
(13770, 10, 'c45', 'Luka Ringan'),
(13771, 11, 'c45', 'Meninggal dunia'),
(13772, 12, 'c45', 'Luka Ringan'),
(13773, 13, 'c45', 'Luka Ringan'),
(13774, 14, 'c45', 'Luka Ringan'),
(13775, 15, 'c45', 'Luka Ringan'),
(13776, 16, 'c45', 'Luka Ringan'),
(13777, 17, 'c45', 'Luka Ringan'),
(13778, 18, 'c45', 'Luka Ringan'),
(13779, 19, 'c45', 'Luka Ringan'),
(13780, 20, 'c45', 'Luka Ringan'),
(13781, 21, 'c45', 'Luka Ringan'),
(13782, 22, 'c45', 'Luka Ringan'),
(13783, 23, 'c45', 'Luka Ringan'),
(13784, 24, 'c45', 'Luka Ringan'),
(13785, 25, 'c45', 'Luka Ringan'),
(13786, 26, 'c45', 'Luka Ringan'),
(13787, 27, 'c45', 'Luka Ringan'),
(13788, 28, 'c45', 'Luka Ringan'),
(13789, 29, 'c45', 'Luka Ringan'),
(13790, 30, 'c45', 'Meninggal dunia'),
(13791, 31, 'c45', 'Luka Ringan'),
(13792, 32, 'c45', 'Luka Ringan'),
(13793, 33, 'c45', 'Luka Ringan'),
(13794, 34, 'c45', 'Luka Ringan'),
(13795, 35, 'c45', 'Luka Ringan'),
(13796, 36, 'c45', 'Luka Ringan'),
(13797, 37, 'c45', 'Luka Ringan'),
(13798, 38, 'c45', 'Luka Ringan'),
(13799, 39, 'c45', 'Luka Ringan'),
(13800, 40, 'c45', 'Luka Ringan'),
(13801, 41, 'c45', 'Luka Ringan'),
(13802, 42, 'c45', 'Luka Ringan'),
(13803, 43, 'c45', 'Meninggal dunia'),
(13804, 44, 'c45', 'Luka Ringan'),
(13805, 45, 'c45', 'Luka Ringan'),
(13806, 46, 'c45', 'Luka Ringan'),
(13807, 47, 'c45', 'Luka Ringan'),
(13808, 48, 'c45', 'Luka Ringan'),
(13809, 49, 'c45', 'Luka Ringan'),
(13810, 50, 'c45', 'Luka Ringan'),
(13811, 51, 'c45', 'Luka Ringan'),
(13812, 52, 'c45', 'Luka berat'),
(13813, 53, 'c45', 'Luka Ringan'),
(13814, 54, 'c45', 'Luka Ringan'),
(13815, 55, 'c45', 'Luka Ringan'),
(13816, 56, 'c45', 'Luka Ringan'),
(13817, 57, 'c45', 'Luka Ringan'),
(13818, 58, 'c45', 'Luka Ringan'),
(13819, 59, 'c45', 'Luka Ringan'),
(13820, 60, 'c45', 'Luka Ringan'),
(13821, 61, 'c45', 'Meninggal dunia'),
(13822, 62, 'c45', 'Luka berat'),
(13823, 63, 'c45', 'Meninggal dunia'),
(13824, 64, 'c45', 'Luka Ringan'),
(13825, 65, 'c45', 'Luka Ringan'),
(13826, 66, 'c45', 'Luka Ringan'),
(13827, 67, 'c45', 'Luka Ringan'),
(13828, 68, 'c45', 'Luka Ringan'),
(13829, 69, 'c45', 'Luka Ringan'),
(13830, 70, 'c45', 'Luka Ringan'),
(13831, 71, 'c45', 'Luka Ringan'),
(13832, 72, 'c45', 'Luka Ringan'),
(13833, 73, 'c45', 'Luka Ringan'),
(13834, 74, 'c45', 'Luka Ringan'),
(13835, 75, 'c45', 'Luka Ringan'),
(13836, 76, 'c45', 'Luka Ringan'),
(13837, 77, 'c45', 'Luka Ringan'),
(13838, 78, 'c45', 'Luka Ringan'),
(13839, 79, 'c45', 'Luka Ringan'),
(13840, 80, 'c45', 'Meninggal dunia'),
(13841, 81, 'c45', 'Luka Ringan'),
(13842, 82, 'c45', 'Luka Ringan'),
(13843, 83, 'c45', 'Luka Ringan'),
(13844, 84, 'c45', 'Luka Ringan'),
(13845, 85, 'c45', 'Luka Ringan'),
(13846, 86, 'c45', 'Luka Ringan'),
(13847, 87, 'c45', 'Luka Ringan'),
(13848, 88, 'c45', 'Luka Ringan'),
(13849, 89, 'c45', 'Luka Ringan'),
(13850, 90, 'c45', 'Luka Ringan'),
(13851, 91, 'c45', 'Luka Ringan'),
(13852, 92, 'c45', 'Luka Ringan'),
(13853, 93, 'c45', 'Luka Ringan'),
(13854, 94, 'c45', 'Meninggal dunia'),
(13855, 95, 'c45', 'Luka Ringan'),
(13856, 96, 'c45', 'Luka Ringan'),
(13857, 97, 'c45', 'Luka Ringan'),
(13858, 98, 'c45', 'Luka Ringan'),
(13859, 99, 'c45', 'Luka Ringan'),
(13860, 100, 'c45', 'Luka Ringan'),
(13861, 101, 'c45', 'Luka Ringan'),
(13862, 102, 'c45', 'Luka Ringan'),
(13863, 103, 'c45', 'Luka Ringan'),
(13864, 104, 'c45', 'Luka Ringan'),
(13865, 105, 'c45', 'Luka Ringan'),
(13866, 106, 'c45', 'Luka Ringan'),
(13867, 107, 'c45', 'Luka Ringan'),
(13868, 108, 'c45', 'Luka Ringan'),
(13869, 109, 'c45', 'Luka Ringan'),
(13870, 110, 'c45', 'Luka Ringan'),
(13871, 111, 'c45', 'Luka Ringan'),
(13872, 112, 'c45', 'Luka Ringan'),
(13873, 113, 'c45', 'Luka Ringan'),
(13874, 114, 'c45', 'Luka Ringan'),
(13875, 115, 'c45', 'Luka Ringan'),
(13876, 116, 'c45', 'Luka Ringan'),
(13877, 117, 'c45', 'Luka Ringan'),
(13878, 118, 'c45', 'Luka Ringan'),
(13879, 119, 'c45', 'Luka Ringan'),
(13880, 120, 'c45', 'Meninggal dunia'),
(13881, 121, 'c45', 'Luka Ringan'),
(13882, 122, 'c45', 'Luka Ringan'),
(13883, 123, 'c45', 'Luka Ringan'),
(13884, 124, 'c45', 'Luka Ringan'),
(13885, 125, 'c45', 'Meninggal dunia'),
(13886, 126, 'c45', 'Luka Ringan'),
(13887, 127, 'c45', 'Luka Ringan'),
(13888, 128, 'c45', 'Luka Ringan'),
(13889, 129, 'c45', 'Luka Ringan'),
(13890, 130, 'c45', 'Luka Ringan'),
(13891, 131, 'c45', 'Luka Ringan'),
(13892, 132, 'c45', 'Luka Ringan'),
(13893, 133, 'c45', 'Luka Ringan'),
(13894, 134, 'c45', 'Luka Ringan'),
(13895, 135, 'c45', 'Luka Ringan'),
(13896, 136, 'c45', 'Luka Ringan'),
(13897, 137, 'c45', 'Luka Ringan'),
(13898, 138, 'c45', 'Luka Ringan'),
(13899, 139, 'c45', 'Luka Ringan'),
(13900, 140, 'c45', 'Luka Ringan'),
(13901, 141, 'c45', 'Luka Ringan'),
(13902, 142, 'c45', 'Luka Ringan'),
(13903, 143, 'c45', 'Luka Ringan'),
(13904, 144, 'c45', 'Luka Ringan'),
(13905, 145, 'c45', 'Meninggal dunia'),
(13906, 146, 'c45', 'Luka Ringan'),
(13907, 147, 'c45', 'Luka berat'),
(13908, 148, 'c45', 'Meninggal dunia'),
(13909, 149, 'c45', 'Meninggal dunia'),
(13910, 150, 'c45', 'Luka Ringan'),
(13911, 151, 'c45', 'Luka Ringan'),
(13912, 152, 'c45', 'Luka Ringan'),
(13913, 153, 'c45', 'Luka Ringan'),
(13914, 154, 'c45', 'Luka Ringan'),
(13915, 155, 'c45', 'Luka Ringan'),
(13916, 156, 'c45', 'Meninggal dunia'),
(13917, 157, 'c45', 'Meninggal dunia'),
(13918, 158, 'c45', 'Luka Ringan'),
(13919, 159, 'c45', 'Luka Ringan'),
(13920, 160, 'c45', 'Meninggal dunia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(5) NOT NULL,
  `kode_alternatif` varchar(7) DEFAULT NULL,
  `id_atribut` varchar(5) DEFAULT NULL,
  `id_nilai` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `id_atribut`, `id_nilai`) VALUES
(9, 'A001', 'A1', 3),
(10, 'A001', 'A2', 7),
(11, 'A001', 'A3', 12),
(12, 'A001', 'A4', 26),
(13, 'A001', 'A5', 27),
(14, 'A002', 'A1', 3),
(15, 'A002', 'A2', 9),
(16, 'A002', 'A3', 13),
(17, 'A002', 'A4', 25),
(18, 'A002', 'A5', 27),
(22, 'A003', 'A1', 5),
(23, 'A003', 'A2', 10),
(24, 'A003', 'A3', 13),
(25, 'A003', 'A4', 26),
(26, 'A003', 'A5', 27);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `nama`, `tanggal`, `barang`) VALUES
(3, 'Joshua Davian Kristanto', '2020-07-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_atribut`
--
ALTER TABLE `tb_atribut`
  ADD PRIMARY KEY (`id_atribut`);

--
-- Indexes for table `tb_dataset`
--
ALTER TABLE `tb_dataset`
  ADD PRIMARY KEY (`id_dataset`);

--
-- Indexes for table `tb_grafik`
--
ALTER TABLE `tb_grafik`
  ADD PRIMARY KEY (`id_grafik`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_atribut`
--
ALTER TABLE `tb_atribut`
  MODIFY `id_atribut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_dataset`
--
ALTER TABLE `tb_dataset`
  MODIFY `id_dataset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `tb_grafik`
--
ALTER TABLE `tb_grafik`
  MODIFY `id_grafik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13921;

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
