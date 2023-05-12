-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 05:34:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musicrusso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Grupo 5', 2, 4, 'assets/images/artwork/Grupo_5.jpg'),
(2, 'Armonia 10', 5, 10, 'assets/images/artwork/Armonia_10.jpg'),
(3, 'Clásicos de Oro Vol.1', 4, 1, 'assets/images/artwork/Clasic_doro_Vol1.jpg'),
(4, 'Un Verano Sin Ti', 3, 9, 'assets/images/artwork/Bad_Bunny.jpg'),
(5, 'El Príncipe', 1, 3, 'assets/images/artwork/Cosculluela.jpg'),
(6, 'La Mejor Música Electronica 2022', 3, 6, 'assets/images/artwork/MejorMusic.jpg'),
(7, 'Que Sad!', 4, 7, 'assets/images/artwork/Que_Sad.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Cosculluela'),
(2, 'Grupo 5'),
(3, 'Bad Bunny'),
(4, 'Papillon'),
(5, 'Armonia 10'),
(6, 'Morat'),
(7, 'TINI'),
(8, 'JESSE & JOY'),
(9, 'HA-ASH'),
(10, 'La Oreja de Van Gogh'),
(11, 'Marshmello'),
(12, 'Tom Odell'),
(13, 'Ruth B'),
(14, 'Ghost'),
(15, 'Phillip Phillips');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(7, 'Bulldozer', 'reece-kenney', '2017-12-04 00:00:00'),
(8, 'MIX - RUSSO', 'Russo', '2023-05-12 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(6, 17, 2, 4),
(8, 16, 5, 0),
(9, 15, 3, 0),
(10, 14, 4, 0),
(11, 17, 3, 1),
(12, 16, 3, 2),
(13, 16, 5, 1),
(14, 14, 3, 3),
(15, 5, 5, 2),
(16, 23, 4, 1),
(17, 6, 2, 5),
(18, 29, 3, 4),
(19, 4, 8, 0),
(20, 1, 8, 1),
(21, 9, 8, 2),
(22, 13, 8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'La boda (feat. O\'Neill & Kendo)', 1, 5, 1, '5.54', 'assets/music/Cosculluela_La Boda.mp3', 2, 9),
(2, 'Te Busco', 1, 5, 2, '3:53', 'assets/music/Cosculluela_Nicky Jam_TeBusco.mp3', 3, 11),
(3, 'Si Veo a Tu Mamá', 3, 4, 2, '4:26', 'assets/music/BAD BUNNY - SI VEO A TU MAMÁ _ YHLQMDLG.mp3', 2, 20),
(4, 'El Ritmo de Mi Corazón', 2, 1, 3, '3:40', 'assets/music/Grupo5_ElRitmodeMiCorazón.mp3', 2, 29),
(5, 'Cambio Mi Corazón', 2, 1, 4, '3:17', 'assets/music/Grupo5_Cambio Mi Corazón.mp3', 3, 32),
(6, 'Si Estuviésemos Juntos', 3, 4, 5, '2:54', 'assets/music/BAD BUNNY - SI ESTUVIÉSEMOS JUNTOS.mp3', 3, 24),
(7, 'Happier', 11, 6, 2, '3:35', 'assets/music/Marshmello - Happier.mp3', 1, 14),
(8, 'Perdón, Perdón - HA-ASH', 9, 7, 2, '3:39', 'assets/music/HA-ASH - Perdón, Perdón.mp3', 4, 9),
(9, 'Consejo de Amor (feat. Morat)', 7, 7, 5, '3:26', 'assets/music/TINI - Consejo de Amor ft. Morat.mp3', 1, 18),
(10, 'Lágrima por Lágrima', 5, 2, 1, '3:47', 'assets/music/Armonia 10 - Lágrima por Lágrima.mp3', 1, 14),
(11, 'Siempre Pierdo en el Amor', 5, 2, 2, '3:13', 'assets/music/Armonia 10 - Siempre Pierdo en el Amor.mp3', 2, 3),
(12, 'Cantinero', 4, 3, 8, '3:54', 'assets/music/Papillon - Cantinero.mp3', 3, 8),
(13, 'Triste Payaso', 4, 3, 9, '3:56', 'assets/music/Papillon - Triste Payaso.mp3', 2, 28),
(14, 'Ojitos Lindos', 3, 4, 1, '4:33', 'assets/music/BAD BUNNY ft. Bomba Estéreo - Ojitos Lindos.mp3', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Russo', 'Ryusney', 'Apaza', 'Rusman.apaza@ucsm.edu.pe', 'b078403e234d1412ede42fb4246d5745', '2023-05-05 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'Geopro', 'Yamil', 'Balboa', 'Yamil.balboa@ucsm.edu.pe', '16b0a30bfcc8a1cf2b92a3d5f23a8572', '2023-05-12 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
