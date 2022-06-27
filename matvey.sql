-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 13 2022 г., 16:22
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `matvey`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Принтер лазерный '),
(2, 'Принтер струйный '),
(3, 'Термопринтер стационарный ');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_status` int NOT NULL,
  `count` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Структура таблицы `sostav`
--

CREATE TABLE `sostav` (
  `id` int NOT NULL,
  `count` int NOT NULL,
  `id_order` int NOT NULL,
  `id_tovar` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `photo` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `count` int NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `title`, `price`, `photo`, `country`, `model`, `year`, `count`, `id_category`) VALUES
(1, 'Принтер лазерный HP Laser ', 18980, 'pr1.PNG', 'Китай', '107r черно-белый, цвет: белый', 2021, 20, 1),
(2, 'Принтер струйный HP Ink Tank ', 24990, 'pr2.PNG', 'Китай', '115 цветной, цвет: черный', 2021, 20, 2),
(3, 'Принтер лазерный HP Color LaserJet Laser ', 39990, 'pr3.PNG', 'Китай', '150a цветной, цвет: белый', 2020, 25, 1),
(4, 'Принтер струйный HP OfficeJet ', 15530, 'pr4.PNG', 'Корея', '202 цветной, цвет: черный', 2022, 10, 2),
(5, 'Термопринтер стационарный Brother ', 90940, 'pr5.PNG', 'Корея', 'PT-P950NW, светло-серый [ptp950nwr1]', 2022, 10, 3),
(6, 'Термопринтер стационарный TSC ', 46390, 'pr6.PNG', 'Корея', 'TC200, черный [99-059a003-6002]', 2022, 5, 3),
(7, 'Термопринтер стационарный TSC ', 95090, 'pr7.PNG', 'Россия', 'MB340T, черный [99-068a002-1202]', 2021, 5, 3),
(8, 'Принтер струйный Canon Pixma ', 10990, 'pr8.PNG', 'Китай', 'TS304 цветной, цвет: черный [2321c007]', 2020, 15, 2),
(9, 'Принтер лазерный Brother ', 17380, 'pr9.PNG', 'Корея', 'HL-L2300DR черно-белый, цвет: черный [hll2300dr1]', 2021, 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `patronymic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_role` int NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `id_role`, `auth_key`) VALUES
(1, 'fghdefh', 'fdefhuig', 'efebhkigh', 'login', 'email@email.com', '$2y$13$bsHoYeMGBcaKD2BbwkhTfuhczl2VT1XbPle1VJTCBlbCnzZg4hVYW', 2, 'IU0XWQrL2_UQFjeTQZ_TsuOvVCdCa0hk'),
(2, 'Админ', 'Админ', 'Админ', 'admin', 'admin@admin.com', '$2y$13$T0U88pezs1b.x0I29MV4i.un4MKey71yU0hgXExPE4yUd30ArNbqq', 1, 'xlCP1XSoh6r8vU_j012bGJ3aWzBHSpWa');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_status` (`id_status`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sostav`
--
ALTER TABLE `sostav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_tovar` (`id_tovar`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sostav`
--
ALTER TABLE `sostav`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `sostav`
--
ALTER TABLE `sostav`
  ADD CONSTRAINT `sostav_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `sostav_ibfk_2` FOREIGN KEY (`id_tovar`) REFERENCES `tovar` (`id`);

--
-- Ограничения внешнего ключа таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD CONSTRAINT `tovar_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
