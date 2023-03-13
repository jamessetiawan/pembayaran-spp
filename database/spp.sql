-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 05:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`) VALUES
(12, 'Andri Muhoir, ST'),
(13, 'Edeh Kurniasih, S.Pd'),
(14, 'Nuraeni, S.Pd'),
(15, 'Didi Mei Somantri, S.Kom'),
(16, 'Indra Priatna, S.Pd'),
(17, 'Yani Cahyani, S.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `kelas`, `tahun_ajaran`, `biaya`, `alamat`, `nohp`) VALUES
(16, 34433, 'Palah', 'XII BDP 1', '2022/2023', 300000, 'ssd', '078443'),
(17, 576, 'Agus Setiawan', 'XII RPL 1', '2022/2023', 300000, 'cijati', '08787');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_siswa` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `no_bayar` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml` int(11) NOT NULL,
  `ket` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_siswa`, `id_spp`, `jatuh_tempo`, `bulan`, `no_bayar`, `tgl_bayar`, `jml`, `ket`, `id_user`) VALUES
(16, 73, '2022-06-01', 'Juni 2022', '2303080000', '2023-03-08', 300000, 'Lunas', 1),
(16, 74, '2022-07-01', 'Juli 2022', '2303130000', '2023-03-13', 300000, 'Lunas', 1),
(16, 75, '2022-08-01', 'Agustus 2022', '', '0000-00-00', 300000, '', 1),
(16, 76, '2022-09-01', 'September 2022', '2303080000', '2023-03-08', 300000, 'Lunas', 1),
(16, 77, '2022-10-01', 'Oktober 2022', '', '0000-00-00', 300000, '', 1),
(16, 78, '2022-11-01', 'November 2022', '', '0000-00-00', 300000, '', 1),
(16, 79, '2022-12-01', 'Desember 2022', '', '0000-00-00', 300000, '', 1),
(16, 80, '2023-01-01', 'Januari 2023', '', '0000-00-00', 300000, '', 1),
(16, 81, '2023-02-01', 'Februari 2023', '', '0000-00-00', 300000, '', 1),
(16, 82, '2023-03-01', 'Maret 2023', '', '0000-00-00', 300000, '', 1),
(16, 83, '2023-04-01', 'April 2023', '', '0000-00-00', 300000, '', 1),
(16, 84, '2023-05-01', 'Mei 2023', '', '0000-00-00', 300000, '', 1),
(17, 85, '2022-06-01', 'Juni 2022', '', '0000-00-00', 300000, '', 1),
(17, 86, '2022-07-01', 'Juli 2022', '', '0000-00-00', 300000, '', 1),
(17, 87, '2022-08-01', 'Agustus 2022', '', '0000-00-00', 300000, '', 1),
(17, 88, '2022-09-01', 'September 2022', '', '0000-00-00', 300000, '', 1),
(17, 89, '2022-10-01', 'Oktober 2022', '', '0000-00-00', 300000, '', 1),
(17, 90, '2022-11-01', 'November 2022', '', '0000-00-00', 300000, '', 1),
(17, 91, '2022-12-01', 'Desember 2022', '', '0000-00-00', 300000, '', 1),
(17, 92, '2023-01-01', 'Januari 2023', '', '0000-00-00', 300000, '', 1),
(17, 93, '2023-02-01', 'Februari 2023', '', '0000-00-00', 300000, '', 1),
(17, 94, '2023-03-01', 'Maret 2023', '', '0000-00-00', 300000, '', 1),
(17, 95, '2023-04-01', 'April 2023', '', '0000-00-00', 300000, '', 1),
(17, 96, '2023-05-01', 'Mei 2023', '', '0000-00-00', 300000, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nohp` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `nama_lengkap`, `image`, `alamat`, `nohp`) VALUES
(1, 'admin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'aziz mario', 'default.jpg', 'Desa maribaya', '089765444444533'),
(8, 'user@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'naruto', 'default.jpg', 'konoha', '0897777'),
(9, 'finanurul@gmail.com', '6a927ad1b21bca6be85fc413f7125f802ef395d4', 'fina', '', 'cijati', '547883902020');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `kelas` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`kelas`, `id_guru`) VALUES
('XI TKRO', 12),
('X TKRO', 13),
('XI APHP', 13),
('XII BDP 1', 14),
('XI RPL 2', 15),
('XII RPL 2', 16),
('X RPL 1', 17),
('XII RPL 1', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `kelas` (`kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`),
  ADD KEY `spp_ibfk_2` (`id_siswa`),
  ADD KEY `spp_ibfk_1` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas`) REFERENCES `wali_kelas` (`kelas`) ON DELETE CASCADE;

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `spp_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spp_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
