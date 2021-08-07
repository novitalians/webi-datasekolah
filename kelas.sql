-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2021 pada 02.33
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inventori`
--

CREATE TABLE `tbl_inventori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inventori`
--

INSERT INTO `tbl_inventori` (`id`, `nama`, `jumlah`, `kondisi`) VALUES
(4, 'Papan Tulis', 1, 'Baik'),
(5, 'Penghapus', 3, 'Baik'),
(7, 'Spidol', 3, 'Baik'),
(8, 'Lemari', 2, 'Rusak Ringan'),
(10, 'Pensil', 10, 'Rusak Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(40) DEFAULT NULL,
  `tahun_ajaran` varchar(15) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `kelas`, `wali_kelas`, `tahun_ajaran`, `semester`) VALUES
(2, 'X MENBIS 1', 'BU NINA', '2020/2021', 'semester 2'),
(4, 'X TKR 2', 'Pak Ibnu', '2021/2022', 'semester 2'),
(5, 'XII AP 8', 'Pak Imron', '2022/2023', 'Semester 1'),
(23, 'x tkj 2', 'bu amirah', '2021/2022', 'semester 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepala`
--

CREATE TABLE `tbl_kepala` (
  `id` int(20) NOT NULL,
  `kepala` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kepala`
--

INSERT INTO `tbl_kepala` (`id`, `kepala`) VALUES
(1, 'Ibu Novita Lia'),
(3, 'Bapak Faza Prakoso');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `jumlah_jam` int(11) DEFAULT NULL,
  `guru_pengampu` varchar(100) DEFAULT NULL,
  `ruangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id`, `mapel`, `jumlah_jam`, `guru_pengampu`, `ruangan`) VALUES
(2, 'Matematika', 4, 'Pak Bayu', 'XII TKJ 3'),
(3, 'Bahasa Indonesia', 4, 'Bu Ngarifah', 'XII AP 3'),
(4, 'PPKN', 2, 'Pak Rahmat', 'X AP 3'),
(5, 'PKK', 8, 'Bu Maslihah', 'X AP 1'),
(6, 'Bahasa Inggris', 4, 'Pak Topik', 'X TKJ 1'),
(7, 'MM Interaktif', 12, 'Pak Zubaidi', 'XI TKJ 4'),
(8, 'Audio Video', 12, 'Pak Ilmiawan', 'X MENBIS 2'),
(9, 'Bimbingan Konseling', 1, 'Pak Supriono', 'XI MENBIS 1'),
(11, 'Penjaskes', 6, 'pak agus', 'XII MENBIS 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nis` int(4) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nis`, `nama`, `kelas`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
(6, 18111436, 'Novita Lia Nurilam Sari', 'XII TKJ 3', 'Islam', 'Bandung', '2000-11-27', 'Bandung'),
(8, 18111439, 'Dewi', 'XII AP 2', 'Islam', 'Medan', '2003-01-22', 'Jakarta'),
(10, 181114356, 'rika sari', 'XII AP 8', 'Hindu', 'Nagreg', '2000-11-26', 'Kp. Nagreg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `nama`, `username`, `password`) VALUES
(17, 'Admin', 'admin123', '$2y$10$3r41FoRb1IUjSMv.edS/VulBObJ.7MaBtRd1agKzV8mRYxqb.knV2'),
(18, 'novita', 'novi', '$2y$10$JMVqx4dwvi/eU8kYE/MuZuExLcTJsCSoUvcqtcn/yCsqqWExKyIVm'),
(19, 'lia', 'lia', '$2y$10$NDs.Cl6omGUFPvXYTcGi1OHKc75oellZ53B7PgVUcIUgo6tslsxBK'),
(20, 'novitalia', 'rika', '$2y$10$0O0KSNWkNh9cEDOeVF8G5./7DRwk0qs/YWJBWWsPFKJuxAa9rjit2'),
(21, 'dewi', 'dewi', '$2y$10$EqtwiNtXh4nNN9VnXOSQoueJJo2FwUXv.eXA11WpwErjPG6pdgH3m');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kepala`
--
ALTER TABLE `tbl_kepala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_kepala`
--
ALTER TABLE `tbl_kepala`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
