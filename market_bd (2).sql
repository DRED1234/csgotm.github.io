-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 05 2016 г., 03:25
-- Версия сервера: 5.5.47-0+deb8u1
-- Версия PHP: 5.6.17-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `market_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `login` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `pass`) VALUES
(1, 'admin@1', '60627');

-- --------------------------------------------------------

--
-- Структура таблицы `inventar_76561198138958722`
--

CREATE TABLE IF NOT EXISTS `inventar_76561198138958722` (
`id` int(11) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `data` date DEFAULT NULL,
  `assestid` text
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inventar_76561198138958722`
--

INSERT INTO `inventar_76561198138958722` (`id`, `id_item`, `status`, `data`, `assestid`) VALUES
(1, 1368, 0, NULL, NULL),
(2, 1356, 0, NULL, NULL),
(3, 1355, 0, NULL, NULL),
(4, 1354, 0, NULL, NULL),
(35, 1314, 0, NULL, NULL),
(36, 1366, 0, NULL, NULL),
(37, 1351, 0, NULL, NULL),
(38, 1367, 0, NULL, NULL),
(39, 1352, 0, NULL, NULL),
(40, 1331, 0, NULL, NULL),
(41, 1353, 0, NULL, NULL),
(42, 1254, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inventar_76561198258733322`
--

CREATE TABLE IF NOT EXISTS `inventar_76561198258733322` (
`id` int(11) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `data` date DEFAULT NULL,
  `assestid` text
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inventar_76561198258733322`
--

INSERT INTO `inventar_76561198258733322` (`id`, `id_item`, `status`, `data`, `assestid`) VALUES
(3, 1295, 1, NULL, NULL),
(10, 1255, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inventar_76561198273924509`
--

CREATE TABLE IF NOT EXISTS `inventar_76561198273924509` (
`id` int(11) NOT NULL,
  `id_item` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `data` date DEFAULT NULL,
  `assestid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) NOT NULL,
  `classid` text NOT NULL,
  `name` text NOT NULL,
  `icon_url` text NOT NULL,
  `type` text NOT NULL,
  `redkost` text NOT NULL,
  `oformlenie` text NOT NULL,
  `kollektion` text NOT NULL,
  `kategory` text NOT NULL,
  `opisanie` text NOT NULL,
  `r_price` text NOT NULL,
  `viewgame` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1369 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `classid`, `name`, `icon_url`, `type`, `redkost`, `oformlenie`, `kollektion`, `kategory`, `opisanie`, `r_price`, `viewgame`) VALUES
(1253, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '1,35 pуб.', ''),
(1254, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '0,87 pуб.', ''),
(1255, '310777340', 'P90 | Песчаное напыление', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopuP1FBRw7ODYYzxb08-3moS0mvLwOq7c2GlUuZR0ibiRpNqs2VXi-kI5Mm2hd4GdIQM9NwrW-Va5xObmjJK-uczXiSw0I3Bdoc4', 'Пистолет-пулемёт', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Dust 2»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>P90 легко узнать по уникальному дизайну под названием «булл-пап». Это оружие великолепно подходит для стрельбы на ходу благодаря высокой емкости магазина и низкой отдаче. Баллончиком был нанесен импровизированный рисунок из коротких толстых линий контрастирующих цветов.\n\n<i>Идеально подходит для боевика-кочевника</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Dust 2»</p><br><p>\r\n</p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16637078151493142653'),
(1256, '1373340256', 'M4A1-S | Василиск', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhz2v_Nfz5H_uO3hb-Gw_alIITTl3hY5MxigdbN_Iv9nBrl80BrYz31IYOSdwY-Yl_Wr1C9xr3o05DuvJqazic3viZx7CuOzEO1n1gSObrYfbsp', 'Винтовка', 'Запрещенное', 'Немного поношенное', 'Коллекция «Авангард»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Бесшумный карабин M4A1 оснащен менее вместительным магазином, чем его аналог без глушителя, зато он обеспечивает более тихую стрельбу с меньшей отдачей и повышенной точностью. На оружие нанесено изображение василиска.\n\n<i>Считается, что глазеть на других некрасиво, но на войне не место любезным</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Авангард»</p><br><p>\r\n</p><br><p> </p><br><p><br><div id="sticker_info" name="sticker_info" title="Sticker Details" style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;"><center><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cluj2015/nv.619e0887480edb39725f97ea6252a279eb91ad52.png"><br>Sticker: Team EnVyUs | Клуж-Напока 2015</center></div></p><br>', '107,26 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20M76561198258733322A4909362952D9975025127640117542'),
(1257, '937254005', 'AK-47 | Элитное снаряжение', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot7HxfDhjxszJemkV09G3h5SOhe7LP7LWnn8fvJYh3-qR942higTmqBZpYGild4adIQQ5ZA6B_AC3lebo0ce-78vOnGwj5HeAJ9sV6g', 'Винтовка', 'Армейское качество', 'Немного поношенное', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Мощная и надежная штурмовая винтовка АК-47 — одна из самых известных в мире. Наиболее смертельна стрельба короткими и точными очередями. Окрашено вручную с использованием аквапечати, трафаретных изображений и термонаклеек.\n\n<i>«Ступай осторожней, Наоми… люди твоей профессии обычно не живут долго», — Щит и Змей, часть 2</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '35,21 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16196754764476991773'),
(1258, '310776577', 'UMP-45 | Пиксельный камуфляж «Город»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo7e1f1Jf2-r3dTlS7ciJgZKJqPrxN7LEmyUEvZUj2biX8dvx2w3g-ENsYmDycoScclU-NFmG_wC-xOm815O-vs_I1zI97XEv6cYI', 'Пистолет-пулемёт', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Пистолет-пулемет UMP45 часто не воспринимают всерьез, хотя небольшой магазин является его единственным недостатком. В остальном же это весьма универсальное оружие для ближнего боя. Текстура пиксельного камуфляжа была нанесена водостойкой краской.<i>\n\nКогда ты сможешь различить камуфляж, будет уже слишком поздно</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7946221833813045478'),
(1259, '310776580', 'G3SG1 | Тропическая штриховка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZfwOP3ZTxS6eOlnI-Zg8j-JrXWmm5u5cB1g_zMu46m3Qy2-RBqYG-lIY6SdVI7ZVHT-la8xuvn0MPttJSby3pqvyIg5XfD30vgSYELDI8', 'Снайперская винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогая снайперская винтовка G3SG1 значительно замедляет движение, что, однако, компенсируется более высокой скорострельностью, чем у других снайперских винтовок. Рисунок нанесен баллончиком с использованием трафарета из кусочков клейкой ленты.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '0,88 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7540761640582041681'),
(1260, '310776717', 'G3SG1 | Полярный камуфляж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3cC9B-NW1q4OEmePmMqjFqWZU7Mxkh6fH8Imni1e3rhJpZWv0LNDHelI-NwuDrwPswO3s0JG4v5vJz3ZlvCkn-z-DyHWoV0Xo', 'Снайперская винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогая снайперская винтовка G3SG1 значительно замедляет движение, что, однако, компенсируется более высокой скорострельностью, чем у других снайперских винтовок. Текстура арктического камуфляжа была нанесена водостойкой краской.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,90 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14144118455953136285'),
(1261, '310776717', 'G3SG1 | Полярный камуфляж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3cC9B-NW1q4OEmePmMqjFqWZU7Mxkh6fH8Imni1e3rhJpZWv0LNDHelI-NwuDrwPswO3s0JG4v5vJz3ZlvCkn-z-DyHWoV0Xo', 'Снайперская винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогая снайперская винтовка G3SG1 значительно замедляет движение, что, однако, компенсируется более высокой скорострельностью, чем у других снайперских винтовок. Текстура арктического камуфляжа была нанесена водостойкой краской.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,90 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14144118455953136285'),
(1262, '310776717', 'G3SG1 | Полярный камуфляж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3cC9B-NW1q4OEmePmMqjFqWZU7Mxkh6fH8Imni1e3rhJpZWv0LNDHelI-NwuDrwPswO3s0JG4v5vJz3ZlvCkn-z-DyHWoV0Xo', 'Снайперская винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогая снайперская винтовка G3SG1 значительно замедляет движение, что, однако, компенсируется более высокой скорострельностью, чем у других снайперских винтовок. Текстура арктического камуфляжа была нанесена водостойкой краской.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,90 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14144118455953136285'),
(1263, '310776767', 'SCAR-20 | Углепластик', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbmkOVUw7PLFTj5D_t65mr-NnvXxIYTdn2xZ_Isgj7vDrN2t0FXjqBU6MWv1d4HEewc8aFHVrgS9w-e90ZG86J2dyCZqpGB8suxfkl-y', 'Снайперская винтовка', 'Промышленное качество', 'Прямо с завода', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>SCAR-20 — полуавтоматическая снайперская винтовка, которая предлагает высокую скорострельность и большой урон на расстоянии, в обмен на более медленную скорость передвижения и большую стоимость самого оружия. На основу угольно-черного цвета нанесено карбоновое покрытие.\n\n<i>«Я лучшая в своей команде, но я бы не справилась без нее», — Рона Сабри, многообещающий военный</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '3,26 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11835466988530827604'),
(1264, '310776773', 'AUG | Осужденный', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot6-iFBRw7P7NYjV96tOkkZOfqPH9Ib7um25V4dB8xLuVoIqkiVHtrkFoMGjzdoSWdwY6aFvX_Vfow-_mhJS5vs_IwHRhuyk8pSGK2gnD2Gc', 'Винтовка', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Мощная и точная винтовка с оптическим прицелом AUG компенсирует свою долгую перезарядку низким разбросом пуль и высокой скорострельностью. Баллончиком был нанесен рисунок с использованием трафарета из сетки рабицы и обрывков картона.<i>\n\nХищник — он и в Африке хищник</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '2,31 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4786943773924151338'),
(1265, '310776778', 'Nova | Песчаные дюны', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhz3MzbcDNG09C_k4if2aSna-6FwzsJu5Ypj-uVrdyk2wzkqEQ4ZD3wJo7DcAQ2ZAmE-QC5xejxxcjrmUdg9dQ', 'Дробовик', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Дробовик Nova из-за низкой цены идеально подходит для небогатых игроков, которые стремятся напасть на врага из засады. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета песчаных дюн.\n\n<i>«Теперь, когда Тернер мертв, у нас новая задача: спасти Алекса Кинкейда», — командир Феликс Райли</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '0,94 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3081773616645801011'),
(1266, '310776784', 'Five-SeveN | Лесная ночь', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLOzLhRlxfbGTjVb09q5hoWYg8j6OrzZglRc7cF4n-SP9o2gjQbhqRVla2GnJ46VIQA_ZlyD-VHvxuu808S7tc7NzXFm7iUh4mGdwULQPtyarQ', 'Пистолет', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Five-Seven стоит дорого и медленно перезаряжается, однако эти недостатки компенсируются высокой точностью, бронебойностью, щедрым магазином на 20 патронов и снисходительной отдачей. Текстура лесного камуфляжа была нанесена водостойкой краской.<i>\n\nЛес может быть очень опасен для одинокого путешественника…</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,94 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16458088198785492575'),
(1267, '310776880', 'MP9 | Апельсиновая корка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6r8FBRw7OfJYTh94863moeOqPrxN7LEmyUJ6pJ33L-Xpd_03gHlrURvN270LNORJAM2aVjW-gC3yby905K0vpmb1zI97c4iLXaH', 'Пистолет-пулемёт', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Производимый в Швейцарии передовой пистолет-пулемет МР9 — это эргономичное полимерное оружие, используемое частными охранными фирмами. Рисунок нанесен баллончиком с использованием трафарета из спутанной клейкой ленты.\n\n<i>Настоящая мощь — в искусной аппликации</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '2,27 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D298058276019031760'),
(1268, '310776887', 'P250 | Северный лес', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhoyszOfi9H_8iJlo-Zkvb4DLPUl31IppJz2L6So9-niga3qENtNWDwIY6cJg9tYVCD-ADtwubtgpC76ZufySF9-n51_ozB8PE', 'Пистолет', 'Ширпотреб', 'Закаленное в боях', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p>Пистолет P250 — огнестрельное оружие с высоким темпом стрельбы и низкой отдачей, представляющее собой относительно недорогой выбор против бронированных противников. Текстура лесного камуфляжа была нанесена водостойкой краской.<i>\n\nЛес может быть очень опасен для одинокого путешественника…</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '1,01 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D1012760333367389508'),
(1269, '310777105', 'AUG | Гроза', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot6-iFBRv7ODcfi9P6s65mpS0mvLwOq7c2D5QvsN12OqWoNX33ATm8xBpYGrzctKSdlNqZgzR-QXole_u1sC16czXiSw0a5jTWaU', 'Винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Мощная и точная винтовка с оптическим прицелом AUG компенсирует свою долгую перезарядку низким разбросом пуль и высокой скорострельностью. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета грозы.\n\n<i>Гроза террористов</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16486812381373552682'),
(1270, '310777118', 'Tec-9 | Армейская сетка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhzw8zFdC5K092kmZm0mvLwOq7c2DJSscFy2OiXpo_zi1fgqko6YmGhLNWWdVI_NFmC8lW3xOnt0cO5v5zXiSw00ze-NIQ', 'Пистолет', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Tec-9 обладает вместительным магазином и идеально подходит для террориста, предпочитающего бой на небольших расстояниях. Рисунок нанесен баллончиком вручную, с использованием ажурной ткани в качестве трафарета.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '0,91 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14901287518174674712'),
(1271, '310777259', 'G3SG1 | Смешанный камуфляж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3ZzxQ5d-3mY-0mvLwOq7c2GgAvsBw07-TpY2s0ADnrhdrZTzyIIeQegBtMFjS8wW5xrju0ZG76pzXiSw0x5uRifY', 'Снайперская винтовка', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогая снайперская винтовка G3SG1 значительно замедляет движение, что, однако, компенсируется более высокой скорострельностью, чем у других снайперских винтовок. Узор в виде смешанного камуфляжа нанесен с помощью аквапечати.\n\n<i>Заново строят только после разрухи</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '2,06 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11560217307213756093'),
(1272, '310777288', 'Dual Berettas | Патина', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpos7asPwJf0uL3dzJQ79myq42Ok_7hPvWEkjkFsMck3OrDpdql3Fbl_hJuam7yLdfBJgc3ZwzS-we9k7jo1MPpot2XniJLv09Z', 'Пистолет', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Одновременная стрельба из двух пистолетов Beretta с большим магазином уменьшает точность и увеличивает время перезарядки. С другой стороны, вы можете стрелять сразу двумя Beretta. Поверхность покрыта патиной цветов горчицы и лимона.<i>\n\nЕсли вы думаете, что здесь грязновато, попробуйте посмотреть в ультрафиолетовом спектре</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '2,10 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16631483636652335742'),
(1273, '310777325', 'XM1014 | Голубая хвоя', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgporrf0e1Y07ODHTjBN_8-JmYWPnuL5feuJwjlVscQhj7rH9tzw2wXmqkNlYG-hJNWSegc9Zl-E_QK9xbjr08Si_MOejgzGL-s', 'Дробовик', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>XM1014 — это мощный, полностью автоматический дробовик, который оправдывает свой здоровенный размер возможностью быстро нашпиговать комнату свинцом. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета мха.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D12423964762059165869'),
(1274, '310777325', 'XM1014 | Голубая хвоя', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgporrf0e1Y07ODHTjBN_8-JmYWPnuL5feuJwjlVscQhj7rH9tzw2wXmqkNlYG-hJNWSegc9Zl-E_QK9xbjr08Si_MOejgzGL-s', 'Дробовик', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>XM1014 — это мощный, полностью автоматический дробовик, который оправдывает свой здоровенный размер возможностью быстро нашпиговать комнату свинцом. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета мха.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D12423964762059165869'),
(1275, '310777519', 'SG 553 | Перфорированные волны', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopb3wflFfwOP3ZTxS6eOym5SYqOD1Jb7CqWdY781lxL-Tp9n331Wx-0NvMDylddfHdVJrMgnXrwC7wOnqgpC1tZzJzHcx6HQ8pSGKCgprHXY', 'Винтовка', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Эксклюзивный для террористов SG553 — хорошая альтернатива АК-47 с прицелом, помогающим в стрельбе на дальних дистанциях. Баллончиком был нанесен рисунок с использованием трафарета из кусочков клейкой ленты и перфорированного металла.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11819946124529790905'),
(1276, '310777986', 'ПП-19 Бизон | Ночные операции', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpotLO_JAlf2-r3ZzxQ5d-3mY-0mf7zO6_ummJW4NE_jLmUrN_22gCw-kdvYGqmIo7GdVNsYQ3Z-1e9yevtgpbouZvIyyBnvD5iuyhUzb9WHg', 'Пистолет-пулемёт', 'Промышленное качество', 'Немного поношенное', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>У пистолета-пулемета «Бизон» низкий урон, который компенсируется уникальным вместительным шнековым магазином с быстрой перезарядкой. Узор в виде смешанного камуфляжа нанесен с помощью аквапечати.\n\n<i>Заново строят только после разрухи</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D2947747718128947770'),
(1277, '310778072', 'P90 | Ясень', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopuP1FBRw7OffeDpR09GzkImemrmmZb_QxjMCuJB12ryRo472jQK1_RFrYmz0INecIwQ9N1vS_lHoyLy8m9bi63om8WID', 'Пистолет-пулемёт', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>P90 легко узнать по уникальному дизайну под названием «булл-пап». Это оружие великолепно подходит для стрельбы на ходу благодаря высокой емкости магазина и низкой отдаче. Рисунок нанесен баллончиком вручную с использованием веточек в качестве трафаретов.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3318243228987640019'),
(1278, '310778538', 'M249 | Крокодиловая сетка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-jxcjhzw8zFdC5K08yvgIiEmcj5Nr_Yg2Yf65Bz2-iTptvx31Xm-EE_ZWD7ctSce1Q_aA7X-1XrkOrqhMC76Jybz2wj5HdW93qG4g', 'Пулемёт', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Пулемет M249 хорош на открытых пространствах и идеально подходит игрокам, готовым мириться с медленным темпом стрельбы ради вместительного магазина и повышенной точности. Рисунок нанесен баллончиком вручную, с использованием ажурной ткани в качестве трафарета.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7088747350929707446'),
(1279, '384801319', 'Оружейный кейс операции «Феникс»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', 'Контейнер', 'базового класса', '', 'Коллекция «Феникс»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #11</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">UMP-45 | Капрал</p><br><p style="color: #4b69ff;">Negev | Почва</p><br><p style="color: #4b69ff;">Tec-9 | Песчаная буря</p><br><p style="color: #4b69ff;">MAG-7 | Райский страж</p><br><p style="color: #8847ff;">MAC-10 | Жар</p><br><p style="color: #8847ff;">SG 553 | Пульс</p><br><p style="color: #8847ff;">FAMAS | Сержант</p><br><p style="color: #8847ff;">USP-S | Страж</p><br><p style="color: #d32ce6;">AK-47 | Красная линия</p><br><p style="color: #d32ce6;">P90 | Треугольник</p><br><p style="color: #d32ce6;">Nova | Антиквариат</p><br><p style="color: #eb4b4b;">AWP | Азимов</p><br><p style="color: #eb4b4b;">AUG | Хамелеон</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1280, '384801319', 'Оружейный кейс операции «Феникс»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', 'Контейнер', 'базового класса', '', 'Коллекция «Феникс»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #11</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">UMP-45 | Капрал</p><br><p style="color: #4b69ff;">Negev | Почва</p><br><p style="color: #4b69ff;">Tec-9 | Песчаная буря</p><br><p style="color: #4b69ff;">MAG-7 | Райский страж</p><br><p style="color: #8847ff;">MAC-10 | Жар</p><br><p style="color: #8847ff;">SG 553 | Пульс</p><br><p style="color: #8847ff;">FAMAS | Сержант</p><br><p style="color: #8847ff;">USP-S | Страж</p><br><p style="color: #d32ce6;">AK-47 | Красная линия</p><br><p style="color: #d32ce6;">P90 | Треугольник</p><br><p style="color: #d32ce6;">Nova | Антиквариат</p><br><p style="color: #eb4b4b;">AWP | Азимов</p><br><p style="color: #eb4b4b;">AUG | Хамелеон</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1281, '384801319', 'Оружейный кейс операции «Феникс»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', 'Контейнер', 'базового класса', '', 'Коллекция «Феникс»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #11</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">UMP-45 | Капрал</p><br><p style="color: #4b69ff;">Negev | Почва</p><br><p style="color: #4b69ff;">Tec-9 | Песчаная буря</p><br><p style="color: #4b69ff;">MAG-7 | Райский страж</p><br><p style="color: #8847ff;">MAC-10 | Жар</p><br><p style="color: #8847ff;">SG 553 | Пульс</p><br><p style="color: #8847ff;">FAMAS | Сержант</p><br><p style="color: #8847ff;">USP-S | Страж</p><br><p style="color: #d32ce6;">AK-47 | Красная линия</p><br><p style="color: #d32ce6;">P90 | Треугольник</p><br><p style="color: #d32ce6;">Nova | Антиквариат</p><br><p style="color: #eb4b4b;">AWP | Азимов</p><br><p style="color: #eb4b4b;">AUG | Хамелеон</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1282, '469446195', 'Sawed-Off | Пиксельный камуфляж «Лес»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbuyLgNv1fX3eSR96NimlZS0m_7zO6-fkzhXvJIniL6Xrdqs21Xk_0Vlam2iLYbAcFdtMFjU_wW9w-e6g5-5u4OJlyXfj1l0Bw', 'Дробовик', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Классический обрез наносит большой урон на ближних дистанциях, но имеет невысокую точность, высокий разброс и медленную скорость стрельбы, поэтому вам лучше бы поскорее убивать то, во что вы попали. Текстура пиксельного камуфляжа была нанесена водостойкой краской.<i>\n\nКогда ты сможешь различить камуфляж, будет уже слишком поздно</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7118012607296773999'),
(1283, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1284, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1285, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1286, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1287, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1288, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', '');
INSERT INTO `items` (`id`, `classid`, `name`, `icon_url`, `type`, `redkost`, `oformlenie`, `kollektion`, `kategory`, `opisanie`, `r_price`, `viewgame`) VALUES
(1289, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1290, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1291, '520025252', 'Оружейный кейс операции «Прорыв»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', 'Контейнер', 'базового класса', '', 'Коллекция «Прорыв»', 'Обыч.', '<p> </p><br><p style="color: #99ccff;">Контейнер тиража #18</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">MP7 | Городская опасность</p><br><p style="color: #4b69ff;">Negev | Пустынная атака</p><br><p style="color: #4b69ff;">P2000 | Слоновая кость</p><br><p style="color: #4b69ff;">SSG 08 | Пучина</p><br><p style="color: #4b69ff;">UMP-45 | Лабиринт</p><br><p style="color: #8847ff;">ПП-19 Бизон | Осирис</p><br><p style="color: #8847ff;">CZ75-Auto | Тигр</p><br><p style="color: #8847ff;">Nova | Карп кои</p><br><p style="color: #8847ff;">P250 | Сверхновая</p><br><p style="color: #d32ce6;">Desert Eagle | Заговор</p><br><p style="color: #d32ce6;">Five-SeveN | Птичьи игры</p><br><p style="color: #d32ce6;">Glock-18 | Дух воды</p><br><p style="color: #eb4b4b;">P90 | Азимов</p><br><p style="color: #eb4b4b;">M4A1-S | Сайрекс</p><br><p style="color: #ffd700;">или чрезвычайно редкий нож-бабочка!</p><br><p> </p><br>', '', ''),
(1292, '720268538', 'Хромированный оружейный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #38</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Glock-18 | Захоронение</p><br><p style="color: #4b69ff;">M249 | Блокировка</p><br><p style="color: #4b69ff;">MP9 | Смертельный яд</p><br><p style="color: #4b69ff;">SCAR-20 | Грот</p><br><p style="color: #4b69ff;">XM1014 | Ртуть</p><br><p style="color: #8847ff;">Dual Berettas | Городской шок</p><br><p style="color: #8847ff;">Desert Eagle | Нага</p><br><p style="color: #8847ff;">MAC-10 | Малахит</p><br><p style="color: #8847ff;">Sawed-Off | Безмятежность</p><br><p style="color: #d32ce6;">AK-47 | Картель</p><br><p style="color: #d32ce6;">M4A4 | 龍王 (Король драконов)</p><br><p style="color: #d32ce6;">P250 | Покойник</p><br><p style="color: #eb4b4b;">AWP | Боец</p><br><p style="color: #eb4b4b;">Galil AR | Щелкунчик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1293, '720268538', 'Хромированный оружейный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #38</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Glock-18 | Захоронение</p><br><p style="color: #4b69ff;">M249 | Блокировка</p><br><p style="color: #4b69ff;">MP9 | Смертельный яд</p><br><p style="color: #4b69ff;">SCAR-20 | Грот</p><br><p style="color: #4b69ff;">XM1014 | Ртуть</p><br><p style="color: #8847ff;">Dual Berettas | Городской шок</p><br><p style="color: #8847ff;">Desert Eagle | Нага</p><br><p style="color: #8847ff;">MAC-10 | Малахит</p><br><p style="color: #8847ff;">Sawed-Off | Безмятежность</p><br><p style="color: #d32ce6;">AK-47 | Картель</p><br><p style="color: #d32ce6;">M4A4 | 龍王 (Король драконов)</p><br><p style="color: #d32ce6;">P250 | Покойник</p><br><p style="color: #eb4b4b;">AWP | Боец</p><br><p style="color: #eb4b4b;">Galil AR | Щелкунчик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1294, '720268538', 'Хромированный оружейный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #38</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Glock-18 | Захоронение</p><br><p style="color: #4b69ff;">M249 | Блокировка</p><br><p style="color: #4b69ff;">MP9 | Смертельный яд</p><br><p style="color: #4b69ff;">SCAR-20 | Грот</p><br><p style="color: #4b69ff;">XM1014 | Ртуть</p><br><p style="color: #8847ff;">Dual Berettas | Городской шок</p><br><p style="color: #8847ff;">Desert Eagle | Нага</p><br><p style="color: #8847ff;">MAC-10 | Малахит</p><br><p style="color: #8847ff;">Sawed-Off | Безмятежность</p><br><p style="color: #d32ce6;">AK-47 | Картель</p><br><p style="color: #d32ce6;">M4A4 | 龍王 (Король драконов)</p><br><p style="color: #d32ce6;">P250 | Покойник</p><br><p style="color: #eb4b4b;">AWP | Боец</p><br><p style="color: #eb4b4b;">Galil AR | Щелкунчик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1295, '926978479', 'Хромированный кейс #2', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #48</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">AK-47 | Элитное снаряжение</p><br><p style="color: #4b69ff;">MP7 | Броня</p><br><p style="color: #4b69ff;">Desert Eagle | Бронзовая декорация</p><br><p style="color: #4b69ff;">P250 | Валентность</p><br><p style="color: #4b69ff;">Negev | Боец</p><br><p style="color: #4b69ff;">Sawed-Off | Оригами</p><br><p style="color: #8847ff;">AWP | Бог червей</p><br><p style="color: #8847ff;">MAG-7 | Жар</p><br><p style="color: #8847ff;">CZ75-Auto | Поул-позиция</p><br><p style="color: #8847ff;">UMP-45 | Гран-при</p><br><p style="color: #d32ce6;">Five-SeveN | Обезьянье дело</p><br><p style="color: #d32ce6;">Galil AR | Эко</p><br><p style="color: #d32ce6;">FAMAS | Джинн</p><br><p style="color: #eb4b4b;">M4A1-S | Скоростной зверь</p><br><p style="color: #eb4b4b;">MAC-10 | Неоновый гонщик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1296, '926978479', 'Хромированный кейс #2', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #48</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">AK-47 | Элитное снаряжение</p><br><p style="color: #4b69ff;">MP7 | Броня</p><br><p style="color: #4b69ff;">Desert Eagle | Бронзовая декорация</p><br><p style="color: #4b69ff;">P250 | Валентность</p><br><p style="color: #4b69ff;">Negev | Боец</p><br><p style="color: #4b69ff;">Sawed-Off | Оригами</p><br><p style="color: #8847ff;">AWP | Бог червей</p><br><p style="color: #8847ff;">MAG-7 | Жар</p><br><p style="color: #8847ff;">CZ75-Auto | Поул-позиция</p><br><p style="color: #8847ff;">UMP-45 | Гран-при</p><br><p style="color: #d32ce6;">Five-SeveN | Обезьянье дело</p><br><p style="color: #d32ce6;">Galil AR | Эко</p><br><p style="color: #d32ce6;">FAMAS | Джинн</p><br><p style="color: #eb4b4b;">M4A1-S | Скоростной зверь</p><br><p style="color: #eb4b4b;">MAC-10 | Неоновый гонщик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1297, '926978479', 'Хромированный кейс #2', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #48</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">AK-47 | Элитное снаряжение</p><br><p style="color: #4b69ff;">MP7 | Броня</p><br><p style="color: #4b69ff;">Desert Eagle | Бронзовая декорация</p><br><p style="color: #4b69ff;">P250 | Валентность</p><br><p style="color: #4b69ff;">Negev | Боец</p><br><p style="color: #4b69ff;">Sawed-Off | Оригами</p><br><p style="color: #8847ff;">AWP | Бог червей</p><br><p style="color: #8847ff;">MAG-7 | Жар</p><br><p style="color: #8847ff;">CZ75-Auto | Поул-позиция</p><br><p style="color: #8847ff;">UMP-45 | Гран-при</p><br><p style="color: #d32ce6;">Five-SeveN | Обезьянье дело</p><br><p style="color: #d32ce6;">Galil AR | Эко</p><br><p style="color: #d32ce6;">FAMAS | Джинн</p><br><p style="color: #eb4b4b;">M4A1-S | Скоростной зверь</p><br><p style="color: #eb4b4b;">MAC-10 | Неоновый гонщик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1298, '926978479', 'Хромированный кейс #2', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', 'Контейнер', 'базового класса', '', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #48</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">AK-47 | Элитное снаряжение</p><br><p style="color: #4b69ff;">MP7 | Броня</p><br><p style="color: #4b69ff;">Desert Eagle | Бронзовая декорация</p><br><p style="color: #4b69ff;">P250 | Валентность</p><br><p style="color: #4b69ff;">Negev | Боец</p><br><p style="color: #4b69ff;">Sawed-Off | Оригами</p><br><p style="color: #8847ff;">AWP | Бог червей</p><br><p style="color: #8847ff;">MAG-7 | Жар</p><br><p style="color: #8847ff;">CZ75-Auto | Поул-позиция</p><br><p style="color: #8847ff;">UMP-45 | Гран-при</p><br><p style="color: #d32ce6;">Five-SeveN | Обезьянье дело</p><br><p style="color: #d32ce6;">Galil AR | Эко</p><br><p style="color: #d32ce6;">FAMAS | Джинн</p><br><p style="color: #eb4b4b;">M4A1-S | Скоростной зверь</p><br><p style="color: #eb4b4b;">MAC-10 | Неоновый гонщик</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1299, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '', ''),
(1300, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '', ''),
(1301, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '', ''),
(1302, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '', ''),
(1303, '991959905', 'Кейс «Фальшион»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', 'Контейнер', 'базового класса', '', 'Коллекция «Фальшион»', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #50</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Galil AR | Леденец</p><br><p style="color: #4b69ff;">Glock-18 | Горелка Бунзена</p><br><p style="color: #4b69ff;">Nova | Лесничий</p><br><p style="color: #4b69ff;">P90 | Элитное снаряжение</p><br><p style="color: #4b69ff;">UMP-45 | Бунт</p><br><p style="color: #4b69ff;">USP-S | Закрученный</p><br><p style="color: #8847ff;">FAMAS | Нейронная сеть</p><br><p style="color: #8847ff;">M4A4 | Злобный дайме</p><br><p style="color: #8847ff;">MP9 | Рубиновый ядовитый дротик</p><br><p style="color: #8847ff;">Negev | Крикун</p><br><p style="color: #8847ff;">P2000 | Пистолет</p><br><p style="color: #d32ce6;">CZ75-Auto | Желтый жакет</p><br><p style="color: #d32ce6;">MP7 | Заклятый враг</p><br><p style="color: #d32ce6;">SG 553 | Сайрекс</p><br><p style="color: #eb4b4b;">AK-47 | Аквамариновая месть</p><br><p style="color: #eb4b4b;">AWP | Скоростной зверь</p><br><p style="color: #ffd700;">или крайне редкий клинок-фальшион!</p><br><p> </p><br>', '', ''),
(1304, '1011935184', 'Glock-18 | Горелка Бунзена', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposbaqKAxf0uL3djFN79fnzL-Nm_b5NqjulGdE7fp9g-7J4cKgjlGw-UA4ZjjwJoGccVU8ZFHR_gTrk-fm15K56pyYyyBj6XIrsXmOgVXp1s5QzU_K', 'Пистолет', 'Армейское качество', 'Прямо с завода', 'Коллекция «Фальшион»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Пистолет Glock 18 подходит для первого раунда. Он наиболее эффективен против противников без бронежилета и позволяет вести огонь сериями из трех выстрелов. Стертая синяя патина образовывает рисунок в виде языков пламени.\n\n<i>ТУК-ТУК</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Фальшион»</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9523053304317103076'),
(1305, '1293508920', 'Темный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF4u1qubIW4Su4mzxYHbzqGtZ-KGlz8EuJcg3rnE9NiijVe3_UY-Zzr2JJjVLFEEeiQRtg', 'Контейнер', 'базового класса', '', '', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #80</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Dual Berettas | Драконий дуэт</p><br><p style="color: #4b69ff;">FAMAS | Выживший</p><br><p style="color: #4b69ff;">Glock-18 | Призраки</p><br><p style="color: #4b69ff;">MAC-10 | Хроматика</p><br><p style="color: #4b69ff;">MAG-7 | Ядро кобальта</p><br><p style="color: #4b69ff;">SCAR-20 | Зеленый морпех</p><br><p style="color: #4b69ff;">XM1014 | Скумбрия</p><br><p style="color: #8847ff;">Galil AR | Невозмутимость</p><br><p style="color: #8847ff;">M249 | Космический воитель</p><br><p style="color: #8847ff;">MP7 | Особая доставка</p><br><p style="color: #8847ff;">P250 | Охотник</p><br><p style="color: #d32ce6;">AK-47 | Снежный вихрь</p><br><p style="color: #d32ce6;">G3SG1 | Поток</p><br><p style="color: #d32ce6;">SSG 08 | Большая пушка</p><br><p style="color: #eb4b4b;">M4A1-S | Золотая спираль</p><br><p style="color: #eb4b4b;">USP-S | Подтвержденное убийство</p><br><p style="color: #ffd700;">или крайне редкие тычковые ножи!</p><br><p> </p><br>', '', ''),
(1306, '1293508920', 'Темный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF4u1qubIW4Su4mzxYHbzqGtZ-KGlz8EuJcg3rnE9NiijVe3_UY-Zzr2JJjVLFEEeiQRtg', 'Контейнер', 'базового класса', '', '', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #80</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Dual Berettas | Драконий дуэт</p><br><p style="color: #4b69ff;">FAMAS | Выживший</p><br><p style="color: #4b69ff;">Glock-18 | Призраки</p><br><p style="color: #4b69ff;">MAC-10 | Хроматика</p><br><p style="color: #4b69ff;">MAG-7 | Ядро кобальта</p><br><p style="color: #4b69ff;">SCAR-20 | Зеленый морпех</p><br><p style="color: #4b69ff;">XM1014 | Скумбрия</p><br><p style="color: #8847ff;">Galil AR | Невозмутимость</p><br><p style="color: #8847ff;">M249 | Космический воитель</p><br><p style="color: #8847ff;">MP7 | Особая доставка</p><br><p style="color: #8847ff;">P250 | Охотник</p><br><p style="color: #d32ce6;">AK-47 | Снежный вихрь</p><br><p style="color: #d32ce6;">G3SG1 | Поток</p><br><p style="color: #d32ce6;">SSG 08 | Большая пушка</p><br><p style="color: #eb4b4b;">M4A1-S | Золотая спираль</p><br><p style="color: #eb4b4b;">USP-S | Подтвержденное убийство</p><br><p style="color: #ffd700;">или крайне редкие тычковые ножи!</p><br><p> </p><br>', '', ''),
(1307, '1309990996', 'MAG-7 | Ядро кобальта', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou7uifDhjxszFcDoV09GvhoOOmfLLPr7Vn35cppF13r2W896t2VDl_URkZzjxLYPDe1I8ZV3X8lTvlenv0ZHuvJqdn3t9-n51V5d808k', 'Дробовик', 'Армейское качество', 'После полевых испытаний', 'Коллекция из темного кейса', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Эксклюзивный для спецназа Mag-7 наносит разрушительный ущерб на близком расстоянии. Быстрая перезарядка магазина делает его отличным тактическим выбором. Вручную нанесен футуристический узор.\n\n<i>«Береги его, Кармен», — Валькирия и Любовник, часть 1</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из темного кейса</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D17035650817625536181'),
(1308, '1432174707', 'Револьверный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFYwnfKfcG9HvN7iktaOkqD1auLTxD5SvZYgiLvFpo7xjVLh-kdrYWnzcoGLMlhpsyM-5vg', 'Контейнер', 'базового класса', '', 'Револьверная коллекция', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #111</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Револьвер R8 | Кровавая паутина</p><br><p style="color: #4b69ff;">AUG | Рикошет</p><br><p style="color: #4b69ff;">Desert Eagle | Послание коринфянам</p><br><p style="color: #4b69ff;">P2000 | Защитник империи</p><br><p style="color: #4b69ff;">Sawed-Off | Йорик</p><br><p style="color: #4b69ff;">SCAR-20 | Эпидемия</p><br><p style="color: #8847ff;">ПП-19 Бизон | Топливный стержень</p><br><p style="color: #8847ff;">Five-SeveN | Дань прошлому</p><br><p style="color: #8847ff;">Negev | Погрузчик</p><br><p style="color: #8847ff;">SG 553 | Дикая моль</p><br><p style="color: #8847ff;">Tec-9 | Лавина</p><br><p style="color: #8847ff;">XM1014 | Горелка Теклу</p><br><p style="color: #d32ce6;">AK-47 | Буйство красок</p><br><p style="color: #d32ce6;">G3SG1 | Палач</p><br><p style="color: #d32ce6;">P90 | Резной приклад</p><br><p style="color: #eb4b4b;">M4A4 | Преданный паладин</p><br><p style="color: #eb4b4b;">Револьвер R8 | Градиент</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1309, '1432174707', 'Револьверный кейс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFYwnfKfcG9HvN7iktaOkqD1auLTxD5SvZYgiLvFpo7xjVLh-kdrYWnzcoGLMlhpsyM-5vg', 'Контейнер', 'базового класса', '', 'Револьверная коллекция', 'Обыч.', '<p>\r\n</p><br><p> </p><br><p style="color: #99ccff;">Контейнер тиража #111</p><br><p> </p><br><p>Внутри находится один из следующих предметов:</p><br><p style="color: #4b69ff;">Револьвер R8 | Кровавая паутина</p><br><p style="color: #4b69ff;">AUG | Рикошет</p><br><p style="color: #4b69ff;">Desert Eagle | Послание коринфянам</p><br><p style="color: #4b69ff;">P2000 | Защитник империи</p><br><p style="color: #4b69ff;">Sawed-Off | Йорик</p><br><p style="color: #4b69ff;">SCAR-20 | Эпидемия</p><br><p style="color: #8847ff;">ПП-19 Бизон | Топливный стержень</p><br><p style="color: #8847ff;">Five-SeveN | Дань прошлому</p><br><p style="color: #8847ff;">Negev | Погрузчик</p><br><p style="color: #8847ff;">SG 553 | Дикая моль</p><br><p style="color: #8847ff;">Tec-9 | Лавина</p><br><p style="color: #8847ff;">XM1014 | Горелка Теклу</p><br><p style="color: #d32ce6;">AK-47 | Буйство красок</p><br><p style="color: #d32ce6;">G3SG1 | Палач</p><br><p style="color: #d32ce6;">P90 | Резной приклад</p><br><p style="color: #eb4b4b;">M4A4 | Преданный паладин</p><br><p style="color: #eb4b4b;">Револьвер R8 | Градиент</p><br><p style="color: #ffd700;">или необычайно редкий, особый предмет!</p><br><p> </p><br>', '', ''),
(1310, '1432175407', 'Револьвер R8 | Костяная маска', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopL-zJAt21uH3Yi19-N2mkb-HnvD8J_XSzm0IuZcljO-WpY_02lXirktkZW76JobGJgU3NFyGqFa9wea-1p67ot2Xnn1HMgmw', 'Пистолет', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Револьвер R8 стреляет крайне точно и мощно, но его спусковой крючок печально известен своей тугостью. Если противник уже близко, не стесняйтесь бить по курку. Рисунок нанесен баллончиком с использованием трафарета из спутанной клейкой ленты.\n\n<i>Настоящая мощь — в искусной аппликации</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9514497153411458080'),
(1311, '1465854320', 'Медаль за службу в 2016', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXQ9Q1LO5kNoBhSQl-fVOG_wcbQVmJ5IABWuoX3e1Y27P_efWwM74rhl4HblKX2MLqClz1XuZwijLCVpd6t3FW3-RFkNTz1LYGccQc_MkaQpAaz3mGjMg', 'Коллекционный', 'экстраординарного типа', '', '', 'Обыч.', '<p>Награда за выдающиеся службу и достижения в 2016 году.</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4801471685487710779'),
(1312, '310778674', 'AUG | Гроза', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot6-iFBRv7ODcfi9P6s65mpS0n_L1JaKfzm8H68Rz2rDDp93w0QawrkRkYm2gIoeWdwM8Y16B_FLvl-zthcO9u4OJlyU1Qjv3jQ', 'Винтовка', 'Ширпотреб', 'Закаленное в боях', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p>Мощная и точная винтовка с оптическим прицелом AUG компенсирует свою долгую перезарядку низким разбросом пуль и высокой скорострельностью. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета грозы.\n\n<i>Гроза террористов</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '0,94 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D301284776781042862'),
(1313, '469443670', 'MAC-10 | Серебро', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou7umeldf0v33YjRO-tmkq4yCkP_gfbqEkmpQvpYg2u2Ro9yl3gS1_xE_ZmqnJteTdgc7YgmEq1m7lLq61pWi_MOeTf6eBqg', 'Пистолет-пулемёт', 'Промышленное качество', 'Прямо с завода', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Пистолет-пулемёт MAC-10 похож на коробку, из которой летят пули. Он может похвастаться высокой скорострельностью, но расплатиться за это придется низкой точностью и сильной отдачей. Основу сначала окрасили в хромовый оттенок, а потом нанесли на нее тонкий слой серебра, чтобы создать эффект анодированного покрытия.\n\n<i>«Красота в простоте», — Франц Кригельд, тактик подразделения «Феникс»</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '3,53 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9827670509138166285'),
(1314, '310776726', 'M4A1-S | Северный лес', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhz2v_Nfz5H_uO-jb-NmOXxIK_ulGRD7cR9teTE8YXghRrhrRBrMWD7coCQegU6aQyE_gC6xOi6gJC5tJTMn3BqvyNztH_VnRS-n1gSOeVXeHpm', 'Винтовка', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Бесшумный карабин M4A1 оснащен менее вместительным магазином, чем его аналог без глушителя, зато он обеспечивает более тихую стрельбу с меньшей отдачей и повышенной точностью. Текстура лесного камуфляжа была нанесена водостойкой краской.<i>\n\nЛес может быть очень опасен для одинокого путешественника…</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '9,41 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16169062357847096684'),
(1315, '310779124', 'Tec-9 | Грунтовая вода', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhz3MzHfTRU6eO-kYGdjrmjau-EzzkGvcEnibjDotqiilKyrUY-MGDwJYOVIwNoYg7V-le8yLztm9bi63kWu9PZ', 'Пистолет', 'Ширпотреб', 'Закаленное в боях', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p>Tec-9 обладает вместительным магазином и идеально подходит для террориста, предпочитающего бой на небольших расстояниях. Отдельные части оружия покрашены аэрозольной краской в сплошной оливковый цвет.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D162699583716554546'),
(1316, '310779265', 'FAMAS | Демонтаж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLuoKhRfwOP3fDhR5OO-m5S0lvnwDLjemm9u5cB1g_zMu9vzjQfjrRBkYjjxIoPAJw5tM1jR-VO7yOa71pG57c7OyXFruiEn4H_D30vgeOh9iuQ', 'Винтовка', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дешевое решение для не очень богатых игроков, FAMAS отлично заполняет нишу между более дорогими автоматами и менее эффективными пистолетами-пулеметами. Рисунок нанесен баллончиком вручную, с использованием ажурной ткани в качестве трафарета.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '10,01 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4766570281383394876'),
(1317, '469444882', 'Tec-9 | Пиксельный камуфляж «Город»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhoyszMdS1D-OOjhoK0mvLwOq7c2D4B6pwijLiXpt6s3lDkrkJvZG-hLI7Ee1M7YVmC8gO-kunrjZK1tJXXiSw0uDynv1g', 'Пистолет', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Tec-9 обладает вместительным магазином и идеально подходит для террориста, предпочитающего бой на небольших расстояниях. Текстура пиксельного камуфляжа была нанесена водостойкой краской.<i>\n\nКогда ты сможешь различить камуфляж, будет уже слишком поздно</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D10089404735961520052'),
(1318, '720281711', 'Glock-18 | Захоронение', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposbaqKAxf0Ob3djFN79eJkIWKg__gPLfdqWZU7Mxkh6eToY2l3wy2rkFkNmj0JYaTcQY8YV-BqATrweu615-4u5zLnHVl6CJz-z-DyCIevZ0V', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Пистолет Glock 18 подходит для первого раунда. Он наиболее эффективен против противников без бронежилета и позволяет вести огонь сериями из трех выстрелов. Узор в форме черепов выполнен с помощью аквапечати поверх базового слоя, нанесенного серебряным металликом.\n\n<i>Если вас пытаются запугать — значит, вас уважают</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса</p><br><p>\r\n</p><br><p> </p><br>', '6,01 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7416409101716719492'),
(1319, '937243362', 'Desert Eagle | Бронзовая декорация', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposr-kLAtl7PLFTj9Q49Kskb-Yh_bmOLfUqWZU7Mxkh6eTotul3Afj-0JkNzqlJo7GdwU9aFHTqQK8xuju0Zbu753IyHZhs3Mm-z-DyHrOtOLR', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогой и крайне мощный Desert Eagle — знаковый пистолет, который непросто освоить, хоть он и удивительно точен на дальних дистанциях. Окрашено декоративными мотивами с помощью автомобильной краски металлик.\n\n<i>Все хотят себе серебра и золота</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '5,49 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9712223762990137933'),
(1320, '937243362', 'Desert Eagle | Бронзовая декорация', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposr-kLAtl7PLFTj9Q49Kskb-Yh_bmOLfUqWZU7Mxkh6eTotul3Afj-0JkNzqlJo7GdwU9aFHTqQK8xuju0Zbu753IyHZhs3Mm-z-DyHrOtOLR', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Дорогой и крайне мощный Desert Eagle — знаковый пистолет, который непросто освоить, хоть он и удивительно точен на дальних дистанциях. Окрашено декоративными мотивами с помощью автомобильной краски металлик.\n\n<i>Все хотят себе серебра и золота</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '5,49 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9712223762990137933'),
(1321, '937246119', 'P250 | Валентность', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhhwszYI2gS09-5mpSEguXLPr7Vn35cpp10j-uZrYqj3QLg-EE_YDr6JY7BcFA5YVyDq1LqwebthsC8uZybznp9-n51WXfLk64', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Пистолет P250 — огнестрельное оружие с высоким темпом стрельбы и низкой отдачей, представляющее собой относительно недорогой выбор против бронированных противников. Вручную окрашено синими и серыми красками, подчеркивающими форму оружия.\n\n<i>«Меня волнуют не твои навыки, а твое отношение к делу», — Учитель и бунтарь, часть 1</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '5,26 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D12154767516763089218');
INSERT INTO `items` (`id`, `classid`, `name`, `icon_url`, `type`, `redkost`, `oformlenie`, `kollektion`, `kategory`, `opisanie`, `r_price`, `viewgame`) VALUES
(1322, '992119730', 'P250 | Кимоно цвета мяты', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhzw8zDeDBN4tOJkImKmvj6N6jummJW4NE_jLHDp4ij3lewqEVoNmH7IobHcQBvMlqE-lm-x-67hZLpuciazyM2vj5iuygdh8Yqeg', 'Пистолет', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Рассвет»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Пистолет P250 — огнестрельное оружие с высоким темпом стрельбы и низкой отдачей, представляющее собой относительно недорогой выбор против бронированных противников. Аквапечатью нанесен узор из геометрических фигур.\n\n<i>«Подойди-ка, Бут, я покажу тебе, над чем работаю», — Юкако, оружейница</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Рассвет»</p><br><p>\r\n</p><br><p> </p><br>', '14,40 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11983105464043357992'),
(1323, '310778328', 'Tec-9 | Красный кварц', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhh3szLYyRR-N26mImRkvPLP7LWnn8fv50miL7A8N6s0Vfn-BJsY2r2JYOQcQFqZFvT_wO9ybrqjZ_pvsjAn2wj5Hc2tBLiaQ', 'Пистолет', 'Запрещенное', 'Прямо с завода', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Tec-9 обладает вместительным магазином и идеально подходит для террориста, предпочитающего бой на небольших расстояниях. Раскрашено с помощью металлизированной краски с использованием трафарета в виде кристаллов.\n\n<i>Каждый хочет внести свой вклад</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '31,94 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16892131555051568120'),
(1324, '310780494', 'Nova | Карамельное яблоко', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhz3MzadDl94NWxnJTFkaata-OHkjtVuJR03bqR84-kjQTh-0dtZTj1IoKXdg42ZFrWq1i6kvCv28GQlu_wcQ', 'Дробовик', 'Промышленное качество', 'Немного поношенное', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Дробовик Nova из-за низкой цены идеально подходит для небогатых игроков, которые стремятся напасть на врага из засады. Отдельные части оружия покрашены аэрозольной краской в сплошные красный и черный цвета.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '3,39 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16863311181946949341'),
(1325, '310781309', 'StatTrak™ Galil AR | Песчаная буря', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposbupIgthwczLZAJR7dKyh5SEhfrLPr7Vn35cppMo0riY8N303gbg-hZsMDiiLNKQcwRvYQ3Q_wS9xbrt1sfvuM_Mm3B9-n51W76c_Fk', 'Винтовка', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Winter Offensive»', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Galil AR — относительно дешевая штурмовая винтовка у террористов, которая считается хорошим оружием на средних и дальних дистанциях. С помощью аквапечати нанесен рисунок в фиолетовых и бежевых тонах.\n\n<i>Одного брезента для защиты будет маловато</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Winter Offensive»</p><br><p> </p><br>', '20,47 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11997840150933151073'),
(1326, '310807370', 'FAMAS | Демонтаж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLuoKhRfwOP3fDhR5OO-m5S0lvnwDLjemm9u5cB1g_zMu9vzjQfjrRBkYjjxIoPAJw5tM1jR-VO7yOa71pG57c7OyXFruiEn4H_D30vgeOh9iuQ', 'Винтовка', 'Армейское качество', 'Поношенное', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: Поношенное</p><br><p> </p><br><p>Дешевое решение для не очень богатых игроков, FAMAS отлично заполняет нишу между более дорогими автоматами и менее эффективными пистолетами-пулеметами. Рисунок нанесен баллончиком вручную, с использованием ажурной ткани в качестве трафарета.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '24,57 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11703741275382774450'),
(1327, '360462747', 'StatTrak™ MAG-7 | Райский страж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou7uifDhjxszFcDoV09SzlZaOmcj5Nr_Yg2Yfv5Eh3bCUoYnwigblqEdrZzr2coaWegZtMFrYqQO8lL_pg5bpuJyYymwj5Hfq1YTLEA', 'Дробовик', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Феникс»', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Эксклюзивный для спецназа Mag-7 наносит разрушительный ущерб на близком расстоянии. Быстрая перезарядка магазина делает его отличным тактическим выбором. Раскрашено комбинацией из едва различимого рисунка аквапечати и наклеек в виде крыльев.\n\n<i>Иногда ангел приходит не во спасение</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Феникс»</p><br><p>\r\n</p><br><p> </p><br>', '15,85 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7396862110936797429'),
(1328, '360463485', 'USP-S | Страж', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo6m1FBRp3_bGcjhQ09-jq5WYh8jxP77Wl2VF18l4jeHVu9Wh3gzlqRU6NmqhINXDelA9MliBr1O_kLjuh5Dt7sjLnyBlviJ0syvD30vgdbWoQSw', 'Пистолет', 'Запрещенное', 'Прямо с завода', 'Коллекция «Феникс»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Пистолет USP, любимец игроков в Counter-Strike: Source, имеет отсоединяемый глушитель, который позволяет наносить точные выстрелы, одновременно поглощая привлекающий излишнее внимание шум. Раскрашено в синий цвет кобальта. С логотипом спецназа на затворе.\n\n<i>«Буду действовать по правилам — освобожу семерых, буду действовать по разумению — вытащу всех десятерых… Выбор за вами», — Кармен Кочинеро, специалист по спасению заложников</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Феникс»</p><br><p>\r\n</p><br><p> </p><br>', '61,41 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D2314960864782947087'),
(1329, '360466705', 'StatTrak™ UMP-45 | Капрал', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo7e1f1Jf0Ob3ZDBS09-5hpCEhfb4DLbUkmJE5Ysn0-uSp9mg3FXgqUZuaz3zLYeWcQc3MF6F_QDtxL-60Je1v8-bySZmpGB8srqGkaWw', 'Пистолет-пулемёт', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Феникс»', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Пистолет-пулемет UMP45 часто не воспринимают всерьез, хотя небольшой магазин является его единственным недостатком. В остальном же это весьма универсальное оружие для ближнего боя. Раскрашено вручную на военный мотив.\n\n<i>Уважение можно только заслужить</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Феникс»</p><br><p>\r\n</p><br><p> </p><br>', '15,56 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D12133522315185067744'),
(1330, '469449975', 'SG 553 | Армейский блеск', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopb3wflFf0v73cC9P9eOlnImFksj4OrzZgiVQuJJw077FoIr3iQPnqhY5MD-gIdXGewU4ZQ3QrlW9lerojZ--v5rK1zI97cHouWKJ', 'Винтовка', 'Ширпотреб', 'Прямо с завода', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Эксклюзивный для террористов SG553 — хорошая альтернатива АК-47 с прицелом, помогающим в стрельбе на дальних дистанциях. Покрыто металлической фольгой с оттиском в виде камуфляжа.\n\n<i>Помни то, чему научился</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '1,39 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16288007647439121789'),
(1331, '469455734', 'MP7 | Пиксельный камуфляж «Лес»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6ryFA957PfMYTxW09GzkImemrmmYr2Ek20HuMFz37DHoo3x3AHm80BkYj31IoXGdQQ3MA7U_Vm_wezvm9bi644_iZ7M', 'Пистолет-пулемёт', 'Ширпотреб', 'Поношенное', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Поношенное</p><br><p> </p><br><p>Универсальный, но дорогой пистолет-пулемет немецкого производства MP7 SMG — идеальный выбор для перестрелки на ближних дистанциях. Текстура пиксельного камуфляжа была нанесена водостойкой краской.<i>\n\nКогда ты сможешь различить камуфляж, будет уже слишком поздно</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7929925174645933573'),
(1332, '469455876', 'MAC-10 | Проклятие', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou7umeldf0Ob3fDxBvYyJkIWIlu7LP7LWnn8f6pUkj--S9NmijFflr0VuMjynIY_Aewc3Y1rY81C7x-q6hsW1v5rJnWwj5HfHPgv6NA', 'Пистолет-пулемёт', 'Запрещенное', 'Немного поношенное', 'Охотничья коллекция', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Пистолет-пулемёт MAC-10 похож на коробку, из которой летят пули. Он может похвастаться высокой скорострельностью, но расплатиться за это придется низкой точностью и сильной отдачей. Вручную нанесено изображение мумии.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '48,97 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14864834998473024073'),
(1333, '469466048', 'StatTrak™ Tec-9 | Айзек', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhjxszcdD4b092lnYmGmOHLO77QgHIfsMcni77FptuijVDj_0JuamqidYTHI1dvM1iFrATrxLvq1sK0tcmbwWwj5HdybmdUPw', 'Пистолет', 'Армейское качество', 'Закаленное в боях', 'Охотничья коллекция', 'StatTrak™', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Tec-9 обладает вместительным магазином и идеально подходит для террориста, предпочитающего бой на небольших расстояниях. Покрашено вручную на мотив научной фантастики.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '59,77 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4677065637909443928'),
(1334, '469487753', 'StatTrak™ SSG 08 | Когти', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19f0Ob3Yi5FvISJnY2GmOXgMrfunm5Q_tw_ib-ToN2k2ADnqEtuMmzwIdDAcwU7MFvXqQe-lOq-hMDvv53Ly3E3vD5iuyi8Y6nQqg', 'Снайперская винтовка', 'Армейское качество', 'Закаленное в боях', 'Охотничья коллекция', 'StatTrak™', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Снайперская винтовка SSG08 со скользящим затвором не наносит много повреждений, однако хорошее соотношение цены и качества делает ее отличным приобретением в первых раундах для перестрелок на дальних дистанциях. С помощью аквапечати нанесен рисунок в виде царапин от когтей.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '33,57 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7973285187210843840'),
(1335, '506853573', 'P90 | Модуль', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopuP1FAZu7OHHaDxO7tCzkYS0mvLwOq7c2DtQ7pJ00-rD8Inw3wLj_BY-Nm36JNTBcFc3YVyC8wO8xLjshpPtu8jXiSw05oJB430', 'Пистолет-пулемёт', 'Армейское качество', 'После полевых испытаний', 'Охотничья коллекция', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>P90 легко узнать по уникальному дизайну под названием «булл-пап». Это оружие великолепно подходит для стрельбы на ходу благодаря высокой емкости магазина и низкой отдаче. Окрашено металлической краской с наложенным шестигранным узором.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '23,75 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16755291541822482519'),
(1336, '506854152', 'StatTrak™ P2000 | Пульс', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpovrG1eVcwg8zLZAJSvozmxL-bgvvnNoTck29Y_cg_jrGYpd6l0VCx-UI6MG6mcoeUeg9rNFnTqFXoxem6jJe1tc_ByXdruT5iuyjC-m29Hw', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Охотничья коллекция', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Точный и податливый пистолет P2000, произведенный в Германии, — хорошее оружие для первого раунда, которое особенно эффективно против небронированных противников. Рисунок в виде крупных осколков цвета фуксии нанесен с помощью аквапечати.\n\n<i>Броские цвета для броского оружия</i></p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '25,39 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14168432225183262276'),
(1337, '520025777', 'Nova | Карп кои', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhjxszGfitD09e5nb-HnvD8J_WDzmgC7sAh2e-Wptr33AywrhZtYzzycY6dJwE5MAvQ-FC9w7q818e6ot2XnnuHYbTd', 'Дробовик', 'Запрещенное', 'Прямо с завода', 'Коллекция «Прорыв»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Дробовик Nova из-за низкой цены идеально подходит для небогатых игроков, которые стремятся напасть на врага из засады. Узор, напоминающий пестрого карпа кои, нанесен вручную.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Прорыв»</p><br><p> </p><br>', '32,75 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D9234891132903407673'),
(1338, '520026577', 'Glock-18 | Дух воды', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposbaqKAxf0Ob3djFN79f7mImagvLnML7fglRd4cJ5nqeQoN3w0QHgrhdoMjylJo7GIVU7ZAzQqQC6k-rs1JHotZvNzSRgvHFx-z-DyPzurK-U', 'Пистолет', 'Засекреченное', 'Прямо с завода', 'Коллекция «Прорыв»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Пистолет Glock 18 подходит для первого раунда. Он наиболее эффективен против противников без бронежилета и позволяет вести огонь сериями из трех выстрелов. Рисунок водяного в стиле графики нанесен вручную.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Прорыв»</p><br><p> </p><br>', '484,04 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7558815508756988234'),
(1339, '520026994', 'StatTrak™ MP7 | Городская опасность', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6ryFAR17P7YJnBB49G7lY6PkuXLPr7Vn35cppRz3r7EoI_x3wSw8kY-MT_wdYGRJAc9ZlrSq1W5xurmhpTpvMudy3J9-n512JcdpTs', 'Пистолет-пулемёт', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Прорыв»', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Универсальный, но дорогой пистолет-пулемет немецкого производства MP7 SMG — идеальный выбор для перестрелки на ближних дистанциях. Раскрашено вручную в городской камуфляж с оранжевыми вставками.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Прорыв»</p><br><p> </p><br>', '17,20 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3172794932296689903'),
(1340, '520027600', 'P250 | Сверхновая', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhjxszKeClW6c6lg4WOg8j4OrzZgiUJu8Z13rGYo9Tx3w3g-kE5YzqlJoSWcVQ2NFnY_FG8l7jtgp-87cnN1zI97REHXRpE', 'Пистолет', 'Запрещенное', 'Прямо с завода', 'Коллекция «Прорыв»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Пистолет P250 — огнестрельное оружие с высоким темпом стрельбы и низкой отдачей, представляющее собой относительно недорогой выбор против бронированных противников. С помощью аквапечати нанесен рисунок в виде космического узора с концентрическими кругами.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Прорыв»</p><br><p> </p><br>', '32,75 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D2370096563054372644'),
(1341, '575571627', 'SG 553 | Радиоактивные осадки', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopb3wflFfwOP3fyhJ6c-ihombksj5MqnemWVu-8Ik37r--InxgUG55RJpZj_xIoeXeg5tM1DR_AC_x7vm1Ja8tJ7NzHo3unJ37CzYzUC10BpSLrs4YpX9U5E', 'Винтовка', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Cache»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Эксклюзивный для террористов SG553 — хорошая альтернатива АК-47 с прицелом, помогающим в стрельбе на дальних дистанциях. Рисунок в виде знака радиологической опасности нанесен баллончиком.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Cache»</p><br><p>\r\n</p><br><p> </p><br>', '18,91 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7955160717107276563'),
(1342, '638241994', 'Five-SeveN | Городская опасность', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLOzLhRlxfbGTj5X09q_goWYkuHxPYTEhGlQ5vp5i_PA54jKhVGwogYxfT_6LIHGdQdoaQ7RrwPqyL250cW0vZnBwHc17yQq433Ulh2-iE5JbONxxavJvYhF7Qg', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Авангард»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Five-Seven стоит дорого и медленно перезаряжается, однако эти недостатки компенсируются высокой точностью, бронебойностью, щедрым магазином на 20 патронов и снисходительной отдачей. Раскрашено вручную в городской камуфляж с красными вставками.\n\n<i>Каждый год у Бута собираются известнейшие оружейники-художники, и они показывают ему свои лучшие работы</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Авангард»</p><br><p>\r\n</p><br><p> </p><br>', '31,94 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11740018417452068467'),
(1343, '720282200', 'StatTrak™ SCAR-20 | Грот', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbmkOVUw7PLZTi5B7c7kxL-Hkvb_DLbUkmJE5Yt13L6Rrd6s3wS28kI6YWmmJdeRcgBvZg3WqFK6xO_o0JHotM_BwSBipGB8slVYmB0Q', 'Снайперская винтовка', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>SCAR-20 — полуавтоматическая снайперская винтовка, которая предлагает высокую скорострельность и большой урон на расстоянии, в обмен на более медленную скорость передвижения и большую стоимость самого оружия. Окрашено синей металлической краской с помощью губки и кисти.\n\n<i>Основатель корпорации «Season» заказал это оружие именитому спецназовцу Котаро Ицаки в знак благодарности за спасение</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D5647523304387167098'),
(1344, '937243430', 'Sawed-Off | Оригами', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbuyLgNv1fX3cih9_92hkYSEkfHLPKnYkWpc4fp9g-7J4cKgjgW2-BA5NW-nIYedIVJvZ1GEqwDolbq7jMS-75_NySNhs3N05SyOgVXp1nH_rq73', 'Дробовик', 'Армейское качество', 'Прямо с завода', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Классический обрез наносит большой урон на ближних дистанциях, но имеет невысокую точность, высокий разброс и медленную скорость стрельбы, поэтому вам лучше бы поскорее убивать то, во что вы попали. Покрашено вручную в стиле оригами.\n\n<i>Нужно много времени, чтобы создать что-то прекрасное, но достаточно мгновения, чтобы это уничтожить</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D2765886148305706959'),
(1345, '937244168', 'AWP | Бог червей', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot621FAZx7PLfYQJW-9W4kb-HnvD8J_XXzzwH65EgiLHHrNutjAa28xdtYG7wINCUdlA4ZFDW81m8lebqjMC9ot2XnlThvpXE', 'Снайперская винтовка', 'Запрещенное', 'Немного поношенное', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Печально известная снайперская винтовка AWP — очень опасное и очень эффективное оружие, которое легко узнается по характерному звуку выстрела и жестокому правилу: «один выстрел, один труп». Рисунок черепа и корней, нанесенный стойкими эмалевыми красками.\n\n<i>Некоторых корней лучше не касаться</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3344642271618030723'),
(1346, '937251650', 'Desert Eagle | Бронзовая декорация', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposr-kLAtl7PLFTj9Q49Kskb-Yh_bmOLfUqWdY781lxL2T8Y-kjAa2qhZlNmz7ItCSd1I4ZVrVrFi6kO_mgJa9uJXAyHdguXI8pSGKoKTrgPA', 'Пистолет', 'Армейское качество', 'Немного поношенное', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Дорогой и крайне мощный Desert Eagle — знаковый пистолет, который непросто освоить, хоть он и удивительно точен на дальних дистанциях. Окрашено декоративными мотивами с помощью автомобильной краски металлик.\n\n<i>Все хотят себе серебра и золота</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7503676660034586735'),
(1347, '937362425', 'CZ75-Auto | Поул-позиция', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpotaDyfgZf0Ob3cicVueOmhoWInuT9PLXummJW4NE_i7nFpYn00VDt-RU6ajr2J4PGIFJvMFGD-lbvwL_mgMe5vZXImHph6D5iuyh7hT4MJQ', 'Пистолет', 'Запрещенное', 'Прямо с завода', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Будучи автоматическим вариантом CZ75, CZ75-Auto — идеальный вариант для тех, кто собирается использовать оружие павших противников. Но из-за небольшого запаса патронов при стрельбе вам придется быть куда аккуратнее. Окрашено на заказ красными и серыми гоночными мотивами.\n\n<i>«У нас только один шанс, так что давайте сделаем все правильно», — командир Феликс Райли</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7503741093093929277'),
(1348, '1325740017', 'M4A4 | Злобный дайме', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhjxszFJTwW09mgnYy0k_b9PqLeqWdY781lxOqTpdT3iQbh-RBsN2H6JITGI1c3ZluB_FK6kry51J-4uZjJwSNkuyY8pSGKLxf1Y6o', 'Винтовка', 'Запрещенное', 'Прямо с завода', 'Коллекция «Фальшион»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>M4A4 — более точный, но слабый аналог АК-47 — полностью автоматическая штурмовая винтовка, которая находится исключительно на вооружении у спецназа. Окрашено вручную красной и черной краской.\n\n<i>«Кармен. Я нашел его…» – Демон и Валькирия, часть 1</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Фальшион»</p><br><p>\r\n</p><br><p> </p><br><p><br><div id="sticker_info" name="sticker_info" title="Sticker Details" style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;"><center><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/sig_byali.a14616deba90a7e07b1d86a18576369c81a545a9.png"><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/sig_spiidi.4213d2400271c4f9fb8359ffa68a108673ed2e87.png"><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/sig_neo.4f2139b4d796c291229e9fc302ff2e569fe89ce3.png"><br>Sticker: byali | Кёльн 2015, Spiidi | Кёльн 2015, NEO | Кёльн 2015</center></div></p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7099408463561838246'),
(1349, '1484151955', 'M4A1-S | Василиск', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhz2v_Nfz5H_uO3hb-Gw_alIITTl3hY5MxigdbM8Ij8nVn6_kM_Nj3xJdCUIwc6NVjZqFO6kOa7gcPquZzNynI1uyIh7C2Mmhy1hAYMMLIoIt8K8w', 'Винтовка', 'Запрещенное', 'После полевых испытаний', 'Коллекция «Авангард»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Бесшумный карабин M4A1 оснащен менее вместительным магазином, чем его аналог без глушителя, зато он обеспечивает более тихую стрельбу с меньшей отдачей и повышенной точностью. На оружие нанесено изображение василиска.\n\n<i>Считается, что глазеть на других некрасиво, но на войне не место любезным</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Авангард»</p><br><p>\r\n</p><br><p> </p><br><p><br><div id="sticker_info" name="sticker_info" title="Sticker Details" style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;"><center><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/ninjasinpyjamas.688fe5ef66bbf1e61cbdfeff495666091f9b01ee.png"><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cluj2015/sig_snax.cd9d1fe5ac7cc6daa6e2da1f5a75dc1b143439aa.png"><br>Sticker: Ninjas in Pyjamas | Кёльн 2015, Snax | Клуж-Напока 2015</center></div></p><br>', '', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D5495667452649233674'),
(1350, '310777990', 'Five-SeveN | Апельсиновая корка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLOzLhRlxfbGTi5S08i3hIW0mOX1PbzUqWZU7Mxkh6eQp9zwjgbg-hY_ajj3ddCQdVRvYQ3Y-lHoxOy7gMK6tZudziYx7yF3-z-DyM_tqitn', 'Пистолет', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Dust 2»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Five-Seven стоит дорого и медленно перезаряжается, однако эти недостатки компенсируются высокой точностью, бронебойностью, щедрым магазином на 20 патронов и снисходительной отдачей. Рисунок нанесен баллончиком с использованием трафарета из спутанной клейкой ленты.\n\n<i>Настоящая мощь — в искусной аппликации</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Dust 2»</p><br><p>\r\n</p><br><p> </p><br>', '2,33 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4820681627306854513'),
(1351, '310844125', 'StatTrak™ ПП-19 Бизон | Синие полутона', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpotLO_JAlf0v73ZShQ_dO_h4W0n_b4Na_emG5u5cB1g_zMu9qj2VKx_hdqZ2yido-SdgU2NAzV8lC5xri615C-uJjIynI1uiErsy7D30vgQzIGBN0', 'Пистолет-пулемёт', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Winter Offensive»', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>У пистолета-пулемета «Бизон» низкий урон, который компенсируется уникальным вместительным шнековым магазином с быстрой перезарядкой. Окрашен с помощью гидрографики в крупные полутоновые узоры поверх базового слоя бирюзового металлика.\n\n<i>«Феликс, мы оба знаем, что Валерия вот-вот начнет войну. Вопрос лишь в том, готов ли ты», — Бут, торговец оружием</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Winter Offensive»</p><br><p> </p><br>', '25,39 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D742674942124356754'),
(1352, '469450632', 'Sawed-Off | Пиксельный камуфляж «Лес»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbuyLgNv1fX3eSR96NimlZS0n_L1JaKfwDsEup1w3OvC94_30APjr0RvYm72ctCdcFM2ZVzX_VC9wry7h5K47YOJlyXup7p9eQ', 'Дробовик', 'Ширпотреб', 'Закаленное в боях', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p>Классический обрез наносит большой урон на ближних дистанциях, но имеет невысокую точность, высокий разброс и медленную скорость стрельбы, поэтому вам лучше бы поскорее убивать то, во что вы попали. Текстура пиксельного камуфляжа была нанесена водостойкой краской.<i>\n\nКогда ты сможешь различить камуфляж, будет уже слишком поздно</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '0,93 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D85917170234209'),
(1353, '469472428', 'StatTrak™ AUG | Закрученный', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot6-iFAR17PLddgJS_tOxhoWYhP7iDLbUkmJE5Ysl2bCXponz0FDi80BqZmulJdWWewU7YFmGq1Pvx-m60JG1tZSdzXI2pGB8sjcMbeal', 'Винтовка', 'Запрещенное', 'После полевых испытаний', 'Охотничья коллекция', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Мощная и точная винтовка с оптическим прицелом AUG компенсирует свою долгую перезарядку низким разбросом пуль и высокой скорострельностью. Покрашено вручную на мотив роботов.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '140,30 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D5224259605398222950'),
(1354, '1011934629', 'UMP-45 | Бунт', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo7e1f1Jf0Ob3ZDBSuImJgZCZmPbmDLbUkmJE5Ysl3e-S9NXw2Azm-EtraziidtDEcAI-Nw7Rq1PrwLzuhZC76Z3LnHJhpGB8st2okrca', 'Пистолет-пулемёт', 'Армейское качество', 'После полевых испытаний', 'Коллекция «Фальшион»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Пистолет-пулемет UMP45 часто не воспринимают всерьез, хотя небольшой магазин является его единственным недостатком. В остальном же это весьма универсальное оружие для ближнего боя. Окрашено с использованием аквапечати и наклеек.\n\n<i>«Раз ты хотел, чтобы действовали аккуратнее, надо было попросить об этом…», – Хавьер Алвисо, боевик подразделения «Феникс»</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Фальшион»</p><br><p>\r\n</p><br><p> </p><br>', '5,16 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D5082957233685083368'),
(1355, '1222064246', 'AK-47 | Элитное снаряжение', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot7HxfDhjxszJemkV09G3h5SOhe7LPr7Vn35cpsEl0-2Xrdii3APt-RI4ZG71IdOXelJoZVDX_li7kOu-1MW6uZ_JyHV9-n51hRUaMfs', 'Винтовка', 'Армейское качество', 'После полевых испытаний', 'Коллекция из хромированного кейса 2', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Мощная и надежная штурмовая винтовка АК-47 — одна из самых известных в мире. Наиболее смертельна стрельба короткими и точными очередями. Окрашено вручную с использованием аквапечати, трафаретных изображений и термонаклеек.\n\n<i>«Ступай осторожней, Наоми… люди твоей профессии обычно не живут долго», — Щит и Змей, часть 2</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция из хромированного кейса 2</p><br><p>\r\n</p><br><p> </p><br><p><br><div id="sticker_info" name="sticker_info" title="Sticker Details" style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;"><center><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/sig_flamie.70d25b2c38db9f55253ada075f7209ee6d191e2f.png"><br>Sticker: flamie | Кёльн 2015</center></div></p><br>', '19,65 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D7954496863911988117');
INSERT INTO `items` (`id`, `classid`, `name`, `icon_url`, `type`, `redkost`, `oformlenie`, `kollektion`, `kategory`, `opisanie`, `r_price`, `viewgame`) VALUES
(1356, '1343868704', 'M4A1-S | Атомный сплав', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhz2v_Nfz5H_uO3mb-Gw_alfqjul2dd59xOhfvA-4vwt1mxrxopPnfxIoPAcgQ6NQqGq1O6kO_vjZa46JWdwHAw6XNwsSvVmxzh0B4abLFnm7XAHsAw1GuT', 'Винтовка', 'Засекреченное', 'Поношенное', 'Охотничья коллекция', 'Обыч.', '<p>Внешний вид: Поношенное</p><br><p> </p><br><p>Бесшумный карабин M4A1 оснащен менее вместительным магазином, чем его аналог без глушителя, зато он обеспечивает более тихую стрельбу с меньшей отдачей и повышенной точностью. Анодирован в черный и оранжевый цвета.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br><p><br><div id="sticker_info" name="sticker_info" title="Sticker Details" style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;"><center><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/eslkatowice2015/fnatic.933f108d8414959c6ccb902fdad3330ca8eb8310.png"><img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/eslkatowice2015/titan.fe5f4085cd69484463b529908b351ec066c01e5f.png"><br>Sticker: Fnatic | ESL One Katowice 2015, Titan | ESL One Katowice 2015</center></div></p><br>', '223,52 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D4786942050192413028'),
(1357, '1432174790', 'Револьвер R8 | Костяная маска', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopL-zJAt21uH3Yi19-N2mkb-GkvP9JrafwmlS7JQnj-jEp96k2gPk_Ec5Z2ilJ9DAdgc7MwvS8lS6wejsg8K0vIOJlyVNyxsIvg', 'Пистолет', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Револьвер R8 стреляет крайне точно и мощно, но его спусковой крючок печально известен своей тугостью. Если противник уже близко, не стесняйтесь бить по курку. Рисунок нанесен баллончиком с использованием трафарета из спутанной клейкой ленты.\n\n<i>Настоящая мощь — в искусной аппликации</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D478160599552802986'),
(1358, '310776586', 'XM1014 | Вороненая сталь', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgporrf0e1Y07PLZTj9O-dmyq42Ok_7hPvWFxz0J68B1i7iXrN6sjgHh8xVtZW37I4eVcgVvY13Z_gS6l-i908fpot2XnpIhBtwd', 'Дробовик', 'Промышленное качество', 'После полевых испытаний', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>XM1014 — это мощный, полностью автоматический дробовик, который оправдывает свой здоровенный размер возможностью быстро нашпиговать комнату свинцом. Раскрашен под холодный оттенок голубого цвета.\n\n<i>«Если сравнивать ножи с вином, то этот можно считать самым изысканным», — Бут, торговец оружием</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '2,31 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D12307286847142615757'),
(1359, '310776711', 'MAG-7 | Пиксельный камуфляж «Металлический»', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou7uifDhh3szdYz9D4uO6nYeDg7mgariClDMFusQh2LiTo9nw0FCw_UU6Y2ymdtOXclBtZl6B_AXolby-m9bi6yrTVV9L', 'Дробовик', 'Промышленное качество', 'Прямо с завода', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: Прямо с завода</p><br><p> </p><br><p>Эксклюзивный для спецназа Mag-7 наносит разрушительный ущерб на близком расстоянии. Быстрая перезарядка магазина делает его отличным тактическим выбором. На металлическую основу с помощью аквапечати нанесли пиксельный камуфляж.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '3,64 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11971281041618573947'),
(1360, '310778362', 'Dual Berettas | Патина', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpos7asPwJf0uL3dzJQ79myq42Ok_7hPvWEkjkFsMck3OrDpdql3Fbl_hJuam7yLdfBJgc3ZwzS-we9k7jo1MPpot2XniJLv09Z', 'Пистолет', 'Промышленное качество', 'Поношенное', 'Коллекция «Italy»', 'Обыч.', '<p>Внешний вид: Поношенное</p><br><p> </p><br><p>Одновременная стрельба из двух пистолетов Beretta с большим магазином уменьшает точность и увеличивает время перезарядки. С другой стороны, вы можете стрелять сразу двумя Beretta. Поверхность покрыта патиной цветов горчицы и лимона.<i>\n\nЕсли вы думаете, что здесь грязновато, попробуйте посмотреть в ультрафиолетовом спектре</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Italy»</p><br><p>\r\n</p><br><p> </p><br>', '2,39 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D721702426254247002'),
(1361, '310778439', 'XM1014 | Голубая хвоя', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgporrf0e1Y07ODHTjBN_8-JmImMn-O6ZuiBzjwIvsNw3OzHp4nxiVXg_hJqMG-mI4XGdw86ZFqGqVO4xOnnhIj84sodiQTp-w', 'Дробовик', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Lake»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>XM1014 — это мощный, полностью автоматический дробовик, который оправдывает свой здоровенный размер возможностью быстро нашпиговать комнату свинцом. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета мха.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Lake»</p><br><p>\r\n</p><br><p> </p><br>', '1,05 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D11837964812705673327'),
(1362, '310778497', 'P90 | Песчаное напыление', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopuP1FBRw7ODYYzxb08-3moS0n_L1JaKfxToF6pQo0riT9I-hiQzk_kNrZjymI4CXIVdtYVyF_QO3l-fuhMDvuYOJlyX0AsTPow', 'Пистолет-пулемёт', 'Ширпотреб', 'Закаленное в боях', 'Коллекция «Dust 2»', 'Обыч.', '<p>Внешний вид: Закаленное в боях</p><br><p> </p><br><p>P90 легко узнать по уникальному дизайну под названием «булл-пап». Это оружие великолепно подходит для стрельбы на ходу благодаря высокой емкости магазина и низкой отдаче. Баллончиком был нанесен импровизированный рисунок из коротких толстых линий контрастирующих цветов.\n\n<i>Идеально подходит для боевика-кочевника</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Dust 2»</p><br><p>\r\n</p><br><p> </p><br>', '0,87 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D14269133016051304657'),
(1363, '310778617', 'SCAR-20 | Песчаная сетка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbmkOVUw7ODYTjBH_9SJh4GFk8j5Nr_Yg2Yf6ZEl3O3D99mm2gTkrUBsYzj0LIWWcwRtYgvU-1K7w-7tg5fv75TPnWwj5HeMNR9tGQ', 'Снайперская винтовка', 'Ширпотреб', 'Поношенное', 'Коллекция «Dust 2»', 'Обыч.', '<p>Внешний вид: Поношенное</p><br><p> </p><br><p>SCAR-20 — полуавтоматическая снайперская винтовка, которая предлагает высокую скорострельность и большой урон на расстоянии, в обмен на более медленную скорость передвижения и большую стоимость самого оружия. Баллончиком был нанесен рисунок с использованием трафарета из сетки рабицы и обрывков картона.<i>\n\nХищник — он и в Африке хищник</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Dust 2»</p><br><p>\r\n</p><br><p> </p><br>', '0,92 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D16577412559346904056'),
(1364, '469439976', 'Nova | Клетчатая сталь', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhh3szHZzxO09SzjL-HnvD8J_WGwD0AuZ0o07nDptun3gLl_BY4ZWvzJ9Ocd1dsMl_R_lC5lby7hZO7ot2XnnibtMPm', 'Дробовик', 'Промышленное качество', 'Немного поношенное', 'Коллекция «Bank»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Дробовик Nova из-за низкой цены идеально подходит для небогатых игроков, которые стремятся напасть на врага из засады. Аквапечатью нанесен узор из овалов, внутри которых металлической краской нарисованы шестиугольники.\n\n<i>Матовая поверхность!</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Bank»</p><br><p> </p><br><p> </p><br>', '2,51 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D66006572998910519'),
(1365, '310776967', 'Nova | Полярная сетка', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhzw8zFdC5K092kl5SClMj3PLXFhGpC_Pp9g-7J4cL30AGyqEdqZW_2doaQIQRvYQ2Fq1i7xL_ojJK66ZvNzSNkvCEq7HvZgVXp1kdWkONk', 'Дробовик', 'Ширпотреб', 'Немного поношенное', 'Коллекция «Train»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Дробовик Nova из-за низкой цены идеально подходит для небогатых игроков, которые стремятся напасть на врага из засады. Баллончиком был нанесен рисунок с использованием трафарета из сетки рабицы и обрывков картона.<i>\n\nХищник — он и в Африке хищник</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Train»</p><br><p>\r\n</p><br><p> </p><br>', '0,93 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3199964507712825021'),
(1366, '310776948', 'SSG 08 | Голубая хвоя', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19fwPz3fDJR_-O7kYSCgvq6armJxTNT6cZ1j73EporzjAzjqRI_NmumJ9CdJAVrYQmG_VG2x-rphYj84sr1r6m09w', 'Снайперская винтовка', 'Ширпотреб', 'После полевых испытаний', 'Коллекция «Safehouse»', 'Обыч.', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p>Снайперская винтовка SSG08 со скользящим затвором не наносит много повреждений, однако хорошее соотношение цены и качества делает ее отличным приобретением в первых раундах для перестрелок на дальних дистанциях. Отдельные части оружия покрашены аэрозольной краской в сплошные цвета мха.</p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Safehouse»</p><br><p>\r\n</p><br><p> </p><br>', '0,88 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D17018089846670522496'),
(1367, '469445780', 'StatTrak™ Dual Berettas | Возмездие', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpos7asPwJf0Ob3YzhW_tW0gZSCmPnLPr7Vn35cpsEgi7mZo9umjQfj_xZpMmnxddORcgI3MlGEqFXsxL290cTqtZSdyHp9-n51cjYrLYc', 'Пистолет', 'Армейское качество', 'После полевых испытаний', 'Охотничья коллекция', 'StatTrak™', '<p>Внешний вид: После полевых испытаний</p><br><p> </p><br><p style="color: #99ccff;">Этот предмет использует технологию StatTrak™, которая помогает отслеживать определенные пункты статистики, выполненные владельцем.</p><br><p> </p><br><p style="color: #CF6A32;">Этот предмет отслеживает количество подтвержденных убийств.</p><br><p> </p><br><p>Одновременная стрельба из двух пистолетов Beretta с большим магазином уменьшает точность и увеличивает время перезарядки. С другой стороны, вы можете стрелять сразу двумя Beretta. Это оружие было окрашено в военном стиле.</p><br><p> </p><br><p style="color: #9da1a9;">Охотничья коллекция</p><br><p> </p><br><p> </p><br>', '47,99 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D17168429909793473140'),
(1368, '1574884741', 'USP-S | Lead Conduit', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo6m1FBRp3_bGcjhQ09ulq5WYh8jiPLfFl2xU18l4jeHVu92kjQDkqUc4Zz-gJI-VdgVqZQ6B_1C9l-3mhJXv7ZvMnyQw7HJw4X7D30vgsvcMSkE', 'Пистолет', 'Армейское качество', 'Немного поношенное', 'Коллекция «Дикое пламя»', 'Обыч.', '<p>Внешний вид: Немного поношенное</p><br><p> </p><br><p>Пистолет USP, любимец игроков в Counter-Strike: Source, имеет отсоединяемый глушитель, который позволяет наносить точные выстрелы, одновременно поглощая привлекающий излишнее внимание шум. It has been given a custom engraved silencer and slide.\n\n<i>You got what you wanted, now do you know what that means? – Booth, Arms Dealer</i></p><br><p> </p><br><p style="color: #9da1a9;">Коллекция «Дикое пламя»</p><br><p>\r\n</p><br><p> </p><br>', '41,59 pуб.', 'steam://rungame/730/76561202255233023/+csgo_econ_action_preview%20S%owner_steamid%A%assetid%D3182430915833716677');

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notification`
--

INSERT INTO `notification` (`id`, `id_user`, `id_item`, `price`) VALUES
(1, 104, 1256, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `offer_my`
--

CREATE TABLE IF NOT EXISTS `offer_my` (
`id` int(11) NOT NULL,
  `user_buy` text NOT NULL,
  `user_buy_token` text NOT NULL,
  `classid` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `secret` text NOT NULL,
  `id_buy` int(11) NOT NULL,
  `status2` int(11) NOT NULL DEFAULT '0',
  `trade_offer_id` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `offer_my`
--

INSERT INTO `offer_my` (`id`, `user_buy`, `user_buy_token`, `classid`, `status`, `secret`, `id_buy`, `status2`, `trade_offer_id`) VALUES
(2, '76561198258733322', '_Ik8F0n5', '520025252', 1, 'Bd9bd', 25, 1, '1058991183'),
(3, '76561198138958722', 'iuD4kuss', '520025252', 1, '782TD', 26, 1, '1059003567'),
(4, '76561198258733322', '_Ik8F0n5', '520025252', 1, 'i58yF', 27, 1, '1059007174'),
(5, '76561198138958722', 'iuD4kuss', '520025252', 1, 'BEQZ7', 28, 1, '1059012306');

-- --------------------------------------------------------

--
-- Структура таблицы `offer_them`
--

CREATE TABLE IF NOT EXISTS `offer_them` (
`id` int(11) NOT NULL,
  `user_sell` text NOT NULL,
  `user_buy` text NOT NULL,
  `trade_offer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `id_prodazi` int(11) NOT NULL,
  `secret` text NOT NULL,
  `user_buy_token` text NOT NULL,
  `classid` text NOT NULL,
  `price` int(11) NOT NULL,
  `id_pokupki` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `offer_them`
--

INSERT INTO `offer_them` (`id`, `user_sell`, `user_buy`, `trade_offer_id`, `status`, `id_prodazi`, `secret`, `user_buy_token`, `classid`, `price`, `id_pokupki`) VALUES
(11, '76561198138958722', '76561198258733322', 1058988759, 1, 211, 'Bd9bd', '_Ik8F0n5', '520025252', 1, 25),
(12, '76561198258733322', '76561198138958722', 1059002388, 1, 213, '782TD', 'iuD4kuss', '520025252', 1, 26),
(13, '76561198138958722', '76561198258733322', 1059005865, 1, 214, 'i58yF', '_Ik8F0n5', '520025252', 1, 27),
(14, '76561198258733322', '76561198138958722', 1059010251, 1, 215, 'BEQZ7', 'iuD4kuss', '520025252', 1, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `pay_in`
--

CREATE TABLE IF NOT EXISTS `pay_in` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pay_in`
--

INSERT INTO `pay_in` (`id`, `id_user`, `sum`, `type`, `date`, `status`) VALUES
(8, 104, 1, '', '2016-03-05 01:46:58', 0),
(9, 106, 1, '', '2016-03-05 02:08:02', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pay_out`
--

CREATE TABLE IF NOT EXISTS `pay_out` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `wallet` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pay_out`
--

INSERT INTO `pay_out` (`id`, `id_user`, `sum`, `wallet`, `date`, `type`, `status`) VALUES
(3, 104, 2, '2323', '2016-03-05 02:03:58', 'wm', 0),
(4, 104, 2, '2332', '2016-03-05 02:03:05', 'wm', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pokupki`
--

CREATE TABLE IF NOT EXISTS `pokupki` (
`id` int(11) NOT NULL,
  `id_prodazi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `status2` int(11) NOT NULL DEFAULT '0',
  `status3` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pokupki`
--

INSERT INTO `pokupki` (`id`, `id_prodazi`, `id_user`, `status`, `status2`, `status3`) VALUES
(4, 188, 88, 1, 0, 0),
(5, 189, 83, 1, 0, 0),
(6, 190, 88, 1, 0, 0),
(7, 191, 94, 1, 0, 0),
(9, 193, 97, 1, 0, 0),
(10, 195, 98, 1, 0, 0),
(13, 199, 99, 1, 0, 0),
(14, 200, 98, 1, 0, 0),
(18, 204, 100, 1, 0, 0),
(20, 206, 103, 1, 0, 0),
(24, 210, 103, 1, 1, 0),
(25, 211, 104, 1, 1, 1),
(26, 213, 106, 1, 1, 1),
(27, 214, 104, 1, 1, 1),
(28, 215, 106, 1, 1, 1),
(29, 221, 106, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `prodazi`
--

CREATE TABLE IF NOT EXISTS `prodazi` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_slot` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `i_order` int(11) NOT NULL,
  `note` tinyint(1) NOT NULL DEFAULT '0',
  `secret` text NOT NULL,
  `status2` int(11) NOT NULL DEFAULT '0',
  `timestamp` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prodazi`
--

INSERT INTO `prodazi` (`id`, `id_user`, `id_slot`, `id_item`, `date`, `price`, `status`, `i_order`, `note`, `secret`, `status2`, `timestamp`) VALUES
(187, 84, 8, 1304, '2016-02-29 22:38:14', 111, 0, 1, 0, 'FbFTe', 0, ''),
(189, 89, 6, 1352, '2016-02-29 23:13:40', 1, 1, 1, 1, 'Etef9', 1, '1456776826'),
(190, 89, 1, 1357, '2016-02-29 23:19:00', 1, 1, 1, 1, 'S77A5', 0, '1456777201'),
(193, 97, 13, 1257, '2016-03-03 21:18:40', 1, 1, 1, 1, 's5nQt', 0, '1457031217'),
(195, 99, 11, 1366, '2016-03-03 23:26:00', 1, 1, 1, 1, 'y9A7s', 1, '1457036766'),
(197, 99, 12, 1350, '2016-03-04 00:55:20', 1, 1, 1, 1, '84Qib', 1, '1457042125'),
(199, 98, 87, 1254, '2016-03-04 01:04:57', 1, 1, 1, 1, 'BaDbA', 1, '1457042717'),
(200, 99, 44, 1295, '2016-03-04 01:09:28', 1, 1, 1, 1, 'zfQAH', 1, '1457042971'),
(206, 102, 11, 1256, '2016-03-04 23:26:56', 1, 1, 1, 1, '74tHk', 0, '1457123533'),
(210, 102, 19, 1295, '2016-03-05 00:18:19', 1, 1, 1, 1, '3ss7r', 1, '1457126345'),
(211, 106, 5, 1254, '2016-03-05 02:21:18', 1, 1, 1, 1, 'Bd9bd', 1, '1457133683'),
(214, 106, 27, 1254, '2016-03-05 02:31:37', 1, 1, 1, 1, 'i58yF', 1, '1457134300'),
(221, 104, 3, 1295, '2016-03-05 03:07:14', 1, 1, 1, 1, 'N5r3G', 0, '1457136490');

-- --------------------------------------------------------

--
-- Структура таблицы `support`
--

CREATE TABLE IF NOT EXISTS `support` (
`id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `txt` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `support`
--

INSERT INTO `support` (`id`, `email`, `txt`, `status`) VALUES
(1, 'zalupa@konska.com', 'рукаблуд ссанина очкоблядун вагина', 1),
(2, 'апр', 'апр', 1),
(3, 'цц', 'цц', 0),
(4, 'ыы', 'ыы', 0),
(5, '4', '4', 0),
(6, '55', '55', 0),
(7, '55', '55', 0),
(8, '5', '5', 0),
(9, 'wer', 'werwer', 0),
(10, 'werwer', 'werwer', 0),
(11, 'werwer', 'werwer', 0),
(12, 'werwer', 'werwer', 0),
(13, 'werwer', 'werwer', 0),
(14, 'werwer', 'werwer', 0),
(15, 'werwerwer', 'werwerwer', 0),
(16, 'werwer', 'werwer', 0),
(17, 'wer234', '234234', 0),
(18, 'werwer', 'werwerwer', 0),
(19, 'wr33', '3333', 0),
(20, 'ц3', '232', 0),
(21, 'ыв', 'в', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `support_ask`
--

CREATE TABLE IF NOT EXISTS `support_ask` (
`id` int(11) NOT NULL,
  `id_q` int(11) NOT NULL,
  `txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `steamid` text NOT NULL,
  `avatar` text NOT NULL,
  `balance` int(11) NOT NULL,
  `urprof` text NOT NULL,
  `reload_inv` datetime NOT NULL,
  `tradelink` text NOT NULL,
  `komisia` int(11) NOT NULL,
  `skidka` int(11) NOT NULL,
  `not1` tinyint(1) NOT NULL DEFAULT '0',
  `not2` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ssilka_status` int(11) DEFAULT '0',
  `mob_prov` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `steamid`, `avatar`, `balance`, `urprof`, `reload_inv`, `tradelink`, `komisia`, `skidka`, `not1`, `not2`, `ip`, `email`, `ssilka_status`, `mob_prov`) VALUES
(104, '76561198258733322', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fb/fba1d5875d869b350e4d5ea29a178b39f7d13872_full.jpg', 0, 'digidiez', '2016-03-05 03:24:11', 'https://steamcommunity.com/tradeoffer/new/?partner=298467594&token=_Ik8F0n5', 0, 0, 1, 1, '5.138.223.241', '', 2, 1),
(105, '76561198273924509', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/20/206c46ee3f46bf6c4ffd08c4f83cbee2d75b7876_full.jpg', 0, 'silverochok', '2016-03-05 01:24:50', '', 0, 0, 0, 0, '5.138.223.241', '', 0, 0),
(106, '76561198138958722', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/ba/ba960e98c107a0e11171a4839c55e7453cab212d_full.jpg', 0, '76561198138958722', '2016-03-05 03:08:14', 'https://steamcommunity.com/tradeoffer/new/?partner=178692994&token=iuD4kuss', 0, 0, 0, 0, '176.32.1.55', '', 2, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventar_76561198138958722`
--
ALTER TABLE `inventar_76561198138958722`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventar_76561198258733322`
--
ALTER TABLE `inventar_76561198258733322`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inventar_76561198273924509`
--
ALTER TABLE `inventar_76561198273924509`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offer_my`
--
ALTER TABLE `offer_my`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offer_them`
--
ALTER TABLE `offer_them`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pay_in`
--
ALTER TABLE `pay_in`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pay_out`
--
ALTER TABLE `pay_out`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pokupki`
--
ALTER TABLE `pokupki`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prodazi`
--
ALTER TABLE `prodazi`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support`
--
ALTER TABLE `support`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `support_ask`
--
ALTER TABLE `support_ask`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `inventar_76561198138958722`
--
ALTER TABLE `inventar_76561198138958722`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `inventar_76561198258733322`
--
ALTER TABLE `inventar_76561198258733322`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `inventar_76561198273924509`
--
ALTER TABLE `inventar_76561198273924509`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1369;
--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `offer_my`
--
ALTER TABLE `offer_my`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `offer_them`
--
ALTER TABLE `offer_them`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `pay_in`
--
ALTER TABLE `pay_in`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `pay_out`
--
ALTER TABLE `pay_out`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `pokupki`
--
ALTER TABLE `pokupki`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `prodazi`
--
ALTER TABLE `prodazi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT для таблицы `support`
--
ALTER TABLE `support`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `support_ask`
--
ALTER TABLE `support_ask`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
