-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 04:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal_d3ti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Admin'),
(2, 'dosen', 'ce28eed1511f631af6b2a7bb0a85d636', 'Mr. X', 'Dosen'),
(3, 'laboran', '6685f00d07945ccaef2097ce44b9c0d4', 'Mr. Y', 'Laboran');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id` int(5) NOT NULL,
  `nip` varchar(10) DEFAULT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id`, `nip`, `nama`) VALUES
(108, '12186381', 'Yusuf Fadhlila Rachman'),
(109, '12678132', 'Masbahah'),
(110, '12683362', 'Trisna Ari Roshinta'),
(111, '12794738', 'Darmawan Lahru Riatma'),
(112, '12317899', 'Fendi Aji Purnomo'),
(113, '21227894', 'Mr. X'),
(114, '56782911', 'Nur Azizul Haqimi'),
(115, '12536789', 'Iqbal'),
(116, '12567892', 'Sah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hari`
--

CREATE TABLE `tbl_hari` (
  `id` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hari`
--

INSERT INTO `tbl_hari` (`id`, `nama`, `kelas`) VALUES
(1, 'Senin', 'REGULER'),
(2, 'Selasa', 'REGULER'),
(3, 'Rabu', 'REGULER'),
(4, 'Kamis', 'REGULER'),
(5, 'Jumat', 'REGULER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwalkuliah`
--

CREATE TABLE `tbl_jadwalkuliah` (
  `id` int(3) NOT NULL,
  `id_pengampu` int(3) NOT NULL,
  `id_jam` int(3) NOT NULL,
  `id_hari` int(3) NOT NULL,
  `id_ruang` int(3) NOT NULL,
  `kelas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwalkuliah`
--

INSERT INTO `tbl_jadwalkuliah` (`id`, `id_pengampu`, `id_jam`, `id_hari`, `id_ruang`, `kelas`) VALUES
(1, 239, 2, 3, 45, 'D'),
(2, 239, 16, 2, 48, 'E'),
(3, 240, 11, 5, 42, 'D'),
(4, 240, 3, 1, 43, 'E'),
(5, 241, 11, 3, 48, 'D'),
(6, 241, 1, 2, 44, 'E'),
(7, 242, 16, 3, 42, 'D'),
(8, 242, 10, 2, 49, 'E'),
(9, 243, 16, 2, 47, 'D'),
(10, 243, 7, 2, 42, 'E'),
(11, 244, 3, 4, 48, 'D'),
(12, 244, 4, 3, 48, 'E'),
(13, 245, 1, 2, 47, 'D'),
(14, 245, 13, 1, 47, 'E'),
(15, 246, 4, 2, 45, 'D'),
(16, 246, 10, 3, 47, 'E'),
(17, 247, 10, 2, 42, 'D'),
(18, 247, 4, 4, 49, 'E'),
(19, 248, 2, 5, 45, 'D'),
(20, 248, 10, 1, 44, 'E'),
(21, 249, 11, 4, 42, 'D'),
(22, 249, 11, 5, 46, 'E'),
(23, 250, 1, 4, 44, 'D'),
(24, 250, 5, 2, 42, 'E'),
(25, 251, 7, 1, 47, 'D'),
(26, 251, 12, 2, 47, 'E'),
(27, 252, 7, 3, 49, 'D'),
(28, 252, 2, 4, 46, 'E'),
(29, 253, 11, 1, 46, 'D'),
(30, 253, 3, 5, 46, 'E'),
(31, 254, 10, 2, 43, 'D'),
(32, 254, 10, 4, 49, 'E'),
(33, 255, 1, 2, 49, 'D'),
(34, 255, 1, 4, 42, 'E'),
(35, 256, 16, 4, 46, 'D'),
(36, 256, 1, 5, 44, 'E'),
(37, 257, 1, 3, 47, 'D'),
(38, 257, 1, 2, 42, 'E'),
(39, 258, 4, 4, 47, 'D'),
(40, 258, 10, 3, 42, 'E'),
(41, 259, 10, 4, 45, 'D'),
(42, 259, 5, 2, 49, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jam`
--

CREATE TABLE `tbl_jam` (
  `id` int(3) NOT NULL,
  `range_jam` varchar(50) NOT NULL,
  `waktu_sholat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jam`
--

INSERT INTO `tbl_jam` (`id`, `range_jam`, `waktu_sholat`) VALUES
(1, '07:30-08:00', ''),
(2, '08:05-08:35', ''),
(3, '08:40-09:10', ''),
(4, '09:15-09:45', ''),
(5, '09:50-10:20', ''),
(6, '10:25-10:55', ''),
(7, '11:00-11:30', ''),
(8, '11:35-12:05', '[\"jumat\"]'),
(9, '12:10-12:40', '[\"dzuhur\",\"jumat\"]'),
(10, '12:45-13:15', ''),
(11, '13:20-13:50', ''),
(12, '13:55-14:25', ''),
(13, '14:30-15:00', ''),
(14, '15:05-15:35', ''),
(15, '15:40-16:10', '[\"ashar\"]'),
(16, '16:15-16:45', ''),
(17, '16:50-17:20', ''),
(18, '17:25-17:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(3) NOT NULL,
  `nama` longtext NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `tahun_angkatan` varchar(50) NOT NULL,
  `id_prodi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`, `jenis`, `tahun_angkatan`, `id_prodi`) VALUES
(41, '[\"D\",\"E\"]', 'REGULER', '2022', 1),
(42, '[\"D\",\"E\"]', 'REGULER', '2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `id` int(5) NOT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `sks` int(2) NOT NULL,
  `semester` int(2) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `id_prodi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`id`, `kode_mk`, `nama`, `sks`, `semester`, `jenis`, `id_prodi`) VALUES
(259, 'APSI', 'Analisis dan Perancangan Sistem Informasi ', 2, 2, '', 1),
(261, 'PPW', 'Praktik Pemrograman Web', 4, 2, '', 1),
(262, 'PCC', 'Praktik Cloud Computing', 2, 2, '', 1),
(263, 'PSO', 'Praktik Sistem Operasi', 2, 2, '', 1),
(264, 'PBO', 'Pemrograman Berorientasi Objek', 2, 2, '', 1),
(265, 'PMK', ' Praktik Mikrokontroller', 4, 2, '', 1),
(266, 'PWC', 'Praktik Wireless Communication ', 2, 2, '', 1),
(267, 'SPB', 'Statistika dan Probabilitas', 2, 2, '', 1),
(268, 'PSPB', 'Praktik Statistika dan Probabilitas  ', 4, 2, '', 1),
(269, 'PPBO', 'Praktik Pemrograman Berorientasi Objek ', 4, 2, '', 1),
(270, 'KWU', 'Kewirausahaan ', 2, 2, '', 1),
(271, 'PPP', 'Praktik Pemrograman Python ', 4, 2, '', 1),
(272, 'EKK', 'Etika & Komunikasi Kerja', 2, 2, '', 1),
(273, 'BSD', 'Basis Data', 2, 2, '', 1),
(274, 'PBD', 'Praktik Basis Data ', 4, 2, '', 1),
(275, 'PAPS', 'Praktik Analisis dan Perancangan Sistem Informasi', 4, 2, '', 1),
(276, 'PIF', 'Praktik Infrastruktur', 8, 4, '', 1),
(277, 'PMPP', 'Praktik Manajemen Pelaksanaan Proyek', 4, 4, '', 1),
(278, 'PPAM', 'Praktik Pengembangan Aplikasi Multi Platform', 8, 4, '', 1),
(279, 'PMBD', 'Praktik Manajemen Basis Data', 4, 4, '', 1),
(280, 'PKKP', 'Praktik Keterampilan Komunikasi Proyek', 4, 4, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengampu`
--

CREATE TABLE `tbl_pengampu` (
  `id` int(3) NOT NULL,
  `id_mk` int(3) NOT NULL,
  `id_dosen` int(3) NOT NULL,
  `kelas` longtext NOT NULL,
  `tahun_akademik` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengampu`
--

INSERT INTO `tbl_pengampu` (`id`, `id_mk`, `id_dosen`, `kelas`, `tahun_akademik`) VALUES
(239, 259, 111, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(240, 275, 110, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(241, 274, 109, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(242, 273, 109, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(243, 272, 113, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(244, 271, 109, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(245, 270, 111, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(246, 269, 115, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(247, 268, 110, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(248, 267, 110, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(249, 261, 109, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(250, 262, 114, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(251, 263, 114, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(252, 264, 115, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(253, 265, 112, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(254, 277, 111, '[[\"41\",\"D\"],[\"41\",\"E\"]]', '2023-2024'),
(255, 278, 108, '[[\"41\",\"D\"],[\"41\",\"E\"]]', '2023-2024'),
(256, 266, 108, '[[\"42\",\"D\"],[\"42\",\"E\"]]', '2023-2024'),
(257, 276, 112, '[[\"41\",\"D\"],[\"41\",\"E\"]]', '2023-2024'),
(258, 279, 114, '[[\"41\",\"D\"],[\"41\",\"E\"]]', '2023-2024'),
(259, 280, 112, '[[\"41\",\"D\"],[\"41\",\"E\"]]', '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prodi`
--

CREATE TABLE `tbl_prodi` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id`, `nama`) VALUES
(1, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruang`
--

CREATE TABLE `tbl_ruang` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `id_prodi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruang`
--

INSERT INTO `tbl_ruang` (`id`, `nama`, `jenis`, `id_prodi`) VALUES
(42, 'PSDKU 2 L2R4', '', 1),
(43, 'PSDKU 1 L2R2', '', 1),
(44, 'Virtual/T1A1', '', 1),
(45, 'PSDKU 2 L2R2', '', 1),
(46, 'PSDKU 2 L2R3', '', 1),
(47, 'Virtual/ TIB1', '', 1),
(48, 'PSDKU 1 L2R3', '', 1),
(49, 'PSDKU L2R4', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jadwalkuliah`
--
ALTER TABLE `tbl_jadwalkuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengampu` (`id_pengampu`),
  ADD KEY `id_jam` (`id_jam`),
  ADD KEY `id_hari` (`id_hari`),
  ADD KEY `id_ruang` (`id_ruang`),
  ADD KEY `id_pengampu_2` (`id_pengampu`),
  ADD KEY `id_hari_2` (`id_hari`),
  ADD KEY `id_ruang_2` (`id_ruang`);

--
-- Indexes for table `tbl_jam`
--
ALTER TABLE `tbl_jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_prodi_2` (`id_prodi`),
  ADD KEY `id_prodi_3` (`id_prodi`),
  ADD KEY `id_prodi_4` (`id_prodi`);

--
-- Indexes for table `tbl_pengampu`
--
ALTER TABLE `tbl_pengampu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `kelas` (`kelas`(3072));

--
-- Indexes for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_jadwalkuliah`
--
ALTER TABLE `tbl_jadwalkuliah`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_jam`
--
ALTER TABLE `tbl_jam`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `tbl_pengampu`
--
ALTER TABLE `tbl_pengampu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_jadwalkuliah`
--
ALTER TABLE `tbl_jadwalkuliah`
  ADD CONSTRAINT `tbl_jadwalkuliah_ibfk_1` FOREIGN KEY (`id_jam`) REFERENCES `tbl_jam` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jadwalkuliah_ibfk_2` FOREIGN KEY (`id_hari`) REFERENCES `tbl_hari` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jadwalkuliah_ibfk_3` FOREIGN KEY (`id_pengampu`) REFERENCES `tbl_pengampu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jadwalkuliah_ibfk_4` FOREIGN KEY (`id_ruang`) REFERENCES `tbl_ruang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD CONSTRAINT `tbl_matakuliah_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `tbl_prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pengampu`
--
ALTER TABLE `tbl_pengampu`
  ADD CONSTRAINT `tbl_pengampu_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `tbl_dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pengampu_ibfk_2` FOREIGN KEY (`id_mk`) REFERENCES `tbl_matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
