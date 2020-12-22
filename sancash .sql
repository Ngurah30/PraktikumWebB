-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 05:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sancash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(20) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nama_toko` varchar(20) DEFAULT NULL,
  `alamat` text NOT NULL,
  `email` varchar(15) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pass`, `nama`, `nama_toko`, `alamat`, `email`, `nohp`, `status`, `birthdate`, `gender`) VALUES
('dia', 'adalah', 'tetapi', 'frasa', 'saya', 'dia', 'juga', 2, '2501-02-25', 2),
('nama', 'saya', 'bagus', '', 'saya', 'tetapi', 'nama', 3, '2000-09-25', 1),
('Nusan', 'Anehgila99', 'Nusan Bagus Wibisana', 'tokosaya', 'samping jalan', 'bnusan@yahoo.co', '0895341634065', 2, '2000-09-25', 1),
('saya', 'adalah', 'manusia', 'tokokita', 'bukan', 'tetapi', 'saya ', 2, '2014-08-25', 2),
('unud', '123456789', 'unud bukit', NULL, 'jimbaran', 'unud@unud.ac.id', '045', 1, '2020-12-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `uname` varchar(20) NOT NULL,
  `saldo` int(11) NOT NULL,
  `hutang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`uname`, `saldo`, `hutang`) VALUES
('dia', 100000, 25000),
('nama', 0, 87500),
('Nusan', 25000, 0),
('saya', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uname` varchar(20) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`uname`, `id_barang`, `jumlah`) VALUES
('saya', 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'minuman'),
(2, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `history_buy`
--

CREATE TABLE `history_buy` (
  `uname` varchar(20) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_buy`
--

INSERT INTO `history_buy` (`uname`, `id_barang`, `jumlah`) VALUES
('nama', 2, 5),
('nama', 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jk`
--

CREATE TABLE `jk` (
  `id` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jk`
--

INSERT INTO `jk` (`id`, `gender`) VALUES
(1, 'laki-laki'),
(2, 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga_pokok`, `harga_jual`, `stock`, `category_id`, `owner`, `deskripsi`, `foto`) VALUES
(1, 'Pepsi', 6750, 7500, 100, 1, 'tokosaya', 'Minuman Berkarbonasi yang siap menyegarkan semangatmu', '1.png'),
(2, 'carnation', 11500, 12500, 95, 1, 'tokosaya', 'susu yang siap menguatkan otot kalian', '2.png'),
(3, 'pronas', 20500, 22500, 100, 2, 'tokokita', 'Kornet Sapi siap saji', '3.png'),
(4, 'sosis siesta', 32500, 35000, 100, 2, 'tokokita', 'Sosis Siap saji dari Fiesta', '4.png'),
(5, 'Air Mineral Nestle 600ml', 2250, 3000, 100, 1, 'tokosaya', 'Air Mineral dari Nestle', '5.png'),
(6, 'Coca Cola 330ml', 6250, 7000, 100, 1, 'tokosaya', 'Coca Cola Kaleng 330ml', '6.png'),
(7, 'Soju', 22500, 25000, 100, 1, 'tokosaya', 'Soju Minuman Beralkohol Korea', '7.png'),
(8, 'Chitato rasa Sapi Panggang', 8250, 9000, 100, 2, 'tokokita', 'Snack Yang siap menemani Hari Harimu', '8.png'),
(9, 'Indomie Original', 1250, 1500, 100, 2, 'tokokita', 'Mie Instan rasa Original dari Indomie', '9.png'),
(10, 'Sari Roti rasa kacang', 3750, 4500, 100, 2, 'tokokita', 'Roti isi selai Kacang', '10.png'),
(11, 'Nescafe French Vanilla', 6750, 7500, 100, 1, 'tokosaya', 'Kopi Instan rasa French Vanilla', '11.png'),
(12, 'Teh Pucuk Harum 500ml', 7250, 8500, 100, 1, 'tokosaya', 'Teh kemasan Botol 500ml', '12.png');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(0, 'not-set'),
(1, 'normal-user'),
(2, 'saler-user'),
(3, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `jk`
--
ALTER TABLE `jk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD UNIQUE KEY `id_status` (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
