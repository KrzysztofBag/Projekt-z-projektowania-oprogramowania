-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Cze 2024, 15:59
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka_z_muzyka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `biblioteka`
--

CREATE TABLE `biblioteka` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `Autor` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `link` varchar(1000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `biblioteka`
--

INSERT INTO `biblioteka` (`id`, `nazwa`, `Autor`, `link`) VALUES
(1, 'Never gonna give you up', 'Rick Astley', '<iframe width=\"1376\" height=\"774\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" title=\"Rick Astley - Never Gonna Give You Up (Official Music Video)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(2, 'All star', 'Smash Mouth', '<iframe width=\"1376\" height=\"774\" src=\"https://www.youtube.com/embed/L_jWHffIx5E\" title=\"Smash Mouth - All Star (Official Music Video)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>'),
(3, 'The Imperial March', '	John Williams', '<iframe width=\"1032\" height=\"774\" src=\"https://www.youtube.com/embed/-bzWSJG93P8\" title=\"Star Wars- The Imperial March (Darth Vader&#39;s Theme)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `biblioteka`
--
ALTER TABLE `biblioteka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `biblioteka`
--
ALTER TABLE `biblioteka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
