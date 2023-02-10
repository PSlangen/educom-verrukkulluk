-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 05:30 PM
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
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(6) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `units` text NOT NULL,
  `package` text NOT NULL,
  `calories` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `name`, `description`, `price`, `units`, `package`, `calories`, `image`) VALUES
(1, 'Spaghetti', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '145', 'g', '500', 750, 'assets/img/ingredients/spaghetti.jpg'),
(2, 'Eieren', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '250', 'stuks', '10', 1080, 'assets/img/ingredients/eieren.jpg'),
(3, 'Pancetta', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '395', 'g', '200', 940, 'assets/img/ingredients/pancetta.jpg'),
(4, 'Parmezaanse Kaas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '395', 'g', '200', 860, 'assets/img/ingredients/parmezaanse_kaas.jpg'),
(5, 'Pandan Rijst', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '150', 'g', '400', 1400, 'assets/img/ingredients/pandan_rijst.jpg'),
(6, 'Nasi Groenten', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '180', 'g', '500', 180, 'assets/img/ingredients/nasi_groenten.jpg'),
(7, 'Spekreepjes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '395', 'g', '250', 700, 'assets/img/ingredients/spekreepjes.jpg'),
(8, 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '120', 'tenen', '20', 130, 'assets/img/ingredients/knoflook.jpg'),
(9, 'Ketjap Manis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '295', 'ml', '500', 600, 'assets/img/ingredients/ketjap_manis.jpg'),
(10, 'Tomato Frito', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '145', 'g', '350', 280, 'assets/img/ingredients/tomato_frito.jpg'),
(11, 'Tonijn', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '245', 'g', '160', 130, 'assets/img/ingredients/tonijn.jpg'),
(12, 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '195', 'stuks', '3', 400, 'assets/img/ingredients/ui.jpg'),
(13, 'Geraspte Kaas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '295', 'g', '150', 740, 'assets/img/ingredients/geraspte_kaas.jpg'),
(14, 'Pizza Bodem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '345', 'stuks', '2', 680, 'assets/img/ingredients/pizza_bodem.jpg'),
(15, 'Tomatenblokjes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '95', 'g', '400', 90, 'assets/img/ingredients/tomatenblokjes.jpg'),
(16, 'Paprika', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '175', 'stuks', '3', 100, 'assets/img/ingredients/paprika.jpg'),
(17, 'Harissa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', '315', 'g', '230', 220, 'assets/img/ingredients/harissa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groceries`
--

CREATE TABLE `groceries` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groceries`
--

INSERT INTO `groceries` (`id`, `article_id`, `user_id`, `number`) VALUES
(1, 10, 1, 2524),
(2, 11, 1, 3786),
(3, 12, 1, 1262),
(4, 13, 1, 2858),
(5, 14, 1, 2524);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `id` int(6) NOT NULL,
  `recipe_id` int(6) NOT NULL,
  `article_id` int(6) DEFAULT NULL,
  `number` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
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
-- Table structure for table `kitchentype`
--

CREATE TABLE `kitchentype` (
  `id` int(11) NOT NULL,
  `record_type` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kitchentype`
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
-- Table structure for table `recipe`
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
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`id`, `kitchen_id`, `type_id`, `user_id`, `date_added`, `title`, `short_description`, `long_description`, `image`) VALUES
(2, 5, 1, 1, '2023-01-18', 'Spaghetti Carbonara', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', 'Ad dolore dignissimos asperiores dicta facere optio quod commodi nam tempore recusandae. Rerum sed nulla eum vero expedita ex delectus voluptates rem at neque quos facere sequi unde optio aliquam!</p>\n<p>Tenetur quod quidem in voluptatem corporis dolorum dicta sit pariatur porro quaerat autem ipsam odit quam beatae tempora quibusdam illum! Modi velit odio nam nulla unde amet odit pariatur at!</p>\n<p>Consequatur rerum amet fuga expedita sunt et tempora saepe? Iusto nihil explicabo perferendis quos provident delectus ducimus necessitatibus reiciendis optio tempora unde earum doloremque commodi laudantium ad nulla vel odio?', 'assets/img/spaghetti_carbonara.webp'),
(3, 7, 1, 1, '2023-01-24', 'Nasi Goreng', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', 'Ad dolore dignissimos asperiores dicta facere optio quod commodi nam tempore recusandae. Rerum sed nulla eum vero expedita ex delectus voluptates rem at neque quos facere sequi unde optio aliquam!</p>\n<p>Tenetur quod quidem in voluptatem corporis dolorum dicta sit pariatur porro quaerat autem ipsam odit quam beatae tempora quibusdam illum! Modi velit odio nam nulla unde amet odit pariatur at!</p>\n<p>Consequatur rerum amet fuga expedita sunt et tempora saepe? Iusto nihil explicabo perferendis quos provident delectus ducimus necessitatibus reiciendis optio tempora unde earum doloremque commodi laudantium ad nulla vel odio?', 'assets/img/nasi_goreng.webp'),
(4, 5, 2, 1, '2023-01-24', 'Pizza Tonno', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', 'Ad dolore dignissimos asperiores dicta facere optio quod commodi nam tempore recusandae. Rerum sed nulla eum vero expedita ex delectus voluptates rem at neque quos facere sequi unde optio aliquam!</p>\n<p>Tenetur quod quidem in voluptatem corporis dolorum dicta sit pariatur porro quaerat autem ipsam odit quam beatae tempora quibusdam illum! Modi velit odio nam nulla unde amet odit pariatur at!</p>\n<p>Consequatur rerum amet fuga expedita sunt et tempora saepe? Iusto nihil explicabo perferendis quos provident delectus ducimus necessitatibus reiciendis optio tempora unde earum doloremque commodi laudantium ad nulla vel odio?', 'assets/img/pizza_tonno.webp'),
(5, 8, 3, 1, '2023-01-24', 'Shakshuka', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui dicta minus molestiae vel beatae natus eveniet ratione temporibus aperiam harum alias officiis assumenda officia quibusdam deleniti eos cupiditate dolore doloribus!', 'Ad dolore dignissimos asperiores dicta facere optio quod commodi nam tempore recusandae. Rerum sed nulla eum vero expedita ex delectus voluptates rem at neque quos facere sequi unde optio aliquam!</p>\n<p>Tenetur quod quidem in voluptatem corporis dolorum dicta sit pariatur porro quaerat autem ipsam odit quam beatae tempora quibusdam illum! Modi velit odio nam nulla unde amet odit pariatur at!</p>\n<p>Consequatur rerum amet fuga expedita sunt et tempora saepe? Iusto nihil explicabo perferendis quos provident delectus ducimus necessitatibus reiciendis optio tempora unde earum doloremque commodi laudantium ad nulla vel odio?', 'assets/img/shakshuka.webp');

-- --------------------------------------------------------

--
-- Table structure for table `recipeinfo`
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
-- Dumping data for table `recipeinfo`
--

INSERT INTO `recipeinfo` (`id`, `record_type`, `recipe_id`, `user_id`, `date`, `numerical`, `text`) VALUES
(1, 'C', 2, 1, '2023-01-23', '', 'Lekker!'),
(3, 'P', 2, 1, '2023-01-23', '1', 'Klop 2 eieren in een kom'),
(7, 'R', 2, NULL, NULL, '4', NULL),
(11, 'C', 2, 1, NULL, NULL, 'Bah'),
(15, 'F', 2, 1, NULL, NULL, NULL),
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
(223, 'F', 2, 1, NULL, NULL, NULL),
(224, 'F', 2, 1, NULL, NULL, NULL),
(225, 'F', 2, 1, NULL, NULL, NULL),
(226, 'F', 2, 1, NULL, NULL, NULL),
(227, 'F', 2, 1, NULL, NULL, NULL),
(228, 'F', 2, 1, NULL, NULL, NULL),
(229, 'F', 2, 1, NULL, NULL, NULL),
(230, 'F', 2, 1, NULL, NULL, NULL),
(231, 'F', 2, 1, NULL, NULL, NULL),
(232, 'F', 2, 1, NULL, NULL, NULL),
(233, 'F', 2, 1, NULL, NULL, NULL),
(234, 'F', 2, 1, NULL, NULL, NULL),
(235, 'F', 2, 1, NULL, NULL, NULL),
(236, 'F', 2, 1, NULL, NULL, NULL),
(237, 'F', 2, 1, NULL, NULL, NULL),
(238, 'F', 2, 1, NULL, NULL, NULL),
(239, 'F', 2, 1, NULL, NULL, NULL),
(240, 'F', 2, 1, NULL, NULL, NULL),
(241, 'F', 2, 1, NULL, NULL, NULL),
(242, 'F', 2, 1, NULL, NULL, NULL),
(243, 'F', 2, 1, NULL, NULL, NULL),
(244, 'F', 2, 1, NULL, NULL, NULL),
(245, 'F', 2, 1, NULL, NULL, NULL),
(246, 'F', 2, 1, NULL, NULL, NULL),
(247, 'F', 2, 1, NULL, NULL, NULL),
(248, 'F', 2, 1, NULL, NULL, NULL),
(249, 'F', 2, 1, NULL, NULL, NULL),
(250, 'F', 2, 1, NULL, NULL, NULL),
(251, 'F', 2, 1, NULL, NULL, NULL),
(252, 'F', 2, 1, NULL, NULL, NULL),
(253, 'F', 2, 1, NULL, NULL, NULL),
(254, 'F', 2, 1, NULL, NULL, NULL),
(255, 'F', 2, 1, NULL, NULL, NULL),
(256, 'F', 2, 1, NULL, NULL, NULL),
(257, 'F', 2, 1, NULL, NULL, NULL),
(258, 'F', 2, 1, NULL, NULL, NULL),
(259, 'F', 2, 1, NULL, NULL, NULL),
(260, 'F', 2, 1, NULL, NULL, NULL),
(261, 'F', 2, 1, NULL, NULL, NULL),
(262, 'F', 2, 1, NULL, NULL, NULL),
(263, 'F', 2, 1, NULL, NULL, NULL),
(264, 'F', 2, 1, NULL, NULL, NULL),
(265, 'F', 2, 1, NULL, NULL, NULL),
(266, 'F', 2, 1, NULL, NULL, NULL),
(267, 'F', 2, 1, NULL, NULL, NULL),
(268, 'F', 2, 1, NULL, NULL, NULL),
(269, 'F', 2, 1, NULL, NULL, NULL),
(270, 'F', 2, 1, NULL, NULL, NULL),
(271, 'F', 2, 1, NULL, NULL, NULL),
(272, 'F', 2, 1, NULL, NULL, NULL),
(273, 'F', 2, 1, NULL, NULL, NULL),
(274, 'F', 2, 1, NULL, NULL, NULL),
(275, 'F', 2, 1, NULL, NULL, NULL),
(276, 'F', 2, 1, NULL, NULL, NULL),
(277, 'F', 2, 1, NULL, NULL, NULL),
(278, 'F', 2, 1, NULL, NULL, NULL),
(279, 'F', 2, 1, NULL, NULL, NULL),
(280, 'F', 2, 1, NULL, NULL, NULL),
(281, 'F', 2, 1, NULL, NULL, NULL),
(282, 'F', 2, 1, NULL, NULL, NULL),
(283, 'F', 2, 1, NULL, NULL, NULL),
(284, 'F', 2, 1, NULL, NULL, NULL),
(285, 'F', 2, 1, NULL, NULL, NULL),
(286, 'F', 2, 1, NULL, NULL, NULL),
(287, 'P', 2, 1, NULL, '2', 'Rasp de parmezaanse kaas en voeg toe aan de geklopte eieren.'),
(288, 'P', 2, 1, NULL, '3', 'Snij de panceta in kleine blokjes en bak deze tot ze krokant zijn.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `email`, `image`) VALUES
(1, 'PaulSlangen', 'verrukkulluk', 'plg.slangen@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groceries`
--
ALTER TABLE `groceries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_groceries` (`article_id`),
  ADD KEY `fk_user_groceries` (`user_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_ingredient` (`article_id`),
  ADD KEY `fk_recipe_ingredient` (`recipe_id`);

--
-- Indexes for table `kitchentype`
--
ALTER TABLE `kitchentype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kitchen_recipe` (`kitchen_id`),
  ADD KEY `fk_type_recipe` (`type_id`),
  ADD KEY `fk_user_recipe` (`user_id`);

--
-- Indexes for table `recipeinfo`
--
ALTER TABLE `recipeinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_recipe_recipeinfo` (`recipe_id`),
  ADD KEY `fk_user_recipeinfo` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `groceries`
--
ALTER TABLE `groceries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kitchentype`
--
ALTER TABLE `kitchentype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recipeinfo`
--
ALTER TABLE `recipeinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groceries`
--
ALTER TABLE `groceries`
  ADD CONSTRAINT `fk_article_groceries` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `fk_user_groceries` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `fk_recipe_ingredient` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`);

--
-- Constraints for table `recipeinfo`
--
ALTER TABLE `recipeinfo`
  ADD CONSTRAINT `fk_user_recipeinfo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
