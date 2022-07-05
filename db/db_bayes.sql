-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 01:29 PM
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
-- Database: `db_bayes`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Gejala'),
(4, 'Penyakit'),
(5, 'Pengetahuan'),
(6, 'Laporan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` char(3) NOT NULL,
  `nama_gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G01', 'Merasa gelisah dan cemas'),
(2, 'G02', 'Mudah tersinggung dan mudah kesal'),
(3, 'G03', 'Sulit berkonsentrasi / pikiran kosong'),
(4, 'G04', 'Merasa mudah lelah'),
(5, 'G05', 'Ketegangan otot'),
(6, 'G06', 'Terus-menerus mengkhawatirkan banyak hal'),
(7, 'G07', 'Gangguan tidur (kesulitan untuk mulai dan tetap tidur, merasa gelisah saat tidur)'),
(8, 'G08', 'Menarik diri dari lingkungan'),
(9, 'G09', 'Mengalami beberapa gejala fisik (banyak berkeringat, menggertakkan gigi, gemetar)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil_diagnosa`
--

CREATE TABLE `tbl_hasil_diagnosa` (
  `id_hasil` varchar(32) NOT NULL,
  `hasil_probabilitas` float NOT NULL,
  `kode_penyakit` char(3) NOT NULL,
  `kode_gejala` varchar(64) NOT NULL,
  `nama_user` varchar(32) NOT NULL,
  `usia` int(3) NOT NULL,
  `jk` char(12) NOT NULL,
  `tanggal` varchar(12) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil_diagnosa`
--

INSERT INTO `tbl_hasil_diagnosa` (`id_hasil`, `hasil_probabilitas`, `kode_penyakit`, `kode_gejala`, `nama_user`, `usia`, `jk`, `tanggal`, `waktu`) VALUES
('SN-23082021-131744-376008', 0.83749, 'P02', '0103060709', 'Test', 24, 'Laki-laki', '23-08-2021', 1629717595),
('SN-23082021-132110-401470', 0.714276, 'P01', '0102030405', 'dsf', 22, 'Laki-laki', '23-08-2021', 1629717677),
('SN-23082021-132456-389938', 0.801221, 'P02', '06070809', 'xzz', 34, 'Perempuan', '23-08-2021', 1629717904);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengetahuan`
--

CREATE TABLE `tbl_pengetahuan` (
  `id` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `probabilitas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengetahuan`
--

INSERT INTO `tbl_pengetahuan` (`id`, `id_penyakit`, `id_gejala`, `probabilitas`) VALUES
(1, 1, 1, 0.85),
(2, 1, 2, 0.71),
(3, 1, 3, 0.57),
(4, 1, 4, 0.71),
(5, 1, 5, 0.57),
(6, 2, 6, 0.87),
(7, 2, 7, 0.75),
(8, 2, 8, 0.5),
(9, 2, 9, 0.87);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` char(3) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `solusi`) VALUES
(1, 'P01', 'Gangguan Kecemasan Ringan', 'Menjalani gaya hidup sehat (seperti makan makanan sehat, olahraga, dan istirahat yang cukup) Menghindari hal-hal yang bisa memicu kecemasan. Melakukan teknik relaksasi untuk mengatasi stres (seperti meditasi dan yoga). Menulis jurnal dan bentuk tulisan lainnya, juga melatih manajemen waktu (menentukan langkah-langkah pekerjaan yang akan dilakukan, fokus pada satu tugas pada satu waktu).'),
(2, 'P02', 'Gangguan Kecemasan Berat', 'Periksakan diri ke psikolog atau psikiater. Pasien akan diterapi dengan obat-obatan anti kecemasan yang harus melalui pemantauan dari dokter secara ketat. Pengobatan untuk sebagian besar keadaan kecemasan berlangsung selama dua sampai enam minggu. Beberapa terapi yang umumnya diberikan seperti Terapi perilaku kognitif (CBT), terapi pemaparan, terapi perilaku dialektika (DBT), acceptance and commitment therapy (ACT) dan terapi seni.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `image`, `password`, `role_id`, `date_created`) VALUES
(13, 'Tamara Sekar Adhiva', 'admin', '115-1150121_this-free-icons-png-design-of-female-avatar-removebg-preview1.png', '$2y$10$p2aRGd54o9L2SIS44XZfweTdijeGIIXXklYQrOZnMOsG3KZv7jCvW', 1, 1621561284);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `id_user` varchar(32) NOT NULL,
  `id_gejala` char(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`id_user`, `id_gejala`) VALUES
('SN-23082021-132456-389938', '06070809');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(8, 1, 3),
(9, 1, 4),
(10, 1, 5),
(11, 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tbl_hasil_diagnosa`
--
ALTER TABLE `tbl_hasil_diagnosa`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_gejala` (`id_gejala`),
  ADD KEY `id_kerusakan` (`id_penyakit`);

--
-- Indexes for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD CONSTRAINT `tbl_pengetahuan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `tbl_penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
