-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Des 2020 pada 04.12
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seminar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE IF NOT EXISTS `jenjang` (
`id_jenjang` tinyint(2) NOT NULL,
  `kode_jenjang` varchar(3) NOT NULL,
  `nama_jenjang` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `kode_jenjang`, `nama_jenjang`) VALUES
(1, 'D3', 'Diploma-3'),
(2, 'S1', 'Strata-1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsentrasi`
--

CREATE TABLE IF NOT EXISTS `konsentrasi` (
`id_konsentrasi` tinyint(2) NOT NULL,
  `kode_konsentrasi` varchar(3) NOT NULL,
  `nama_konsentrasi` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konsentrasi`
--

INSERT INTO `konsentrasi` (`id_konsentrasi`, `kode_konsentrasi`, `nama_konsentrasi`) VALUES
(1, 'SI', 'Sistem Infomasi'),
(2, 'RPL', 'Rekayasa Perangkat Lunak'),
(3, 'TK', 'Teknik Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
`id_mahasiswa` int(11) NOT NULL,
  `nim` int(8) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `id_prodi` tinyint(2) NOT NULL,
  `id_konsentrasi` tinyint(2) NOT NULL,
  `id_jenjang` tinyint(2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama_mhs`, `id_prodi`, `id_konsentrasi`, `id_jenjang`, `email`, `no_telp`) VALUES
(163, 12181920, 'Firman Kurniawan', 2, 1, 2, 'firmantime@gmail.com', '089516273845');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_pembayaran`
--

CREATE TABLE IF NOT EXISTS `metode_pembayaran` (
`id_metode` tinyint(2) NOT NULL,
  `nama_metode` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_metode`) VALUES
(1, 'Cash'),
(2, 'Transfer'),
(3, 'Belum Bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembicara`
--

CREATE TABLE IF NOT EXISTS `pembicara` (
`id_pembicara` tinyint(3) NOT NULL,
  `nama_pembicara` varchar(150) NOT NULL,
  `latar_belakang` varchar(100) NOT NULL,
  `id_seminar` tinyint(3) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembicara`
--

INSERT INTO `pembicara` (`id_pembicara`, `nama_pembicara`, `latar_belakang`, `id_seminar`, `foto`) VALUES
(7, 'Rahmat Mulyana ST.,MT.,MBA,PMP,CISA,CISM,CGEIT,CRISC,COBITSF,CSXF,ITLF,ISO27001-LA,ISO9001-IA', 'President of ISACA Indonesia', 1, '8e3a9d6fb462c5ecdf44ee46f7b6bfe7.jpg'),
(10, 'Prabowo Wahyu Sudarno', 'Associate Mobile Android Developer in Mamikost', 1, '813dfa969b69d1d64f390d34a147f1e7.png'),
(11, 'Asep Sudarma', 'Area Sales Coordinator Bandung (Grabkios) PT. Grab Indonesia', 1, 'cb09f1debfecc6df79427b9be30b9d88.png'),
(13, 'Firman Kurniawan', 'S. KOM', 4, '94c29ce4139cd05095e51208d8ea53af.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran_seminar`
--

CREATE TABLE IF NOT EXISTS `pendaftaran_seminar` (
`id_pendaftaran` int(10) NOT NULL,
  `id_seminar` tinyint(3) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jam_daftar` time NOT NULL,
  `id_stsbyr` tinyint(2) NOT NULL,
  `id_metode` tinyint(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran_seminar`
--

INSERT INTO `pendaftaran_seminar` (`id_pendaftaran`, `id_seminar`, `id_mahasiswa`, `tgl_daftar`, `jam_daftar`, `id_stsbyr`, `id_metode`) VALUES
(159, 1, 1, '2020-03-20', '11:09:07', 1, 2),
(160, 3, 162, '2020-12-17', '11:42:38', 1, 2),
(161, 4, 163, '2020-12-17', '12:39:58', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi_seminar`
--

CREATE TABLE IF NOT EXISTS `presensi_seminar` (
`id_presensi` int(11) NOT NULL,
  `id_mahasiswa` tinyint(3) NOT NULL,
  `nomor_induk` int(15) NOT NULL,
  `id_seminar` tinyint(3) NOT NULL,
  `tgl_khd` date NOT NULL,
  `jam_khd` time NOT NULL,
  `id_stskhd` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `presensi_seminar`
--

INSERT INTO `presensi_seminar` (`id_presensi`, `id_mahasiswa`, `nomor_induk`, `id_seminar`, `tgl_khd`, `jam_khd`, `id_stskhd`) VALUES
(1, 127, 12181920, 3, '2020-12-17', '11:51:33', 2),
(2, 127, 12181920, 3, '2020-12-17', '12:15:55', 2),
(3, 127, 12181920, 4, '2020-12-17', '12:40:55', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE IF NOT EXISTS `prodi` (
`id_prodi` tinyint(2) NOT NULL,
  `kode_prodi` varchar(2) NOT NULL,
  `nama_prodi` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `kode_prodi`, `nama_prodi`) VALUES
(1, 'IF', 'Teknik Informatika'),
(2, 'MI', 'Manajemen Informatika'),
(3, 'KA', 'Komputer Akuntansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE IF NOT EXISTS `seminar` (
`id_seminar` int(3) NOT NULL,
  `nama_seminar` varchar(50) NOT NULL,
  `tgl_pelaksana` date NOT NULL,
  `lampiran` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `seminar`
--

INSERT INTO `seminar` (`id_seminar`, `nama_seminar`, `tgl_pelaksana`, `lampiran`) VALUES
(1, 'Smart Society In Era 4.0', '2019-12-14', '190b2b206ed49e3aa214f9f8843b91e0.jpg'),
(4, 'Time is the money', '2020-12-16', '025a832acfd3458072bf63eb1fe1ed44.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
`id_sponsor` tinyint(3) NOT NULL,
  `nama_sponsor` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_seminar` tinyint(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sponsor`
--

INSERT INTO `sponsor` (`id_sponsor`, `nama_sponsor`, `gambar`, `id_seminar`) VALUES
(2, 'Nutragen', '503e56f7e0818aada74a6005adcb47de.jpg', 1),
(3, 'Sosro', 'e61859bd372d0d074b94c35262f16fd6.jpg', 1),
(4, 'Tiesore', '6af1ad9e4af93a7f1936131687d0f515.jpg', 1),
(5, 'Tri Cell', 'de6d8eee332e2a452b5f5ff6a495d2d5.jpg', 1),
(6, 'Binary Indonesia', '63b611e06c384c798e5c6ffc8cf9eb31.jpg', 1),
(7, 'Gudang Garam', 'fb66663df7deeb7f63d8ddd5ad01f94f.jpg', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_kehadiran`
--

CREATE TABLE IF NOT EXISTS `status_kehadiran` (
`id_stskhd` tinyint(1) NOT NULL,
  `nama_stskhd` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_kehadiran`
--

INSERT INTO `status_kehadiran` (`id_stskhd`, `nama_stskhd`) VALUES
(1, 'Tidak Hadir'),
(2, 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pembayaran`
--

CREATE TABLE IF NOT EXISTS `status_pembayaran` (
`id_stsbyr` tinyint(2) NOT NULL,
  `nama_stsbyr` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pembayaran`
--

INSERT INTO `status_pembayaran` (`id_stsbyr`, `nama_stsbyr`) VALUES
(2, 'Belum Lunas'),
(1, 'Sudah Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE IF NOT EXISTS `tiket` (
`id_tiket` tinyint(3) NOT NULL,
  `id_seminar` tinyint(3) NOT NULL,
  `harga_tiket` bigint(15) NOT NULL,
  `slot_tiket` int(5) NOT NULL,
  `lampiran_tiket` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_seminar`, `harga_tiket`, `slot_tiket`, `lampiran_tiket`) VALUES
(4, 1, 35000, 200, '4fe1870a3764ad3cb7fd0a5e22363b8d.jpg'),
(16, 4, 50000, 100, '4b50bfd9d63dff05d4c3770b1e36928d.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$ml83HGMMj9/8lQ9yTVmhrO/jIQiGPEwvn0cIXYRP2W3fIaUHeo7G.', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1608099172, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '127.0.0.2', 'firman', '$2y$10$9UnzrNKDTRm3AR9RWzObB.AcLY.hlrNdQ3gQlu5IN0jY0y88JbWO6', 'firman@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1268889823, 1608186620, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
 ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
 ADD PRIMARY KEY (`id_konsentrasi`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
 ADD PRIMARY KEY (`id_mahasiswa`), ADD KEY `id_prodi` (`id_prodi`,`id_konsentrasi`,`id_jenjang`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
 ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pembicara`
--
ALTER TABLE `pembicara`
 ADD PRIMARY KEY (`id_pembicara`), ADD KEY `id_seminar` (`id_seminar`);

--
-- Indexes for table `pendaftaran_seminar`
--
ALTER TABLE `pendaftaran_seminar`
 ADD PRIMARY KEY (`id_pendaftaran`), ADD KEY `id_seminar` (`id_seminar`,`id_mahasiswa`,`id_stsbyr`,`id_metode`);

--
-- Indexes for table `presensi_seminar`
--
ALTER TABLE `presensi_seminar`
 ADD PRIMARY KEY (`id_presensi`), ADD KEY `id_mahasiswa` (`id_mahasiswa`,`id_stskhd`), ADD KEY `id_seminar` (`id_seminar`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
 ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
 ADD PRIMARY KEY (`id_seminar`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
 ADD PRIMARY KEY (`id_sponsor`), ADD KEY `id_seminar` (`id_seminar`);

--
-- Indexes for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
 ADD PRIMARY KEY (`id_stskhd`);

--
-- Indexes for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
 ADD PRIMARY KEY (`id_stsbyr`), ADD KEY `nama_stsbyr` (`nama_stsbyr`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
 ADD PRIMARY KEY (`id_tiket`), ADD KEY `id_seminar` (`id_seminar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_email` (`email`), ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`), ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`), ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
MODIFY `id_jenjang` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
MODIFY `id_konsentrasi` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
MODIFY `id_metode` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pembicara`
--
ALTER TABLE `pembicara`
MODIFY `id_pembicara` tinyint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pendaftaran_seminar`
--
ALTER TABLE `pendaftaran_seminar`
MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `presensi_seminar`
--
ALTER TABLE `presensi_seminar`
MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
MODIFY `id_prodi` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
MODIFY `id_seminar` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
MODIFY `id_sponsor` tinyint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
MODIFY `id_stskhd` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
MODIFY `id_stsbyr` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
MODIFY `id_tiket` tinyint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
