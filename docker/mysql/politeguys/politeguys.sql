-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Cze 2020, 22:44
-- Wersja serwera: 10.3.22-MariaDB-54+deb10u1
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `politeguys`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `about_us`
--

INSERT INTO `about_us` (`id`, `section`, `about`) VALUES
(1, 'header_title', 'O nas'),
(2, 'page_description', 'Poznaj naszą historię'),
(3, 'main_text', 'Nasza historia zaczyna się w roku 2020, kiedy to postanowiliśmy założyć nowatorską firmę z sektora IT.\r\n                <br />\r\n                <br />\r\n                Od tego momentu dostarczamy profesjonalne rozwiązania informatyczne dla małych, średnich oraz dużych przedsiębiorstw, które poszukują nietuzinkowego produktu.\r\n                <br />\r\n                <br />\r\n                Zapraszamy do zapoznania się z <a href=\"./services.html\">naszą ofertą</a>.'),
(4, 'page_description', 'aaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `contact`
--

INSERT INTO `contact` (`id`, `section`, `about`) VALUES
(1, 'header_title', 'Kontakt'),
(2, 'page_description', 'Poniżej znajdą Państwo dane adresowe oraz kontaktowe naszej firmy'),
(3, 'main_text', 'aaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id_produktu` int(11) NOT NULL COMMENT 'Klucz główny przydzielony automatycznie',
  `produkt` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL COMMENT 'Nazwa czytelnika potrzeba przy logowaniu.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id_produktu`, `produkt`) VALUES
(1, '<br> paweł </br> tekst'),
(2, 'aaaaaaaaaaaaaaaaaaaaaaa'),
(3, 'c'),
(8, 'PAWEL'),
(9, 'a'),
(10, 'c'),
(11, 'o'),
(12, 'a'),
(13, 'a'),
(14, 'a');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `alt` text NOT NULL,
  `path_` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `images`
--

INSERT INTO `images` (`id`, `title`, `alt`, `path_`) VALUES
(1, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaa', './img/logo.png'),
(2, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaa', './img/banner-1.jpg'),
(3, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaa', './img/banner-2.jpg'),
(4, 'aaaaaaaaaaaaaaaaaaaaaa', 'o nas', './img/about-us.jpg'),
(5, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaa', './img/banner-3.jpg'),
(6, 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaa', './img/banner-5.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `main`
--

INSERT INTO `main` (`id`, `section`, `about`) VALUES
(1, 'background_image', './img/banner-1.jpg'),
(2, 'header_title', 'Witamy!'),
(3, 'page_description', 'Witamy na naszej stronie i zapraszamy do zapoznania się z jej zawartością.'),
(4, 'link1', 'aaaaaaaaaaaaaaaaaaaaaaa'),
(5, 'link2', 'aaaaaaaaaaaaaaaaaaaaaaa'),
(6, 'link3', 'aaaaaaaaaaaaaaaaaaaaaaa'),
(7, 'link4', 'aaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `section` varchar(65) NOT NULL,
  `about` text NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`id`, `section`, `about`, `link`) VALUES
(2, 'link2', 'Usługi', 'services.php'),
(1, 'link1', 'O nas', './about_us.php'),
(3, 'link3', 'Projekty', './projects.php'),
(4, 'link4', 'Kontakt', './contact.php');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL,
  `about` text NOT NULL,
  `tekst` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `projects`
--

INSERT INTO `projects` (`id`, `path`, `about`, `tekst`) VALUES
(1, 'background_image', 'img/', 'aaa'),
(2, 'header_title', 'aaaaaaaaaaaaaaaaaaaaaaa', 'aaa'),
(3, 'page_description', ' ', 'Zapraszamy od zapoznania się z poniższą galerią, ukazującą dotychczas wykonanye przez nas zlecenia:'),
(4, './img/project-1.jpg', 'Refaktoryzacja projektu IT', 'Naszym zadaniem było uporządkowanie i dostosowanie kodu projektu do najnowszych standardów'),
(5, './img/project-2.jpg', 'Analiza i wsparcie projektu IT', 'W tym projekcie byliśmy konsultantami projektu dla dużego koncernu farmaceutycznego, wykonywanego poprzez firmę zewnętrzną, a naszym zadaniem była analiza spełnienia przez wykonawcę rygorystycznych norm projektowych'),
(6, './img/project-3.jpg', 'Prowadzenie projektu IT', 'Tym razem wcieliliśmy się w zarządców projektu, którzy dbali o jego poprawne i terminowe wykonanie'),
(7, './img/project-4.jpg', 'Szkolenie z efektywnego prowadzenia projektów IT', 'Dla nowo powstałej firmy z branży IT, przeprowadziliśmy zaawansowane szkolenie z zakresu prawidłowego prowadzenia projektów'),
(8, './img/project-5.jpg', 'Redesign firmy z branży meblarskiej', 'Dla będącej już od wielu lat na rynku firmy przeprowadziliśmy kompletny redesign marki'),
(9, 'tekst', ' ', 'Jeśli są Państwo zainteresowani podjęciem współpracy, to zapraszamy do <a href=\"./contact.html\">kontaktu z naszą firmą</a>.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `services`
--

INSERT INTO `services` (`id`, `section`, `about`) VALUES
(3, 'service1', 'Tworzenie platform eCommerce'),
(4, 'service2', 'Tworzenie serwisów internetowych'),
(5, 'service3', 'Programowanie samodzielnych komponentów mikro-serwisów'),
(6, 'service4', 'Zarządzanie projektami'),
(7, 'service5', 'Wsparcie techniczne istniejących projektów'),
(8, 'service6', 'Projektowanie marek i pochodnych'),
(9, 'service7', 'Design i redesign przedsiębiorstw'),
(10, 'service8', 'Inne spersonalizowane projekty dla wymagających Klientów'),
(1, 'header_title', 'Nasze usługi'),
(2, 'page_description', 'Poniżej prezentujamy Państwu świadczoną przez nas ofertę...'),
(11, 'service00', 'Szkolenia firm IT'),
(12, 'main_text', '...i jednocześnie zapraszamy do zapoznania się z <a href=\"./projects.html\">naszym portfolio</a>.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `special`
--

CREATE TABLE `special` (
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `special`
--

INSERT INTO `special` (`section`, `about`) VALUES
('footer_top', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań'),
('footer_bottom', 'Wykonanie: <b>Michał Soberski</b> & <b>Paweł Rudzki (2020)</b>'),
('address', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `special1`
--

CREATE TABLE `special1` (
  `section` varchar(50) NOT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `special1`
--

INSERT INTO `special1` (`section`, `about`) VALUES
('1', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań'),
('2', 'Wykonanie: <b>Michał Soberski</b> & <b>Paweł Rudzki (2020)</b>'),
('footer_top', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań'),
('4', 'Tel: <a href=\"tel:612711000\">61 27 11 000</a>\r\n                        <br />\r\n                        Fax: <a href=\"tel:612711199\">61 27 11 199</a>\r\n                        <br />\r\n                        E-mail: <a href=\"mailto:biuro@politeguys.pl\">biuro@politeguys.pl</a>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `special2`
--

CREATE TABLE `special2` (
  `id` int(11) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `special2`
--

INSERT INTO `special2` (`id`, `section`, `about`) VALUES
(1, 'footer_top', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań'),
(2, 'footer_bottom', 'Wykonanie: <b>Michał Soberski</b> & <b>Paweł Rudzki (2020)</b>'),
(3, 'address', 'POLITe Guys<br />ul. gen. Tadeusza Kutrzeby 10<br />61-719 Poznań');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special1`
--
ALTER TABLE `special1`
  ADD PRIMARY KEY (`section`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Klucz główny przydzielony automatycznie', AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
