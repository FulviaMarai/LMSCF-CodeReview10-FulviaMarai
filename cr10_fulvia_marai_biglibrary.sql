-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 22, 2020 alle 00:22
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
-- Struttura della tabella `author`
--

CREATE TABLE `author` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `author`
--

INSERT INTO `author` (`ID`, `name`, `surname`, `nationality`, `biography`, `media`) VALUES
(1, 'Terry', 'Pratchett', 'English', 'Sir Terence David John Pratchett (28 April 1948 – 12 March 2015) was an English humorist, satirist, and author of fantasy novels, especially comical works.', 'terrypratchett.co.uk'),
(2, 'Walter', 'Moers', 'German', 'Walter Moers (born 24 May 1957 in Mönchengladbach) is a German comic creator and author', 'zamonien.de'),
(3, 'Jonathan', 'Stroud', 'british', 'Jonathan Anthony Stroud (born 27 October 1970) is a British writer of fantasy fiction, mainly for children and young adults.', 'www.jonathanstroud.com'),
(4, 'Una', 'McCormack', ' British-Irish ', 'Una McCormack (born 13 January 1972) is a British-Irish academic, scriptwriter and novelist.', NULL),
(5, 'Greer Ilene', 'Gilman', 'american', 'Greer Ilene Gilman (born in 1951) is an American author of fantasy stories.', 'www.greergilman.com'),
(6, 'Neil', 'Gaiman', 'english', 'Neil Richard MacKinnon Gaiman (born Neil Richard Gaiman,10 November 1960) is an English author of short fiction, novels, comic books, graphic novels, nonfiction, audio theatre, and films.', 'neilgaiman.com'),
(7, 'Ursula', 'Le Guin', 'American', 'Ursula Kroeber Le Guin (October 21, 1929 – January 22, 2018) was an American author best known for her works of speculative fiction, including science fiction works set in her Hainish universe, and the Earthsea fantasy series.', 'www.ursulakleguin.com'),
(8, 'Joanne', 'Rowling', 'British', 'Joanne Rowling CH, OBE, HonFRSE, FRCPE, FRSL (born 31 July 1965), better known by her pen name J. K. Rowling, is a British author, film producer, television producer, screenwriter, and philanthropist.', 'jkrowling.com');

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
  `reader` varchar(255) DEFAULT NULL,
  `FK_author_id` int(11) DEFAULT NULL,
  `FK_publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `media`
--

INSERT INTO `media` (`id`, `cover`, `title`, `publisher`, `publish_date`, `type`, `ISBN`, `description`, `author`, `available`, `reader`, `FK_author_id`, `FK_publisher_id`) VALUES
(4, 'https://m.media-amazon.com/images/I/618skfhn6RL.jpg', 'Guards!Guards!', 'Random House AudioBooks', '2007-07-12', 'Audiobook', 2002508911, 'A book about dragons, guards and the weird city of Ank-morphok.', 'Terry Pratchett', 0, NULL, 1, 1),
(6, 'https://images-na.ssl-images-amazon.com/images/I/517UdroKvTL._SX319_BO1,204,203,200_.jpg', 'The Colour of Magic', 'Corgi', '2012-07-21', 'paperback', 552166596, 'The first book of the serie of \"Discworld\" novels.', 'Terry Pratchett', 0, NULL, 1, 2),
(8, 'https://images-na.ssl-images-amazon.com/images/I/61iU2uVLARL._SX331_BO1,204,203,200_.jpg', 'The Labyrinth of Dreaming Books', 'Harry N. Abrams', '2013-10-23', 'paperback', 1468307142, 'The explosive continuation of the \"City of Dreaming Books\"! ', 'Walter Moers', 0, NULL, 2, 3),
(9, 'https://images-na.ssl-images-amazon.com/images/I/51p-sE4me1L._SX322_BO1,204,203,200_.jpg', 'The Screaming Staircase', ' Corgi Childrens', '2014-07-03', 'paperback', 552566780, 'First book of the thrilling saga of \"Lockwood & Co\"', 'Jonathan Stroud', 0, NULL, 3, 4),
(10, 'https://images-eu.ssl-images-amazon.com/images/I/51jlC3YTgxL.jpg', 'Doctor Who: Royal Blood', 'BBC Digital', '2015-09-10', 'Kindle Edition', 18499099210, '“The Grail is a story, a myth! It didn’t exist on your world! It can’t exist here!”', 'Una McCormack ', 0, NULL, 4, 5),
(11, 'https://images-na.ssl-images-amazon.com/images/I/51NTCqae4AL._SX317_BO1,204,203,200_.jpg', 'Moonwise', 'Penguin Books Ltd', '1991-02-01', 'paperback', 451450949, 'Sylvie and Ariane, two recently reunited friends, become inextricably caught up in the fantasy world they created years before..', 'Greer Ilene Gilman', 0, NULL, 5, 6),
(12, 'https://images-na.ssl-images-amazon.com/images/I/61tm80uUR-L._SX324_BO1,204,203,200_.jpg', 'The Ocean at the End of the Lane', 'Headline', '2014-04-10', 'paperback', 1472200349, 'It began for our narrator forty years ago when the family lodger stole their car and committed suicide in it, stirring up ancient powers best left undisturbed..', 'Neil Gaiman', 0, NULL, 6, 7),
(13, 'https://images-na.ssl-images-amazon.com/images/I/51JFsiR%2Bo6L._SX310_BO1,204,203,200_.jpg', 'The Left Hand of Darkness', 'Penguin Random House USA', '2015-10-25', 'Hardcover', 143111590, 'A lone human emissary. An alien world whose inhabitants can change their gender..', 'Ursula K. Le Guin', 0, NULL, 7, 8),
(14, 'https://images-na.ssl-images-amazon.com/images/I/51tLvYdbRcL._SX331_BO1,204,203,200_.jpg', 'The Tombs of Atuan', 'Atheneum Books for Young Readers', '2012-09-11', 'paperback', 1442459913, 'In this second novel in the Earthsea series, Tenar is chosen as high priestess to the ancient and nameless Powers of the Earth', 'Ursula K. Le Guin', 0, NULL, 7, 9),
(15, 'https://images-eu.ssl-images-amazon.com/images/I/51OZerWcGCL.jpg', 'Harry Potter and the Chamber of Secrets', 'Pottermore Publishing', '2015-12-08', 'Kindle Edition', 80199101170, 'There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year.', 'J.K. Rowling', 0, NULL, 8, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `publisher`
--

CREATE TABLE `publisher` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `SIZE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `publisher`
--

INSERT INTO `publisher` (`ID`, `NAME`, `ADDRESS`, `SIZE`) VALUES
(1, 'Random House AudioBooks', 'Musk Ave', 'big'),
(2, 'Corgi', 'Wozniak Street 12', 'medium'),
(3, 'Harry N. Abrams', 'Pincopallino Street', 'big'),
(4, 'Corgi Childrens', 'Wozniak Street', 'medium'),
(5, 'BBC Digital', 'Wozniak Street', 'medium'),
(6, 'Penguin Books Ltd', 'Binfire avenue', 'big'),
(7, 'Headline', 'Wozniak Street', 'big'),
(8, 'Penguin Random House USA', 'Wozniak Street', 'big'),
(9, 'Atheneum Books for Young Readers', 'Wozniak Street', 'big'),
(10, 'Pottermore Publishing', 'Wozniak Street', 'big');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_author_id` (`FK_author_id`),
  ADD KEY `FK_publisher_id` (`FK_publisher_id`);

--
-- Indici per le tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `author`
--
ALTER TABLE `author`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `publisher`
--
ALTER TABLE `publisher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`FK_author_id`) REFERENCES `author` (`ID`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`FK_publisher_id`) REFERENCES `publisher` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
