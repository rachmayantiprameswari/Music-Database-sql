-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 02:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music1`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `artist_id` smallint(5) NOT NULL DEFAULT 0,
  `album_id` smallint(4) NOT NULL DEFAULT 0,
  `album_name` char(128) DEFAULT NULL,
  `Producer_name` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`artist_id`, `album_id`, `album_name`, `Producer_name`) VALUES
(1, 1, 'Dewa 19', 'Dhani Manaf & Harun Salahudin'),
(1, 2, 'Terbaik Terbaik', 'Dhani Ahmad Manaf & Putra Jaya Husin'),
(2, 1, 'Untukmu Selamanya', 'Trinity'),
(3, 1, 'Kotak Kedua', 'Warner'),
(4, 1, 'Seperti Seharusnya', 'Noah, Noey, Capung'),
(4, 2, 'Keterkaitan Keterikatan', 'Noah, Capung, Ariel Nidji'),
(5, 1, 'Suara Hati', 'Iwan Fals'),
(6, 1, 'Bintang Lima', 'Ahmad Dhani'),
(6, 2, 'Kerajaan Cinta', 'Ahmad Dhani'),
(7, 1, 'Pandawa Lima', 'Dhani Ahmad Manaf'),
(8, 1, 'Maia & Friends', 'Maia Estianty'),
(8, 2, 'Sang Juara', 'Maia Estianty'),
(9, 1, 'Setengah Mati Merindu', 'Judika'),
(9, 2, 'One', 'Judika'),
(10, 1, 'Stinky', 'Iwan Sutadi');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` smallint(5) NOT NULL DEFAULT 0,
  `artist_name` char(128) DEFAULT NULL,
  `Co_worked_artist_name` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `Co_worked_artist_name`) VALUES
(1, 'Ari Lasso', 'Andra Ramadhan'),
(2, 'Pasha Ungu', 'Ariyo Wahab'),
(3, 'Tantri', 'Chua'),
(4, 'Ariel', 'Loekman Hakim'),
(5, 'Iwan Fals', 'Sawung Jabo'),
(6, 'Once Mekel', 'Bebi Romeo'),
(7, 'Ahmad Dhani', 'Erwin Prasetya'),
(8, 'Maia Estianty', 'Mulan Jameela'),
(9, 'Judika', 'Virzha'),
(10, 'Andre Taulany', 'Bayu');

-- --------------------------------------------------------

--
-- Table structure for table `played`
--

CREATE TABLE `played` (
  `artist_id` smallint(5) NOT NULL DEFAULT 0,
  `album_id` smallint(4) NOT NULL DEFAULT 0,
  `track_id` smallint(3) NOT NULL DEFAULT 0,
  `played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `played`
--

INSERT INTO `played` (`artist_id`, `album_id`, `track_id`, `played`) VALUES
(1, 1, 0, '1992-11-29 17:21:34'),
(2, 1, 1, '2005-12-06 17:25:09'),
(3, 1, 2, '2008-03-04 17:30:25'),
(4, 1, 3, '2012-08-02 17:36:30'),
(5, 1, 4, '2002-11-13 17:41:25'),
(6, 1, 5, '2000-04-29 17:43:02'),
(7, 1, 6, '1997-01-24 17:47:17'),
(8, 1, 7, '2009-11-02 17:54:00'),
(9, 1, 8, '2010-12-11 17:50:11'),
(10, 1, 9, '2016-03-24 17:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` smallint(3) NOT NULL DEFAULT 0,
  `track_name` char(50) DEFAULT NULL,
  `artist_id` smallint(5) NOT NULL DEFAULT 0,
  `album_id` smallint(4) NOT NULL DEFAULT 0,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `track_name`, `artist_id`, `album_id`, `time`) VALUES
(0, 'Kangen', 1, 1, '00:05:34'),
(1, 'Demi Waktu', 2, 1, '00:04:58'),
(2, 'Beraksi', 3, 1, '00:03:25'),
(3, 'Separuh Aku', 4, 1, '00:04:30'),
(4, 'Hadapi Saja', 5, 1, '00:04:25'),
(5, 'Roman Picisan', 6, 1, '00:04:02'),
(6, 'Bunga', 7, 1, '00:05:17'),
(7, 'Ingat Kamu', 8, 1, '00:04:00'),
(8, 'Aku yang Tersakiti', 9, 1, '00:04:11'),
(9, 'Mungkinkah', 10, 1, '00:05:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`artist_id`,`album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`),
  ADD KEY `artist_name` (`artist_name`),
  ADD KEY `Co_worked_artist_name` (`Co_worked_artist_name`);

--
-- Indexes for table `played`
--
ALTER TABLE `played`
  ADD PRIMARY KEY (`artist_id`,`album_id`,`track_id`,`played`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`artist_id`,`album_id`,`track_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
