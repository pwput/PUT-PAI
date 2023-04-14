-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Kwi 2023, 20:08
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cakephp`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `genre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`) VALUES
(1, 'Sea of Tranquility', 'Emily St. John Mande', 'Fiction'),
(2, 'The Maid', 'Nita Prose', 'Mystery'),
(3, 'House of Sky and Breath', 'Sarah J. Maas', 'Fantasy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(15) DEFAULT NULL,
  `imie` varchar(15) DEFAULT NULL,
  `etat` varchar(10) DEFAULT NULL,
  `id_szefa` decimal(4,0) DEFAULT NULL,
  `zatrudniony` date DEFAULT NULL,
  `placa_pod` decimal(6,2) DEFAULT NULL,
  `placa_dod` decimal(6,2) DEFAULT NULL,
  `id_zesp` decimal(2,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`id`, `nazwisko`, `imie`, `etat`, `id_szefa`, `zatrudniony`, `placa_pod`, `placa_dod`, `id_zesp`) VALUES
(100, 'Marecki', 'Jan', 'DYREKTOR', NULL, '1968-01-01', '4730.00', '980.50', '10'),
(110, 'Janicki', 'Karol', 'PROFESOR', '100', '1973-05-01', '3350.00', '610.00', '40'),
(120, 'Nowicki', 'Pawel', 'PROFESOR', '100', '1977-09-01', '3070.00', NULL, '30'),
(130, 'Nowak', 'Piotr', 'PROFESOR', '100', '1968-07-01', '3960.00', NULL, '20'),
(140, 'Kowalski', 'Krzysztof', 'PROFESOR', '130', '1975-09-15', '3230.00', '805.00', '20'),
(150, 'Grzybowska', 'Maria', 'ADIUNKT', '130', '1977-09-01', '2845.50', NULL, '20'),
(160, 'Krakowska', 'Joanna', 'SEKRETARKA', '130', '1985-03-01', '1590.00', NULL, '20'),
(170, 'Opolski', 'Roman', 'ASYSTENT', '130', '1992-10-01', '1839.70', '480.50', '20'),
(190, 'Kotarski', 'Konrad', 'ASYSTENT', '140', '1993-09-01', '1971.00', NULL, '20'),
(180, 'Makowski', 'Marek', 'ADIUNKT', '100', '1985-02-20', '2610.20', NULL, '10'),
(200, 'Przywarek', 'Leon', 'DOKTORANT', '140', '1994-07-15', '900.00', NULL, '30'),
(210, 'Kotlarczyk', 'Stefan', 'DOKTORANT', '130', '1993-10-15', '900.00', '570.60', '30'),
(220, 'Siekierski', 'Mateusz', 'ASYSTENT', '110', '1993-10-01', '1889.00', NULL, '20'),
(230, 'Dolny', 'Tomasz', 'ASYSTENT', '120', '1992-09-01', '1850.00', '390.00', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'pierwsza', '2023-04-13 18:04:32', '2023-04-13 18:04:32'),
(2, 'druga', '2023-04-13 18:04:39', '2023-04-13 18:04:39');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`) VALUES
(1, 'adam', 'adam2020', 1, '2023-04-13 18:05:11', '2023-04-13 18:05:11'),
(2, 'piotr', 'piotr2020', 1, '2023-04-13 18:05:28', '2023-04-13 18:05:28');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT dla tabeli `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
