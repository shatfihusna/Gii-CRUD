-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2021 pada 18.36
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(1, 'B001', 'Buku Tulis Matematika', 'Kodi', 1, 991, 60000, 250),
(2, 'B002', 'Baju Kaos', 'Pcs', 3, 994, 100000, 300),
(3, 'B004', 'Gelas Pesta', 'Lusin', 4, 993, 25000, 100),
(4, 'B005', 'Lampu LED', 'Buah', 2, 991, 57500, 78),
(5, 'B009', 'Pena Standard', 'Lusin', 1, 993, 24000, 35),
(6, 'B011', 'Celana Jeans', 'Pcs', 3, 994, 175000, 76),
(7, 'B012', 'Televisi LG 40 Inc', 'Buah', 2, 994, 6590000, 5),
(8, 'B013', 'Kipas Angin', 'Buah', 2, 992, 250000, 50),
(10, 'B015', 'Microphone', 'Buah', 2, 996, 120000, 50),
(11, 'B017', 'Microphone', 'Buah', 2, 996, 150000, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Perlengkapan Alat Tulis', 'Perlengkapan Alat Tulis Buku Matematika'),
(2, 'Perlengkapan Alat Elektronik', 'Lampu LED'),
(3, 'Pakaian', 'Baju Kemeja'),
(4, 'Perlengkapan Makan dan Minum', 'Gelas Pesta'),
(5, 'Perlengkapan Alat Tulis Sekolah', 'Buku Tulis Sekolah'),
(6, 'Perlengkapan Alat Tulis Sekolah', 'Buku Tulis Sekolah'),
(7, 'Buku', 'Buku Tulis Sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`) VALUES
(1, 1001, 'Teknologi Informasi'),
(2, 1002, 'Teknik Sipil'),
(3, 1003, 'Teknik Mesin'),
(4, 1004, 'Teknik Elektro'),
(5, 1005, 'Akuntansi'),
(6, 1006, 'Administrasi Niaga'),
(7, 1007, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jekel` char(1) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tanggal_lahir`, `jekel`, `id_jurusan`, `id_prodi`, `email`, `alamat`) VALUES
(1, '1911081011', 'Shatfi Husna', '30-May-2000', 'P', 1, 3, 'satfihusna@gmail.com', 'Candung, Kabupaten Agam'),
(2, '1911082021', 'Srintika Yuni Kharisma', '12-Jan-2011', 'P', 2, 2, 'srintikayunikharisma@gmail.com', 'Bukittinggi'),
(3, '1911081013', 'Nikita Chairunnisa', '01-Jan-2001', 'P', 5, 16, 'nikitachairunnisa@gmail.com', 'Sijunjung'),
(5, '1901081001', 'Virdapiliacani', '25-Mar-2001', 'P', 2, 3, 'virda@gmail.com', 'Padang'),
(7, '1911082021', 'Budi', '08-Jun-2021', 'L', 4, 12, 'budi@gmail.com', 'Bukittinggi'),
(13, '1911081030', 'Irsyad Nabawai', '12-Jul-2000', 'L', 3, 3, 'irsyad@gamil.com', 'Sijunjung'),
(16, '1911082022', 'Yonanda Wahyu Putri', '06-Jun-2000', 'P', 6, 14, 'yonandawahyuputri@gmail.com', 'Solok Selatan'),
(1128, '767', 'bb', '06-Jun-2021', 'P', 6, 15, 'bjb', 'mml');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `id_jurusan`, `prodi`, `keterangan`) VALUES
(1, 1, 'TRPL', 'D4-Teknologi Rekayasa Perangkat Lunak'),
(2, 2, 'TS', 'D3-Teknik Sipil'),
(3, 3, 'MRK', 'D4-Manajemen Rekayasa Konstruksi'),
(4, 1, 'TK', 'D3-Teknik Komputer'),
(5, 1, 'MI', 'D3-Manajemen Informatika'),
(6, 2, 'PIR', 'D4-Perancangan Irigasi dan Rawa'),
(7, 3, 'Manufaktur', 'D4-Teknik Manufaktur'),
(8, 2, 'PJJ', 'D4-Teknik Perancangan Jalan dan Jembatan'),
(9, 4, 'TL', 'D3-Teknik Listrik'),
(10, 4, 'D3 TC', 'D3-Teknik Telekomunikasi'),
(11, 4, 'D3-Elektronika', 'D3-Teknik Elektronika'),
(12, 4, 'D4-Elektronika', 'D4-Teknik Elektronika'),
(13, 5, 'D4-Akuntansi', 'D4-Akuntansi'),
(14, 6, 'AB', 'D3-Administrasi Bisnis'),
(15, 6, 'UPW', 'D3-Usaha Perjalanan Wisata'),
(16, 5, 'D3-Akuntansi', 'D3-Akuntansi'),
(17, 4, 'TRIL', 'D4-Teknik Rekayasa Instalasi Listrik'),
(18, 7, 'Bahasa Inggris', 'D3-Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sipil`
--

CREATE TABLE `sipil` (
  `id` int(11) NOT NULL,
  `sipil` varchar(50) NOT NULL,
  `Keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sipil`
--

INSERT INTO `sipil` (`id`, `sipil`, `Keterangan`) VALUES
(1, 'MRK', 'D4 Manajemen Rekayasa Konstruksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(991, 'Shatfi Husna', '085399243377', 'shatfihusna@gmail.com', 'Jalan Soekarno Hatta Blok A No.1 Jakarta Pusat'),
(992, 'Nola Reziyana', '07512788811', 'reziyaanola123@gma', 'Jalan Raya Tanggerang Km 12 Banten'),
(993, 'Nikita Chairunnisa', '082378565512', 'nikitachairunnisa99@gmail', 'Jalan Kemayoran Jakarta Timur NO 20'),
(994, 'Siska Nofri Dania', '083177820012', 'siskanofridaniaajo@gmail.', 'Jalan Kebangsaan Blok B-90 N0.8 Cengkareng'),
(996, 'Damnirwis', '081363312443', 'damniriws65@gmail.com', 'Jalan Irigasi No.2 Padang'),
(997, 'Nova Aryanti', '081234533112', 'novarayanti123@gmail.com', 'Jln Jeddah No 19 Padang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_ibfk_1` (`id_jenis`),
  ADD KEY `barang_ibfk_2` (`id_supplier`);

--
-- Indeks untuk tabel `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `sipil`
--
ALTER TABLE `sipil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `sipil`
--
ALTER TABLE `sipil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
