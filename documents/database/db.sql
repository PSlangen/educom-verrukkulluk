-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 31 jan 2023 om 16:55
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

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
-- Tabelstructuur voor tabel `article`
--

CREATE TABLE `article` (
  `id` int(6) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `units` text NOT NULL,
  `package` text NOT NULL,
  `calories` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `article`
--

INSERT INTO `article` (`id`, `name`, `description`, `price`, `units`, `package`, `calories`) VALUES
(1, 'Spaghetti', 'Lorem Ipsum', '145', 'g', '500', 750),
(2, 'Eieren', 'Lorem Ipsum', '250', 'stuks', '12', 1080),
(3, 'Pancetta', 'Lorem Ipsum', '395', 'g', '200', 940),
(4, 'Parmezaanse Kaas', 'Lorem Ipsum', '395', 'g', '200', 860),
(5, 'Pandan Rijst', 'Lorem Ipsum', '150', 'g', '400', 1400),
(6, 'Nasi Groenten', 'Lorem Ipsum', '180', 'g', '500', 180),
(7, 'Spekreepjes', 'Lorem Ipsum', '395', 'g', '250', 700),
(8, 'Knoflook', 'Lorem Ipsum', '120', 'tenen', '20', 130),
(9, 'Ketjap Manis', 'Lorem Ipsum', '295', 'ml', '250', 600),
(10, 'Tomato Frito', 'Lorem Ipsum', '145', 'g', '350', 280),
(11, 'Tonijn', 'Lorem Ipsum', '245', 'g', '160', 130),
(12, 'Ui', 'Lorem Ipsum', '195', 'stuks', '10', 400),
(13, 'Geraspte Kaas', 'Lorem Ipsum', '295', 'g', '200', 740),
(14, 'Pizza Bodem', 'Lorem Ipsum', '345', 'stuks', '2', 680),
(15, 'Tomatenblokjes', 'Lorem Ipsum', '95', 'g', '400', 90),
(16, 'Paprika', 'Lorem Ipsum', '175', 'stuks', '3', 100),
(17, 'Harissa', 'Lorem Ipsum', '315', 'g', '230', 220);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `groceries`
--

CREATE TABLE `groceries` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(6) NOT NULL,
  `recipe_id` int(6) NOT NULL,
  `article_id` int(6) DEFAULT NULL,
  `number` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ingredient`
--

INSERT INTO `ingredient` (`id`, `recipe_id`, `article_id`, `number`) VALUES
(1, 2, 1, 500),
(2, 2, 2, 2),
(3, 2, 3, 200),
(4, 2, 4, 200),
(5, 3, 2, 4),
(6, 3, 5, 400),
(7, 3, 6, 500),
(8, 3, 7, 125),
(9, 3, 8, 2),
(10, 3, 9, 25),
(11, 4, 10, 700),
(12, 4, 11, 480),
(14, 4, 12, 2),
(15, 4, 13, 400),
(16, 4, 14, 4),
(17, 5, 15, 800),
(18, 5, 16, 3),
(19, 5, 17, 230),
(20, 5, 12, 2),
(21, 5, 2, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kitchentype`
--

CREATE TABLE `kitchentype` (
  `id` int(11) NOT NULL,
  `record_type` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `kitchentype`
--

INSERT INTO `kitchentype` (`id`, `record_type`, `description`) VALUES
(1, 'T', 'Vlees'),
(2, 'T', 'Vis'),
(3, 'T', 'Vegetarisch'),
(4, 'T', 'Vegan'),
(5, 'K', 'Italiaans'),
(6, 'K', 'Frans'),
(7, 'K', 'Indonesisch'),
(8, 'K', 'Midden-oosters'),
(9, 'K', 'Thais');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recipe`
--

CREATE TABLE `recipe` (
  `id` int(11) NOT NULL,
  `kitchen_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `title` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recipe`
--

INSERT INTO `recipe` (`id`, `kitchen_id`, `type_id`, `user_id`, `date_added`, `title`, `short_description`, `long_description`, `image`) VALUES
(2, 5, 1, 1, '2023-01-18', 'Spaghetti Carbonara', 'Lorem Ipsum', 'Lorem Ipsum', ''),
(3, 7, 1, 1, '2023-01-24', 'Nasi Goreng', 'Lorem Ipsum', 'Lorem Ipsum', NULL),
(4, 5, 2, 1, '2023-01-24', 'Pizza Tonno', 'Lorem Ipsum', ' Lorem Ipsum', NULL),
(5, 8, 3, 1, '2023-01-24', 'Shakshuka', 'Lorem Ipsum', ' Lorem Ipsum', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recipeinfo`
--

CREATE TABLE `recipeinfo` (
  `id` int(11) NOT NULL,
  `record_type` text DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `numerical` text DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recipeinfo`
--

INSERT INTO `recipeinfo` (`id`, `record_type`, `recipe_id`, `user_id`, `date`, `numerical`, `text`) VALUES
(1, 'C', 2, 1, '2023-01-23', '', 'Lekker!'),
(3, 'P', 2, 1, '2023-01-23', '1', 'Klop 2 eieren in een kom'),
(7, 'R', 2, NULL, NULL, '4', NULL),
(11, 'C', 2, 1, NULL, NULL, 'Bah'),
(15, 'F', 2, 1, NULL, NULL, NULL),
(16, 'F', 2, 1, NULL, NULL, NULL),
(17, 'F', 2, 1, NULL, NULL, NULL),
(18, 'F', 2, 1, NULL, NULL, NULL),
(19, 'F', 2, 1, NULL, NULL, NULL),
(20, 'F', 2, 1, NULL, NULL, NULL),
(21, 'F', 2, 1, NULL, NULL, NULL),
(22, 'F', 2, 1, NULL, NULL, NULL),
(23, 'F', 2, 1, NULL, NULL, NULL),
(24, 'F', 2, 1, NULL, NULL, NULL),
(25, 'F', 2, 1, NULL, NULL, NULL),
(26, 'F', 2, 1, NULL, NULL, NULL),
(27, 'F', 2, 1, NULL, NULL, NULL),
(28, 'F', 2, 1, NULL, NULL, NULL),
(29, 'F', 2, 1, NULL, NULL, NULL),
(30, 'F', 2, 1, NULL, NULL, NULL),
(31, 'F', 2, 1, NULL, NULL, NULL),
(32, 'F', 2, 1, NULL, NULL, NULL),
(33, 'F', 2, 1, NULL, NULL, NULL),
(34, 'F', 2, 1, NULL, NULL, NULL),
(35, 'F', 2, 1, NULL, NULL, NULL),
(36, 'F', 2, 1, NULL, NULL, NULL),
(37, 'F', 2, 1, NULL, NULL, NULL),
(38, 'F', 2, 1, NULL, NULL, NULL),
(39, 'F', 2, 1, NULL, NULL, NULL),
(40, 'F', 2, 1, NULL, NULL, NULL),
(41, 'F', 2, 1, NULL, NULL, NULL),
(42, 'F', 2, 1, NULL, NULL, NULL),
(43, 'F', 2, 1, NULL, NULL, NULL),
(44, 'F', 2, 1, NULL, NULL, NULL),
(45, 'F', 2, 1, NULL, NULL, NULL),
(46, 'F', 2, 1, NULL, NULL, NULL),
(47, 'F', 2, 1, NULL, NULL, NULL),
(48, 'F', 2, 1, NULL, NULL, NULL),
(49, 'F', 2, 1, NULL, NULL, NULL),
(50, 'F', 2, 1, NULL, NULL, NULL),
(51, 'F', 2, 1, NULL, NULL, NULL),
(52, 'F', 2, 1, NULL, NULL, NULL),
(53, 'F', 2, 1, NULL, NULL, NULL),
(54, 'F', 2, 1, NULL, NULL, NULL),
(55, 'F', 2, 1, NULL, NULL, NULL),
(56, 'F', 2, 1, NULL, NULL, NULL),
(57, 'F', 2, 1, NULL, NULL, NULL),
(58, 'F', 2, 1, NULL, NULL, NULL),
(59, 'F', 2, 1, NULL, NULL, NULL),
(60, 'F', 2, 1, NULL, NULL, NULL),
(61, 'F', 2, 1, NULL, NULL, NULL),
(62, 'F', 2, 1, NULL, NULL, NULL),
(63, 'F', 2, 1, NULL, NULL, NULL),
(64, 'F', 2, 1, NULL, NULL, NULL),
(65, 'F', 2, 1, NULL, NULL, NULL),
(66, 'F', 2, 1, NULL, NULL, NULL),
(67, 'F', 2, 1, NULL, NULL, NULL),
(68, 'F', 2, 1, NULL, NULL, NULL),
(69, 'F', 2, 1, NULL, NULL, NULL),
(70, 'F', 2, 1, NULL, NULL, NULL),
(71, 'F', 2, 1, NULL, NULL, NULL),
(72, 'F', 2, 1, NULL, NULL, NULL),
(73, 'F', 2, 1, NULL, NULL, NULL),
(74, 'F', 2, 1, NULL, NULL, NULL),
(75, 'F', 2, 1, NULL, NULL, NULL),
(76, 'F', 2, 1, NULL, NULL, NULL),
(77, 'F', 2, 1, NULL, NULL, NULL),
(78, 'F', 2, 1, NULL, NULL, NULL),
(79, 'F', 2, 1, NULL, NULL, NULL),
(80, 'F', 2, 1, NULL, NULL, NULL),
(81, 'F', 2, 1, NULL, NULL, NULL),
(82, 'F', 2, 1, NULL, NULL, NULL),
(83, 'F', 2, 1, NULL, NULL, NULL),
(84, 'F', 2, 1, NULL, NULL, NULL),
(85, 'F', 2, 1, NULL, NULL, NULL),
(86, 'F', 2, 1, NULL, NULL, NULL),
(87, 'F', 2, 1, NULL, NULL, NULL),
(88, 'F', 2, 1, NULL, NULL, NULL),
(89, 'F', 2, 1, NULL, NULL, NULL),
(90, 'F', 2, 1, NULL, NULL, NULL),
(91, 'F', 2, 1, NULL, NULL, NULL),
(92, 'F', 2, 1, NULL, NULL, NULL),
(93, 'F', 2, 1, NULL, NULL, NULL),
(94, 'F', 2, 1, NULL, NULL, NULL),
(95, 'F', 2, 1, NULL, NULL, NULL),
(96, 'F', 2, 1, NULL, NULL, NULL),
(97, 'F', 2, 1, NULL, NULL, NULL),
(98, 'F', 2, 1, NULL, NULL, NULL),
(99, 'F', 2, 1, NULL, NULL, NULL),
(100, 'F', 2, 1, NULL, NULL, NULL),
(101, 'F', 2, 1, NULL, NULL, NULL),
(102, 'F', 2, 1, NULL, NULL, NULL),
(103, 'F', 2, 1, NULL, NULL, NULL),
(104, 'F', 2, 1, NULL, NULL, NULL),
(105, 'F', 2, 1, NULL, NULL, NULL),
(106, 'F', 2, 1, NULL, NULL, NULL),
(107, 'F', 2, 1, NULL, NULL, NULL),
(108, 'F', 2, 1, NULL, NULL, NULL),
(109, 'F', 2, 1, NULL, NULL, NULL),
(110, 'F', 2, 1, NULL, NULL, NULL),
(111, 'F', 2, 1, NULL, NULL, NULL),
(112, 'F', 2, 1, NULL, NULL, NULL),
(113, 'F', 2, 1, NULL, NULL, NULL),
(114, 'F', 2, 1, NULL, NULL, NULL),
(115, 'F', 2, 1, NULL, NULL, NULL),
(116, 'F', 2, 1, NULL, NULL, NULL),
(117, 'F', 2, 1, NULL, NULL, NULL),
(118, 'F', 2, 1, NULL, NULL, NULL),
(119, 'F', 2, 1, NULL, NULL, NULL),
(120, 'F', 2, 1, NULL, NULL, NULL),
(121, 'F', 2, 1, NULL, NULL, NULL),
(122, 'F', 2, 1, NULL, NULL, NULL),
(123, 'F', 2, 1, NULL, NULL, NULL),
(124, 'F', 2, 1, NULL, NULL, NULL),
(125, 'F', 2, 1, NULL, NULL, NULL),
(126, 'F', 2, 1, NULL, NULL, NULL),
(127, 'F', 2, 1, NULL, NULL, NULL),
(128, 'F', 2, 1, NULL, NULL, NULL),
(129, 'F', 2, 1, NULL, NULL, NULL),
(130, 'F', 2, 1, NULL, NULL, NULL),
(131, 'F', 2, 1, NULL, NULL, NULL),
(132, 'F', 2, 1, NULL, NULL, NULL),
(133, 'F', 2, 1, NULL, NULL, NULL),
(134, 'F', 2, 1, NULL, NULL, NULL),
(135, 'F', 2, 1, NULL, NULL, NULL),
(136, 'F', 2, 1, NULL, NULL, NULL),
(137, 'F', 2, 1, NULL, NULL, NULL),
(138, 'F', 2, 1, NULL, NULL, NULL),
(139, 'F', 2, 1, NULL, NULL, NULL),
(140, 'F', 2, 1, NULL, NULL, NULL),
(141, 'F', 2, 1, NULL, NULL, NULL),
(142, 'F', 2, 1, NULL, NULL, NULL),
(143, 'F', 2, 1, NULL, NULL, NULL),
(144, 'F', 2, 1, NULL, NULL, NULL),
(145, 'F', 2, 1, NULL, NULL, NULL),
(146, 'F', 2, 1, NULL, NULL, NULL),
(147, 'F', 2, 1, NULL, NULL, NULL),
(148, 'F', 2, 1, NULL, NULL, NULL),
(149, 'F', 2, 1, NULL, NULL, NULL),
(150, 'F', 2, 1, NULL, NULL, NULL),
(151, 'F', 2, 1, NULL, NULL, NULL),
(152, 'F', 2, 1, NULL, NULL, NULL),
(153, 'F', 2, 1, NULL, NULL, NULL),
(154, 'F', 2, 1, NULL, NULL, NULL),
(155, 'F', 2, 1, NULL, NULL, NULL),
(156, 'F', 2, 1, NULL, NULL, NULL),
(157, 'F', 2, 1, NULL, NULL, NULL),
(158, 'F', 2, 1, NULL, NULL, NULL),
(159, 'F', 2, 1, NULL, NULL, NULL),
(160, 'F', 2, 1, NULL, NULL, NULL),
(161, 'F', 2, 1, NULL, NULL, NULL),
(162, 'F', 2, 1, NULL, NULL, NULL),
(163, 'F', 2, 1, NULL, NULL, NULL),
(164, 'F', 2, 1, NULL, NULL, NULL),
(165, 'F', 2, 1, NULL, NULL, NULL),
(166, 'F', 2, 1, NULL, NULL, NULL),
(167, 'F', 2, 1, NULL, NULL, NULL),
(168, 'F', 2, 1, NULL, NULL, NULL),
(169, 'F', 2, 1, NULL, NULL, NULL),
(170, 'F', 2, 1, NULL, NULL, NULL),
(171, 'F', 2, 1, NULL, NULL, NULL),
(172, 'F', 2, 1, NULL, NULL, NULL),
(173, 'F', 2, 1, NULL, NULL, NULL),
(174, 'F', 2, 1, NULL, NULL, NULL),
(175, 'F', 2, 1, NULL, NULL, NULL),
(176, 'F', 2, 1, NULL, NULL, NULL),
(177, 'F', 2, 1, NULL, NULL, NULL),
(178, 'F', 2, 1, NULL, NULL, NULL),
(179, 'F', 2, 1, NULL, NULL, NULL),
(180, 'F', 2, 1, NULL, NULL, NULL),
(181, 'F', 2, 1, NULL, NULL, NULL),
(182, 'F', 2, 1, NULL, NULL, NULL),
(183, 'F', 2, 1, NULL, NULL, NULL),
(184, 'F', 2, 1, NULL, NULL, NULL),
(185, 'F', 2, 1, NULL, NULL, NULL),
(186, 'F', 2, 1, NULL, NULL, NULL),
(187, 'F', 2, 1, NULL, NULL, NULL),
(188, 'F', 2, 1, NULL, NULL, NULL),
(189, 'F', 2, 1, NULL, NULL, NULL),
(190, 'F', 2, 1, NULL, NULL, NULL),
(191, 'F', 2, 1, NULL, NULL, NULL),
(192, 'F', 2, 1, NULL, NULL, NULL),
(193, 'F', 2, 1, NULL, NULL, NULL),
(194, 'F', 2, 1, NULL, NULL, NULL),
(195, 'F', 2, 1, NULL, NULL, NULL),
(196, 'F', 2, 1, NULL, NULL, NULL),
(197, 'F', 2, 1, NULL, NULL, NULL),
(198, 'F', 2, 1, NULL, NULL, NULL),
(199, 'F', 2, 1, NULL, NULL, NULL),
(200, 'F', 2, 1, NULL, NULL, NULL),
(201, 'F', 2, 1, NULL, NULL, NULL),
(202, 'F', 2, 1, NULL, NULL, NULL),
(203, 'F', 2, 1, NULL, NULL, NULL),
(204, 'F', 2, 1, NULL, NULL, NULL),
(205, 'F', 2, 1, NULL, NULL, NULL),
(206, 'F', 2, 1, NULL, NULL, NULL),
(207, 'F', 2, 1, NULL, NULL, NULL),
(208, 'F', 2, 1, NULL, NULL, NULL),
(209, 'F', 2, 1, NULL, NULL, NULL),
(210, 'F', 2, 1, NULL, NULL, NULL),
(211, 'F', 2, 1, NULL, NULL, NULL),
(212, 'F', 2, 1, NULL, NULL, NULL),
(213, 'F', 2, 1, NULL, NULL, NULL),
(214, 'F', 2, 1, NULL, NULL, NULL),
(215, 'F', 2, 1, NULL, NULL, NULL),
(216, 'F', 2, 1, NULL, NULL, NULL),
(217, 'F', 2, 1, NULL, NULL, NULL),
(218, 'F', 2, 1, NULL, NULL, NULL),
(219, 'F', 2, 1, NULL, NULL, NULL),
(220, 'F', 2, 1, NULL, NULL, NULL),
(221, 'F', 2, 1, NULL, NULL, NULL),
(222, 'F', 2, 1, NULL, NULL, NULL),
(223, 'F', 2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `email`, `image`) VALUES
(1, 'PaulSlangen', 'verrukkulluk', 'plg.slangen@gmail.com', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_groceries` (`article_id`),
  ADD KEY `fk_user_groceries` (`user_id`);

--
-- Indexen voor tabel `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_ingredient` (`article_id`),
  ADD KEY `fk_recipe_ingredient` (`recipe_id`);

--
-- Indexen voor tabel `kitchentype`
--
ALTER TABLE `kitchentype`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kitchen_recipe` (`kitchen_id`),
  ADD KEY `fk_type_recipe` (`type_id`),
  ADD KEY `fk_user_recipe` (`user_id`);

--
-- Indexen voor tabel `recipeinfo`
--
ALTER TABLE `recipeinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_recipe_recipeinfo` (`recipe_id`),
  ADD KEY `fk_user_recipeinfo` (`user_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `groceries`
--
ALTER TABLE `groceries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `kitchentype`
--
ALTER TABLE `kitchentype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `recipeinfo`
--
ALTER TABLE `recipeinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `groceries`
--
ALTER TABLE `groceries`
  ADD CONSTRAINT `fk_article_groceries` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `fk_user_groceries` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `fk_recipe_ingredient` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);

--
-- Beperkingen voor tabel `recipeinfo`
--
ALTER TABLE `recipeinfo`
  ADD CONSTRAINT `fk_user_recipeinfo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
