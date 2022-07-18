-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 10:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayam`
--

CREATE TABLE `ayam` (
  `suhu` int(11) NOT NULL,
  `pergerakan` enum('Ya','Tidak') NOT NULL,
  `keadaan` enum('Ya','Tidak') NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ayam`
--

INSERT INTO `ayam` (`suhu`, `pergerakan`, `keadaan`, `keterangan`) VALUES
(40, 'Ya', 'Ya', 'Ayam Dengan Kondisi Baik'),
(40, 'Ya', 'Tidak', 'Kondisi keadaan Ayam kurang baik, Ayam perlu perawatan.'),
(40, 'Tidak', 'Ya', 'kondisi ayam tidak baik, ayam tidak ada pergerakan.'),
(40, 'Tidak', 'Tidak', 'Kondisi ayam tidak baik, Ayam mati.'),
(41, 'Ya', 'Ya', 'Kondisi ayam sangat Baik'),
(41, 'Ya', 'Tidak', 'Kondisi ayam kurang baik, ayam butuh perawatan.'),
(41, 'Tidak', 'Ya', 'Kondisi ayam tidak baik, ayam tidak ada pergerakan'),
(41, 'Tidak', 'Tidak', 'Kondisi ayam buruk, Ayam mati.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'nabila', '12062002'),
(2, 'sel', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
