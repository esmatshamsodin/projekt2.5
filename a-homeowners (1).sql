-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Mrz 2018 um 10:51
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `a-homeowners`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grundbuch`
--

CREATE TABLE `grundbuch` (
  `id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `hausnumber` int(100) NOT NULL,
  `size` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `grundbuch`
--

INSERT INTO `grundbuch` (`id`, `address`, `hausnumber`, `size`) VALUES
(1, 'ramprstorfergasse', 21, 105),
(2, 'ramperstorfergasse', 22, 110),
(3, 'ramperstorfergasse', 23, 112),
(4, 'herzgasse79', 38, 62),
(5, 'herzgasse79', 39, 60),
(6, 'herzgasse79', 40, 52),
(7, 'bla', 25, 200),
(8, 'bla', 22, 300),
(9, 'esmagasse', 55, 150),
(10, 'esmagasse', 78, 100),
(11, 'mahtabgasse', 12, 400),
(12, 'mahtabgasse', 65, 230),
(13, 'mahtabgasse', 21, 50),
(14, 'esmagasse', 16, 90),
(15, 'dragangasse', 85, 90),
(16, 'dragangasse', 33, 200),
(17, 'dragangasse', 84, 205),
(18, 'draganagasse', 98, 200),
(19, 'draganagasse', 55, 200),
(20, 'draganagasse', 47, 200);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house`
--

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `fk_grund_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `house`
--

INSERT INTO `house` (`house_id`, `image`, `fk_grund_id`) VALUES
(1, 'https://i.ytimg.com/vi/Xx6t0gmQ_Tw/maxresdefault.jpg', 1),
(2, 'https://upload.wikimedia.org/wikipedia/commons/9/96/Vasskertentrance.jpg', 2),
(3, 'https://cdn.trendir.com/wp-content/uploads/2016/06/Modern-house-in-Auckland-New-Zealand.jpg', 3),
(4, 'https://images04.military.com/sites/default/files/styles/full/public/media/money/homes/2013/07/gray-home.jpg?itok=UKQTFx_U', 4),
(5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSOjrjqqON-NKZCRDSXmc3-gUZBdOoyhRbk5Wu72yRT3Tc5fs7', 5),
(6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzioCkrJ_5mzySCz2F0uXcBbUEA8fqYnE_C8LSE0A_kwZf9Fy1\r\n', 6),
(7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzioCkrJ_5mzySCz2F0uXcBbUEA8fqYnE_C8LSE0A_kwZf9Fy1', 7),
(8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmLJBl8L5sXbW09lsICrhXD3IJkE3BjO9cpXrd4hbAg4wkPJ3', 8),
(9, 'https://1.bp.blogspot.com/-lfnEU2Eq_tI/Taz7dg_mdII/AAAAAAAACCo/j6Ds_eZl4xk/s1600/HomeSweetHomeExt1.jpg', 9),
(10, 'http://inkhanehchand.com/Content/Home/R_Sharp_house-600x356.jpg', 10),
(11, 'https://media.licdn.com/mpr/mpr/shrinknp_800_800/p/1/000/227/18f/13f7d10.jpg', 11),
(12, 'https://treehavenhomes.com/wp-content/uploads/2017/09/The-Tree-Haven.jpg', 12),
(13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4kgVK0g0cIPezfehbb4nKsIYb-IOCAZ2rgJ4uLEyxhCHmUjmX', 13),
(14, 'https://www.asydesconstruction.com/images/cropped_amy_1930_landscape_web_1513365843.jpg', 14),
(15, 'http://archerweston.com/wp-content/uploads/sites/2/2014/10/history1a.jpg', 15),
(16, 'http://www.rbfh.net/100_05061362505679.jpg', 16),
(17, 'http://www.thomasbuildersinc.com/wp-content/themes/awi/img/house.png', 17),
(18, 'http://bpic.588ku.com/element_origin_min_pic/17/05/07/3709588286cfcb47ccd5605f56b8e638.jpg', 18),
(19, 'http://22976-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2014/12/Slide-House.png', 19),
(20, 'http://www.penhomesde.com/wp-content/plugins/widgetkit/cache/gallery/999/Pembrooke4-f7de887657.png', 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `likes`
--

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_posts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number-of-rel` int(55) NOT NULL,
  `can-vot` int(1) NOT NULL,
  `fk_house_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `owners`
--

INSERT INTO `owners` (`id`, `name`, `lastname`, `birthdate`, `phone`, `address`, `number-of-rel`, `can-vot`, `fk_house_id`) VALUES
(1, 'John', 'Doe', '1987-01-03', 688960011, 'ramperstorfergasse8-12', 5, 1, 1),
(2, 'Man2', 'Muster2', '2018-03-01', 123456, 'ramperstorfergasse\r\n22', 2, 1, 2),
(3, 'Man3', 'Muster3', '2018-03-02', 1234568, '	\r\nramperstorfergasse\r\n23', 3, 1, 3),
(4, 'Man4', 'Muster4', '2018-03-03', 12345698, 'herzgasse79\r\n38', 4, 1, 4),
(5, 'Man5', 'Muster5', '2018-03-05', 2156489, 'herzgasse79\r\n39', 5, 1, 5),
(6, 'Man6', 'Muster6', '2018-03-08', 12345687, 'herzgasse79\r\n40', 6, 1, 6),
(7, 'Man7', 'Muster7', '2018-03-09', 987456, 'bla\r\n25', 7, 1, 7),
(8, 'Man8', 'Muster8', '2018-03-14', 546123, 'bla\r\n22', 8, 1, 8),
(9, 'Man9', 'Muster9', '2018-03-07', 3548985, '	\r\nesmagasse\r\n55', 9, 1, 9),
(10, 'Man10', 'Muster10', '2018-03-29', 369258, 'esmagasse\r\n78\r\n', 10, 1, 10),
(11, 'Man11', 'Muster11', '2018-03-28', 147852, 'mahtabgasse\r\n12', 11, 1, 11),
(12, 'Man12', 'Muster12', '2018-03-28', 852123, 'mahtabgasse\r\n65', 12, 1, 12),
(13, 'Man13', 'Muster13', '2018-03-31', 3691598, 'mahtabgasse\r\n21', 13, 1, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `text` varchar(250) NOT NULL,
  `active` int(1) NOT NULL,
  `likes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `renters`
--

CREATE TABLE `renters` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` int(55) NOT NULL,
  `address` varchar(200) NOT NULL,
  `can-vot` int(1) NOT NULL,
  `can-propose` int(1) NOT NULL,
  `can-comment` int(1) NOT NULL,
  `can-see-nach` int(1) NOT NULL,
  `fk_hause_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `renters`
--

INSERT INTO `renters` (`id`, `name`, `lastname`, `birthdate`, `phone`, `address`, `can-vot`, `can-propose`, `can-comment`, `can-see-nach`, `fk_hause_id`) VALUES
(1, 'maxim', 'max', '1989-02-06', 68896325, 'ramperstorfergasse', 1, 1, 1, 1, 1),
(2, 'Ren2', 'Rent2', '2018-03-13', 147258, 'xystrasse 55', 1, 1, 1, 1, 2),
(3, 'Ren3', 'Rent3', '2018-03-23', 369258, 'xystrasse 14', 1, 1, 1, 1, 3),
(4, 'Ren4', 'Rent4', '2018-03-31', 789456, 'xystrasse 99 ', 1, 1, 1, 1, 4),
(5, 'Ren5', 'Rent5', '2018-03-30', 654789, 'xystrasse 45', 1, 1, 1, 1, 5),
(6, 'Ren6', 'Rent6', '2018-03-25', 321456, 'xystrassse 31', 1, 1, 1, 1, 6),
(7, 'Ren7', 'Rent7', '2018-03-12', 987123, 'xystrasse 22', 1, 1, 1, 1, 7),
(8, 'Ren8', 'Rent8', '2018-03-13', 951753, 'xystrasse 35', 1, 1, 1, 1, 8),
(9, 'Ren9', 'Rent9', '2018-03-19', 3215975, 'xystrasse 85', 1, 1, 1, 1, 9),
(10, 'Ren10 ', 'Rent10', '2018-03-16', 9854612, 'xystrasse 65', 1, 1, 1, 1, 10),
(11, 'Ren11', 'Rent11', '2018-02-19', 213658, 'xystrasse 00', 1, 1, 1, 1, 11),
(12, 'Ren12', 'Rent12', '2018-03-16', 0, 'xystrasse 36', 1, 1, 1, 1, 12),
(13, 'Ren13', 'Rent13', '2018-03-01', 965874136, 'xystrasse 54', 1, 1, 1, 1, 13),
(14, 'Ren14', 'Rent14', '2018-03-17', 6547213, 'xystrasse 201', 1, 1, 1, 1, 14),
(15, 'Ren15', 'Rent15', '2018-03-12', 6456314, 'xystrasse 321', 1, 1, 1, 1, 15),
(16, 'Ren16', 'Rent16', '2018-03-17', 3216648, 'xystrasse 654', 1, 1, 1, 1, 16),
(17, 'Ren17', 'Rent17', '2018-03-12', 645641689, 'xystrasse 521', 1, 1, 1, 1, 17),
(18, 'Ren18', 'Rent18', '2018-03-12', 3021230, 'xystrasse 101', 1, 1, 1, 1, 18),
(19, 'Ren19', 'Rent19', '2018-03-26', 2014789, 'xystrasse 301', 1, 1, 1, 1, 19),
(20, 'Ren20', 'Rent20', '2018-03-16', 698421, 'xystrasse 140', 1, 1, 1, 1, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `usertype`) VALUES
(1, 'esmat', 'admin@admin.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `grundbuch`
--
ALTER TABLE `grundbuch`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`),
  ADD KEY `fk_grund_id` (`fk_grund_id`);

--
-- Indizes für die Tabelle `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_posts_id` (`fk_posts_id`);

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `likes_id` (`likes_id`);

--
-- Indizes für die Tabelle `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hause_id` (`fk_hause_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `likes`
--
ALTER TABLE `likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`fk_grund_id`) REFERENCES `grundbuch` (`id`),
  ADD CONSTRAINT `house_ibfk_2` FOREIGN KEY (`fk_grund_id`) REFERENCES `grundbuch` (`id`);

--
-- Constraints der Tabelle `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`fk_posts_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints der Tabelle `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`likes_id`) REFERENCES `likes` (`likes_id`);

--
-- Constraints der Tabelle `renters`
--
ALTER TABLE `renters`
  ADD CONSTRAINT `renters_ibfk_1` FOREIGN KEY (`fk_hause_id`) REFERENCES `house` (`house_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
