-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2017 at 11:31 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(20) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `tittle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idCategory`, `alias`, `tittle`) VALUES
(1, 'it-developing', 'It разработа'),
(3, 'web-developing', 'Web разработка'),
(4, 'game-dveloping', 'разработка игр');

-- --------------------------------------------------------

--
-- Table structure for table `habrNews`
--

CREATE TABLE `habrNews` (
  `id` int(20) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `habrNews`
--

INSERT INTO `habrNews` (`id`, `tittle`, `content`, `link`, `image`) VALUES
(177, 'Продвинутая тактика игры в «Сапёр»', '\n      Продвинутая тактика игры в «Сапёр»\n      \n\nперевод\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/post/334216/', 'https://habrastorage.org/web/ec5/9a7/548/ec59a7548eef435a8eeb090ee8012fe4.png'),
(178, 'Тут вам не DevOps: судьба сисадмина в малом бизнесе', '\n      Тут вам не DevOps: судьба сисадмина в малом бизнесе\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/regionsoft/blog/334298/', 'https://habrastorage.org/web/c8c/04a/175/c8c04a175f814d6eafa1d1c8a31198ea.jpg'),
(179, 'Cравнение российских операторов предоставляющих облачные услуги', '\n      Cравнение российских операторов предоставляющих облачные услуги\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/post/334044/', 'https://habrastorage.org/web/934/927/66b/93492766b42a480b9790f458cd2e7492.jpg'),
(180, 'С днем системного администратора', '\n      С днем системного администратора\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/post/334318/', 'https://habrastorage.org/web/312/434/5b7/3124345b7bfd4884a1feb69c150c187d.jpeg'),
(181, 'Идеальная домашняя сеть или «сам себе злобный перфекционист»', '\n      Идеальная домашняя сеть или «сам себе злобный перфекционист»\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/qrator/blog/334338/', 'https://habrastorage.org/web/a3f/601/d1f/a3f601d1fc86493ba54621f18e3dccfb.png'),
(182, 'Ужасный рекрутер, ужасный кандидат', '\n      Ужасный рекрутер, ужасный кандидат\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/pm/blog/334268/', 'https://habrastorage.org/web/e7e/2de/00a/e7e2de00af0947a48deea245fd616d49.png'),
(183, 'Будни сисадминские: 17 типичных ситуаций', '\n      Будни сисадминские: 17 типичных ситуаций\n      \n\nперевод\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/alloy_software/blog/334340/', 'https://habrastorage.org/getpro/habr/post_images/70a/72d/1f1/70a72d1f15aa8d01061174c4c4d46484.png'),
(184, 'Читаем, слушаем, используем. Гайд по источникам для саморазвития Android-разработчика', '\n      Читаем, слушаем, используем. Гайд по источникам для саморазвития Android-разработчика\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/avito/blog/334264/', 'https://habrastorage.org/web/eb2/608/232/eb2608232ef24b8581549656ba37fd11.jpg'),
(185, 'Как крупная курьерская компания персональные данные своих клиентов раздавала', '\n      Как крупная курьерская компания персональные данные своих клиентов раздавала\n      \n\n\n\nиз песочницы\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/post/334330/', 'https://s3.postimg.org/bwc0gsm4z/0e35049f32d7b56a8ecf01bec5d219a62721edab.jpg'),
(186, 'Как «Актив» организовал «электронную переговорку»', '\n      Как «Актив» организовал «электронную переговорку»\n      \n\n\n\n\n\n\n\n\n\n\n\n    ', 'https://habrahabr.ru/company/aktiv-company/blog/334334/', 'https://habrastorage.org/web/e6d/9ba/d7a/e6d9bad7a57e4fdaa51fba895401925d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1501009752),
('m130524_201442_init', 1501009758);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(20) NOT NULL,
  `idCategory` int(20) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `idCategory`, `tittle`, `description`, `content`) VALUES
(2, 1, 'Анализ исходного кода Doom 3', 'На сей раз настало время idTech4, который использовался в Prey, в Quake 4 и, разумеется, в Doom 3. Всего за несколько часов было создано больше 400 форков репозитория на GitHub, люди начали исследовать внутренние механизмы игры или портировать её на други', '23 ноября 2011 года id Software поддержала собственную традицию и опубликовала исходный код своего предыдущего движка.\r\n\r\nНа сей раз настало время idTech4, который использовался в Prey, в Quake 4 и, разумеется, в Doom 3. Всего за несколько часов было создано больше 400 форков репозитория на GitHub, люди начали исследовать внутренние механизмы игры или портировать её на другие платформы. Я тоже решил поучаствовать и создал Intel-версию для Mac OS X, которую Джон Кармак любезно прорекламировал.\r\n\r\nС точки зрения чистоты и комментариев это самый лучший релиз кода id Software со времени кодовой базы Doom iPhone (которая была выпущена позже, а потому откомментирована лучше). Крайне рекомендую каждому изучить этот движок, собрать его и поэкспериментировать.\r\n\r\nВот мои заметки о том, что я понял. Как обычно, я подчистил их, надеюсь, они сэкономят кому-нибудь пару часов и сподвигнут кого-нибудь на изучение кода для усовершенствования своих навыков программиста.\r\n\r\nЧасть 1: Обзор\r\n\r\nЯ заметил, что для объяснения кодовой базы использую всё больше и больше иллюстраций и меньше текста. Раньше я пользовался для этого gliffy, но у него есть раздражающие ограничения (например, отсутствие альфа-канала). Я подумываю над созданием собственного инструмента на основе SVG и Javascript специально для иллюстраций по 3D-движкам. Интересно, есть ли уже что-то подобное? Ну да ладно, вернёмся к коду…\r\n\r\nВведение\r\n\r\nОчень приятно получить доступ к исходному коду такого потрясающего движка. В момент выхода в 2004 году Doom III задал новые графические и звуковые стандарты для движков реального времени, самым примечательным из которых стал «Unified Lighting and Shadows». Впервые технология позволила художникам выразить себя с голливудским размахом. Даже восемь лет спустя первая встреча с HellKnight в Delta-Labs-4 по-прежнему выглядит невероятно зрелищно:'),
(3, 3, 'Что нового в nginx?', 'Ведущий: Я представляю вашему вниманию следующего докладчика. Встречайте – Максим Дунин. И он расскажет о том, что же нового появилось в технологии под названием nginx.', 'Ведущий: Я представляю вашему вниманию следующего докладчика. Встречайте – Максим Дунин. И он расскажет о том, что же нового появилось в технологии под названием nginx.\r\n\r\n    Дисклеймер: речь пойдёт о нововведениях в 2016 году. Можно подумать, что это давно, но информация об изменениях в changelog от автора этих самых изменений полезна всегда!\r\n\r\n\r\nМаксим Дунин: Добрый день! Я Максим Дунин. Как вы, наверное, знаете, я разработчик nginx. Сегодня буду вам читать changelog вслух и с выражением. Для начала давайте определимся, с какого именно места мы будем читать changelog. Посмотрим на статистику.'),
(4, 3, ' Простейший кейлоггер и безопасность в KeePass', 'Для проверки безопасности вводимых паролей через KeePass я решил написать простейший кейлоггер с дополнительным захватом данных из буфера обмена. Весь код занял несколько строчек на FreePascal.  Пароли, без дополнительных мер защиты и правильной настройки', 'Для проверки безопасности вводимых паролей через KeePass я решил написать простейший кейлоггер с дополнительным захватом данных из буфера обмена. Весь код занял несколько строчек на FreePascal.\r\n\r\nПароли, без дополнительных мер защиты и правильной настройки KeePass, как оказалось, достаточно уязвимы.'),
(5, 1, 'Tizen: подводим итоги', 'Наша команда написала три заметки, связанные с анализом кода операционной системы Tizen. Операционная система содержит много кода и поэтому является благодатной почвой для написания различных статей. Думаю, что к Tizen мы ещё вернёмся в будущем, но сейчас', 'Наша команда написала три заметки, связанные с анализом кода операционной системы Tizen. Операционная система содержит много кода и поэтому является благодатной почвой для написания различных статей. Думаю, что к Tizen мы ещё вернёмся в будущем, но сейчас нас ждут другие интересные проекты. Поэтому я подведу некоторые итоги проделанной работы и отвечу на ряд вопросов, возникших после опубликованных ранее статей.'),
(6, 4, ' Dotty – будущее языка Scala', 'В конце мая я оказался среди слушателей конференции Scala Days в Копенгагене. Одним из ключевых спикеров был создатель языка Scala Мартин Одерский. Он рассказал о развитии языка и, в частности, о разработке компилятора, названного Dotty. Планируется, что ', 'В конце мая я оказался среди слушателей конференции Scala Days в Копенгагене. Одним из ключевых спикеров был создатель языка Scala Мартин Одерский. Он рассказал о развитии языка и, в частности, о разработке компилятора, названного Dotty. Планируется, что на основе Dotty будет разработан новый компилятор для версии 3.0.'),
(7, 3, 'Приглашаем на Tarantool Meetup 10 августа', 'Всем привет! 10 августа 2017 мы приглашаем архитекторов и разработчиков в московский офис Mail.Ru Group, где состоится Tarantool Meetup, посвященный архитектуре и реализации корпоративных микросервисов с использованием Tarantool. Мы поделимся с вами своим', 'Всем привет! 10 августа 2017 мы приглашаем архитекторов и разработчиков в московский офис Mail.Ru Group, где состоится Tarantool Meetup, посвященный архитектуре и реализации корпоративных микросервисов с использованием Tarantool. Мы поделимся с вами своими подходами к проектированию решений и покажем на примере двух простых сервисов как можно за два часа решить две типовые задачи.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'evalon', 'czkMAtlInYKLmJSz5rE8l0bbpX4-645I', '$2y$13$e6.qam1YOcZYsvP.2EHz1eZvgH9VSU6AmjToffIPP1KzBZTFwXEQy', NULL, 'evalonnn@mail.ru', 10, 1501009904, 1501009904);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `habrNews`
--
ALTER TABLE `habrNews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `habrNews`
--
ALTER TABLE `habrNews`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
