-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 03:22 PM
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
-- Database: `verrukkulluk`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(6) NOT NULL,
  `naam` text NOT NULL,
  `omschrijving` text NOT NULL,
  `prijs` decimal(11,0) NOT NULL,
  `eenheid` text NOT NULL,
  `verpakking` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `naam`, `omschrijving`, `prijs`, `eenheid`, `verpakking`) VALUES
(1, 'Spaghetti', 'Lorem Ipsum', '145', 'g', '500'),
(2, 'Eieren', 'Lorem Ipsum', '250', 'stuks', '6'),
(3, 'Pancetta', 'Lorem Ipsum', '395', 'g', '200'),
(4, 'Parmezaanse Kaas', 'Lorem Ipsum', '395', 'g', '200');

-- --------------------------------------------------------

--
-- Table structure for table `gerecht`
--

CREATE TABLE `gerecht` (
  `id` int(11) NOT NULL,
  `keuken_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datum_toegevoegd` date NOT NULL,
  `titel` text NOT NULL,
  `korte_omschrijving` text NOT NULL,
  `lange_omschrijving` text NOT NULL,
  `afbeelding` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gerecht`
--

INSERT INTO `gerecht` (`id`, `keuken_id`, `type_id`, `user_id`, `datum_toegevoegd`, `titel`, `korte_omschrijving`, `lange_omschrijving`, `afbeelding`) VALUES
(2, 5, 1, 1, '2023-01-18', 'Spaghetti Carbonara', 'Lorem Ipsum', 'Lorem Ipsum', '');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(6) UNSIGNED NOT NULL,
  `gerecht_id` int(6) DEFAULT NULL,
  `artikel_id` int(6) DEFAULT NULL,
  `aantal` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id`, `gerecht_id`, `artikel_id`, `aantal`) VALUES
(1, 1, 1, 500),
(2, 1, 2, 2),
(3, 1, 3, 200),
(4, 1, 4, 200);

-- --------------------------------------------------------

--
-- Table structure for table `keukentype`
--

CREATE TABLE `keukentype` (
  `id` int(11) NOT NULL,
  `record_type` text NOT NULL,
  `omschrijving` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keukentype`
--

INSERT INTO `keukentype` (`id`, `record_type`, `omschrijving`) VALUES
(1, 'T', 'Vlees'),
(2, 'T', 'Vis'),
(3, 'T', 'Vegetarisch'),
(4, 'T', 'Vegan'),
(5, 'K', 'Italiaans'),
(6, 'K', 'Frans'),
(7, 'K', 'Indonesisch');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `afbeelding` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `email`, `afbeelding`) VALUES
(1, 'PaulSlangen', 'verrukkulluk', 'plg.slangen@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gerecht`
--
ALTER TABLE `gerecht`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_keuken_gerecht` (`keuken_id`),
  ADD KEY `fk_type_gerecht` (`type_id`),
  ADD KEY `fk_user_gerecht` (`user_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keukentype`
--
ALTER TABLE `keukentype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gerecht`
--
ALTER TABLE `gerecht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gerecht`
--
ALTER TABLE `gerecht`
  ADD CONSTRAINT `fk_keuken_gerecht` FOREIGN KEY (`keuken_id`) REFERENCES `keukentype` (`id`),
  ADD CONSTRAINT `fk_type_gerecht` FOREIGN KEY (`type_id`) REFERENCES `keukentype` (`id`),
  ADD CONSTRAINT `fk_user_gerecht` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
