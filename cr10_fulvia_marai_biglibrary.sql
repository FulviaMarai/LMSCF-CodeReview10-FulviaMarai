-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 21, 2020 alle 21:59
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
(6, 'https://images-na.ssl-images-amazon.com/images/I/517UdroKvTL._SX319_BO1,204,203,200_.jpg', 'The Colour of Magic', 'Corgi', '2012-07-21', 'paperback', 552166596, 'The first book of the serie of ', 'Terry Pratchett', 0, NULL),
(8, 'https://images-na.ssl-images-amazon.com/images/I/61iU2uVLARL._SX331_BO1,204,203,200_.jpg', 'The Labyrinth of Dreaming Books', 'Harry N. Abrams', '2013-10-23', 'paperback', 1468307142, 'The explosive continuation of the \"City of Dreaming Books\"! ', 'Walter Moers', 0, NULL),
(9, 'https://images-na.ssl-images-amazon.com/images/I/51p-sE4me1L._SX322_BO1,204,203,200_.jpg', 'The Screaming Staircase', ' Corgi Childrens', '2014-07-03', 'paperback', 552566780, 'First book of the thrilling saga of \"Lockwood & Co\"', 'Jonathan Stroud', 0, NULL),
(10, 'https://images-eu.ssl-images-amazon.com/images/I/51jlC3YTgxL.jpg', 'Doctor Who: Royal Blood', 'BBC Digital', '2015-09-10', 'Kindle Edition', 18499099210, '“The Grail is a story, a myth! It didn’t exist on your world! It can’t exist here!”', 'Una McCormack ', 0, NULL),
(11, 'https://images-na.ssl-images-amazon.com/images/I/51NTCqae4AL._SX317_BO1,204,203,200_.jpg', 'Moonwise', 'Penguin Books Ltd', '1991-02-01', 'paperback', 451450949, 'Sylvie and Ariane, two recently reunited friends, become inextricably caught up in the fantasy world they created years before..', 'Greer Ilene Gilman', 0, NULL),
(12, 'https://images-na.ssl-images-amazon.com/images/I/61tm80uUR-L._SX324_BO1,204,203,200_.jpg', 'The Ocean at the End of the Lane', 'Headline', '2014-04-10', 'paperback', 1472200349, 'It began for our narrator forty years ago when the family lodger stole their car and committed suicide in it, stirring up ancient powers best left undisturbed..', 'Neil Gaiman', 0, NULL),
(13, 'https://images-na.ssl-images-amazon.com/images/I/51JFsiR%2Bo6L._SX310_BO1,204,203,200_.jpg', 'The Left Hand of Darkness', 'Penguin Random House USA', '2015-10-25', 'Hardcover', 143111590, 'A lone human emissary. An alien world whose inhabitants can change their gender..', 'Ursula K. Le Guin', 0, NULL),
(14, 'https://images-na.ssl-images-amazon.com/images/I/51tLvYdbRcL._SX331_BO1,204,203,200_.jpg', 'The Tombs of Atuan', 'Atheneum Books for Young Readers', '2012-09-11', 'paperback', 1442459913, 'In this second novel in the Earthsea series, Tenar is chosen as high priestess to the ancient and nameless Powers of the Earth', 'Ursula K. Le Guin', 0, NULL),
(15, 'https://images-eu.ssl-images-amazon.com/images/I/51OZerWcGCL.jpg', 'Harry Potter and the Chamber of Secrets', 'Pottermore Publishing', '2015-12-08', 'Kindle Edition', 80199101170, 'There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year.', 'J.K. Rowling', 0, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
