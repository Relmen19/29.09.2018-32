-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 09 2019 г., 12:24
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `29092018_1_3project`
--
CREATE DATABASE IF NOT EXISTS `29092018_2_3project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `29092018_2_3project`;

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs_products`
--

CREATE TABLE IF NOT EXISTS `catalogs_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(256) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `photo`, `description`) VALUES
(1, 'Куртка 1', 5900, '', 'Куртка 1'),
(2, 'Куртка 2', 2939, '', 'Куртка 1'),
(3, 'Куртка 3', 7890, '', 'Куртка 3'),
(4, 'Куртка 4', 23142, '', 'Куртка 4'),
(5, 'Куртка 5', 12344, '', 'Куртка 5'),
(6, 'Куртка 6', 23412, '', 'Куртка 6'),
(7, 'Куртка 7', 11111, '', 'Куртка 7'),
(8, 'Куртка 8', 11999, '', 'Куртка 8'),
(9, 'Куртка 9', 65999, '', 'Куртка 9'),
(10, 'Куртка 10', 9000, '', 'Куртка 10'),
(11, 'Куртка 11', 1243230, '', 'Куртка 11'),
(12, 'Куртка 12', 7999, '', 'Куртка 12');

-- --------------------------------------------------------

--
-- Структура таблицы `product_sizes`
--

CREATE TABLE IF NOT EXISTS `product_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(256) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
