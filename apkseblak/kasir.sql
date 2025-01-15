-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 08:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_notransaksi`
--

CREATE TABLE `p_notransaksi` (
  `Nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_userkasir`
--

CREATE TABLE `p_userkasir` (
  `ID_Kasir` varchar(15) NOT NULL,
  `namaKasir` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_userkasir`
--

INSERT INTO `p_userkasir` (`ID_Kasir`, `namaKasir`, `password`) VALUES
('1', 'admin', 'admin'),
('2', 'petugas', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE `t_barang` (
  `ID` int(11) NOT NULL,
  `idBarang` varchar(15) NOT NULL,
  `nmBarang` varchar(30) NOT NULL,
  `hargaPokok` int(12) NOT NULL,
  `hargaJual` int(12) NOT NULL,
  `expdata` date NOT NULL,
  `stok` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`ID`, `idBarang`, `nmBarang`, `hargaPokok`, `hargaJual`, `expdata`, `stok`) VALUES
(1, '101', 'Seblak', 5000, 6500, '2025-01-15', 50),
(2, '102', 'Kursi', 50000, 60000, '2033-01-08', 35);

-- --------------------------------------------------------

--
-- Table structure for table `t_kasir`
--

CREATE TABLE `t_kasir` (
  `ID` int(11) NOT NULL,
  `noTransaksi` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `idBarang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nmBarang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` smallint(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `ID_Kasir` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_tempkasir`
--

CREATE TABLE `t_tempkasir` (
  `No` int(11) NOT NULL,
  `noTransaksi` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `idBarang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nmBarang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` smallint(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `ID_Kasir` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_userkasir`
--
ALTER TABLE `p_userkasir`
  ADD PRIMARY KEY (`ID_Kasir`);

--
-- Indexes for table `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_kasir`
--
ALTER TABLE `t_kasir`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_tempkasir`
--
ALTER TABLE `t_tempkasir`
  ADD PRIMARY KEY (`idBarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_kasir`
--
ALTER TABLE `t_kasir`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
