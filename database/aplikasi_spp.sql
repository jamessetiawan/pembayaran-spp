-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 04:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_spp`
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
(1, 'mugiwara'),
(9, 'naruto'),
(11, 'sasuke');

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
(3, 12345664, 'aziz mario', 'XII IPA', '2022/2023', 300000, 'Desa Maribaya', '0897665444'),
(10, 2147483647, 'aziz rio', 'XII IPA', '2022/2023', 300000, 'jl.semut', '08978907654322'),
(15, 124567899, 'naruto', 'XII MATEMATIKA', '2022/2023', 300000, 'konoha', '085678979888888');

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
(10, 1, '2022-07-10', 'Juli 2022', '2110030000', '2022-07-03', 300000, 'Lunas', 1),
(10, 2, '2022-08-10', 'Agustus 2022', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 3, '2022-10-29', 'September 2022', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 4, '2022-10-10', 'Oktober 2022', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 5, '2022-11-30', 'November 2022', '', '0000-00-00', 300000, 'belum lunas', 1),
(10, 6, '2022-12-29', 'Desember 2022', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 7, '2023-01-10', 'Januari 2023', '', '0000-00-00', 300000, 'belum_lunas', 1),
(10, 8, '2023-02-10', 'Februari 2023', '', '0000-00-00', 300000, 'Belum Lunas', 1),
(10, 9, '2023-03-30', 'Maret 2023', '', '0000-00-00', 300000, 'belum lunas', 1),
(10, 10, '2023-04-10', 'April 2023', '', '0000-00-00', 300000, 'belum lunas', 1),
(10, 11, '2023-05-10', 'Mei 2023', '', '0000-00-00', 300000, 'belum lunas', 1),
(10, 12, '2023-06-10', 'Juni 2023', '', '0000-00-00', 300000, 'belum lunas', 1),
(15, 61, '2023-06-01', 'Juni 2023', '', '0000-00-00', 300000, '', 1),
(15, 62, '2023-07-01', 'Juli 2023', '', '0000-00-00', 300000, '', 1),
(15, 63, '2023-08-01', 'Agustus 2023', '', '0000-00-00', 300000, '', 1),
(15, 64, '2023-09-01', 'September 2023', '', '0000-00-00', 300000, '', 1),
(15, 65, '2023-10-01', 'Oktober 2023', '', '0000-00-00', 300000, '', 1),
(15, 66, '2023-11-01', 'November 2023', '', '0000-00-00', 300000, '', 1),
(15, 67, '2023-12-01', 'Desember 2023', '', '0000-00-00', 300000, '', 1),
(15, 68, '2023-01-01', 'Januari 2023', '', '0000-00-00', 300000, '', 1),
(15, 69, '2023-02-01', 'Februari 2023', '', '0000-00-00', 300000, '', 1),
(15, 70, '2023-03-01', 'Maret 2023', '', '0000-00-00', 300000, '', 1),
(15, 71, '2023-04-01', 'April 2023', '', '0000-00-00', 300000, '', 1),
(15, 72, '2023-05-01', 'Mei 2023', '', '0000-00-00', 300000, '', 1);

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
(1, 'admin@gmail.com', '12dea96fec20593566ab75692c9949596833adc9', 'aziz mario', 'default.jpg', 'Desa maribaya', '089765444444533'),
(8, 'user@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'naruto', 'default.jpg', 'konoha', '0897777'),
(9, 'finanurul@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'fina', '', 'tegal', '547883902020');

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
('XII MATEMATIKA', 1),
('XII IPA', 9),
('XII IPS', 9);

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
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
