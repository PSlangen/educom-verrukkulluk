-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 jan 2023 om 14:30
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
  `package` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `article`
--

INSERT INTO `article` (`id`, `name`, `description`, `price`, `units`, `package`) VALUES
(1, 'Spaghetti', 'Lorem Ipsum', '145', 'g', '500'),
(2, 'Eieren', 'Lorem Ipsum', '250', 'stuks', '6'),
(3, 'Pancetta', 'Lorem Ipsum', '395', 'g', '200'),
(4, 'Parmezaanse Kaas', 'Lorem Ipsum', '395', 'g', '200');

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
(4, 2, 4, 200);

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
(7, 'K', 'Indonesisch');

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
(2, 5, 1, 1, '2023-01-18', 'Spaghetti Carbonara', 'Lorem Ipsum', 'Lorem Ipsum', '');

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
(1, 'O', 2, 1, '2023-01-23', '', 'Lekker!'),
(3, 'B', 2, 1, '2023-01-23', '1', 'Klop 2 eieren in een kom'),
(7, 'W', 2, NULL, NULL, '4', NULL),
(10, 'F', 2, 1, NULL, NULL, NULL);

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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `recipeinfo`
--
ALTER TABLE `recipeinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

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
