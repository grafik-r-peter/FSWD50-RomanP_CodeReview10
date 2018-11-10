-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 04:20 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_roman_peter_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_firstname` varchar(55) NOT NULL,
  `author_lastname` varchar(55) NOT NULL,
  `fk_item_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_firstname`, `author_lastname`, `fk_item_id`) VALUES
(2, 'George', 'Orwell', 2),
(3, 'Dashiell', 'Hammett', 3),
(4, 'Franz', 'Kafka', 4),
(5, 'Paul Thomas', 'Anderson', 5),
(6, 'Coen', 'Brothers', 6),
(7, 'Coen', 'Brothers', 7),
(8, 'Quentin', 'Tarantino', 8),
(9, 'SKA-P', '', 9),
(10, 'SKA-P', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(10) NOT NULL,
  `item_title` varchar(55) NOT NULL,
  `item_isbn` varchar(17) DEFAULT NULL,
  `item_genre` varchar(55) NOT NULL,
  `item_short_description` text NOT NULL,
  `item_image` varchar(55) NOT NULL,
  `item_status` bit(1) NOT NULL,
  `item_type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_title`, `item_isbn`, `item_genre`, `item_short_description`, `item_image`, `item_status`, `item_type`) VALUES
(2, '1984', '978-3-530-57809-0', 'Dystopian', 'Nineteen Eighty-Four, often published as 1984, is a dystopian novel by English author George Orwell published in June 1949.[2][3] The novel is set in the year 1984 when most of the world population have become victims of perpetual war, omnipresent government surveillance and propaganda.\r\n\r\nIn the novel, Great Britain (\"Airstrip One\") has become a province of a superstate named Oceania. Oceania is ruled by the \"Party\", who employ the \"Thought Police\" to persecute individualism and independent thinking.[4] The Party\'s leader is Big Brother, who enjoys an intense cult of personality but may not even exist. The protagonist of the novel, Winston Smith, is a rank-and-file Party member. Smith is an outwardly diligent and skillful worker, but he secretly hates the Party and dreams of rebellion against Big Brother. Smith rebels by entering a forbidden relationship with fellow employee Julia.', '', b'1', 'book'),
(3, 'Red Harvest', '978-3-530-57809-0', 'Detective', 'The Continental Op is called to Personville (known as \"Poisonville\" to the locals) by the newspaper publisher Donald Willsson, who is murdered before the Op has a chance to meet with him. The Op begins to investigate Willsson\'s murder and meets with Willsson\'s father, Elihu Willsson, a local industrialist who has found his control of the city threatened by several competing gangs. Elihu had originally invited those gangs into Personville to help him impose and then enforce the end of a labor dispute.\r\n\r\nThe Op extracts a promise and a signed letter from Elihu that pays the Continental Detective Agency, the Op\'s employer, $10,000 ($140,000 in 2017 dollars) in exchange for cleaning up the city and ridding it of the gangs. When the Op solves Donald\'s murder, Elihu tries to renege on the deal, but the Op will not allow him to do so.\r\n\r\nIn the meantime, the Op is spending time with Dinah Brand, a possible love interest of the late Donald Willsson and a moll for Max \"Whisper\" Thaler, a local gangster. Using information from Brand and Personville\'s crooked chief of police, Noonan, the Op manages to extract and spread incriminating information to all of the warring parties. When the Op reveals that a bank robbery was staged by the cops and one of the mobs to discredit another mob, a gang war erupts.', '', b'1', 'book'),
(4, 'The Trial', '978-0-19-923829-3', 'Dystopian', 'On his thirtieth birthday, the chief cashier of a bank, Josef K., is unexpectedly arrested by two unidentified agents from an unspecified agency for an unspecified crime. The agents\' boss later arrives and holds a mini-tribunal in the room of K.\'s neighbor, Fräulein Bürstner. K. is not taken away, however, but left \"free\" and told to await instructions from the Committee of Affairs. He goes to work, and that night apologizes to Fräulein Bürstner for the intrusion into her room. At the end of the conversation he suddenly kisses her.\r\n\r\nK. receives a phone call summoning him to court, and the coming Sunday is arranged as the date. No time is set, but the address is given to him. The address turns out to be a huge tenement building. K. has to explore to find the court, which turns out to be in the attic. The room is airless, shabby and crowded, and although he has no idea what he is charged with, or what authorizes the process, K. makes a long speech denigrating the whole process, including the agents who arrested him; during this speech an attendant\'s wife and a man engage in sexual activities. K. then returns home.\r\n\r\nK. later goes to visit the court again, although he has not been summoned, and finds that it is not in session. He instead talks with the attendant\'s wife, who attempts to seduce him into taking her away, and who gives him more information about the process and offers to help him. K. later goes with the attendant to a higher level of the attic where the shabby and airless offices of the court are housed.', '', b'0', 'book'),
(5, 'There will be Blood', NULL, 'Drama', 'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.', '', b'0', 'DVD'),
(6, 'No Country for Old Men', NULL, 'Drama', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', '', b'0', 'DVD'),
(7, 'Fargo', NULL, 'Drama', 'Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.', '', b'1', 'DVD'),
(8, 'Reservoir Dogs', NULL, 'Action', 'After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', '', b'0', 'DVD'),
(9, 'Ska-P – Planeta Eskoria', NULL, 'Ska-Punk', 'Puedes leer impreso en la parte de atrás del \"inlay\" : \r\n\r\nContiene pista CD-ROM con : \r\n- Video Paramilitar \r\n- Video Cannabis (Direto) \r\n- Letra de las canciones de Planeta Eskoria ', '', b'1', 'CD'),
(10, 'Ska-P – El Vals Del Obrero', NULL, 'Ska-Punk', 'Lorem Ipsum Dolores', '', b'0', 'CD');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(10) NOT NULL,
  `fk_items_id` int(10) NOT NULL,
  `publisher_name` varchar(55) NOT NULL,
  `publisher_adress` varchar(55) NOT NULL,
  `publisher_zip` varchar(8) NOT NULL,
  `publisher_city` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `fk_items_id`, `publisher_name`, `publisher_adress`, `publisher_zip`, `publisher_city`) VALUES
(2, 2, 'Secker & Warburg', 'Example Street 145', 'WC2N 5DU', 'London'),
(3, 3, 'Alfred A. Knopf', 'Example Avenue 12', '10028', 'New York'),
(4, 4, 'Die Schmiede', 'Berliner Sraße 12', '10115', 'Berlin'),
(5, 5, 'Publisher', 'Example Avenue 12', '13532', 'Berlin'),
(6, 6, 'Example Publisher', 'Example Avenue 75', '13532', 'Los Angeles'),
(7, 7, 'Example Publisher #2', 'Example Street 1451', '14532', 'London'),
(8, 8, 'WTF Entertainment', 'Streetname 124', '13231', 'Berlin'),
(9, 9, 'WTF Entertainment', 'Streetname 124', '13231', 'Berlin'),
(10, 10, 'WTF Entertainment', 'Streetname 124', '13231', 'Berlin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `item_id` (`fk_item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `fk_item_id` (`fk_items_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `item_id` FOREIGN KEY (`fk_item_id`) REFERENCES `items` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `fk_item_id` FOREIGN KEY (`fk_items_id`) REFERENCES `items` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
