-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Mrz 2018 um 12:08
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
-- Tabellenstruktur für Tabelle `house`
--

CREATE TABLE `house` (
  `hause_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `fk_grund_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `house`
--

INSERT INTO `house` (`hause_id`, `image`, `fk_grund_id`) VALUES
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

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`hause_id`),
  ADD KEY `fk_grund_id` (`fk_grund_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`fk_grund_id`) REFERENCES `grundbuch` (`id`),
  ADD CONSTRAINT `house_ibfk_2` FOREIGN KEY (`fk_grund_id`) REFERENCES `grundbuch` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
