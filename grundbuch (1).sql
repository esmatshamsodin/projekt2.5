-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Mrz 2018 um 12:07
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

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `grundbuch`
--
ALTER TABLE `grundbuch`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
