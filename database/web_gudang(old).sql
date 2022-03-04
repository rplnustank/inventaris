-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Okt 2021 pada 09.59
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_keluar`
--

CREATE TABLE `tb_barang_keluar` (
  `id` int(10) NOT NULL,
  `id_transaksi` varchar(50) NOT NULL,
  `tanggal_masuk` varchar(20) NOT NULL,
  `tanggal_keluar` varchar(20) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `tb_barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `TG_BARANG_KELUAR` AFTER INSERT ON `tb_barang_keluar` FOR EACH ROW BEGIN
 UPDATE tb_barang_masuk SET jumlah=jumlah-NEW.jumlah
 WHERE kode_barang=NEW.kode_barang;
 DELETE FROM tb_barang_masuk WHERE jumlah = 0;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_masuk`
--

CREATE TABLE `tb_barang_masuk` (
  `id_transaksi` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang_masuk`
--

INSERT INTO `tb_barang_masuk` (`id_transaksi`, `tanggal`, `lokasi`, `kode_barang`, `nama_barang`, `satuan`, `jumlah`) VALUES
('WG-202101725964', '06/10/2021', 'Banten', '49', '3.0C-H4M-D1-IR', 'Unit', '2'),
('WG-202101825497', '06/10/2021', 'Banten', '87', '2.0C-H5A-PTZ-DP36', 'Unit', '1'),
('WG-202103968451', '06/10/2021', 'Banten', '72', 'HD-NRV4-STD-48TB-NA', 'Unit', '1'),
('WG-202104827615', '06/10/2021', 'Banten', '31', 'H4M-MT-DCIL1', 'Unit', '7'),
('WG-202105614397', '06/10/2021', 'Banten', '84', '2.0C-H5SL-BO1-IR', 'Unit', '3'),
('WG-202105687319', '06/10/2021', 'Banten', '11', 'LEF247028TA', 'Unit', '2'),
('WG-202105721384', '06/10/2021', 'Banten', '59', '12C-H4A-4MH-360', 'Unit', '1'),
('WG-202105973621', '06/10/2021', 'Banten', '34', '12W-H3-4MH-DC1', 'Unit', '1'),
('WG-202106812973', '06/10/2021', 'Banten', '55', '1.3C-H4M-D1', 'Unit', '0'),
('WG-202108154623', '06/10/2021', 'Banten', '85', '2.0C-H4SL-BO1-IR', 'Unit', '3'),
('WG-202110427936', '06/10/2021', 'Banten', '12', 'AC-APP-16R-PRO', 'Unit', '1'),
('WG-202110589632', '06/10/2021', 'Banten', '2', 'H4-BO-JBOX1', 'Unit', '90'),
('WG-202110725369', '06/10/2021', 'Banten', '15', 'AC-HID-VERTX-V300', 'Unit', '1'),
('WG-202110786594', '06/10/2021', 'Banten', '14', 'AC-HID-VERTX-V200', 'Unit', '1'),
('WG-202110794652', '06/10/2021', 'Banten', '53', '2.0C-H4M-D1-IR', 'Unit', '61'),
('WG-202113047289', '06/10/2021', 'Banten', '33', 'AC-MER-CONT-LP1501', 'Unit', '1'),
('WG-202113692854', '06/10/2021', 'Banten', '44', '3.0C-H4SL-D1-IR', 'Unit', '1'),
('WG-202114029863', '06/10/2021', 'Banten', '61', '5.0L-H4A-BO1-IR-B', 'Unit', '4'),
('WG-202115248796', '06/10/2021', 'Banten', '18', 'POE-INJ2-PLUS-NA', 'Unit', '5'),
('WG-202115647082', '06/10/2021', 'Banten', '20', 'H4VI-MT-SURF1', 'Unit', '1'),
('WG-202115973802', '06/10/2021', 'Banten', '7', 'ES-HD-IPM', 'Unit', '2'),
('WG-202117280495', '06/10/2021', 'Banten', '86', '5.0C-H5SL-D1-IR', 'Unit', '0'),
('WG-202117630895', '06/10/2021', 'Banten', '1', 'H3-BO-JB', 'Unit', '8'),
('WG-202117845093', '06/10/2021', 'Banten', '73', 'RM5-WKS-2MN-NA', 'Unit', '2'),
('WG-202118493560', '06/10/2021', 'Banten', '36', '5.0L-H4A-D2', 'Unit', '8'),
('WG-202118625930', '06/10/2021', 'Banten', '32', 'DELL POWER SUPPLY 685WATT PWR', 'Unit', '1'),
('WG-202119085437', '06/10/2021', 'Banten', '8', 'ES-HD-CWS-LG', 'Unit', '4'),
('WG-202119305482', '06/10/2021', 'Banten', '9', 'H4SL-MT-DCIL1', 'Unit', '1'),
('WG-202121546983', '06/10/2021', 'Banten', '79', '5.0C-H5A-CR1-IR-SS', 'Unit', '1'),
('WG-202121683574', '06/10/2021', 'Banten', '52', '2.0C-H4PTZ-DP30', 'Unit', '1'),
('WG-202124518306', '06/10/2021', 'Banten', '37', '3.0C-H4A-D1', 'Unit', '6'),
('WG-202124678319', '06/10/2021', 'Banten', '21', 'AC-HID-READ-PROXPRO', 'Unit', '9'),
('WG-202128064379', '06/10/2021', 'Banten', '45', '3.0C-H4SL-BO1-IR', 'Unit', '18'),
('WG-202128340716', '06/10/2021', 'Banten', '19', 'H4VI-AC-RELY1', 'Unit', '2'),
('WG-202129671054', '06/10/2021', 'Banten', '38', '3.0C-H4A-DO1-IR', 'Unit', '13'),
('WG-202129734051', '06/10/2021', 'Banten', '46', '3.0C-H4A-25G-BO1-IR', 'Unit', '7'),
('WG-202130517296', '06/10/2021', 'Banten', '41', '2.0W-H3PTZ-DP20', 'Unit', '1'),
('WG-202131748259', '06/10/2021', 'Banten', '23', 'AC-MER-CON-MR51E', 'Unit', '4'),
('WG-202132164809', '06/10/2021', 'Banten', '76', 'AINVR-STD-48TB-AU', 'Unit', '1'),
('WG-202132507418', '06/10/2021', 'Banten', '3', 'MNT-PEND-WALL', 'Unit', '2'),
('WG-202132791685', '06/10/2021', 'Banten', '13', 'AC-HID-VERTX-V100', 'Unit', '1'),
('WG-202135720864', '06/10/2021', 'Banten', '63', '4.0C-H5A-DO1-IR', 'Unit', '1'),
('WG-202135796024', '06/10/2021', 'Banten', '48', '2.0C-H4IRPTZ-DP30-WP', 'Unit', '2'),
('WG-202136751289', '06/10/2021', 'Banten', '74', 'RAKITAN PC SERVER WD PUPLE 4TB 3,5 INCI', 'Unit', '0'),
('WG-202138601947', '06/10/2021', 'Banten', '35', '12W-H3-4MH-DP1', 'Unit', '2'),
('WG-202140253687', '06/10/2021', 'Banten', '82', 'AINVR-STD-PRK', 'Unit', '1'),
('WG-202140987562', '06/10/2021', 'Banten', '6', 'H4-BO-DEMO1', 'Unit', '2'),
('WG-202142019765', '06/10/2021', 'Banten', '80', 'HD-NVR-ANK2-1', 'Unit', '2'),
('WG-202142581670', '06/10/2021', 'Banten', '47', '3.0C-H4M-D1', 'Unit', '2'),
('WG-202143651892', '06/10/2021', 'Banten', '60', '12.0-H4F-DO1-IR', 'Unit', '5'),
('WG-202145389167', '06/10/2021', 'Banten', '50', '8L-H4PRO-B', 'Unit', '3'),
('WG-202149062873', '06/10/2021', 'Banten', '4', 'ACC-MIC', 'Unit', '4'),
('WG-202150174928', '06/10/2021', 'Banten', '69', 'VMA-RPA-4P2-NA', 'Unit', '1'),
('WG-202150792481', '06/10/2021', 'Banten', '10', 'IRPTZ-MNT-WALL1', 'Unit', '2'),
('WG-202151849630', '06/10/2021', 'Banten', '64', '2.0C-H5M-DO1-IR', 'Unit', '1'),
('WG-202157149208', '06/10/2021', 'Banten', '22', 'AC-MER-CON-1DR', 'Unit', '1'),
('WG-202157836402', '06/10/2021', 'Banten', '42', '3.0C-H4A-B2', 'Unit', '1'),
('WG-202159103786', '06/10/2021', 'Banten', '54', '320C-H4A-THC-BO50', 'Unit', '1'),
('WG-202159231680', '06/10/2021', 'Banten', '58', '16L-H4PRO-B', 'Unit', '2'),
('WG-202159780423', '06/10/2021', 'Banten', '70', 'VMA-PRO-4P4-AU', 'Unit', '1'),
('WG-202163510472', '06/10/2021', 'Banten', '40', '8.0-H4A-B2', 'Unit', '2'),
('WG-202165912834', '06/10/2021', 'Banten', '24', 'H4SL-DD-CLER1', 'Unit', '6'),
('WG-202168275049', '06/10/2021', 'Banten', '43', '3.0C-H4SL-DO1-IR', 'Unit', '1'),
('WG-202168472359', '06/10/2021', 'Banten', '78', 'H4A-ETD-KIT', 'Unit', '1'),
('WG-202169187054', '06/10/2021', 'Banten', '68', 'VMA-AS2-8P4-NA', 'Unit', '1'),
('WG-202170159382', '06/10/2021', 'Banten', '83', 'CM-AC-AVIO1', 'Unit', '1'),
('WG-202173612894', '06/10/2021', 'Banten', '67', 'HD-RMWS3-4MN-NA', 'Unit', '9'),
('WG-202174589623', '06/10/2021', 'Banten', '71', 'S8P-124W-NA', 'Unit', '8'),
('WG-202174612938', '06/10/2021', 'Banten', '39', '3.0C-H4A-BO1-IR', 'Unit', '1'),
('WG-202174689532', '06/10/2021', 'Banten', '77', '2.0C-H5A-BO1-IR', 'Unit', '53'),
('WG-202175194362', '06/10/2021', 'Banten', '29', 'H4SL-MT-NTPA1', 'Unit', '4'),
('WG-202178329164', '06/10/2021', 'Banten', '5', 'CM-MT-WALL1', 'Unit', '20'),
('WG-202181523460', '06/10/2021', 'Banten', '75', 'NVR4-VAL-16TB-NA', 'Unit', '2'),
('WG-202181597630', '06/10/2021', 'Banten', '28', 'AC-HID-READ-PROXPRO-KEYPAD', 'Unit', '1'),
('WG-202181976432', '06/10/2021', 'Banten', '51', '8.0-H4A-DP1-IR-B', 'Unit', '3'),
('WG-202185472396', '06/10/2021', 'Banten', '25', 'H4F-MT-NPTA1', 'Unit', '8'),
('WG-202187529163', '06/10/2021', 'Banten', '56', '2.0C-H4M-D1', 'Unit', '73'),
('WG-202189274510', '06/10/2021', 'Banten', '16', 'AC-HID-VERTX-V1000', 'Unit', '1'),
('WG-202189623174', '06/10/2021', 'Banten', '62', '5.0C-H5SL-BO1-IR', 'Unit', '0'),
('WG-202191845736', '06/10/2021', 'Banten', '27', 'LEF7020028CA', 'Unit', '2'),
('WG-202193265871', '06/10/2021', 'Banten', '30', 'IRPTZ-MNT-NTPA1', 'Unit', '1'),
('WG-202195104632', '06/10/2021', 'Banten', '57', '1.3C-H4SL-BO1-IR', 'Unit', '26'),
('WG-202195736821', '06/10/2021', 'Banten', '17', 'AC-MER-CONT-1DR', 'Unit', '1'),
('WG-202196745283', '06/10/2021', 'Banten', '66', 'HD-RMWS3-2MN-NA', 'Unit', '2'),
('WG-202197326510', '06/10/2021', 'Banten', '65', '3.0C-HD-LP-B1', 'Unit', '1'),
('WG-202197412860', '06/10/2021', 'Banten', '26', 'ACC-USB-JOY-PRO', 'Unit', '1'),
('WG-202197418206', '06/10/2021', 'Banten', '81', 'ACC-SPEAKER', 'Unit', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_satuan`
--

CREATE TABLE `tb_satuan` (
  `id_satuan` int(11) NOT NULL,
  `kode_satuan` varchar(100) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_satuan`
--

INSERT INTO `tb_satuan` (`id_satuan`, `kode_satuan`, `nama_satuan`) VALUES
(6, 'Unit', 'Unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_upload_gambar_user`
--

CREATE TABLE `tb_upload_gambar_user` (
  `id` int(11) NOT NULL,
  `username_user` varchar(100) NOT NULL,
  `nama_file` varchar(220) NOT NULL,
  `ukuran_file` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_upload_gambar_user`
--

INSERT INTO `tb_upload_gambar_user` (`id`, `username_user`, `nama_file`, `ukuran_file`) VALUES
(1, 'zahidin', 'nopic5.png', '6.33'),
(2, 'test', 'nopic4.png', '6.33'),
(3, 'coba', 'logo_unsada1.jpg', '16.69'),
(4, 'admin', 'nopic2.png', '6.33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `last_login` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `last_login`) VALUES
(20, 'admin', 'admin@gmail.com', '$2y$10$3HNkMOtwX8X88Xb3DIveYuhXScTnJ9m16/rPDF1/VTa/VTisxVZ4i', 1, '08-10-2021 6:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tb_satuan`
--
ALTER TABLE `tb_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `tb_upload_gambar_user`
--
ALTER TABLE `tb_upload_gambar_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_satuan`
--
ALTER TABLE `tb_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_upload_gambar_user`
--
ALTER TABLE `tb_upload_gambar_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
