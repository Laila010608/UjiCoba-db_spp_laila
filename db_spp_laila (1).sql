-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2026 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp_laila`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('1', '11', 'Rekayasa Perangkat Lunak'),
('3', '12', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `bulan_tagihan` varchar(12) DEFAULT NULL,
  `tahun_tagihan` int(4) DEFAULT NULL,
  `id_spp` varchar(5) DEFAULT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `no_bayar`, `keterangan`) VALUES
(15, 'A01', '1304', '2026-08-27', 'Juli', 2026, '3', '2608270002', 'LUNAS'),
(16, 'A01', '1304', '2026-08-27', 'Agustus', 2026, '3', '2608270003', 'LUNAS'),
(17, NULL, '1304', NULL, 'September', 2026, '3', NULL, NULL),
(18, NULL, '1304', NULL, 'Oktober', 2026, '3', NULL, NULL),
(19, NULL, '1304', NULL, 'Nopember', 2026, '3', NULL, NULL),
(20, NULL, '1304', NULL, 'Desember', 2026, '3', NULL, NULL),
(21, NULL, '1304', NULL, 'Januari', 2027, '3', NULL, NULL),
(22, NULL, '1304', NULL, 'Februari', 2027, '3', NULL, NULL),
(23, NULL, '1304', NULL, 'Maret', 2027, '3', NULL, NULL),
(24, NULL, '1304', NULL, 'April', 2027, '3', NULL, NULL),
(25, NULL, '1304', NULL, 'Mei', 2027, '3', NULL, NULL),
(26, NULL, '1304', NULL, 'Juni', 2027, '3', NULL, NULL),
(27, NULL, '1100', NULL, 'Juli', 2026, '2', NULL, NULL),
(28, NULL, '1100', NULL, 'Agustus', 2026, '2', NULL, NULL),
(29, NULL, '1100', NULL, 'September', 2026, '2', NULL, NULL),
(30, NULL, '1100', NULL, 'Oktober', 2026, '2', NULL, NULL),
(31, NULL, '1100', NULL, 'Nopember', 2026, '2', NULL, NULL),
(32, NULL, '1100', NULL, 'Desember', 2026, '2', NULL, NULL),
(33, NULL, '1100', NULL, 'Januari', 2027, '2', NULL, NULL),
(34, NULL, '1100', NULL, 'Februari', 2027, '2', NULL, NULL),
(35, NULL, '1100', NULL, 'Maret', 2027, '2', NULL, NULL),
(36, NULL, '1100', NULL, 'April', 2027, '2', NULL, NULL),
(37, NULL, '1100', NULL, 'Mei', 2027, '2', NULL, NULL),
(38, NULL, '1100', NULL, 'Juni', 2027, '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'sasa', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Budi', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('1100', '098765', 'Alicia', '1', 'Banjarbaru', '08518000', '2'),
('1304', '20094', 'laila', '1', 'Banjarbaru', '00856', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('1', 2023, 880),
('2', 2022, 720),
('3', 2025, 6700),
('4', 2020, 100),
('5', 2025, 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
