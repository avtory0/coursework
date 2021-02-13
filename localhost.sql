-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 06:36 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palaceofarts`
--
CREATE DATABASE IF NOT EXISTS `palaceofarts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `palaceofarts`;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `h-img` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `seance` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `img`, `h-img`, `rating`, `name`, `genre`, `info`, `seance`, `links`) VALUES
(1, 'img/movies/1.jpg', 'img/movies/horizontal/1.jpg', '12+', 'Ведьмы', 'Фэнтези, Комедия, Семейный', ' США 1 ч 44 мин', 'Сеансы 2D', 'movie.php?id=1'),
(2, 'img/movies/2.jpg', 'img/movies/horizontal/2.jpg', '16+', 'Гренландия', 'Боевик', 'США 1 ч 59 мин', 'Сеансы 3D', 'movie.php?id=2'),
(3, 'img/movies/3.jpg', 'img/movies/horizontal/3.jpg', '16+', 'Гипноз', ' Драма, Триллер', 'Финляндия 1 ч 52 мин', 'Сеансы 2D', 'movie.php?id=3'),
(4, 'img/movies/4.jpg', 'img/movies/horizontal/4.jpg', '16+', 'Довод', 'Боевик, Научная фантастика', 'Великобритания 2 ч 30 мин', 'Сеансы 3D', 'movie.php?id=4'),
(5, 'img/movies/5.jpg', 'img/movies/horizontal/5.jpg', '12+', 'Стрельцов', 'Драма, Спорт', 'Россия 1 ч 41 мин', 'Сеансы 2D', 'movie.php?id=5'),
(6, 'img/movies/6.jpg', 'img/movies/horizontal/6.jpg', '16+', '1917', 'Военный, Боевик', ' США 1 ч 59 мин', 'Сеансы 3D', 'movie.php?id=6'),
(7, 'img/movies/7.jpg', 'img/movies/horizontal/7.jpg', '16+', 'Доктор Лиза', 'Драма', 'Россия 2 часа', 'Сеансы 2D', 'movie.php?id=7'),
(8, 'img/movies/8.jpg', 'img/movies/horizontal/8.jpg', '18+', 'Джентельмены', 'Комедия, Боевик', 'Ирландия 1 ч 53 мин', 'Сеансы 3D', 'movie.php?id=8'),
(9, 'img/movies/9.jpg', 'img/movies/horizontal/9.jpg', '12+', 'Шрек 2', 'Мультипликация, Комедия', 'США 1 ч 45 мин', 'Сеансы 2D', 'movie.php?id=9'),
(10, 'img/movies/10.jpg', 'img/movies/horizontal/10.jpg', '16+', 'Ford против Ferrari', 'Спорт, Драма', 'США 2 ч 32 мин', 'Сеансы 3D', 'movie.php?id=10');

-- --------------------------------------------------------

--
-- Table structure for table `shablon`
--

CREATE TABLE `shablon` (
  `id` int(11) NOT NULL,
  `main_img` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `premiere` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `producer` varchar(255) NOT NULL,
  `actors` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `gallery1` varchar(255) NOT NULL,
  `gallery2` varchar(255) NOT NULL,
  `gallery3` varchar(255) NOT NULL,
  `gallery4` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shablon`
--

INSERT INTO `shablon` (`id`, `main_img`, `rating`, `title`, `premiere`, `genre`, `producer`, `actors`, `country`, `duration`, `description`, `gallery1`, `gallery2`, `gallery3`, `gallery4`, `trailer`) VALUES
(1, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/60e4f758-d08c-4eb0-b0d5-d9b009f319de/600x900', '12+', 'Ведьмы', '22 октября 2020', 'фэнтези, комедия, семейный', 'Роберт Земекис', 'Энн Хэтэуэй, Октавия Спенсер, Кристин Ченовет, Джазир Бруно', 'США', '1 час 44 минуты', 'В конце 1967 года после гибели родителей мальчик переезжает жить к бабушке. Та вскоре замечает, что в их городке отираются ведьмы, которые не прочь превратить её внука в какое-нибудь животное, поэтому решает спрятаться в самом шикарном отеле Алабамы, где работает её кузен. Бабуля думала, что там они встретят только скучающих богатых постояльцев, но именно в этом отеле решает устроить тайный шабаш Величайшая Самая Главная Ведьма.', 'https://www.kino-teatr.ru/movie/kadr/138804/960888.jpg', 'https://cdn22.img.ria.ru/images/07e4/0a/1c/1581962746_144:0:944:450_1920x0_80_0_0_51e704b98dfca841e91ea5298667a0a1.jpg', 'https://resizer.mail.ru/p/c2290d1b-712b-5003-86cb-5ac5fe62b61b/AAACFVPI6U2POPmc2_NQ0nFmbvM04bEdl0t76Mv9RmKfEgNiURGuBMWapEFPH-vMUCBvFUUX57v6JEs-Sr7oHpQMpZM.jpg', 'https://www.kino-teatr.ru/movie/kadr/138804/960891.jpg', 'https://www.youtube.com/embed/rOZfcoUhCG0'),
(2, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/9ef29947-53a9-4d80-a12b-38924b6e9a04/300x450', '16+', 'Гренландия', '\r\n29 июля 2020', '\r\nбоевик', 'Рик Роман Во', 'Джерард Батлер, Морена Баккарин, Скотт Гленн', '\r\nСША, Великобритания', '1 час 59 минут', 'Огромная комета мчится к Земле и угрожает уничтожить планету. Конец света кажется неизбежным. Единственное безопасное место — бункер в далекой Гренландии. Джон, его жена и их сын отправляются в опасное путешествие, которое осложняется не только разрушающими последствиями кометы, но и паникой обезумевших людей, ведь во время глобальной катастрофы никакие человеческие законы уже не действуют…', 'https://st.kp.yandex.net/im/kadr/3/5/1/kinopoisk.ru-Greenland-3518268.jpg', 'https://st.kp.yandex.net/im/kadr/3/5/1/kinopoisk.ru-Greenland-3518269.jpg', 'https://st.kp.yandex.net/im/kadr/3/5/5/kinopoisk.ru-Greenland-3551133.jpg', 'https://i.ytimg.com/vi/sZBM492Ufco/maxresdefault.jpg', 'https://www.youtube.com/embed/sZBM492Ufco'),
(3, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/ff20a2bd-068f-4044-8cb0-8897871ddeb6/300x450', '16+', '\r\nГипноз', '\r\n15 октября 2020', 'драма, триллер', '\r\nВалерий Тодоровский', 'Екатерина Федулова, Максим Суханов, Степан Середа', 'Россия', '1 час 52 минуты', 'Подросток Миша посещает сеансы гипноза у психотерапевта Волкова, чтобы вылечиться от лунатизма. В результате Миша попадает под влияние гипнолога до такой степени, что перестаёт понимать, где реальность, а где иллюзия. После таинственного исчезновения одной из пациенток Волкова Миша решает провести расследование, чтобы докопаться до истины. Но что делать, если сон и явь слились в одно, а главный подозреваемый в итоге - ты сам?', 'https://st.kp.yandex.net/im/kadr/3/5/3/kinopoisk.ru-Gipnoz-3539922.jpg', 'https://st.kp.yandex.net/im/kadr/3/5/3/kinopoisk.ru-Gipnoz-3539923.jpg', 'https://st.kp.yandex.net/im/kadr/3/5/3/kinopoisk.ru-Gipnoz-3539919.jpg', 'https://www.kino-teatr.ru/movie/kadr/133525/837031.jpg', 'https://www.youtube.com/embed/xBcNZfqYJGw'),
(4, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/526fdb94-fe19-40c1-9bea-20ef8ab0d546/300x450', '16+', 'Довод', '22 августа 2020', '\r\nфантастика, боевик', 'Кристофер Нолан', 'Джон Дэвид Вашингтон, Роберт Паттинсон, Элизабет Дебики', '\r\nВеликобритания, США', '2 часа 3 минут', 'Главный герой — секретный агент, который проходит жестокий тест на надежность и присоединяется к невероятной миссии. От ее выполнения зависит судьба мира, а для успеха необходимо отбросить все прежние представления о пространстве и времени.', 'https://img.tyt.by/n/afisha/06/7/dovod_483863.jpg', 'https://avatars.mds.yandex.net/get-kinopoisk-post-img/1345014/2a7d65e11819b89d3bf4206a71f69ed9/960x540', 'https://img.gazeta.ru/files3/716/13233716/upload-MV5BNzAwM2EyOGMtMDA4My00YmYzLWI5MmYtNzYxMTNkM2UwMDNjXkEyXkFqcGdeQXVyODUxNjcxNjE_-pic4_zoom-1500x1500-57910.jpg', 'https://img.gazeta.ru/files3/722/13233722/upload-MV5BZjI0YzQwM2ItNmIzYS00NjdiLWFlOTItZmVlMzFlMjBiYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ__-pic4_zoom-1500x1500-81159.jpg', 'https://www.youtube.com/embed/ZBfucK7h2gc'),
(5, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1777765/5d867c58-3852-4686-93ac-b985260e54d0/300x450', '12+', '\r\nСтрельцов', '24 сентября 2020 г.', '\r\nмелодрама, спорт', 'Илья Алексеевич Учитель', 'Александр Петров, Виталий Хаев,Стася Милославская', 'Россия', '1 час 41 минуты', 'К 20 годам у кумира миллионов Эдуарда Стрельцова есть все, о чем только можно мечтать: талант, слава и любовь. Вся страна с замиранием сердца ждет от сборной и ее восходящей звезды победы на предстоящем Чемпионате мира по футболу. Но за два дня до отъезда команды против Стрельцова выдвигается обвинение, которое вмиг все перечеркивает. Вместо дуэли с гениальным бразильцем Пеле, которая могла стать самой зрелищной в истории футбола, Стрельцова ждет тюрьма. Неужели он и правда преступник? Сможет ли он после 5 лет лагерей вновь выйти на поле и доказать, что он — настоящий чемпион, достойный всенародной любви?', 'https://cdn21.img.ria.ru/images/07e4/09/15/1577558335_262:0:1787:858_1920x0_80_0_0_ea0b73261893f47293a3915a17c5d0bd.jpg', 'https://cdn-st1.rtr-vesti.ru/vh/pictures/gallery/222/774/8.jpg', 'https://s6.stc.all.kpcdn.net/putevoditel/serialy/wp-content/uploads/2020/08/ce798e8806683e21598081678-1-1024x683.jpg', 'https://s0.rbk.ru/v6_top_pics/resized/1005xH/media/img/5/13/756009621256135.jpg', 'https://www.youtube.com/embed/FQwgo0GBjGQ'),
(6, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1599028/7308b7a8-2bb6-4d5d-a856-a6b4a33328d9/300x450', '16+', '\r\n1917', '\r\n4 декабря 2019', 'военный, боевик, драма, история', 'Сэм Мендес', 'Джордж Маккей, Ричард Мэдден, Бенедикт Камбербэтч', '\r\nСША, Великобритания, Индия', '1 час 59 минут', '1917 год, разгар Первой мировой войны. Двум юным солдатам поручают смертельно опасную миссию. Они должны пересечь вражескую территорию и доставить секретное сообщение, которое предотвратит неминуемую гибель сотен солдат… Смогут ли они выиграть гонку со временем?', 'https://img.gazeta.ru/files3/812/12906812/1917-3407695-pic4_zoom-1500x1500-83105.jpg', 'https://cdn22.img.ria.ru/images/7e4/1/1c/1563971543_0:21:3072:1749_600x0_80_0_0_0259b2531f7a9da5ed24a77751477006.jpg', 'https://www.kino-teatr.ru/movie/kadr/135410/862879.jpg', 'https://www.kino-teatr.ru/movie/kadr/135410/872796.jpg', 'https://www.youtube.com/embed/PxOBp68HDhQ'),
(7, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/f1250297-bd69-48e1-85c5-d2add5a5ef97/300x450', '16+', 'Доктор Лиза', '\r\n22 октября 2020', '\r\nдрама, биография', '\r\nОксана Карас', 'Чулпан Хаматова, Андрей Бурковский, Константин Хабенский', 'Россия', '2 часа ', 'В центре сюжета — история одного дня из жизни Елизаветы Петровны Глинки. История начинается с праздничного события: Елизавета и её муж Глеб готовятся отметить 30-ю годовщину их свадьбы. На домашний ужин приглашены близкие друзья, приезжают сыновья. Конечно, Лиза освободила этот день, чтобы провести его с семьёй. По плану у неё только одно дело — заехать на Павелецкий вокзал, ведь там сегодня Фонд доктора Лизы «Справедливая помощь» принимает пациентов. И эта поездка оказывается полна неожиданностей…', 'https://www.kino-teatr.ru/movie/kadr/134148/906852.jpg', 'https://www.kino-teatr.ru/movie/kadr/134148/906847.jpg', 'https://img05.rl0.ru/afisha/e1425x712p0x0f2396x1198q65i/s1.afisha.ru/mediastorage/bc/e2/e7e6fc7f4d304734a32b7cd8e2bc.jpg', 'https://www.film.ru/sites/default/files/styles/epsa_1024x450/public/49613271-1220706.jpg?2', 'https://www.youtube.com/embed/S7VYhc5hUNI'),
(8, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1599028/637271d5-61b4-4e46-ac83-6d07494c7645/300x450', '18+', 'Джентльмены', '\r\n3 декабря 2019', 'криминал, комедия, боевик', 'Гай Ричи', 'Мэттью Макконехи, Чарли Ханнэм, Колин Фаррелл', 'Великобритания, США', '1 час 53 минуты', 'Талантливый выпускник Оксфорда, применив свой уникальный ум и невиданную дерзость, придумал нелегальную схему обогащения с использованием поместья обедневшей английской аристократии. Однако когда он решает продать свой бизнес влиятельному клану миллиардеров из США, на его пути встают не менее обаятельные, но жесткие джентльмены. Намечается обмен любезностями, который точно не обойдется без перестрелок и парочки несчастных случаев.', 'https://img.tyt.by/n/afisha/05/9/dzhentelmeny_004.jpg', 'https://avatars.mds.yandex.net/get-kinopoisk-post-img/1539913/101895c0584baac8439e917f703a49f6/960x540', 'https://img.tyt.by/n/afisha/10/f/dzhentelmeny_001.jpg', 'https://www.kino-teatr.ru/movie/kadr/135824/887818.jpg', 'https://www.youtube.com/embed/dABPCMxu074'),
(9, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/27a3c989-e883-40f3-806f-f3ef27fe7177/300x450', '12+\r\n', 'Шрэк 2', '19 мая 2004 ', '\r\nмультфильм, фэнтези, мелодрама,', '\r\nЭндрю Адамсон, Келли Эсбёри', 'Майк Майерс, Камерон Диас, Эдди Мёрфи', 'США', '1 час 45 минут', 'Шрэк и Фиона возвращаются после медового месяца и находят письмо от родителей Фионы с приглашением на ужин. Однако те не подозревают, что их дочь тоже стала огром! Вместе с Осликом счастливая пара отправляется в путешествие, полное неожиданностей, и попадает в круговорот событий, во время которых приобретает множество друзей', 'https://fs.kinomania.ru/image/file/film_frame/9/5f/95f8d9901ca8878e291552f001f67692.355.237.jpeg', 'https://st.kp.yandex.net/im/kadr/6/4/4/kinopoisk.ru-Shrek-2-644141.jpg', 'https://st.kp.yandex.net/im/kadr/6/4/4/kinopoisk.ru-Shrek-2-644145.jpg', 'https://st.kp.yandex.net/im/kadr/6/4/4/kinopoisk.ru-Shrek-2-644153.jpg', 'https://www.youtube.com/embed/-j9GUX3GW00'),
(10, 'https://avatars.mds.yandex.net/get-kinopoisk-image/1898899/211e880d-c183-43aa-83b0-13c08109eaf7/300x450', '16+', 'Ford против Ferrari', '30 августа 2019', '\r\nбиография, спорт, драма', '\r\nДжеймс Мэнголд', 'Мэтт Деймон, Джош Лукас, Катрина Балф', '\r\nСША', '2 часа 32 минуты', 'Сюжет повествует о группе американских инженеров и дизайнеров. В 1960-х под руководством конструктора Кэрролла Шелби и при поддержке британского гонщика Кена Майлса они должны были с нуля сделать абсолютно новый спорткар, способный опередить Феррари — непобедимого чемпиона 24-часовой гонки на выносливость Ле-Ман.', 'https://st.kp.yandex.net/im/kadr/3/4/4/kinopoisk.ru-Ford-v-Ferrari-3444230.jpg', 'https://st.kp.yandex.net/im/kadr/3/3/7/kinopoisk.ru-Ford-v-Ferrari-3372980.jpg', 'https://st.kp.yandex.net/im/kadr/3/4/4/kinopoisk.ru-Ford-v-Ferrari-3444231.jpg', 'https://st.kp.yandex.net/im/kadr/3/4/4/kinopoisk.ru-Ford-v-Ferrari-3444210.jpg', 'https://www.youtube.com/embed/rizDvSRGnHg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slide_img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_img`, `title`, `link`) VALUES
(1, 'img/slider/1.jpg', 'Стрельцов', 'movie.php?id=5'),
(2, 'img/slider/2.jpg', 'Ведьмы', 'movie.php?id=1'),
(3, 'img/slider/3.jpg', 'Джентельмены', 'movie.php?id=8'),
(4, 'img/slider/6.jpg', 'Ford против Ferrari', 'movie.php?id=10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shablon`
--
ALTER TABLE `shablon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shablon`
--
ALTER TABLE `shablon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
