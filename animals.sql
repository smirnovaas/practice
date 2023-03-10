-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 23 2019 г., 23:16
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `animals`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` text,
  `ordered` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `ordered`) VALUES
(1, 'Млекопитающие', NULL, 1),
(2, 'Птицы', NULL, 2),
(3, 'Насекомые', NULL, 4),
(4, 'Рыбы', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `interestings`
--

CREATE TABLE IF NOT EXISTS `interestings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `interestings`
--

INSERT INTO `interestings` (`id`, `text`, `image`) VALUES
(1, 'Обоняние у кошек примерно в 14 раз сильнее человеческого, что позволяет им чувствовать запахи, о которых человек даже не подозревает.', 'cat-1.jpg'),
(2, 'Далеко не все пингвины живут в полярных широтах. Галапагосские пингвины живут на одноимённых островах, а там среднегодовая температура составляет порядка +18 градусов Цельсия', 'penguin-1.jpg'),
(3, 'Муравьи произошли от существ, похожих на ос, около 110-130 миллионов лет назад. Они жили бок о бок с динозаврами, но не вымерли, в отличие от этих гигантов.', 'ant-2.jpg'),
(4, 'Крошечные муравьи составляют 15-20% от общей биомассы животных Земли, превосходя массу позвоночных существ.', 'ant-1.jpg'),
(5, 'Для запечатывания мёда в 75 пчелиных ячейках пчелам необходимо произвести один грамм воска.', 'bee-3.jpg'),
(6, 'Пчёлы собирают мед не ради удовольствия — они заботятся о здоровом потомстве и о его питании. Чтобы прокормить тысячу личинок, насекомые должны собрать 100 грамм меда, 50 грамм пыльцы и 30 грамм воды', 'bee-1.jpg'),
(7, 'Лошадь — это одно из немногих животных, способных узнать себя на фотографии', 'horse-1.jpg'),
(8, 'Утиное кряканье не имеет эха. Крякать умеют только самки уток. Селезни крякать не могут.', 'duck-5.jpg'),
(9, 'Директор приюта для бездомных собак может загнать на дерево директора приюта для бездомных кошек.', 'dog-1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text,
  `content` text NOT NULL,
  `category` bigint(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `content`, `category`, `image`) VALUES
(1, 'Собаки', 'Домашнее животное, друг человека. Собаки веками жили рядом с человеком, не уставая доказывать ему свою преданность и любовь.', 'Собака — домашнее животное, одно из наиболее распространённых (наряду с кошкой) животных-компаньонов.\n\nПервоначально домашняя собака была выделена в отдельный биологический вид Линнеем в 1758 году, в 1993 году реклассифицирована Смитсоновским институтом и Американской ассоциацией териологов в подвид волка. В русскоязычных письменных источниках слово «собака» в значении соответствующего животного встречается по крайней мере с 1475 года, начиная с грамоты князя Андрея Васильевича Меньшого Кириллову монастырю.\n\nС зоологической точки зрения, собака — плацентарное млекопитающее отряда хищных семейства псовых.\n\nСобаки известны своими способностями к обучению, любовью к игре, социальным поведением. Выведены специальные породы собак, предназначенные для различных целей: охоты, охраны, тяги гужевого транспорта и другого, а также декоративные породы (например, болонка, пудель).', 1, 'dog.jpg'),
(2, 'Кошки', 'Домашнее животное, одно из наиболее популярных (наряду с собакой) «животных-компаньонов».', 'Домашнее животное, одно из наиболее популярных (наряду с собакой) «животных-компаньонов».\r\n\r\nС точки зрения научной систематики, домашняя кошка — млекопитающее семейства кошачьих отряда хищных. Ранее домашнюю кошку нередко рассматривали как отдельный биологический вид. С точки зрения современной биологической систематики домашняя кошка является подвидом лесной кошки.\r\n\r\nЯвляясь одиночным охотником на грызунов и других мелких животных, кошка — социальное животное, использующее для общения широкий диапазон звуковых сигналов, а также феромоны и движения тела.\r\n\r\nВ настоящее время, в мире насчитывается около 600 млн домашних кошек, выведено около 200 пород, от длинношёрстных (персидская кошка) до лишённых шерсти (сфинксы), признанных и зарегистрированных различными фелинологическими организациями.\r\n\r\nНа протяжении 10 000 лет кошки ценятся человеком, в том числе за способность охотиться на грызунов и других домашних вредителей.\r\n', 1, 'cat.jpg'),
(3, 'Утки', 'Представитель птиц из нескольких родов семейства утиных.', 'Представитель птиц из нескольких родов семейства утиных: пеганки, нырковые утки, савки, речные утки, утки-пароходы, мускусные утки и крохали. Всего более 110 видов. Распространены утки широко, в России более 30 видов.\r\n\r\nСамцы уток называются селезнями, птенцы утки — утятами.\r\n\r\nУтки — это птицы средних и небольших размеров с относительно короткой шеей и цевкой, покрытой спереди поперечными щитками. Окраска оперения разнообразна, у многих видов на крыле имеется особое «зеркальце». Для ряда видов характерен резко выраженный в период размножения половой диморфизм, проявляющийся чаще всего в разной окраске оперения самца и самки. У большинства видов линька происходит дважды в году; летняя — полная, осенняя — частичная.\r\n\r\nДомашние утки произошли от кряквы. Селезни домашних уток весят 3—4 кг, утки — 2—3,5 кг. Средняя годовая яйценоскость до 250 яиц. Породы домашних уток подразделяются на мясные (пекинские, серые украинские, чёрные белогрудые), мясо-яичные (зеркальные, хаки-кемпбелл), яичные (индийские бегуны). Уток разводят во многих странах, в том числе в России.\r\n', 2, 'duck.jpg'),
(4, 'Лошади', 'Единственный современный род семейства лошадиных отряда непарнокопытных', 'Животное из семейства лошадиных отряда непарнокопытных, одомашненный и единственный сохранившийся подвид дикой лошади, вымершей в дикой природе, за исключением небольшой популяции лошади Пржевальского. Используется человеком вплоть до настоящего времени.\r\n\r\nКак показывает второе название семейства, наиболее характерную особенность его составляют ноги, имеющие только один вполне развитый и одетый копытом палец. Череп вытянут и отличается относительно длинной лицевой частью. Долгое время лошади были в числе экономически наиболее важных для человека домашних животных, однако их важность упала в связи с развитием механизации. \r\n\r\nВ природе лошадь — житель больших, открытых пространств степей или прерий, спасающаяся в случае опасности при помощи бегства.\r\n\r\nНа сельском подворье лошади зимуют вместе с коровами и овцами, разделённые только лёгкими деревянными перегородками. На лугу они также мирно пасутся рядом, поскольку им нужны разные виды трав: лошади предпочитают сочные, а козы и овцы — колючие. Также они поедают траву на разной высоте.\r\n', 1, 'horse.jpg'),
(5, 'Пчелы', 'Медоносное насекомое, одно из самых полезных живых существ. Устрой их жизни является удивительным явлением в природе.', 'Медоносное насекомое, одно из самых полезных живых существ. Принимает прямое участие в процессе цветения и размножения растений, собирая нектар и пыльцу.\r\n\r\nСуществует около 21 тысячи видов и 520 родов пчёл. Их можно обнаружить на всех континентах, кроме Антарктиды. Пчёлы приспособились питаться нектаром и пыльцой, используя нектар главным образом в качестве источника энергии, а пыльцу для получения белков и других питательных веществ. Обладают свойством эусоциальности.\r\n\r\nУ пчёл длинный хоботок, которым они пользуются для высасывания нектара растений. У них также имеются усики (или антенны, сяжки), каждый из которых состоит из 13 сегментов у самцов и 12 сегментов у самок. \r\n\r\nВсе пчёлы имеют две пары крыльев, задняя пара по размеру меньше передней; только у нескольких видов у одного пола или касты крылья очень короткие, что делает полёт пчелы трудным или невозможным делом.\r\n\r\nМногие виды пчёл мало изучены. Размер пчёл колеблется от 2,1 мм у карликовой пчелы до 39 мм у вида Megachile pluto, обитающего в Индонезии.\r\n', 3, 'bee.jpg'),
(6, 'Муравьи', 'Одни из самых высокоорганизованных насекомых на планете. Не могут жить по одиночке, а обитают колониями до миллиона жителей.', 'Одни из самых высокоорганизованных насекомых на планете. Их семьи представляют собой сложные социальные группы с разделением труда и развитыми системами коммуникации и самоорганизации, позволяющими особям координировать свои действия при выполнении задач, которые не по силам одному индивиду. Некоторые виды муравьёв обладают развитым «языком» и способны передавать сложную информацию. Кроме того, многие виды муравьёв поддерживают высокоразвитые симбиотические отношения с другими насекомыми, грибами, бактериями и растениями.\r\n\r\nМуравьи живут семьями в гнёздах, называемых муравейниками, которые устраивают в почве, древесине, под камнями; некоторые сооружают муравейники из мелких растительных частиц и т. п. Существуют паразитические виды, которые обитают в гнёздах других муравьёв, муравьи-«рабовладельцы», содержащие в своих гнёздах «рабов» — муравьёв других видов. Ряд видов приспособился к обитанию в жилищах человека. Некоторые виды ценятся за регулирование численности насекомых-вредителей, другие могут считаться вредителями.\r\n\r\nПитаются преимущественно соком растений, падью тлей и других сосущих насекомых, в период кормления личинок — преимущественно насекомыми. Есть также виды, питающиеся семенами (муравьи-жнецы) и культивируемыми грибами (муравьи-листорезы).\r\n\r\nРаспространены по всему миру, за исключением Антарктиды и некоторых удалённых островов, образуя 10—25 % земной биомассы наземных животных. Успех муравьёв во многих средах обитания обусловлен их социальной организацией и способностью изменять место обитания и использовать разнообразные ресурсы.\r\n', 3, 'ant.jpg'),
(7, 'Пингвины', 'Единственная в мире птица, которая может плавать, но не может летать.', 'Пингвины на сегодняшний день представляют одно из самых многочисленных семейств. Это единственные на сегодняшний день нелетающие птицы, входящие в отряд «Пингвинообразные». Они прекрасно плавают и ныряют, но совсем не умеют летать.\r\n\r\nФорма тела пингвинов обтекаемая, что идеально для передвижения в воде. Мускулатура и устройство костей позволяют им под водой работать крыльями почти как винтами. В отличие от других нелетающих птиц, пингвины имеют грудину с чётко выраженным килем, к которому крепится мощная мускулатура. Плавание под водой отличается от полёта в воздухе тем, что на подъём крыла затрачивается та же энергия, что и на опускание, поскольку сопротивление воды больше, чем сопротивление воздуха, поэтому лопатки пингвинов имеют по сравнению с другими птицами большую поверхность, на которой крепится мускулатура, отвечающая за подъём крыла.\r\n\r\nХвост пингвинов сильно укорочен, поскольку рулевую функцию, которую он обычно имеет у других водоплавающих птиц, у пингвинов выполняют в первую очередь ноги. Второе явное отличие пингвинов от других птиц — плотность костей. У всех птиц кости трубчатые, что делает их скелет легче и позволяет летать или быстро бегать, а у пингвинов они похожи на кости млекопитающих (дельфинов и тюленей) и не содержат внутренних полостей.\r\n\r\nПингвины являются социальными животными, поэтому, находясь на суше они объединяются в группы по несколько десятков или сотен тысяч особей. Колонии бывают настолько многочисленными, что их видно даже из космоса.\r\n', 2, 'penguin.jpg'),
(8, 'Золотые рыбки', 'Вид пресноводных лучепёрых рыб рода карасей.', 'Вид пресноводных лучепёрых рыб рода карасей. Её предок был одомашнен человеком ещё в VII веке нашей эры. Является одной из самых популярных аквариумных рыб и представлена целой группой пород домашних аквариумных животных, полученной в результате многовековой направленной гибридизации и селекции особей с определёнными случайными признаками, возникшими в результате мутаций. Одним из устаревших именований всех домашних и прудовых «золотых рыбок» было — «золотые карпы», происходящее от общего научного систематического названия — семейства карповых.\r\n\r\nНаименование группы обусловлено названием одного из прародителей всех пород «золотых рыбок»: первой, культивированной из обыкновенного серебряного карася аквариумной рыбки красно-золотистого цвета с металлическим отливом — представителя семейства Карповые, которую величаво именовали «золотой рыбкой».\r\n\r\nВ русском наименовании аквариумного домашнего животного применяется только уменьшительно-ласкательная форма от слова «рыба» — рыбка (множественная форма от слова «рыбы» — рыбки), как маленькие и любимые питомцы: «золотые рыбки».\r\n', 4, 'goldfish.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `page` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `file`, `page`) VALUES
(1, 'dog-1.jpg', 1),
(2, 'dog-2.jpg', 1),
(3, 'dog-3.jpg', 1),
(4, 'dog-4.jpg', 1),
(5, 'dog-5.jpg', 1),
(6, 'dog-6.jpg', 1),
(7, 'dog-7.jpg', 1),
(8, 'cat-1.jpg', 2),
(9, 'cat-2.jpg', 2),
(10, 'cat-3.jpg', 2),
(11, 'cat-4.jpg', 2),
(12, 'duck-1.jpg', 3),
(13, 'duck-2.jpg', 3),
(14, 'duck-3.jpg', 3),
(15, 'duck-4.jpg', 3),
(16, 'duck-5.jpg', 3),
(17, 'cat-5.jpg', 2),
(18, 'horse-1.jpg', 4),
(19, 'horse-2.jpg', 4),
(20, 'bee-1.jpg', 5),
(21, 'bee-2.jpg', 5),
(22, 'bee-3.jpg', 5),
(23, 'goldfish-1.jpg', 8),
(24, 'goldfish-2.jpg', 8),
(25, 'goldfish-3.jpg', 8),
(26, 'ant-1.jpg', 6),
(27, 'ant-2.jpg', 6),
(28, 'penguin-1.jpg', 7),
(29, 'penguin-2.jpg', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
