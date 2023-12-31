-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 01:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kereta`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` varchar(255) NOT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `asal`, `tujuan`, `kelas`, `harga`, `tanggal`, `waktu`) VALUES
('6dfebdc855', 'Karawang', 'Purwokorto', 'Ekonomi', '70000', '2003-07-30', '03:33'),
('cc1d74a5e7', 'karawang', 'surakarta', 'vip', '450000', '2020-06-12', '22:03'),
('fd6b3bd206', 'Bekasi', 'Kosa', 'Ekonomi', '70000', '2023-07-06', '22:25');

-- --------------------------------------------------------

--
-- Table structure for table `k_tujuan`
--

CREATE TABLE `k_tujuan` (
  `id` int(11) NOT NULL,
  `id_jadwal` varchar(255) NOT NULL,
  `jml_penumpang` varchar(255) NOT NULL,
  `limit_penumpang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `k_tujuan`
--

INSERT INTO `k_tujuan` (`id`, `id_jadwal`, `jml_penumpang`, `limit_penumpang`) VALUES
(5, 'cc1d74a5e7', '284', '1000'),
(6, '6dfebdc855', '45', '1000'),
(7, '480c84c1c9', '42', '1000'),
(8, '3cd7bbad95', '', '1000'),
(9, 'fd6b3bd206', '24', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `log_order`
--

CREATE TABLE `log_order` (
  `id` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `usia` varchar(255) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tgl_order` date NOT NULL,
  `jml_penumpang` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_order`
--

INSERT INTO `log_order` (`id`, `id_user`, `id_jadwal`, `nama`, `usia`, `no_kk`, `no_hp`, `tgl_order`, `jml_penumpang`, `date_created`) VALUES
('09a65dc90506387f7e12', 4, 6, 'admin', '20', '1231231231', '08212131231312', '2023-04-30', 1, '2023-04-30 08:05:44'),
('1e0f62b393b470e85fae', 4, 6, 'asdasdasadd', '23', '122141241421', '124124214124', '2023-04-30', 42, '2023-04-30 07:38:52'),
('1e32d1b0811a83714b60', 4, 0, 'Noi', '12', '14214212', '412424', '2023-07-27', 1, '2023-07-04 16:34:59'),
('3508a59b95a5527e662b', 4, 480, 'asd', '32', '124124', '424242', '2023-05-05', 42, '2023-04-30 07:44:54'),
('5060bdd8295c4d0c23c7', 4, 0, 'Avavga', '67', '162626', '1677', '2023-05-01', 3, '2023-05-01 14:27:43'),
('697bce56551a164baccf', 4, 0, 'Userdia', '20', '4778512', '0888888488', '2023-06-29', 3, '2023-06-29 19:26:45'),
('7cc2893db5298dc60d52', 4, 0, 'Nai', '90', '123132242', '099999', '2023-07-26', 23, '2023-07-04 16:32:46'),
('83308c8c37cfa3f6b380', 6, 0, 'Mochamad Yudi Sobari', '25', '3216818613208531', '085695190268', '2020-06-12', 100, '2020-06-11 16:31:43'),
('8aa25b13d7dd44814dd4', 4, 0, 'zzz', '32', '123123', '134134134', '2023-07-04', 1, '2023-07-04 16:17:25'),
('95a6c5061c16badaf546', 6, 0, 'Mochamad Yudi Sobari', '25', '3216818613208531', '085695190268', '2020-06-12', 5, '2020-06-11 16:24:51'),
('9cb95247817a662f8007', 4, 0, 'asd', '32', '124214', '124124', '2023-04-29', 5, '2023-04-30 17:39:34'),
('a16071bf296c347a8f22', 9, 0, 'Azel Fa', '88', '67913429781324', '09885535', '2023-06-07', 2, '2023-06-26 11:43:16'),
('a4c4fb279f69f4f7a649', 6, 0, 'Mochamad', '22', '3216818613208531', '085695190268', '2020-06-13', 4, '2020-06-11 16:13:46'),
('b253341260d7c79d463e', 4, 6, 'asd', '31', '124124124', '12421421', '2023-05-04', 2, '2023-04-30 07:43:43'),
('b3154a47a773018f91df', 4, 0, 'Szz', '57', '4646754', '5858585', '2023-05-03', 1, '2023-04-29 11:04:06'),
('d4b038c6b3f38c41456f', 4, 0, 'Gshshz', '12', '18727272', '29282773821', '2023-05-01', 2, '2023-05-01 14:26:29'),
('e1dc024642cfe1324461', 6, 11, 'Mochamad', '22', '326816513513546841351', '085695190268', '2020-06-12', 2, '2020-06-11 15:44:54'),
('e8093435ce0412bd9f22', 4, 0, 'sdgsfd', '354', '414234', '354354534', '4344-03-04', 23, '2023-04-29 17:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` varchar(255) NOT NULL,
  `id_order` varchar(255) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `id_order`, `payment_code`, `status`, `date_created`) VALUES
('09b753bbd2', 'b4cc27df7631405d78fc', 'KAI-eedebf7969fb6930236c3c06e387ab47d6a8216e', 'sudah', '2020-06-11 16:29:02'),
('184913e0d1', 'dbe27bab614819f4937b', 'KAI-71b771f7b172ba5a6abcdd99f925195d7a9ac9b5', 'sudah', '2020-06-04 13:54:24'),
('1b816d8774', '1e0f62b393b470e85fae', 'KAI-545d14f0cc9482d003e3e4ca5def156562744aa5', 'sudah', '2023-04-30 07:38:52'),
('4148f8b266', 'e8093435ce0412bd9f22', 'KAI-74afafe7030d6aa4764c632cdfbabd22bf10d39e', 'sudah', '2023-04-29 17:16:55'),
('4ae876f55b', 'a16071bf296c347a8f22', 'KAI-74b47a5dc7acb3d3317409ef91f9dd37b5a189f0', 'sudah', '2023-06-26 11:43:16'),
('5572db90a8', '3508a59b95a5527e662b', 'KAI-c80848ae12528b25300670f894a4f9b7a7bb84f2', 'sudah', '2023-04-30 07:44:54'),
('564492c66c', '8aa25b13d7dd44814dd4', 'KAI-1ca68b5a4361ce1166f5637cf86b7e3c9801ea98', 'sudah', '2023-07-04 16:17:25'),
('649afd4a2c', '69c71b00284aa45f4bcb', 'KAI-9ce70913b385bdf37b32c4435e8f4aeb068c474d', 'sudah', '2020-06-03 20:54:44'),
('6cab1f37f6', '684a1079060c7cf9934b', 'KAI-2116e383fdbd2c1c1ee113c7b7a32cb373af378a', 'sudah', '2020-06-11 15:30:32'),
('7bb430f113', 'b776597a97e34c14556f', 'KAI-2eeacf164c081a3b91afac92133939121eb079ff', 'sudah', '2020-06-11 16:14:06'),
('84db3f8dc8', 'e1dc024642cfe1324461', 'KAI-2e5fe0b3aac6ba98cb18899c0f365303a3376f60', 'sudah', '2020-06-11 15:44:54'),
('854057c21f', '09a65dc90506387f7e12', 'KAI-16391347ccb5ca8084e286fd3e1c73f707223f2f', 'sudah', '2023-04-30 08:05:44'),
('8c504aaad8', 'cd32a06024aa465d53d8', 'KAI-1c0787ef0e774990ce001adbfe3016af6e135169', 'sudah', '2020-06-03 21:02:16'),
('99997727fd', '9cb95247817a662f8007', 'KAI-8d3844f86b55e29607bec8e71f2b6cdd00d41558', 'sudah', '2023-04-30 17:39:34'),
('9aaec98e58', '51a185d67af38d37b085', 'KAI-5960b1581eea78d25f3577d20e63d794ae555d69', 'sudah', '2020-06-03 20:54:00'),
('a5b203f16c', '5060bdd8295c4d0c23c7', 'KAI-2f8a3d7f424f092266233d54a2743891634efe7d', 'sudah', '2023-05-01 14:27:43'),
('aa91afd81c', 'c546ae25e28a887a8829', 'KAI-c5c5ae65e531dcfdaf2d1178d054a278122ec5a1', 'sudah', '2020-06-03 21:02:13'),
('bccc65726d', 'cbcdc26602d10028be18', 'KAI-17f9ab292a7620f3554797c927a74bd35c742ce0', 'sudah', '2020-06-03 21:02:10'),
('c3f124e7a0', '83308c8c37cfa3f6b380', 'KAI-4dd252f7b0b767f2d0e68d737ca0db5880a914f8', 'sudah', '2020-06-11 16:31:43'),
('c7f8d73a57', 'afc755fbb0c6014427ad', 'KAI-a6baffa73618d63c8ea67b2758e92567993183aa', 'sudah', '2020-06-11 16:52:28'),
('cfabb835d2', 'f6e8f066ff48ab6c89f1', 'KAI-6152c09769e83ee59f94a12b9c1dae40a3b08b9a', 'sudah', '2020-06-11 16:50:29'),
('d2d6b2a163', 'a4c4fb279f69f4f7a649', 'KAI-1a64bc5d4a172721de782c8fb4bc4d9b19c02dfd', 'sudah', '2020-06-11 16:13:46'),
('d2eb4b8107', 'd4b038c6b3f38c41456f', 'KAI-de7b16de10c86c4b047b9f2fd5e8be3062238240', 'sudah', '2023-05-01 14:26:29'),
('d41fa0b178', '697bce56551a164baccf', 'KAI-701caf45562a51e49e2c0173137ed1c4a5c3944e', 'sudah', '2023-06-29 19:26:45'),
('d955dde4a3', '40bfd88d6ca584527563', 'KAI-b67fc0068944efad13899f25757510877ad5ed14', 'sudah', '2020-06-11 15:23:07'),
('dd831b358c', '98f7c1f97e9a28ef2fb8', 'KAI-9f01d99b363d18bfdf54868103c16587073d499c', 'sudah', '2020-06-03 21:02:08'),
('ea8b0a8294', '5d52f4b02277ec893377', 'KAI-fc11d3da014874c3a3b813617eedb95ff7aec090', 'sudah', '2020-06-04 13:30:57'),
('f0b0980ec7', '1fb3dae8ec8b56061bd2', 'KAI-7bf6112f402cde68c7892084d139cdb00381cf5a', 'sudah', '2020-06-04 13:54:03'),
('f250546b74', 'b3154a47a773018f91df', 'KAI-150278ff6c2ad8fdd8ce610a627d3ade8cf43ce3', 'sudah', '2023-04-29 11:04:06'),
('f8e7e187fa', '471d9c5740fa0cd31f3d', 'KAI-b81dbcf8c99bf1a9d32ae8a66e7c8bd2674c2103', 'sudah', '2020-06-11 15:32:30'),
('fd2af358d1', 'b253341260d7c79d463e', 'KAI-806e080a5d7fb0bca93abb71bcd8f62d1e3e40b5', 'sudah', '2023-04-30 07:43:43'),
('fd3938e4b6', '95a6c5061c16badaf546', 'KAI-779e3b0dbf6762c525fad16fbde3ae7c2dba294f', 'sudah', '2020-06-11 16:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `kode_tiket` varchar(15) NOT NULL,
  `nama_penumpang` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id`, `id_order`, `kode_tiket`, `nama_penumpang`, `asal`, `tujuan`) VALUES
(1, '', '64a444171f404', 'woyo', '', ''),
(2, 'cc1d74a5e7', '64a44452c547b', 'awa', '', ''),
(3, 'cc1d74a5e7', '64a444885b91d', 'lah', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `id` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `usia` varchar(255) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tgl_order` date NOT NULL,
  `jml_penumpang` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `level`, `date_created`) VALUES
(4, 'user2', '21232f297a57a5a743894a0e4a801fc3', 'user', '2020-05-30 18:41:40'),
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2020-05-30 20:21:34'),
(7, 'user1', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', '2023-04-30 07:46:09'),
(8, '', 'd41d8cd98f00b204e9800998ecf8427e', 'user', '2023-04-30 10:06:11'),
(9, 'user5', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', '2023-06-26 11:42:49'),
(10, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'user', '2023-06-26 12:30:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_tujuan`
--
ALTER TABLE `k_tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_order`
--
ALTER TABLE `log_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `k_tujuan`
--
ALTER TABLE `k_tujuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
