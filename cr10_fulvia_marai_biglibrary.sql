-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 21, 2020 alle 16:37
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_fulvia_marai_biglibrary`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `ISBN` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `available` int(1) NOT NULL DEFAULT 0,
  `reader` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `media`
--

INSERT INTO `media` (`id`, `cover`, `title`, `publisher`, `publish_date`, `type`, `ISBN`, `description`, `author`, `available`, `reader`) VALUES
(4, 'https://m.media-amazon.com/images/I/618skfhn6RL.jpg', 'Guards!Guards!', 'Random House AudioBooks', '2007-07-12', 'Audiobook', 2002508911, 'A book about dragons, guards and the weird city of Ank-morphok.', 'Terry Pratchett', 0, NULL),
(6, NULL, 'The Colour of Magic', 'Corgi', '2012-07-21', 'paperback', 552166596, NULL, 'Terry Pratchett', 0, NULL),
(8, NULL, 'The Labyrinth of Dreaming Books', 'Harry N. Abrams', '2013-10-23', 'paperback', 1468307142, NULL, 'Walter Moers', 0, NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
