-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goapotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `datakeuangan`
--

CREATE TABLE `datakeuangan` (
  `code` int(12) NOT NULL,
  `tanggalpembayaran` date NOT NULL,
  `jumlahPembayaran` int(50) NOT NULL,
  `totalPendapatan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `email` varchar(255) NOT NULL,
  `idObat` int(12) NOT NULL,
  `id` int(11) NOT NULL,
  `jumlahObat` int(50) NOT NULL,
  `hargaObat` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporantransaksi`
--

CREATE TABLE `laporantransaksi` (
  `idTrans` int(11) NOT NULL,
  `bulan` varchar(12) NOT NULL,
  `tahun` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `idObat` int(11) NOT NULL,
  `namaObat` varchar(255) NOT NULL,
  `jenisObat` varchar(100) NOT NULL,
  `stokObat` int(12) NOT NULL,
  `expDate` date NOT NULL,
  `hargaObat` varchar(100) NOT NULL,
  `idPembeli` int(11) NOT NULL,
  `idTransaksi` int(11) NOT NULL,
  `idObat1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `idPembeli` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `noTelepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatpembelian`
--

CREATE TABLE `riwayatpembelian` (
  `idTransaksii` int(12) NOT NULL,
  `tglTransaksi` date NOT NULL,
  `jmlTransaksi` varchar(25) NOT NULL,
  `idTransaksi` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `statusPembayaran` int(11) NOT NULL,
  `idTrans` int(12) NOT NULL,
  `idTransaksii` int(12) NOT NULL,
  `code` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`) VALUES
('admin@gmail.com', 'admin1'),
('lathifahputri@gmail.com', 'aaaaa'),
('lathifah.putri21@students.unila.ac.id', '2222'),
('admin@goapotek.id', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idObat`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`idPembeli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idObat` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `idPembeli` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
